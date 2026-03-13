# SCI Academy Lab - 串口通信实验

## 项目概述

本项目是C2000 Academy的SCI（串口通信）入门实验，演示了F28379D与PC通过串口进行双向通信。

**功能**：
- PC通过串口发送数字 0-9 到F28379D
- F28379D根据数字改变LED闪烁频率
- F28379D将收到的数字回传给PC显示

---

## 文件结构

```
sci_cc_f2837xd/
├── lab_main.c              # 主程序入口
├── lab_sci_controlcard.syscfg  # SysConfig图形化配置文件
├── device/
│   ├── device.c            # 设备初始化（时钟、看门狗等）
│   ├── device.h            # 设备头文件
│   ├── driverlib/          # TI Driver Library
│   │   ├── sci.c/sci.h     # SCI驱动库
│   │   ├── gpio.c/gpio.h   # GPIO驱动库
│   │   ├── cputimer.c/cputimer.h  # 定时器驱动库
│   │   └── ...             # 其他外设驱动
│   └── include/            # 寄存器定义头文件
├── excluded/
│   ├── board.c             # 板级初始化代码（SysConfig生成）
│   └── board.h             # 板级配置头文件（SysConfig生成）
└── targetConfigs/          # CCS目标配置
```

---

## 初始化流程

```
Board_init()                    // 总入口 - board.c
    │
    ├── PinMux_init()           // 引脚功能配置 - board.c
    │       ├── GPIO28 → SCIRXDA (接收)
    │       └── GPIO29 → SCITXDA (发送)
    │
    ├── CPUTIMER_init()         // 定时器初始化 - board.c
    │       └── 配置CPU Timer 0
    │           ├── 时钟分频: 1
    │           ├── 定时周期: 200000000 (约1秒)
    │           └── 使能中断
    │
    ├── GPIO_init()             // GPIO方向/模式配置 - board.c
    │       └── GPIO34 → 输出模式 (LED)
    │
    ├── SCI_init()              // SCI串口初始化 - board.c
    │       ├── 波特率: 9600
    │       ├── 数据位: 8
    │       ├── 停止位: 1
    │       ├── 校验: 无
    │       └── 使能FIFO
    │
    └── INTERRUPT_init()        // 中断初始化 - board.c
            └── 注册定时器中断
```

---

## 文件详细说明

### 1. lab_main.c - 主程序

**位置**: `lab_main.c`

**功能**: 应用程序入口，实现串口通信主循环

**主要函数**:
- `main()` - 程序入口，初始化后进入主循环
- `INT_myCPUTIMER0_ISR()` - 定时器中断服务程序，控制LED闪烁

**主循环逻辑**:
```c
for(;;)
{
    // 1. 发送提示信息到PC
    SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 24);
    
    // 2. 阻塞等待接收字符
    receivedChar = SCI_readCharBlockingFIFO(mySCIA_BASE);
    
    // 3. 字符转数字 (ASCII '0'-'9' → 0-9)
    delayCount = receivedChar - '0';
    
    // 4. 回显收到的字符给PC
    SCI_writeCharArray(mySCIA_BASE, (uint16_t*)msg, 25);
    SCI_writeCharBlockingNonFIFO(mySCIA_BASE, receivedChar);
}
```

---

### 2. board.c - 板级初始化（SysConfig生成）

**位置**: `excluded/board.c` 或 `CPU1_RAM/syscfg/excluded/board.c`

**功能**: 包含所有外设的初始化代码，由SysConfig工具自动生成

**主要函数**:

#### `Board_init()` - 总入口
```c
void Board_init()
{
    EALLOW;
    PinMux_init();      // 引脚复用配置
    CPUTIMER_init();    // 定时器初始化
    GPIO_init();        // GPIO初始化
    SCI_init();         // SCI初始化
    INTERRUPT_init();   // 中断初始化
    EDIS;
}
```

#### `PinMux_init()` - 引脚复用配置
```c
void PinMux_init()
{
    // LED引脚配置
    GPIO_setPinConfig(GPIO_34_GPIO34);
    
    // SCIA RX引脚 (GPIO28)
    GPIO_setPinConfig(mySCIA_SCIRX_PIN_CONFIG);
    GPIO_setPadConfig(mySCIA_SCIRX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(mySCIA_SCIRX_GPIO, GPIO_QUAL_ASYNC);
    
    // SCIA TX引脚 (GPIO29)
    GPIO_setPinConfig(mySCIA_SCITX_PIN_CONFIG);
    GPIO_setPadConfig(mySCIA_SCITX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(mySCIA_SCITX_GPIO, GPIO_QUAL_ASYNC);
}
```

