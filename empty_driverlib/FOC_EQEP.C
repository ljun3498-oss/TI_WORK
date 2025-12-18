
#include "driverlib.h"              // 包含TI DriverLib库头文件
#include "device.h"                 // 包含设备特定的头文件
#include <stdint.h>                 // 包含标准整数类型定义
#include <stdbool.h>                // 包含布尔类型定义

//==================================================
// 编码器参数
//==================================================
#define ENCODER_LINES       2500U               // 编码器每转线数
#define COUNTS_PER_REV     (ENCODER_LINES * 4U) // 每转计数 = 线数 * 4 (四倍频)

#define SYSCLK_FREQ        200000000UL          // 系统时钟频率 200 MHz
#define UNIT_TIMER_US      1000U                // 单元定时器周期 1 ms

//==================================================
// 电机状态结构体
//==================================================
typedef struct
{
    int32_t  position_cnt;        // 单圈位置计数 (0 到 COUNTS_PER_REV-1)
    int64_t  absolute_pos_cnt;    // 绝对位置计数 (包含圈数的总计数)
    int32_t  last_pos_cnt;        // 上次位置计数 (用于计算增量)
    int32_t  delta_pos_cnt;       // 位置增量计数 (两次采样间的位置变化)

    int32_t  revolution_cnt;      // 旋转圈数统计 (正转增加，反转减少)
    int16_t  direction_flag;      // 方向标志 (1表示正转，-1表示反转)
    float    speed_rpm;           // 转速 (单位: RPM，转每分钟)

} motor_state_t;

static volatile motor_state_t motor = {0};  // 定义并初始化电机状态结构体变量

//==================================================
// 函数声明
//==================================================
static void initGPIO(void);             // GPIO初始化函数声明
static void initEQEP(void);             // eQEP模块初始化函数声明
static void initInterrupts(void);       // 中断初始化函数声明
static void updateMotorState(void);     // 更新电机状态函数声明
static void calculateSpeed(void);       // 计算转速函数声明

__interrupt void eqepISR(void);         // eQEP中断服务程序声明

//==================================================
// 主函数
//==================================================
void main(void)
{
    Device_init();              // 初始化设备时钟和基本设置
    Device_initGPIO();          // 初始化GPIO设置

    Interrupt_disableMaster();  // 禁用全局中断，防止初始化过程中被打断

    initGPIO();                 // 初始化GPIO引脚配置
    initInterrupts();           // 初始化中断配置
    initEQEP();                 // 初始化eQEP模块

    Interrupt_enableMaster();   // 启用全局中断

    while(1)
    {
        // 主循环中可使用以下变量获取电机状态信息：
        // motor.position_cnt     - 单圈位置
        // motor.absolute_pos_cnt - 绝对位置
        // motor.speed_rpm        - 转速(RPM)
        // motor.direction_flag   - 旋转方向
    }
}

//==================================================
// GPIO配置
//==================================================
static void initGPIO(void)
{
    // 配置EQEP1A引脚(GPIO20)
    GPIO_setPadConfig(20, GPIO_PIN_TYPE_PULLUP);     // 设置上拉电阻
    GPIO_setPinConfig(GPIO_20_EQEP1A);               // 配置为EQEP1A功能
    GPIO_setDirectionMode(20, GPIO_DIR_MODE_IN);     // 设置为输入模式

    // 配置EQEP1B引脚(GPIO21)
    GPIO_setPadConfig(21, GPIO_PIN_TYPE_PULLUP);     // 设置上拉电阻
    GPIO_setPinConfig(GPIO_21_EQEP1B);               // 配置为EQEP1B功能
    GPIO_setDirectionMode(21, GPIO_DIR_MODE_IN);     // 设置为输入模式

    // 配置EQEP1I引脚(GPIO23) - 索引脉冲
    GPIO_setPadConfig(23, GPIO_PIN_TYPE_PULLUP);     // 设置上拉电阻
    GPIO_setPinConfig(GPIO_23_EQEP1I);               // 配置为EQEP1I功能
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_IN);     // 设置为输入模式
}

//==================================================
// 中断配置
//==================================================
static void initInterrupts(void)
{
    Interrupt_initModule();                     // 初始化中断模块
    Interrupt_initVectorTable();                // 初始化中断向量表

    Interrupt_register(INT_EQEP1, &eqepISR);    // 注册eQEP1中断服务程序
    Interrupt_enable(INT_EQEP1);                // 使能eQEP1中断
}

