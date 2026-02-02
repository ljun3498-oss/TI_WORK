# 运动控制系统时序配置指南

## 📋 概述

本文档详细说明运动控制系统的时序配置、频率关系、调用时机和优化策略。

**版本：** v2.1  
**日期：** 2025-12-28  
**作者：** Advanced Motion Control Team

---

## 🎯 核心设计理念

### 1. 分层执行架构

```
┌─────────────────────────────────────────────────────────────┐
│  CPU2 - 快速电流环（10 KHz，100us周期）                      │
│  - motor1ControlISR / motor2ControlISR                      │
│  - Clarke/Park变换、FOC、SVPWM                              │
│  - 由ePWM硬件定时器自动触发                                  │
└──────────────────┬──────────────────────────────────────────┘
                   │ IPC
                   ↓
┌─────────────────────────────────────────────────────────────┐
│  CPU1 - 位置环控制（1 KHz，1ms周期）                         │
│  - MotionAxis_updateControl()                               │
│  - 从缓冲区读取位置命令                                      │
│  - PID计算，输出速度命令                                     │
│  - 由CPU定时器中断触发                                       │
└──────────────────┬──────────────────────────────────────────┘
                   │
                   ↓
┌─────────────────────────────────────────────────────────────┐
│  CPU1 - 轨迹更新（200 Hz - 1 KHz，可配置）                   │
│  - MotionAxis_updateProfile()                               │
│  - 生成位置序列填充缓冲区                                    │
│  - 由后台任务或定时器触发                                    │
└─────────────────────────────────────────────────────────────┘
```

### 2. 关键时序原则

✅ **原则1：位置环必须以高速且精确的定时中断执行**
- 推荐频率：1 KHz（1ms周期）
- 执行方式：定时器中断（CpuTimer）
- 优先级：高

✅ **原则2：轨迹更新频率可以低于位置环频率**
- 推荐频率：200 Hz - 1 KHz
- 分频比：1-5（可配置）
- 目的：降低CPU占用率

✅ **原则3：缓冲区机制确保平滑过渡**
- 缓冲区大小：128个位置点
- 最小填充量：10个点以上
- 防止位置环读空

---

## ⚙️ 时序参数配置

### 1. 核心时序参数

```c
typedef struct
{
    // 采样时间
    float32_t profileUpdateTs;    // 轨迹更新周期 [s]
    float32_t posLoopTs;          // 位置环周期 [s]
    
    // 频率控制（新增）
    uint16_t profileUpdateDivider;  // 轨迹更新分频比
    uint16_t profileUpdateCounter;  // 轨迹更新计数器
    bool forceProfileUpdate;        // 强制立即更新标志
    
    // 缓冲区
    ProfileBuffer_t posBuffer;    // 位置序列缓冲区（128点）
} MotionAxis_t;
```

### 2. 默认配置

```c
void MotionAxis_init(MotionAxis_t *axis, uint16_t axisID, AxisType_e axisType)
{
    // ...
    
    // 默认采样时间
    axis->profileUpdateTs = 0.001f;  // 1ms轨迹更新
    axis->posLoopTs = 0.001f;        // 1ms位置环
    
    // 频率控制参数
    axis->profileUpdateDivider = 1;   // 默认不分频（1:1）
    axis->profileUpdateCounter = 0;
    axis->forceProfileUpdate = false;
}
```

---

## 📐 频率配置方案

### 方案1：高精度模式（默认）

**适用场景：** 高精度定位、快速响应

```c
// 配置参数
axis->posLoopTs = 0.001f;           // 位置环：1 KHz
axis->profileUpdateTs = 0.001f;     // 轨迹更新：1 KHz
axis->profileUpdateDivider = 1;     // 不分频（1:1）

// 性能特点
// - 位置环频率：1000 Hz
// - 轨迹更新频率：1000 Hz
// - CPU占用：中等
// - 响应速度：最快
// - 位置精度：最高
```

**时序图：**

```
时间轴 (ms)
0      1      2      3      4      5
├──────┼──────┼──────┼──────┼──────┤
│      │      │      │      │      │
↓      ↓      ↓      ↓      ↓      ↓
位置环 位置环 位置环 位置环 位置环 位置环
↓      ↓      ↓      ↓      ↓      ↓
轨迹更新轨迹更新轨迹更新轨迹更新轨迹更新轨迹更新

频率：1:1
```

