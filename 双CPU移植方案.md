# F2837xD 双轴伺服驱动器 —— 双CPU移植方案

## 一、现状分析

### 1.1 当前项目结构

当前项目 `dual_axis_servo_drive_fcl_qep_f2837x` 是一个**单CPU项目**，在CPU1上同时控制两个电机：

- Motor 1 (M1): EPWM1/2/3, EQEP1, SPIA, ADC触发 EPWM1_SOCA
- Motor 2 (M2): EPWM4/5/6, EQEP2, SPIB, ADC触发 EPWM4_SOCA

主文件 `dual_axis_servo_drive.c` 中包含：
- `main()` 函数：初始化所有外设，启动两个电机的控制
- `motor1ControlISR()` / `motor2ControlISR()`：两个电机的电流环ISR
- 状态机 A0/B0/C0：后台任务调度（速度环、位置环、通信等）

### 1.2 移植目标

将程序拆分为两个独立项目：
- **CPU1项目**：负责高级控制（速度环、位置环、SCI通信、状态机）+ 启动CPU2
- **CPU2项目**：负责实时电流环控制（FCL）、ADC采样、PWM输出

### 1.3 已有参考资源

在 `vacuum-valve-control-system-master/` 中已有参考实现：
- `dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1/` — CPU1参考项目
- `dual_axis_servo_drive_fcl_qep_f2837x_cpu2/` — CPU2参考项目（源文件齐全，但CCS配置不完整）
- `C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x_cpu2/cmd/` — CPU2链接文件

---

## 二、外设分配表

### 2.1 电机外设分配（不变）

| 外设类型 | Motor 1 (CPU1管理) | Motor 2 (CPU2管理) |
|---------|-------------------|-------------------|
| PWM U相 | EPWM1 (GPIO0/1) | EPWM4 (GPIO6/7) |
| PWM V相 | EPWM2 (GPIO2/3) | EPWM5 (GPIO8/9) |
| PWM W相 | EPWM3 (GPIO4/5) | EPWM6 (GPIO10/11) |
| 编码器 | EQEP1 (GPIO20/21/99) | EQEP2 (GPIO54/55/57) |
| SPI(DRV) | SPIA (GPIO58-61) | SPIB (GPIO63-66) |
| ADC Iu | ADCC CH2 SOC0 | ADCC CH4 SOC1 |
| ADC Iv | ADCB CH2 SOC0 | ADCB CH4 SOC1 |
| ADC Iw | ADCA CH2 SOC0 | ADCA CH4 SOC1 |
| ADC Vdc | ADCD CH14 SOC0 | ADCD CH15 SOC1 |
| ADC触发 | EPWM1_SOCA | EPWM4_SOCA |
| CMPSS U | CMPSS6 | CMPSS5 |
| CMPSS V | CMPSS3 | CMPSS5 |
| CMPSS W | CMPSS1 | CMPSS2 |
| 使能GPIO | GPIO124 (EN_GATE_M1) | GPIO26 (EN_GATE_M2) |
| 故障GPIO | GPIO24 (nFault_M1) | GPIO14 (nFault_M2) |
| CLA任务 | Task1-4 (EPWM1触发) | Task5-8 (EPWM4触发) |
| LED | GPIO34 (红色) | GPIO31 (蓝色) |

### 2.2 共享资源

| 资源 | 说明 |
|------|------|
| ADC A/B/C/D | 两个电机共用4个ADC模块，通过不同SOC号区分 |
| CLA1 | 两个电机共用CLA，通过不同Task区分 |
| GS0 RAM (0xC000) | IPC共享内存，双核均可访问 |
| CPU1TOCPU2RAM (0x3FC00) | CPU1→CPU2消息RAM |
| CPU2TOCPU1RAM (0x3F800) | CPU2→CPU1消息RAM |

### 2.3 双核分工方案

