#include "driverlib.h"
#include "device.h"


// --- 定义 ---
#define MOTOR_SPI_BASE      SPIA_BASE
#define DATA_FRAME_SIZE     10
#define FRAME_HEADER        0xABCD

// --- 全局变量 ---
uint16_t spiTxBuffer[DATA_FRAME_SIZE];
uint16_t spiRxBuffer[DATA_FRAME_SIZE]; // 必须提供，用于存放同步接收的数据

// 模拟电机参数
float v_a = 220.5, v_b = 220.1, v_c = 219.8;
float i_a = 5.2, i_b = 5.1, i_c = 5.3;
float motor_speed = 1500.0;
float motor_torque = 12.5;

// --- 函数声明 ---
void initGPIO(void);
void initMotorSPI(void);
void sendMotorData(void);
__interrupt void cpu_timer0_isr(void);

// --- 主函数 ---
void main(void)
{
    // 1. 初始化系统控制（频率、看门狗）
    Device_init();

    // 2. 初始化 GPIO 复用
    initGPIO();

    // 3. 清除所有中断并初始化 PIE 向量表
    DINT;
    Interrupt_initModule();
    IER = 0x0000;
    IFR = 0x0000;
    Interrupt_initVectorTable();

    // 4. 配置 SPI
    initMotorSPI();

    // 5. 配置定时器中断 (模拟电机控制频率，例如 1ms 一次)
    Interrupt_register(INT_TIMER0, &cpu_timer0_isr);
    
    // 配置 CPU Timer 0
    CPUTimer_setEmulationMode(CPUTIMER0_BASE, CPUTIMER_EMULATIONMODE_RUNFREE);
    CPUTimer_setPeriod(CPUTIMER0_BASE, 200000); // 200MHz / 1000 = 200000 计数
    CPUTimer_enableInterrupt(CPUTIMER0_BASE);
    CPUTimer_startTimer(CPUTIMER0_BASE);

    // 6. 使能中断
    IER |= INTERRUPT_CPU_INT1;
    Interrupt_enable(INT_TIMER0);
    EINT;
    ERTM;

    // 主循环
    while(1)
    {
        // 实际电机算法通常放在中断中
        // 此处可处理低优先级任务
    }
}

// --- SPI 初始化实现 ---
void initMotorSPI(void)
{
    // 假设 LSPCLK 为 50MHz (系统 200MHz / 4)
    // 配置：10MHz 波特率, 16位宽度, 模式0
    SPI_setConfig(MOTOR_SPI_BASE, DEVICE_LSPCLK_FREQ, SPI_PROT_POL0PHA0,
                  SPI_MODE_CONTROLLER, 10000000, 16);

    SPI_enableFIFO(MOTOR_SPI_BASE);
    SPI_setEmulationMode(MOTOR_SPI_BASE, SPI_EMULATION_FREE_RUN);
    SPI_enableModule(MOTOR_SPI_BASE);
}

// --- GPIO 初始化 (以 SPI-A 为例) ---
void initGPIO(void)
{
    // 设置 GPIO16, 17, 18, 19 分别为 SPISIMOA, SPISOMIA, SPICLKA, SPISTEA
    GPIO_setPinConfig(GPIO_16_SPISIMOA);
    GPIO_setPinConfig(GPIO_17_SPISOMIA);
    GPIO_setPinConfig(GPIO_18_SPICLKA);
    GPIO_setPinConfig(GPIO_19_SPISTEA);
    
    // 使能上拉
    GPIO_setPadConfig(16, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPadConfig(17, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPadConfig(18, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPadConfig(19, GPIO_PIN_TYPE_PULLUP);
}

// --- 数据打包发送实现 ---
void sendMotorData(void)
{
    uint16_t i;
    uint16_t checksum = 0;

    // 数据填充与比例缩放
    spiTxBuffer[0] = FRAME_HEADER;
    spiTxBuffer[1] = (uint16_t)(v_a * 10.0f);
    spiTxBuffer[2] = (uint16_t)(v_b * 10.0f);
    spiTxBuffer[3] = (uint16_t)(v_c * 10.0f);
    spiTxBuffer[4] = (uint16_t)(i_a * 100.0f);
    spiTxBuffer[5] = (uint16_t)(i_b * 100.0f);
    spiTxBuffer[6] = (uint16_t)(i_c * 100.0f);
    spiTxBuffer[7] = (uint16_t)motor_speed;
    spiTxBuffer[8] = (uint16_t)(motor_torque * 100.0f);

    // 计算校验和
    for(i = 1; i < 9; i++) checksum += spiTxBuffer[i];
    spiTxBuffer[9] = checksum;

    // 批量发送 10 个字 (利用库函数)
    SPI_transmitN16BitWord(MOTOR_SPI_BASE, spiTxBuffer, DATA_FRAME_SIZE, 0);
}

// --- 定时器中断服务函数 ---
__interrupt void cpu_timer0_isr(void)
{
    // 1. 在此处更新电机参数 (实际应用中来自 ADC 采样或编码器计算)
    v_a += 0.1f; // 模拟动态变化
    
    // 2. 发送数据
    sendMotorData();

    // 3. 应答中断
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
