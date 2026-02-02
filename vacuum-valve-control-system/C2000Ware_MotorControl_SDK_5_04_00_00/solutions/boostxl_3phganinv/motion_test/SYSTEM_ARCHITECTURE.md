# 运动控制测试系统架构

## 📐 系统概述

本测试系统实现了一个**闭环运动控制仿真平台**，用于在 Windows 环境下测试和验证 TI C2000 运动控制库的功能。

### 系统分层

```
┌─────────────────────────────────────────────────────────────┐
│  Layer 4: Presentation (WPF UI)                             │
│  ├─ MainWindow.xaml      (UI界面)                           │
│  ├─ OxyPlot Charts       (实时曲线)                         │
│  └─ Status Display       (状态监视)                         │
└───────────────────────┬─────────────────────────────────────┘
                        │ Event / Data Binding
┌───────────────────────▼─────────────────────────────────────┐
│  Layer 3: Application Logic (C# Business)                   │
│  ├─ MainWindow.xaml.cs   (事件处理)                         │
│  ├─ DispatcherTimer      (仿真循环)                         │
│  └─ Data Collection      (数据记录)                         │
└───────────────────────┬─────────────────────────────────────┘
                        │ P/Invoke (Interop)
┌───────────────────────▼─────────────────────────────────────┐
│  Layer 2: API Wrapper (C# ⟷ C Bridge)                      │
│  ├─ MotionControlAPI.cs  (DllImport声明)                    │
│  ├─ Struct Marshalling   (结构体映射)                       │
│  └─ Data Conversion      (类型转换)                         │
└───────────────────────┬─────────────────────────────────────┘
                        │ Native Call
┌───────────────────────▼─────────────────────────────────────┐
│  Layer 1: Core Library (motion_control.dll)                 │
│  ├─ TrapezoidalProfile   (轨迹规划)                         │
│  ├─ ProfileBuffer        (位置缓冲)                         │
│  ├─ PIDController        (PID控制)                          │
│  ├─ MotorDrive           (电机驱动)                         │
│  └─ MotionAxis           (运动轴)                           │
└─────────────────────────────────────────────────────────────┘
```

---

## 🔄 控制循环架构

### 双定时器设计

系统采用**双定时器**设计，分离高频控制和低频显示：

```
┌──────────────────────────────────────────────────────────────┐
│                     WPF Application                          │
│  ┌────────────────────────────────────────────────────────┐  │
│  │  SimTimer (High Frequency: 1ms/1000Hz)                │  │
│  │  ┌──────────────────────────────────────────────────┐ │  │
│  │  │ 1. MotionAxis_updateProfile() [10ms分频]        │ │  │
│  │  │    └─ 梯形曲线规划 + 位置序列生成               │ │  │
│  │  ├──────────────────────────────────────────────────┤ │  │
│  │  │ 2. MotionAxis_updateControl() [1ms]              │ │  │
│  │  │    └─ 从缓冲区读取位置 + PID控制                │ │  │
│  │  ├──────────────────────────────────────────────────┤ │  │
│  │  │ 3. MotorDrive Simulation                         │ │  │
│  │  │    └─ 一阶惯性模型 + 反馈更新                   │ │  │
│  │  ├──────────────────────────────────────────────────┤ │  │
│  │  │ 4. Data Recording                                │ │  │
│  │  │    └─ 位置/速度/加速度 → List<DataPoint>        │ │  │
│  │  └──────────────────────────────────────────────────┘ │  │
│  └────────────────────────────────────────────────────────┘  │
│                                                               │
│  ┌────────────────────────────────────────────────────────┐  │
│  │  PlotTimer (Low Frequency: 50ms/20Hz)                 │  │
│  │  ┌──────────────────────────────────────────────────┐ │  │
│  │  │ 1. Update OxyPlot Charts                         │ │  │
│  │  │    └─ InvalidatePlot() → UI重绘                 │ │  │
│  │  ├──────────────────────────────────────────────────┤ │  │
│  │  │ 2. Update Status TextBlocks                      │ │  │
│  │  │    └─ 轴状态/位置/速度/缓冲区                   │ │  │
│  │  ├──────────────────────────────────────────────────┤ │  │
│  │  │ 3. Calculate Update Rate                         │ │  │
│  │  │    └─ 实际刷新频率监控                          │ │  │
│  │  └──────────────────────────────────────────────────┘ │  │
│  └────────────────────────────────────────────────────────┘  │
└──────────────────────────────────────────────────────────────┘
```

