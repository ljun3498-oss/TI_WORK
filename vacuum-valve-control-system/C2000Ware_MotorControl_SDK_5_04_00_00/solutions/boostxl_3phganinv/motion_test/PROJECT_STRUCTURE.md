# 项目结构说明

## 📁 目录结构

```
motion_test/
│
├── build_dll.bat                   # DLL编译脚本（Windows批处理）
├── motion_control.dll              # 编译生成的C库DLL（运行时）
├── motion_control_types.h          # 类型定义（Windows兼容）
│
├── MotionAPI_Test.sln              # Visual Studio解决方案文件
│
├── MotionAPI_Test/                 # C# WPF项目目录
│   ├── MotionAPI_Test.csproj       # C#项目文件（SDK风格）
│   ├── App.xaml                    # WPF应用程序定义（XAML）
│   ├── App.xaml.cs                 # 应用程序代码后端
│   ├── MainWindow.xaml             # 主窗口界面（XAML）
│   ├── MainWindow.xaml.cs          # 主窗口逻辑代码
│   └── MotionControlAPI.cs         # P/Invoke API包装类
│
├── README.md                       # 完整使用说明
├── QUICK_START.md                  # 5分钟快速入门
└── PROJECT_STRUCTURE.md            # 本文件
```

## 🔧 核心文件说明

### 1. `build_dll.bat` - DLL编译脚本

**功能**: 将 C 源码编译为 Windows DLL

**关键参数**:
```batch
gcc -shared -o motion_control.dll \
    motion_control.c \
    -I../f2837x_cpu1/include \
    -lm \                           # 链接数学库（sqrt等）
    -O2 \                           # 优化级别2
    -Dfloat32_t=float \             # 类型映射
    -Duint16_t="unsigned short" \
    -Duint32_t="unsigned int"
```

**依赖**:
- MinGW-w64 GCC 编译器
- C2000 SDK的 `motion_control.c` 和 `motion_control.h`

**输出**:
- `motion_control.dll` - Windows 64位动态链接库

---

### 2. `motion_control_types.h` - 类型定义

**功能**: 提供 TI C2000 类型到标准C类型的映射

```c
typedef float float32_t;           // TI C2000浮点类型
typedef unsigned short uint16_t;   // 16位无符号整数
typedef unsigned int uint32_t;     // 32位无符号整数
typedef unsigned char bool;        // 布尔类型
```

**用途**:
- 保证C代码在Windows上编译通过
- 不需要修改原始SDK代码

---

### 3. `MotionAPI_Test.csproj` - C#项目文件

**目标框架**: .NET 6.0 Windows

**关键配置**:
```xml
<TargetFramework>net6.0-windows</TargetFramework>
<UseWPF>true</UseWPF>                   <!-- 启用WPF -->
<AllowUnsafeBlocks>true</AllowUnsafeBlocks>  <!-- P/Invoke需要 -->
<Platforms>x64</Platforms>               <!-- 64位平台 -->
```

**NuGet依赖**:
- `OxyPlot.Wpf` 2.1.2 - 实时绘图库

**自动复制DLL**:
```xml
<None Update="motion_control.dll">
  <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
</None>
```

---

### 4. `MotionControlAPI.cs` - P/Invoke包装类

**功能**: C# 到 C DLL 的桥梁

**核心技术**: Platform Invoke (P/Invoke)

#### 结构体映射示例

**C 定义** (`motion_control.h`):
```c
typedef struct {
    uint16_t axisID;
    AxisType_e axisType;
    float32_t cmdPosition;
    float32_t actPosition;
    TrapezoidalProfile_t profile;
    ProfileBuffer_t posBuffer;
    // ...
} MotionAxis_t;
```

**C# 映射** (`MotionControlAPI.cs`):
```csharp
[StructLayout(LayoutKind.Sequential, Pack = 1)]
public struct MotionAxis
{
    public ushort axisID;
    public AxisType axisType;
    public float cmdPosition;
    public float actPosition;
    public TrapezoidalProfile profile;
    public ProfileBuffer posBuffer;
    // ...
}
```

**关键点**:
- `LayoutKind.Sequential`: 按顺序排列字段（与C对应）
- `Pack = 1`: 字节对齐为1（无填充）
- 数组大小必须完全匹配（如 `buffer[128]`, `motors[4]`）

#### 函数映射示例

