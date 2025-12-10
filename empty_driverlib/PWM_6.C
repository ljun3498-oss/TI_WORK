
#include "driverlib.h"
#include "device.h"
#include "driverlib/dma.h"
#include <math.h>
#include <string.h>
#include <stdint.h>


//使用dma转运数据


#define SYSTEM_CLOCK     200000000.0f  // 系统时钟频率 (200 MHz)
#define PWM_FREQ         5000.0f       // 载波频率（ePWM 开关频率，5 kHz）
#define TABLE_POINTS     100           // SPWM 查找表中的采样点数
#define PI               3.14159265359f


static volatile uint16_t sineTable[TABLE_POINTS] __attribute__((aligned(4)));
static uint16_t TBPRD;             // ePWM 时间基准周期寄存器值 (TBPRD)

//__interrupt void dmaCh1ISR(void);


void InitSysCtrl(void)
{
    /* 推荐使用 Device_init()（它会配置 PLL、时钟等）*/
    Device_init();             // 初始化 PLL/时钟/核心（C2000 standard）
    Device_initGPIO();         // 初始化 GPIO（默认状态）

    /* Disable watchdog (if still needed after Device_init) */
    SysCtl_disableWatchdog();

    /* 使能外设时钟——仅启用必要外设 */
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DMA);

}




void InitSineTable(void)
{
    uint16_t i;
    for( i = 0U; i < TABLE_POINTS; ++i)
    {
        // 生成 0.0f 到 1.0f 之间的正弦调制值 (0.5 + 0.5 * sin)
        float v = 0.5f + 0.5f * sinf(2.0f * PI * (float)i / (float)TABLE_POINTS);
        // 将值缩放到 0 到 TBPRD 之间
        uint32_t val = (uint32_t)(v * (float)TBPRD + 0.5f);
        
        // 确保不超出 TBPRD 的范围
        if(val > TBPRD) val = TBPRD;
        sineTable[i] = (uint16_t)val;
    }
}

void InitPWM(void)
{
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);
    EPWM_setPhaseShift(EPWM1_BASE, 0U);
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0U);

    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);

    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD / 2);

    /* center-aligned PWM: zero -> HIGH; up cmpA -> LOW; down cmpA -> HIGH */
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_HIGH,
                                   EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_LOW,
                                  EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_HIGH, 
                                  EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);

    EPWM_setCounterCompareShadowLoadMode(EPWM1_BASE,
                                         EPWM_COUNTER_COMPARE_A,
                                         EPWM_COMP_LOAD_ON_CNTR_ZERO);

    /* 建议将 ADC 触发点改为 CMPA 的上/下计数中点以利于电流采样（根据需要调整） */
    EPWM_disableADCTrigger(EPWM1_BASE, EPWM_SOC_A);
    EPWM_setADCTriggerSource(EPWM1_BASE, 
                      EPWM_SOC_A,
                       EPWM_SOC_TBCTR_U_CMPA);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, 
                                EPWM_SOC_A,
                                 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);
    /* 如果 EPWM 处于 Tri-state，需解除 Trip-Zone 保护（示例：清除所有 TZ flags） */
    EPWM_clearTripZoneFlag(EPWM1_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_CBC); 

    /* GPIO 配置 */
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setDirectionMode(0, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(0, GPIO_QUAL_SYNC);


}





void InitDMA(void)
{
    DMA_initController();

    DMA_stopChannel(DMA_CH1_BASE);
    DMA_clearTriggerFlag(DMA_CH1_BASE);
    DMA_clearErrorFlag(DMA_CH1_BASE);
    DMA_disableInterrupt(DMA_CH1_BASE); // 不启用中断

    // DMA 循环模式，触发源：EPWM1 SOCA
    DMA_configMode(DMA_CH1_BASE, DMA_TRIGGER_EPWM1SOCA, DMA_CFG_CONTINUOUS_ENABLE);

    // 源地址：sineTable
    DMA_configSourceAddress(DMA_CH1_BASE, (void *)sineTable);

    // 目标地址：ePWM1 CMPA
    DMA_configDestAddress(DMA_CH1_BASE, (void *)(EPWM1_BASE + EPWM_O_CMPA));

    // 每次搬运 1 个半字，源步进 sizeof(uint16_t)，目标步进 0
    DMA_configBurst(DMA_CH1_BASE, 1, sizeof(uint16_t), 0);
    DMA_configTransfer(DMA_CH1_BASE, TABLE_POINTS, sizeof(uint16_t), 0);

    DMA_startChannel(DMA_CH1_BASE);
}


void InitSystem(void)
{
    Device_init();
    Device_initGPIO();
    SysCtl_disableWatchdog();
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DMA);

    // 计算 TBPRD
    TBPRD = (uint16_t)(SYSTEM_CLOCK / (2.0f * PWM_FREQ) + 0.5f);
    if(TBPRD > 0xFFFF) TBPRD = 0xFFFF;

    InitSineTable();
    InitPWM();
    InitDMA();
}

/*__interrupt void dmaCh1ISR(void)
{
   
    #ifdef __DMA_CLEAR_INTERRUPT_STATUS_EXISTS__
        DMA_clearInterruptStatus(DMA_CH1_BASE);
    #else
        DMA_clearTriggerFlag(DMA_CH1_BASE);
    #endif

    DMA_clearErrorFlag(DMA_CH1_BASE);  // 必要时清错误位

    
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP7);
}
*/



int main(void)
{
    DINT;
    InitSystem();
    EINT;
    ERTM;

    // CPU 空闲等待 DMA 循环更新 SPWM
    for(;;)
    {
        asm(" NOP");
    }
}