### 方案2：节能模式

**适用场景：** 长距离运动、CPU资源有限

```c
// 配置参数
axis->posLoopTs = 0.001f;           // 位置环：1 KHz
axis->profileUpdateTs = 0.001f;     // 轨迹时基：1 KHz
axis->profileUpdateDivider = 5;     // 5分频（1:5）

// 性能特点
// - 位置环频率：1000 Hz
// - 轨迹更新频率：200 Hz（每5次位置环更新1次轨迹）
// - CPU占用：低
// - 响应速度：稍慢
// - 位置精度：高（缓冲区保证平滑）
```

**时序图：**

```
时间轴 (ms)
0      1      2      3      4      5      6
├──────┼──────┼──────┼──────┼──────┼──────┤
│      │      │      │      │      │      │
↓      ↓      ↓      ↓      ↓      ↓      ↓
位置环 位置环 位置环 位置环 位置环 位置环 位置环
↓                             ↓
轨迹更新                      轨迹更新

频率：1:5（每5次位置环更新1次轨迹）
```

### 方案3：平衡模式（推荐）

**适用场景：** 一般伺服应用

```c
// 配置参数
axis->posLoopTs = 0.001f;           // 位置环：1 KHz
axis->profileUpdateTs = 0.001f;     // 轨迹时基：1 KHz
axis->profileUpdateDivider = 3;     // 3分频（1:3）

// 性能特点
// - 位置环频率：1000 Hz
// - 轨迹更新频率：333 Hz（每3次位置环更新1次轨迹）
// - CPU占用：低-中
// - 响应速度：快
// - 位置精度：高
```

**时序图：**

```
时间轴 (ms)
0      1      2      3      4      5      6
├──────┼──────┼──────┼──────┼──────┼──────┤
│      │      │      │      │      │      │
↓      ↓      ↓      ↓      ↓      ↓      ↓
位置环 位置环 位置环 位置环 位置环 位置环 位置环
↓             ↓             ↓
轨迹更新      轨迹更新      轨迹更新

频率：1:3（每3次位置环更新1次轨迹）
```

---

## 🔄 调用时机与流程

### 1. 位置环控制（高频，精确定时）

**调用位置：** CPU定时器中断

```c
// dual_axis_servo_ctrl_main_cpu1.c

// CPU Timer 0 中断（1 KHz，1ms周期）
interrupt void cpuTimer0ISR(void)
{
    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
    
    // 位置环控制（每次中断必须执行）
    MotionAxis_updateControl(&motionAxis1);  // 轴1位置环
    MotionAxis_updateControl(&motionAxis2);  // 轴2位置环
    // 或
    MotionAxis_updateControl(&gantryAxis);   // 龙门轴位置环
    
    // 增加计数器
    cpuTimer.periodTick++;
}
```

**关键特点：**
- ✅ 由硬件定时器触发，精确到us级
- ✅ 高优先级中断，确保实时性
- ✅ 每次都执行，保证控制连续性
- ✅ 从缓冲区读取位置命令（快速）

### 2. 轨迹更新（中频，可分频）

**方法A：在位置环中断内调用（推荐）**

```c
// CPU Timer 0 中断
interrupt void cpuTimer0ISR(void)
{
    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
    
    // 位置环控制（高频，每次执行）
    MotionAxis_updateControl(&motionAxis1);
    
    // 轨迹更新（中频，分频执行）
    MotionAxis_updateProfile(&motionAxis1);  // 内部有分频控制
    
    cpuTimer.periodTick++;
}
```

**方法B：在后台任务中调用**

```c
// 后台任务（主循环）
void main(void)
{
    // ...初始化...
    
    while(1)
    {
        // 后台任务状态机
        (*A_Task_Ptr)();  // A0 -> A1 -> A2 -> A3 -> A0
        (*B_Task_Ptr)();  // B0 -> B1 -> B2 -> B3 -> B0
        
        // 其中某个任务调用轨迹更新
    }
}

// A1任务示例
void A1(void)
{
    // 轨迹更新（有分频控制）
    MotionAxis_updateProfile(&motionAxis1);
    
    A_Task_Ptr = &A2;
}
```

**关键特点：**
- ✅ 内部分频控制，自动降低执行频率
- ✅ 支持强制更新（新命令时立即执行）
- ✅ 批量生成位置点（一次生成10个点）

