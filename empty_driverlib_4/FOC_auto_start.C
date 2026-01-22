// FOC (Field Oriented Control)电机控制程序
// 功能：集成了传感器测试、启动序列和上电自启动功能

#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "driverlib.h"
#include "device.h"

// 包含FOC系统头文件
#include "model/foc.h"

// 状态机定义
typedef enum {
    STATE_ALIGNMENT = 0,   // 对齐状态
    STATE_OPEN_LOOP,       // 开环状态
    STATE_SYNC_CHECK,      // 同步判定阶段
    STATE_CLOSED_LOOP      // 闭环状态
} ControlState;

// 闭环子状态定义
typedef enum {
    CL_INIT = 0,           // 初始化状态
    CL_ZERO_VOLT,          // 零电压状态
    CL_CURRENT_LOOP        // 电流闭环状态
} ClosedLoopSubState;

// 状态机控制变量
ControlState g_control_state = STATE_ALIGNMENT; // 默认对齐状态

// 对齐阶段计数器
uint32_t g_alignment_counter = 0;  // 对齐阶段的中断次数计数器
#define ALIGNMENT_DURATION 80000  // 对齐持续时间（2秒，基于20kHz中断频率）
bool g_encoder_aligned = false;  // 编码器对齐标志

// 闭环子状态控制变量
ClosedLoopSubState cl_sub = CL_INIT;  // 闭环子状态
uint16_t cl_cnt = 0;  // 闭环状态计数器

// 开环转圈圈数计数器
float g_open_loop_turns = 0.0f;          // 开环累计转圈圈数
float g_previous_open_loop_angle = 0.0f;  // 上一次开环角度，用于计算圈数变化
float open_loop_angle_acc = 0.0f;         // 开环累计角度，用于正确计算圈数

// 开环超时计数器
uint32_t g_open_loop_timeout_counter = 0;  // 开环模式下的中断次数计数器
#define OPEN_LOOP_TIMEOUT_COUNT (20000 * 3)  // 3秒超时对应的中断次数（20kHz中断频率）

// 监控变量
float g_current_motor_angle_elec_rad = 0.0f; // 当前电机电气角度（用于监控）
float g_current_encoder_angle_mech_rad = 0.0f; // 当前编码器机械角度（用于监控）
float angle_offset_rad_final = 0.0f; // 冻结的角度偏移值（用于闭环控制）

// 电流参考值抬升变量
float Iq_ref_target = 0.0f; // Iq参考值目标
float Iq_ref_step = 0.05f; // Iq参考值抬升步长（每拍增加的量）

// 闭环启动时间跟踪
uint16_t cl_startup_cnt = 0; // 闭环启动计数器
#define CL_STARTUP_DURATION 1000 // 闭环启动持续时间（拍数）

// 调试计数器
uint32_t g_debug_cnt = 0; // 用于确认ISR是否真正运行

// 全局调试变量 - 方便监视临时参数
// 对齐阶段调试变量
float g_align_angle = 0.0f; // 对齐角度
float g_align_Id_ref = 1.0f; // 对齐阶段Id参考值
float g_align_vd = 0.0f; // 对齐阶段D轴电压
float g_align_vq = 0.0f; // 对齐阶段Q轴电压

// 开环阶段调试变量
float g_open_loop_angle_increment = 0.0f; // 开环角度增量
float g_open_loop_Iq_ref = 0.0f; // 开环阶段Iq参考值
float g_open_loop_vd = 0.0f; // 开环阶段D轴电压
float g_open_loop_vq = 0.0f; // 开环阶段Q轴电压
float g_open_loop_max_current = 0.0f; // 开环阶段最大相电流

// 同步判定阶段调试变量
float g_sync_check_angle_diff = 0.0f; // 角度差
float g_sync_check_angle_diff_deg = 0.0f; // 角度差（度）
float g_sync_check_omega_ol = 0.0f; // 开环速度
float g_sync_check_omega_enc = 0.0f; // 编码器速度
float g_sync_check_speed_diff_percent = 0.0f; // 速度差百分比
float g_sync_check_current_diff = 0.0f; // 电流波动
float g_sync_check_vd = 0.0f; // 同步判定阶段D轴电压
float g_sync_check_vq = 0.0f; // 同步判定阶段Q轴电压
uint32_t g_sync_check_counter = 0; // 同步判定计数器

