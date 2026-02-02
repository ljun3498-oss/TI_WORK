# 目标位置/速度显示功能 - v2.1

## 功能概述

根据用户需求，添加了运动目标位置和目标速度的显示和绘图功能。这些值表示用户发起运动命令时的最终目标，与当前正在执行的命令位置/速度不同。

## 术语说明

### 位置/速度分类

运动控制系统中有三类位置/速度概念：

| 类型 | 含义 | 更新时机 | 用途 |
|------|------|----------|------|
| **目标位置/速度** | 运动规划的最终目标 | 发起运动命令时设置 | 用户监控运动目标 |
| **命令位置/速度** | 当前执行的插补点 | 每1ms从缓冲区读取 | 发送给电机的实时指令 |
| **实际位置/速度** | 电机反馈的真实值 | 每1ms反馈更新 | 闭环控制的反馈信号 |

### 不同运动命令的目标值

| 命令类型 | targetPosition | targetVelocity |
|---------|----------------|----------------|
| **绝对运动** | 用户指定的目标位置 | 0（到达后静止） |
| **相对运动** | 起始位置 + 相对位移 | 0（到达后静止） |
| **正常停止** | 计算出的停止位置 | 0（停止） |
| **急停** | 计算出的急停位置 | 0（停止） |

## 实现细节

### 1. C代码修改

#### 1.1 数据结构 (motion_control.h)

在 `MotionAxis_t` 结构体中添加字段：

```c
// 轴位置反馈（轴坐标系，综合所有电机）
float32_t cmdPosition;        // 命令位置 - 当前执行的插补点
float32_t actPosition;        // 实际位置（平均值）
float32_t cmdVelocity;        // 命令速度 - 当前执行速度
float32_t actVelocity;        // 实际速度（平均值）

// 运动目标（用户发起运动命令时的目标）
float32_t targetPosition;     // 目标位置 - 运动规划的终点
float32_t targetVelocity;     // 目标速度 - 到达目标时的速度（通常为0）
```

**位置**：Line 217-225

#### 1.2 设置目标值 (motion_control.c)

**绝对运动命令**（Line 841-847）：
```c
// 设置新目标（从当前轨迹末端平滑过渡）
TrapProfile_setTarget(&axis->profile, startPos, startVel, targetPos);
TrapProfile_compute(&axis->profile);

// 记录目标位置和目标速度（用于用户监控）
axis->targetPosition = targetPos;
axis->targetVelocity = 0.0f;  // 绝对运动到达目标时速度为0
```

**相对运动命令**（Line 860-864）：
```c
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance)
{
    float32_t targetPos = axis->cmdPosition + distance;
    MotionAxis_moveAbsolute(axis, targetPos);  // 会设置targetPosition/targetVelocity
}
```

**正常停止命令**（Line 892-897）：
```c
TrapProfile_stop(&axis->profile, startPos, startVel);

// 记录目标位置和目标速度（用于用户监控）
// 停止命令的目标位置为停止位置，目标速度为0
axis->targetPosition = axis->profile.targetPos;
axis->targetVelocity = 0.0f;
```

**急停命令**（Line 936-942）：
```c
TrapProfile_stop(&axis->profile, startPos, startVel);

// 恢复原减速度
axis->profile.maxDecel = savedDecel;

// 记录目标位置和目标速度（用于用户监控）
// 急停命令的目标位置为停止位置，目标速度为0
axis->targetPosition = axis->profile.targetPos;
axis->targetVelocity = 0.0f;
```

#### 1.3 Getter函数 (motion_control.c)

**Line 1207-1224**：
```c
//
// MotionAxis_getTargetPosition - 获取目标位置
//
float32_t MotionAxis_getTargetPosition(MotionAxis_t *axis)
{
    return axis->targetPosition;
}

//
// MotionAxis_getTargetVelocity - 获取目标速度
//
float32_t MotionAxis_getTargetVelocity(MotionAxis_t *axis)
{
    return axis->targetVelocity;
}
```

#### 1.4 函数声明 (motion_control.h)

**Line 341-342**：
```c
float32_t MotionAxis_getTargetPosition(MotionAxis_t *axis);
float32_t MotionAxis_getTargetVelocity(MotionAxis_t *axis);
```

#### 1.5 DLL导出 (motion_control.def)

**Line 67-68**：
```
MotionAxis_getTargetPosition
MotionAxis_getTargetVelocity
```