### 3. 强制更新机制

**触发时机：**

1. **新的位置命令**

```c
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos)
{
    // ...设置新目标...
    
    // 设置强制更新标志
    axis->forceProfileUpdate = true;
    
    // 下次调用 updateProfile 时立即执行，不受分频器限制
}
```

2. **停止命令**

```c
void MotionAxis_stop(MotionAxis_t *axis)
{
    // ...规划停止轨迹...
    
    // 设置强制更新标志
    axis->forceProfileUpdate = true;
}
```

3. **急停命令**

```c
void MotionAxis_emergencyStop(MotionAxis_t *axis)
{
    // ...规划急停轨迹...
    
    // 设置强制更新标志
    axis->forceProfileUpdate = true;
}
```

**工作原理：**

```c
void MotionAxis_updateProfile(MotionAxis_t *axis)
{
    bool shouldUpdate = false;
    
    // 检查强制更新标志
    if(axis->forceProfileUpdate)
    {
        shouldUpdate = true;
        axis->forceProfileUpdate = false;
        axis->profileUpdateCounter = 0;  // 复位计数器
    }
    else
    {
        // 正常分频控制
        axis->profileUpdateCounter++;
        if(axis->profileUpdateCounter >= axis->profileUpdateDivider)
        {
            shouldUpdate = true;
            axis->profileUpdateCounter = 0;
        }
    }
    
    if(!shouldUpdate)
    {
        return;  // 不更新，直接返回
    }
    
    // 执行轨迹更新...
}
```

---

## 🛡️ 缓冲区保护机制

### 1. 缓冲区设计

```c
#define MOTION_PROFILE_BUFFER_SIZE  128  // 位置序列缓冲区大小

typedef struct
{
    float32_t buffer[MOTION_PROFILE_BUFFER_SIZE];
    uint16_t writeIdx;     // 写指针
    uint16_t readIdx;      // 读指针
    uint16_t count;        // 当前数据量
    uint16_t maxCount;     // 最大容量
    uint32_t overflowCount;  // 溢出次数
    uint32_t underflowCount; // 下溢次数
} ProfileBuffer_t;
```

### 2. 缓冲区水位管理

**正常工作状态：**

```
缓冲区状态（128个槽位）
├─────────────────────────────────────────────────────────────┤
│██████████████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│← 已填充（50点）        → ← 空闲（78点）               →│
└─────────────────────────────────────────────────────────────┘
                ↑                      ↑
              读指针                  写指针

状态：健康（有足够数据供位置环读取）
```

**低水位警告：**

```
缓冲区状态
├─────────────────────────────────────────────────────────────┤
│████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│← 已填充（5点）         → ← 空闲（123点）              →│
└─────────────────────────────────────────────────────────────┘
    ↑                                  ↑
  读指针                             写指针

状态：警告（数据不足，需要加快轨迹更新）
建议：降低分频比或增大缓冲区
```

**空缓冲区保护：**

```
缓冲区状态
├─────────────────────────────────────────────────────────────┤
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│← 空（0点）                                              →│
└─────────────────────────────────────────────────────────────┘
 ↑
读写指针重合

状态：保护（保持当前位置命令，逐步减速）
```

### 3. 空缓冲区保护逻辑

```c
void MotionAxis_updateControl(MotionAxis_t *axis)
{
    float32_t cmdPos;
    static uint32_t bufferEmptyWarning = 0;
    
    // 尝试从缓冲区读取
    if(ProfileBuffer_read(&axis->posBuffer, &cmdPos))
    {
        // 正常：读取成功
        axis->cmdPosition = cmdPos;
        axis->cmdVelocity = TrapProfile_getVelocity(&axis->profile);
        bufferEmptyWarning = 0;
    }
    else
    {
        // 缓冲区空：启动保护机制
        
        // 保护措施1：保持当前位置命令（防止突然停止）
        // cmdPosition不变
        
        // 保护措施2：逐步降低速度命令到0
        if(axis->cmdVelocity != 0.0f)
        {
            float32_t velDecrement = axis->profile.maxDecel * axis->posLoopTs;
            if(ABS(axis->cmdVelocity) > velDecrement)
            {
                axis->cmdVelocity -= SIGN(axis->cmdVelocity) * velDecrement;
            }
            else
            {
                axis->cmdVelocity = 0.0f;
            }
        }
        
        // 保护措施3：警告计数（用于诊断）
        bufferEmptyWarning++;
        if(bufferEmptyWarning > 100)
        {
            // 长时间为空：记录错误
            axis->errorCounter++;
        }
    }
}
```

