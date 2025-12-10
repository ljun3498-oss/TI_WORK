// 包含 TI DriverLib 和 Device Support 库
#include "driverlib.h"
#include "device.h"
#include <math.h>
#include <stdint.h>

//三相pwm加死区配置


// --- 宏定义 ---
#define SYSTEM_CLOCK     200000000.0f  // 系统时钟频率 (200 MHz)
#define PWM_FREQ         5000.0f       // 载波频率（ePWM 开关频率，5 kHz）
#define TABLE_POINTS     100           // SPWM 查找表中的采样点数
#define PI               3.14159265359f

// --- 全局变量 ---
static volatile uint16_t sineTableA[TABLE_POINTS] __attribute__((aligned(4)));  // A相正弦查找表
static volatile uint16_t sineTableB[TABLE_POINTS] __attribute__((aligned(4)));  // B相正弦查找表
static volatile uint16_t sineTableC[TABLE_POINTS] __attribute__((aligned(4)));  // C相正弦查找表
static uint16_t TBPRD;  // ePWM 时间基准周期寄存器值 (TBPRD)

/**
 * @brief 初始化正弦查找表
 * 
 * 该函数计算三相SPWM所需的正弦波数据并存储到查找表中，
 * 分别对应0°、120°和240°相位差的正弦波
 */
void InitSineTable(void)
{
    uint16_t i;
    for( i = 0U; i < TABLE_POINTS; ++i)
    {
        // 相位A (0°)
        float vA = 0.5f + 0.5f * sinf(2.0f * PI * (float)i / (float)TABLE_POINTS);
        uint32_t valA = (uint32_t)(vA * (float)TBPRD + 0.5f);
        if(valA > TBPRD) valA = TBPRD;
        sineTableA[i] = (uint16_t)valA;
        
        // 相位B (120°)
        float vB = 0.5f + 0.5f * sinf(2.0f * PI * (float)i / (float)TABLE_POINTS + 2.0f*PI/3.0f);
        uint32_t valB = (uint32_t)(vB * (float)TBPRD + 0.5f);
        if(valB > TBPRD) valB = TBPRD;
        sineTableB[i] = (uint16_t)valB;
        
        // 相位C (240°)
        float vC = 0.5f + 0.5f * sinf(2.0f * PI * (float)i / (float)TABLE_POINTS + 4.0f*PI/3.0f);
        uint32_t valC = (uint32_t)(vC * (float)TBPRD + 0.5f);
        if(valC > TBPRD) valC = TBPRD;
        sineTableC[i] = (uint16_t)valC;
    }
}


static void initSinglePWM(uint32_t base);
/**
 * @brief 初始化PWM模块
 * 
 * 该函数初始化三个ePWM模块，设置时间基准、死区等参数，
 * 并配置相应的GPIO引脚用于PWM输出
 */
void InitPWM(void)
{
    // 初始化三个 ePWM 模块
    initSinglePWM(EPWM1_BASE);
    initSinglePWM(EPWM2_BASE);
    initSinglePWM(EPWM3_BASE);

    // 清计数并确保同步
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);

    SysCtl_setEPWMClockDivider(SYSCTL_EPWMCLK_DIV_1);
}

/**
 * @brief 初始化单个 PWM 模块
 *
 * @param base     PWM 模块基地址
 * @param pinA     A 相输出对应的 GPIO 引脚号
 * @param pinB     B 相输出对应的 GPIO 引脚号
 */
void initSinglePWM(uint32_t base)
{
    const uint16_t deadbandDelayTicks = 200;  // 死区延时ticks数

    EPWM_setTimeBasePeriod(base, TBPRD);  // 设置时间基准周期
    EPWM_setTimeBaseCounterMode(base, EPWM_COUNTER_MODE_UP_DOWN);  // 设置计数模式为上下计数
    EPWM_setCounterCompareValue(base, EPWM_COUNTER_COMPARE_A, TBPRD / 2);  // 设置比较值

    EPWM_setClockPrescaler(base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);  // 设置时钟预分频

    EPWM_setActionQualifierAction(base, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);  // 在计数器为0时设置高电平
    EPWM_setActionQualifierAction(base, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);  // 在上升计数匹配时设置低电平
    EPWM_setActionQualifierAction(base, EPWM_AQ_OUTPUT_A,
                                  EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);  // 在下降计数匹配时设置高电平

    // CMPA 影子载入
    EPWM_setCounterCompareShadowLoadMode(base,
                                         EPWM_COUNTER_COMPARE_A,
                                         EPWM_COMP_LOAD_ON_CNTR_ZERO);  // 在计数器为0时加载影子寄存器

    // SOCA 配置：每个 PWM 周期触发一次 DMA 更新 CMPA
    EPWM_setADCTriggerSource(base, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO_OR_PERIOD);  // 设置ADC触发源
    EPWM_setADCTriggerEventPrescale(base, EPWM_SOC_A, 1);  // 设置触发事件预分频
    EPWM_enableADCTrigger(base, EPWM_SOC_A);  // 使能ADC触发



    // Dead-band 配置
    EPWM_setRisingEdgeDelayCount(base, deadbandDelayTicks);  // 设置上升沿死区延迟
    EPWM_setFallingEdgeDelayCount(base, deadbandDelayTicks);  // 设置下降沿死区延迟
    EPWM_setDeadBandDelayMode(base, EPWM_DB_RED, true);  // 使能上升沿死区
    EPWM_setDeadBandDelayMode(base, EPWM_DB_FED, true);  // 使能下降沿死区
    EPWM_setRisingEdgeDeadBandDelayInput(base, EPWM_DB_INPUT_EPWMA);  // 设置上升沿死区输入源
    EPWM_setFallingEdgeDeadBandDelayInput(base, EPWM_DB_INPUT_EPWMA);  // 设置下降沿死区输入源

    // GPIO 配置：根据 base 自动选择
    if (base == EPWM1_BASE) {
        GPIO_setPinConfig(GPIO_0_EPWM1A);
        GPIO_setPinConfig(GPIO_1_EPWM1B);
    } else if (base == EPWM2_BASE) {
        GPIO_setPinConfig(GPIO_2_EPWM2A);
        GPIO_setPinConfig(GPIO_3_EPWM2B);
    } else if (base == EPWM3_BASE) {
        GPIO_setPinConfig(GPIO_4_EPWM3A);
        GPIO_setPinConfig(GPIO_5_EPWM3B);
    }
    uint16_t pinA = (base==EPWM1_BASE)?0:(base==EPWM2_BASE)?2:4;  // 计算A相引脚号
    uint16_t pinB = pinA + 1;  // 计算B相引脚号
    GPIO_setPadConfig(pinA, GPIO_PIN_TYPE_STD);  // 设置A相引脚为标准类型
    GPIO_setPadConfig(pinB, GPIO_PIN_TYPE_STD);  // 设置B相引脚为标准类型
    GPIO_setQualificationMode(pinA, GPIO_QUAL_ASYNC);  // 设置A相引脚为异步采样
    GPIO_setQualificationMode(pinB, GPIO_QUAL_ASYNC);  // 设置B相引脚为异步采样

    EPWM_clearTripZoneFlag(base, EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_CBC);  // 清除故障标志
}


