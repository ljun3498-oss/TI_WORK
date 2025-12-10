#include "device.h"
#include "driverlib.h"
#include <math.h>
//中断实现spwm
#define SYSTEM_CLOCK     200000000.0f   // 系统时钟 200MHz
#define PWM_FREQ         20000.0f       // PWM 输出频率 20kHz
#define ELECTRIC_FREQ    50.0f          // 电机频率 50Hz
#define TABLE_POINTS     200            // 正弦表采样点数
#define PI               3.14159265359f

// 正弦表
float sineTable[TABLE_POINTS];
volatile uint16_t sineIndex = 0;

// 初始化正弦表 (0~1)
void InitSineTable(void)
{   
    uint16_t i;
    for(i = 0; i < TABLE_POINTS; i++)
    {
        sineTable[i] = 0.5f + 0.5f * sinf(2.0f * PI * i / TABLE_POINTS);
    }
}

// PWM 初始化 (三相，硬件相位差)
void InitPWM(void)
{
    EPWM_SignalParams cfg;

    cfg.freqInHz = PWM_FREQ;
    cfg.dutyValA = 0.5f;
    cfg.dutyValB = 0.5f;
    cfg.invertSignalB = false;
    cfg.sysClkInHz = SYSTEM_CLOCK;
    cfg.tbClkDiv = EPWM_CLOCK_DIVIDER_1;
    cfg.tbHSClkDiv = EPWM_HSCLOCK_DIVIDER_1;
    cfg.tbCtrMode = EPWM_COUNTER_MODE_UP_DOWN;

    // Phase A 主 PWM
    EPWM_configureSignal(EPWM1_BASE, &cfg);
    GPIO_setPinConfig(GPIO_0_EPWM1A);

    // Phase B, 硬件相位偏移 120°
    EPWM_configureSignal(EPWM2_BASE, &cfg);
    EPWM_setPhaseShift(EPWM2_BASE, EPWM_getTimeBasePeriod(EPWM1_BASE)/3);
    EPWM_enablePhaseShiftLoad(EPWM2_BASE );
    GPIO_setPinConfig(GPIO_2_EPWM2A);

    // Phase C, 硬件相位偏移 240°
    EPWM_configureSignal(EPWM3_BASE, &cfg);
    EPWM_setPhaseShift(EPWM3_BASE, 2*EPWM_getTimeBasePeriod(EPWM1_BASE)/3);
    EPWM_enablePhaseShiftLoad(EPWM3_BASE );
    GPIO_setPinConfig(GPIO_4_EPWM3A);

    // 启动同步
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN);

    EPWM_enablePhaseShiftLoad(EPWM2_BASE);
    EPWM_enablePhaseShiftLoad(EPWM3_BASE);
}

// 开环占空比更新 ISR（只更新一相，占空比同步）
__interrupt void epwmISR(void)
{
    uint16_t prd = EPWM_getTimeBasePeriod(EPWM1_BASE);

    float duty = sineTable[sineIndex];
    sineIndex = (sineIndex + (uint16_t)(ELECTRIC_FREQ * TABLE_POINTS / PWM_FREQ)) % TABLE_POINTS;

    // Phase A/B/C 都用硬件相位差
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)(duty * prd));
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)(duty * prd));
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)(duty * prd));

    EPWM_clearEventTriggerInterruptFlag(EPWM1_BASE);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3);
}

// 系统初始化
void InitSystem(void)
{
    Device_init();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    InitSineTable();
    InitPWM();

    // 注册 PWM ISR (Phase A 触发)
    Interrupt_register(INT_EPWM1, &epwmISR);//epwmisr是我中断程序的地址注册到pie模块intepwm1的位置
    EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_ZERO);//到达0点开启中断
    EPWM_setInterruptEventCount(EPWM1_BASE, 1U);
    EPWM_enableInterrupt(EPWM1_BASE);

    Interrupt_enable(INT_EPWM1);
    EINT;
}

// 主函数
void main(void)
{
    InitSystem();
    while(1)
    {
        // 主循环空闲，全部工作在 ISR 中
    }
}
