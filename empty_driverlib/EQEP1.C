// 文件: eqep_position_sensing.c
// 平台: TMS320F2837xD
// 功能: 使用eQEP模块读取电机编码器位置并转换为角度

#include "driverlib.h"
#include "device.h"
#include <math.h>

// ========================
// 系统配置
// ========================
#define CPU_FRQ_HZ      200000000   // CPU频率 (200 MHz)
#define PWM_FRQ_HZ      20000       // PWM频率 (20 kHz)
#define SAMPLING_TIME   (1.0f/20000.0f)  // 采样时间 50μs

// 编码器参数
#define ENCODER_LINES           1000    // 编码器线数 (A/B相每转脉冲数)
#define ENCODER_COUNTS_PER_REV  (ENCODER_LINES * 4)  // 4倍频后每转计数
#define MOTOR_POLE_PAIRS        4       // 电机极对数

// eQEP配置
#define EQEP_MODULE             EQEP1_BASE
#define EQEP_UNIT_TIMER_DIVIDER 100     // 单元定时器分频

// GPIO定义
#define LED1_PIN    25      // 诊断LED (GPIO25)
#define LED2_PIN    31      // GPIO31

// ========================
// 全局变量
// ========================
volatile float motor_angle_electrical = 0.0f;    // 电气角度 (0-360度)
volatile float motor_angle_mechanical = 0.0f;    // 机械角度 (0-360度)
volatile float motor_speed_rpm = 0.0f;           // 电机速度 (RPM)
volatile uint32_t encoder_raw_position = 0;      // 原始编码器位置
volatile int32_t encoder_revolutions = 0;        // 编码器转数
volatile bool encoder_calibrated = false;        // 编码器是否校准
volatile bool index_detected = false;            // 索引信号是否检测到

// 用于位置差分
static float last_angle = 0.0f;

// ========================
// 函数原型
// ========================
void system_init(void);
void gpio_init(void);
void eqep_init(uint32_t base);
void eqep_calibrate(void);  // 修改: 移除参数
float eqep_get_electrical_angle(uint32_t base);
float eqep_get_mechanical_angle(uint32_t base);
float eqep_calculate_speed(uint32_t base);
void eqep_index_isr(void);
void motor_control_loop(void);
void update_diagnostics(void);

// ========================
// 主函数
// ========================
void main(void)
{
    // 1. 系统初始化
    system_init();
    
    // 2. GPIO初始化
    gpio_init();
    
    // 3. eQEP初始化
    eqep_init(EQEP_MODULE);
    
    // 4. 编码器校准 (寻找索引信号)
    eqep_calibrate();  // 修改: 移除参数
    
    // 5. 启用全局中断
    EINT;
    
    // 6. 主控制循环
    while(1)
    {
        motor_control_loop();
        update_diagnostics();
        

    }
}

// ========================
// 系统初始化
// ========================
void system_init(void)
{
    // 禁用看门狗
    SysCtl_disableWatchdog();
    
    // 初始化设备时钟
    Device_init();
    
    // 设置PLL, 分频器等
    
    // 初始化GPIO (在gpio_init()中配置具体引脚)
    Device_initGPIO();
    
    // 清除所有中断标志并初始化向量表
    Interrupt_initModule();
    Interrupt_initVectorTable();
    
    // 配置CPU时钟
    
    // 配置系统频率
    SysCtl_setClock(DEVICE_SYSCLK_FREQ);
    
    // 启用eQEP1外设时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);  // 修改: 更正宏名
}