// --- DMA 初始化（循环模式） ---


/**
 * @brief 初始化单个DMA通道
 * 
 * 该函数配置指定的DMA通道，使其能够自动更新PWM比较寄存器，
 * 实现SPWM波形输出
 * 
 * @param dmaBase          DMA通道基地址
 * @param epwmBase         对应的ePWM模块基地址
 * @param sineTableAddr    正弦查找表地址
 * @param tablePoints      查找表点数
 */
static void initSingleDMAChannel(uint32_t dmaBase, uint32_t epwmBase, const volatile uint16_t* sineTableAddr, uint16_t tablePoints)
{
    DMA_stopChannel(dmaBase);  // 停止DMA通道
    DMA_clearTriggerFlag(dmaBase);  // 清除触发标志
    DMA_clearErrorFlag(dmaBase);  // 清除错误标志
    DMA_disableInterrupt(dmaBase); // 不启用中断

    DMA_configMode(dmaBase, 
                   (dmaBase == DMA_CH1_BASE) ? DMA_TRIGGER_EPWM1SOCA :
                   (dmaBase == DMA_CH2_BASE) ? DMA_TRIGGER_EPWM2SOCA :
                                               DMA_TRIGGER_EPWM3SOCA,
                   DMA_CFG_CONTINUOUS_ENABLE);  // 配置DMA模式为连续传输

    // 源地址：sineTable
    DMA_configSourceAddress(dmaBase, (void *)sineTableAddr);  // 设置源地址为正弦表

    // 目标地址：对应 ePWMx CMPA 寄存器
    DMA_configDestAddress(dmaBase, (void *)(epwmBase + EPWM_O_CMPA));  // 设置目标地址为CMPA寄存器



    // 每次搬运 1 个半字，源步进 sizeof(uint16_t)，目标步进 0
    DMA_configBurst(dmaBase, 1, 1, 0);  // 配置突发传输参数
    DMA_configTransfer(dmaBase, tablePoints, 1, -1);  // 配置传输参数

    DMA_startChannel(dmaBase);  // 启动DMA通道
}

/**
 * @brief 初始化DMA控制器
 * 
 * 该函数初始化DMA控制器并配置三个DMA通道，
 * 分别用于更新三相PWM的比较寄存器
 */
void InitDMA(void)
{
    DMA_initController();  // 初始化DMA控制器

    // 初始化各通道，分别使用不同的正弦表
    initSingleDMAChannel(DMA_CH1_BASE, EPWM1_BASE, &sineTableA[0], TABLE_POINTS);  // 初始化通道1
    initSingleDMAChannel(DMA_CH2_BASE, EPWM2_BASE, &sineTableB[0], TABLE_POINTS);  // 初始化通道2
    initSingleDMAChannel(DMA_CH3_BASE, EPWM3_BASE, &sineTableC[0], TABLE_POINTS);  // 初始化通道3
}


/**
 * @brief 系统初始化
 * 
 * 该函数完成系统级初始化，包括设备初始化、GPIO初始化、
 * 外设时钟使能、PWM和DMA初始化等
 */
void InitSystem(void)
{
    Device_init();  // 设备初始化
    Device_initGPIO();  // GPIO初始化
    SysCtl_disableWatchdog();  // 禁用看门狗
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);  // 使能ePWM1时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);  // 使能ePWM2时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);  // 使能ePWM3时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_DMA);  // 使能DMA时钟

    // 计算 TBPRD
    TBPRD = (uint16_t)(SYSTEM_CLOCK / (2.0f * PWM_FREQ) + 0.5f);  // 计算PWM周期值
    if(TBPRD > 0xFFFF) TBPRD = 0xFFFF;  // 限制最大值

    InitSineTable();  // 初始化正弦表
    InitPWM();  // 初始化PWM
    InitDMA();  // 初始化DMA
}

/**
 * @brief 主函数
 * 
 * 程序入口点，负责调用初始化函数并进入主循环
 */
int main(void)
{
    DINT;  // 禁用CPU中断
    InitSystem();  // 系统初始化
    EINT;  // 使能CPU中断
    ERTM;  // 使能全局实时中断屏蔽

    for(;;)
    {
        asm(" NOP"); // CPU 空闲，DMA 自动循环更新 SPWM
    }
}