**设计优势**:
- ✅ **性能优化**: 高频控制循环不被UI刷新拖慢
- ✅ **平滑显示**: 20Hz足够人眼感知，无闪烁
- ✅ **CPU效率**: 图表刷新是昂贵操作，降低频率减少负载

---

## 🎯 运动控制流程

### 命令到执行的完整路径

```
用户点击 "绝对运动"
    │
    ▼
BtnMoveAbs_Click() [C#]
    │
    ├─ 解析目标位置: targetPos = float.Parse(txtTargetPos.Text)
    │
    ▼
MotionAxis_moveAbsolute(ref axis, targetPos) [P/Invoke]
    │
    ▼ DLL调用
MotionAxis_moveAbsolute() [C]
    │
    ├─ 读取缓冲区最新位置: startPos
    ├─ 设置轨迹目标: TrapProfile_setTarget(startPos, startVel, targetPos)
    ├─ 计算轨迹参数: TrapProfile_compute()
    │   └─ 计算加速/匀速/减速时间和距离
    ├─ 设置轴状态: axisState = MOVING
    └─ 强制轨迹更新: forceProfileUpdate = true
    │
    ▼ 仿真循环开始 (1ms周期)
    │
    ┌─────────────────────────────────────────────────┐
    │  每 10ms 执行一次 (分频)                        │
    │  MotionAxis_updateProfile() [C]                 │
    │    │                                             │
    │    ├─ TrapProfile_getPosition(dt=10ms)          │
    │    │   └─ 根据elapsed_time计算当前位置         │
    │    │                                             │
    │    ├─ ProfileBuffer_write(position)             │
    │    │   └─ 写入位置到环形缓冲区                  │
    │    │                                             │
    │    └─ 填充10个点到缓冲区                       │
    └─────────────────────────────────────────────────┘
    │
    ┌─────────────────────────────────────────────────┐
    │  每 1ms 执行一次 (位置环频率)                   │
    │  MotionAxis_updateControl() [C]                 │
    │    │                                             │
    │    ├─ ProfileBuffer_read(&cmdPos)               │
    │    │   └─ 从缓冲区读取位置命令                  │
    │    │                                             │
    │    ├─ MotorDrive_updateControl()                │
    │    │   └─ PID_run(cmdPos, actPos) → velRef      │
    │    │       └─ 位置环PID计算速度命令             │
    │    │                                             │
    │    └─ 输出: velRef (速度命令)                   │
    └─────────────────────────────────────────────────┘
    │
    ┌─────────────────────────────────────────────────┐
    │  电机仿真 (简化的惯性模型)                      │
    │  Motor Simulation [C#]                          │
    │    │                                             │
    │    ├─ 计算速度变化: Δvel = (velRef - actVel) × K │
    │    ├─ 更新速度: newVel = actVel + Δvel          │
    │    ├─ 更新位置: newPos = actPos + newVel × dt   │
    │    │                                             │
    │    └─ MotionAxis_updateFeedback(newPos, newVel) │
    └─────────────────────────────────────────────────┘
    │
    ▼
数据记录 & 图表显示
```

---

## 🗂️ 数据结构映射

### C 到 C# 的结构体对应

#### 示例: MotionAxis

**C 结构 (motion_control.h)**:
```c
typedef struct
{
    uint16_t axisID;                    // 轴ID
    AxisType_e axisType;                // 轴类型 (枚举)
    AxisState_e axisState;              // 轴状态 (枚举)
    uint16_t numMotors;                 // 电机数量
    MotorDrive_t motors[4];             // 电机数组 (固定4个)
    float32_t cmdPosition;              // 命令位置
    float32_t actPosition;              // 实际位置
    TrapezoidalProfile_t profile;       // 轨迹规划器
    ProfileBuffer_t posBuffer;          // 位置缓冲区
    // ...
} MotionAxis_t;
```

**C# 结构 (MotionControlAPI.cs)**:
```csharp
[StructLayout(LayoutKind.Sequential, Pack = 1)]
public struct MotionAxis
{
    public ushort axisID;               // 16位无符号 → ushort
    public AxisType axisType;           // 枚举 → C# enum
    public AxisState axisState;         // 枚举 → C# enum
    public ushort numMotors;
    [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
    public MotorDrive[] motors;         // 固定数组 → 特殊标记
    public float cmdPosition;           // float32_t → float
    public float actPosition;
    public TrapezoidalProfile profile;  // 嵌套结构体
    public ProfileBuffer posBuffer;     // 嵌套结构体
    // ...
}
```