#### `mySCIA_init()` - SCI初始化
```c
void mySCIA_init()
{
    // 清除中断状态
    SCI_clearInterruptStatus(mySCIA_BASE, SCI_INT_RXFF | SCI_INT_TXFF | ...);
    
    // 清除溢出状态
    SCI_clearOverflowStatus(mySCIA_BASE);
    
    // 复位FIFO
    SCI_resetTxFIFO(mySCIA_BASE);
    SCI_resetRxFIFO(mySCIA_BASE);
    
    // 配置SCI参数
    SCI_setConfig(mySCIA_BASE, DEVICE_LSPCLK_FREQ, mySCIA_BAUDRATE, 
                  (SCI_CONFIG_WLEN_8 | SCI_CONFIG_STOP_ONE | SCI_CONFIG_PAR_NONE));
    
    // 禁用回环模式
    SCI_disableLoopback(mySCIA_BASE);
    
    // 软件复位
    SCI_performSoftwareReset(mySCIA_BASE);
    
    // 设置FIFO中断级别
    SCI_setFIFOInterruptLevel(mySCIA_BASE, SCI_FIFO_TX0, SCI_FIFO_RX0);
    
    // 使能FIFO
    SCI_enableFIFO(mySCIA_BASE);
    
    // 使能SCI模块
    SCI_enableModule(mySCIA_BASE);
}
```

#### `myCPUTIMER0_init()` - 定时器初始化
```c
void myCPUTIMER0_init()
{
    CPUTimer_setEmulationMode(myCPUTIMER0_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
    CPUTimer_setPreScaler(myCPUTIMER0_BASE, 1U);
    CPUTimer_setPeriod(myCPUTIMER0_BASE, 200000000U);  // 定时周期
    CPUTimer_enableInterrupt(myCPUTIMER0_BASE);
    CPUTimer_stopTimer(myCPUTIMER0_BASE);
    CPUTimer_reloadTimerCounter(myCPUTIMER0_BASE);
}
```

---

### 3. board.h - 板级配置头文件（SysConfig生成）

**位置**: `excluded/board.h` 或 `CPU1_RAM/syscfg/excluded/board.h`

**功能**: 定义所有外设配置参数和宏

**主要宏定义**:

#### SCI配置
```c
#define mySCIA_BASE SCIA_BASE                  // SCI A模块基地址
#define mySCIA_BAUDRATE 9600                   // 波特率9600
#define mySCIA_CONFIG_WLEN SCI_CONFIG_WLEN_8   // 8位数据
#define mySCIA_CONFIG_STOP SCI_CONFIG_STOP_ONE // 1位停止位
#define mySCIA_CONFIG_PAR SCI_CONFIG_PAR_NONE  // 无校验
#define mySCIA_FIFO_TX_LVL SCI_FIFO_TX0        // TX FIFO级别0
#define mySCIA_FIFO_RX_LVL SCI_FIFO_RX0        // RX FIFO级别0
```

#### GPIO引脚定义
```c
// LED引脚
#define myBoardLED0_GPIO 34                    // LED使用GPIO34
#define myBoardLED0_GPIO_GPIO_PIN_CONFIG GPIO_34_GPIO34

// SCI RX引脚
#define GPIO_PIN_SCIRXDA 28                    // SCIRXDA = GPIO28
#define mySCIA_SCIRX_GPIO 28
#define mySCIA_SCIRX_PIN_CONFIG GPIO_28_SCIRXDA

// SCI TX引脚
#define GPIO_PIN_SCITXDA 29                    // SCITXDA = GPIO29
#define mySCIA_SCITX_GPIO 29
#define mySCIA_SCITX_PIN_CONFIG GPIO_29_SCITXDA
```

#### 定时器配置
```c
#define myCPUTIMER0_BASE CPUTIMER0_BASE        // CPU Timer 0基地址
```

#### 中断配置
```c
#define INT_myCPUTIMER0 INT_TIMER0
#define INT_myCPUTIMER0_INTERRUPT_ACK_GROUP INTERRUPT_ACK_GROUP1
```

---

### 4. lab_sci_controlcard.syscfg - SysConfig配置文件

**位置**: `lab_sci_controlcard.syscfg`

**功能**: TI SysConfig图形化工具的配置文件，定义外设和引脚

