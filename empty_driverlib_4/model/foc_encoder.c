/**
 * @file foc_encoder.c
 * @brief 编码器模块实现
 * @details 该文件实现了编码器模块的初始化、读取和复位功能，
 *          用于获取电机转子位置和速度信息。
 */

#include "foc_encoder.h"   // 包含编码器模块头文件
#include "foc_core.h"      // 包含FOC核心模块头文件，提供系统参数和全局变量
#include "driverlib.h"     // 包含C2000系列芯片的驱动库头文件
#include "device.h"        // 包含设备配置头文件

/**
 * @brief eQEP索引中断服务函数声明
 * @details 处理编码器索引信号中断，用于编码器校准
 */
__interrupt void eqep_index_isr(void);

/*全局变量*/
static uint32_t prev_pos_latch = 0; // 上一次编码器位置锁存值
static uint32_t curr_pos_latch;     // 当前编码器位置锁存值
static int32_t delta_pos;           // 位置变化量

/**
 * @brief 编码器初始化函数
 * @details 配置QEP（正交编码器脉冲）模块的GPIO引脚、解码器、计数器等参数，
 *          为位置和速度测量做准备。
 */
void Encoder_Init(void)
{
    // 配置eQEP1的GPIO引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A); // 配置GPIO20为eQEP1A信号输入
    GPIO_setPinConfig(GPIO_21_EQEP1B); // 配置GPIO21为eQEP1B信号输入
    GPIO_setPinConfig(GPIO_23_EQEP1I); // 配置GPIO23为eQEP1I（索引）信号输入
    
    // 禁用eQEP1模块，准备进行配置
    EQEP_disableModule(EQEP1_BASE); // 禁用eQEP1模块，以便进行配置

    // 配置eQEP1的解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE |  // 配置为正交解码模式
                                       EQEP_CONFIG_NO_SWAP |    // 不交换A和B相
                                       EQEP_CONFIG_2X_RESOLUTION | // 2倍分辨率模式
                                       EQEP_CONFIG_IGATE_DISABLE)); // 禁用门控功能

    // 配置位置计数器，同时设置最大位置值
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_IDX, // 使用索引信号复位位置计数器
                                  ENCODER_LINES * QUADRATURE_MULT - 1); // 设置最大位置值

    // 配置单元定时器
    EQEP_loadUnitTimer(EQEP1_BASE, (uint32_t)(SYSCLK_HZ * 0.001f)); // 1ms，用于速度计算
    
    // 配置捕获单元，用于速度测量
    EQEP_setCaptureConfig(EQEP1_BASE, 
                         EQEP_CAPTURE_CLK_DIV_64,  // 捕获时钟预分频
                         EQEP_UNIT_POS_EVNT_DIV_16); // 单位位置事件预分频
    
    // 配置锁存模式
    EQEP_setLatchMode(EQEP1_BASE, 
                     EQEP_LATCH_UNIT_TIME_OUT |  // 单位超时事件时锁存
                     EQEP_LATCH_RISING_INDEX |   // 索引上升沿时锁存
                     EQEP_LATCH_RISING_STROBE);  // 选通上升沿时锁存
    
    // 启用看门狗计时器，防止编码器故障
    EQEP_enableWatchdog(EQEP1_BASE, 5000); // 5000 * 64 个系统时钟周期
    
    // 启用捕获单元
    EQEP_enableCapture(EQEP1_BASE);

    // 使能eQEP1模块
    EQEP_enableModule(EQEP1_BASE); // 启用eQEP1模块，开始工作

    // 启用中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH); // 启用索引事件锁存中断
    
    // 注册中断处理函数
    Interrupt_register(INT_EQEP1, eqep_index_isr); // 注册eQEP1中断处理函数
    Interrupt_enable(INT_EQEP1); // 启用eQEP1中断
    
    // 初始化位置锁存值
    prev_pos_latch = EQEP_getPosition(EQEP1_BASE);
}

/**
 * @brief 读取编码器数据
 * @details 读取编码器的位置值，计算电机的机械角度、电角度和速度。
 */
void Encoder_Read(void)
{
    // 读取当前位置
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE); // 读取eQEP1的位置计数器值
    
    // 如果已完成校准，计算电机角度和速度
    if (encoder_calibrated)
    {
        // 计算机械角度(弧度)
        motor_angle_mech_rad = ((float)encoder_raw_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI;
        // 机械角度计算公式：(当前位置 / 总分辨率) * 2π
        
        // 计算电角度(弧度)
        motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;
        // 电角度计算公式：机械角度 * 极对数
        
        // 角度归一化到0~2π范围
        while (motor_angle_elec_rad >= 2.0f * M_PI) motor_angle_elec_rad -= 2.0f * M_PI;
        while (motor_angle_elec_rad < 0.0f) motor_angle_elec_rad += 2.0f * M_PI;
        
        // 读取位置锁存值
        curr_pos_latch = EQEP_getPositionLatch(EQEP1_BASE);
        
        // 计算位置变化量（处理溢出）
        delta_pos = (int32_t)(curr_pos_latch - prev_pos_latch);
        
        // 计算速度（单位：rad/s）
        motor_speed_rad = (float)delta_pos / (float)(ENCODER_LINES * QUADRATURE_MULT) * 2.0f * M_PI * 1000.0f;
        // 速度计算公式：(位置变化量 / 总分辨率) * 2π * 1000ms/1s
        
        // 更新前一个位置
        prev_pos_latch = curr_pos_latch;
    }
}

/**
 * @brief 重置编码器
 * @details 重置编码器计数为0，通常用于初始化或校准。
 */
void Encoder_Reset(void)
{
    EQEP_setInitialPosition(EQEP1_BASE, 0U); // 设置eQEP1的初始位置为0
    EQEP_setPosition(EQEP1_BASE, 0U); // 设置eQEP1的当前位置为0
    encoder_raw_pos = 0; // 重置全局编码器位置变量为0
    prev_pos_latch = 0;  // 重置前一个位置锁存值
    motor_speed_rad = 0.0f; // 重置速度值
}