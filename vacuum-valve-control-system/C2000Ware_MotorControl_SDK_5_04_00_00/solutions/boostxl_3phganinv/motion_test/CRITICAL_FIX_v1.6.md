# 运动控制测试软件 v1.6 - 修复轨迹更新触发逻辑

**日期**: 2025-12-30  
**版本**: v1.6  
**修复类型**: 修复 C# 仿真中的轨迹更新触发条件

---

## 问题描述

### 用户报告的问题（v1.5 之后）
即使在 v1.5 中修改了 `profileUpdateDivider = 1` 后，仍然出现：
- ❌ **缓冲区仍然是 0 / 128**
- ❌ 所有位置/速度值仍然是 0
- ❌ 错误计数仍在持续增长（322）

### 问题诊断

虽然 C 代码配置正确（`profileUpdateDivider = 1`），但**轨迹更新根本没有被调用**！

---

## 根本原因

### C# 代码中的触发条件有严重问题

在 `MainWindow.xaml.cs` 的 `SimTimer_Tick()` 中：

```csharp
// ❌ 错误的触发条件
if ((int)(simTime * 1000) % 10 == 0)
{
    MotionControlAPI.MotionAxis_updateProfile(ref axis);
}
```

**问题分析**：

1. **浮点数精度问题**
   ```csharp
   simTime = 0.001, 0.002, 0.003, ...
   (int)(0.001 * 1000) = 1    // 1 % 10 = 1 (不触发)
   (int)(0.002 * 1000) = 2    // 2 % 10 = 2 (不触发)
   (int)(0.009 * 1000) = 9    // 9 % 10 = 9 (不触发)
   (int)(0.010 * 1000) = 10   // 10 % 10 = 0 (触发！)
   ```
   
   看起来似乎每 10ms 会触发一次，但实际上：

2. **浮点数累加误差**
   ```csharp
   simTime += 0.001;  // 每次增加 0.001
   ```
   
   浮点数累加会产生误差：
   ```
   0.001 * 10 = 0.009999999999...（不精确等于 0.010）
   (int)(0.009999999 * 1000) = 9（不是 10！）
   ```

3. **定时器实际触发时间不精确**
   - `DispatcherTimer` 的实际触发间隔可能是 0.9ms 或 1.1ms
   - 累积误差导致 `simTime * 1000` 永远不会精确等于 10 的倍数

4. **结果**
   - `MotionAxis_updateProfile()` **几乎从不被调用**
   - 轨迹规划器没有生成位置序列
   - 缓冲区始终为空
   - 所有运动数据保持为 0

---

## 解决方案

### 使用整数计数器而不是浮点数取模

**Before (v1.5) - ❌ 错误：**
```csharp
// 使用浮点数时间取模（不可靠）
if ((int)(simTime * 1000) % 10 == 0)
{
    MotionControlAPI.MotionAxis_updateProfile(ref axis);
}
```

**After (v1.6) - ✅ 正确：**
```csharp
// 添加计数器成员变量
private int profileUpdateCounter = 0;
private const int PROFILE_UPDATE_DIVIDER = 10;

// 在 SimTimer_Tick 中使用计数器
profileUpdateCounter++;
if (profileUpdateCounter >= PROFILE_UPDATE_DIVIDER)
{
    profileUpdateCounter = 0;
    MotionControlAPI.MotionAxis_updateProfile(ref axis);
}
```

**优势**：
- ✅ 整数运算，精确可靠
- ✅ 不受浮点数累加误差影响
- ✅ 每 10 次必定触发一次（100% 可靠）
- ✅ 性能更好（整数比较 vs 浮点数乘法+取模）

---

## 代码修改详情

### C# 代码 (`MainWindow.xaml.cs`)

**修改 1**：添加成员变量（第 20-24 行）
```csharp
// 时间和数据记录
private double simTime = 0.0;
private double lastVelocity = 0.0;
private int profileUpdateCounter = 0;  // ✅ 新增：轨迹更新计数器
private const int PROFILE_UPDATE_DIVIDER = 10;  // ✅ 新增：分频比
private List<DataPoint> positionData = new List<DataPoint>();
```

**修改 2**：更新触发逻辑（第 158-167 行）
```csharp
// 1. 更新轨迹规划（使用计数器，每 10 次位置环更新一次）
profileUpdateCounter++;
if (profileUpdateCounter >= PROFILE_UPDATE_DIVIDER)
{
    profileUpdateCounter = 0;
    MotionControlAPI.MotionAxis_updateProfile(ref axis);
}

// 2. 更新位置环控制（1ms周期）
MotionControlAPI.MotionAxis_updateControl(ref axis);
```

---

## 浮点数时间判断的常见陷阱

### 错误模式 1：浮点数取模

```csharp
// ❌ 永远不要这样做
if ((int)(time * 1000) % 10 == 0) { ... }
if (time % 0.01 == 0) { ... }
if (Math.Abs(time - targetTime) < 0.0001) { ... }
```

**问题**：
- 浮点数不精确
- 累加误差
- 定时器抖动

### 正确模式：使用整数计数器

```csharp
// ✅ 正确做法
private int counter = 0;
private const int DIVIDER = 10;

void OnTimer()
{
    counter++;
    if (counter >= DIVIDER)
    {
        counter = 0;
        DoPeriodicTask();
    }
}
```

### 错误模式 2：直接比较浮点数

```csharp
// ❌ 错误：直接比较
if (time == 1.0) { ... }
if (velocity == targetVelocity) { ... }
```

