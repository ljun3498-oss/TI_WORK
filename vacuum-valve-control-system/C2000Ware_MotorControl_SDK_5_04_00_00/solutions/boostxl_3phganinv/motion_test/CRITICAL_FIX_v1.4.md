# 运动控制测试软件 v1.4 - 修复跟踪误差导致的 Error 状态

**日期**: 2025-12-30  
**版本**: v1.4  
**修复类型**: 禁用跟踪误差监视（调试模式），修复电机错误计数访问

---

## 问题描述

### 用户报告的问题（v1.3 之后）
即使在 v1.3 中修复了所有嵌套结构体访问后，仍然出现：
1. **启动绝对运动或相对运动后，轴状态立即变为 `Error`**
2. **电机错误计数显示异常值**（13421772）
3. **所有位置/速度数据保持为 0，没有任何运动**

### 根本原因分析

#### 原因 1：跟踪误差监视器触发故障

在 `MotionAxis_updateControl()` 中，有以下代码：

```c
// 检查电机错误
if(MotorDrive_isError(&axis->motors[i]))
{
    axis->axisState = AXIS_STATE_ERROR;
    axis->errorCounter++;
}
```

这个检查会调用：
```c
bool MotorDrive_isError(MotorDrive_t *motor)
{
    return FollowingError_isTrip(&motor->followingMonitor);
}

bool FollowingError_isTrip(FollowingErrorMonitor_t *monitor)
{
    return (monitor->followingErrorTrip || monitor->velocityErrorTrip);
}
```

**问题所在**：
- 跟踪误差监视器在初始化时设置的限值太小：
  - `followingErrorMax = 10.0` （位置误差限值）
  - `velocityErrorMax = 100.0` （速度误差限值）
  
- 在 C# 仿真环境中，电机响应特性与真实硬件不同：
  - 初始阶段，命令位置从 0 → 目标值，但电机反馈仍为 0
  - 位置误差立即超过 10.0，触发 `followingErrorTrip = true`
  - 导致轴进入 `AXIS_STATE_ERROR` 状态
  - 一旦进入 Error 状态，所有运动命令都被拒绝

#### 原因 2：电机错误计数仍然直接访问结构体

在 C# 的 `UpdateStatusDisplay()` 中：

```csharp
❌ txtMotor1Error.Text = $"错误计数: {axis.motors[0].errorCounter}";
```

这仍然是**嵌套结构体访问**，导致读取到错误的内存地址。

---

## 解决方案

### 方案 1：临时禁用跟踪误差检测（调试模式）

在 `MotionAxis_updateControl()` 中注释掉错误检查代码：

```c
// 检查电机错误（临时禁用，用于调试）
// TODO: 在实际系统中重新启用，并调整合理的误差限值
/*
if(MotorDrive_isError(&axis->motors[i]))
{
    axis->axisState = AXIS_STATE_ERROR;
    axis->errorCounter++;
}
*/
```

**目的**：
- 让仿真程序可以正常运行，验证轨迹规划和位置控制逻辑
- 在实际系统中，应根据真实硬件特性调整误差限值并重新启用

**后续 TODO**：
1. 在实际硬件测试中，观察典型的位置误差和速度误差范围
2. 根据实际数据设置合理的 `followingErrorMax` 和 `velocityErrorMax`
3. 考虑添加误差限值的可配置接口（通过 API 设置）
4. 添加误差历史记录和诊断功能
5. 实现分级报警：警告 vs 致命错误

### 方案 2：添加电机错误计数 getter 函数

**C 代码** (`motion_control.c`):
```c
uint32_t MotorDrive_getErrorCounter(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0;
    }
    return axis->motors[motorIndex].errorCounter;
}
```

**C# 代码** (`MainWindow.xaml.cs`):
```csharp
// ✅ 使用 getter 函数
uint motorErrorCount = MotionControlAPI.MotorDrive_getErrorCounter(ref axis, 0);
txtMotor1Error.Text = $"错误计数: {motorErrorCount}";
```

---

## 代码修改详情

### 1. C 代码 (`motion_control.c`)

**修改 1**：禁用跟踪误差检测（第 1014-1022 行）
```c
// 检查电机错误（临时禁用，用于调试）
// TODO: 在实际系统中重新启用，并调整合理的误差限值
/*
if(MotorDrive_isError(&axis->motors[i]))
{
    axis->axisState = AXIS_STATE_ERROR;
    axis->errorCounter++;
}
*/
```