**C 函数**:
```c
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos);
```

**C# 包装**:
```csharp
[DllImport("motion_control.dll", CallingConvention = CallingConvention.Cdecl)]
public static extern void MotionAxis_moveAbsolute(ref MotionAxis axis, float targetPos);
```

**调用约定**: `Cdecl` - C标准调用约定

---

### 5. `MainWindow.xaml` - WPF界面定义

**功能**: 声明式UI布局（XML语法）

**主要区域**:

1. **控制面板** (`GroupBox`)
   - 使能/禁用按钮
   - 参数输入框（速度、加速度、PID）
   - 运动命令按钮

2. **图表区域** (`PlotView` × 3)
   - 位置曲线
   - 速度曲线
   - 加速度曲线

3. **状态显示** (`TextBlock` 组)
   - 实时数据
   - 缓冲区监视
   - 运行日志

4. **状态栏** (`StatusBar`)
   - 系统消息
   - 仿真时间
   - 更新率

**关键控件**:
```xml
<!-- OxyPlot图表 -->
<oxy:PlotView x:Name="plotPosition" Model="{Binding PositionPlotModel}"/>

<!-- 数据绑定 -->
<TextBlock x:Name="txtAxisState" Text="轴状态: Disabled"/>

<!-- 事件绑定 -->
<Button Content="绝对运动" Click="BtnMoveAbs_Click"/>
```

---

### 6. `MainWindow.xaml.cs` - 主窗口逻辑

**功能**: UI事件处理和业务逻辑

#### 核心类成员

```csharp
public partial class MainWindow : Window
{
    // 运动轴实例（C结构体）
    private MotionControlAPI.MotionAxis axis;
    
    // WPF定时器
    private DispatcherTimer simTimer;   // 高频仿真（1ms）
    private DispatcherTimer plotTimer;  // 图表更新（50ms）
    
    // 数据记录
    private List<DataPoint> positionData;
    private List<DataPoint> velocityData;
    private List<DataPoint> accelerationData;
    
    // OxyPlot模型（绑定到XAML）
    public PlotModel PositionPlotModel { get; private set; }
    public PlotModel VelocityPlotModel { get; private set; }
    public PlotModel AccelerationPlotModel { get; private set; }
}
```

#### 关键方法

**1. 初始化流程**
```csharp
InitializeComponent()        // WPF自动生成，加载XAML
  → InitializePlots()        // 创建OxyPlot图表
  → InitializeAxis()         // 初始化C运动轴
  → InitializeTimers()       // 启动定时器
```

**2. 仿真循环** (`SimTimer_Tick`, 1ms)
```csharp
1. 更新轨迹规划 (10ms分频)
   MotionAxis_updateProfile(ref axis)
   
2. 更新位置环控制 (1ms)
   MotionAxis_updateControl(ref axis)
   
3. 模拟电机反馈
   MotionAxis_updateFeedback(ref axis, ...)
   
4. 记录数据点
   positionData.Add(...)
```

**3. 图表更新** (`PlotTimer_Tick`, 50ms)
```csharp
1. 更新系列数据
   cmdPosSeries.Points.AddRange(cmdPosData)
   
2. 刷新图表
   PositionPlotModel.InvalidatePlot(true)
   
3. 更新状态显示
   txtAxisState.Text = ...
```

**4. 命令按钮**
```csharp
BtnMoveAbs_Click()
  → 解析目标位置
  → MotionAxis_moveAbsolute(ref axis, targetPos)
  → 启动仿真定时器
  → 记录日志
```

---

## 🔄 数据流图

```
┌─────────────────────────────────────────────────────────────┐
│                    C# WPF Application                       │
├─────────────────────────────────────────────────────────────┤
│  MainWindow.xaml.cs                                         │
│  ┌────────────────────┐         ┌────────────────────┐      │
│  │ SimTimer (1ms)     │         │ PlotTimer (50ms)   │      │
│  │  ├─ updateProfile  │         │  ├─ Update Charts  │      │
│  │  ├─ updateControl  │    ────▶│  └─ Update Status  │      │
│  │  └─ updateFeedback │         │                    │      │
│  └──────┬─────────────┘         └────────────────────┘      │
│         │ P/Invoke                                           │
└─────────┼────────────────────────────────────────────────────┘
          │
          ▼ DllImport
┌─────────────────────────────────────────────────────────────┐
│                  motion_control.dll (C)                     │
├─────────────────────────────────────────────────────────────┤
│  MotionAxis_updateProfile()                                 │
│    └─ TrapProfile_getPosition() ──▶ ProfileBuffer_write()  │
│                                                             │
│  MotionAxis_updateControl()                                 │
│    └─ ProfileBuffer_read() ──▶ PID_run() ──▶ velRef       │
│                                                             │
│  MotionAxis_updateFeedback()                                │
│    └─ MotorDrive_updateFeedback() ──▶ actPos, actVel      │
└─────────────────────────────────────────────────────────────┘
```