| 功能 | CPU1 | CPU2 |
|------|------|------|
| 系统初始化 | Device_init, GPIO配置, 启动CPU2 | Device_init (CPU2侧) |
| GPIO配置 | 所有GPIO（含CPU2使用的） | 不配置GPIO（由CPU1统一配置） |
| 外设所有权转移 | 将M2外设转给CPU2 | 接收M2外设所有权 |
| 电流环ISR | motor1ControlISR (M1) | motor2ControlISR (M2) |
| 速度/位置环 | M1速度环+位置环 | M2速度环+位置环（或通过IPC由CPU1统一管理） |
| 状态机 | A/B/C任务 | A/B/C任务 |
| SCI通信 | SCIA (GPIO42/43) | 无 |
| IPC通信 | 发送指令/参考值 | 返回反馈数据 |

---

## 三、内存分配方案

### 3.1 CPU1 RAM链接文件 (dual_axis_f2837x_ram_lnk_cpu1.cmd)

CPU1的链接文件基本保持不变，关键修改：
- `.text` 使用 RAMGS0-3（与现有一致）
- 新增 IPC 共享内存段

```
MEMORY
{
   /* 与现有一致，关键区域 */
   BEGIN            : origin = 0x000000, length = 0x000002
   RAMM0            : origin = 0x000123, length = 0x0002DD
   RAMM1            : origin = 0x000400, length = 0x0003F8
   RAMLS0-5         : /* CLA程序和数据 */
   RAMGS0-3         : /* CPU1代码和数据 */
   RAMGS5           : /* SFRA数据 */
   
   /* IPC共享内存 - 不要在CPU1的.text中使用GS0 */
   /* 注意：当前CPU1的.text放在GS0-3，需要改为GS4-7或其他 */
   
   CPU1TOCPU2RAM    : origin = 0x03FC00, length = 0x000400
   CPU2TOCPU1RAM    : origin = 0x03F800, length = 0x000400
}
```

**重要修改**：当前CPU1的 `.text` 段放在 RAMGS0-3，但GS0需要用于IPC共享。需要将 `.text` 改为 RAMGS4-7 或其他不冲突的区域。

### 3.2 CPU2 RAM链接文件 (dual_axis_f2837x_ram_lnk_cpu2.cmd)

参考 `C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x_cpu2/cmd/dual_axis_f2837x_ram_lnk_cpu2.cmd`

与CPU1的关键区别：
- `.text` 使用 RAMGS1-4（避开GS0）
- GS0 专门用于IPC共享数据
- CLA配置相同（LS2-5）

```
MEMORY
{
   BEGIN            : origin = 0x000000, length = 0x000002
   BOOT_RSVD        : origin = 0x000002, length = 0x000121
   RAMM0            : origin = 0x000123, length = 0x0002DD
   RAMM1            : origin = 0x000400, length = 0x0003F8

   RAMD0            : origin = 0x00B000, length = 0x000800
   RAMD1            : origin = 0x00B800, length = 0x000800

   RAMLS0           : origin = 0x008000, length = 0x000800
   RAMLS1           : origin = 0x008800, length = 0x000800
   RAMLS2           : origin = 0x009000, length = 0x000800
   RAMLS3           : origin = 0x009800, length = 0x000800
   RAMLS4           : origin = 0x00A000, length = 0x000800
   RAMLS5           : origin = 0x00A800, length = 0x000800

   RAMGS0_IPC       : origin = 0x00C000, length = 0x001000  /* IPC共享 */
   RAMGS1           : origin = 0x00D000, length = 0x001000
   RAMGS2           : origin = 0x00E000, length = 0x001000
   RAMGS3           : origin = 0x00F000, length = 0x001000
   RAMGS4           : origin = 0x010000, length = 0x001000
   /* ... 其余GS RAM同CPU1 ... */

   CPU2TOCPU1RAM    : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM    : origin = 0x03FC00, length = 0x000400

   CLA1_MSGRAMLOW   : origin = 0x001480, length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500, length = 0x000080
}

SECTIONS
{
   codestart        : > BEGIN
   .text            : >> RAMGS1 | RAMGS2 | RAMGS3 | RAMGS4, ALIGN(4)
   .cinit           : > RAMM0, ALIGN(4)
   .stack           : > RAMM1

   .bss             : > RAMLS0 | RAMLS1, ALIGN(4)
   .const           : > RAMLS0 | RAMLS1, ALIGN(4)
   .data            : > RAMLS0 | RAMLS1

   /* IPC共享内存段 */
   IPC_CPU1_TO_CPU2 > RAMGS0_IPC, type=NOINIT
   IPC_CPU2_TO_CPU1 > RAMGS0_IPC, type=NOINIT

   MSGRAM_CPU1_TO_CPU2 > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 > CPU2TOCPU1RAM, type=NOINIT

   /* CLA段 */
   Cla1Prog         : >> RAMLS4 | RAMLS5, ALIGN(4)
   ClaData          : > RAMLS3, ALIGN(4)
   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW,  type=NOINIT
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH, type=NOINIT

   .TI.ramfunc      : >> RAMGS1 | RAMGS2 | RAMGS3 | RAMGS4, ALIGN(8)
}
```