// ========================
// GPIO初始化
// ========================
void gpio_init(void)
{
    // 配置eQEP1引脚
    // QEPA -> GPIO20
    // QEPB -> GPIO21
    // QEPI -> GPIO23
    GPIO_setPinConfig(GPIO_10_EQEP1A  );  // 修复: 更正宏名拼写 GPI0 -> GPIO
    GPIO_setPinConfig( GPIO_11_EQEP1B);  // 修复: 更正宏名拼写 GPI0 -> GPIO
    GPIO_setPinConfig( GPIO_13_EQEP1I );  // 修复: 更正宏名拼写 GPI0 -> GPIO, INDEx -> INDEX
    
    // 配置诊断LED引脚
    GPIO_setPinConfig(GPIO_25_GPIO25);  // 修改: 更正宏名
    GPIO_setPinConfig(GPIO_31_GPIO31);  // 修改: 更正宏名
    GPIO_setDirectionMode(LED1_PIN, GPIO_DIR_MODE_OUT);
    GPIO_setDirectionMode(LED2_PIN, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(LED1_PIN, GPIO_PIN_TYPE_STD);
    GPIO_setPadConfig(LED2_PIN, GPIO_PIN_TYPE_STD);
    GPIO_writePin(LED1_PIN, 0);
    GPIO_writePin(LED2_PIN, 0);
    
    // 配置PWM引脚 (示例)
    // GPIO_setPinConfig(DEVICE_GPIO_PIN_EPWM1A);
    // GPIO_setPadConfig(DEVICE_GPIO_PIN_EPWM1A, GPIO_PIN_TYPE_STD);
}

// ========================
// eQEP模块初始化
// ========================
void eqep_init(uint32_t base)  // base: eQEP模块基地址
{
    // 1. 配置eQEP操作模式
    //
    // QEPCTL寄存器关键位:
    // QPEN(15): 0=禁用计数器, 1=启用计数器
    // IEL(13-12): 索引事件锁存模式
    // SEL(11-10): 频闪事件锁存模式
    // SWI(9): 软件初始化位置计数器
    // IEI(8): 索引事件初始化使能
    // SEI(7): 频闪事件初始化使能
    // PCRM(5-4): 位置计数器重置模式
    // QCLM(3): 0=CPU读取时锁存, 1=单元超时时锁存
    // QPDIR(2): 计数方向 (只读)
    // QAP/BPOL(1-0): A/B相信号极性
    //
    EQEP_setDecoderConfig(base, 
                  (EQEP_CONFIG_QUADRATURE |          // 修改: 正交模式宏名
                   EQEP_CONFIG_NO_SWAP |             // 不交换A/B通道
                   EQEP_CONFIG_IGATE_DISABLE));      // 禁用索引门控
    
    // 2. 配置位置计数器
    // QPOSCTL寄存器:
    // PCSHDW(15): 1=启用阴影寄存器
    // PCLOAD(14): 0=立即加载, 1=在QPOSCNT=0时加载
    // PCPOL(13): 0=高电平有效, 1=低电平有效
    // PCE(12): 0=禁用比较, 1=启用比较
    //
    EQEP_setPositionCounterConfig(base, 
                                 EQEP_POSITION_RESET_MAX_POS,  // 修改: 使用正确的宏
                                 ENCODER_COUNTS_PER_REV); // 最大计数值
    
    // 3. 配置单元定时器 (用于速度计算)
    // 根据系统时钟和分频计算周期
    uint32_t sysclk_freq = DEVICE_SYSCLK_FREQ;
    uint32_t unit_timer_period = (sysclk_freq / EQEP_UNIT_TIMER_DIVIDER) - 1;
    EQEP_loadUnitTimer(base, unit_timer_period);  // 修改: 使用正确的函数名
    
    // 4. 配置索引事件
    // QEPSTS寄存器中的PCEF(位0): 位置计数器错误标志
    // 索引配置:
    // - 索引时重置位置
    // - 索引门控禁用
    // - 索引脉冲上升沿有效
    // 注意：EQEP_setIndexConfig不是标准API，需要手动设置
    // 这里通过初始化模式设置索引重置
    EQEP_setPositionInitMode(base, EQEP_INIT_RISING_INDEX);  // 修改: 使用正确的函数和参数
    
    // 5. 配置索引中断
    EQEP_enableInterrupt(base, EQEP_INT_INDEX_EVNT_LATCH);  // 修改: 中断宏名
    Interrupt_register(INT_EQEP1, eqep_index_isr);
    Interrupt_enable(INT_EQEP1);
    
    // 6. 配置捕获锁存模式
    // QCLM=1: 在单元超时时锁存位置 (推荐用于速度计算)
    EQEP_setLatchMode(base, EQEP_LATCH_UNIT_TIME_OUT);  // 修改: 宏名
    
    // 7. 启用看门狗 (检测编码器信号丢失)
    EQEP_enableWatchdog(base, 0xFFF); // 12位看门狗周期
    
    // 8. 初始化位置
    EQEP_setPosition(base, 0);
    
    // 9. 启用eQEP模块
    EQEP_enableModule(base);
}

// ========================
// 编码器校准 (寻找索引信号)
// ========================
void eqep_calibrate(void)  // 修改: 移除参数
{
    uint32_t timeout = 0;
    uint32_t max_timeout = 5000000; // 2.5秒超时 (200MHz/2)
    
    // 1. 闪烁LED表示正在校准
    GPIO_togglePin(LED1_PIN);
    
    // 2. 慢速旋转电机寻找索引
    // 注意: 在实际应用中，此处应该是低速旋转电机的代码
    // 为简化，假设电机已经在低速旋转或手动旋转
    
    // 3. 等待索引信号
    while(!index_detected)
    {
        timeout++;
        if(timeout > max_timeout)
        {
            // 超时处理 - 没有检测到索引信号
            GPIO_writePin(LED1_PIN, 1); // LED常亮表示错误
            GPIO_writePin(LED2_PIN, 1);
            // 可选择进入安全模式或使用相对位置
            encoder_calibrated = false;
            return;
        }
        
        // 短暂延迟
        __asm(" RPT #100 || NOP");
    }
    
    // 4. 索引信号已检测，位置已重置
    encoder_calibrated = true;
    
    // 5. LED指示校准成功
    GPIO_writePin(LED1_PIN, 0); // 关闭LED1
    GPIO_togglePin(LED2_PIN);   // 闪烁LED2表示成功
}

// ========================
// eQEP索引中断服务例程
// ========================
__interrupt void eqep_index_isr(void)
{
    // 1. 检查索引事件标志
    if(EQEP_getInterruptStatus(EQEP_MODULE) & EQEP_INT_INDEX_EVNT_LATCH)  // 修改: 宏名
    {
        // 2. 标记索引已检测
        index_detected = true;
        
        // 3. 重置位置计数器 (如果配置为自动重置，则不需要)
        EQEP_setPosition(EQEP_MODULE, 0);
        
        // 4. 重置多圈计数
        encoder_revolutions = 0;
        
        // 5. 检查位置计数器错误标志 (PCEF)
        if(EQEP_getStatus(EQEP_MODULE) & EQEP_STS_POS_CNT_ERROR)  // 修改: 宏名
        {
            // 处理位置计数器错误
            // 根据手册，PCEF位在每次索引事件时更新
            EQEP_clearStatus(EQEP_MODULE, EQEP_STS_POS_CNT_ERROR);  // 修改: 宏名
        }
        
        // 6. 清除中断标志
        EQEP_clearInterruptStatus(EQEP_MODULE, EQEP_INT_INDEX_EVNT_LATCH);  // 修改: 宏名
    }
    
    // 7. 确认中断
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);
}