---

## 🎨 WPF + OxyPlot 架构

### OxyPlot 数据绑定

**XAML 声明**:
```xml
<oxy:PlotView Model="{Binding PositionPlotModel}"/>
```

**C# 属性**:
```csharp
public PlotModel PositionPlotModel { get; private set; }
```

**数据更新**:
```csharp
var series = PositionPlotModel.Series[0] as LineSeries;
series.Points.Clear();
series.Points.AddRange(positionData);
PositionPlotModel.InvalidatePlot(true);  // 强制重绘
```

### WPF 定时器选择

| 定时器类型 | 精度 | 用途 | 本项目使用 |
|----------|------|------|----------|
| `System.Timers.Timer` | ~15ms | 后台任务 | ❌ |
| `System.Threading.Timer` | ~1ms | 多线程 | ❌ |
| `DispatcherTimer` | ~1ms | UI线程 | ✅ |

**选择原因**: `DispatcherTimer` 在 UI 线程运行，可直接更新控件，无需 `Dispatcher.Invoke`。

---

## 🚀 构建流程

### 开发模式

1. **修改C代码**: 编辑 `motion_control.c`
2. **编译DLL**: 运行 `build_dll.bat`
3. **复制DLL**: 自动复制到 `bin\Debug\`（csproj配置）
4. **运行C#**: 按 F5 启动调试

### 发布模式

```bash
# 1. 编译 Release 版本 DLL
gcc -shared -o motion_control.dll motion_control.c -O3 -DNDEBUG

# 2. 发布 C# 项目
dotnet publish -c Release -r win-x64 --self-contained false

# 3. 输出位置
bin\Release\net6.0-windows\win-x64\publish\
```

---

## 🧩 扩展指南

### 添加新的运动命令

**1. C库** (`motion_control.c`)
```c
void MotionAxis_moveWithJerk(MotionAxis_t *axis, float32_t targetPos, float32_t jerk)
{
    // 实现S曲线规划
}
```

**2. C#包装** (`MotionControlAPI.cs`)
```csharp
[DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
public static extern void MotionAxis_moveWithJerk(ref MotionAxis axis, float targetPos, float jerk);
```

**3. UI** (`MainWindow.xaml`)
```xml
<TextBox x:Name="txtJerk" Text="5000"/>
<Button Content="S曲线运动" Click="BtnMoveJerk_Click"/>
```

**4. 逻辑** (`MainWindow.xaml.cs`)
```csharp
private void BtnMoveJerk_Click(object sender, RoutedEventArgs e)
{
    float jerk = float.Parse(txtJerk.Text);
    MotionControlAPI.MotionAxis_moveWithJerk(ref axis, targetPos, jerk);
}
```

### 添加新的图表

```csharp
// 1. 创建模型
public PlotModel JerkPlotModel { get; private set; }

JerkPlotModel = new PlotModel { Title = "Jerk曲线" };
JerkPlotModel.Series.Add(new LineSeries { Title = "Jerk", Color = OxyColors.Purple });

// 2. XAML绑定
<oxy:PlotView Model="{Binding JerkPlotModel}"/>

// 3. 更新数据
var jerkSeries = JerkPlotModel.Series[0] as LineSeries;
jerkSeries.Points.AddRange(jerkData);
JerkPlotModel.InvalidatePlot(true);
```

---

## 📚 参考资料

- **P/Invoke**: https://docs.microsoft.com/en-us/dotnet/standard/native-interop/pinvoke
- **OxyPlot**: https://oxyplot.readthedocs.io/
- **WPF**: https://docs.microsoft.com/en-us/dotnet/desktop/wpf/
- **MinGW-w64**: https://www.mingw-w64.org/

---

**Happy Coding!** 💻✨