**配置内容**:
```javascript
// LED模块配置
const led       = scripting.addModule("/driverlib/board_components/led", {}, false);
const led1      = led.addInstance();
led1.$name     = "myBoardLED0";
led1.$hardware = system.deviceData.board.components.D2;  // 开发板D2 LED

// 定时器模块配置
const cputimer  = scripting.addModule("/driverlib/cputimer.js", {}, false);
const cputimer1 = cputimer.addInstance();
cputimer1.$name                    = "myCPUTIMER0";
cputimer1.timerPrescaler           = 1;
cputimer1.enableInterrupt          = true;
cputimer1.registerInterrupts       = true;
cputimer1.timerPeriod              = 200000000;

// SCI模块配置
const sci       = scripting.addModule("/driverlib/sci.js", {}, false);
const sci1      = sci.addInstance();
sci1.$name                 = "mySCIA";
sci1.baudRates             = 9600;
sci1.sci.$assign           = "SCIA";
sci1.sci.scirxdPin.$assign = "hsecDigital.76";  // 控制卡引脚76
sci1.sci.scitxdPin.$assign = "hsecDigital.78";  // 控制卡引脚78
```

**说明**: 
- `hsecDigital.76` 对应 GPIO28 (SCIRXDA)
- `hsecDigital.78` 对应 GPIO29 (SCITXDA)
- 这是TMDSCNCD28379D控制卡的边缘连接器引脚编号

---

### 5. device.c / device.h - 设备初始化

**位置**: `device/device.c`, `device/device.h`

**功能**: 
- 系统时钟配置
- 看门狗设置
-  Flash等待状态
-  GPIO基本初始化

**主要函数**:
- `Device_init()` - 设备初始化总入口
- `Device_initGPIO()` - GPIO初始化

---

### 6. driverlib/sci.c / sci.h - SCI驱动库

**位置**: `device/driverlib/sci.c`, `device/driverlib/sci.h`

**功能**: TI提供的SCI外设驱动库，封装了寄存器操作

**主要API**:
```c
// 初始化配置
void SCI_setConfig(uint32_t base, uint32_t lspclkHz, uint32_t baudrate, uint32_t config);

// FIFO操作
void SCI_enableFIFO(uint32_t base);
void SCI_disableFIFO(uint32_t base);
void SCI_resetTxFIFO(uint32_t base);
void SCI_resetRxFIFO(uint32_t base);
void SCI_setFIFOInterruptLevel(uint32_t base, uint16_t txLevel, uint16_t rxLevel);

// 发送数据
void SCI_writeCharArray(uint32_t base, const uint16_t *array, uint16_t length);
void SCI_writeCharBlockingNonFIFO(uint32_t base, uint16_t charData);

// 接收数据
uint16_t SCI_readCharBlockingFIFO(uint32_t base);
uint16_t SCI_readCharNonBlockingFIFO(uint32_t base);

// 中断和状态
void SCI_clearInterruptStatus(uint32_t base, uint32_t intFlags);
uint32_t SCI_getRxStatus(uint32_t base);

// 模块使能
void SCI_enableModule(uint32_t base);
void SCI_disableModule(uint32_t base);
```

---

### 7. driverlib/gpio.c / gpio.h - GPIO驱动库

**位置**: `device/driverlib/gpio.c`, `device/driverlib/gpio.h`

**功能**: TI提供的GPIO外设驱动库

**主要API**:
```c
// 引脚配置
void GPIO_setPinConfig(uint32_t config);
void GPIO_setPadConfig(uint32_t pin, uint32_t config);
void GPIO_setQualificationMode(uint32_t pin, uint32_t mode);
void GPIO_setDirectionMode(uint32_t pin, uint32_t mode);
void GPIO_setControllerCore(uint32_t pin, uint32_t core);

// 引脚操作
void GPIO_writePin(uint32_t pin, uint32_t value);
uint32_t GPIO_readPin(uint32_t pin);
void GPIO_togglePin(uint32_t pin);
```

---

### 8. driverlib/cputimer.c / cputimer.h - 定时器驱动库

**位置**: `device/driverlib/cputimer.c`, `device/driverlib/cputimer.h`

**功能**: TI提供的CPU Timer驱动库

**主要API**:
```c
// 定时器配置
void CPUTimer_setPreScaler(uint32_t base, uint16_t preScaler);
void CPUTimer_setPeriod(uint32_t base, uint32_t period);
void CPUTimer_setEmulationMode(uint32_t base, uint32_t mode);

// 定时器控制
void CPUTimer_startTimer(uint32_t base);
void CPUTimer_stopTimer(uint32_t base);
void CPUTimer_reloadTimerCounter(uint32_t base);

// 中断
void CPUTimer_enableInterrupt(uint32_t base);
void CPUTimer_disableInterrupt(uint32_t base);
```