// 闭环阶段调试变量
float g_closed_loop_theta_elec = 0.0f; // 闭环电气角度
float g_closed_loop_vd = 0.0f; // 闭环阶段D轴电压
float g_closed_loop_vq = 0.0f; // 闭环阶段Q轴电压
float g_closed_loop_Vmax = 0.0f; // 闭环阶段最大电压

// 通用调试变量
float g_alpha = 0.0f; // Clarke变换结果alpha
float g_beta = 0.0f; // Clarke变换结果beta
float g_d = 0.0f; // Park变换结果d
float g_q = 0.0f; // Park变换结果q
float g_valpha = 0.0f; // 逆Park变换结果alpha
float g_vbeta = 0.0f; // 逆Park变换结果beta


// 全局变量定义
SVPWM_Handle svpwm_handle = {
    .Vdc = BUS_VOLTAGE,
    .Va = 0.0f,
    .Vb = 0.0f,
    .Vc = 0.0f,
    .CMPA1 = TBPRD_VAL / 2,
    .CMPB1 = TBPRD_VAL / 2,
    .CMPA2 = TBPRD_VAL / 2,
    .CMPB2 = TBPRD_VAL / 2,
    .CMPA3 = TBPRD_VAL / 2,
    .CMPB3 = TBPRD_VAL / 2,
    .sector = 0
};

void InitPeripherals(void);
interrupt void adc_isr(void);
// 状态切换函数 - 切换控制模式
void SwitchControlState(ControlState new_state)
{
    if (new_state != g_control_state) {
        g_control_state = new_state;
        
        if (new_state == STATE_CLOSED_LOOP) {
            // 进入闭环模式前的准备
            g_encoder_aligned = false;  // 重置对齐标志
            Encoder_init();  // 确保编码器已初始化
            Encoder_update();  // 更新编码器初始数据
            
            // 冻结偏移角，确保角度无跳变
            angle_offset_rad_final = open_loop_angle_elec_rad - motor_angle_elec_rad;
        }
    }
}

// 主函数
int main(void)
{
    // 1. 初始化系统控制（频率、看门狗）
    Device_init();
    Device_initGPIO();
    
    // 2. 配置PLL，设置系统时钟为200MHz
    // 使用正确的时钟配置常量和参数格式
    SysCtl_setClock(DEVICE_SETCLOCK_CFG);
    
    // 3. 清除所有中断并初始化 PIE 向量表
    DINT;
    Interrupt_initModule();
    IER = 0x0000;
    IFR = 0x0000;
    Interrupt_initVectorTable();
    
    // 直接设置闭环运行的电流参考值
    Id_ref = 0.0f; // 闭环切入瞬间必须Id_ref=0
    Iq_ref = 0.0f; // 切入瞬间先不给转矩，闭环稳定后再慢慢抬Iq_ref减小电流参考值，减少转矩脉动和抖动

    
    // 4. 初始化外设
    InitPeripherals();  
        
    // 7. 使能全局中断
    EINT;
    ERTM;
    
    // 保持在开环模式，不立即切换到闭环
    // SwitchControlState(STATE_CLOSED_LOOP);
    
    // 10. 主循环
    while(1)
    {

        // 移除延时，让主循环快速运行
    }
}

// 电气角度校准 - 执行电机的电气角度校准过程，确保编码器的机械角度与电机的电气角度对应正确

// 初始化所有外设 - 初始化EPWM、ADC、编码器等外设，并注册中断
void InitPeripherals(void)
{
    // 初始化EPWM
    EPWM_Init();

    // 初始化ADC
    ADC_Init();

    // 初始化编码器
    Encoder_init();

    // 注册ADC中断
    Interrupt_register(INT_ADCA1, &adc_isr);
    Interrupt_enable(INT_ADCA1);
    

}