---

## 🎯 优化策略

### 1. 避免缓冲区清空导致的突然停止

**问题：** 旧版本在新命令时清空缓冲区

```c
// ❌ 旧版本（有问题）
void MotionAxis_moveAbsolute_OLD(MotionAxis_t *axis, float32_t targetPos)
{
    TrapProfile_setTarget(&axis->profile, axis->cmdPosition, 
                          axis->cmdVelocity, targetPos);
    TrapProfile_compute(&axis->profile);
    
    // 问题：清空缓冲区！
    ProfileBuffer_clear(&axis->posBuffer);
}
```

**后果：**

```
时间轴
─────────┬──────────┬──────────┬──────────┬──────────
旧命令   │新命令    │          │          │
执行中   │到达      │          │          │
         │          │          │          │
缓冲区   │缓冲区    │缓冲区    │缓冲区    │
有数据   │被清空！  │为空      │为空      │
         │          │          │          │
电机状态 │          │          │          │
正常运动→│突然停止！→│停止     →│停止     →
         ↑
         问题：位置环读不到数据，电机停止！
```

**解决方案：** 从缓冲区最新位置平滑过渡

```c
// ✅ 新版本（优化后）
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos)
{
    float32_t startPos, startVel;
    
    // 关键：从缓冲区最新位置开始规划
    if(axis->posBuffer.count > 0)
    {
        uint16_t lastIdx = (axis->posBuffer.writeIdx + 
                           MOTION_PROFILE_BUFFER_SIZE - 1) % 
                           MOTION_PROFILE_BUFFER_SIZE;
        startPos = axis->posBuffer.buffer[lastIdx];
        startVel = axis->profile.currentVel;
    }
    else
    {
        startPos = axis->cmdPosition;
        startVel = axis->cmdVelocity;
    }
    
    // 从当前末端平滑过渡到新目标
    TrapProfile_setTarget(&axis->profile, startPos, startVel, targetPos);
    TrapProfile_compute(&axis->profile);
    
    // 不清空缓冲区！保持已有数据
    // 新数据追加到缓冲区末尾
    
    // 强制立即更新，填充新轨迹
    axis->forceProfileUpdate = true;
}
```

**效果：**

```
时间轴
─────────┬──────────┬──────────┬──────────┬──────────
旧命令   │新命令    │          │          │
执行中   │到达      │          │          │
         │          │          │          │
缓冲区   │缓冲区    │缓冲区    │缓冲区    │
有数据   │保留数据  │追加新数据│持续填充  │
         │          │          │          │
电机状态 │          │          │          │
正常运动→│平滑过渡→│新轨迹运动→│新轨迹运动→
         ↑
         平滑过渡！无突然停止
```

### 2. 分频控制降低CPU占用

**CPU占用对比：**

| 分频比 | 轨迹更新频率 | 每次生成点数 | CPU占用 | 响应延迟 |
|--------|--------------|--------------|---------|----------|
| 1      | 1000 Hz      | 10点/次      | 高      | 最小     |
| 3      | 333 Hz       | 10点/次      | 中-低   | 小       |
| 5      | 200 Hz       | 10点/次      | 低      | 中等     |
| 10     | 100 Hz       | 10点/次      | 很低    | 较大     |

**推荐配置：**

```c
// 高精度应用（激光切割、精密装配）
axis->profileUpdateDivider = 1;  // CPU占用较高，响应最快

// 一般伺服应用（机械手、输送带）
axis->profileUpdateDivider = 3;  // 平衡模式，推荐

// 长距离运动（龙门架、重载平台）
axis->profileUpdateDivider = 5;  // 节能模式
```

### 3. 强制更新提高实时性

**场景1：新位置命令**

```c
// 用户发送新命令
MotionAxis_moveAbsolute(&motionAxis1, 1000.0f);
// ↓ 内部设置 forceProfileUpdate = true
// ↓ 下次调用 updateProfile 时立即执行（忽略分频器）
// ↓ 新轨迹快速进入缓冲区
// ✅ 响应延迟最小化
```

**场景2：急停命令**