---

## 硬件连接

```
┌─────────────────────────────────────────────────────────────┐
│                    TMDSCNCD28379D 控制卡                     │
│                                                              │
│   GPIO28 (Pin 76)  ◄──────  RX  ──────◄  PC (串口助手)      │
│   GPIO29 (Pin 78)  ──────►  TX  ──────►  PC (串口助手)      │
│                                                              │
│   GPIO34            ──────►  LED ─────►  闪烁指示           │
└─────────────────────────────────────────────────────────────┘

注意：Pin 76/78 是控制卡高速边缘连接器(HSEC)的引脚编号
```

---

## 串口参数

| 参数 | 值 |
|------|-----|
| 波特率 | 9600 |
| 数据位 | 8 |
| 停止位 | 1 |
| 校验 | 无 (None) |
| 流控 | 无 |

---

## 使用说明

### 1. 硬件准备
- TMDSCNCD28379D控制卡
- USB转串口模块（连接GPIO28/29）
- PC安装串口助手软件

### 2. 软件准备
- Code Composer Studio (CCS)
- 导入本项目
- 编译并下载程序

### 3. 测试步骤
1. 连接USB转串口模块到控制卡的Pin 76 (RX) 和 Pin 78 (TX)
2. 打开串口助手，设置波特率9600，8N1
3. 运行程序
4. 在串口助手中输入数字 0-9
5. 观察LED闪烁频率变化

---

## 关键配置总结

| 配置项 | 值 | 位置 |
|-------|-----|------|
| SCI模块 | SCIA | board.h:76 |
| RX引脚 | GPIO28 | board.h:50 |
| TX引脚 | GPIO29 | board.h:55 |
| LED引脚 | GPIO34 | board.h:44, 88 |
| 波特率 | 9600 | board.h:77 |
| 数据格式 | 8N1 | board.h:78-80 |
| 定时器 | CPU Timer 0 | board.h:68 |
| 定时周期 | 200000000 | board.c:107 |

---

## 参考资料

- [C2000 Academy - SCI Lab](https://dev.ti.com/tirex/local?id=source_c2000_academy_labs_communications_lab_c2000_lab_sci&packageId=C2000-ACADEMY)
- F2837xD Technical Reference Manual
- TI Driver Library Documentation

---

## 实验结果

### 实验时间
2026-03-13

### 实验配置
- **SCI模块**: SCIB
- **RX引脚**: GPIO55
- **TX引脚**: GPIO54
- **波特率**: 9600
- **数据格式**: 8N1
- **LED引脚**: GPIO0

### 实验过程
1. **硬件连接**:
   - GPIO55 (SCIRXDB) → USB转串口模块 RX
   - GPIO54 (SCITXDB) → USB转串口模块 TX
   - GND → GND
   - GPIO0 → LED

2. **软件配置**:
   - 串口助手设置：9600波特率，8位数据，1位停止位，无校验
   - 编码格式：UTF-8

3. **测试步骤**:
   - 编译并下载程序到F28379D控制卡
   - 打开串口助手，连接对应COM口
   - 观察串口助手显示：`Hello World! Enter a number 0-9 to change the LED blink rate.`
   - 在发送框输入数字 `5` 并发送
   - 观察串口助手回显：`LED set to blink rate 5`
   - 观察LED按照设置的频率闪烁

### 实验结果
✅ **实验成功**！

- [x] F28379D成功通过SCIB发送数据到PC
- [x] F28379D成功接收PC发送的数字
- [x] LED闪烁频率根据输入数字正确变化
- [x] 串口助手正确显示回显信息

### 测试数据

| 发送数字 | LED闪烁效果 | 回显信息 |
|---------|------------|----------|
| 0 | 最快 | `LED set to blink rate 0` |
| 5 | 中等 | `LED set to blink rate 5` |
| 9 | 最慢 | `LED set to blink rate 9` |

### 注意事项
1. **引脚连接**：确保使用正确的GPIO54/55引脚
2. **编码格式**：使用UTF-8或ASCII编码
3. **发送内容**：必须发送字符形式的数字（如'5'），不是二进制数字
4. **波特率**：必须设置为9600

### 实验结论
本项目成功实现了F28379D与PC之间的双向串口通信，通过SCIB模块（GPIO54/55）实现了数据的发送和接收，并根据接收到的数字控制LED闪烁频率。实验验证了SCI串口通信的基本功能，为后续更复杂的串口应用奠定了基础。