### 3.3 CPU2 Flash链接文件 (dual_axis_f2837x_flash_lnk_cpu2.cmd)

CPU2的Flash地址范围与CPU1不同：
- CPU1 Flash: 0x080000 - 0x087FFF (FLASH A-D)
- CPU2 Flash: 0x088000 - 0x08FFFF (FLASH D-B，CPU2侧)

```
MEMORY
{
   BEGIN            : origin = 0x080000, length = 0x000002  /* CPU2 Flash入口 */
   /* ... RAM部分与RAM版本相同 ... */
   FLASHD           : origin = 0x088000, length = 0x002000
   FLASHC           : origin = 0x08A000, length = 0x002000
   FLASHA           : origin = 0x08C000, length = 0x002000
   FLASHB           : origin = 0x08E000, length = 0x002000
}
```

---

## 四、IPC通信设计

### 4.1 IPC头文件 (cpu2.h / dual_axis_servo_drive_ipc.h)

项目中已有完整的IPC头文件 `include/cpu2.h`，定义了：

```c
// 共享内存地址
#define IPC_DATA_FROM_CPU1_ADDR     0x0000C000  // GS0 RAM起始
#define IPC_DATA_TO_CPU1_ADDR       0x0000C200  // GS0 RAM + 512字节

// CPU1→CPU2 数据结构 (IPC_DataFromCPU1_t)
// - commandFlag: 命令标志（使能/禁用电机、清除故障等）
// - ctrlStateM1/M2: 控制状态
// - speedRefM1/M2, IdRefM1/M2, IqRefM1/M2: 参考值
// - PI参数: Kp_Id, Ki_Id, Kp_Iq, Ki_Iq（可在线调参）

// CPU2→CPU1 数据结构 (IPC_DataToCPU1_t)
// - statusFlag: CPU2状态（就绪、运行、故障）
// - speedM1/M2, positionM1/M2: 速度/位置反馈
// - IdFdbkM1/M2, IqFdbkM1/M2: 电流反馈
// - isrCountM1/M2, fclCyclesM1/M2: 性能计数器
```

### 4.2 IPC初始化

**CPU1侧** (`HAL_setupIPC_CPU1`):
```c
void HAL_setupIPC_CPU1(void)
{
    // 设置共享内存指针
    ipcDataFromCPU1 = (IPC_DataFromCPU1_t *)IPC_DATA_FROM_CPU1_ADDR;
    ipcDataToCPU1 = (IPC_DataToCPU1_t *)IPC_DATA_TO_CPU1_ADDR;
    
    // 初始化CPU1→CPU2数据为默认值
    *ipcDataFromCPU1 = (IPC_DataFromCPU1_t)IPC_DATA_FROM_CPU1_DEFAULTS;
    
    // 配置GS0 RAM为共享（双核均可访问）
    MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS0, MEMCFG_GSRAMMASTER_CPU1);
}
```

**CPU2侧** (`HAL_setupIPC`):
```c
void HAL_setupIPC(void)
{
    // 设置共享内存指针（与CPU1相同地址）
    ipcDataFromCPU1 = (IPC_DataFromCPU1_t *)IPC_DATA_FROM_CPU1_ADDR;
    ipcDataToCPU1 = (IPC_DataToCPU1_t *)IPC_DATA_TO_CPU1_ADDR;
    
    // 初始化CPU2→CPU1数据为默认值
    *ipcDataToCPU1 = (IPC_DataToCPU1_t)IPC_DATA_TO_CPU1_DEFAULTS;
    
    // 设置CPU2就绪标志
    ipcDataToCPU1->statusFlag |= IPC_STS_CPU2_READY;
}
```

