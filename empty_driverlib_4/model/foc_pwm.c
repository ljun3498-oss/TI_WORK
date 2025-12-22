/**
 * @file foc_pwm.c
 * @brief PWM（脉宽调制）模块实现
 * @details 该文件实现了PWM模块的初始化和占空比设置功能，
 *          用于生成控制电机的脉冲信号。
 */

#include "foc_pwm.h"
#include "driverlib.h"
#include "device.h"

/**
 * @brief EPWM初始化函数
 * @details 配置PWM模块的时基、死区、GPIO、动作限定器等参数，
 *          为电机控制做准备。
 */
void EPWM_Init(void)
{
    // 配置EPWM1 - A相
    GPIO_setPinConfig(GPIO_0_EPWM1A);      // 配置GPIO0为EPWM1A功能
    GPIO_setPinConfig(GPIO_1_EPWM1B);      // 配置GPIO1为EPWM1B功能

    // 配置EPWM2 - B相
    GPIO_setPinConfig(GPIO_2_EPWM2A);      // 配置GPIO2为EPWM2A功能
    GPIO_setPinConfig(GPIO_3_EPWM2B);      // 配置GPIO3为EPWM2B功能

    // 配置EPWM3 - C相
    GPIO_setPinConfig(GPIO_4_EPWM3A);      // 配置GPIO4为EPWM3A功能
    GPIO_setPinConfig(GPIO_5_EPWM3B);      // 配置GPIO5为EPWM3B功能

    // 配置EPWM1
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD_VAL);               // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);                      // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM1_BASE, 0U);                          // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM1_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO); // 在计数器为0时输出同步脉冲
    EPWM_setPeriodLoadMode(EPWM1_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值

    // 配置EPWM2
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD_VAL);               // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);                      // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM2_BASE, 0U);                          // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM2_BASE, EPWM_SYNC_OUT_PULSE_DISABLED); // 禁用同步脉冲输出
    EPWM_setPeriodLoadMode(EPWM2_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值

    // 配置EPWM3
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD_VAL);               // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);                      // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM3_BASE, 0U);                          // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM3_BASE, EPWM_SYNC_OUT_PULSE_DISABLED); // 禁用同步脉冲输出
    EPWM_setPeriodLoadMode(EPWM3_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值

    // 配置死区 - EPWM1
    EPWM_setDeadBandCounterClock(EPWM1_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);                  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_FED, true);                  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);                  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);                 // 设置下降沿延迟计数

    // 配置死区 - EPWM2
    EPWM_setDeadBandCounterClock(EPWM2_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_RED, true);                  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_FED, true);                  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);                  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);                 // 设置下降沿延迟计数

    // 配置死区 - EPWM3
    EPWM_setDeadBandCounterClock(EPWM3_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_RED, true);                  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_FED, true);                  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);                  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);                 // 设置下降沿延迟计数

    // 配置比较器 - EPWM1
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半

    // 配置比较器 - EPWM2
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半

    // 配置比较器 - EPWM3
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半

    // 配置动作限定 - EPWM1
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM1A输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM1A输出低电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM1B输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM1B输出低电平

    // 配置动作限定 - EPWM2
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM2A输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM2A输出低电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM2B输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM2B输出低电平

    // 配置动作限定 - EPWM3
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM3A输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM3A输出低电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM3B输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B,
                                 EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM3B输出低电平

    // 配置SOC触发
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO); // 设置ADC触发源为EPWM1计数器为0时
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);           // 设置触发事件的预分频为1
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);                         // 启用ADC触发

    // 启动PWM
    // EPWM_enableModule已被替换为正确的API调用
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1); // 启用EPWM1外设时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2); // 启用EPWM2外设时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3); // 启用EPWM3外设时钟
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
    dutyA = clampf_val(dutyA, 0.0f, 1.0f); // 将A相占空比限制在0.0到1.0之间
    dutyB = clampf_val(dutyB, 0.0f, 1.0f); // 将B相占空比限制在0.0到1.0之间
    dutyC = clampf_val(dutyC, 0.0f, 1.0f); // 将C相占空比限制在0.0到1.0之间

    // 计算比较值
    uint16_t cmpA = (uint16_t)(dutyA * (float)TBPRD_VAL + 0.5f); // 计算A相的比较值
    uint16_t cmpB = (uint16_t)(dutyB * (float)TBPRD_VAL + 0.5f); // 计算B相的比较值
    uint16_t cmpC = (uint16_t)(dutyC * (float)TBPRD_VAL + 0.5f); // 计算C相的比较值

    // 设置比较值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, cmpA); // 设置EPWM1比较器A的值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, cmpA); // 互补输出使用相同的占空比，设置EPWM1比较器B的值
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, cmpB); // 设置EPWM2比较器A的值
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, cmpB); // 互补输出使用相同的占空比，设置EPWM2比较器B的值
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, cmpC); // 设置EPWM3比较器A的值
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, cmpC); // 互补输出使用相同的占空比，设置EPWM3比较器B的值
}