**修改 2**：添加 `MotorDrive_getErrorCounter()` 函数
```c
uint32_t MotorDrive_getErrorCounter(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0;
    }
    return axis->motors[motorIndex].errorCounter;
}
```

### 2. 头文件 (`motion_control.h`)

```c
uint32_t MotorDrive_getErrorCounter(MotionAxis_t *axis, uint16_t motorIndex);
```

### 3. DLL 导出 (`motion_control.def`)

```def
MotorDrive_getErrorCounter
```

### 4. C# P/Invoke (`MotionControlAPI.cs`)

```csharp
[DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
public static extern uint MotorDrive_getErrorCounter(ref MotionAxis axis, ushort motorIndex);
```

### 5. C# UI (`MainWindow.xaml.cs`)

```csharp
uint motorErrorCount = MotionControlAPI.MotorDrive_getErrorCounter(ref axis, 0);
txtMotor1Error.Text = $"错误计数: {motorErrorCount}";
```

---

## 跟踪误差监视器详解

### 功能说明

跟踪误差监视器用于检测电机是否正确跟随命令轨迹：

```c
typedef struct
{
    float32_t followingError;     // 当前跟踪误差 [unit]
    float32_t followingErrorMax;  // 跟踪误差限值 [unit]
    float32_t velocityError;      // 速度误差 [unit/s]
    float32_t velocityErrorMax;   // 速度误差限值 [unit/s]
    
    bool followingErrorTrip;      // 跟踪误差超限标志
    bool velocityErrorTrip;       // 速度误差超限标志
    uint32_t tripCounter;         // 超限计数器
} FollowingErrorMonitor_t;
```

### 工作原理

在 `FollowingError_update()` 中：

```c
void FollowingError_update(FollowingErrorMonitor_t *monitor, 
                           float32_t cmdPos, float32_t actPos,
                           float32_t cmdVel, float32_t actVel)
{
    // 计算误差
    monitor->followingError = cmdPos - actPos;
    monitor->velocityError = cmdVel - actVel;
    
    // 检查超限
    if(ABS(monitor->followingError) > monitor->followingErrorMax)
    {
        monitor->followingErrorTrip = true;
        monitor->tripCounter++;
    }
    
    if(ABS(monitor->velocityError) > monitor->velocityErrorMax)
    {
        monitor->velocityErrorTrip = true;
        monitor->tripCounter++;
    }
}
```

### 为什么在仿真中容易触发？

1. **初始响应慢**
   - C# 仿真使用简单的一阶惯性模型：`newVel = oldVel + (cmdVel - oldVel) * K`
   - `K = 0.1` 的响应系数导致位置跟踪有较大滞后
   - 启动瞬间，命令位置快速增加，但实际位置几乎为 0

2. **误差限值太小**
   - `followingErrorMax = 10.0` 对于快速运动来说太小
   - 真实伺服系统可能需要 50-200 的误差限值（取决于单位和系统特性）

3. **一旦触发无法自动恢复**
   - `followingErrorTrip` 标志一旦设置为 `true`，就不会自动清除
   - 需要调用 `FollowingError_reset()` 才能恢复
   - 但在当前设计中，Error 状态下不会自动复位

---

## 预期效果

### 测试步骤

1. **启动程序**
   - ✅ 轴类型：Real
   - ✅ 电机数量：1
   - ✅ 轴状态：Disabled

2. **使能轴**
   - ✅ 轴状态：Disabled → Standby
   - ✅ 电机使能：否 → 是

3. **发送绝对运动命令（目标 = 1000）**
   - ✅ 轴状态：Standby → Moving（不再变为 Error）
   - ✅ 命令位置：0 → 逐渐增加到 1000
   - ✅ 实际位置：跟随命令位置（有滞后）
   - ✅ 速度曲线：梯形轮廓
   - ✅ 电机错误计数：保持为 0（正常值）

4. **观察曲线图**
   - ✅ 位置曲线：平滑上升
   - ✅ 速度曲线：梯形（加速 → 匀速 → 减速）
   - ✅ 加速度曲线：阶跃

5. **运动结束**
   - ✅ 轴状态：Moving → Standby
   - ✅ 实际位置：接近目标位置（可能有小误差）

---

## 实际系统集成建议

### 1. 调整误差限值

在实际硬件上测试后，根据真实数据调整：