### 4.3 双核同步流程

```
CPU1                              CPU2
 |                                 |
 | Device_init()                   | Device_init()
 | Device_initGPIO()               |
 | 配置所有GPIO                     |
 | 转移M2外设所有权给CPU2            |
 | HAL_setupIPC_CPU1()             |
 |                                 |
 | IPC_setFlagLtoR(FLAG0) -------> | IPC_waitForFlag(FLAG0)
 |                                 | IPC_ackFlagRtoL(FLAG0)
 | <------- IPC_setFlagLtoR(FLAG1) |
 | IPC_waitForFlag(FLAG1)          |
 | IPC_ackFlagRtoL(FLAG1)          | HAL_setupIPC()
 |                                 | 初始化外设(PWM/ADC/QEP/CLA)
 | 等待CPU2就绪                     | ipcDataToCPU1->statusFlag |= READY
 | 检测到READY                      |
 | 启动M1控制                       | 启动M2控制
 |                                 |
```

**注意**：在JTAG RAM调试模式下，不要使用 `Device_bootCPU2()`，它会阻塞。
直接通过调试器分别加载两个核的程序，先运行CPU2再运行CPU1（或同时运行）。

---

## 五、CCS Theia 创建CPU2项目步骤

### 5.1 创建新项目

1. File → New → CCS Project
2. Target: TMS320F28379D
3. Project name: `dual_axis_servo_drive_fcl_qep_f2837x_cpu2`
4. Compiler: TI v22.6.2
5. Output type: Executable
6. Device endianness: little
7. Runtime support library: 自动

### 5.2 项目配置

**预定义宏** (Project Properties → Build → C2000 Compiler → Predefined Symbols):
```
_LAUNCHXL_F28379D    (或你的板子型号)
CPU2
_DUAL_HEADERS
```

**Include路径** (Project Properties → Build → C2000 Compiler → Include Options):
```
${PROJECT_ROOT}/headers
${PROJECT_ROOT}/sources
${PROJECT_ROOT}/src_device
C:/TI/C2000Ware_26_00_00_00/driverlib/f2837xd/driverlib
C:/TI/C2000Ware_26_00_00_00/device_support/f2837xd/common/include
C:/TI/C2000Ware_26_00_00_00/libraries/math/FPUfastRTS/c28/include
C:/TI/C2000Ware_26_00_00_00/libraries/control/FCL/f2837x/include
```
（根据实际安装路径调整）

**链接器库文件** (Project Properties → Build → C2000 Linker → File Search Path):
```
libc.a
rts2800_fpu32_eabi.lib
FCL_EABI_F2837x_Lib.lib        (FCL库)
```

### 5.3 CPU2项目源文件清单

从参考项目 `vacuum-valve-control-system-master/dual_axis_servo_drive_fcl_qep_f2837x_cpu2/` 复制：

```
headers/
├── dual_axis_servo_drive_hal_cpu2.h    ← CPU2专用HAL头文件
├── dual_axis_servo_drive_ipc.h         ← IPC通信定义（即cpu2.h的内容）
├── dual_axis_servo_drive_settings.h    ← 编译设置
├── dual_axis_servo_drive_user.h        ← 电机参数定义（M1+M2都有）
└── sfra_settings.h                     ← SFRA设置

sources/
├── dual_axis_servo_drive_cpu2.c        ← CPU2主程序（main + ISR + 状态机）
├── dual_axis_servo_drive_hal_cpu2.c    ← CPU2 HAL实现
├── dual_axis_servo_drive_user.c        ← 用户参数初始化
├── dual_axis_servo_drive_cla_tasks.cla ← CLA任务
├── fcl_cla_code_dm.cla                 ← FCL CLA代码
├── fcl_cpu_code_dm.c                   ← FCL CPU代码
├── dlog_4ch_f.c                        ← 数据记录
├── sfra_gui_scicomms_driverlib.c       ← SFRA通信
└── sfra_gui.c                          ← SFRA GUI

src_device/
├── F2837xD_CodeStartBranch.asm         ← 启动汇编（从CPU1项目复制）
├── F2837xD_GlobalVariableDefs.c        ← 寄存器变量定义
├── dual_axis_f2837x_ram_lnk_cpu2.cmd   ← CPU2 RAM链接文件
├── dual_axis_f2837x_flash_lnk_cpu2.cmd ← CPU2 Flash链接文件
└── F2837xD_Headers_nonBIOS_cpu2_eabi.cmd ← 外设寄存器地址映射

src_driver/                              ← DriverLib源文件
├── adc.c
├── cla.c
├── cmpss.c
├── eqep.c
├── gpio.c
├── interrupt.c
├── ipc.c
├── memcfg.c
├── sysctl.c
└── xbar.c
```

