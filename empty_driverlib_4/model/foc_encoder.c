// FOC (Field Oriented Control)编码器模块实现
#include "foc_encoder.h"

// 包含其他必要的头文件
#include "foc_core.h"   // 包含FOC核心控制模块头文件

// 静态变量定义
// 编码器位置变化量 - 用于计算电机转速
static int32_t encoder_pos_delta = 0;            // 编码器位置变化量
// 上次编码器位置 - 用于计算编码器位置变化量
static int32_t last_encoder_pos = 0;             // 上次编码器位置

// 编码器初始化函数 - 配置eQEP模块以读取编码器信号
void Encoder_Init(void)
{
    // 初始化eQEP1模块的GPIO引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A);           // 配置GPIO20为eQEP1A
    GPIO_setPinConfig(GPIO_21_EQEP1B);           // 配置GPIO21为eQEP1B
    GPIO_setPinConfig(GPIO_23_EQEP1I);           // 配置GPIO23为eQEP1I（索引信号）

    // 使能eQEP1模块的GPIO引脚
    GPIO_setMasterCore(GPIO_20, GPIO_CORE_CPU1); // 设置GPIO20的主核心为CPU1
    GPIO_setMasterCore(GPIO_21, GPIO_CORE_CPU1); // 设置GPIO21的主核心为CPU1
    GPIO_setMasterCore(GPIO_23, GPIO_CORE_CPU1); // 设置GPIO23的主核心为CPU1

    // 使能eQEP1模块的时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1); // 使能eQEP1模块的时钟

    // 配置eQEP1模块
    EQEP_setDecoderConfig(EQEP1_BASE,             // eQEP1模块的基地址
                         (EQEP_CONFIG_32BIT_COUNTER | // 32位计数器
                          EQEP_CONFIG_QUADRATURE | // 正交解码模式
                          EQEP_CONFIG_NO_SWAP |    // 不交换A/B相
                          EQEP_CONFIG_DIR_SEL_A)); // 使用A相作为方向选择

    // 配置eQEP1模块的位置计数器
    EQEP_setPositionCounter(EQEP1_BASE, 0x80000000); // 设置位置计数器初始值为0x80000000

    // 配置eQEP1模块的最大位置值
    EQEP_setMaximumPosition(EQEP1_BASE, 0xFFFFFFFF); // 设置最大位置值为0xFFFFFFFF

    // 配置eQEP1模块的索引信号
    EQEP_setIndexConfig(EQEP1_BASE,              // eQEP1模块的基地址
                       (EQEP_CONFIG_INDEX_RESET | // 索引信号复位计数器
                        EQEP_CONFIG_INDEX_ENABLE)); // 使能索引信号

    // 配置eQEP1模块的定时器
    EQEP_setPeriodLatch(EQEP1_BASE, SYSCLK_HZ / 1000); // 设置周期锁存值为1ms

    // 配置eQEP1模块的中断
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_ALL); // 清除所有中断状态
    EQEP_enableInterrupt(EQEP1_BASE,               // eQEP1模块的基地址
                        (EQEP_INT_INDEX |          // 索引中断
                         EQEP_INT_UNIT_TIME_OUT)); // 单位时间超时中断

    // 使能eQEP1模块
    EQEP_enableModule(EQEP1_BASE);               // 使能eQEP1模块
}

// 编码器读取函数 - 读取编码器位置并计算电机角度和转速
void Encoder_Read(void)
{
    // 读取编码器原始位置
    encoder_raw_pos = EQEP_getPositionCounter(EQEP1_BASE); // 读取eQEP1模块的位置计数器值

    // 计算编码器位置变化量
    encoder_pos_delta = encoder_raw_pos - last_encoder_pos; // 计算位置变化量

    // 更新上次编码器位置
    last_encoder_pos = encoder_raw_pos;                   // 保存当前位置为上次位置

    // 计算电机机械角度（弧度）
    motor_angle_mech_rad = (float)encoder_raw_pos / ENCODER_CPR * 2.0f * M_PI; // 机械角度 = (编码器位置 / 每转计数) * 2π

    // 计算电机电角度（弧度）
    motor_angle_elec_rad = motor_angle_mech_rad * MOTOR_POLE_PAIRS; // 电角度 = 机械角度 * 极对数

    // 确保角度在0到2π之间
    while (motor_angle_mech_rad >= 2.0f * M_PI)
        motor_angle_mech_rad -= 2.0f * M_PI;                // 如果机械角度大于等于2π，减去2π
    while (motor_angle_mech_rad < 0.0f)
        motor_angle_mech_rad += 2.0f * M_PI;                // 如果机械角度小于0，加上2π

    while (motor_angle_elec_rad >= 2.0f * M_PI)
        motor_angle_elec_rad -= 2.0f * M_PI;                // 如果电角度大于等于2π，减去2π
    while (motor_angle_elec_rad < 0.0f)
        motor_angle_elec_rad += 2.0f * M_PI;                // 如果电角度小于0，加上2π

    // 计算电机转速（RPM）
    // 转速 = (位置变化量 / 每转计数) * (控制频率 / 60)
    motor_rpm = (float)encoder_pos_delta / ENCODER_CPR * CONTROL_HZ * 60.0f;

    // 计算电机转速（rad/s）
    // 转速 = (位置变化量 / 每转计数) * 2π * 控制频率
    motor_speed_rad = (float)encoder_pos_delta / ENCODER_CPR * 2.0f * M_PI * CONTROL_HZ;
}

// 编码器复位函数 - 复位编码器位置计数器
void Encoder_Reset(void)
{
    // 复位编码器位置计数器
    EQEP_setPositionCounter(EQEP1_BASE, 0x80000000); // 重置位置计数器为0x80000000
}

// eQEP1索引中断服务函数 - 处理编码器索引信号
__interrupt void EQEP1_ISR(void)
{
    // 检查索引中断标志
    if (EQEP_getInterruptStatus(EQEP1_BASE) & EQEP_INT_INDEX)
    {
        // 设置索引信号检测标志
        index_detected = true;                             // 索引信号检测标志置为true
    }

    // 清除eQEP1模块的所有中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_ALL);   // 清除所有中断状态

    // 清除CPU的中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP7);         // 清除ACK组7的中断标志
}