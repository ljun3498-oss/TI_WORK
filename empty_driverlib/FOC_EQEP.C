

#include "driverlib.h"
#include "device.h"
#include <stdint.h>
#include <stdbool.h>

//==================================================
// 参数
//==================================================
#define ENCODER_LINES           2500U
#define COUNTS_PER_REV          (ENCODER_LINES * 4U)

#define SYSCLK_FREQ             200000000UL   // 200 MHz
#define UNIT_TIMER_US           1000U          // 1 ms

//==================================================
// 电机状态
//==================================================
typedef struct
{
    uint32_t position;        // 单圈位置
    uint32_t absolutePos;     // 累计位置
    uint32_t lastPosition;
    uint32_t lastTime;
    int16_t  direction;       // 1 / -1
    float    speedRPM;
    uint32_t revolutions;     // Z 相圈数
} MotorState;

static volatile MotorState motor;

//==================================================
// 函数声明
//==================================================
static void initGPIO(void);
static void initEQEP(void);
static void initCPUTimer(void);
static void initInterrupts(void);
static void updateMotorState(void);
static void calculateSpeed(void);

__interrupt void eqepISR(void);
static void delay_us(uint32_t microSeconds);

//==================================================
// 微秒级延时函数
//==================================================
static void delay_us(uint32_t microSeconds)
{
    // 计算需要的时钟周期数
    // SYSCLK = 200MHz, 1个周期 = 5ns
    // 所以1微秒 = 200个周期
    uint32_t cycles = microSeconds * 200;
    
    // 使用CPU Timer 1实现延时
    CPUTimer_stopTimer(CPUTIMER1_BASE);
    CPUTimer_setPeriod(CPUTIMER1_BASE, cycles);
    CPUTimer_reloadTimerCounter(CPUTIMER1_BASE);
    CPUTimer_startTimer(CPUTIMER1_BASE);
    
    // 等待定时器计数完成
    while(CPUTimer_getTimerOverflowStatus(CPUTIMER1_BASE) == false)
    {
        // 空循环等待
    }
    
    // 清除溢出标志
    CPUTimer_clearOverflowFlag(CPUTIMER1_BASE);
}

//==================================================
// main
//==================================================
void main(void)
{
    Device_init();
    Device_initGPIO();

    Interrupt_disableMaster();

    initGPIO();
    initCPUTimer();
    initInterrupts();
    initEQEP();

    Interrupt_enableMaster();

    while(1)
    {
        // motor.position
        // motor.speedRPM
        // motor.direction
        delay_us(100000);
    }
}

//==================================================
// GPIO
//==================================================
static void initGPIO(void)
{
    GPIO_setPadConfig(20, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPinConfig(GPIO_20_EQEP1A);
    GPIO_setDirectionMode(20, GPIO_DIR_MODE_IN);

    GPIO_setPadConfig(21, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPinConfig(GPIO_21_EQEP1B);
    GPIO_setDirectionMode(21, GPIO_DIR_MODE_IN);

    GPIO_setPadConfig(23, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPinConfig(GPIO_23_EQEP1I);
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_IN);
}

//==================================================
// CPU Timer0（测速用）
//==================================================
static void initCPUTimer(void)
{
    // 初始化CPU Timer 0（测速用）
    CPUTimer_stopTimer(CPUTIMER0_BASE);
    CPUTimer_setPeriod(CPUTIMER0_BASE, 0xFFFFFFFFUL);
    CPUTimer_setPreScaler(CPUTIMER0_BASE, 0);
    CPUTimer_reloadTimerCounter(CPUTIMER0_BASE);
    CPUTimer_startTimer(CPUTIMER0_BASE);
    
    // 初始化CPU Timer 1（延时用）
    CPUTimer_stopTimer(CPUTIMER1_BASE);
    CPUTimer_setPreScaler(CPUTIMER1_BASE, 0);
    CPUTimer_reloadTimerCounter(CPUTIMER1_BASE);
}

//==================================================
// 中断
//==================================================
static void initInterrupts(void)
{
    Interrupt_initModule();
    Interrupt_initVectorTable();

    Interrupt_register(INT_EQEP1, &eqepISR);
    Interrupt_enable(INT_EQEP1);
}

//==================================================
// eQEP 初始化
//==================================================
static void initEQEP(void)
{
    EQEP_disableModule(EQEP1_BASE);

    // ★ 正确的 4× 译码宏（F28377D）
    EQEP_setDecoderConfig(EQEP1_BASE,
        EQEP_CONFIG_QUADRATURE |
        EQEP_CONFIG_2X_RESOLUTION);

    EQEP_setPositionCounterConfig(EQEP1_BASE,
        EQEP_POSITION_RESET_MAX_POS,
        0xFFFFFFFFUL);

    EQEP_setInputPolarity(EQEP1_BASE, false, false, false, false);

    EQEP_setLatchMode(EQEP1_BASE,
        EQEP_LATCH_RISING_INDEX |
        EQEP_LATCH_CNT_READ_BY_CPU);

    // Unit Timer = 1ms（eQEP 时钟 = SYSCLK/2）
    uint32_t unitPeriod =
        (SYSCLK_FREQ / 2U) * UNIT_TIMER_US / 1000000U;

    EQEP_enableUnitTimer(EQEP1_BASE, unitPeriod);

    EQEP_enableInterrupt(EQEP1_BASE,
        EQEP_INT_UNIT_TIME_OUT |
        EQEP_INT_INDEX_EVNT_LATCH);

    EQEP_setPosition(EQEP1_BASE, 0);

    motor.lastPosition = 0;
    motor.lastTime = CPUTimer_getTimerCount(CPUTIMER0_BASE);
    motor.direction = 1;
    motor.revolutions = 0;

    EQEP_enableModule(EQEP1_BASE);
}

//==================================================
// eQEP ISR
//==================================================
__interrupt void eqepISR(void)
{
    uint32_t status = EQEP_getInterruptStatus(EQEP1_BASE);

    if(status & EQEP_INT_INDEX_EVNT_LATCH)
    {
        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_INDEX_EVNT_LATCH);
        motor.revolutions++;
    }

    if(status & EQEP_INT_UNIT_TIME_OUT)
    {
        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_UNIT_TIME_OUT);
        updateMotorState();
    }

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);
}

//==================================================
// 更新状态
//==================================================
static void updateMotorState(void)
{
    uint32_t pos = EQEP_getPosition(EQEP1_BASE);

    motor.absolutePos = pos;
    motor.position = pos % COUNTS_PER_REV;

    if(EQEP_getStatus(EQEP1_BASE) & EQEP_STS_DIR_FLAG)
        motor.direction = 1;
    else
        motor.direction = -1;

    calculateSpeed();

    motor.lastPosition = pos;
}

//==================================================
// 速度计算 RPM
//==================================================
static void calculateSpeed(void)
{
    uint32_t now = CPUTimer_getTimerCount(CPUTIMER0_BASE);
    uint32_t dt  = now - motor.lastTime;
    if(dt == 0) return;

    int32_t dp = (int32_t)(motor.absolutePos - motor.lastPosition);

    motor.speedRPM =
        (float)dp * 60.0f * (float)SYSCLK_FREQ /
        ((float)COUNTS_PER_REV * (float)dt);

    motor.speedRPM *= (float)motor.direction;

    motor.lastTime = now;
}

//###########################################################################
// End of file
//###########################################################################