---

## 六、CPU1项目修改

### 6.1 需要修改的文件

当前CPU1项目 `dual_axis_servo_drive_fcl_qep_f2837x` 需要做以下修改：

#### 6.1.1 main函数修改 (dual_axis_servo_drive.c)

在 `main()` 中添加：

```c
// === 新增：IPC和CPU2启动 ===

// 1. 配置IPC共享内存
HAL_setupIPC_CPU1();

// 2. 转移Motor2外设所有权给CPU2
// PWM
SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL0_EPWM,
    4, SYSCTL_CPUSEL_CPU2);  // EPWM4
SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL0_EPWM,
    5, SYSCTL_CPUSEL_CPU2);  // EPWM5
SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL0_EPWM,
    6, SYSCTL_CPUSEL_CPU2);  // EPWM6

// ADC - 注意：ADC模块是共享的，两个电机用不同SOC
// 如果CPU2需要独立配置ADC，需要转移ADC所有权
// 但通常ADC由CPU1配置，CPU2通过共享内存读取结果
// 或者将部分ADC模块转给CPU2

// QEP
SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL2_EQEP,
    2, SYSCTL_CPUSEL_CPU2);  // EQEP2

// SPI
SysCtl_selectCPUForPeripheral(SYSCTL_CPUSEL6_SPI,
    2, SYSCTL_CPUSEL_CPU2);  // SPIB

// GPIO控制权转移（M2相关GPIO）
GPIO_setControllerCore(6, GPIO_CORE_CPU2);   // EPWM4A
GPIO_setControllerCore(7, GPIO_CORE_CPU2);   // EPWM4B
GPIO_setControllerCore(8, GPIO_CORE_CPU2);   // EPWM5A
GPIO_setControllerCore(9, GPIO_CORE_CPU2);   // EPWM5B
GPIO_setControllerCore(10, GPIO_CORE_CPU2);  // EPWM6A
GPIO_setControllerCore(11, GPIO_CORE_CPU2);  // EPWM6B
GPIO_setControllerCore(26, GPIO_CORE_CPU2);  // EN_GATE_M2
GPIO_setControllerCore(31, GPIO_CORE_CPU2);  // LED2
GPIO_setControllerCore(54, GPIO_CORE_CPU2);  // EQEP2A
GPIO_setControllerCore(55, GPIO_CORE_CPU2);  // EQEP2B
GPIO_setControllerCore(57, GPIO_CORE_CPU2);  // EQEP2I
GPIO_setControllerCore(63, GPIO_CORE_CPU2);  // SPISIMOB
GPIO_setControllerCore(64, GPIO_CORE_CPU2);  // SPISOMIB
GPIO_setControllerCore(65, GPIO_CORE_CPU2);  // SPICLKB
GPIO_setControllerCore(66, GPIO_CORE_CPU2);  // SPISTEB

// 3. 启动CPU2（仅Flash模式下使用）
#ifdef _FLASH
Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
#endif

// 4. IPC同步 - 通知CPU2可以开始
IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);

// 5. 等待CPU2就绪
while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1));
IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1);

// 6. 等待CPU2完成初始化
while(!(ipcDataToCPU1->statusFlag & IPC_STS_CPU2_READY));
```

#### 6.1.2 删除CPU1中的Motor2控制代码

