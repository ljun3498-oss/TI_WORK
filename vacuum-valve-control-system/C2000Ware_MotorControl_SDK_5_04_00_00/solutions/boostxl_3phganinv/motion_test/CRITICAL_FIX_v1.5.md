# 运动控制测试软件 v1.5 - 修复缓冲区为空导致无运动

**日期**: 2025-12-30  
**版本**: v1.5  
**修复类型**: 修复轨迹规划分频器配置错误

---

## 问题描述

### 用户报告的问题（v1.4 之后）
即使在 v1.4 中禁用了跟踪误差检测后，仍然出现：
1. ✅ **轴状态：Moving**（正常）
2. ✅ **轨迹状态：Accel**（正常）
3. ❌ **缓冲区数量：0 / 128**（关键问题！）
4. ❌ **所有位置/速度值始终为 0**
5. ❌ **错误计数持续增长**（从 0 → 641 → 更大）

### 现象分析

从运行日志可以看出：
```
[00:31:11.453] 绝对运动命令：目标位置 = 1000
[00:31:12.457] 正常停止命令已发送
[00:31:26.497] 轴已使能
```

- 轴状态正确变为 `Moving`
- 轨迹状态显示 `Accel`（加速阶段）
- **但是位置序列缓冲区始终为空（0 / 128）**
- 位置环无法读取到新的命令位置
- 所有位置、速度、加速度保持为 0

---

## 根本原因

### 分频器配置错误导致轨迹生成频率过低

在 `motion_control.c` 的 `MotionAxis_init()` 中：

```c
// 初始化代码（错误配置）
axis->profileUpdateDivider = 10;   // ❌ 错误：10 分频
```

在 C# 仿真代码 `MainWindow.xaml.cs` 中：

```csharp
// 1. 更新轨迹规划（模拟10ms更新周期）
if ((int)(simTime * 1000) % 10 == 0)
{
    MotionControlAPI.MotionAxis_updateProfile(ref axis);
}

// 2. 更新位置环控制（1ms周期）
MotionControlAPI.MotionAxis_updateControl(ref axis);
```

### 问题链条

1. **C# 端调用频率**：每 10ms 调用一次 `MotionAxis_updateProfile()`
2. **C 端内部分频**：`profileUpdateDivider = 10`，需要调用 10 次才执行一次轨迹生成
3. **实际执行频率**：10ms × 10 = **100ms 才执行一次轨迹生成**

### 为什么缓冲区为空？

在 `MotionAxis_updateProfile()` 中：

```c
void MotionAxis_updateProfile(MotionAxis_t *axis)
{
    // ...
    
    // 正常分频控制
    axis->profileUpdateCounter++;
    if(axis->profileUpdateCounter >= axis->profileUpdateDivider)  // 需要计数到 10
    {
        shouldUpdate = true;
        axis->profileUpdateCounter = 0;
    }
    
    // 如果不需要更新，直接返回（大部分时候都会返回！）
    if(!shouldUpdate)
    {
        return;  // ❌ 直接退出，不生成任何位置序列
    }
    
    // 填充位置序列到缓冲区
    for(i = 0; i < MIN(freeSpace, 10); i++)
    {
        position = TrapProfile_getPosition(&axis->profile, axis->profileUpdateTs);
        ProfileBuffer_write(&axis->posBuffer, position);
        // ...
    }
}
```

**结果**：
- 前 9 次调用都直接返回，不生成任何位置序列
- 第 10 次调用才生成 10 个位置点
- 但 10ms × 10 = 100ms 的间隔太长，缓冲区很快被消耗完
- 缓冲区大部分时间都是空的（0 / 128）

---

## 解决方案

### 修改：将分频器设置为 1（不分频）

在 `motion_control.c` 的 `MotionAxis_init()` 中：

**Before (v1.4) - ❌ 错误：**
```c
// 频率控制参数（轨迹更新频率可以低于位置环频率以降低CPU占用）
// 默认值：分频比=1，即轨迹更新频率=位置环频率
// 可以设置为5，即每5次位置环执行1次轨迹更新（例如：位置环1KHz，轨迹更新200Hz）
axis->profileUpdateDivider = 10;   // ❌ 错误配置
axis->profileUpdateCounter = 0;
axis->forceProfileUpdate = false;
```