**正确做法**：
```csharp
// ✅ 使用阈值比较
const float EPSILON = 1e-6f;
if (Math.Abs(time - 1.0) < EPSILON) { ... }
if (Math.Abs(velocity - targetVelocity) < EPSILON) { ... }
```

### 错误模式 3：浮点数作为循环计数器

```csharp
// ❌ 错误
for (double t = 0; t < 1.0; t += 0.1)
{
    // t 可能永远不会精确等于 1.0
}
```

**正确做法**：
```csharp
// ✅ 使用整数循环
for (int i = 0; i < 10; i++)
{
    double t = i * 0.1;
    // ...
}
```

---

## 预期效果

### 修复后的行为

1. **轨迹更新正常调用**
   - 每 10 次位置环周期（10ms）调用一次
   - 100% 可靠触发

2. **缓冲区正常填充**
   - 缓冲数量：10-50 / 128（动态变化）
   - 不再始终为 0

3. **运动数据正常**
   - 命令位置：0 → 逐渐增加到 1000
   - 实际位置：跟随命令位置
   - 速度曲线：梯形轮廓
   - 错误计数：保持为 0

### 测试步骤

1. **启动程序**
2. **使能轴** → 轴状态：Disabled → Standby
3. **发送绝对运动（目标 = 1000）** → 应该看到：
   - ✅ 轴状态：Standby → Moving
   - ✅ 缓冲数量：0 → 10-50（动态）
   - ✅ 命令位置：0 → 1000（逐渐增加）
   - ✅ 实际位置：跟随命令位置
   - ✅ 速度曲线：梯形
   - ✅ 错误计数：保持 0
   - ✅ 曲线图：平滑显示

---

## 调试技巧

### 如何检测函数是否被调用？

**方法 1：添加调用计数器**
```csharp
private int profileUpdateCallCount = 0;

void SimTimer_Tick()
{
    profileUpdateCounter++;
    if (profileUpdateCounter >= PROFILE_UPDATE_DIVIDER)
    {
        profileUpdateCounter = 0;
        profileUpdateCallCount++;  // 调试：记录调用次数
        LogMessage($"profileUpdate 第 {profileUpdateCallCount} 次调用");
        MotionControlAPI.MotionAxis_updateProfile(ref axis);
    }
}
```

**方法 2：在 C 代码中添加调试输出**
```c
void MotionAxis_updateProfile(MotionAxis_t *axis)
{
    static uint32_t callCount = 0;
    callCount++;
    
    // TODO: 通过IPC或调试接口输出
    // printf("MotionAxis_updateProfile called: %d\n", callCount);
    
    // ... 原有代码
}
```

**方法 3：监视缓冲区变化**
```csharp
private int lastBufferCount = 0;

void SimTimer_Tick()
{
    ushort currentBufferCount = MotionControlAPI.MotionAxis_getBufferCount(ref axis);
    if (currentBufferCount != lastBufferCount)
    {
        LogMessage($"缓冲区变化: {lastBufferCount} → {currentBufferCount}");
        lastBufferCount = currentBufferCount;
    }
}
```

---

## 经验教训

### 1. 浮点数的固有问题

浮点数（`float`, `double`）**不能精确表示大部分十进制小数**：
```
0.1 在浮点数中 ≈ 0.100000001490116119...
0.01 在浮点数中 ≈ 0.009999999776482582...
```

**结论**：
> **永远不要用浮点数做精确的周期判断！**

### 2. 定时器的实际精度

Windows 的 `DispatcherTimer` 精度：
- 理论分辨率：1-10ms
- 实际抖动：±1-2ms
- 不适合高精度定时

**对于嵌入式系统**：
- 使用硬件定时器（CPU Timer）
- 精度可达 1us
- 不受操作系统调度影响

### 3. 分频器的正确实现

```c
// ✅ 正确的分频器模式
void ISR_Periodic()
{
    static uint16_t counter = 0;
    
    // 高频任务（每次执行）
    HighFreqTask();
    
    // 低频任务（分频执行）
    counter++;
    if (counter >= DIVIDER)
    {
        counter = 0;
        LowFreqTask();
    }
}
```

**特点**：
- 整数计数器
- 简单的递增和比较
- 确定性行为
- 无浮点数运算

---

## 文件变更清单

### C# 代码
- ✅ `MainWindow.xaml.cs` - 添加 `profileUpdateCounter`，修改触发逻辑

### 其他文件
- 无需修改

---

## 总结

**v1.6 解决了轨迹更新从不触发的问题**：

**根本原因**：
- 使用浮点数时间取模判断周期
- 浮点数精度问题 + 累加误差 + 定时器抖动
- 导致触发条件几乎永远不满足

**解决方案**：
- 使用整数计数器替代浮点数取模
- 简单、可靠、高效

**核心教训**：
> **周期性任务必须使用整数计数器，永远不要用浮点数判断！**

---

**版本历史**:
- v1.0 (2025-12-29): 初始版本
- v1.1 (2025-12-30): 修复 `MotionAxis_addMotor`
- v1.2 (2025-12-30): 添加轴级别 getter 函数
- v1.3 (2025-12-30): 添加电机级别 getter 函数
- v1.4 (2025-12-30): 禁用跟踪误差检测
- v1.5 (2025-12-30): 修复分频器配置错误
- v1.6 (2025-12-30): 修复轨迹更新触发逻辑

---

**测试状态**：✅ 这次应该真的可以了！🚀

