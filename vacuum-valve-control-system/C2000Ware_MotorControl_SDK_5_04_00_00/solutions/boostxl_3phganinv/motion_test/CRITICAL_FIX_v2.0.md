# 运动控制系统 - 关键修复 v2.0

## 问题诊断

### 症状
从用户提供的测试结果分析：

1. ✅ **轨迹规划部分正常**：位置曲线达到目标100
2. ❌ **实际电机位置始终为0**：电机模拟没有响应
3. ⚠️ **缓冲区始终为0**：生产速度跟不上消耗速度
4. ⚠️ **速度/加速度曲线平坦**：没有正确更新
5. ⚠️ **运动中途缓冲区清空**：导致运动中断

日志显示：
```
[02:44:17.092] OK: Buffer 0 -> 10, Time=0.100s/0.447s, State=Accel
[02:44:17.468] OK: Buffer 0 -> 10, Time=0.200s/0.447s, State=Accel
...
[02:44:20.439] WARN: Buffer=0, freeSpace=128, Time(before)=0.450s, State=Done
```

## 根本原因

### 原因1：`profileUpdateTs` 语义错误 ⚠️ 

**错误配置**：
```c
axis->profileUpdateTs = 0.010f;  // 错误：这不是updateProfile的调用间隔！
```

**正确理解**：
- `profileUpdateTs` 是 **每个轨迹点之间的时间间隔**
- 应该等于位置环周期（1ms），因为每1ms消耗一个点
- 不是 `updateProfile()` 的调用频率（10ms）

**生产/消耗速度分析**：

| 项目 | 旧配置 | 新配置 |
|------|--------|--------|
| updateProfile调用频率 | 10ms/次 | 10ms/次 |
| 每次生成点数 | 10个 | 最多64个 |
| 每个点的时间步长(dt) | 0.010s | 0.001s |
| 每次生成的轨迹时间 | 10×0.010=0.1s | 64×0.001=0.064s |
| updateControl调用频率 | 1ms/次 | 1ms/次 |
| updateControl消耗速度 | 1点/1ms | 1点/1ms |
| **10ms内消耗的点数** | 10个 | 10个 |
| **10ms内生产的点数** | 10个(轨迹0.1s) | 最多64个(轨迹0.064s) |
| **结论** | ⚠️不平衡(轨迹推进过快) | ✅平衡 |

旧配置的问题：
- 每次生成10个点，但这10个点对应0.1s的轨迹时间
- 实际10ms内只消耗10个点（0.01s实时）
- 轨迹时间推进速度是实时的10倍！
- 总时间0.447s的轨迹只需0.0447s就完成了

### 原因2：缓冲区填充数量不足

**旧代码**：
```c
for(i = 0; i < MIN(freeSpace, 10); i++)  // 每次最多10个
```

问题：
- 每10ms才调用一次updateProfile
- 每次只生成10个点
- 如果缓冲区被消耗快，无法及时补充

**新代码**：
```c
for(i = 0; i < MIN(freeSpace, 64); i++)  // 每次最多64个
```

优势：
- 快速填满缓冲区
- 提供更多余量，防止缓冲区饥饿
- 64个点 = 64ms的缓冲，足够6次updateProfile周期

### 原因3：电机模拟模型不正确

**旧模型**：使用位置PID计算速度指令
```csharp
float cmdVel = (actualCmdPos - motorActPos) * motorKp;
float newVel = motorActVel + (cmdVel - motorActVel) * K;
float newPos = motorActPos + newVel * dt;
```

问题：
- 这是速度控制模型，不适合伺服位置跟踪
- Kp太小时响应慢，太大时振荡
- 双重积分（速度→位置）引入相位滞后

**新模型**：一阶伺服系统
```csharp
float bandwidth = 50.0f;  // 50 rad/s (~8 Hz)
float posError = actualCmdPos - motorActPos;
float newVel = posError * bandwidth;  // 速度正比于位置误差
float newPos = motorActPos + newVel * dt;
```

优势：
- 直接从位置误差计算速度，无需PID
- 带宽参数直观（8Hz闭环响应）
- 一阶系统稳定，无振荡
- 模拟真实伺服电机的位置跟踪特性

## 修复内容

### 修复1：motion_control.c (Line 683-693)

**修改前**：
```c
axis->profileUpdateTs = 0.010f;  // 错误：10ms
axis->posLoopTs = 0.001f;
axis->profileUpdateDivider = 1;
```

**修改后**：
```c
// profileUpdateTs: 轨迹点之间的时间间隔（应等于位置环周期）
axis->profileUpdateTs = 0.001f;  // 1ms - 每个位置点的时间间隔
axis->posLoopTs = 0.001f;        // 1ms - 位置环周期
axis->profileUpdateDivider = 1;  // C#端控制调用频率
```

### 修复2：motion_control.c (Line 987-1001)

**修改前**：
```c
for(i = 0; i < MIN(freeSpace, 10); i++)  // 只填充10个点
```

**修改后**：
```c
// 策略：尽可能填满缓冲区，确保位置环始终有足够数据
// 限制：每次最多填充64个点（缓冲区大小的一半），避免CPU过载
for(i = 0; i < MIN(freeSpace, 64); i++)
```

### 修复3：MainWindow.xaml.cs (Line 209-234)

**修改前**：
```csharp
// 使用位置PID计算速度
float cmdVel = motorPIDEnabled ? 
    (actualCmdPos - motorActPos) * motorKp : 0.0f;
float K = 0.1f;
float newVel = motorActVel + (cmdVel - motorActVel) * K;
```