**关键映射规则**:

| C 类型 | C# 类型 | 说明 |
|--------|---------|------|
| `float32_t` | `float` | 32位浮点 |
| `uint16_t` | `ushort` | 16位无符号整数 |
| `uint32_t` | `uint` | 32位无符号整数 |
| `bool` | `bool` + `[MarshalAs(UnmanagedType.U1)]` | 1字节布尔 |
| `float buffer[128]` | `[MarshalAs(UnmanagedType.ByValArray, SizeConst = 128)]` `float[] buffer` | 固定大小数组 |
| `struct Nested` | `struct Nested` | 嵌套结构体（递归映射） |

**内存对齐**: `Pack = 1` 确保无填充，与C的 `#pragma pack(1)` 对应。

---

## 🔌 P/Invoke 机制

### DllImport 声明格式

```csharp
[DllImport(
    "motion_control.dll",              // DLL文件名
    CallingConvention = CallingConvention.Cdecl,  // C调用约定
    EntryPoint = "MotionAxis_moveAbsolute"        // 可选：C函数名
)]
public static extern void MotionAxis_moveAbsolute(
    ref MotionAxis axis,               // ref = C的指针 (传引用)
    float targetPos                    // 值传递
);
```

### 参数传递规则

| C 声明 | C# 声明 | 说明 |
|--------|---------|------|
| `Type *ptr` | `ref Type ptr` | 指针 → 引用传递 |
| `const Type *ptr` | `in Type ptr` | 只读指针 → 只读引用 |
| `Type value` | `Type value` | 值传递 |
| `Type func(void)` | `Type func()` | 返回值 |
| `bool func(void)` | `[return: MarshalAs(UnmanagedType.U1)] bool func()` | 布尔返回值 |

### 调用约定

- **Cdecl**: C语言标准约定（调用者清理栈）
  - GCC默认使用
  - 支持可变参数
- **StdCall**: Windows API约定（被调用者清理栈）
  - 不适用于本项目

---

## 📊 缓冲区机制

### 环形缓冲区（FIFO）

```
ProfileBuffer (128个位置点)

写入端 (轨迹生成)           读取端 (位置环控制)
    ↓                           ↓
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │...│126│127│   │
└───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
      ↑                       ↑
   writeIdx                readIdx
   
count = (writeIdx - readIdx + 128) % 128
```

**写入逻辑** (`ProfileBuffer_write`):
```c
buffer[writeIdx] = position;
writeIdx = (writeIdx + 1) % 128;  // 环形递增
count++;
if(count > 128) { overflow++; return false; }
```

**读取逻辑** (`ProfileBuffer_read`):
```c
*position = buffer[readIdx];
readIdx = (readIdx + 1) % 128;    // 环形递增
count--;
if(count == 0) { underflow++; return false; }
```

### 频率匹配

- **轨迹生成**: 100Hz (10ms) - 每次写入10个点
- **位置环**: 1000Hz (1ms) - 每次读取1个点
- **缓冲容量**: 128个点 = 128ms数据
- **安全余量**: 约 12.8秒 @ 100Hz生成速度

**公式**:
```
缓冲时间 = 缓冲大小 / 位置环频率
        = 128 点 / 1000 Hz
        = 0.128 秒

饱和时间 = 缓冲大小 / (轨迹生成频率 × 每次写入点数 - 位置环频率)
        = 128 / (100 × 10 - 1000)
        = 128 / 0  (平衡状态)
```

---

## 🎮 电机仿真模型

### 简化的一阶惯性模型

```
                    PID位置环
命令位置 (cmdPos) ───────┬─────────▶ 速度命令 (velRef)
                         │
                    反馈 │
实际位置 (actPos) ◀──────┘

一阶惯性环节:
  actVel(n+1) = actVel(n) + [velRef - actVel(n)] × K × dt
  actPos(n+1) = actPos(n) + actVel(n+1) × dt

其中:
  K = 响应系数 (0.1 = 快速响应)
  dt = 仿真步长 (0.001s = 1ms)
```

**C# 实现**:
```csharp
float cmdVel = (axis.cmdPosition - motor.actPosition) * motor.posPID.Kp;
float dt = 0.001f;  // 1ms
float K = 0.1f;     // 响应系数

// 速度跟随
float newVel = motor.actVel + (cmdVel - motor.actVel) * K;

// 位置积分
float newPos = motor.actPosition + newVel * dt;

// 更新反馈
MotionAxis_updateFeedback(ref axis, 0, newPos, newVel);
```

