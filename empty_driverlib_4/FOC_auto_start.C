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
float angle_offset_rad_final = 0.0f; // 冻结的角度偏移值（用于闭环控制）

// 电流参考值抬升变量
float Iq_ref_target = 0.0f; // Iq参考值目标
float Iq_ref_step = 0.05f; // Iq参考值抬升步长（每拍增加的量）

// 闭环启动时间跟踪
uint16_t cl_startup_cnt = 0; // 闭环启动计数器
#define CL_STARTUP_DURATION 1000 // 闭环启动持续时间（拍数）

// 调试计数器
uint32_t g_debug_cnt = 0; // 用于确认ISR是否真正运行


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
            
            // 读取实际ADC电流值
            ADC_Read_Current();
            
            // 处理电流并执行FOC算法
            // 1. Clarke变换 - 将三相电流转换为αβ坐标系
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            
            // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
            float d, q;
            park_transform(alpha, beta, align_angle, &d, &q);
            
            // 3. D/Q轴电流PI控制
            float Id_ref_align = 1.0f;  // 对齐阶段的d轴电流指令
            float vd = pi_id(Id_ref_align - d);  // D轴电流误差PI控制
            float vq = pi_iq(0.0f - q);  // Q轴电流误差PI控制，目标电流为0
            
            // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
            float valpha, vbeta;
            inv_park_transform(vd, vq, align_angle, &valpha, &vbeta);
            
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
            // 开环模式：使用与模拟ADC一致的角度变化
            // 计算角度增量（设置为10转每分钟）
            float angle_increment = -M_PI_F / 30000.0f; // 10转/分钟，基于20kHz PWM频率
            
            // 使用累计角度计算圈数（工业级方法）
            open_loop_angle_acc += angle_increment;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            
            // 确保机械角度在[0, 2π]范围内
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 计算累计圈数
            g_open_loop_turns = open_loop_angle_acc / (2.0f * M_PI_F);
            
            // 更新开环虚拟电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            
            // 确保电气角度在[0, 2π]范围内
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 在每一拍都计算角度偏移，以便在调试时监控
            Encoder_update();
            
            // 读取真实电流值，用于调试监视
            ADC_Read_Current();
            
            // 保存当前电机角度（用于监控）
            g_current_motor_angle_elec_rad = motor_angle_elec_rad;
            // 使用连续角度计算offset，避免角度跳变
            angle_offset_rad = (open_loop_angle_acc * MOTOR_POLE_PAIRS) - encoder_angle_elec_continuous;
            
            // 对角度差值进行归一化处理，确保在[-π, π]范围内
            while (angle_offset_rad > M_PI_F) angle_offset_rad -= 2.0f * M_PI_F;
            while (angle_offset_rad < -M_PI_F) angle_offset_rad += 2.0f * M_PI_F;
            
            // 检查是否已经转了5圈（使用绝对圈数），如果是，切换到闭环模式
            if (fabsf(g_open_loop_turns) >= 5.0f) {
                // 冻结角度偏移值
                angle_offset_rad_final = angle_offset_rad;
                // 对角度偏移值进行归一化处理，确保在[-π, π]范围内
                angle_offset_rad_final = fmodf(angle_offset_rad_final, 2.0f * M_PI_F);
                if (angle_offset_rad_final > M_PI_F) {
                    angle_offset_rad_final -= 2.0f * M_PI_F;
                }
                if (angle_offset_rad_final < -M_PI_F) {
                    angle_offset_rad_final += 2.0f * M_PI_F;
                }
                // 切换到闭环模式
                SwitchControlState(STATE_CLOSED_LOOP);
            }
            
            // 开环模式直接设置电压值
            float vd = 0.2f;    // D轴电压为0
            float vq = 1.0f;    // 降低Q轴电压减少转矩脉动和抖动
            
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
            
            // 清除ADC中断标志
            ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
            Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
            
            // 开环阶段直接返回，不执行后续的PI控制器代码
            return;
        }    
        
        case STATE_CLOSED_LOOP: {
            if (cl_sub == CL_INIT) {
                // 重置PI控制器积分项
                extern float Id_int, Iq_int;
                Id_int = 0.0f;
                Iq_int = 0.0f;
                
                // 标记为已对齐
                g_encoder_aligned = true;
                
                // 重置闭环启动计数器
                cl_startup_cnt = 0;
                
                // 切换到零电压状态
                cl_cnt = 0;
                cl_sub = CL_ZERO_VOLT;
                
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
            
            // 更新编码器数据
            Encoder_update();
            
            // 电流闭环状态：使用编码器计算的角度 + 冻结的软件偏置
            float theta_elec = motor_angle_elec_rad + angle_offset_rad_final;
            
            // 对计算得到的电气角度进行归一化处理，确保在[0, 2π]范围内
            theta_elec = fmodf(theta_elec, 2.0f * M_PI_F);
            if (theta_elec < 0.0f) {
                theta_elec += 2.0f * M_PI_F;
            }
            
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
            
            // 使用真实ADC电流读取，确保闭环控制的准确性
            ADC_Read_Current();
            
            // 暂时注释掉电流异常回退逻辑，避免因为轻微ADC噪声回退
            /*
            float I_sum = Ia_meas + Ib_meas + Ic_meas;
            if (fabsf(I_sum) > 10.0f) {  // 阈值改大，避免误触发
                // 立即切换到零电压保持状态
                cl_sub = CL_ZERO_VOLT;
                cl_cnt = 0;
                // 重置PI控制器积分项
                extern float Id_int, Iq_int;
                Id_int = 0.0f;
                Iq_int = 0.0f;
                // 清除中断标志并返回
                ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
                Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
                return;
            }
            */
            
            // 处理电流并执行FOC算法
            // 1. Clarke变换 - 将三相电流转换为αβ坐标系
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            
            // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
            float d, q;
            park_transform(alpha, beta, theta_elec, &d, &q);
            
            // 递增闭环启动计数器
            cl_startup_cnt++;
            
            // 3. 初始闭环电流小电压起步
            float vd, vq;
            if (cl_startup_cnt < CL_STARTUP_DURATION) {
                // 启动阶段，使用固定小电压起步
                vd = 0.1f; // 小电压保磁
                vq = 0.0f; // 先不加转矩
            } else {
                // 启动完成，使用PI控制器
                vd = pi_id(Id_ref - d);  // D轴电流误差PI控制
                vq = pi_iq(Iq_ref - q);  // Q轴电流误差PI控制
            }
            
            // 实现PWM占空比的逐步释放
            float Vmax;
            if (cl_startup_cnt < CL_STARTUP_DURATION) {
                // 启动阶段，电压从母线电压的20%逐渐增加到50%
                float startup_ratio = (float)cl_startup_cnt / (float)CL_STARTUP_DURATION;
                Vmax = BUS_VOLTAGE * (0.2f + 0.3f * startup_ratio);  // 0.2f到0.5f的渐变
            } else {
                // 启动完成，使用正常的最大电压
                Vmax = BUS_VOLTAGE * 0.5f;  // 使用母线电压的50%作为最大电压
            }
            
            // 对PI输出进行限幅，确保不超出SVPWM支持范围
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
            float valpha, vbeta;
            inv_park_transform(vd, vq, theta_elec, &valpha, &vbeta);
            
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
    
    // 模拟三相电流变化值（基于电机角度的正弦波）
    // 注释掉虚拟电流生成代码，改用ADC实际测量的电流
    
    // 假设电流幅值为2.0，与电流参考值匹配，三相电流相位差为120°
    // float current_amplitude = 2.0f;
    // Ia_meas = current_amplitude * sinf(motor_angle_elec_rad);
    // Ib_meas = current_amplitude * sinf(motor_angle_elec_rad - 2.0f * M_PI_F / 3.0f);
    // Ic_meas = current_amplitude * sinf(motor_angle_elec_rad + 2.0f * M_PI_F / 3.0f);
}
