# 双轴伺服驱动器双CPU移植方案

## 📋 现状分析

### 当前程序结构 (`dual_axis_servo_drive_fcl_qep_f2837x`)
- **单项目**：包含CPU1和CPU2代码在同一项目中
- **架构**：双核但代码耦合度高
- **问题**：代码组织不够清晰，不利于维护

### 目标程序结构 (`vacuum-valve-control-system-master`)
- **双项目分离**：CPU1和CPU2独立编译
- **清晰分工**：
  - CPU1：高级控制（速度/位置环）、SCI通信、状态机
  - CPU2：实时控制（电流环）、硬件驱动、ADC/PWM配置
- **IPC通信**：通过共享内存+IPC标志位通信

---

## 🎯 移植目标

将当前程序重构为：
1. **独立的CPU1项目**：负责高级控制逻辑
2. **独立的CPU2项目**：负责实时电机控制
3. **共享IPC头文件**：定义双核通信协议
4. **清晰的内存划分**：GS0 RAM用于IPC数据交换

---

## 📝 详细移植步骤

### 第一步：创建项目目录结构

```
dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1/
├── .ccsproject
├── .cproject
├── .project
├── F2837x_FLASH/
├── F2837x_RAM/
├── headers/
│   ├── dual_axis_servo_ctrl_hal_cpu1.h
│   ├── dual_axis_servo_drive_ipc.h        # 共享IPC定义
│   ├── dual_axis_servo_drive_settings.h
│   ├── dual_axis_servo_drive_user.h
│   ├── motion_control.h
│   └── sfra_settings.h
├── sources/
│   ├── dual_axis_servo_ctrl_cpu1.c        # CPU1控制逻辑
│   ├── dual_axis_servo_ctrl_hal_cpu1.c    # CPU1 HAL
│   ├── dual_axis_servo_ctrl_main_cpu1.c   # CPU1 main函数
│   ├── dual_axis_servo_ctrl_user_cpu1.c   # 用户参数
│   ├── motion_control.c                   # 运动控制库
│   ├── dlog_4ch_f.c
│   ├── sfra_gui_scicomms_driverlib.c
│   └── sfra_gui.c
├── src_device/
│   └── F2837xD_GlobalVariableDefs.c
├── src_driver/
│   ├── cputimer.c
│   ├── dac.c
│   ├── gpio.c
│   ├── interrupt.c
│   ├── ipc.c
│   ├── memcfg.c
│   ├── sci.c
│   └── sysctl.c
└── targetConfigs/
```

### 第二步：创建IPC通信头文件

**文件**: `headers/dual_axis_servo_drive_ipc.h`

```c
//#############################################################################
// IPC通信定义 - 双核电机控制
//#############################################################################

#ifndef DUAL_AXIS_SERVO_DRIVE_IPC_H
#define DUAL_AXIS_SERVO_DRIVE_IPC_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// IPC共享内存地址（GS0 RAM，双核均可访问）
#define IPC_DATA_FROM_CPU1_ADDR     0x0000C000  // GS0 RAM起始地址
#define IPC_DATA_TO_CPU1_ADDR       0x0000C200  // GS0 RAM + 512字节

// IPC命令标志位
#define IPC_CMD_MOTOR1_ENABLE       0x0001
#define IPC_CMD_MOTOR2_ENABLE       0x0002
#define IPC_CMD_MOTOR1_DISABLE      0x0004
#define IPC_CMD_MOTOR2_DISABLE      0x0008
#define IPC_CMD_CLEAR_FAULTS        0x0010
#define IPC_CMD_UPDATE_PARAMS       0x0020

// IPC状态标志位
#define IPC_STS_CPU2_READY          0x0001
#define IPC_STS_MOTOR1_RUNNING      0x0002
#define IPC_STS_MOTOR2_RUNNING      0x0004
#define IPC_STS_MOTOR1_FAULT        0x0008
#define IPC_STS_MOTOR2_FAULT        0x0010

// 电机控制状态枚举
typedef enum
{
    MOTOR_CTRL_STOP = 0,
    MOTOR_CTRL_IDLE,
    MOTOR_CTRL_OFFSET_CAL,
    MOTOR_CTRL_CURRENT_LOOP,
    MOTOR_CTRL_SPEED_LOOP,
    MOTOR_CTRL_POSITION_LOOP,
    MOTOR_CTRL_FAULT
} MOTOR_CtrlState_e;

// CPU1到CPU2的数据结构
typedef struct _IPC_DataFromCPU1_t_
{
    uint16_t  commandFlag;              // 命令标志
    uint16_t  ctrlStateM1;              // 电机1控制状态
    uint16_t  ctrlStateM2;              // 电机2控制状态
    uint16_t  enableMotor1;             // 电机1使能
    uint16_t  enableMotor2;             // 电机2使能
    
    // 电机1参考值
    float32_t speedRefM1;               // 速度参考 (pu)
    float32_t IdRefM1;                  // Id电流参考 (pu)
    float32_t IqRefM1;                  # Iq电流参考 (pu)
    float32_t positionRefM1;            // 位置参考 (pu)
    
    // 电机2参考值
    float32_t speedRefM2;
    float32_t IdRefM2;
    float32_t IqRefM2;
    float32_t positionRefM2;
    
    // PI参数（可动态调整）
    float32_t Kp_IdM1, Ki_IdM1;
    float32_t Kp_IqM1, Ki_IqM1;
    float32_t Kp_IdM2, Ki_IdM2;
    float32_t Kp_IqM2, Ki_IqM2;
    
} IPC_DataFromCPU1_t;

// CPU2到CPU1的数据结构
typedef struct _IPC_DataToCPU1_t_
{
    uint16_t  statusFlag;               // 状态标志
    uint16_t  faultFlag;                // 故障标志
    
    // 电机1反馈
    float32_t speedFbkM1;               // 速度反馈 (pu)
    float32_t posFbkM1;                 // 位置反馈 (pu)
    float32_t IdFbkM1;                  // Id电流反馈 (pu)
    float32_t IqFbkM1;                  # Iq电流反馈 (pu)
    float32_t VdOutM1;                  // Vd输出 (pu)
    float32_t VqOutM1;                  // Vq输出 (pu)
    
    // 电机2反馈
    float32_t speedFbkM2;
    float32_t posFbkM2;
    float32_t IdFbkM2;
    float32_t IqFbkM2;
    float32_t VdOutM2;
    float32_t VqOutM2;
    
    // 诊断信息
    uint32_t  isrCount;                 // ISR计数
    float32_t dcBusVoltage;             // 直流母线电压 (pu)
    
} IPC_DataToCPU1_t;

#ifdef __cplusplus
}
#endif

#endif // DUAL_AXIS_SERVO_DRIVE_IPC_H
```

