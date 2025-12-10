// 包含 TI DriverLib 和 Device Support 库
#include "driverlib.h"
#include "device.h"
#include <math.h>
#include <stdint.h>

#define ADC_NUM_PHASES 3

volatile uint16_t adcResults[ADC_NUM_PHASES];  // 保存三个相电压

// 定义采样窗口周期数，用于 ADC_SOC 配置
#define ADC_SAMPLE_WINDOW_CYCLES    7

#define ADC_PHASE_COUNT             3
#define ADC_SAMPLE_WINDOW_CYCLES_DEF    15  // 示例默认值，请根据芯片手册调整

// 函数声明
void InitADC_3Phase(void);
void InitEPWM1ForADC(void);
void InitADC_DMA(void);

void InitADC_3Phase(void)
{
    // 禁用 ADC 转换器
    ADC_disableConverter(ADCA_BASE);

    // 设置 ADC 时钟预分频和分辨率
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_1_0);
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);

    // 定义各相使用的GPIO引脚及对应ADC通道
    const struct {
        uint32_t           gpioPin;
        ADC_Channel        channel;
        ADC_SOCNumber      socNum;
    } phaseConfig[ADC_PHASE_COUNT] = {
        {0U, ADC_CH_ADCIN0, ADC_SOC_NUMBER0},
        {1U, ADC_CH_ADCIN1, ADC_SOC_NUMBER1},
        {2U, ADC_CH_ADCIN2, ADC_SOC_NUMBER2}
    };

    // 配置GPIO为模拟输入模式 & 配置SOC
    uint16_t i = 0;
    for(; i < ADC_PHASE_COUNT; i++) {
        // 配置指定GPIO引脚为模拟输入模式，启用ADC功能
        GPIO_setAnalogMode(phaseConfig[i].gpioPin, GPIO_ANALOG_ENABLED);

        ADC_setupSOC(
            ADCA_BASE,
            phaseConfig[i].socNum,
            ADC_TRIGGER_EPWM1_SOCA,
            phaseConfig[i].channel,
            ADC_SAMPLE_WINDOW_CYCLES_DEF  // 采样窗口周期数，请根据实际需求确认此宏定义值
        );
        
        // 配置PPB（Post Processing Block）
        ADC_setupPPB(ADCA_BASE, (ADC_PPBNumber)(ADC_PPB_NUMBER1 + i), phaseConfig[i].socNum);
        
        // 设置偏移校正值（根据实际测量调整）
        ADC_setPPBCalibrationOffset(ADCA_BASE, (ADC_PPBNumber)(ADC_PPB_NUMBER1 + i), 0);
        
        // 设置过流检测配置 - 设置高限值（例如：2048对应满量程的一半）
        ADC_setPPBTripLimits(ADCA_BASE, (ADC_PPBNumber)(ADC_PPB_NUMBER1 + i), 2048, 0);
        
        // 启用PPB事件用于过流检测
        ADC_enablePPBEvent(ADCA_BASE, (ADC_PPBNumber)(ADC_PPB_NUMBER1 + i), ADC_EVT_TRIPHI);
        
        // 启用PPB事件中断
        ADC_enablePPBEventInterrupt(ADCA_BASE, (ADC_PPBNumber)(ADC_PPB_NUMBER1 + i), ADC_EVT_TRIPHI);
    }

    // 启用 ADC 转换器
    ADC_enableConverter(ADCA_BASE);
}


void InitEPWM1ForADC(void)
{
    uint16_t TBPRD = 2000;

    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);

    // 配置 SOCA 在周期结束时触发（零或周期计数）
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO_OR_PERIOD);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);
}

// 初始化ADC结果DMA传输
void InitADC_DMA(void)
{
    DMA_initController();
    
    // 停止DMA通道并清除标志
    DMA_stopChannel(DMA_CH4_BASE);
    DMA_clearTriggerFlag(DMA_CH4_BASE);
    DMA_clearErrorFlag(DMA_CH4_BASE);
    
    // 配置DMA通道4用于ADC结果传输
    DMA_configMode(DMA_CH4_BASE, 
                   DMA_TRIGGER_ADCA1,           // ADC转换完成触发
                   DMA_CFG_CONTINUOUS_ENABLE);  // 连续模式
    
    // 源地址：ADC PPB结果寄存器（使用PPB1的结果作为源）
    DMA_configSourceAddress(DMA_CH4_BASE, (void *)(ADCARESULT_BASE + ADC_O_PPB1RESULT));
    
    // 目标地址：adcResults数组
    DMA_configDestAddress(DMA_CH4_BASE, (void *)adcResults);
    
    // 配置传输参数
    // 每次传输1个半字，传输3个结果（3相）
    DMA_configBurst(DMA_CH4_BASE, 1, 1, 1);      // 1个字，源步进1，目标步进1
    DMA_configTransfer(DMA_CH4_BASE, 3, 2, 1);   // 传输3次，源步进2（跳过PPB状态位），目标步进1
    
    // 启动DMA通道
    DMA_startChannel(DMA_CH4_BASE);
}

int main(void)
{
    // 禁用中断
    
    // 初始化外设
    InitADC_3Phase();
    InitEPWM1ForADC();
    InitADC_DMA();  // 初始化ADC DMA传输
    
    
    // 使能DMA中断
    DMA_enableInterrupt(DMA_CH4_BASE);
    

    for(;;)
    {
        asm(" NOP"); // CPU 空闲，DMA 自动传输ADC结果
    }
}
