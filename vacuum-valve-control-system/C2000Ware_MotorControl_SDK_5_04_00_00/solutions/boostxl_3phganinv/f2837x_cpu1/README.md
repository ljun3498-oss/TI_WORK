# F2837x 双轴伺服驱动 - CPU1 项目

## 项目概述

本项目是F28379D双核双轴伺服驱动系统的CPU1部分。CPU1负责高层控制任务，包括速度环、位置环、通信接口和用户界面。

## 核心功能

CPU1主要负责以下功能：

1. **系统初始化**
   - 设备时钟和外设初始化
   - GPIO配置
   - CPU2引导

2. **高层控制**
   - 速度环控制（1 kHz）
   - 位置环控制（500 Hz）
   - 轨迹规划

3. **通信接口**
   - SCI通信（SFRA、调试）
   - 用户命令处理
   - 数据日志

4. **IPC通信**
   - 向CPU2发送控制命令和参考值
   - 从CPU2接收反馈数据
   - 故障管理

## 目录结构

```
f2837x_cpu1/
├── ccs/
│   └── sensored_foc/
│       └── dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1.projectspec
├── cmd/
│   ├── dual_axis_f2837x_ram_lnk_cpu1.cmd
│   ├── dual_axis_f2837x_flash_lnk_cpu1.cmd
│   └── F2837xD_Headers_nonBIOS_cpu1_eabi.cmd
├── include/
│   ├── dual_axis_servo_ctrl_hal_cpu1.h
│   ├── dual_axis_servo_drive_settings.h
│   ├── dual_axis_servo_drive_user.h
│   ├── dual_axis_servo_drive_ipc.h
│   └── sfra_settings.h
├── source/
│   ├── dual_axis_servo_ctrl_main_cpu1.c
│   ├── dual_axis_servo_ctrl_cpu1.c
│   ├── dual_axis_servo_ctrl_hal_cpu1.c
│   └── dual_axis_servo_ctrl_user_cpu1.c
└── README.md
```

## 需要实现的源文件

### 1. dual_axis_servo_ctrl_main_cpu1.c

主程序文件，包含main()函数：

```c
// 主要内容：
// - Device_init()
// - HAL_CPU1_init()
// - IPC初始化
// - CPU2引导
// - 主循环（后台任务）
```

### 2. dual_axis_servo_ctrl_cpu1.c

控制算法实现：

```c
// 主要内容：
// - 速度环PI控制器
// - 位置环PID控制器
// - 状态机管理
// - 定时器中断服务程序
```

### 3. dual_axis_servo_ctrl_hal_cpu1.c

硬件抽象层实现：

```c
// 主要内容：
// - HAL_CPU1_init() - 初始化HAL对象
// - HAL_setupGPIOs() - GPIO配置
// - HAL_setupSCI() - SCI配置
// - HAL_setupCpuTimer() - 定时器配置
// - HAL_setupIPC_CPU1() - IPC初始化
// - HAL_bootCPU2() - 引导CPU2
```

### 4. dual_axis_servo_ctrl_user_cpu1.c

用户配置函数：

```c
// 主要内容：
// - 电机参数配置
// - 控制器参数配置
// - 用户接口函数
```

## IPC通信机制

### 数据流

```
CPU1 → CPU2:
- 电机使能命令
- 速度参考
- 电流参考（Id, Iq）
- 位置参考
- PI参数

CPU2 → CPU1:
- 速度反馈
- 位置反馈
- 电流反馈
- 故障状态
- 性能计数器
```

### IPC数据结构

IPC数据结构定义在 `dual_axis_servo_drive_ipc.h` 中：

- `IPC_DataFromCPU1_t` - CPU1到CPU2的数据
- `IPC_DataToCPU1_t` - CPU2到CPU1的数据

### 共享内存地址

- IPC_DATA_FROM_CPU1_ADDR: 0x0000C000 (GS0 RAM)
- IPC_DATA_TO_CPU1_ADDR: 0x0000C200 (GS0 RAM + 512 bytes)

