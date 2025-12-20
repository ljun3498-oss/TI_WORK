#include "foc_encoder.h"
#include "foc_core.h"
#include "driverlib.h"
#include "device.h"

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
                                       EQEP_CONFIG_NO_SWAP |
                                       EQEP_CONFIG_2X_RESOLUTION |
                                       EQEP_CONFIG_IGATE_DISABLE));

    // 配置位置计数器，同时设置最大位置值
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_IDX,
                                  ENCODER_LINES * QUADRATURE_MULT - 1);

    // 配置单元定时器
    EQEP_loadUnitTimer(EQEP1_BASE, (uint32_t)(SYSCLK_HZ * 0.001f)); // 1ms

    // 使能eQEP1模块
    EQEP_enableModule(EQEP1_BASE);

    // 启用中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    
    // 注册中断处理函数
    Interrupt_register(INT_EQEP1, eqep_index_isr);
    Interrupt_enable(INT_EQEP1);
}

/**
 * @brief 读取编码器数据
 */
void Encoder_Read(void)
{
    // 读取当前位置
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE);
    
    // 如果已完成校准，计算电机角度
    if (encoder_calibrated)
    {
        // 计算机械角度(弧度)
        motor_angle_mech_rad = ((float)encoder_raw_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI;
        
        // 计算电角度(弧度)
        motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;
        
        // 角度归一化到0~2π范围
        while (motor_angle_elec_rad >= 2.0f * M_PI) motor_angle_elec_rad -= 2.0f * M_PI;
        while (motor_angle_elec_rad < 0.0f) motor_angle_elec_rad += 2.0f * M_PI;
    }
}

/**
 * @brief 重置编码器
 */
void Encoder_Reset(void)
{
    EQEP_setInitialPosition(EQEP1_BASE, 0U);
    EQEP_setPosition(EQEP1_BASE, 0U);
    encoder_raw_pos = 0;
}
