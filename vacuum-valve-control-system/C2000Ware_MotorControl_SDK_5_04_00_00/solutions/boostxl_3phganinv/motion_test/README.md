# 运动控制API测试工具

## 简介

这是一个基于 C# WPF + OxyPlot 开发的运动控制API测试工具，用于测试和验证 `motion_control.c` 库的功能。

## 功能特点

✅ **完整的运动控制测试**
- 绝对位置运动命令
- 相对位置运动命令
- 正常停止 / 紧急停止
- 实时参数调整（速度、加速度、PID等）

✅ **实时曲线显示**
- 位置曲线（命令位置 vs 实际位置）
- 速度曲线
- 加速度曲线
- 跟随误差监控

✅ **缓冲区监视**
- 实时显示位置缓冲区使用情况
- 溢出/欠载次数统计
- 轨迹规划状态显示

✅ **高频仿真**
- 支持 100Hz ~ 2000Hz 仿真频率
- 模拟真实运动控制系统

## 系统要求

- **操作系统**: Windows 10/11 (64-bit)
- **开发环境**: 
  - Visual Studio 2022 或更高版本
  - .NET 6.0 SDK
- **编译工具**: 
  - MinGW-w64 或 MSYS2（用于编译C库为DLL）
  - GCC编译器

## 快速开始

### 1. 安装 MinGW-w64

如果您还没有安装 MinGW-w64，请从以下链接下载并安装：
- MSYS2: https://www.msys2.org/

安装完成后，在 MSYS2 终端中安装 GCC：
```bash
pacman -S mingw-w64-x86_64-gcc
```

将 MinGW-w64 的 bin 目录添加到系统 PATH：
```
C:\msys64\mingw64\bin
```

### 2. 编译 motion_control.dll

在 `motion_test` 目录下，双击运行 `build_dll.bat`：
```cmd
cd motion_test
build_dll.bat
```

成功后会在当前目录生成 `motion_control.dll`。

### 3. 打开和运行C#项目

在 Visual Studio 中打开 `MotionAPI_Test.sln`：
1. 右键点击解决方案 → 还原 NuGet 包
2. 确保 `motion_control.dll` 被复制到输出目录（自动配置）
3. 按 F5 运行项目

## 使用说明

### 基本操作流程

1. **使能轴**
   - 点击 "使能轴" 按钮
   - 轴状态应显示为 "Standby"

2. **设置运动参数**
   - 最大速度: 500 (counts/s)
   - 最大加速度: 2000 (counts/s²)
   - 最大减速度: 2000 (counts/s²)
   - 点击 "设置参数" 应用

3. **设置PID参数**
   - Kp: 10.0（比例增益）
   - Ki: 0.5（积分增益）
   - Kd: 0.1（微分增益）
   - 点击 "设置PID" 应用

4. **发送运动命令**
   - 输入目标位置（如 1000）
   - 点击 "绝对运动" 或 "相对运动"
   - 观察实时曲线和状态

5. **停止运动**
   - 正常停止：按减速度停止
   - 急停：按2倍减速度立即停止

### 界面说明

#### 控制面板
- **使能控制**: 使能/禁用运动轴
- **运动参数**: 设置最大速度、加速度、减速度
- **PID参数**: 调整位置环PID增益
- **运动命令**: 发送绝对/相对运动命令，停止/急停
- **仿真频率**: 调整控制循环频率（100Hz ~ 2000Hz）

#### 图表区域
- **位置曲线**: 蓝色=命令位置，红色=实际位置
- **速度曲线**: 绿色=实际速度
- **加速度曲线**: 橙色=实际加速度

#### 状态显示
- **实时状态**: 轴状态、位置、速度、加速度、跟随误差
- **位置缓冲区**: 缓冲数量、溢出/欠载统计、轨迹状态
- **运行日志**: 所有操作和事件的时间戳记录

#### 底部状态栏
- 当前状态消息
- 仿真时间（秒）
- 实际更新率（Hz）

