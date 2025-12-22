#include "driverlib.h"
#include "device.h"
#include "model/foc.h"
//12trae测试
// 全局变量
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

// 函数声明
void InitPeripherals(void);
void DoElectricalAlignment(void);
__interrupt void adc_isr(void);
__interrupt void eqep_index_isr(void);

/**
 * @brief 主函数
 */
int main(void)
{
    // 初始化系统
    Device_init();
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    // 初始化外设
    InitPeripherals();

    // 进行电气角度校准
    DoElectricalAlignment();

    // 使能全局中断
    EINT;
    ERTM;

    // 主循环
    while(1)
    {
        // 这里可以添加控制逻辑
        // 例如：设置参考电流、运行FOC算法等

        // 软件延时
        uint32_t i;
        for(i = 0; i < 1000000; i++)
        {
            // 空循环
        }
    }
}

/**
 * @brief 初始化所有外设
 */
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

/**
 * @brief 电气角度校准
 */
void DoElectricalAlignment(void)
{
    // 设置校准电流
    // float align_current = 0.5f; // 0.5A

    // 设置校准时间
    // uint32_t align_time = 500; // 500ms

    // 执行电气角度校准
    // ... 校准逻辑 ...

    // 标记编码器已校准
    encoder_calibrated = true;
}

/**
 * @brief ADC中断服务程序
 */
__interrupt void adc_isr(void)
{
    // 读取电流
    ADC_Read_Current();

    // 读取编码器
    Encoder_Read();

    // 执行FOC算法
    float Valpha, Vbeta;
    float Id_meas, Iq_meas;
    float Vd, Vq;

    // Clarke变换
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &Valpha, &Vbeta);

    // Park变换
    park_transform(Valpha, Vbeta, motor_angle_elec_rad, &Id_meas, &Iq_meas);

    // 电流PI控制
    Vd = pi_id(Id_ref - Id_meas);
    Vq = pi_iq(Iq_ref - Iq_meas);

    // 逆Park变换
    inv_park_transform(Vd, Vq, motor_angle_elec_rad, &Valpha, &Vbeta);

    // SVPWM计算
    svpwm_compute(&svpwm_handle, Valpha, Vbeta);

    // 设置PWM占空比（同时设置比较器A和B，用于互补输出）
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA1);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB1);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA2);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB2);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA3);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB3);

    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

/**
 * @brief 编码器索引中断服务程序
 */
__interrupt void eqep_index_isr(void)
{
    // 标记索引信号已检测
    index_detected = true;

    // 清除中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP6);
}

/**
 * @brief 电气角度校准函数
 */
void calibrate_electrical_angle(void)
{
    // 等待编码器索引信号
    index_detected = false;
    while(!index_detected)
    {
        // 可以在这里添加一个超时机制，防止无限等待
        // 例如：如果超过一定时间没有检测到索引信号，使用当前位置作为参考
    }

    // 索引信号检测到后，重置编码器位置
    Encoder_Reset();

    // 设置机械角度为0
    motor_angle_mech_rad = 0.0f;

    // 计算电气角度（考虑极对数）
    motor_angle_elec_rad = motor_angle_mech_rad * MOTOR_POLE_PAIRS;
}