**修改后**：
```csharp
// 伺服位置跟踪：直接追随命令位置，带宽50 rad/s
float bandwidth = 50.0f;  // ~8 Hz闭环带宽
float posError = actualCmdPos - motorActPos;
float newVel = posError * bandwidth;
// 速度限幅
if (newVel > 1000.0f) newVel = 1000.0f;
if (newVel < -1000.0f) newVel = -1000.0f;
```

## 预期改进

### 改进1：缓冲区管理
- ✅ 缓冲区快速填充到50-64个点
- ✅ 运动过程中缓冲区保持充足（>20个点）
- ✅ 不会出现 `Buffer=0` 的情况
- ✅ 日志显示稳定的生产/消耗模式

### 改进2：轨迹执行
- ✅ 轨迹时间正确（0.447s的规划对应0.447s的实际运动）
- ✅ `dt=0.001s` （正确的时间步长）
- ✅ 速度曲线符合梯形曲线（加速→匀速→减速）
- ✅ 位置平滑到达目标值

### 改进3：电机响应
- ✅ 实际位置跟踪命令位置（小滞后，符合真实伺服特性）
- ✅ 速度曲线与轨迹规划匹配
- ✅ 加速度曲线合理
- ✅ 无振荡、无超调

## 测试验证

### 预期日志输出

**正常运动日志**：
```
[时间] Axis enabled
[时间] Absolute motion command: target = 100
[时间] OK: Buffer 0 -> 64, Time=0.001s/0.447s, State=Accel   // 初次填充满
[时间] OK: Buffer 54 -> 64, Time=0.011s/0.447s, State=Accel  // 保持充足
[时间] OK: Buffer 54 -> 64, Time=0.021s/0.447s, State=Accel
...
[时间] OK: Buffer 54 -> 64, Time=0.300s/0.447s, State=Coast  // 匀速段
...
[时间] OK: Buffer 54 -> 64, Time=0.400s/0.447s, State=Decel  // 减速段
[时间] OK: Buffer 44 -> 47, Time=0.440s/0.447s, State=Decel  // 接近完成
[时间] Profile done, axis state -> Standby
```

### 性能指标

| 指标 | 目标值 | 说明 |
|------|--------|------|
| 缓冲区最小值 | >20个点 | 确保不会饥饿 |
| dt值 | 0.001s | 正确的时间步长 |
| 轨迹时间准确度 | ±5% | 规划vs实际 |
| 位置误差 | <10 counts | 跟踪精度 |
| 速度曲线平滑度 | 无突变 | 梯形特性 |

### 图表特征

**位置曲线**：
- S型加速段（0-0.15s）
- 线性匀速段（0.15-0.3s）
- S型减速段（0.3-0.447s）
- 最终准确到达100

**速度曲线**：
- 从0线性增加到最大速度
- 保持恒定
- 线性减速到0
- 标准梯形曲线

**加速度曲线**：
- 加速段：正值恒定
- 匀速段：0
- 减速段：负值恒定
- 阶跃变化点清晰

## 技术要点总结

### 时间语义澄清

1. **`profileUpdateTs`**: 
   - ❌ 不是updateProfile的调用间隔
   - ✅ 是缓冲区中相邻位置点之间的时间间隔
   - 应该等于位置环周期

2. **`posLoopTs`**:
   - 位置环（updateControl）的执行周期
   - 决定每个点被消耗的时间间隔

3. **`profileUpdateDivider`**:
   - 控制updateProfile相对于某个基准中断的调用频率
   - 在PC仿真中设为1（C#端控制）
   - 在嵌入式中可设为10（1KHz中断中每10次调用一次）

### 缓冲区设计原则

1. **深度**：128个点 = 128ms @ 1KHz
2. **填充策略**：每次尽量填充（最多64个）
3. **消耗速度**：1个点/周期（1KHz = 1点/ms）
4. **安全余量**：保持>20个点避免饥饿

### 伺服模拟原理

一阶系统传递函数：
```
H(s) = ω_n / (s + ω_n)
```

其中 `ω_n = bandwidth = 50 rad/s`

时域实现：
```
v(t) = (pos_cmd - pos_act) × ω_n
pos(t+dt) = pos(t) + v(t) × dt
```

特性：
- 3dB带宽：50 rad/s = 7.96 Hz
- 上升时间：~44ms
- 无超调
- 稳定跟踪

## 文件修改清单

1. ✅ `f2837x_cpu1/source/motion_control.c` (1387行)
   - 修正profileUpdateTs为0.001s
   - 增加缓冲区填充数量到64
   - 添加详细注释说明时间语义

2. ✅ `motion_test/MotionAPI_Test/MainWindow.xaml.cs` (553行)
   - 改进电机伺服模拟模型
   - 使用带宽参数化的一阶系统

3. ✅ 重新编译DLL和C#应用
   - motion_control.dll
   - MotionAPI_Test.exe

## 下一步测试

1. **基本运动**：目标位置100，验证平滑到达
2. **长距离**：目标位置1000，验证匀速段
3. **短距离**：目标位置10，验证三角形速度曲线
4. **连续运动**：不停止，连续发送新目标
5. **急停测试**：运动中点击"停止"按钮

---

**修复版本**: v2.0
**日期**: 2026-01-01
**状态**: ✅ 编译成功，等待测试验证

**关键修复**: profileUpdateTs语义 + 缓冲区策略 + 伺服模拟