```c
// 用户按下急停按钮
MotionAxis_emergencyStop(&motionAxis1);
// ↓ 内部设置 forceProfileUpdate = true
// ↓ 下次调用 updateProfile 时立即执行
// ↓ 急停轨迹快速进入缓冲区
// ✅ 安全响应时间最短
```

---

## 📊 性能分析

### 1. 时序参数影响

| 参数 | 值 | 影响 |
|------|-----|------|
| `posLoopTs` | 0.001s (1KHz) | ✅ 推荐：控制带宽足够 |
| `posLoopTs` | 0.010s (100Hz) | ❌ 太慢：控制响应差 |
| `profileUpdateDivider` | 1 | ✅ 最快响应，高CPU占用 |
| `profileUpdateDivider` | 3 | ✅ 平衡模式，推荐 |
| `profileUpdateDivider` | 10 | ⚠️ 低CPU占用，延迟较大 |

### 2. 缓冲区容量分析

**缓冲区大小：** 128个位置点

**场景分析：**

```
位置环频率：1 KHz (1ms周期)
轨迹更新分频比：5 (每5ms更新一次，每次生成10个点)

缓冲区消耗速度：1点/ms
缓冲区生成速度：10点/5ms = 2点/ms

结论：生成速度 > 消耗速度 ✅
缓冲区稳定填充，不会空
```

**最坏情况分析：**

```
如果轨迹更新被阻塞（CPU繁忙），缓冲区多久会空？

已填充点数：50点
消耗速度：1点/ms
空缓冲时间：50ms

结论：系统有50ms的容错时间 ✅
```

---

## 🔧 实际配置示例

### 示例1：双独立轴配置（FCL_LEVEL7）

```c
// dual_axis_servo_ctrl_main_cpu1.c

void initMotionControl(void)
{
    // 初始化轴1
    MotionAxis_init(&motionAxis1, 1, AXIS_TYPE_REAL);
    motionAxis1.posLoopTs = 0.001f;           // 1KHz位置环
    motionAxis1.profileUpdateTs = 0.001f;     // 1KHz时基
    motionAxis1.profileUpdateDivider = 3;     // 333Hz轨迹更新（3分频）
    
    // 初始化轴2
    MotionAxis_init(&motionAxis2, 2, AXIS_TYPE_REAL);
    motionAxis2.posLoopTs = 0.001f;
    motionAxis2.profileUpdateTs = 0.001f;
    motionAxis2.profileUpdateDivider = 3;
    
    // 绑定电机
    MotionAxis_addMotor(&motionAxis1, 1, 1.0f);
    MotionAxis_addMotor(&motionAxis2, 2, 1.0f);
    
    // 设置运动参数
    MotionAxis_setMotionParams(&motionAxis1, 1000.0f, 5000.0f, 5000.0f);
    MotionAxis_setMotionParams(&motionAxis2, 1000.0f, 5000.0f, 5000.0f);
}

// CPU Timer 0 中断（1 KHz）
interrupt void cpuTimer0ISR(void)
{
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
    
    // 位置环（每次执行）
    MotionAxis_updateControl(&motionAxis1);
    MotionAxis_updateControl(&motionAxis2);
    
    // 轨迹更新（内部分频）
    MotionAxis_updateProfile(&motionAxis1);
    MotionAxis_updateProfile(&motionAxis2);
    
    cpuTimer.periodTick++;
}
```

### 示例2：龙门轴配置（FCL_LEVEL8）

```c
void initMotionControl(void)
{
    // 初始化龙门轴
    MotionAxis_init(&gantryAxis, 10, AXIS_TYPE_GANTRY);
    gantryAxis.posLoopTs = 0.001f;            // 1KHz位置环
    gantryAxis.profileUpdateTs = 0.001f;      // 1KHz时基
    gantryAxis.profileUpdateDivider = 3;      // 333Hz轨迹更新
    
    // 绑定两个电机（同步控制）
    MotionAxis_addMotor(&gantryAxis, 1, 1.0f);
    MotionAxis_addMotor(&gantryAxis, 2, 1.0f);
    
    // 设置运动参数
    MotionAxis_setMotionParams(&gantryAxis, 800.0f, 4000.0f, 4000.0f);
}

// CPU Timer 0 中断（1 KHz）
interrupt void cpuTimer0ISR(void)
{
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
    
    // 位置环（每次执行）
    MotionAxis_updateControl(&gantryAxis);
    
    // 轨迹更新（内部分频）
    MotionAxis_updateProfile(&gantryAxis);
    
    cpuTimer.periodTick++;
}
```