**After (v1.5) - ✅ 正确：**
```c
// 频率控制参数（轨迹更新频率可以低于位置环频率以降低CPU占用）
// 对于PC仿真，设置为1（不分频），因为C#端已经控制调用频率
// 在实际嵌入式系统中，可以设置为5-10来降低CPU占用
axis->profileUpdateDivider = 1;   // ✅ PC仿真：不分频
axis->profileUpdateCounter = 0;
axis->forceProfileUpdate = false;
```

### 为什么设置为 1？

1. **C# 端已经控制调用频率**
   - 仿真代码每 10ms 调用一次 `MotionAxis_updateProfile()`
   - 不需要 C 端再次分频

2. **避免双重分频**
   - C# 端：10ms 调用周期
   - C 端：1 分频（每次调用都执行）
   - 实际执行频率：10ms = 100Hz（合理）

3. **在实际嵌入式系统中的配置**
   - 如果位置环 = 1KHz（1ms）
   - 轨迹更新可以设置为 5-10 分频 → 100-200Hz
   - 这样可以降低 CPU 占用，同时保证足够的轨迹分辨率

---

## 预期效果

### 修复后的行为

1. **缓冲区正常填充**
   - 缓冲数量：10-50 / 128（动态变化）
   - 不再始终为 0

2. **位置正常变化**
   - 命令位置：0 → 逐渐增加到 1000
   - 实际位置：跟随命令位置

3. **速度曲线正常**
   - 显示梯形轮廓（加速 → 匀速 → 减速）

4. **错误计数正常**
   - 保持为 0（或小值）
   - 不再持续增长

### 测试步骤

1. **启动程序**
   - ✅ 轴ID: 1, 类型: Real, 电机数量: 1

2. **使能轴**
   - ✅ 轴状态：Disabled → Standby

3. **发送绝对运动（目标 = 1000）**
   - ✅ 轴状态：Standby → Moving
   - ✅ 缓冲数量：0 → 10-50（动态）
   - ✅ 命令位置：0 → 逐渐增加
   - ✅ 实际位置：跟随命令位置
   - ✅ 速度曲线：梯形
   - ✅ 错误计数：保持 0

4. **观察曲线图**
   - ✅ 位置曲线：平滑上升
   - ✅ 速度曲线：梯形轮廓
   - ✅ 加速度曲线：阶跃

---

## 分频器设计原理

### 为什么需要分频器？

在实际嵌入式系统中：

1. **位置环频率通常很高**
   - 典型值：1-2 KHz（1ms - 0.5ms）
   - 需要快速响应，实时性要求高

2. **轨迹规划计算量大**
   - 梯形曲线计算
   - 多点位置序列生成
   - 缓冲区管理

3. **CPU 资源有限**
   - 需要在实时性和 CPU 占用之间平衡
   - 轨迹更新频率可以低于位置环频率

### 分频比的选择

| 位置环频率 | 分频比 | 轨迹更新频率 | 适用场景 |
|-----------|-------|-------------|---------|
| 1 KHz     | 1     | 1 KHz       | PC 仿真，CPU 资源充足 |
| 1 KHz     | 5     | 200 Hz      | 一般应用，平衡性能 |
| 1 KHz     | 10    | 100 Hz      | 低速运动，降低 CPU 占用 |
| 2 KHz     | 10    | 200 Hz      | 高速位置环，标准轨迹频率 |

### 缓冲区的作用

```
轨迹生成（低频） → 位置序列缓冲区 → 位置环控制（高频）
    100-200 Hz           FIFO           1-2 KHz
```

**优势**：
- 解耦轨迹生成和位置控制
- 允许不同的执行频率
- 平滑 CPU 负载
- 提供时间裕度

---

## 实际嵌入式系统配置建议

### 在 TMS320F28379D 上的配置

假设：
- 位置环 ISR：1 KHz（由 CPU Timer 触发，每 1ms）
- 轨迹更新：200 Hz（分频比 = 5）

```c
// motion_control.c: MotionAxis_init()
axis->profileUpdateDivider = 5;    // 分频比 = 5
axis->posLoopTs = 0.001f;          // 位置环周期 = 1ms
axis->profileUpdateTs = 0.001f;    // 轨迹点间隔 = 1ms
```

