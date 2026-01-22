// FOC (Field Oriented Control)编码器模块源文件
#include "foc_encoder.h"

// 全局变量定义
// 注意：这里只定义foc_encoder.c特有的变量，其他变量已在foc_core.h中声明
int32_t curr_pos_latch = 0;
int32_t last_pos_latch = 0;
int32_t pos_diff = 0;
int32_t encoder_continuous_pos = 0; // 连续编码器位置（无重置）
float encoder_angle_elec_continuous = 0.0f; // 连续电气角度（弧度）
static int32_t last_encoder_raw_pos = 0; // 上一次原始编码器位置

// 初始化编码器
void Encoder_init(void)
{
    // 禁用eQEP模块进行配置
    EQEP_disableModule(EQEP1_BASE);
    
    // 配置eQEP引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A);                  // 配置GPIO10为EQEP1A输入
    GPIO_setPinConfig(GPIO_21_EQEP1B);                  // 配置GPIO11为EQEP1B输入
    GPIO_setPinConfig(GPIO_23_EQEP1I);                  // 配置GPIO13为EQEP1I输入
    GPIO_setPadConfig(20, GPIO_PIN_TYPE_PULLUP);        // 启用内部上拉电阻
    GPIO_setPadConfig(21, GPIO_PIN_TYPE_PULLUP);        // 启用内部上拉电阻
    GPIO_setPadConfig(23, GPIO_PIN_TYPE_PULLUP);        // 启用内部上拉电阻
    GPIO_setDirectionMode(20, GPIO_DIR_MODE_IN);        // 设置GPIO10为输入模式
    GPIO_setDirectionMode(21, GPIO_DIR_MODE_IN);        // 设置GPIO11为输入模式
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_IN);        // 设置GPIO13为输入模式

    // 配置eQEP解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP | EQEP_CONFIG_IGATE_DISABLE)); // 设置解码器配置：正交模式、不交换、禁用门控
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, ENCODER_CPR - 1); // 设置位置计数器配置：最大位置时复位，最大位置值为编码器每转计数减1

    // 配置单位定时器 (1ms周期，用于速度计算)
    uint32_t unit_period = (uint32_t)((float)SYSCLK_HZ / 1000.0f) - 1; // 计算单元定时器周期值：1ms锁存
    EQEP_loadUnitTimer(EQEP1_BASE, unit_period);        // 加载单元定时器
    EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT); // 设置锁存模式：单元定时器超时时锁存

    // 设置位置初始化模式（可选，根据需要启用）
    EQEP_setPositionInitMode(EQEP1_BASE, EQEP_INIT_RISING_INDEX); // 设置位置初始化模式：上升沿索引信号初始化

    // 使能eQEP中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH); // 使能索引事件锁存中断

    // 使能eQEP模块
    EQEP_enableModule(EQEP1_BASE);                      // 使能eQEP1模块
}

// 更新编码器数据
void Encoder_update(void)
{
    // 移除局部变量声明，直接使用全局变量
    // int32_t encoder_raw_pos;
    
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE); // 读取eQEP1的位置计数器值
    
    // 计算连续编码器位置（处理溢出）
    int32_t raw_pos_diff = encoder_raw_pos - last_encoder_raw_pos;
    if (raw_pos_diff > (int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
    {
        raw_pos_diff -= (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
    }
    else if (raw_pos_diff < -(int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
    {
        raw_pos_diff += (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
    }
    encoder_continuous_pos += raw_pos_diff;
    
    // 计算连续电气角度
    encoder_angle_elec_continuous = ((float)encoder_continuous_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI_F * (float)MOTOR_POLE_PAIRS;
    
    // 计算机械角度(弧度)
    motor_angle_mech_rad = ((float)encoder_raw_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI_F;
    // 机械角度计算公式：(当前位置 / 总分辨率) * 2π
    
    // 计算电角度(弧度)
    motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;
    // 电角度计算公式：机械角度 * 极对数
    
    // 角度归一化到0~2π范围
    while (motor_angle_elec_rad >= 2.0f * M_PI_F) motor_angle_elec_rad -= 2.0f * M_PI_F;
    while (motor_angle_elec_rad < 0.0f) motor_angle_elec_rad += 2.0f * M_PI_F;
    
    // 读取位置锁存值
    curr_pos_latch = EQEP_getPositionLatch(EQEP1_BASE);
    
    // 计算位置变化量（处理溢出）
    pos_diff = curr_pos_latch - last_pos_latch;
    if (pos_diff > (int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
    {
        pos_diff -= (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
    }
    else if (pos_diff < -(int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
    {
        pos_diff += (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
    }
    
    // 计算电机速度(弧度/秒)
    motor_speed_rad = ((float)pos_diff / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI_F / DT;
    // 速度计算公式：(位置变化 / 总分辨率) * 2π / 采样时间
    
    // 计算电机转速(转/分钟)
    motor_rpm = motor_speed_rad * 60.0f / (2.0f * M_PI_F);
    
    // 更新上一次位置锁存值
    last_pos_latch = curr_pos_latch;
    
    // 更新上一次原始编码器位置
    last_encoder_raw_pos = encoder_raw_pos;
}

// 获取电机机械角度(弧度)
float Encoder_getMechAngle(void)
{
    return motor_angle_mech_rad;
}

// 获取电机电角度(弧度)
float Encoder_getElecAngle(void)
{
    return motor_angle_elec_rad;
}

// 获取电机速度(弧度/秒)
float Encoder_getSpeedRad(void)
{
    return motor_speed_rad;
}

// 获取电机转速(转/分钟)
float Encoder_getSpeedRPM(void)
{
    return motor_rpm;
}