## 构建配置

### 编译选项

- **RAM配置**: 用于调试，代码运行在RAM中
- **FLASH配置**: 用于生产，代码运行在FLASH中

### 宏定义

- `CPU1` - 标识CPU1代码
- `_DUAL_HEADERS` - 双核头文件支持
- `F2837x_DEVICE` - 目标器件
- `_LAUNCHXL_F28379D` - LaunchPad开发板
- `_BOOSTXL_3PHGANINV` - BoosterPack板

### 增量构建级别

通过修改 `dual_axis_servo_drive_settings.h` 中的 `BUILDLEVEL` 宏：

- `FCL_LEVEL1`: 验证PWM生成
- `FCL_LEVEL2`: 验证ADC和传感器
- `FCL_LEVEL3`: 验证电流环（由CPU2实现）
- `FCL_LEVEL4`: 验证速度环（CPU1实现）
- `FCL_LEVEL5`: 验证位置环（CPU1实现）
- `FCL_LEVEL6`: SFRA频率响应分析

## 开发步骤

### 步骤1: 创建主程序框架

参考原始项目 `f2837x/dual_axis_servo_drive.c`，创建CPU1主程序：

1. 复制设备初始化代码
2. 添加IPC初始化
3. 添加CPU2引导代码
4. 实现主循环

### 步骤2: 实现HAL层

参考 `f2837x/dual_axis_servo_drive_hal.c`：

1. 实现GPIO初始化（LED、调试引脚）
2. 实现SCI初始化（SFRA通信）
3. 实现定时器初始化（后台任务）
4. 实现IPC共享内存设置

### 步骤3: 实现控制算法

1. 速度环PI控制器
2. 位置环PID控制器
3. 状态机管理
4. 与CPU2的数据交换

### 步骤4: 创建.projectspec文件

参考原始项目的.projectspec，创建CPU1项目配置：

1. 设置编译选项
2. 添加包含路径
3. 链接必要的库文件
4. 配置源文件（使用copy方式）

## 与CPU2的协作

### 启动顺序

1. CPU1上电复位
2. CPU1初始化设备和外设
3. CPU1设置IPC共享内存
4. CPU1引导CPU2
5. CPU1和CPU2通过IPC标志同步
6. CPU2初始化完成后设置就绪标志
7. CPU1开始发送控制命令

### 实时同步

- CPU2在电流环ISR中更新反馈数据（10 kHz）
- CPU1在定时器中断中读取反馈数据（1 kHz）
- CPU1计算速度环输出并更新参考值
- CPU2在下一个ISR中使用新的参考值

## 调试技巧

1. **LED指示**
   - LED1: 系统运行指示
   - LED2: 故障指示

2. **SFRA通信**
   - 使用SCI端口进行频率响应分析
   - 监控控制器性能

3. **IPC监控**
   - 在CCS中添加IPC数据结构到Watch窗口
   - 实时监控CPU间通信

4. **性能分析**
   - 使用GPIO切换测量执行时间
   - 监控CPU负载

## 注意事项

1. **内存共享**
   - GS0 RAM用于IPC通信，CPU1和CPU2都可访问
   - 确保IPC数据结构对齐

2. **中断优先级**
   - CPU1的定时器中断优先级应低于IPC相关中断

3. **同步**
   - 使用IPC标志进行CPU间同步
   - 避免竞争条件

4. **故障处理**
   - CPU1负责系统级故障管理
   - 接收CPU2的故障报告并采取行动

## 参考资料

- 原始单核项目: `solutions/boostxl_3phganinv/f2837x/`
- F2838x双核参考: `solutions/tidm_02006_multi_axis_drive/f2838x/`
- C2000Ware文档
- Motor Control SDK文档

## 下一步

1. 完成源文件实现
2. 创建.projectspec文件
3. 与CPU2项目联合调试
4. 性能优化和测试