### 2. C#代码修改

#### 2.1 P/Invoke声明 (MotionControlAPI.cs)

**Line 126-130**：
```csharp
[DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
public static extern float MotionAxis_getTargetPosition(IntPtr axis);

[DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
public static extern float MotionAxis_getTargetVelocity(IntPtr axis);
```

#### 2.2 UI显示元素 (MainWindow.xaml)

**Line 119-123**：
```xml
<!-- 运动目标 -->
<TextBlock Text="【运动目标】" FontWeight="Bold" Foreground="DarkOrange" Margin="0,3,0,3"/>
<TextBlock x:Name="txtTargetPosDisplay" Text="目标位置: 0.000" Margin="2,0,2,2" FontSize="11" Foreground="DarkOrange"/>
<TextBlock x:Name="txtTargetVelDisplay" Text="目标速度: 0.00" Margin="2,0,2,2" FontSize="11" Foreground="DarkOrange"/>
<Separator Margin="0,3"/>
```

注意：使用 `txtTargetPosDisplay` 而不是 `txtTargetPos`，避免与输入框命名冲突。

#### 2.3 状态显示更新 (MainWindow.xaml.cs)

**获取目标值**（Line 333-334）：
```csharp
float actualTargetPos = MotionControlAPI.MotionAxis_getTargetPosition(axisPtr);
float actualTargetVel = MotionControlAPI.MotionAxis_getTargetVelocity(axisPtr);
```

**显示目标值**（Line 349-351）：
```csharp
// Target values (motion goal)
txtTargetPosDisplay.Text = $"目标位置: {actualTargetPos:F3}";
txtTargetVelDisplay.Text = $"目标速度: {actualTargetVel:F2}";
```

#### 2.4 图表绘制

**数据列表**（Line 28）：
```csharp
private List<DataPoint> targetPosData = new List<DataPoint>();
```

**图表初始化**（Line 56-62）：
```csharp
var targetPosSeries = new LineSeries
{
    Title = "Target",
    Color = OxyColors.Orange,
    StrokeThickness = 1,
    LineStyle = LineStyle.Dash  // 虚线显示
};
PositionPlotModel.Series.Add(targetPosSeries);
```

**数据记录**（Line 252-254）：
```csharp
// Get target position for display
float actualTargetPos = MotionControlAPI.MotionAxis_getTargetPosition(axisPtr);
targetPosData.Add(new DataPoint(simTime, actualTargetPos));
```

**图表更新**（Line 297-310）：
```csharp
var targetPosSeries = PositionPlotModel.Series[0] as LineSeries;
var cmdPosSeries = PositionPlotModel.Series[1] as LineSeries;
var actPosSeries = PositionPlotModel.Series[2] as LineSeries;

targetPosSeries.Points.Clear();
cmdPosSeries.Points.Clear();
actPosSeries.Points.Clear();

targetPosSeries.Points.AddRange(targetPosData);
cmdPosSeries.Points.AddRange(cmdPosData);
actPosSeries.Points.AddRange(positionData);
```

## UI效果

### 实时状态显示

在右侧状态面板中，新增一个【运动目标】区域，显示：

```
【运动目标】
目标位置: 100.000     <-- 橙色文字
目标速度: 0.00        <-- 橙色文字

【轴位置】
命令: 45.230         <-- 蓝色文字，当前插补点
实际: 45.150         <-- 红色文字，电机反馈
误差: 0.080          <-- 紫色文字，跟踪误差

【轴速度】
命令: 123.45         <-- 蓝色文字
实际: 122.80         <-- 红色文字
```

### 位置跟踪图表

位置图表现在包含三条曲线：

1. **Target（目标）** - 橙色虚线
   - 用户发起运动命令时的目标位置
   - 运动过程中保持不变（水平线）
   - 到达后应与实际位置重合

2. **Command（命令）** - 蓝色实线
   - 从缓冲区读取的位置指令
   - 按梯形曲线规划平滑变化
   - 从起点逐渐接近目标

3. **Actual（实际）** - 红色实线
   - 电机反馈的真实位置
   - 跟踪命令位置，有小滞后
   - 最终到达目标位置附近

## 使用场景

### 场景1：绝对运动