## 测试场景示例

### 场景1: 简单定位
```
1. 使能轴
2. 设置: V=500, A=2000, D=2000
3. 目标位置: 1000
4. 点击 "绝对运动"
5. 观察梯形速度曲线
```

### 场景2: 连续运动
```
1. 第一次运动: 目标位置 = 1000
2. 运动中途修改: 目标位置 = 2000
3. 观察平滑过渡（无急停）
```

### 场景3: 紧急停止
```
1. 发送运动命令: 目标位置 = 5000
2. 在加速段点击 "急停"
3. 观察双倍减速度停止
```

### 场景4: PID调试
```
1. 初始PID: Kp=1.0, Ki=0.0, Kd=0.0
2. 发送运动命令，观察响应
3. 逐步增大Kp，观察跟随误差变化
4. 添加Ki，消除稳态误差
5. 添加Kd，抑制超调
```

### 场景5: 缓冲区监视
```
1. 设置高速运动: V=1000, A=5000
2. 发送长距离运动: 目标位置 = 10000
3. 监视缓冲区填充情况
4. 检查溢出/欠载次数
```

## 技术架构

### C 库编译
- **源文件**: `motion_control.c`
- **头文件**: `motion_control.h`, `motion_control_types.h`
- **编译器**: GCC (MinGW-w64)
- **输出**: `motion_control.dll` (Windows DLL)

### C# 项目结构
```
MotionAPI_Test/
├── MotionAPI_Test.csproj       # 项目文件
├── App.xaml / App.xaml.cs      # 应用程序入口
├── MainWindow.xaml             # 主窗口界面（WPF）
├── MainWindow.xaml.cs          # 主窗口逻辑
└── MotionControlAPI.cs         # P/Invoke API包装
```

### 关键技术
- **P/Invoke**: C# 调用 C DLL的桥梁
- **WPF**: 现代化Windows桌面UI框架
- **OxyPlot**: 高性能实时绘图库
- **DispatcherTimer**: WPF高精度定时器

## 已知限制

1. **电机仿真简化**: 使用简单的一阶惯性模型，不包含实际电机的复杂动态特性
2. **单轴测试**: 当前仅支持单轴测试，不支持多轴同步测试
3. **Windows专用**: DLL编译和C#程序仅支持Windows平台

## 故障排除

### DLL加载失败
**错误**: `DllNotFoundException: Unable to load DLL 'motion_control.dll'`

**解决方案**:
1. 确认 `motion_control.dll` 在程序目录下
2. 确认DLL是64位编译的（与C#程序匹配）
3. 使用 Dependency Walker 检查DLL依赖项

### 编译DLL失败
**错误**: `gcc: command not found`

**解决方案**:
1. 安装 MinGW-w64 或 MSYS2
2. 将 GCC 添加到系统 PATH
3. 重启命令提示符

### 类型不匹配错误
**错误**: `MarshalDirectiveException`

**解决方案**:
1. 检查 C# 结构体定义是否与 C 结构体完全对应
2. 确认字节对齐设置（`LayoutKind.Sequential, Pack = 1`）
3. 确认数组大小正确（如 `buffer[128]`, `motors[4]`）

## 扩展开发

### 添加新的API函数
1. 在 `MotionControlAPI.cs` 中添加 `DllImport` 声明
2. 确保参数类型与C函数完全匹配
3. 在 `MainWindow.xaml.cs` 中调用新函数

### 添加新的图表
1. 在 `InitializePlots()` 中创建新的 `PlotModel`
2. 在 XAML 中添加新的 `PlotView` 控件
3. 在 `PlotTimer_Tick()` 中更新图表数据

### 修改仿真模型
在 `SimTimer_Tick()` 函数中修改电机反馈模拟逻辑，可以实现更复杂的动态特性。

## 许可证

版权所有 (C) 2025 Texas Instruments Incorporated

## 联系方式

如有问题或建议，请联系项目维护者。

---

**祝您测试顺利！** 🚀