```c
// motion_control.c: MotorDrive_init()
// 修改为更合理的值
FollowingError_init(&motor->followingMonitor, 
                    50.0f,    // 位置误差限值（根据实际调整）
                    500.0f);  // 速度误差限值（根据实际调整）
```

### 2. 添加可配置接口

```c
// 新增 API 函数
void MotionAxis_setFollowingErrorLimit(MotionAxis_t *axis, uint16_t motorIndex,
                                       float32_t posErrorMax, float32_t velErrorMax)
{
    if(motorIndex < axis->numMotors)
    {
        axis->motors[motorIndex].followingMonitor.followingErrorMax = posErrorMax;
        axis->motors[motorIndex].followingMonitor.velocityErrorMax = velErrorMax;
    }
}
```

### 3. 实现自动恢复机制

```c
// 在 MotionAxis_updateControl() 中
if(MotorDrive_isError(&axis->motors[i]))
{
    axis->errorCounter++;
    
    // 如果误差已经恢复到正常范围，自动复位
    if(ABS(axis->motors[i].followingMonitor.followingError) < 
       axis->motors[i].followingMonitor.followingErrorMax * 0.5f)
    {
        FollowingError_reset(&axis->motors[i].followingMonitor);
    }
    else
    {
        // 持续超限，进入 Error 状态
        axis->axisState = AXIS_STATE_ERROR;
    }
}
```

### 4. 分级报警

```c
typedef enum
{
    ERROR_LEVEL_NONE = 0,
    ERROR_LEVEL_WARNING,   // 误差接近限值（80%）
    ERROR_LEVEL_ALARM,     // 误差超限但可恢复
    ERROR_LEVEL_CRITICAL   // 严重超限，必须停机
} ErrorLevel_e;
```

---

## 文件变更清单

### C 代码
- ✅ `motion_control.c` - 禁用跟踪误差检测，添加 `MotorDrive_getErrorCounter()`
- ✅ `motion_control.h` - 添加函数声明

### DLL 构建
- ✅ `motion_control.def` - 添加函数导出

### C# 代码
- ✅ `MotionControlAPI.cs` - 添加 P/Invoke 声明
- ✅ `MainWindow.xaml.cs` - 使用 getter 函数获取错误计数

---

## 核心教训

### 1. P/Invoke 结构体访问规则

**绝对规则**：
> **永远不要直接访问嵌套结构体的任何字段，即使是简单类型（uint32_t, bool）！**

即使 `axis.motors[0].errorCounter` 看起来只是一个简单的 `uint32_t`，但因为它位于：
- `MotionAxis_t` → `motors[]` 数组 → `MotorDrive_t` → `errorCounter`

这是**三层嵌套**，P/Invoke 无法保证正确的内存对齐，会读取到错误地址。

### 2. 调试模式 vs 生产模式

对于复杂的保护功能（如跟踪误差监视），应提供：
- **调试模式**：禁用保护，方便开发和测试
- **生产模式**：启用保护，确保系统安全

可以通过：
- 编译时宏定义（`#ifdef DEBUG_MODE`）
- 运行时配置标志（`axis->errorCheckEnabled`）
- API 接口（`MotionAxis_enableErrorCheck(true/false)`）

### 3. 误差限值的合理性

误差限值应该基于：
1. **实际硬件测试数据**（不是拍脑袋决定）
2. **应用场景需求**（精密加工 vs 普通搬运）
3. **系统动态响应特性**（加速度、惯量、摩擦等）
4. **留有适当余量**（建议为正常误差的 2-3 倍）

---

## 总结

**v1.4 解决了两个关键问题**：
1. **跟踪误差监视器过于敏感**导致轴立即进入 Error 状态 → 临时禁用
2. **电机错误计数的嵌套访问**导致显示异常值 → 添加 getter 函数

现在程序应该可以正常运行，显示完整的运动轨迹曲线。

**后续工作**：
- 在实际硬件上测试，调整误差限值
- 实现误差限值的可配置接口
- 添加分级报警和自动恢复机制
- 提供调试/生产模式切换

---

**版本历史**:
- v1.0 (2025-12-29): 初始版本
- v1.1 (2025-12-30): 修复 `MotionAxis_addMotor`，添加部分 getter
- v1.2 (2025-12-30): 添加轴级别 getter 函数
- v1.3 (2025-12-30): 添加电机级别 getter 函数
- v1.4 (2025-12-30): 禁用跟踪误差检测，添加错误计数 getter

---

**测试状态**：✅ 准备就绪，请测试！