CPU1不再需要：
- `motor2ControlISR()` — 移到CPU2
- `buildLevelX_M2()` 系列函数 — 移到CPU2
- Motor2的HAL初始化（`halMtrHandle[MTR_2]` 相关代码）
- Motor2的 `initMotorParameters(&motorVars[1], ...)` 
- Motor2的 `runOffsetsCalculation(&motorVars[1])`

CPU1保留：
- Motor1的完整控制链路
- 状态机（A/B/C任务）
- SCI通信
- 通过IPC向CPU2发送M2的参考值

#### 6.1.3 HAL修改

在 `dual_axis_servo_drive_hal.c` 中：
- `HAL_setupGPIOs()`: 保留所有GPIO配置（CPU1负责统一配置）
- `HAL_setupADCs()`: 只配置M1的ADC SOC（M2的SOC由CPU2配置）
- `HAL_setupMotorPWMs()`: 只配置M1的PWM
- `HAL_setupInterrupts()`: 只注册M1的ISR
- 新增 `HAL_setupIPC_CPU1()` 函数

#### 6.1.4 链接文件修改

修改 `dual_axis_f2837x_ram_lnk_cpu1.cmd`：
- 将 `.text` 从 `RAMGS0-3` 改为 `RAMGS4-7`（腾出GS0给IPC）
- 或者将GS0拆分：一部分给IPC，一部分给代码

---

## 七、CPU2项目关键代码

### 7.1 CPU2 main函数 (dual_axis_servo_drive_cpu2.c)

参考 `vacuum-valve-control-system-master/dual_axis_servo_drive_fcl_qep_f2837x_cpu2/sources/dual_axis_servo_drive_cpu2.c`

CPU2的main函数流程：
```c
void main(void)
{
    // 1. 初始化
    Device_init();
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    // 2. IPC同步 - 等待CPU1准备好
    IPC_waitForFlag(IPC_CPU2_L_CPU1_R, IPC_FLAG0);
    IPC_ackFlagRtoL(IPC_CPU2_L_CPU1_R, IPC_FLAG0);
    IPC_setFlagLtoR(IPC_CPU2_L_CPU1_R, IPC_FLAG1);

    // 3. 初始化HAL
    halHandle = HAL_init(&hal, sizeof(hal));
    halMtrHandle[MTR_1] = HAL_MTR_init(&halMtr[MTR_1], sizeof(halMtr[MTR_1]));
    halMtrHandle[MTR_2] = HAL_MTR_init(&halMtr[MTR_2], sizeof(halMtr[MTR_2]));

    // 4. 配置外设
    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);
    HAL_setParams(halHandle);
    HAL_setMotorParams(halMtrHandle[MTR_1]);
    HAL_setMotorParams(halMtrHandle[MTR_2]);
    
    // 5. 配置IPC
    HAL_setupIPC();
    
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // 6. 初始化电机参数
    initMotorParameters(&motorVars[0], halMtrHandle[0]);
    initMotorParameters(&motorVars[1], halMtrHandle[1]);
    initControlVars(&motorVars[0]);
    initControlVars(&motorVars[1]);

    // 7. 配置过流保护
    HAL_setupMotorFaultProtection(halMtrHandle[MTR_1], motorVars[MTR_1].currentLimit);
    HAL_setupMotorFaultProtection(halMtrHandle[MTR_2], motorVars[MTR_2].currentLimit);

    // 8. 状态机初始化
    Alpha_State_Ptr = &A0;
    A_Task_Ptr = &A1;
    B_Task_Ptr = &B1;
    C_Task_Ptr = &C1;

    // 9. 等待使能
    while(enableFlag == false) { backTicker++; }

    // 10. 配置并使能中断
    HAL_setupInterrupts(halMtrHandle[MTR_1]);
    HAL_setupInterrupts(halMtrHandle[MTR_2]);
    runOffsetsCalculation(&motorVars[0]);
    runOffsetsCalculation(&motorVars[1]);
    HAL_enableInterrupts(halMtrHandle[MTR_1]);
    HAL_enableInterrupts(halMtrHandle[MTR_2]);

    EINT;
    ERTM;

    // 11. 主循环
    for(;;)
    {
        (*Alpha_State_Ptr)();
        runSyncControl();
    }
}
```

### 7.2 CPU2 HAL (dual_axis_servo_drive_hal_cpu2.c)

