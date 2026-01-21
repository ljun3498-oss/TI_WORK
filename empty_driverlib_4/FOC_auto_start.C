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

// 状态机控制变量
ControlState g_control_state = STATE_ALIGNMENT; // 默认对齐状态

// 对齐阶段计数器
uint32_t g_alignment_counter = 0;  // 对齐阶段的中断次数计数器
#define ALIGNMENT_DURATION 10000  // 对齐持续时间（0.25秒，基于20kHz中断频率）
bool g_encoder_aligned = false;  // 编码器对齐标志

// 开环转圈圈数计数器
float g_open_loop_turns = 0.0f;          // 开环累计转圈圈数
float g_previous_open_loop_angle = 0.0f;  // 上一次开环角度，用于计算圈数变化

// 开环超时计数器
uint32_t g_open_loop_timeout_counter = 0;  // 开环模式下的中断次数计数器
#define OPEN_LOOP_TIMEOUT_COUNT (20000 * 3)  // 3秒超时对应的中断次数（20kHz中断频率）


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
    Id_ref = 4.0f; // 无弱磁控制，专注于转矩控制
    Iq_ref = 0.0f; // 减小电流参考值，减少转矩脉动和抖动

    
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
    // 状态机控制
    switch(g_control_state) {
        case STATE_ALIGNMENT: {
            // 对齐阶段：给电机施加固定电压矢量，使转子对齐到已知位置
            
            // 递增对齐计数器
            g_alignment_counter++;
            
            // 设置固定的电角度（例如0度），使转子对齐到A相轴线
            float align_angle = 0.0f;  // 对齐角度（弧度）
            
            // 计算固定电压矢量（使用较小的电压值，避免过大的电流）
            float vd = 4.0f;  // D轴电压，用于将转子对齐到A相轴线
            float vq = 0.0f;
            
            // 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
            float valpha, vbeta;
            inv_park_transform(vd, vq, align_angle, &valpha, &vbeta);
            
            // SVPWM计算 - 计算PWM占空比
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 更新编码器数据，记录对齐位置
            Encoder_update();
            
            // 对齐持续一段时间后，切换到开环模式
            if (g_alignment_counter >= ALIGNMENT_DURATION) {
                // 保存对齐位置的角度
                open_loop_angle_mech_rad = motor_angle_mech_rad;
                open_loop_angle_elec_rad = motor_angle_elec_rad;
                g_previous_open_loop_angle = open_loop_angle_mech_rad;
                
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
            float angle_increment = M_PI_F / 30000.0f; // 10转/分钟，基于20kHz PWM频率
            open_loop_angle_mech_rad += angle_increment;
            
            // 计算圈数变化
            float angle_change = open_loop_angle_mech_rad - g_previous_open_loop_angle;
            
            // 角度归一化
            if (open_loop_angle_mech_rad >= 2.0f * M_PI_F) {
                open_loop_angle_mech_rad -= 2.0f * M_PI_F;
            } else if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 保存当前角度用于下一次计算
            g_previous_open_loop_angle = open_loop_angle_mech_rad;
            if (angle_change < -M_PI_F) {
                // 角度发生了正转溢出，增加一圈
                g_open_loop_turns += 1.0f;
            } else if (angle_change > M_PI_F) {
                // 角度发生了反转溢出，减少一圈
                g_open_loop_turns -= 1.0f;
            }
            
            // 更新开环虚拟电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            if (open_loop_angle_elec_rad >= 2.0f * M_PI_F) {
                open_loop_angle_elec_rad -= 2.0f * M_PI_F;
            }
            
            // 更新编码器数据，用于监控
            Encoder_update();
            
            // 将开环虚拟角度作为当前电机角度，确保与模拟ADC一致
            motor_angle_mech_rad = open_loop_angle_mech_rad;
            motor_angle_elec_rad = open_loop_angle_elec_rad;
            
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
            // 更新编码器数据
            Encoder_update();
            
            // 如果是第一次进入闭环模式，根据开环计算的角度差值调整编码器位置
            if (!g_encoder_aligned) {
                // 将角度差值转换为编码器计数差值
                int32_t count_offset = (int32_t)((angle_offset_rad / (2.0f * M_PI_F)) * (ENCODER_LINES * QUADRATURE_MULT));
                
                // 调整编码器位置计数器
                int32_t current_pos = (int32_t)EQEP_getPosition(EQEP1_BASE);
                EQEP_setPosition(EQEP1_BASE, current_pos + count_offset);
                
                // 重新更新编码器数据以获取调整后的角度
                Encoder_update();
                
                // 标记为已对齐
                g_encoder_aligned = true;
            }
            
            // 闭环模式下，直接使用编码器计算的角度
            // Encoder_update()函数已经更新了motor_angle_mech_rad和motor_angle_elec_rad
            break;
        }
    }
    
    // 模拟三相电流变化值（基于电机角度的正弦波）
    // 注释掉虚拟电流生成代码，改用ADC实际测量的电流
    
    // 假设电流幅值为2.0，与电流参考值匹配，三相电流相位差为120°
    float current_amplitude = 2.0f;
    Ia_meas = current_amplitude * sinf(motor_angle_elec_rad);
    Ib_meas = current_amplitude * sinf(motor_angle_elec_rad - 2.0f * M_PI_F / 3.0f);
    Ic_meas = current_amplitude * sinf(motor_angle_elec_rad + 2.0f * M_PI_F / 3.0f);
    
    
    // 读取实际ADC电流值
    // ADC_Read_Current();
    
    // 处理电流并执行FOC算法
    // 1. Clarke变换 - 将三相电流转换为αβ坐标系
    float alpha, beta;
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
    
    // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
    float d, q;
    park_transform(alpha, beta, motor_angle_elec_rad, &d, &q);
    
    // 3. D/Q轴电流PI控制
    float vd = pi_id(Id_ref - d);  // D轴电流误差PI控制
    float vq = pi_iq(Iq_ref - q);  // Q轴电流误差PI控制
    
    // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
    float valpha, vbeta;
    inv_park_transform(vd, vq, motor_angle_elec_rad, &valpha, &vbeta);
    
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
}

