// ========================
// 获取电气角度 (0-360度)
// ========================
float eqep_get_electrical_angle(uint32_t base)  // base: eQEP模块基地址
{
    uint32_t raw_pos = EQEP_getPosition(base);
    encoder_raw_position = raw_pos;
    
    // 计算电气角度
    float angle = (float)(raw_pos % ENCODER_COUNTS_PER_REV) * 360.0f / (float)ENCODER_COUNTS_PER_REV;
    
    // 处理多圈计数
    uint32_t latched_pos = EQEP_getPositionLatch(base);
    
    // 检测32位计数器溢出
    if((latched_pos > 0xC0000000) && (raw_pos < 0x40000000))
    {
        // 正向溢出
        encoder_revolutions++;
    }
    else if((latched_pos < 0x40000000) && (raw_pos > 0xC0000000))
    {
        // 负向溢出
        encoder_revolutions--;
    }
    
    return angle;
}

// ========================
// 获取机械角度 (0-360度)
// ========================
float eqep_get_mechanical_angle(uint32_t base)  // base: eQEP模块基地址
{
    float electrical_angle = eqep_get_electrical_angle(base);
    float mechanical_angle = electrical_angle / (float)MOTOR_POLE_PAIRS;
    
    // 规范化到0-360度范围
    while(mechanical_angle >= 360.0f) mechanical_angle -= 360.0f;
    while(mechanical_angle < 0.0f) mechanical_angle += 360.0f;
    
    return mechanical_angle;
}

