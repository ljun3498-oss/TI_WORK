# SCI移植说明

## 概述
已成功将SCI通信功能从源项目移植到`dual_axis_servo_drive_fcl_qep_f2837x`项目中，实现了电机波形数据的实时发送功能。文件已按照HAL命名规范重新组织，并采用原始的轮询方式发送数据，避免了不必要的复杂性。

## 移植内容

### 1. 新增文件
- **HAL_sci_init.h** - SCI配置头文件
- **HAL_sci_init.c** - SCI实现文件

### 2. 修改文件
- **dual_axis_servo_drive.c** - 主程序文件

## 功能特性

### SCI配置
- **波特率**: 230200 bps
- **数据位**: 8位
- **停止位**: 1位
- **校验位**: 无校验
- **FIFO**: 启用，TX触发级别为空，RX触发级别为1字节
- **引脚**: 
  - TX: GPIO54 (SCITXDB)
  - RX: GPIO55 (SCIRXDB)

### 数据发送协议
- **协议**: JustFloat协议
- **帧格式**: [float ch0][float ch1][float ch2][00 00 80 7F]
- **数据映射**:
  - ch0: 速度环输出值 (motorVars[0].pid_spd.term.Out)
  - ch1: Iq实际反馈值 (motorVars[0].ptrFCL->pi_iq.fbk)
  - ch2: 速度环使用的自定义测速值 (m1_custom_speed_pu)
- **发送频率**: 约20kHz (每100个主循环发送一次)
- **数据格式**: 小端字节序

### 中断处理
- **发送中断**: scibTxISR() - 轮询发送数据
- **接收中断**: scibRxISR() - 接收数据处理（预留）

## 使用方法

### 1. 编译项目
确保包含新增的HAL_sci_init.h和HAL_sci_init.c文件

### 2. 功能验证
编译并下载到目标板后，可以通过以下方式验证SCI功能：
- 使用串口调试工具连接GPIO54/55
- 设置波特率为230200
- 观察是否接收到16字节的数据帧

### 3. 数据分析
接收到的数据为16字节，格式如下：
- 字节0-3: ch0 (float，小端)
- 字节4-7: ch1 (float，小端)  
- 字节8-11: ch2 (float，小端)
- 字节12-15: 尾部标识 00 00 80 7F (+Inf)

### 4. 发送机制
当前采用100微秒级任务（B2任务）发送数据，真正的10kHz发送频率。数据通过SCI_writeCharNonBlocking()函数发送，遵循DSP任务调度机制。数据转换逻辑封装在HAL_SCI_prepareWaveformData()函数中，提高代码可读性和可维护性。

## 配置修改

### 波特率修改
在HAL_sci_init.h中修改：
```c
#define HAL_SCI_BAUDRATE 115200  // 修改为所需波特率
```

### 发送频率修改
在dual_axis_servo_drive.c中修改：
```c
if(sciSendCounter >= 100)  // 修改发送频率
```

### 数据映射修改
在dual_axis_servo_drive.c的HAL_SCI_generateWaveforms()函数中修改数据映射关系。

## 注意事项

1. **引脚冲突**: 确保GPIO54/55没有被其他功能占用
2. **波特率匹配**: 上位机波特率必须与配置一致
3. **数据格式**: 使用小端字节序解析float数据
4. **中断优先级**: SCI中断优先级可能需要根据系统需求调整
5. **缓冲区大小**: 当前缓冲区大小为64字节，可根据需要调整

## 扩展功能

### 接收功能
当前版本未启用接收功能，如需实现上位机命令接收，可以在HAL_SCI_scibRxISR()函数中添加命令解析逻辑。

### 多通道扩展
如需发送更多通道数据，可以扩展HAL_SCI_generateWaveforms()函数和HAL_SCI_prepareWaveformData()函数。

### 缓冲区大小
当前缓冲区大小为16字节，在B2任务中定义，可根据需要调整

### 错误处理
可以添加数据发送错误检测和重发机制。

## 2026-06-16 SCI移植排错记录

### 本次最终状态

- `dual_axis_servo_drive_fcl_qep_f2837x` 编译已无 error / warning。
- SCI底层初始化与发送封装保留在 `HAL_sci_init.c` / `HAL_sci_init.h`。
- 与电机控制变量强相关的波形取数和打包逻辑移动到 `dual_axis_servo_drive.c`：
  - `HAL_SCI_generateWaveforms()`
  - `HAL_SCI_prepareWaveformData()`

### 重点问题：大量 `_iq` undefined

移植SCI后曾出现一大串 SDK 头文件报错，例如：

- `volt_calc.h`: identifier `_iq` is undefined
- `resolver.h`: identifier `_iq` is undefined
- `pid_reg3.h`: identifier `_iq` is undefined
- 伴随 `_defs.h expected an identifier`、`motorVars is undefined` 等连锁错误

这类报错表面上出现在 `C:/TI/c2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/...`，但根因不应优先去改 TI SDK 文件。实际原因是 SCI 移植时把应用层电机变量读取逻辑放进了 HAL SCI 文件，导致 `HAL_sci_init.c` 为了访问 `motorVars`、FCL结构体、IQ相关类型而牵连包含电机控制头文件。HAL文件的包含顺序和编译上下文不等同于主控制文件，于是 `_iq` 等类型定义没有按原工程预期进入当前翻译单元，触发 SDK 数学模块连锁报错。

最终处理原则：

- `HAL_sci_init.c` 只做 SCI/GPIO 初始化、FIFO状态、发送封装，不直接访问 `motorVars`。
- `motorVars[0].pid_spd.term.Out`、`motorVars[0].ptrFCL->pi_iq.fbk`、`m1_custom_speed_pu` 等应用层数据在 `dual_axis_servo_drive.c` 内取数，因为这里本来就拥有完整的电机控制类型和全局变量上下文。
- 不修改 `C:/TI/...` 下的 SDK 头文件。
- 不通过在 HAL 文件里继续堆 `extern`、`#include` 来绕过 `_iq` 问题。

### 其它修复

- 将 SCI 发送接口统一为 driverlib 当前可用接口：`SCI_writeCharNonBlocking()`。
- 旧 C2000 编译模式下避免在语句后声明局部变量，例如 `uint16_t i` 需要提前到函数顶部。
- `runMotorControl()` 中未使用的 `HAL_MTR_Obj *obj` 已去掉，改为显式 `(void)mtrHandle;`，清除 `#179-D` warning。

### 后续维护注意

- 如果要改上位机波形通道映射，优先改 `dual_axis_servo_drive.c` 里的 `HAL_SCI_generateWaveforms()`。
- 如果只改SCI波特率、GPIO、FIFO配置，改 `HAL_sci_init.h` / `HAL_sci_init.c`。
- 再遇到 `_iq undefined`，先检查是否有低层 HAL 文件包含了电机控制应用层头文件，或是否把依赖 `motorVars` 的逻辑放错层级。
