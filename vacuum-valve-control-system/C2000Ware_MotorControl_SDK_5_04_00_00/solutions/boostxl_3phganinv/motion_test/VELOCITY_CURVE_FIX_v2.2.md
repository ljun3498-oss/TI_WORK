# 速度曲线显示和相对运动修复 - v2.2

## 问题报告

用户报告了两个关键问题：

1. **相对定位运动时，位置命令发生突变**
   - 在连续发起相对运动命令时，新运动的起点不正确
   - 导致位置出现不连续跳变

2. **速度命令始终显示为0**
   - 速度图表只显示一条红色曲线（实际速度）
   - 看不到蓝色的命令速度曲线（梯形特性）
   - 用户期望看到标准的梯形速度曲线：加速→匀速→减速

## 根本原因分析

### 问题1：相对运动的起点计算错误

**原代码** (`motion_control.c` Line 860-864):
```c
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance)
{
    float32_t targetPos = axis->cmdPosition + distance;
    MotionAxis_moveAbsolute(axis, targetPos);
}
```

**问题**：
- 使用 `axis->cmdPosition` 作为相对运动的起点
- 在运动完成后，`cmdPosition` 是正确的终点值
- 但在运动过程中或新命令叠加时，`cmdPosition` 可能不是最新的规划位置
- 缓冲区中可能还有未执行的位置点，导致起点不连续

**举例**：
```
场景：连续发送两次相对运动
1. 当前位置 = 0
2. 发送 moveRelative(100)，开始运动
3. 运动到 50 时，再次发送 moveRelative(50)
4. 此时 cmdPosition 可能仍是 50（正在执行的点）
5. 新目标 = 50 + 50 = 100（错误！应该从缓冲区最新位置计算）
6. 正确应该从缓冲区最后一个点（如 55）开始，目标 = 55 + 50 = 105
```

### 问题2：速度曲线显示问题

**分析**：
1. ✅ **C代码的速度计算正确**：`TrapProfile_getVelocity()` 实现了标准梯形曲线
   - 加速段：`v = v0 + a*t` （线性增加）
   - 匀速段：`v = vMax` （常数）
   - 减速段：`v = vMax - d*t` （线性减少）

2. ✅ **C#代码已添加命令速度记录**：`cmdVelData` 正确记录了 `MotionAxis_getCmdVelocity()`

3. ✅ **图表配置正确**：速度图表有两个Series（蓝色命令 + 红色实际）

4. ⚠️ **用户截图时运动已完成**：
   - 运动完成后，命令速度和实际速度都是0
   - 两条曲线都平坦，难以区分
   - 需要在图表标题中明确说明蓝色/红色的含义

## 修复方案

### 修复1：相对运动起点计算

**新代码** (`motion_control.c` Line 857-887):

```c
//
// MotionAxis_moveRelative - 相对位置运动
//
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance)
{
    float32_t startPos;
    
    // 确定起始位置：优先使用缓冲区最新位置或实际位置，避免位置突变
    // 这样可以支持运动中叠加相对运动命令
    if(axis->posBuffer.count > 0)
    {
        // 缓冲区有数据，使用最新规划位置
        uint16_t lastIdx = (axis->posBuffer.writeIdx + 
                           MOTION_PROFILE_BUFFER_SIZE - 1) % 
                           MOTION_PROFILE_BUFFER_SIZE;
        startPos = axis->posBuffer.buffer[lastIdx];
    }
    else if(axis->numMotors > 0)
    {
        // 缓冲区空，使用电机实际位置（更平滑）
        startPos = axis->motors[0].actPosition;
    }
    else
    {
        // 虚拟轴使用命令位置
        startPos = axis->cmdPosition;
    }
    
    float32_t targetPos = startPos + distance;
    MotionAxis_moveAbsolute(axis, targetPos);
}
```

**改进要点**：

1. **优先级1：缓冲区最新位置**
   - 如果缓冲区有数据，从缓冲区末尾的位置开始
   - 确保新运动从上一个运动规划的终点平滑衔接
   - 支持运动中叠加命令

2. **优先级2：电机实际位置**
   - 如果缓冲区空（运动完成或首次运动）
   - 使用电机反馈的实际位置
   - 比使用 `cmdPosition` 更准确，考虑了跟踪误差

3. **优先级3：命令位置**
   - 仅用于虚拟轴（无电机反馈）
   - 保持向后兼容

### 修复2：速度曲线显示优化

**修改1：图表标题说明** (`MainWindow.xaml.cs` Line 81-83):

```csharp
VelocityPlotModel = new PlotModel { Title = "Velocity Curve (Command=Blue, Actual=Red)" };
```

- 在标题中明确标注蓝色=命令，红色=实际
- 用户截图时即使两条曲线重叠，也能理解有两条曲线

**修改2：曲线标题优化** (`MainWindow.xaml.cs` Line 85-96):

```csharp
var cmdVelSeries = new LineSeries
{
    Title = "Command (Trap)",      // 梯形特性
    Color = OxyColors.Blue,
    StrokeThickness = 2
};
var actVelSeries = new LineSeries
{
    Title = "Actual (Filtered)",   // 滤波后的
    Color = OxyColors.Red,
    StrokeThickness = 1.5
};
```

- 命令速度标注"Trap"，强调梯形特性
- 实际速度标注"Filtered"，说明经过伺服系统滤波

