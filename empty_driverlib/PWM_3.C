#include "device.h"
#include "driverlib.h"
#include <math.h>

#define SYSTEM_CLOCK 200000000.0f
// #define EPWM_CLOCK (SYSTEM_CLOCK / 2.0f) // 此定义未使用，可以移除
#define PWM_FREQ     5000.0f   // 100kHz PWM频率
#define PI 3.14159265359f

// 占空比变量 (注意：现在在SetPWM_DutyCycle中是局部变量)
 //volatile float pwmDutyA = 0.5f;
 //volatile float pwmDutyB = 0.5f;

// 正弦波调制参数
#define SINE_FREQ 2.0f     // 1kHz正弦调制频率
#define SAMPLE_POINTS 100     // 一个正弦周期采样点数
float sineTable[SAMPLE_POINTS];

// 当前采样索引
volatile uint16_t sineIndex = 0;

// *************************************************************************
// * 新增: ePWM1 中断服务程序 (ISR)
// *************************************************************************
__interrupt void epwm1ISR(void)
{
    float dutyA, dutyB;
    uint16_t period;
    
    // 1. 从正弦表中获取当前占空比 (0.0f ~ 1.0f)
    dutyA = sineTable[sineIndex];
    dutyB = sineTable[(sineIndex + SAMPLE_POINTS/2) % SAMPLE_POINTS];//%为前面的数减去后面的数字取模长

    // 2. 更新索引
    sineIndex = (sineIndex + 1) % SAMPLE_POINTS;

    // 3. 计算并设置新的比较值 (CMPA/CMPB)
    // 注意：SetPWM_DutyCycle 的逻辑已移至此处，以提高效率
    period = EPWM_getTimeBasePeriod(EPWM1_BASE);
    
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)(dutyA * (float)period));
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, (uint16_t)(dutyB * (float)period));

    // 4. 清除 ePWM 中断标志
    EPWM_clearEventTriggerInterruptFlag(EPWM1_BASE);
    
    // 5. 响应PIE中断
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3);
}

//-----------------------------------------------------------------------------
// PWM初始化 (修改)
//-----------------------------------------------------------------------------
void InitPWM(void)
{
    EPWM_SignalParams pwmConfig;
    
    // EPWM_configureSignal 会计算并设置 TBPRD, TBCTL, CMPA, CMPB 和 AQ
    pwmConfig.freqInHz = PWM_FREQ;
    pwmConfig.dutyValA = 0.0f; // 初始占空比设为0
    pwmConfig.dutyValB = 0.0f; // 初始占空比设为0
    pwmConfig.invertSignalB = false;
    pwmConfig.sysClkInHz = SYSTEM_CLOCK;
    pwmConfig.epwmClkDiv = SYSCTL_EPWMCLK_DIV_1; // EPWM时钟 = SYSCLK / 1 = 200MHz
    pwmConfig.tbCtrMode = EPWM_COUNTER_MODE_UP_DOWN;
    pwmConfig.tbClkDiv = EPWM_CLOCK_DIVIDER_1;      // TBCLK = EPWM时钟 / 1 = 200MHz
    pwmConfig.tbHSClkDiv = EPWM_HSCLOCK_DIVIDER_1;  // TBCLK = TBCLK / 1 = 200MHz
    // 最终 TBPRD = (200MHz / (2 * 100kHz)) = 1000

    EPWM_configureSignal(EPWM1_BASE, &pwmConfig);

    // GPIO 配置 (与你原来的一致)
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setDirectionMode(0, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(0, GPIO_QUAL_SYNC);

    GPIO_setPinConfig(GPIO_1_EPWM1B);
    GPIO_setDirectionMode(1, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(1, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(1, GPIO_QUAL_SYNC);
  
    
    // *************************************************************************
    // * 新增: 配置 ePWM 中断 (每10us触发一次)
    // *************************************************************************
    // 在时间基准计数器等于0 (TBCTR=0x00) 时触发中断
    EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_ZERO);
    // 设置每发生 1 次事件就产生中断
    EPWM_setInterruptEventCount(EPWM1_BASE, 1U);
    // 使能 ePWM 中断
    EPWM_enableInterrupt(EPWM1_BASE);
}


//-----------------------------------------------------------------------------
// 初始化正弦表
//-----------------------------------------------------------------------------
void InitSineTable(void)
{
    uint16_t i;
    for(i = 0; i < SAMPLE_POINTS; i++)
    {
        // 范围 0.0 到 1.0
        sineTable[i] = 0.5f + 0.5f * sinf(2.0f * PI * (float)i / SAMPLE_POINTS);
    
    }
}

//-----------------------------------------------------------------------------
// 设置PWM占空比 (注意：此函数现在未被使用，逻辑已移至ISR)
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// 初始化系统 (修改)
//-----------------------------------------------------------------------------
void InitSystem(void)
{
    Device_init();

    DINT;
    IER = 0x0000; IFR = 0x0000;
    Interrupt_initModule();
    Interrupt_initVectorTable();
    
    // *************************************************************************
    // * 新增: 注册 ISR
    // *************************************************************************
    // 将 epwm1ISR 函数链接到 PIE 中的 EPWM1_INT
    Interrupt_register(INT_EPWM1, &epwm1ISR);
    
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);

    InitPWM();
    InitSineTable();
    
    // *************************************************************************
    // * 新增: 使能中断
    // *************************************************************************
    // 使能 PIE 中的 ePWM1 中断 (第3组中断)
    Interrupt_enable(INT_EPWM1);
    
    // 使能全局中断
    EINT;
}

//-----------------------------------------------------------------------------
// 主循环 (修改)
//-----------------------------------------------------------------------------
void main(void)
{
    InitSystem();
    while(1)
    {
  
    }
}
