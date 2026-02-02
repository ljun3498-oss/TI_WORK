# F2837x 双轴伺服驱动 - CPU2 项目

## 项目概述

本项目是F28379D双核双轴伺服驱动系统的CPU2部分。CPU2专注于实时电流环控制，运行快速电流环（FCL）算法，实现高性能的双轴电机控制。

## 核心功能

CPU2主要负责以下功能：

1. **快速电流环控制**
   - 双轴电流环（10 kHz）
   - Park/Clarke变换
   - PI控制器
   - 反Park变换
   - SVGEN空间矢量调制

2. **PWM生成**
   - 双电机6路PWM输出
   - 死区时间管理
   - PWM同步

3. **ADC采样**
   - 三相电流采样
   - 母线电压采样
   - 与PWM同步

4. **位置/速度检测**
   - QEP编码器接口
   - 速度计算
   - 位置反馈

5. **故障保护**
   - CMPSS过流保护
   - 硬件故障检测
   - 快速PWM关断

6. **IPC通信**
   - 接收CPU1的控制命令
   - 向CPU1发送反馈数据

## 目录结构

```
f2837x_cpu2/
├── ccs/
│   └── sensored_foc/
│       └── dual_axis_servo_drive_fcl_qep_f2837x_cpu2.projectspec
├── cmd/
│   ├── dual_axis_f2837x_ram_lnk_cpu2.cmd
│   ├── dual_axis_f2837x_flash_lnk_cpu2.cmd
│   └── F2837xD_Headers_nonBIOS_cpu2_eabi.cmd
├── include/
│   ├── dual_axis_servo_drive_hal_cpu2.h
│   ├── dual_axis_servo_drive_settings.h
│   ├── dual_axis_servo_drive_user.h
│   ├── dual_axis_servo_drive_ipc.h
│   └── sfra_settings.h
├── source/
│   ├── dual_axis_servo_drive_main_cpu2.c
│   ├── dual_axis_servo_drive_cpu2.c
│   ├── dual_axis_servo_drive_hal_cpu2.c
│   ├── dual_axis_servo_drive_user_cpu2.c
│   └── dual_axis_servo_drive_cla_tasks.cla
└── README.md
```

## 需要实现的源文件

### 1. dual_axis_servo_drive_main_cpu2.c

主程序文件，包含main()函数：

```c
// 主要内容：
// - Device_init()
// - HAL_init()
// - HAL_MTR_init() (两个电机)
// - IPC初始化
// - 与CPU1同步
// - 使能中断
// - 主循环（后台任务）
```

**关键代码框架**:

```c
void main(void)
{
    // 初始化设备
    Device_init();
    Device_initGPIO();
    
    // 初始化PIE
    Interrupt_initModule();
    Interrupt_initVectorTable();
    
    // 与CPU1同步
    #ifdef _DUAL_HEADERS
    IPC_waitForFlag(IPC_CPU2_L_CPU1_R, IPC_FLAG0);
    IPC_ackFlagRtoL(IPC_CPU2_L_CPU1_R, IPC_FLAG0);
    IPC_setFlagLtoR(IPC_CPU2_L_CPU1_R, IPC_FLAG1);
    #endif
    
    // 初始化HAL
    halHandle = HAL_init(&hal, sizeof(hal));
    halMtrHandle[MTR_1] = HAL_MTR_init(&halMtr[MTR_1], sizeof(halMtr[MTR_1]));
    halMtrHandle[MTR_2] = HAL_MTR_init(&halMtr[MTR_2], sizeof(halMtr[MTR_2]));
    
    // 设置IPC
    HAL_setupIPC();
    
    // 配置外设
    HAL_setParams(halHandle);
    HAL_setMotorParams(halMtrHandle[MTR_1]);
    HAL_setMotorParams(halMtrHandle[MTR_2]);
    
    // 使能中断
    EINT;
    ERTM;
    
    // 主循环
    for(;;)
    {
        // 后台任务
    }
}
```

### 2. dual_axis_servo_drive_cpu2.c

电流环控制算法实现：

```c
// 主要内容：
// - motor1ControlISR() - 电机1电流环ISR
// - motor2ControlISR() - 电机2电流环ISR
// - FCL算法实现
// - IPC数据更新
```

**ISR框架**:

```c
__interrupt void motor1ControlISR(void)
{
    // 读取IPC命令
    // 读取ADC电流
    // Clarke变换
    // Park变换
    // PI控制
    // 反Park变换
    // SVGEN
    // 更新PWM
    // 更新IPC反馈数据
    // 清除中断标志
    HAL_ackInt_M1(halMtrHandle[MTR_1]);
}
```

### 3. dual_axis_servo_drive_hal_cpu2.c