CPU2的HAL与CPU1的HAL结构相同，但有以下区别：
- `HAL_init()`: 初始化ADC和CLA句柄
- `HAL_MTR_init()`: 初始化M1和M2的PWM/CMPSS/SPI/QEP句柄
- `HAL_setParams()`: 配置CLA、ADC（不配置GPIO，由CPU1负责）
- `HAL_setupGPIOs()`: CPU2版本中仍然调用，但所有GPIO的MasterCore设为CPU1
- `HAL_setupIPC()`: 初始化IPC共享内存指针

---

## 八、分步验证方案

### 第一步：GPIO闪烁验证（已完成 ✅）

在 `ipc_ex2_gpio_sysconfig` 项目中已验证：
- CPU1控制GPIO0闪烁（500ms）
- CPU2控制GPIO1闪烁（300ms）
- 确认双核调试环境正常工作
- 确认GPIO控制权转移机制（`GPIO_setControllerCore`）

### 第二步：IPC通信验证

目标：验证双核间共享内存通信正常

1. 在ipc_ex2项目基础上，添加IPC共享内存测试
2. CPU1写入一个计数器到GS0 RAM
3. CPU2读取并验证，然后写回反馈
4. 通过LED闪烁频率变化确认通信成功

```c
// CPU1:
volatile uint32_t *sharedCounter = (volatile uint32_t *)0x0000C000;
*sharedCounter = 12345;

// CPU2:
volatile uint32_t *sharedCounter = (volatile uint32_t *)0x0000C000;
if(*sharedCounter == 12345) {
    // 通信成功，改变LED闪烁频率
}
```

### 第三步：创建CPU2空项目框架

1. 在CCS Theia中创建CPU2项目
2. 复制参考项目的源文件
3. 配置编译选项（include路径、预定义宏、链接库）
4. 配置链接文件（使用CPU2版本的RAM cmd）
5. 编译通过即可，暂不运行

### 第四步：CPU2单电机控制验证

1. CPU2项目中只保留Motor2的控制代码
2. CPU1负责：系统初始化 + GPIO配置 + 外设所有权转移 + IPC同步
3. CPU2负责：Motor2的PWM/ADC/QEP/CLA初始化 + 电流环ISR
4. 先用 BUILDLEVEL 1 验证PWM输出波形
5. 再用 BUILDLEVEL 2 验证ADC采样和电流检测
6. 逐步提升到完整FOC控制

### 第五步：双核双电机联调

1. CPU1控制Motor1（完整FOC）
2. CPU2控制Motor2（完整FOC）
3. CPU1通过IPC发送Motor2的参考值
4. CPU2通过IPC返回Motor2的反馈数据
5. 验证两个电机可以独立运行
6. 验证同步控制功能

### 第六步：Flash烧录验证

1. 将两个项目都切换到Flash配置
2. CPU1使用 `dual_axis_f2837x_flash_lnk_cpu1.cmd`
3. CPU2使用 `dual_axis_f2837x_flash_lnk_cpu2.cmd`
4. CPU1的main中添加 `Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH)`
5. 烧录并验证脱机运行

---

## 九、多核调试项目配置 (system.xml)

参考 `ipc_ex2_gpio_sysconfig_multi/system.xml` 的格式，创建双轴伺服的多核调试项目：

```xml
<?xml version="1.0" encoding="UTF-8"?>
<system xmlns="http://www.ti.com/ccstudio/system">
    <configuration name="dual_axis_servo_multi">
        <core name="CPU1">
            <project name="dual_axis_servo_drive_fcl_qep_f2837x"/>
        </core>
        <core name="CPU2">
            <project name="dual_axis_servo_drive_fcl_qep_f2837x_cpu2"/>
        </core>
    </configuration>
</system>
```

在CCS Theia中：
1. 创建一个新的 Multi-Core 项目
2. 绑定CPU1和CPU2项目
3. 调试时会自动加载两个核的程序

---

## 十、常见问题和注意事项

### 10.1 JTAG调试模式注意事项

