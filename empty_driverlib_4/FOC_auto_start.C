// FOC (Field Oriented Control)电机控制程序
// 功能：集成了传感器测试、启动序列和上电自启动功能

#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "driverlib.h"
#include "device.h"

// 包含FOC系统头文件
#include "model/foc.h"

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

// 全局变量
// 删除重复的变量声明，这些变量已经在foc_core.h中声明为volatile
// float Ia_meas = 0.0f;
// float Ib_meas = 0.0f;
// float Ic_meas = 0.0f;
// float Id_ref = 0.0f;
// float Iq_ref = 0.0f;

// 函数声明
void InitPeripherals(void);
void DoElectricalAlignment(void);
void calibrate_electrical_angle(void);
__interrupt void adc_isr(void);
__interrupt void eqep_index_isr(void);
uint32_t getTimeInMs(void);

// 全局变量
uint32_t system_time_ms = 0; // 系统时间计数器（毫秒）

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
    
    // 4. 初始化外设
    InitPeripherals();
    
    // 5. 初始化启动模块
    Startup_init();
    
    // 6. 进行电气角度校准
    DoElectricalAlignment();
    
    // 7. 使能全局中断
    EINT;
    ERTM;
    
    // 8. 主循环
    while(1)
    {
        // 更新系统时间（简单的软件实现，实际应用中应该使用硬件定时器）
        system_time_ms++;
        
        // 执行电机启动序列
        Startup_exec();
        
        // 根据启动状态设置电流参考值
        switch(Startup_getState())
        {
            case STARTUP_STATE_IDLE:
            case STARTUP_STATE_ALIGNMENT:
                // 对齐阶段：设置对齐电流
                Id_ref = startup_params.alignment_current;
                Iq_ref = 0.0f;
                break;
                
            case STARTUP_STATE_OPEN_LOOP:
                // 开环运行阶段：固定Q轴电流
                Id_ref = 0.0f;
                Iq_ref = 1.0f;
                if(Iq_ref > 2.0f) Iq_ref = 2.0f; // 限制最大Q轴电流
                break;
                
            case STARTUP_STATE_CLOSE_LOOP:
                // 闭环运行阶段：使用编码器反馈
                Id_ref = 0.5f; // 弱磁控制
                Iq_ref = 1.0f; // 固定Q轴电流作为示例
                break;
                
            case STARTUP_STATE_COMPLETE:
                // 启动完成，使用位置控制
                // 设置目标位置（例如：π弧度，即半圈）
                target_pos_rad = M_PI;
                
                // 调用位置控制函数
                position_control();
                break;
                
            default:
                // 其他状态，保持零电流
                Id_ref = 0.0f;
                Iq_ref = 0.0f;
                break;
        }
        
        // 软件延时
        uint32_t i;
        for(i = 0; i < 1000; i++);
    }
}

// 获取系统时间（毫秒）
// 移除重复定义，使用 model/foc_startup.c 中的实现
// uint32_t getTimeInMs(void)
// {
//     return system_time_ms;
// }

// 电气角度校准 - 执行电机的电气角度校准过程，确保编码器的机械角度与电机的电气角度对应正确
void DoElectricalAlignment(void)
{
    // 1. 设置对齐电流
    Id_ref = startup_params.alignment_current;
    Iq_ref = 0.0f;
    
    // 2. 固定电角度为0
    motor_angle_elec_rad = 0.0f;
    
    // 3. 延时一段时间，让电机转子转到正确位置
    uint32_t alignment_delay = startup_params.alignment_time_ms;
    while(alignment_delay > 0)
    {
        // 简单的软件延时
        uint32_t i;
        for(i = 0; i < 10000; i++);
        alignment_delay--;
    }
    
    // 4. 读取编码器位置并计算电气角度
    calibrate_electrical_angle();
    
    // 5. 标记编码器已校准
    encoder_calibrated = true;
}

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
    
    // 注册编码器索引中断 - 使用正确的中断标识符
    Interrupt_register(INT_EQEP1, &eqep_index_isr);
    Interrupt_enable(INT_EQEP1);
}

// 校准电气角度函数
void calibrate_electrical_angle(void)
{
    // 读取编码器位置 (注意：Encoder_update()函数没有返回值，它会更新全局变量)
    Encoder_update();
    
    // 计算机械角度 (使用正确的ENCODER_CPR宏)
    float mechanical_angle = (float)encoder_raw_pos / ENCODER_CPR * 2.0f * M_PI;
    
    // 计算电气角度
    motor_angle_elec_rad = mechanical_angle * MOTOR_POLE_PAIRS;
}

// ADC中断服务程序 - 处理ADC转换完成中断，读取电流值，执行FOC算法，计算SVPWM占空比，并更新PWM输出
__interrupt void adc_isr(void)
{
    // 读取电流
    ADC_Read_Current();

    // 读取编码器
    Encoder_update();

    // 执行FOC算法
    float Valpha, Vbeta, Id_meas, Iq_meas, Vd, Vq;

    // Clarke变换 - 将三相电流转换为αβ坐标系
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &Valpha, &Vbeta);

    // 根据启动状态决定使用哪个角度
    float angle_to_use = motor_angle_elec_rad;
    
    if(Startup_getState() == STARTUP_STATE_OPEN_LOOP)
    {
        // 开环状态：使用计算出的电角度
        angle_to_use = Startup_getOpenLoopAngle();
    }

    // Park变换 - 将αβ坐标系下的电流转换为dq坐标系
    park_transform(Valpha, Vbeta, angle_to_use, &Id_meas, &Iq_meas);

    // 电流PI控制 - 计算dq坐标系下的电压指令
    Vd = pi_id(Id_ref - Id_meas);
    Vq = pi_iq(Iq_ref - Iq_meas);

    // 逆Park变换 - 将dq坐标系下的电压指令转换为αβ坐标系
    inv_park_transform(Vd, Vq, angle_to_use, &Valpha, &Vbeta);

    // SVPWM计算 - 生成PWM比较值
    svpwm_compute(&svpwm_handle, Valpha, Vbeta);

    // 设置PWM占空比
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA1);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB1);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA2);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB2);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA3);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB3);
    
    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

// 编码器索引中断服务程序
__interrupt void eqep_index_isr(void)
{
    // 标记索引信号已检测
    index_detected = true;
    startup_params.encoder_index_detected = true;
    
    // 清除中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP6);
}