硬件抽象层实现：

```c
// 主要内容：
// - HAL_init() - 初始化HAL对象
// - HAL_MTR_init() - 初始化电机HAL对象
// - HAL_setupADCs() - ADC配置
// - HAL_setupMotorPWMs() - PWM配置
// - HAL_setupQEP() - QEP配置
// - HAL_setupCMPSS() - CMPSS过流保护配置
// - HAL_setupCLA() - CLA配置
// - HAL_setupInterrupts() - 中断配置
// - HAL_setupIPC() - IPC初始化
```

**关键函数实现要点**:

#### HAL_setupMotorPWMs()
- 配置EPWM1-3（电机1）
- 配置EPWM4-6（电机2）
- 设置PWM频率为10 kHz
- 配置死区时间
- 设置ADC触发

#### HAL_setupADCs()
- 配置ADCA/B/C/D
- 设置SOC触发源（EPWM）
- 配置PPB（后处理块）
- 设置中断

#### HAL_setupCMPSS()
- 配置CMPSS1-6
- 设置过流阈值
- 配置数字滤波器
- 连接到TripZone

#### HAL_setupIPC()
```c
void HAL_setupIPC(void)
{
    // 设置共享内存指针
    ipcDataFromCPU1 = (IPC_DataFromCPU1_t *)IPC_DATA_FROM_CPU1_ADDR;
    ipcDataToCPU1 = (IPC_DataToCPU1_t *)IPC_DATA_TO_CPU1_ADDR;
    
    // 初始化IPC数据结构
    *ipcDataToCPU1 = (IPC_DataToCPU1_t)IPC_DATA_TO_CPU1_DEFAULTS;
}
```

### 4. dual_axis_servo_drive_user_cpu2.c

用户配置函数（可以与CPU1共享相同的user.c）

### 5. dual_axis_servo_drive_cla_tasks.cla

CLA任务实现（可选，用于加速计算）：

```c
// CLA Task 1: 电机1 Clarke/Park变换
// CLA Task 2: 电机2 Clarke/Park变换
// CLA Task 3: 电机1 反Park/SVGEN
// CLA Task 4: 电机2 反Park/SVGEN
```

## 电流环控制流程

### 时序图

```
PWM周期开始 (100μs @ 10kHz)
    ↓
ADC采样触发
    ↓
ADC转换完成 → 触发ISR
    ↓
motor1ControlISR() 执行:
    1. 读取ADC结果
    2. 读取QEP位置
    3. Clarke变换 (Ia,Ib,Ic → Iα,Iβ)
    4. Park变换 (Iα,Iβ,θ → Id,Iq)
    5. 读取IPC参考值 (IdRef, IqRef)
    6. PI控制 (Id, Iq)
    7. 反Park变换 (Vd,Vq,θ → Vα,Vβ)
    8. SVGEN (Vα,Vβ → Ta,Tb,Tc)
    9. 更新PWM占空比
   10. 更新IPC反馈数据
   11. 清除中断标志
    ↓
返回主循环
```

## IPC通信实现

### 读取CPU1命令

```c
// 在ISR中读取参考值
float32_t IdRef = ipcDataFromCPU1->IdRefM1;
float32_t IqRef = ipcDataFromCPU1->IqRefM1;
uint16_t enable = ipcDataFromCPU1->enableMotor1;
```

### 更新反馈数据

```c
// 在ISR中更新反馈
ipcDataToCPU1->IdFdbkM1 = motorVars[MTR_1].IdFbk;
ipcDataToCPU1->IqFdbkM1 = motorVars[MTR_1].IqFbk;
ipcDataToCPU1->speedM1 = motorVars[MTR_1].speed;
ipcDataToCPU1->positionM1 = motorVars[MTR_1].position;
ipcDataToCPU1->isrCountM1++;
```

## 硬件配置

### 电机1（M1）

- **PWM**: EPWM1/2/3
- **ADC**: 
  - Iu: ADCC2
  - Iv: ADCB2
  - Iw: ADCA2
  - Vdc: ADCD14
- **CMPSS**: CMPSS1/3/6
- **QEP**: EQEP1
- **SPI**: SPIA (DRV8305)
- **GPIO**: 
  - EN_GATE: GPIO124
  - nFAULT: GPIO24

### 电机2（M2）

- **PWM**: EPWM4/5/6
- **ADC**: 
  - Iu: ADCC4
  - Iv: ADCB4
  - Iw: ADCA4
  - Vdc: ADCD15
- **CMPSS**: CMPSS2/5/5
- **QEP**: EQEP2
- **SPI**: SPIB (DRV8305)
- **GPIO**: 
  - EN_GATE: GPIO26
  - nFAULT: GPIO14

## 性能要求