- **不要使用 `Device_bootCPU2()`**：在JTAG RAM调试模式下，Boot ROM未就绪，调用会阻塞
- **加载顺序**：通过调试器分别加载CPU1和CPU2程序
- **运行顺序**：先运行CPU2（让它等待IPC同步），再运行CPU1（发送同步信号）
- **或者同时运行**：使用Multi-Core调试项目同时启动两个核

### 10.2 GPIO控制权

- F2837xD中，**只有CPU1可以配置GPIO的MasterCore**
- CPU2无法自行获取GPIO控制权，必须由CPU1通过 `GPIO_setControllerCore()` 转移
- GPIO的PinConfig、PadConfig、Direction等也建议由CPU1统一配置

### 10.3 外设所有权转移

- 使用 `SysCtl_selectCPUForPeripheral()` 转移外设所有权
- 转移后，CPU1无法再访问该外设的寄存器
- ADC模块比较特殊：两个电机共用同一组ADC（A/B/C/D），通过不同SOC号区分
  - 方案A：ADC由CPU1配置，CPU2通过共享内存读取结果
  - 方案B：将ADC所有权转给CPU2，由CPU2统一配置两个电机的ADC
  - **推荐方案B**：参考项目中CPU2负责所有ADC配置

### 10.4 CLA共享

- CLA1只有一个，两个电机的CLA任务（Task1-4 for M1, Task5-8 for M2）需要在同一个核上运行
- 如果CPU2负责两个电机的电流环，CLA也应该在CPU2上
- 如果拆分为CPU1=M1, CPU2=M2，则需要考虑CLA的归属
  - **推荐**：CLA归CPU2，CPU1的M1电流环用纯CPU计算（不用CLA加速）
  - **或者**：两个电机的电流环都在CPU2上运行（CPU2=实时控制核心）

### 10.5 TBCLKSYNC同步

- PWM时钟同步信号 `SYSCTL_PERIPH_CLK_TBCLKSYNC` 只能由CPU1控制
- CPU2配置PWM前，CPU1需要先禁用TBCLKSYNC
- CPU2配置完成后，CPU1再使能TBCLKSYNC
- 这需要通过IPC协调时序

### 10.6 编译配置差异

| 配置项 | CPU1 | CPU2 |
|--------|------|------|
| 预定义宏 | CPU1 | CPU2, _DUAL_HEADERS |
| 链接文件 | dual_axis_f2837x_ram_lnk_cpu1.cmd | dual_axis_f2837x_ram_lnk_cpu2.cmd |
| 启动文件 | F2837xD_CodeStartBranch.asm | F2837xD_CodeStartBranch.asm |
| HAL文件 | dual_axis_servo_drive_hal.c | dual_axis_servo_drive_hal_cpu2.c |
| 主程序 | dual_axis_servo_drive.c | dual_axis_servo_drive_cpu2.c |

---

## 十一、参考文件路径汇总

| 文件 | 路径 |
|------|------|
| CPU1主程序 | `dual_axis_servo_drive_fcl_qep_f2837x/sources/dual_axis_servo_drive.c` |
| CPU1 HAL | `dual_axis_servo_drive_fcl_qep_f2837x/sources/dual_axis_servo_drive_hal.c` |
| IPC头文件 | `dual_axis_servo_drive_fcl_qep_f2837x/include/cpu2.h` |
| CPU2参考主程序 | `vacuum-valve-control-system-master/.../sources/dual_axis_servo_drive_cpu2.c` |
| CPU2参考HAL | `vacuum-valve-control-system-master/.../sources/dual_axis_servo_drive_hal_cpu2.c` |
| CPU2参考HAL头 | `vacuum-valve-control-system-master/.../headers/dual_axis_servo_drive_hal_cpu2.h` |
| 外设定义 | `vacuum-valve-control-system-master/.../headers/dual_axis_servo_drive_user.h` |
| CPU2 RAM cmd | `vacuum-valve-control-system-master/.../cmd/dual_axis_f2837x_ram_lnk_cpu2.cmd` |
| CPU2 Flash cmd | `vacuum-valve-control-system-master/.../cmd/dual_axis_f2837x_flash_lnk_cpu2.cmd` |
| IPC验证项目 | `ipc_ex2_gpio_sysconfig_cpu1/` + `ipc_ex2_gpio_sysconfig_cpu2/` |