//==================================================
// eQEP配置
//==================================================
static void initEQEP(void)
{
    EQEP_disableModule(EQEP1_BASE);     // 禁用eQEP模块以便配置

    // 配置解码器为四倍频正交解码模式
    EQEP_setDecoderConfig(EQEP1_BASE,
        EQEP_CONFIG_QUADRATURE |                // 正交解码模式
        EQEP_CONFIG_1X_RESOLUTION);             // 1倍分辨率(实际会四倍频)

    // 配置位置计数器
    EQEP_setPositionCounterConfig(EQEP1_BASE,
        EQEP_POSITION_RESET_MAX_POS,            // 达到最大位置时重置
        0xFFFFFFFFUL);                          // 最大位置值

    // 设置输入极性(全部非反相)
    EQEP_setInputPolarity(EQEP1_BASE, false, false, false, false);

    // 配置锁存模式为索引脉冲上升沿锁存
    EQEP_setLatchMode(EQEP1_BASE,
        EQEP_LATCH_RISING_INDEX |               // 索引脉冲上升沿锁存
        EQEP_LATCH_CNT_READ_BY_CPU);            // CPU读取时锁存

    // 配置单元定时器周期 = 1 ms
    uint32_t unit_period =
        (SYSCLK_FREQ / 2U) * UNIT_TIMER_US / 1000000U;  // 计算定时器周期值

    EQEP_enableUnitTimer(EQEP1_BASE, unit_period);      // 使能单元定时器

    // 使能需要的中断
    EQEP_enableInterrupt(EQEP1_BASE,
        EQEP_INT_UNIT_TIME_OUT |                        // 单元定时器超时中断
        EQEP_INT_INDEX_EVNT_LATCH);                     // 索引事件锁存中断

    EQEP_setPosition(EQEP1_BASE, 0);                    // 初始化位置计数器为0

    // 初始化电机状态变量
    motor.last_pos_cnt     = 0;                         // 上次位置计数清零
    motor.absolute_pos_cnt = 0;                         // 绝对位置计数清零
    motor.revolution_cnt   = 0;                         // 旋转圈数清零

    EQEP_enableModule(EQEP1_BASE);                      // 使能eQEP模块
}

//==================================================
// eQEP中断服务程序
//==================================================
__interrupt void eqepISR(void)
{
    uint32_t int_status = EQEP_getInterruptStatus(EQEP1_BASE);  // 获取中断状态

    // 处理索引脉冲中断
    if(int_status & EQEP_INT_INDEX_EVNT_LATCH)
    {
        // 根据方向标志更新圈数计数
        if(EQEP_getStatus(EQEP1_BASE) & EQEP_STS_DIR_FLAG)
            motor.revolution_cnt++;         // 正转，圈数增加
        else
            motor.revolution_cnt--;         // 反转，圈数减少

        // 清除索引事件中断标志
        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_INDEX_EVNT_LATCH);
    }

    // 处理定时器中断
    if(int_status & EQEP_INT_UNIT_TIME_OUT)
    {
        // 清除定时器超时中断标志
        EQEP_clearInterruptStatus(EQEP1_BASE,
                                  EQEP_INT_UNIT_TIME_OUT);

        updateMotorState();                 // 更新电机状态信息
    }

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);      // 清除中断确认组
}

//==================================================
// 更新电机状态
//==================================================
static void updateMotorState(void)
{
    int32_t pos_cnt = (int32_t)EQEP_getPosition(EQEP1_BASE);    // 读取当前位置计数

    // 计算位置增量
    motor.delta_pos_cnt = pos_cnt - motor.last_pos_cnt;
    motor.last_pos_cnt  = pos_cnt;                              // 更新上次位置

    // 计算单圈位置 (0 到 COUNTS_PER_REV-1)
    motor.position_cnt = pos_cnt % COUNTS_PER_REV;
    if(motor.position_cnt < 0)
        motor.position_cnt += COUNTS_PER_REV;                   // 处理负数情况

    // 获取旋转方向标志
    motor.direction_flag =
        (EQEP_getStatus(EQEP1_BASE) & EQEP_STS_DIR_FLAG) ? 1 : -1;

    // 计算绝对位置 = 圈数 * 每圈计数 + 单圈位置
    motor.absolute_pos_cnt =
        ((int64_t)motor.revolution_cnt * COUNTS_PER_REV) +
        motor.position_cnt;

    calculateSpeed();                                           // 计算转速
}

//==================================================
// 计算转速
//==================================================
static void calculateSpeed(void)
{
    // 定义采样时间 = 1 ms = 0.001秒
    const float sample_time_s = 0.001f;

    // 转速计算公式:
    // 转速(RPM) = (位置增量 / 每转计数) * (60秒 / 采样时间)
    motor.speed_rpm =
        ((float)motor.delta_pos_cnt / (float)COUNTS_PER_REV) *
        (60.0f / sample_time_s);
}