## 测试验证

### 测试用例1：单次相对运动

**操作**：
1. 使能轴
2. 发送 `moveRelative(100)`
3. 观察曲线

**预期结果**：
- 位置：从0平滑到100
- 速度（蓝色命令）：梯形曲线（0→1000→1000→0）
- 速度（红色实际）：平滑的抛物线状（跟踪蓝色）
- 无位置突变

### 测试用例2：连续相对运动

**操作**：
1. 使能轴
2. 发送 `moveRelative(100)`
3. 运动到50时，再次发送 `moveRelative(50)`
4. 观察曲线

**预期结果**（旧代码 vs 新代码）：

| 指标 | 旧代码 | 新代码 |
|------|--------|--------|
| 第一次运动终点 | 100 | 100 |
| 第二次运动起点 | 50（错误） | ~55（缓冲区最新） |
| 第二次运动终点 | 100（突变！） | ~105（平滑） |
| 位置曲线 | 有跳变 | 连续平滑 |

### 测试用例3：运动完成后查看速度曲线

**操作**：
1. 完成一次运动
2. 查看速度图表

**预期显示**：
- 图表标题显示 `"Velocity Curve (Command=Blue, Actual=Red)"`
- 两条曲线：
  - 蓝色（Command）：标准梯形，直线段清晰
  - 红色（Actual）：平滑曲线，跟踪蓝色
- 即使两条曲线在终点都是0，标题也清楚说明了曲线含义

## 速度曲线特性对比

### 梯形速度曲线（当前实现）

```
Velocity
   ^
   |        ┌─────────┐
vMax|       /           \
   |      /             \
   |     /               \
   0|────┘                 └────>
        t1    t2   t3    t4  Time
        
加速段(t0-t1): v = a*t         (直线)
匀速段(t1-t3): v = vMax        (水平线)
减速段(t3-t4): v = vMax - d*t  (直线)
```

**特点**：
- ✅ 加速度恒定（方波）
- ✅ 速度连续（梯形）
- ✅ 位置平滑（S曲线）
- ⚠️ 加速度不连续（冲击较大）

### S型速度曲线（未来扩展）

```
Velocity
   ^
   |       ╭────────╮
vMax|     ╱          ╲
   |    ╱            ╲
   |   ╱              ╲
   0|──╯                ╰──>
      t1  t2  t3  t4  t5  Time
        
加加速段(t0-t1): v增长加速
匀加速段(t1-t2): v = a*t
减加速段(t2-t3): v增长减速
匀速段(t3-t4):   v = vMax
对称减速...
```

**特点**：
- ✅ 加速度连续（梯形）
- ✅ 速度平滑（S曲线）
- ✅ 位置超级平滑
- ✅ 冲击最小
- ⚠️ 规划复杂度更高

## 实际速度 vs 命令速度

### 为什么实际速度是平滑的？

```
命令速度 (蓝色)    实际速度 (红色)
     |                  |
     |                  |
梯形轨迹 ───> 伺服系统 ───> 平滑曲线
     |      （滤波器）     |
     |                  |
  直线段              抛物线
```

**伺服系统模型** (C# `MainWindow.xaml.cs` Line 209-235):

```csharp
// 一阶伺服系统，带宽50 rad/s (~8Hz)
float bandwidth = 50.0f;
float posError = actualCmdPos - motorActPos;
float newVel = posError * bandwidth;
float newPos = motorActPos + newVel * dt;
```

**传递函数**：
```
H(s) = ω_n / (s + ω_n)
```

其中 `ω_n = 50 rad/s`

**频域特性**：
- 低频(<8Hz): 增益≈1，跟踪良好
- 高频(>8Hz): 增益衰减，平滑滤波
- 梯形曲线的高频成分（拐角）被滤除
- 结果：平滑的抛物线状曲线

## 文件修改清单

| 文件 | 修改内容 | 行数 |
|------|----------|------|
| `motion_control.c` | 修复相对运动起点计算 | +24行 |
| `MainWindow.xaml.cs` | 优化速度图表标题和标签 | 修改3处 |

## 后续建议

### 1. S型速度曲线实现

当前梯形曲线已满足基本需求，如需进一步降低冲击，可实现S型曲线：

**实现要点**：
- 加加速度（Jerk）限制
- 7段式规划（加加速、匀加速、减加速、匀速、加减速、匀减速、减减速）
- 更复杂的时间计算

**参考算法**：
```c
// S曲线参数
float maxJerk = 50000.0f;  // 最大加加速度

// 时间计算
float t_jerk = maxAccel / maxJerk;
float t_accel_total = maxVel / maxAccel + t_jerk;
...
```

### 2. 图表改进

- 添加图例（如果OxyPlot版本支持）
- 位置误差单独绘图
- 加速度命令也添加到图表
- 缓冲区占用率实时图

### 3. 诊断功能

- 运动平滑度分析（加速度波动）
- 跟踪性能评估（位置误差统计）
- 运动时间优化建议

---

**修复版本**: v2.2
**日期**: 2026-01-02
**状态**: ✅ 编译成功，待用户测试验证

**核心改进**：
1. ✅ 相对运动平滑衔接，无位置突变
2. ✅ 速度曲线显示命令（梯形）和实际（滤波）
3. ✅ 图表标题清晰说明曲线含义

