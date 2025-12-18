#include "foc_encoder.h"
#include "driverlib.h"
#include "device.h"

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
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_32BIT_COUNTER |
                                       EQEP_CONFIG_QUADRATURE |
                                       EQEP_CONFIG_NO_SWAP));

    // 配置位置计数器
    EQEP_setPositionConfig(EQEP1_BASE, (EQEP_POSITION_RESET_IDX |
                                        EQEP_POSITION_RESET_ZERO));

    // 设置最大位置值
    EQEP_setMaxPosition(EQEP1_BASE, ENCODER_CPR - 1);

    // 配置单元定时器
    EQEP_setUnitTimerPeriod(EQEP1_BASE, (uint32_t)(SYSCLK_HZ * 0.001f)); // 1ms

    // 配置索引事件
    EQEP_setIndexConfig(EQEP1_BASE, EQEP_INDEX_FLAG_RISING);

    // 启用中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);

    // 注册中断处理函数
    Interrupt_register(INT_EQEP1, &eqep_index_isr);

    // 启用中断
    Interrupt_enable(INT_EQEP1);

    // 启用eQEP1模块
    EQEP_enableModule(EQEP1_BASE);
}

/**
 * @brief 编码器读取函数
 */
void Encoder_Read(void)
{
    // 读取当前编码器位置
    uint32_t current_pos = EQEP_getPosition(EQEP1_BASE);

    // 计算位置变化量（考虑计数器溢出）
    delta_pos = current_pos - prev_pos;
    prev_pos = current_pos;

    // 计算机械角度（弧度）
    motor_angle_mech_rad = (float)current_pos / (float)ENCODER_CPR * 2.0f * M_PI;

    // 计算电角度（弧度）
    motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;

    // 计算转速（RPM）
    if (tick_count >= 10) // 每10ms计算一次
    {
        float delta_angle_rad = (float)delta_pos / (float)ENCODER_CPR * 2.0f * M_PI;
        float delta_time_sec = 0.01f; // 10ms
        float speed_rad_per_sec = delta_angle_rad / delta_time_sec;
        motor_rpm = speed_rad_per_sec * 60.0f / (2.0f * M_PI);
        tick_count = 0;
    }
    tick_count++;
}

/**
 * @brief 编码器复位函数
 */
void Encoder_Reset(void)
{
    // 复位位置计数器
    EQEP_setPosition(EQEP1_BASE, 0);
    prev_pos = 0;
    delta_pos = 0;
    motor_angle_mech_rad = 0.0f;
    motor_angle_elec_rad = 0.0f;
    motor_rpm = 0.0f;
}