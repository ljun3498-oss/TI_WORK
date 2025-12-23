// FOC（磁场定向控制）传感器测试程序
#include "driverlib.h"
#include "device.h"
#include "model/foc.h"

// 全局变量定义
// SVPWM结构体实例，包含SVPWM计算所需的参数和结果，用于生成三相PWM信号
SVPWM_Handle svpwm_handle = {
    .Vdc = BUS_VOLTAGE, .Va = 0.0f, .Vb = 0.0f, .Vc = 0.0f,
    .CMPA1 = TBPRD_VAL / 2, .CMPB1 = TBPRD_VAL / 2,
    .CMPA2 = TBPRD_VAL / 2, .CMPB2 = TBPRD_VAL / 2,
    .CMPA3 = TBPRD_VAL / 2, .CMPB3 = TBPRD_VAL / 2,
    .sector = 0
};

// 函数声明
void InitPeripherals(void);
void DoElectricalAlignment(void);
void calibrate_electrical_angle(void);
__interrupt void adc_isr(void);
__interrupt void eqep_index_isr(void);

// 主函数 - 程序的入口点，负责初始化系统、外设，执行电气角度校准，并进入主循环
int main(void)
{
    // 初始化系统
    Device_init(); Device_initGPIO(); Interrupt_initModule(); Interrupt_initVectorTable();

    // 初始化外设
    InitPeripherals();

    // 进行电气角度校准
    DoElectricalAlignment();

    // 使能全局中断
    EINT; ERTM;

    // 主循环
    while(1)
    {
        // 软件延时
        uint32_t i;
        for(i = 0; i < 1000000; i++);
    }
}

// 初始化所有外设 - 初始化EPWM、ADC、编码器等外设，并注册ADC中断
void InitPeripherals(void)
{
    // 初始化EPWM
    EPWM_Init();

    // 初始化ADC
    ADC_Init();

    // 初始化编码器
    Encoder_Init();

    // 注册ADC中断
    Interrupt_register(INT_ADCA1, &adc_isr);
    Interrupt_enable(INT_ADCA1);
}

// 电气角度校准 - 执行电机的电气角度校准过程，确保编码器的机械角度与电机的电气角度对应正确
void DoElectricalAlignment(void)
{
    // 标记编码器已校准
    encoder_calibrated = true;
}

// ADC中断服务程序 - 处理ADC转换完成中断，读取电流值，执行FOC算法，计算SVPWM占空比，并更新PWM输出
__interrupt void adc_isr(void)
{
    // 读取电流
    ADC_Read_Current();

    // 读取编码器
    Encoder_Read();

    // 执行FOC算法
    float Valpha, Vbeta, Id_meas, Iq_meas, Vd, Vq;

    // Clarke变换 - 将三相电流转换为αβ坐标系
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &Valpha, &Vbeta);

    // Park变换 - 将αβ坐标系下的电流转换为dq坐标系
    park_transform(Valpha, Vbeta, motor_angle_elec_rad, &Id_meas, &Iq_meas);

    // 电流PI控制 - 计算dq坐标系下的电压指令
    Vd = pi_id(Id_ref - Id_meas); Vq = pi_iq(Iq_ref - Iq_meas);

    // 逆Park变换 - 将dq坐标系下的电压指令转换为αβ坐标系
    inv_park_transform(Vd, Vq, motor_angle_elec_rad, &Valpha, &Vbeta);

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

// 编码器索引中断服务程序 - 处理编码器索引信号中断，标记索引信号已检测，并清除相应的中断标志
__interrupt void eqep_index_isr(void)
{
    // 标记索引信号已检测
    index_detected = true;

    // 清除中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP6);
}

// 电气角度校准函数 - 等待编码器索引信号，检测到后重置编码器位置，并计算初始的机械角度和电气角度
void calibrate_electrical_angle(void)
{
    // 等待编码器索引信号
    index_detected = false;
    while(!index_detected);

    // 索引信号检测到后，重置编码器位置
    Encoder_Reset();

    // 设置机械角度为0
    motor_angle_mech_rad = 0.0f;

    // 计算电气角度（考虑极对数）
    motor_angle_elec_rad = motor_angle_mech_rad * MOTOR_POLE_PAIRS;
}
