#include "foc_encoder.h"
#include "foc_core.h"

// 添加中断服务函数声明
__interrupt void eqep_index_isr(void);

// 全局变量
static uint32_t prev_pos = 0; // 上一次编码器位置
static uint32_t delta_pos = 0; // 位置变化量
static uint32_t tick_count = 0; // 时间计数

/**
 * @brief 编码器初始化函数
 */
void Encoder_Init(void)
{
    // 配置eQEP1的GPIO引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A);
    GPIO_setPinConfig(GPIO_21_EQEP1B);
    GPIO_setPinConfig(GPIO_23_EQEP1I);

    // 禁用eQEP1模块
    EQEP_disableModule(EQEP1_BASE);

    // 配置eQEP1的解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE |
                                       EQEP_CONFIG_NO_SWAP));

    // 配置位置计数器
    EQEP_setPositionConfig(EQEP1_BASE, (EQEP_POSITION_RESET_IDX |
                                        EQEP_POSITION_RESET_MAX_POS));

    // 设置最大位置值
    EQEP_setMaxPosition(EQEP1_BASE, ENCODER_CPR - 1);

    // 配置单元定时器
    EQEP_setUnitTimerPeriod(EQEP1_BASE, (uint32_t)(SYSCLK_HZ * 0.001f)); // 1ms

    // 启用中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);

    // 注册中断处理函数
}