### 时序约束

- **电流环周期**: 100 μs (10 kHz)
- **ISR执行时间**: < 50 μs
- **FCL计算时间**: < 1 μs (CLA加速)
- **IPC更新时间**: < 1 μs

### CPU负载

- **目标CPU负载**: < 40%
- **ISR负载**: < 50%
- **后台任务**: < 10%

## 调试技巧

### 1. GPIO切换测量

```c
// ISR开始
GPIO_writePin(DEBUG_GPIO, 1);

// FCL计算
// ...

// ISR结束
GPIO_writePin(DEBUG_GPIO, 0);
```

### 2. 性能计数器

```c
// 在ISR中
uint32_t startCycle = CPUTimer_getTimerCount(CPUTIMER0_BASE);
// FCL计算
uint32_t endCycle = CPUTimer_getTimerCount(CPUTIMER0_BASE);
fclCycles = startCycle - endCycle;
```

### 3. 数据日志

使用DLOG模块记录关键变量：
- Id, Iq电流
- Vd, Vq电压
- 速度、位置
- PWM占空比

## 故障处理

### CMPSS过流保护

```c
// 在CMPSS配置中
CMPSS_configFilterHigh(cmpssBase, prescale, sampWin, thresh);
CMPSS_configLatchOnPWMSYNC(cmpssBase, true);

// 在TripZone中
EPWM_enableTripZoneSignals(epwmBase, EPWM_TZ_SIGNAL_DCAEVT1);
```

### 故障恢复

```c
// 清除故障
HAL_clearTZFlag(halMtrHandle[MTR_1]);

// 通知CPU1
ipcDataToCPU1->faultFlagM1 = 0;
```

## 增量构建

### BUILDLEVEL 1-2
由CPU1实现，CPU2可以运行但不执行实际控制

### BUILDLEVEL 3 (电流环)
CPU2实现：
- 电流采样
- Clarke/Park变换
- PI控制器
- 反Park/SVGEN
- PWM输出

### BUILDLEVEL 4-6
CPU2继续运行电流环，CPU1实现速度环和位置环

## 参考代码

### 参考原始单核项目

从 `solutions/boostxl_3phganinv/f2837x/` 复制以下代码：

1. **ISR主体**: `dual_axis_servo_drive.c` 中的 motor1ControlISR()
2. **HAL初始化**: `dual_axis_servo_drive_hal.c`
3. **FCL算法**: 保持不变
4. **CLA任务**: `dual_axis_servo_drive_cla_tasks.cla`

### 参考F2838x CPU2项目

从 `solutions/tidm_02006_multi_axis_drive/f2838x/` 参考：

1. **程序结构**: `multi_axis_lead_drive_main.c` (CPU2版本)
2. **IPC实现**: IPC数据交换方式
3. **HAL结构**: `multi_axis_lead_hal_cpu2.c`

## 开发步骤

### 步骤1: 创建主程序

1. 复制原始 `dual_axis_servo_drive.c` 的main()函数
2. 添加与CPU1的IPC同步代码
3. 移除CPU1特定的初始化（SCI、DAC等）
4. 保留电机控制相关初始化

### 步骤2: 修改ISR

1. 保持原始ISR的FCL算法不变
2. 添加IPC数据读取（参考值）
3. 添加IPC数据更新（反馈值）
4. 移除速度环和位置环代码（由CPU1实现）

### 步骤3: 实现HAL

1. 复制原始HAL函数
2. 移除CPU1特定外设（SCI、DAC、Timer）
3. 添加IPC初始化函数
4. 保持PWM、ADC、QEP、CMPSS配置不变

### 步骤4: 创建.projectspec

1. 复制原始.projectspec
2. 修改项目名称为 `dual_axis_servo_drive_fcl_qep_f2837x_cpu2`
3. 添加 `--define=CPU2`
4. 修改linker文件为CPU2版本
5. 移除CPU1特定的源文件

## 注意事项

1. **中断优先级**: 电流环ISR应设置为最高优先级
2. **实时性**: ISR执行时间必须小于PWM周期
3. **内存访问**: 避免在ISR中访问慢速内存
4. **IPC同步**: 使用原子操作或禁中断保护IPC数据
5. **CLA使用**: 使用CLA加速Park/Clarke变换

## 下一步

1. 完成源文件实现
2. 创建.projectspec文件
3. 单独测试CPU2功能（BUILDLEVEL 1-3）
4. 与CPU1联合调试
5. 性能优化

## 参考资料

- 原始单核项目: `solutions/boostxl_3phganinv/f2837x/`
- F2838x CPU2参考: `solutions/tidm_02006_multi_axis_drive/f2838x/`
- FCL库文档
- C2000Ware IPC示例

