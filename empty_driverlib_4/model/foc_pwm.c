// FOC (Field Oriented Control) PWM模块实现
#include "foc_pwm.h"

// 包含其他必要的头文件
#include "foc_core.h"   // 包含FOC核心控制模块头文件

// PWM初始化函数 - 配置EPWM模块以输出PWM信号
void EPWM_Init(void)
{
    // 初始化EPWM1的GPIO引脚
    GPIO_setPinConfig(GPIO_0_EPWM1A);            // 配置GPIO0为EPWM1A
    GPIO_setPinConfig(GPIO_1_EPWM1B);            // 配置GPIO1为EPWM1B

    // 初始化EPWM2的GPIO引脚
    GPIO_setPinConfig(GPIO_2_EPWM2A);            // 配置GPIO2为EPWM2A
    GPIO_setPinConfig(GPIO_3_EPWM2B);            // 配置GPIO3为EPWM2B

    // 初始化EPWM3的GPIO引脚
    GPIO_setPinConfig(GPIO_4_EPWM3A);            // 配置GPIO4为EPWM3A
    GPIO_setPinConfig(GPIO_5_EPWM3B);            // 配置GPIO5为EPWM3B

    // 使能EPWM1-3模块的GPIO引脚
    GPIO_setMasterCore(GPIO_0, GPIO_CORE_CPU1);  // 设置GPIO0的主核心为CPU1
    GPIO_setMasterCore(GPIO_1, GPIO_CORE_CPU1);  // 设置GPIO1的主核心为CPU1
    GPIO_setMasterCore(GPIO_2, GPIO_CORE_CPU1);  // 设置GPIO2的主核心为CPU1
    GPIO_setMasterCore(GPIO_3, GPIO_CORE_CPU1);  // 设置GPIO3的主核心为CPU1
    GPIO_setMasterCore(GPIO_4, GPIO_CORE_CPU1);  // 设置GPIO4的主核心为CPU1
    GPIO_setMasterCore(GPIO_5, GPIO_CORE_CPU1);  // 设置GPIO5的主核心为CPU1

    // 使能EPWM1-3模块的时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC); // 使能时间基准时钟同步
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);     // 使能EPWM1模块的时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);     // 使能EPWM2模块的时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);     // 使能EPWM3模块的时钟

    // 配置EPWM1模块
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD_VAL);       // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);              // 设置时基计数器初始值
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 上下计数模式

    // 配置EPWM1的死区
    EPWM_setDeadBandCounterClock(EPWM1_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 全周期时钟
    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS); // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数

    // 配置EPWM1的比较器
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, 0); // 初始值为0
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, 0); // 初始值为0

    // 配置EPWM1的动作限定器
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_CAU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器A上计数时输出低电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_CBU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器B上计数时输出低电平

    // 配置EPWM2模块（与EPWM1类似）
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD_VAL);       // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);              // 设置时基计数器初始值
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 上下计数模式

    // 配置EPWM2的死区
    EPWM_setDeadBandCounterClock(EPWM2_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 全周期时钟
    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS); // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数

    // 配置EPWM2的比较器
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, 0); // 初始值为0
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, 0); // 初始值为0

    // 配置EPWM2的动作限定器
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_CAU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器A上计数时输出低电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_CBU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器B上计数时输出低电平

    // 配置EPWM3模块（与EPWM1类似）
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD_VAL);       // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);              // 设置时基计数器初始值
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 上下计数模式

    // 配置EPWM3的死区
    EPWM_setDeadBandCounterClock(EPWM3_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 全周期时钟
    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS); // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数

    // 配置EPWM3的比较器
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, 0); // 初始值为0
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, 0); // 初始值为0

    // 配置EPWM3的动作限定器
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_ACTION_CAU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器A上计数时输出低电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_ZERO, EPWM_AQ_OUTPUT_HIGH); // 零计数时输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_ACTION_CBU, EPWM_AQ_OUTPUT_LOW);  // 计数器等于比较器B上计数时输出低电平

    // 使能EPWM1-3模块
    EPWM_enableModule(EPWM1_BASE);                     // 使能EPWM1模块
    EPWM_enableModule(EPWM2_BASE);                     // 使能EPWM2模块
    EPWM_enableModule(EPWM3_BASE);                     // 使能EPWM3模块
}

// PWM占空比设置函数 - 设置EPWM模块的占空比
void EPWM_SetDuty(uint16_t epwm_base, uint16_t duty)
{
    // 设置EPWM模块的比较器值
    EPWM_setCounterCompareValue(epwm_base, EPWM_COUNTER_COMPARE_A, duty); // 占空比
    EPWM_setCounterCompareValue(epwm_base, EPWM_COUNTER_COMPARE_B, duty); // 占空比
}