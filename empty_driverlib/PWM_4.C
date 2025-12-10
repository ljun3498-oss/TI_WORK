#include "device.h"
#include "driverlib.h"
#include <math.h>
//降低频率适应pwm波

#define SYSTEM_CLOCK     200000000.0f
#define PWM_FREQ         500.0f       // PWM frequency (Hz)
#define DIM_FREQ         2.0f          // LED dimming (2 Hz)
#define TABLE_POINTS     100           // Sine table points
#define PI               3.14159265359f

float sineTable[TABLE_POINTS];
volatile uint16_t sineIndex = 0;


// ===========================================================
// 初始化正弦表 (0~1)
// ===========================================================
void InitSineTable(void)
{
    uint16_t i;
    for(i = 0; i < TABLE_POINTS; i++)
    {
        sineTable[i] = 0.5f + 0.5f * sinf(2.0f * PI * i / TABLE_POINTS);
    }
}



// ===========================================================
// 初始化 PWM (EPWM1A → GPIO0)
// 5kHz
// ===========================================================
void InitPWM(void)
{
    EPWM_SignalParams cfg;

    cfg.freqInHz = PWM_FREQ;
    cfg.dutyValA = 0.5f;
    cfg.dutyValB = 0.0f;
    cfg.invertSignalB = false;
    cfg.sysClkInHz = SYSTEM_CLOCK;
    cfg.epwmClkDiv = SYSCTL_EPWMCLK_DIV_1;
    cfg.tbClkDiv = EPWM_CLOCK_DIVIDER_1;
    cfg.tbHSClkDiv = EPWM_HSCLOCK_DIVIDER_1;
    cfg.tbCtrMode = EPWM_COUNTER_MODE_UP_DOWN;

    EPWM_configureSignal(EPWM1_BASE, &cfg);

    // PWM 输出引脚
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setDirectionMode(0, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);
}


// ===========================================================
// 初始化 CPUTIMER0，更新 PWM 占空比
// 更新率 = DIM_FREQ * TABLE_POINTS = 2 * 100 = 200 Hz
// ===========================================================
void InitDimTimer(void)
{
    uint32_t ticks = SYSTEM_CLOCK / (DIM_FREQ * TABLE_POINTS);  // 200Hz

    CPUTimer_setPeriod(CPUTIMER0_BASE, ticks);
    CPUTimer_setPreScaler(CPUTIMER0_BASE, 0);
    CPUTimer_reloadTimerCounter(CPUTIMER0_BASE);
    CPUTimer_enableInterrupt(CPUTIMER0_BASE);
    CPUTimer_startTimer(CPUTIMER0_BASE);
}


// ===========================================================
// dimISR：更新 PWM 占空比（非常轻量）
// ===========================================================
__interrupt void dimISR(void)
{
    uint16_t prd = EPWM_getTimeBasePeriod(EPWM1_BASE);

    float duty = sineTable[sineIndex];
    sineIndex = (sineIndex + 1) % TABLE_POINTS;

    EPWM_setCounterCompareValue(EPWM1_BASE,EPWM_COUNTER_COMPARE_A,(uint16_t)(duty * prd));

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}




// ===========================================================
// 系统初始化
// ===========================================================
void InitSystem(void)
{
    Device_init();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    InitSineTable();
    InitPWM();
    InitDimTimer();

    Interrupt_register(INT_TIMER0, &dimISR);
    Interrupt_enable(INT_TIMER0);

    EINT;
}


// ===========================================================
// 主函数
// ===========================================================
void main(void)
{
    InitSystem();

    while(1)
    {
        // 空循环，全部工作在 ISR 内完成
    }
}
