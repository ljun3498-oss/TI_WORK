/**
 * @file foc_adc.c
 * @brief ADC（模数转换）模块实现
 * @details 该文件实现了ADC模块的初始化、电流读取和中断处理功能，
 *          用于读取电机相电流等模拟信号。
 */

#include "foc_adc.h"       // 包含FOC控制的ADC模块头文件
#include "driverlib.h"     // 包含C2000系列芯片的驱动库头文件
#include "device.h"        // 包含设备配置头文件

// 全局变量

/**
 * @brief ADC采样结果数组
 * @details 存储三相电流的ADC转换值
 */
static uint16_t adcResult[3]; // ADC采样结果数组，存储三相电流的ADC转换值

/**
 * @brief 处理ADC转换结果
 * @details 读取ADC转换结果，计算电流值，并进行过流检查
 */
static void Process_ADC_Results(void)
{
    // 读取转换结果
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0); // 读取A相电流的ADC转换结果
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1); // 读取B相电流的ADC转换结果
    adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2); // 读取C相电流的ADC转换结果

    // 转换为电流值
    Ia_meas = (float)((int16_t)adcResult[0] - 2048) * ADC_COUNTS_TO_AMP; // 计算A相电流值，2048为中点值
    Ib_meas = (float)((int16_t)adcResult[1] - 2048) * ADC_COUNTS_TO_AMP; // 计算B相电流值，2048为中点值
    Ic_meas = (float)((int16_t)adcResult[2] - 2048) * ADC_COUNTS_TO_AMP; // 计算C相电流值，2048为中点值

    // 过流保护检查
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP || // 检查A相电流是否超过过流阈值
       fabsf(Ib_meas) > I_OVERCURRENT_TRIP || // 检查B相电流是否超过过流阈值
       fabsf(Ic_meas) > I_OVERCURRENT_TRIP)   // 检查C相电流是否超过过流阈值
    {
        overcurrent_fault = true;              // 设置过流故障标志
        // 触发过流保护动作
        // 这里可以添加具体的过流保护措施，例如：
        // 1. 立即关闭PWM输出
        // 2. 记录故障信息
        // 3. 触发系统停机
    }
}

/**
 * @brief ADC初始化函数
 * @details 配置ADC模块的时钟、分辨率、通道、触发源等参数，
 *          为电流测量做准备。
 */
void ADC_Init(void)
{
    // 禁用ADC模块，准备进行配置
    ADC_disableConverter(ADCA_BASE); // 禁用ADCA转换器，以便进行配置

    // 配置ADC时钟，设置为系统时钟的1/4
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_4_0); // 设置ADCA的预分频器为4.0

    // 配置ADC分辨率为12位，单端输入模式
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED); // 设置ADCA为12位分辨率，单端输入模式

    // 配置SOC0 - A相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN0, 15); // 使用EPWM1的SOCB触发，通道为ADCIN0，采样窗口为15个ADCCLK周期

    // 配置SOC1 - B相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN1, 15); // 使用EPWM1的SOCB触发，通道为ADCIN1，采样窗口为15个ADCCLK周期

    // 配置SOC2 - C相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCB,
                 ADC_CH_ADCIN2, 15); // 使用EPWM1的SOCB触发，通道为ADCIN2，采样窗口为15个ADCCLK周期

    // 配置SOC优先级，设置所有SOC为高优先级
    ADC_setSOCPriority(ADCA_BASE, ADC_PRI_ALL_HIPRI); // 设置ADCA的所有SOC为高优先级

    // 配置ADC中断，使用SOC2作为中断源
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2); // 设置ADCA中断1的源为SOC2
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1); // 启用ADCA中断1
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADCA中断1的状态标志

    // 配置ADC采样模式，设置为转换结束时产生中断脉冲
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV); // 设置ADCA在转换结束时产生中断脉冲

    // 计算过流保护的ADC阈值
    uint16_t overcurrent_adc_threshold = (uint16_t)(2048 + I_OVERCURRENT_TRIP / ADC_COUNTS_TO_AMP + 0.5f);
    if (overcurrent_adc_threshold > 4095) overcurrent_adc_threshold = 4095;

    // 配置PPB进行过流保护
    // 配置PPB1与SOC0关联（用于A相电流过流检测）
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0); // 设置ADCA的PPB1与SOC0关联
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, overcurrent_adc_threshold, 4095 - overcurrent_adc_threshold); // 设置过流保护阈值
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI | ADC_EVT_TRIPLO); // 启用PPB的高低限触发事件

    // 启用ADC模块，开始工作
    ADC_enableConverter(ADCA_BASE); // 启用ADCA转换器，开始工作

    // 等待ADC准备就绪（添加延时替代ADC_isConverterReady函数）
    DEVICE_DELAY_US(100); // 延时100微秒，确保ADC稳定工作
}

/**
 * @brief 读取电流函数
 * @details 触发ADC转换并读取三相电流值，
 *          将ADC计数转换为实际电流值。
 */
void ADC_Read_Current(void)
{
    // 触发ADC转换
    // 强制触发一次ADC采样
    EPWM_forceADCTrigger(EPWM1_BASE, EPWM_SOC_B); // 强制EPWM1产生SOCB触发信号，启动ADC转换

    // 等待转换完成
    while(!ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1)); // 等待ADC中断1标志置位，表示转换完成

    // 处理ADC结果
    Process_ADC_Results();

    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADC中断1的状态标志，准备下次转换
}

/**
 * @brief ADC中断服务程序
 * @details 处理ADC转换完成中断，读取转换结果，
 *          计算电流值并进行过流检查。
 */
__interrupt void ADC_Isr(void)
{
    // 处理ADC结果
    Process_ADC_Results();

    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADC中断1的状态标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);        // 清除中断确认组1，允许后续中断
}
