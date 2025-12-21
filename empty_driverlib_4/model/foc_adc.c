#include "foc_adc.h"
#include "driverlib.h"
#include "device.h"

// 全局变量
static uint16_t adcResult[3]; // ADC采样结果

/**
 * @brief ADC初始化函数
 */
void ADC_Init(void)
{
    // 禁用ADC模块
    ADC_disableConverter(ADCA_BASE);

    // 配置ADC时钟
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_4_0);

    // 配置ADC分辨率
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);

    // 配置SOC0 - A相电流
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN0, 15);

    // 配置SOC1 - B相电流
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN1, 15);

    // 配置SOC2 - C相电流
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN2, 15);

    // 配置SOC优先级
    ADC_setSOCPriority(ADCA_BASE, ADC_PRI_ALL_HIPRI);

    // 配置ADC中断
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2);
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    // 配置ADC采样模式
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);

    // 启用ADC模块
    ADC_enableConverter(ADCA_BASE);

    // 等待ADC准备就绪（添加延时替代ADC_isConverterReady函数）
    DEVICE_DELAY_US(100);

    // 配置PPB进行过流保护
    // 配置PPB0与SOC0关联
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, 4095, 4095); // 设置过流保护阈值，16位ADC最大值
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI | ADC_EVT_TRIPLO);
}

/**
 * @brief 
 * 
 */
void ADC_Read_Current(void)
{
    // 触发ADC转换
    // 强制触发一次ADC采样
    EPWM_forceADCTrigger(EPWM1_BASE, EPWM_SOC_B);

    // 等待转换完成
    while(!ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1));

    // 读取转换结果
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);
    adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);

    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    // 转换为电流值
    Ia_meas = (float)((int16_t)adcResult[0] - 2048) * ADC_COUNTS_TO_AMP;
    Ib_meas = (float)((int16_t)adcResult[1] - 2048) * ADC_COUNTS_TO_AMP;
    Ic_meas = (float)((int16_t)adcResult[2] - 2048) * ADC_COUNTS_TO_AMP;

    // 过流保护检查
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP ||
       fabsf(Ib_meas) > I_OVERCURRENT_TRIP ||
       fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    {
        overcurrent_fault = true;
        // 触发过流保护动作
    }
}

/**
 * @brief ADC中断服务程序
 */
__interrupt void ADC_Isr(void)
{
    // 读取ADC结果
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);
    adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);

    // 转换为电流值
    Ia_meas = (float)((int16_t)adcResult[0] - 2048) * ADC_COUNTS_TO_AMP;
    Ib_meas = (float)((int16_t)adcResult[1] - 2048) * ADC_COUNTS_TO_AMP;
    Ic_meas = (float)((int16_t)adcResult[2] - 2048) * ADC_COUNTS_TO_AMP;

    // 过流保护检查
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP ||
       fabsf(Ib_meas) > I_OVERCURRENT_TRIP ||
       fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    {
        overcurrent_fault = true;
        // 触发过流保护动作
    }

    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}