```
用户操作：
1. 输入目标位置 = 1000
2. 点击"绝对运动"

界面显示：
- 目标位置：1000.000（立即显示，保持不变）
- 命令位置：0 → 50 → 200 → ... → 1000（平滑变化）
- 实际位置：跟踪命令位置（小滞后）

图表效果：
- 橙色虚线立即跳到1000（水平线）
- 蓝色实线从0沿S曲线爬升到1000
- 红色实线紧密跟踪蓝线
```

### 场景2：相对运动

```
用户操作：
1. 当前位置 = 500
2. 输入相对位移 = 200
3. 点击"相对运动"

界面显示：
- 目标位置：700.000（500 + 200）
- 命令位置：500 → 700
- 实际位置：跟踪

图表效果：
- 橙色虚线跳到700
- 蓝色线从500爬到700
- 红色线跟踪
```

### 场景3：运动中停止

```
用户操作：
1. 正在向1000运动，当前位置 = 300
2. 点击"停止"

界面显示：
- 目标位置：从1000变为停止位置（如350）
- 命令位置：300 → 350（减速停止）
- 实际位置：跟踪到350

图表效果：
- 橙色虚线从1000跳到350
- 蓝色线减速到350
- 红色线跟踪到350
```

## 技术要点

### 1. 数据一致性

- `targetPosition`/`targetVelocity` 在发起运动命令时设置
- 运动过程中保持不变（除非发起新命令）
- 提供了运动规划的"目的地"信息

### 2. 与命令位置的区别

| 特性 | targetPosition | cmdPosition |
|------|----------------|-------------|
| 含义 | 规划终点 | 当前插补点 |
| 更新频率 | 发起命令时 | 每1ms |
| 值的特点 | 固定值 | 连续变化 |
| 用途 | 监控目标 | 电机控制 |

### 3. 图表设计

- **橙色虚线**：容易与蓝色/红色实线区分
- **水平线**：清晰显示目标位置
- **参考作用**：评估运动是否到达目标

### 4. 停止命令特殊处理

停止命令的目标位置需要从 `profile.targetPos` 获取，因为：
- 停止位置需要根据当前速度和减速度计算
- 不是用户直接指定的值
- `TrapProfile_stop()` 内部会计算并设置 `profile.targetPos`

## 文件修改清单

| 文件 | 修改内容 | 行数变化 |
|------|----------|---------|
| `motion_control.h` | 添加targetPosition/targetVelocity字段和getter声明 | +4行 |
| `motion_control.c` | 设置目标值（4处）+ 实现getter函数 | +28行 |
| `motion_control.def` | 导出getter函数 | +2行 |
| `MotionControlAPI.cs` | P/Invoke声明 | +6行 |
| `MainWindow.xaml` | UI显示元素 | +5行 |
| `MainWindow.xaml.cs` | 获取、显示、绘图逻辑 | +25行 |
| **总计** | | +70行 |

## 测试验证

### 测试用例1：绝对运动到100

**预期**：
- 使能后，目标位置显示 0.000
- 点击"绝对运动"（目标=100）后，立即显示目标位置 100.000
- 运动过程中，目标位置保持 100.000
- 命令位置从0平滑增加到100
- 图表中橙色虚线在y=100处水平显示

### 测试用例2：运动中停止

**预期**：
- 运动到一半时点击"停止"
- 目标位置立即更新为计算出的停止位置
- 命令位置平滑减速到停止位置
- 图表中橙色虚线跳到新的停止位置

### 测试用例3：连续运动

**预期**：
- 第一次运动：目标=100
- 到达后，第二次运动：目标=500
- 目标位置立即从100跳到500
- 橙色虚线跳到新位置

## 后续建议

### 可选增强

1. **目标速度显示**：
   - 当前所有命令的 `targetVelocity` 都是0
   - 如果未来支持"速度运动模式"，可以显示非零目标速度

2. **到达判断**：
   - 添加"到达目标"的指示灯
   - 当 `abs(actPosition - targetPosition) < threshold` 时点亮

3. **误差显示**：
   - 显示"目标误差" = `targetPosition - actPosition`
   - 与"跟踪误差"（cmdPosition - actPosition）区分

4. **历史目标记录**：
   - 在图表中显示所有历史目标位置（垂直虚线标记）
   - 方便回溯运动历史

---

**功能版本**: v2.1
**日期**: 2026-01-02
**状态**: ✅ 实现完成，已测试编译通过

**核心价值**: 为用户提供运动目标的清晰可视化，区分"要去哪里"和"现在在哪里"。