// ADC中断服务程序 - 处理ADC转换完成中断，读取电流值，执行FOC算法，计算SVPWM占空比，并更新PWM输出
interrupt void adc_isr(void)
{
    // 调试计数器自增，用于确认ISR是否真正运行
    g_debug_cnt++;
    
    // 状态机控制
    switch(g_control_state) {
        case STATE_ALIGNMENT: {
  
            
            // 递增对齐计数器
            g_alignment_counter++;
            
            // 设置固定的电角度（例如0度），使转子对齐到A相轴线
            float align_angle = 0.0f;  // 对齐角度（弧度）
            g_align_angle = align_angle; // 更新全局调试变量
            
            // 读取实际ADC电流值
            ADC_Read_Current();
            
            // 处理电流并执行FOC算法
            // 1. Clarke变换 - 将三相电流转换为αβ坐标系
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            g_alpha = alpha; // 更新全局调试变量
            g_beta = beta; // 更新全局调试变量
            
            // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
            float d, q;
            park_transform(alpha, beta, align_angle, &d, &q);
            g_d = d; // 更新全局调试变量
            g_q = q; // 更新全局调试变量
            
            // 3. D/Q轴电流PI控制
            float Id_ref_align = 1.0f;  // 对齐阶段的d轴电流指令
            g_align_Id_ref = Id_ref_align; // 更新全局调试变量
            float vd = pi_id(Id_ref_align - d);  // D轴电流误差PI控制
            float vq = pi_iq(0.0f - q);  // Q轴电流误差PI控制，目标电流为0
            g_align_vd = vd; // 更新全局调试变量
            g_align_vq = vq; // 更新全局调试变量
            
            // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
            float valpha, vbeta;
            inv_park_transform(vd, vq, align_angle, &valpha, &vbeta);
            g_valpha = valpha; // 更新全局调试变量
            g_vbeta = vbeta; // 更新全局调试变量
            
            // 5. SVPWM计算 - 计算PWM占空比
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 6. 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 更新编码器数据，记录对齐位置
            Encoder_update();
            
            // 对齐持续一段时间后，切换到开环模式
            if (g_alignment_counter >= ALIGNMENT_DURATION) {
                // 让虚拟角度从d轴开始
                open_loop_angle_acc = 0.0f;
                open_loop_angle_mech_rad = 0.0f;
                open_loop_angle_elec_rad = 0.0f;
                g_previous_open_loop_angle = 0.0f;
                
                // 切换到开环模式
                SwitchControlState(STATE_OPEN_LOOP);
            }
            
            // 清除ADC中断标志
            ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
            Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
            
            // 对齐阶段直接返回，不执行后续的FOC算法
            return;
        }
        
        case STATE_OPEN_LOOP: {
            // 开环模式：只有角度是虚拟生成的，其余全部闭环
            // 1. 逐步增加角速度，保证电机加速平滑
            float base_angle_increment = M_PI_F / 1000.0f; // 基础角速度（约300转/分钟）
            float ramp_rate_angular = 0.05f; // 角速度增加速率
            float angle_increment = base_angle_increment + ramp_rate_angular * g_open_loop_turns;
            g_open_loop_angle_increment = angle_increment; // 更新全局调试变量
            
            // 2. 虚拟生成角度（唯一的开环量）
            open_loop_angle_acc += angle_increment;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            
            // 确保机械角度在[0, 2π]范围内
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 3. 计算累计圈数
            g_open_loop_turns = open_loop_angle_acc / (2.0f * M_PI_F);
            
            // 4. 更新开环虚拟电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            
            // 确保电气角度在[0, 2π]范围内
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 5. 读取真实电流值，用于电流保护
            ADC_Read_Current();
            
            // 6. 为开环阶段设置Iq_ref
            float Iq_ref_open_loop = 0.5f + 0.5f * g_open_loop_turns; // 初始0.5A，每转增加0.5A
            Iq_ref_open_loop = clampf_val(Iq_ref_open_loop, 0.0f, 3.0f); // 最大3.0A
            g_open_loop_Iq_ref = Iq_ref_open_loop; // 更新全局调试变量
            
            // 7. 实现Q轴电压ramp
            float V_startup_max = 0.1f * BUS_VOLTAGE; // 初始电压（10%Vdc）
            float ramp_rate_voltage = 0.05f * BUS_VOLTAGE; // 电压增加速率
            float vq = V_startup_max + ramp_rate_voltage * g_open_loop_turns;
            vq = clampf_val(vq, 0.0f, 0.3f * BUS_VOLTAGE); // 最大0.3*Vdc（30%Vdc）
            float vd = 0.0f; // D轴电压为0
            g_open_loop_vd = vd; // 更新全局调试变量
            g_open_loop_vq = vq; // 更新全局调试变量
            
            // 7. 电流保护：如果相电流超过限制，减小Q轴电压
            float current_limit = 1.5f; // 电流限制（降低）
            float max_phase_current = fmaxf(fabsf(Ia_meas), fmaxf(fabsf(Ib_meas), fabsf(Ic_meas)));
            g_open_loop_max_current = max_phase_current; // 更新全局调试变量
            if (max_phase_current > current_limit) {
                vq *= 0.7f; // 减小Q轴电压30%（更激进的保护）
                vq = clampf_val(vq, 0.0f, 0.2f * BUS_VOLTAGE);
            }
            
            // 8. 设置最大电压限制
            float Vmax = BUS_VOLTAGE * 0.5f; // 使用正常的最大电压
            
            // 对PI输出进行限幅，确保不超出SVPWM支持范围
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, open_loop_angle_elec_rad, &valpha, &vbeta);
            g_valpha = valpha; // 更新全局调试变量
            g_vbeta = vbeta; // 更新全局调试变量
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 更新编码器数据，确保任何时刻都能获取编码器角度
            Encoder_update();
            g_current_encoder_angle_mech_rad = Encoder_getMechAngle();
            
            // 在开环结束前让虚拟角度逐步逼近编码器角度
            if (g_open_loop_turns >= 4.0f) { // 开环接近结束时（4圈）开始逼近
                float diff = motor_angle_elec_rad - open_loop_angle_elec_rad;
                // 归一化角度差
                if (diff > M_PI_F) {
                    diff -= 2.0f * M_PI_F;
                } else if (diff < -M_PI_F) {
                    diff += 2.0f * M_PI_F;
                }
                open_loop_angle_elec_rad += diff * 0.05f; // 5%修正，慢慢对齐
                // 确保电气角度在[0, 2π]范围内
                open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
                if (open_loop_angle_elec_rad < 0.0f) {
                    open_loop_angle_elec_rad += 2.0f * M_PI_F;
                }
                // 更新机械角度
                open_loop_angle_mech_rad = open_loop_angle_elec_rad / MOTOR_POLE_PAIRS;
                open_loop_angle_mech_rad = fmodf(open_loop_angle_mech_rad, 2.0f * M_PI_F);
                if (open_loop_angle_mech_rad < 0.0f) {
                    open_loop_angle_mech_rad += 2.0f * M_PI_F;
                }
            }
            
            // 检查是否需要进入同步判定阶段
            if (g_open_loop_turns >= 5.0f) {
                // 切换到同步判定阶段
                SwitchControlState(STATE_SYNC_CHECK);
            }
            
            // 清除ADC中断标志
            ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
            Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
            
            // 开环阶段直接返回，不执行后续的PI控制器代码
            return;
        }
        
        case STATE_SYNC_CHECK: {
            // 同步判定阶段：不控制，只判断
            // 1. 继续虚拟生成角度（保持与开环相同的速度）
            float angle_increment = M_PI_F / 100000.0f; // 10转/分钟，基于20kHz PWM频率
            open_loop_angle_acc += angle_increment;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            
            // 确保机械角度在[0, 2π]范围内
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 2. 更新开环虚拟电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            
            // 确保电气角度在[0, 2π]范围内
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 3. 更新编码器数据，确保任何时刻都能获取编码器角度
            Encoder_update();
            g_current_encoder_angle_mech_rad = Encoder_getMechAngle();
            
            // 4. 读取真实电流值，用于监控
            ADC_Read_Current();
            
            // 5. 设置固定小电压，确保电机持续旋转（大幅降低功率）
            float vd = 0.0f; // D轴电压为0
            float vq = 0.05f * BUS_VOLTAGE; // 固定小电压，确保电机旋转（大幅降低功率）
            g_sync_check_vd = vd; // 更新全局调试变量
            g_sync_check_vq = vq; // 更新全局调试变量
            
            // 6. 设置最大电压限制
            float Vmax = BUS_VOLTAGE * 0.5f; // 使用正常的最大电压
            
            // 7. 对电压进行限幅
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, open_loop_angle_elec_rad, &valpha, &vbeta);
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 同步判定条件
            static uint32_t sync_check_counter = 0; // 同步判定计数器
            static float prev_max_current = 0.0f; // 上一次的最大电流值
            bool angle_match = false;
            bool speed_match = false;
            bool current_stable = false;
            
            // 1️⃣ 角度一致：|theta_ol - theta_enc| < 60°（电角度）
            float angle_diff = fabsf(open_loop_angle_elec_rad - motor_angle_elec_rad);
            // 归一化角度差到[0, π]范围
            if (angle_diff > M_PI_F) {
                angle_diff = 2.0f * M_PI_F - angle_diff;
            }
            // 转换为角度（180°/π）
            float angle_diff_deg = angle_diff * (180.0f / M_PI_F);
            if (angle_diff_deg < 60.0f) { // 60°阈值
                angle_match = true;
            }
            g_sync_check_angle_diff = angle_diff; // 更新全局调试变量
            g_sync_check_angle_diff_deg = angle_diff_deg; // 更新全局调试变量
            
            // 2️⃣ 速度一致：|ω_ol - ω_enc| < 40%
            // 计算开环速度（电角度/秒）
            float omega_ol = angle_increment * 20000.0f * MOTOR_POLE_PAIRS; // 20kHz中断频率
            // 计算编码器速度（电角度/秒）
            static float prev_encoder_angle = 0.0f;
            float encoder_angle_diff = motor_angle_elec_rad - prev_encoder_angle;
            // 归一化角度差
            if (encoder_angle_diff > M_PI_F) {
                encoder_angle_diff -= 2.0f * M_PI_F;
            } else if (encoder_angle_diff < -M_PI_F) {
                encoder_angle_diff += 2.0f * M_PI_F;
            }
            float omega_enc = encoder_angle_diff * 20000.0f; // 20kHz中断频率
            prev_encoder_angle = motor_angle_elec_rad;
            
            // 计算速度差百分比
            float speed_diff_percent = 0.0f;
            if (omega_ol != 0.0f) {
                speed_diff_percent = fabsf((omega_ol - omega_enc) / omega_ol) * 100.0f;
            }
            if (speed_diff_percent < 40.0f) { // 40%阈值
                speed_match = true;
            }
            g_sync_check_omega_ol = omega_ol; // 更新全局调试变量
            g_sync_check_omega_enc = omega_enc; // 更新全局调试变量
            g_sync_check_speed_diff_percent = speed_diff_percent; // 更新全局调试变量
            
            // 3️⃣ 电流稳定：电流波动小于阈值
            float max_current = fmaxf(fabsf(Ia_meas), fmaxf(fabsf(Ib_meas), fabsf(Ic_meas)));
            float current_diff = fabsf(max_current - prev_max_current);
            if (current_diff < 2.0f) { // 电流波动小于2.0A
                current_stable = true;
            }
            prev_max_current = max_current;
            g_sync_check_current_diff = current_diff; // 更新全局调试变量
            g_sync_check_counter = sync_check_counter; // 更新全局调试变量
            
            // 4️⃣ 持续一段时间：> 20~50个控制周期
            if (angle_match && speed_match && current_stable) {
                sync_check_counter++;
                g_sync_check_counter = sync_check_counter; // 更新全局调试变量
                if (sync_check_counter > 30) { // 30个控制周期（1.5ms）
                    // 四个条件同时满足，切换到闭环模式
                    SwitchControlState(STATE_CLOSED_LOOP);
                    sync_check_counter = 0; // 重置计数器
                    g_sync_check_counter = sync_check_counter; // 更新全局调试变量
                    prev_max_current = 0.0f; // 重置电流值
                }
            } else {
                // 条件不满足，重置计数器
                sync_check_counter = 0;
                g_sync_check_counter = sync_check_counter; // 更新全局调试变量
                prev_max_current = 0.0f; // 重置电流值
            }
            
            // 清除ADC中断标志
            ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
            Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
            
            // 同步判定阶段直接返回
            return;
        }    
        
        case STATE_CLOSED_LOOP: {
            if (cl_sub == CL_INIT) {
                // 标记为已对齐
                g_encoder_aligned = true;
                
                // 重置闭环启动计数器
                cl_startup_cnt = 0;
                
                // 切换到电流闭环状态（直接切入，不经过零电压状态）
                cl_cnt = 0;
                cl_sub = CL_CURRENT_LOOP;
                
                // 清除中断标志并返回
                ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
                Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
                return;
            }
            
            if (cl_sub == CL_ZERO_VOLT) {
                // 简化CL_ZERO_VOLT状态，只进行延时计数
                cl_cnt++;
                if (cl_cnt >= 40) {  // 40拍 = 2ms
                    // 直接切换到电流闭环状态
                    cl_sub = CL_CURRENT_LOOP;
                    // 设置初始值
                    Iq_ref = 0.0f;
                    Iq_ref_target = 2.0f;
                    Iq_ref_step = 0.02f;
                }
                
                // 清除中断标志并返回
                ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
                Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
                return;
            }
            
            // 更新编码器数据，确保任何时刻都能获取编码器角度
            Encoder_update();
            g_current_encoder_angle_mech_rad = Encoder_getMechAngle();
            
            // 电流闭环状态：使用编码器计算的角度 + 冻结的偏移角（确保角度无跳变）
            float theta_elec = motor_angle_elec_rad + angle_offset_rad_final;
            
            // 对计算得到的电气角度进行归一化处理，确保在[0, 2π]范围内
            theta_elec = fmodf(theta_elec, 2.0f * M_PI_F);
            if (theta_elec < 0.0f) {
                theta_elec += 2.0f * M_PI_F;
            }
            g_closed_loop_theta_elec = theta_elec; // 更新全局调试变量
            
            // 逐步抬升Iq_ref到目标值
            if (Iq_ref < Iq_ref_target) {
                Iq_ref += Iq_ref_step;
                if (Iq_ref > Iq_ref_target) {
                    Iq_ref = Iq_ref_target;
                }
            } else if (Iq_ref > Iq_ref_target) {
                Iq_ref -= Iq_ref_step;
                if (Iq_ref < Iq_ref_target) {
                    Iq_ref = Iq_ref_target;
                }
            }
            
            // 归一化电气角度，确保在[0, 2π]范围内
            theta_elec = fmodf(theta_elec, 2.0f * M_PI_F);
            if (theta_elec < 0.0f) {
                theta_elec += 2.0f * M_PI_F;
            }
            
            // 使用真实ADC电流值，确保电流闭环的准确性
            ADC_Read_Current();
            
            // 处理电流并执行FOC算法
            // 1. Clarke变换 - 将三相电流转换为αβ坐标系
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            g_alpha = alpha; // 更新全局调试变量
            g_beta = beta; // 更新全局调试变量
            
            // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
            float d, q;
            park_transform(alpha, beta, theta_elec, &d, &q);
            g_d = d; // 更新全局调试变量
            g_q = q; // 更新全局调试变量
            
            // 递增闭环启动计数器
            cl_startup_cnt++;
            
            // 3. 初始闭环电流小电压起步
            float vd, vq;
            if (cl_startup_cnt < CL_STARTUP_DURATION) 
            {
                // 启动阶段，使用固定小电压起步
                vd = 0.1f; // 小电压保磁
                vq = 0.0f; // 先不加转矩
            } 
            else 
            {
                // 启动完成，使用PI控制器
                vd = pi_id(Id_ref - d);  // D轴电流误差PI控制
                vq = pi_iq(Iq_ref - q);  // Q轴电流误差PI控制
            }
            g_closed_loop_vd = vd; // 更新全局调试变量
            g_closed_loop_vq = vq; // 更新全局调试变量
            
            // 实现PWM占空比的逐步释放
            float Vmax;
            if (cl_startup_cnt < CL_STARTUP_DURATION) 
            {
                // 启动阶段，电压从母线电压的20%逐渐增加到50%
                float startup_ratio = (float)cl_startup_cnt / (float)CL_STARTUP_DURATION;
                Vmax = BUS_VOLTAGE * (0.2f + 0.3f * startup_ratio);  // 0.2f到0.5f的渐变
            } else {
                // 启动完成，使用正常的最大电压
                Vmax = BUS_VOLTAGE * 0.5f;  // 使用母线电压的50%作为最大电压
            }
            g_closed_loop_Vmax = Vmax; // 更新全局调试变量
            
            // 对PI输出进行限幅，确保不超出SVPWM支持范围
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
            float valpha, vbeta;
            inv_park_transform(vd, vq, theta_elec, &valpha, &vbeta);
            g_valpha = valpha; // 更新全局调试变量
            g_vbeta = vbeta; // 更新全局调试变量
            
            // 5. SVPWM计算 - 计算PWM占空比
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 6. 设置PWM比较值（直接使用SVPWM计算的比较值）
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 清除ADC中断标志
            ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
            Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
            
            return;
        }
    }
    

 }   
    // 使用虚拟电流值，电流的角度来自编码器
    // float current_amplitude = 2.0f;
    // Ia_meas = current_amplitude * sinf(motor_angle_elec_rad);
    // Ib_meas = current_amplitude * sinf(motor_angle_elec_rad - 2.0f * M_PI_F / 3.0f);
    // Ic_meas = current_amplitude * sinf(motor_angle_elec_rad + 2.0f * M_PI_F / 3.0f);