### 第三步：提取CPU1代码

**文件**: `sources/dual_axis_servo_ctrl_main_cpu1.c`

```c
//#############################################################################
// CPU1主控程序 - 高级控制逻辑
//#############################################################################

#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include "dual_axis_servo_drive_ipc.h"
#include "device.h"
#include "driverlib.h"

// IPC数据指针
IPC_DataFromCPU1_t *ipcDataFromCPU1;
IPC_DataToCPU1_t   *ipcDataToCPU1;

// HAL句柄
HAL_CPU1_Handle halCpu1Handle;
HAL_CPU1_Obj    halCpu1;

// 控制变量
uint16_t vTimer0[4] = {0};
uint16_t vTimer1[4] = {0};
uint16_t vTimer2[4] = {0};

// 状态机函数
void (*Alpha_State_Ptr)(void);
void (*A_Task_Ptr)(void);
void (*B_Task_Ptr)(void);
void (*C_Task_Ptr)(void);

// 主函数
void main(void)
{
    // 1. 初始化设备时钟和外设
    Device_init();
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();
    
    // 2. 初始化CPU1 HAL
    halCpu1Handle = HAL_CPU1_init(&halCpu1, sizeof(halCpu1));
    
    // 3. 配置IPC
    HAL_setupIPC_CPU1();
    
    // 4. 同步CPU2
    IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);
    while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1));
    IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1);
    
    // 5. 启动CPU2核心
    #ifdef _STANDALONE
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
    #endif
    
    // 6. 等待CPU2就绪
    while(!(ipcDataToCPU1->statusFlag & IPC_STS_CPU2_READY));
    
    // 7. 配置GPIO
    HAL_setupGPIOs(halCpu1Handle);
    
    // 8. 配置定时器（状态机调度）
    HAL_setupCpuTimer(CPUTIMER0_BASE, MICROSEC_50);   // 50us - A任务
    HAL_setupCpuTimer(CPUTIMER1_BASE, MICROSEC_100);  // 100us - B任务
    HAL_setupCpuTimer(CPUTIMER2_BASE, MICROSEC_150);  // 150us - C任务
    
    // 9. 初始化状态机
    Alpha_State_Ptr = &A0;
    A_Task_Ptr = &A1;
    B_Task_Ptr = &B1;
    C_Task_Ptr = &C1;
    
    // 10. 使能中断
    EINT;
    ERTM;
    
    // 11. 主循环 - CPU1处理高级控制任务
    for(;;)
    {
        (*Alpha_State_Ptr)();
    }
}

// A任务（50us周期）- 速度环控制
void A0(void) { (*A_Task_Ptr)(); }
void A1(void) { /* 电机1速度环 */ A_Task_Ptr = &A2; }
void A2(void) { /* 电机2速度环 */ A_Task_Ptr = &A3; }
void A3(void) { /* 系统状态管理 */ A_Task_Ptr = &A1; }

// B任务（100us周期）- 位置环控制
void B0(void) { (*B_Task_Ptr)(); }
void B1(void) { /* 电机1位置环 */ B_Task_Ptr = &B2; }
void B2(void) { /* 电机2位置环 */ B_Task_Ptr = &B3; }
void B3(void) { /* 监控和故障处理 */ B_Task_Ptr = &B1; }

// C任务（150us周期）- 通信和用户接口
void C0(void) { (*C_Task_Ptr)(); }
void C1(void) { /* SCI通信 */ C_Task_Ptr = &C2; }
void C2(void) { /* SFRA分析 */ C_Task_Ptr = &C3; }
void C3(void) { /* 用户接口 */ C_Task_Ptr = &C1; }
```

