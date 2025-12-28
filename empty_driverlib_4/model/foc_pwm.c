/**
 * @file foc_pwm.c
 * @brief PWM（脉宽调制）模块实现
 * @details 该文件实现了PWM模块的初始化和占空比设置功能，
 *          用于生成控制电机的脉冲信号。
 */

#include "foc_pwm.h"
#include "foc_core.h"           // 包含FOC核心参数定义，包括TBPRD_VAL宏
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

    // 定义PWM信号参数
    EPWM_SignalParams pwmParams;
    
    // 设置系统时钟频率（假设为200MHz，根据实际硬件调整）
    pwmParams.sysClkInHz = 200000000.0f;
    
    // 设置PWM频率（根据实际需求调整）
    pwmParams.freqInHz = 10000.0f; // 10kHz
    
    // 设置占空比初始值（0.0-1.0）
    pwmParams.dutyValA = 0.5f; // 50%占空比
    pwmParams.dutyValB = 0.5f; // 50%占空比
    
    // 设置计数模式为上下计数
    pwmParams.tbCtrMode = EPWM_COUNTER_MODE_UP_DOWN;
    
    // 设置时钟分频
    pwmParams.epwmClkDiv = SYSCTL_EPWMCLK_DIV_1;
    pwmParams.tbClkDiv = EPWM_CLOCK_DIVIDER_1;
    pwmParams.tbHSClkDiv = EPWM_HSCLOCK_DIVIDER_1;
    
    // 设置B信号为反相（实现互补输出）
    pwmParams.invertSignalB = false;
    
    // 使用库函数配置EPWM1-3
    EPWM_configureSignal(EPWM1_BASE, &pwmParams);
    EPWM_configureSignal(EPWM2_BASE, &pwmParams);
    EPWM_configureSignal(EPWM3_BASE, &pwmParams);

    // 配置PWM动作限定器 - 确保正确的输出逻辑
    // EPWM1
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);
    
    // EPWM2
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);
    
    // EPWM3
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);

   

    // 配置SOC触发
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO); // 设置ADC触发源为EPWM1计数器为0时
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);           // 设置触发事件的预分频为1
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);                         // 启用ADC触发
    
    // 添加SOCB触发配置，与SOCA相同
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_B, EPWM_SOC_TBCTR_ZERO); // 设置ADC触发源为EPWM1计数器为0时
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_B, 1);           // 设置触发事件的预分频为1
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_B);                         // 启用ADC触发
    
    // 启动PWM
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    
    // 启动PWM时基计数器
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN);
}

/**
 * @brief 直接设置PWM比较值
 * @details 直接使用SVPWM计算的比较值设置PWM输出，避免重复计算，
 *          用于控制电机的三相电压输出。
 * @param cmpA1 A相比较器A的值
 * @param cmpB1 A相比较器B的值（互补输出）
 * @param cmpA2 B相比较器A的值
 * @param cmpB2 B相比较器B的值（互补输出）
 * @param cmpA3 C相比较器A的值
 * @param cmpB3 C相比较器B的值（互补输出）
 */
void EPWM_SetCompareValues(uint16_t cmpA1, uint16_t cmpB1, uint16_t cmpA2, uint16_t cmpB2, uint16_t cmpA3, uint16_t cmpB3)
{
    // 设置比较值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, cmpA1); // 设置EPWM1比较器A的值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, cmpB1); // 设置EPWM1比较器B的值

    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, cmpA2); // 设置EPWM2比较器A的值
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, cmpB2); // 设置EPWM2比较器B的值

    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, cmpA3); // 设置EPWM3比较器A的值
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, cmpB3); // 设置EPWM3比较器B的值

}