---

## 🐛 故障诊断

### 问题1：电机突然停止

**症状：** 运动过程中电机突然停止，无报警

**可能原因：**
1. 缓冲区为空
2. 轨迹更新跟不上位置环消耗

**诊断方法：**

```c
// 检查缓冲区状态
uint16_t bufferCount = ProfileBuffer_getCount(&axis->posBuffer);
printf("Buffer count: %d\n", bufferCount);

if(bufferCount < 5)
{
    printf("WARNING: Buffer low!\n");
}

// 检查错误计数
printf("Error counter: %d\n", axis->errorCounter);
```

**解决方案：**
1. 降低分频比（例如从5降到3）
2. 增大缓冲区（修改 `MOTION_PROFILE_BUFFER_SIZE`）
3. 检查轨迹更新是否被阻塞

### 问题2：CPU占用过高

**症状：** CPU负载接近100%，系统响应慢

**可能原因：**
1. 轨迹更新频率过高
2. 分频比设置为1

**解决方案：**

```c
// 增大分频比
axis->profileUpdateDivider = 5;  // 从1增加到5

// 减少每次生成的点数（修改 updateProfile 函数）
for(uint16_t i = 0; i < MIN(freeSpace, 5); i++)  // 从10改为5
{
    // ...
}
```

### 问题3：响应延迟大

**症状：** 发送新命令后，电机延迟很久才响应

**可能原因：**
1. 分频比过大
2. 强制更新机制未启用

**解决方案：**

```c
// 降低分频比
axis->profileUpdateDivider = 1;  // 从5降到1

// 确保强制更新已启用
axis->forceProfileUpdate = true;  // 应该在 moveAbsolute 中自动设置
```

---

## ✅ 最佳实践总结

### 1. 时序配置原则

✅ **DO：**
- 位置环使用精确的定时器中断（1 KHz推荐）
- `posLoopTs` 与定时器周期严格一致
- `profileUpdateTs` 与 `posLoopTs` 相等
- 使用分频器降低轨迹更新频率（3-5推荐）
- 缓冲区大小≥128个点
- 新命令时强制更新轨迹

❌ **DON'T：**
- 不要在后台任务中执行位置环（会导致时序不准）
- 不要清空缓冲区（会导致突然停止）
- 不要设置过大的分频比（>10）
- 不要让缓冲区长时间为空

### 2. 性能调优指南

| 需求 | 配置建议 |
|------|----------|
| 高精度定位 | `profileUpdateDivider = 1` |
| 快速响应 | `profileUpdateDivider = 1-3` |
| 低CPU占用 | `profileUpdateDivider = 5` |
| 龙门同步 | `profileUpdateDivider = 3` |
| 长距离运动 | `profileUpdateDivider = 5` |

### 3. 分频比选择表

| 位置环频率 | 分频比 | 轨迹更新频率 | 适用场景 |
|------------|--------|--------------|----------|
| 1 KHz | 1 | 1000 Hz | 高精度、快速响应 |
| 1 KHz | 3 | 333 Hz | 一般伺服应用（推荐） |
| 1 KHz | 5 | 200 Hz | 长距离、节能 |
| 2 KHz | 5 | 400 Hz | 高频位置环+节能 |

---

## 📚 参考资料

1. **相关文档：**
   - `MOTION_CONTROL_README.md` - 运动控制库用户手册
   - `MULTI_MOTOR_ARCHITECTURE.md` - 多电机架构说明
   - `BUILDLEVEL_MOTION_CONTROL_GUIDE.md` - BuildLevel配置指南

2. **核心函数：**
   - `MotionAxis_updateControl()` - 位置环控制（高频）
   - `MotionAxis_updateProfile()` - 轨迹更新（中频）
   - `MotionAxis_moveAbsolute()` - 位置命令
   - `MotionAxis_stop()` - 停止命令
   - `MotionAxis_emergencyStop()` - 急停命令

3. **关键数据结构：**
   - `MotionAxis_t` - 运动轴对象
   - `ProfileBuffer_t` - 位置缓冲区
   - `TrapezoidalProfile_t` - 梯形曲线规划器

---

**版权所有 © 2025 Texas Instruments Incorporated**

**文档结束**