### 第四步：提取CPU2代码

**文件**: `sources/dual_axis_servo_drive_cpu2.c` (基于现有cpu2.c)

```c
//#############################################################################
// CPU2实时控制程序 - 电流环和硬件驱动
//#############################################################################

#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_drive_hal_cpu2.h"
#include "dual_axis_servo_drive_ipc.h"
#include "device.h"
#include "driverlib.h"

// IPC数据指针
IPC_DataFromCPU1_t *ipcDataFromCPU1;
IPC_DataToCPU1_t   *ipcDataToCPU1;

// 电机控制ISR
__interrupt void motor1ControlISR(void);
__interrupt void motor2ControlISR(void);

void main(void)
{
    // 1. 初始化设备
    Device_init();
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();
    
    // 2. 配置IPC
    HAL_setupIPC_CPU2();
    
    // 3. 同步CPU1
    while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG0));
    IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG0);
    IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG1);
    
    // 4. 设置CPU2就绪标志
    ipcDataToCPU1->statusFlag |= IPC_STS_CPU2_READY;
    
    // 5. 配置硬件外设（PWM、ADC、QEP等）
    HAL_setupPWM();
    HAL_setupADC();
    HAL_setupQEP();
    HAL_setupCMPSS();
    
    // 6. 配置CLA（快速电流环）
    HAL_setupCLA();
    
    // 7. 使能中断
    EINT;
    ERTM;
    
    // 8. 主循环 - CPU2处理实时任务（主要在ISR中）
    for(;;)
    {
        // 后台任务（如有）
        asm(" NOP");
    }
}

// 电机1控制ISR - 电流环（5kHz/10kHz）
#pragma CODE_SECTION(motor1ControlISR, ".TI.ramfunc");
__interrupt void motor1ControlISR(void)
{
    // 1. 读取ADC（电流、电压）
    // 2. Clarke/Park变换
    // 3. 电流环PI控制（从IPC获取参考值）
    // 4. 反Park变换
    // 5. SVPWM计算
    // 6. 更新PWM占空比
    // 7. 更新IPC反馈数据
    
    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
```

### 第五步：配置链接文件

**CPU1链接文件**: `src_device/dual_axis_f2837x_ram_lnk_cpu1.cmd`

```cmd
MEMORY
{
    // ... 其他内存区域 ...
    
    // IPC共享内存（GS0 RAM）
    GS0RAM           : origin = 0x00C000, length = 0x001000
}

SECTIONS
{
    // IPC数据段
    ipcDataFromCPU1  : > GS0RAM, ALIGN(4)
    ipcDataToCPU1    : > GS0RAM, ALIGN(4)
}
```

---

## 🔄 关键修改点总结

| 模块 | 原程序 | 移植后 |
|------|--------|--------|
| **项目结构** | 单项目 | 双项目（CPU1+CPU2） |
| **main函数** | 一个main | 两个独立main |
| **状态机** | 集中管理 | CPU1负责高级任务 |
| **电流环ISR** | 在main.c中 | CPU2专属 |
| **IPC通信** | 隐式 | 明确定义结构体 |
| **内存分配** | 混合 | GS0 RAM专用IPC |

---

## ✅ 验证步骤

1. **编译验证**
   - 分别编译CPU1和CPU2项目
   - 检查链接文件无冲突

2. **功能验证**
   - CPU1能成功启动CPU2
   - IPC数据交换正常
   - 电机控制响应正确

3. **性能验证**
   - 电流环周期稳定（50μs）
   - 速度环周期稳定（100μs）
   - 无IPC通信超时

---

## 📚 参考资料

- `vacuum-valve-control-system-master/dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1/`
- `vacuum-valve-control-system-master/dual_axis_servo_drive_fcl_qep_f2837x_cpu2/`
- TI C2000 IPC通信指南
- F2837xD Dual-Core Technical Reference Manual