```c
// dual_axis_servo_ctrl_main_cpu1.c: 定时器 ISR
__interrupt void motionControlTimerISR(void)
{
    static uint16_t counter = 0;
    counter++;
    
    if(counter >= 20)  // 50us * 20 = 1ms
    {
        counter = 0;
        
        // 每 1ms 执行一次
        MotionAxis_updateControl(&motionAxis1);    // 位置环控制
        MotionAxis_updateProfile(&motionAxis1);    // 轨迹更新（内部 5 分频）
        
        // MotionAxis_updateProfile 内部：
        // - 第 1-4 次调用：直接返回（不生成轨迹）
        // - 第 5 次调用：生成 10 个位置点，填充到缓冲区
        // - 实际轨迹更新频率 = 1ms * 5 = 5ms = 200Hz
    }
    
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
```

### 缓冲区大小的选择

```c
#define MOTION_PROFILE_BUFFER_SIZE  128  // 默认值
```

**考虑因素**：
1. **最坏情况缓冲时间** = 缓冲区大小 × 位置环周期
   - 128 × 1ms = 128ms
   - 可以承受 128ms 的轨迹生成中断

2. **内存占用** = 缓冲区大小 × sizeof(float32_t)
   - 128 × 4 = 512 字节
   - 对于 C2000 DSP 来说很小

3. **推荐值**：
   - 一般应用：64-128
   - 高速应用：128-256
   - 低速应用：32-64

---

## 调试建议

### 如何监视缓冲区健康状态？

在实际系统中，应监视以下指标：

1. **缓冲区实时数量**
   ```c
   uint16_t count = axis->posBuffer.count;
   // 健康范围：10-100（对于 128 大小的缓冲区）
   // 告警：count < 5（接近空）
   // 告警：count > 120（接近满）
   ```

2. **缓冲区溢出次数**
   ```c
   uint32_t overflow = axis->posBuffer.overflowCount;
   // 应始终为 0
   // 如果 > 0，说明轨迹生成太快，或缓冲区太小
   ```

3. **缓冲区欠载次数**
   ```c
   uint32_t underflow = axis->posBuffer.underflowCount;
   // 应始终为 0
   // 如果 > 0，说明轨迹生成太慢，或分频比太大
   ```

### 常见问题诊断

| 现象 | 可能原因 | 解决方案 |
|-----|---------|---------|
| 缓冲区始终为 0 | 分频比太大，轨迹生成太慢 | 减小 `profileUpdateDivider` |
| 缓冲区始终接近满 | 轨迹生成太快，位置环太慢 | 增大 `profileUpdateDivider` |
| underflow 计数增加 | 轨迹生成跟不上位置环消耗 | 减小分频比，或增加缓冲区大小 |
| 位置不变化 | 缓冲区空，轨迹未激活 | 检查轨迹初始化和激活逻辑 |

---

## 文件变更清单

### C 代码
- ✅ `motion_control.c` - 修改 `profileUpdateDivider` 从 10 改为 1

### 其他文件
- 无需修改

---

## 总结

**v1.5 解决了缓冲区为空导致无运动的问题**：

**根本原因**：
- C# 端每 10ms 调用一次轨迹更新
- C 端内部又设置了 10 分频
- 实际执行频率 = 10ms × 10 = 100ms（太慢）
- 缓冲区来不及填充，始终为空

**解决方案**：
- 将 `profileUpdateDivider` 改为 1（不分频）
- C# 端的 10ms 调用周期已足够
- 实际执行频率 = 10ms = 100Hz（合理）

**重要教训**：
> **避免双重分频！** 当上层已经控制调用频率时，底层不应再次分频。

---

**版本历史**:
- v1.0 (2025-12-29): 初始版本
- v1.1 (2025-12-30): 修复 `MotionAxis_addMotor`
- v1.2 (2025-12-30): 添加轴级别 getter 函数
- v1.3 (2025-12-30): 添加电机级别 getter 函数
- v1.4 (2025-12-30): 禁用跟踪误差检测
- v1.5 (2025-12-30): 修复分频器配置错误

---

**测试状态**：✅ 准备就绪，应该可以正常运动了！

