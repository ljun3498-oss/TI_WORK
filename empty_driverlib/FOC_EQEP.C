//###########################################################################
//
// FILE:   eqep_position_speed.c
// TITLE:  F28377D eQEP 位置和速度测量
//
//###########################################################################

#include "driverlib.h"
#include "device.h"
#include <stdint.h>
#include <stdbool.h>

//==================================================
// 编码器参数
//==================================================
#define ENCODER_LINES       2500U
#define COUNTS_PER_REV     (ENCODER_LINES * 4U)

#define SYSCLK_FREQ        200000000UL   // 200 MHz
#define UNIT_TIMER_US      1000U         // 1 ms

//==================================================
// 电机状态结构体
//==================================================
typedef struct
{
    int32_t  position_cnt;        // 单圈位置
    int64_t  absolute_pos_cnt;    // 绝对位置
    int32_t  last_pos_cnt;        // 上次位置
    int32_t  delta_pos_cnt;       // 位置增量

    int32_t  revolution_cnt;      // 圈数统计
    int16_t  direction_flag;      // 方向标志
    float    speed_rpm;           // 转速

} motor_state_t;

static volatile motor_state_t motor = {0};

//==================================================
// 函数声明
//==================================================
static void initGPIO(void);
static void initEQEP(void);
static void initInterrupts(void);
static void updateMotorState(void);
static void calculateSpeed(void);

__interrupt void eqepISR(void);

//==================================================
// 主函数
//==================================================
void main(void)
{
    Device_init();
    Device_initGPIO();

    Interrupt_disableMaster();

    initGPIO();
    initInterrupts();
    initEQEP();

    Interrupt_enableMaster();

    while(1)
    {
        // 可用变量：
        // motor.position_cnt
        // motor.absolute_pos_cnt
        // motor.speed_rpm
        // motor.direction_flag
    }
}

//==================================================
// GPIO配置
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
// 中断配置
//==================================================
static void initInterrupts(void)
{
    Interrupt_initModule();
    Interrupt_initVectorTable();

    Interrupt_register(INT_EQEP1, &eqepISR);
    Interrupt_enable(INT_EQEP1);
}

//==================================================
// eQEP配置
//==================================================
static void initEQEP(void)
{
    EQEP_disableModule(EQEP1_BASE);

    // 4倍频解码
    EQEP_setDecoderConfig(EQEP1_BASE,
        EQEP_CONFIG_QUADRATURE |
        EQEP_CONFIG_1X_RESOLUTION);

    // 位置计数器配置
    EQEP_setPositionCounterConfig(EQEP1_BASE,
        EQEP_POSITION_RESET_MAX_POS,
        0xFFFFFFFFUL);

    EQEP_setInputPolarity(EQEP1_BASE, false, false, false, false);

    // 索引锁存模式
    EQEP_setLatchMode(EQEP1_BASE,
        EQEP_LATCH_RISING_INDEX |
        EQEP_LATCH_CNT_READ_BY_CPU);

    // 单元定时器 = 1 ms
    uint32_t unit_period =
        (SYSCLK_FREQ / 2U) * UNIT_TIMER_US / 1000000U;

    EQEP_enableUnitTimer(EQEP1_BASE, unit_period);

    EQEP_enableInterrupt(EQEP1_BASE,
        EQEP_INT_UNIT_TIME_OUT |
        EQEP_INT_INDEX_EVNT_LATCH);

    EQEP_setPosition(EQEP1_BASE, 0);

    motor.last_pos_cnt     = 0;
    motor.absolute_pos_cnt = 0;
    motor.revolution_cnt  = 0;

    EQEP_enableModule(EQEP1_BASE);
}

//==================================================
// eQEP中断服务程序
//==================================================
__interrupt void eqepISR(void)
{
    uint32_t int_status = EQEP_getInterruptStatus(EQEP1_BASE);

    // 索引脉冲中断
    if(int_status & EQEP_INT_INDEX_EVNT_LATCH)
    {
        if(EQEP_getStatus(EQEP1_BASE) & EQEP_STS_DIR_FLAG)
            motor.revolution_cnt++;
        else
            motor.revolution_cnt--;

        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_INDEX_EVNT_LATCH);
    }

    // 定时器中断
    if(int_status & EQEP_INT_UNIT_TIME_OUT)
    {
        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_UNIT_TIME_OUT);

        updateMotorState();
    }

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);
}

//==================================================
// 更新电机状态
//==================================================
static void updateMotorState(void)
{
    int32_t pos_cnt = (int32_t)EQEP_getPosition(EQEP1_BASE);

    motor.delta_pos_cnt = pos_cnt - motor.last_pos_cnt;
    motor.last_pos_cnt  = pos_cnt;

    motor.position_cnt = pos_cnt % COUNTS_PER_REV;
    if(motor.position_cnt < 0)
        motor.position_cnt += COUNTS_PER_REV;

    motor.direction_flag =
        (EQEP_getStatus(EQEP1_BASE) & EQEP_STS_DIR_FLAG) ? 1 : -1;

    motor.absolute_pos_cnt =
        ((int64_t)motor.revolution_cnt * COUNTS_PER_REV) +
        motor.position_cnt;

    calculateSpeed();
}

//==================================================
// 计算转速
//==================================================
static void calculateSpeed(void)
{
    // 定时器周期 = 1 ms
    const float sample_time_s = 0.001f;

    motor.speed_rpm =
        ((float)motor.delta_pos_cnt / (float)COUNTS_PER_REV) *
        (60.0f / sample_time_s);
}