// ========================
// 计算电机速度 (RPM)
// ========================
float eqep_calculate_speed(uint32_t base)  // base: eQEP模块基地址
{
    // 1. 读取锁存的位置 (上一个单元时间周期结束时的位置)
    uint32_t latched_pos = EQEP_getPositionLatch(base);
    
    // 2. 读取当前位置
    uint32_t current_pos = EQEP_getPosition(base);
    
    // 3. 计算位置差
    int32_t position_delta;
    
    // 检测计数器溢出
    if(current_pos > latched_pos)
    {
        if((current_pos - latched_pos) > 0x7FFFFFFF)
        {
            // 负向溢出
            position_delta = (int32_t)(current_pos - latched_pos - 0xFFFFFFFF);
        }
        else
        {
            // 正常正向
            position_delta = (int32_t)(current_pos - latched_pos);
        }
    }
    else
    {
        if((latched_pos - current_pos) > 0x7FFFFFFF)
        {
            // 正向溢出
            position_delta = (int32_t)(0xFFFFFFFF - latched_pos + current_pos + 1);
        }
        else
        {
            // 正常负向
            position_delta = -(int32_t)(latched_pos - current_pos);
        }
    }
    
    // 4. 计算单元时间 (秒)
    float unit_time_sec = (float)EQEP_UNIT_TIMER_DIVIDER / (float)DEVICE_SYSCLK_FREQ;
    
    // 5. 计算每秒位置变化
    float position_per_sec = (float)position_delta / unit_time_sec;
    
    // 6. 转换为RPM
    // (counts/sec) / (counts/rev) * 60 sec/min = RPM
    float rpm = position_per_sec / (float)ENCODER_COUNTS_PER_REV * 60.0f;
    
    return rpm;
}

// ========================
// 电机控制循环
// ========================
void motor_control_loop(void)
{
    // 1. 读取角度
    motor_angle_electrical = eqep_get_electrical_angle(EQEP_MODULE);
    motor_angle_mechanical = eqep_get_mechanical_angle(EQEP_MODULE);
    
    // 2. 计算速度
    motor_speed_rpm = eqep_calculate_speed(EQEP_MODULE);
    
    // 3. 实现电机控制算法 (示例为简单位置控制)
    if(encoder_calibrated)
    {
        // 示例: 位置控制 (目标角度180度)
        float target_angle = 180.0f; // 目标机械角度
        float position_error = target_angle - motor_angle_mechanical;
        
        // 角度误差规范化 (-180到180)
        while(position_error > 180.0f) position_error -= 360.0f;
        while(position_error < -180.0f) position_error += 360.0f;
        
        // 简单位置PID控制器 (实际应用需要完整PID实现)
        float kp = 0.1f; // 比例增益 (需调整)
        float control_signal = kp * position_error;
        
        // 饱和限制
        if(control_signal > 1.0f) control_signal = 1.0f;
        else if(control_signal < -1.0f) control_signal = -1.0f;
        
        // 应用控制信号到电机驱动 (此处为伪代码)
        // pwm_set_duty(EPWM1_BASE, control_signal);
    }
    else
    {
        // 未校准模式 - 安全状态
        // pwm_set_duty(EPWM1_BASE, 0.0f); // 停止电机
    }
}

// ========================
// 诊断更新
// ========================
void update_diagnostics(void)
{
    static uint32_t diagnostic_counter = 0;
    diagnostic_counter++;
    
    // 每秒更新诊断LED
    if(diagnostic_counter >= 20000) // 20kHz * 1s = 20000
    {
        diagnostic_counter = 0;
        
        // 根据校准状态更新LED
        if(encoder_calibrated)
        {
            GPIO_togglePin(LED2_PIN); // 闪烁LED2表示正常
        }
        else
        {
            GPIO_togglePin(LED1_PIN); // 闪烁LED1表示需要校准
        }
        
        // 检查看门狗错误
        if(EQEP_getStatus(EQEP_MODULE) & EQEP_INT_WATCHDOG)
        {
            // 看门狗超时 - 编码器信号丢失
            GPIO_writePin(LED1_PIN, 1); // LED1常亮
            GPIO_writePin(LED2_PIN, 1); // LED2常亮
            EQEP_clearStatus(EQEP_MODULE, EQEP_INT_WATCHDOG);
        }
    }
    
    // 高速诊断 - 角度变化过大检测
    float angle_delta = motor_angle_electrical - last_angle;
    last_angle = motor_angle_electrical;
    
    if(fabsf(angle_delta) > 90.0f && fabsf(motor_speed_rpm) < 10.0f)
    {
        // 检测到异常角度跳变，可能是噪声或干扰
        // 可以在这里添加滤波或错误处理
    }
}

// ========================
// 辅助函数: 角度标准化
// ========================
float normalize_angle(float angle)  // angle: 待规范化的角度值
{
    while(angle >= 360.0f) angle -= 360.0f;
    while(angle < 0.0f) angle += 360.0f;
    return angle;
}

// ========================
// 辅助函数: 饱和限制
// ========================
float saturate(float value, float min, float max)  // value: 输入值, min: 最小值, max: 最大值
{
    if(value > max) return max;
    if(value < min) return min;
    return value;
}
