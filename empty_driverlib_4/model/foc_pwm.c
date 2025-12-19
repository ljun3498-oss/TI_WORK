#include "foc_pwm.h"
#include "driverlib.h"
#include "device.h"

/**
 * @brief EPWM初始化函数
 */
void EPWM_Init(void)
{
    // 配置EPWM1 - A相
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setPinConfig(GPIO_1_EPWM1B);

    // 配置EPWM2 - B相
    GPIO_setPinConfig(GPIO_2_EPWM2A);
    GPIO_setPinConfig(GPIO_3_EPWM2B);

    // 配置EPWM3 - C相
    GPIO_setPinConfig(GPIO_4_EPWM3A);
    GPIO_setPinConfig(GPIO_5_EPWM3B);

    // 配置EPWM1
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setSyncOutPulseMode(EPWM1_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO);

    // 配置EPWM2
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD);
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setSyncOutPulseMode(EPWM2_BASE, EPWM_SYNC_OUT_PULSE_DISABLED);

    // 配置EPWM3
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD);
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setSyncOutPulseMode(EPWM3_BASE, EPWM_SYNC_OUT_PULSE_DISABLED);

    // 配置死区
    EPWM_setDeadBandCounterClock(EPWM1_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE);
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);
    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);

    EPWM_setDeadBandCounterClock(EPWM2_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE);
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_RED, true);
    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);

    EPWM_setDeadBandCounterClock(EPWM3_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE);
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_RED, true);
    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);

    // 配置比较器
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD / 2);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, TBPRD / 2);

    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD / 2);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, TBPRD / 2);

    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD / 2);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, TBPRD / 2);

    // 配置动作限定
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);

    // 配置EPWM2和EPWM3的动作限定
    // ... 类似EPWM1的配置 ...

    // 配置SOC触发
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_B);
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_B, EPWM_SOC_TBCTR_ZERO);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_B, 1);

    // 启用PWM输出
    EPWM_setOutputEnable(EPWM1_BASE, EPWM_OUTPUT_CHANNEL_B, EPWM_OUTPUT_DISABLE); // 禁用B相上管
    EPWM_setOutputEnable(EPWM1_BASE, EPWM_OUTPUT_CHANNEL_A, EPWM_OUTPUT_ENABLE);  // 启用A相下管

    EPWM_setOutputEnable(EPWM2_BASE, EPWM_OUTPUT_CHANNEL_B, EPWM_OUTPUT_DISABLE);
    EPWM_setOutputEnable(EPWM2_BASE, EPWM_OUTPUT_CHANNEL_A, EPWM_OUTPUT_ENABLE);

    EPWM_setOutputEnable(EPWM3_BASE, EPWM_OUTPUT_CHANNEL_B, EPWM_OUTPUT_DISABLE);
    EPWM_setOutputEnable(EPWM3_BASE, EPWM_OUTPUT_CHANNEL_A, EPWM_OUTPUT_ENABLE);

    // 同步EPWM模块
    EPWM_setSyncInPulseSource(EPWM1_BASE, EPWM_SYNC_IN_PULSE_DISABLED);
    EPWM_setSyncInPulseSource(EPWM2_BASE, EPWM_SYNC_IN_PULSE_FROM_EPWM1);
    EPWM_setSyncInPulseSource(EPWM3_BASE, EPWM_SYNC_IN_PULSE_FROM_EPWM1);
}

/**
 * @brief 设置PWM占空比
 * @param dutyA A相占空比
 * @param dutyB B相占空比
 * @param dutyC C相占空比
 */
void EPWM_SetDuty(float dutyA, float dutyB, float dutyC)
{
    // 限幅处理
    dutyA = clampf_val(dutyA, 0.0f, 1.0f);
    dutyB = clampf_val(dutyB, 0.0f, 1.0f);
    dutyC = clampf_val(dutyC, 0.0f, 1.0f);

    // 计算比较值
    uint16_t cmpA = (uint16_t)(dutyA * (float)TBPRD + 0.5f);
    uint16_t cmpB = (uint16_t)(dutyB * (float)TBPRD + 0.5f);
    uint16_t cmpC = (uint16_t)(dutyC * (float)TBPRD + 0.5f);

    // 设置比较值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, cmpA);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, cmpB);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, cmpC);
}