**实际系统差异**:
- 真实电机有惯量、阻尼、饱和
- 真实电流环有带宽限制
- 真实反馈有延迟和噪声
- 本仿真仅为功能验证，不代表实际性能

---

## 📈 实时曲线显示

### OxyPlot 数据流

```
C 控制循环 (1ms) → 数据记录 → OxyPlot更新 (50ms) → WPF渲染
                      ↓
             List<DataPoint>
               (10000点 = 10秒)
                      ↓
         ┌────────────┴────────────┐
         │   Position Data         │
         │   Velocity Data         │
         │   Acceleration Data     │
         └────────────┬────────────┘
                      ↓
            LineSeries.Points.AddRange()
                      ↓
         PlotModel.InvalidatePlot(true)
                      ↓
              WPF UI Thread 渲染
```

**性能优化**:
1. **批量更新**: 每50ms更新一次，而非每点更新
2. **数据限制**: 保留最近10000个点 (10秒)
3. **异步渲染**: OxyPlot自动使用UI线程

### 图表配置

**位置曲线** (双系列):
```csharp
Series[0] = 命令位置 (蓝色, 粗线)
Series[1] = 实际位置 (红色, 细线)
```

**速度曲线** (单系列):
```csharp
Series[0] = 实际速度 (绿色)
梯形特征: 加速段 → 匀速段 → 减速段
```

**加速度曲线** (单系列):
```csharp
Series[0] = 瞬时加速度 (橙色)
计算: accel = Δvel / Δt
阶跃特征: +Amax → 0 → -Dmax
```

---

## 🔍 状态监视

### 实时状态更新 (20Hz)

```csharp
txtAxisState.Text = $"轴状态: {axis.axisState}";
txtCmdPos.Text = $"命令位置: {axis.cmdPosition:F2}";
txtActPos.Text = $"实际位置: {motors[0].actPosition:F2}";
txtFollowErr.Text = $"跟随误差: {cmdPos - actPos:F2}";
```

### 缓冲区可视化

```
┌─────────────────────────────────────┐
│ 缓冲数量: 45 / 128                  │
├─────────────────────────────────────┤
│ ████████████░░░░░░░░░░░░░░░░░░░░░░ │  35% 满
├─────────────────────────────────────┤
│ 溢出次数: 0    (生成过快)          │
│ 欠载次数: 0    (消耗过快)          │
│ 轨迹状态: Accel (加速段)           │
└─────────────────────────────────────┘
```

**健康指标**:
- ✅ **正常**: count 在 20-100 之间波动
- ⚠️ **警告**: count 长时间接近 0 或 128
- ❌ **异常**: overflow 或 underflow 计数增加

---

## 🧪 测试覆盖

本测试系统覆盖以下功能：

### 1. 轨迹规划 ✅
- [x] 梯形速度曲线
- [x] 三角形速度曲线（短距离）
- [x] 运动中途修改目标（平滑过渡）
- [x] 正常停止（按减速度）
- [x] 紧急停止（双倍减速度）

### 2. 位置控制 ✅
- [x] PID位置环
- [x] 跟随误差监控
- [x] 参数实时调整

### 3. 缓冲区管理 ✅
- [x] 环形缓冲区读写
- [x] 溢出/欠载检测
- [x] 容量监视

### 4. 多电机支持 ⏸️
- [ ] 单轴多电机同步
- [ ] 龙门轴仿真

### 5. 实时显示 ✅
- [x] 位置/速度/加速度曲线
- [x] 状态实时更新
- [x] 性能监控（更新率）

---

## 🎓 学习路径

### 初级用户
1. 运行快速入门示例
2. 观察梯形速度曲线
3. 调整速度/加速度参数
4. 理解PID增益的影响

### 中级用户
1. 修改电机仿真模型
2. 添加新的图表（如Jerk）
3. 实现S曲线轨迹规划
4. 优化缓冲区策略

### 高级用户
1. 集成真实硬件反馈
2. 实现多轴同步测试
3. 添加扰动和噪声模型
4. 性能基准测试

---

## 📞 技术支持

如遇到问题，请检查：
1. `README.md` - 完整使用说明
2. `QUICK_START.md` - 快速入门
3. `PROJECT_STRUCTURE.md` - 项目结构
4. 本文档 - 系统架构

---

**架构设计完成！开始您的运动控制之旅吧！** 🚀⚙️

