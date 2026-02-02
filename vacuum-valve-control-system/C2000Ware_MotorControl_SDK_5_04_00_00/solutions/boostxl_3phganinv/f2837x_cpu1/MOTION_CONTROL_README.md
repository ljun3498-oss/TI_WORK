# 高级运动控制系统 - 使用手册

## 📋 目录

1. [系统概述](#系统概述)
2. [系统架构](#系统架构)
3. [核心功能](#核心功能)
4. [API参考](#api参考)
5. [集成指南](#集成指南)
6. [使用示例](#使用示例)
7. [调试指南](#调试指南)
8. [常见问题](#常见问题)

---

## 系统概述

本运动控制系统是一个**高级多轴运动控制库**，专为TI F2837x双核伺服驱动系统设计。系统提供了完整的轨迹规划、位置控制、多轴同步等功能。

### 主要特性

✅ **梯形/S曲线速度规划**
- 支持梯形和S曲线（jerk受限）加减速
- 实时轨迹更新能力（运动中改变目标）
- 自动计算加速、匀速、减速段

✅ **位置序列缓冲**
- 128点FIFO环形缓冲区
- 防止轨迹生成延迟影响控制周期
- 自动上溢/下溢检测

✅ **PID位置控制**
- 支持P、PI、PID三种模式
- 内置抗饱和
- 支持手动模式切换

✅ **跟踪误差监视**
- 实时监控命令位置与实际位置偏差
- 可设定位置误差和速度误差限值
- 超限自动触发保护

✅ **位置轴抽象层**
- 虚拟轴/实际轴统一接口
- 支持齿轮比转换
- 状态机管理（禁用/待机/运动/停止/错误）

✅ **多轴同步**
- 支持多轴组同步运动
- 可设定同步比例
- 龙门轴支持（预留）

---

## 系统架构

```
┌───────────────────────────────────────────────────────────────┐
│                      应用层 (Application)                      │
│  - 位置命令下发 (motionCmd_moveAbsolute)                       │
│  - 使能/停止控制 (motionCmd_enable/stop)                       │
│  - 参数配置 (MotionAxis_setMotionParams)                       │
└────────────────────────────┬──────────────────────────────────┘
                             │
┌────────────────────────────▼──────────────────────────────────┐
│               位置轴层 (Motion Axis Layer)                     │
│  MotionAxis_t                                                  │
│  - 轴状态管理 (DISABLED/STANDBY/MOVING/STOPPING/ERROR)         │
│  - 位置/速度反馈                                               │
│  - 齿轮比转换                                                  │
│  - 跟踪误差监视                                                │
└────────────────────────────┬──────────────────────────────────┘
                             │
┌────────────────────────────▼──────────────────────────────────┐
│            轨迹规划层 (Trajectory Planning Layer)              │
│  TrapezoidalProfile_t + ProfileBuffer_t                        │
│  - 梯形速度曲线计算                                            │
│  - 位置序列生成 (128点缓冲区)                                  │
│  - 实时轨迹更新                                                │
└────────────────────────────┬──────────────────────────────────┘
                             │
┌────────────────────────────▼──────────────────────────────────┐
│               PID控制层 (PID Control Layer)                    │
│  PIDController_t                                               │
│  - 位置环PID计算                                               │
│  - 自动/手动模式切换                                           │
│  - 输出速度命令                                                │
└────────────────────────────┬──────────────────────────────────┘
                             │ IPC
┌────────────────────────────▼──────────────────────────────────┐
│           电机轴层 (Motor Axis - CPU2)                         │
│  - 速度环控制                                                  │
│  - 电流环控制 (FCL)                                            │
│  - 编码器反馈                                                  │
└───────────────────────────────────────────────────────────────┘
```

### 数据流向

```
用户命令 → MotionAxis → TrapezoidalProfile → ProfileBuffer
                              ↓
                    位置序列 (1ms生成)
                              ↓
         MotionAxis_updateControl (1ms调用)
                              ↓
                    PID计算速度命令
                              ↓
                    IPC → CPU2电机轴
                              ↓
                    编码器反馈 → IPC → CPU1
```

---

## 核心功能

### 1. 梯形速度曲线规划

系统自动计算三段或四段速度曲线：

```
速度
 ↑
 │     ╱────╲         梯形曲线（有匀速段）
 │    ╱      ╲
 │   ╱        ╲
 │  ╱          ╲
 │ ╱            ╲
 └─────────────────→ 时间
   加速 匀速 减速

速度
 ↑
 │     ╱╲             三角形曲线（无匀速段，距离太短）
 │    ╱  ╲
 │   ╱    ╲
 │  ╱      ╲
 │ ╱        ╲
 └────────────→ 时间
   加速  减速
```

**关键参数：**
- `maxVelocity`：最大速度 [unit/s]
- `maxAccel`：最大加速度 [unit/s²]
- `maxDecel`：最大减速度 [unit/s²]

**自动处理：**
- ✅ 距离不足时自动切换到三角形曲线
- ✅ 考虑起始速度（非零起始）
- ✅ 反向运动自动处理

### 2. 实时轨迹更新

支持运动中更新目标位置：

```c
// 运动中改变目标
motionCmd_moveAbsolute(1, 10.0f);   // 目标位置10圈
// ... 运动中 ...
motionCmd_moveAbsolute(1, 20.0f);   // 改变目标到20圈（立即重新规划）
```

系统会根据**当前实际位置和速度**重新计算轨迹，实现平滑过渡。

### 3. 位置序列缓冲

```
ProfileBuffer (FIFO 128点)
┌────┬────┬────┬────┬────┬────┬────┬─────┐
│ P1 │ P2 │ P3 │ P4 │ P5 │... │P127│P128 │
└────┴────┴────┴────┴────┴────┴────┴─────┘
  ↑写入                             ↑读取
  (后台任务1ms)                    (控制中断1ms)
```

**设计原理：**
- 后台任务预先生成位置序列（updateMotionProfile）
- 控制中断从缓冲区读取（updateControl）
- 解耦轨迹规划和控制执行，保证实时性

### 4. 跟踪误差保护

```c
跟踪误差 = 命令位置 - 实际位置

if (|跟踪误差| > 限值)
{
    触发ERROR状态
    停止电机输出
    触发告警
}
```

防止电机失步、卡死等异常情况。

---

## API参考

### 初始化函数

#### `MotionAxis_init()`
```c
void MotionAxis_init(MotionAxis_t *axis, uint16_t axisID, AxisType_e axisType);
```
**功能：** 初始化运动轴对象  
**参数：**
- `axis`：轴对象指针
- `axisID`：轴ID (1, 2, ...)
- `axisType`：轴类型 (VIRTUAL/REAL/GANTRY)

**示例：**
```c
MotionAxis_t axis1;
MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
```

#### `MotionAxis_bindMotor()`
```c
void MotionAxis_bindMotor(MotionAxis_t *axis, uint16_t motorID, float32_t gearRatio);
```
**功能：** 绑定物理电机到轴  
**参数：**
- `motorID`：电机ID (1=电机1, 2=电机2, 0xFF=虚拟轴)
- `gearRatio`：齿轮比（轴/电机），用于单位转换

**示例：**
```c
// 绑定电机1，减速比10:1（电机转10圈，轴转1圈）
MotionAxis_bindMotor(&axis1, 1, 0.1f);
```

#### `MotionAxis_setMotionParams()`
```c
void MotionAxis_setMotionParams(MotionAxis_t *axis, 
                                float32_t maxVel, 
                                float32_t maxAccel, 
                                float32_t maxDecel);
```
**功能：** 设置运动参数  
**单位：** [unit/s], [unit/s²]

**示例：**
```c
// 最大速度50 rev/s, 加速度100 rev/s², 减速度150 rev/s²
MotionAxis_setMotionParams(&axis1, 50.0f, 100.0f, 150.0f);
```

#### `MotionAxis_setPIDGains()`
```c
void MotionAxis_setPIDGains(MotionAxis_t *axis, 
                            float32_t Kp, 
                            float32_t Ki, 
                            float32_t Kd);
```
**功能：** 设置位置环PID增益

**调试建议：**
1. 先只用P控制（Kp=1, Ki=0, Kd=0）
2. 逐步增大Kp直到出现振荡，然后减半
3. 加入适量I控制消除稳态误差（Ki=Kp/10）
4. 如果需要，加入D控制抑制超调（Kd=Kp/100）

### 运动命令函数

#### `MotionAxis_enable()` / `MotionAxis_disable()`
```c
void MotionAxis_enable(MotionAxis_t *axis);
void MotionAxis_disable(MotionAxis_t *axis);
```
**功能：** 使能/禁用轴

#### `MotionAxis_moveAbsolute()`
```c
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos);
```
**功能：** 绝对位置运动  
**支持：** 运动中更新目标

**示例：**
```c
motionCmd_moveAbsolute(1, 10.0f);   // 移动到10圈
```

#### `MotionAxis_moveRelative()`
```c
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance);
```
**功能：** 相对位置运动

**示例：**
```c
motionCmd_moveRelative(1, 5.0f);    // 相对当前位置前进5圈
```

#### `MotionAxis_stop()` / `MotionAxis_emergencyStop()`
```c
void MotionAxis_stop(MotionAxis_t *axis);
void MotionAxis_emergencyStop(MotionAxis_t *axis);
```
**功能：** 正常停止 / 急停  
- `stop()`：按设定减速度停止
- `emergencyStop()`：使用2倍减速度快速停止

### 周期调用函数

#### `MotionAxis_updateProfile()` - 后台任务
```c
void MotionAxis_updateProfile(MotionAxis_t *axis);
```
**调用周期：** 1-10ms（非实时）  
**功能：** 生成位置序列并填充缓冲区

#### `MotionAxis_updateControl()` - 实时任务
```c
void MotionAxis_updateControl(MotionAxis_t *axis);
```
**调用周期：** 1ms（实时）  
**功能：** 
1. 从缓冲区读取位置命令
2. 运行PID计算速度命令
3. 更新跟踪误差监视

#### `MotionAxis_updateFeedback()` - 实时任务
```c
void MotionAxis_updateFeedback(MotionAxis_t *axis, 
                               float32_t actPos, 
                               float32_t actVel);
```
**调用周期：** 1ms（实时）  
**功能：** 更新实际位置和速度反馈

### 手动模式函数

#### `PID_setManual()`
```c
void PID_setManual(PIDController_t *pid, bool enable, float32_t manualValue);
```
**功能：** 设置手动模式

**示例：**
```c
// 进入手动模式，手动设定速度为500 rpm
motionCmd_setManualMode(1, true, 500.0f);

// 退出手动模式
motionCmd_setManualMode(1, false, 0.0f);
```

---

## 集成指南

### 步骤1：添加文件到项目

将以下文件添加到CPU1项目：
```
include/motion_control.h
source/motion_control.c
source/motion_integration.c
```

### 步骤2：修改main函数

在`dual_axis_servo_ctrl_main_cpu1.c`中：

```c
#include "motion_control.h"

// 声明外部函数
extern void initMotionControl(void);
extern void runSpeedControl_M1_New(void);
extern void runSpeedControl_M2_New(void);
extern void updateMotionProfile_M1(void);
extern void updateMotionProfile_M2(void);

void main(void)
{
    // ... 原有初始化代码 ...
    
    // 初始化运动控制系统
    initMotionControl();
    
    // 主循环
    for(;;)
    {
        // 后台任务：更新轨迹规划（非实时）
        updateMotionProfile_M1();
        updateMotionProfile_M2();
        
        // ... 其他后台任务 ...
    }
}
```

### 步骤3：修改定时器中断

在CPU定时器中断中（1ms周期）：

```c
interrupt void cpuTimer0ISR(void)
{
    // 原有代码...
    
    // 新增：运动控制更新（替代原有的runSpeedControl_M1/M2）
    runSpeedControl_M1_New();
    runSpeedControl_M2_New();
    
    // ACK中断
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
```

### 步骤4：参数调整

根据实际机械系统调整参数（在`initMotionControl()`中）：

```c
// 运动参数
MotionAxis_setMotionParams(&motionAxis1, 
    50.0f,      // maxVel: 根据电机最大转速设定
    166.67f,    // maxAccel: 根据负载惯量设定
    200.0f);    // maxDecel: 通常比加速度大20-50%

// PID增益（需要实际调试）
MotionAxis_setPIDGains(&motionAxis1, 
    2.0f,       // Kp: 先从小值开始
    0.1f,       // Ki: 可选，消除稳态误差
    0.01f);     // Kd: 可选，抑制超调

// 跟踪误差限值
MotionAxis_setFollowingErrorLimit(&motionAxis1, 
    5.0f,       // 位置误差限值（根据应用要求）
    50.0f);     // 速度误差限值
```

---

## 使用示例

### 示例1：单轴点到点运动

```c
// 使能轴
motionCmd_enableAxis(1);

// 运动到位置10圈
motionCmd_moveAbsolute(1, 10.0f);

// 等待到位
while(!MotionAxis_isIdle(&motionAxis1))
{
    // 后台任务
    updateMotionProfile_M1();
}

// 禁用轴
motionCmd_disableAxis(1);
```

### 示例2：连续运动（运动中更新目标）

```c
motionCmd_enableAxis(1);

// 第一个目标
motionCmd_moveAbsolute(1, 10.0f);

DEVICE_DELAY_US(500000);  // 延迟0.5秒

// 运动中改变目标（自动重新规划）
motionCmd_moveAbsolute(1, 20.0f);

// 系统会根据当前位置和速度平滑过渡到新目标
```

### 示例3：急停响应

```c
// 正常运动中
motionCmd_moveAbsolute(1, 100.0f);

// 检测到紧急情况
if(emergencyButtonPressed)
{
    motionCmd_emergencyStop(1);  // 最大减速度停止
}
```

### 示例4：手动模式

```c
// 进入手动模式，手动设定速度
motionCmd_setManualMode(1, true, 1000.0f);  // 1000 rpm

// 运行一段时间...

// 退出手动模式，恢复自动控制
motionCmd_setManualMode(1, false, 0.0f);
```

### 示例5：多轴同步运动

```c
// 使能同步
motionCmd_enableSync(true);

// 两轴同步运动到位置15圈（按比例1:1）
motionCmd_syncMove(15.0f);

// 等待到位
while(!MotionAxis_isIdle(&motionAxis1) || !MotionAxis_isIdle(&motionAxis2))
{
    updateMotionProfile_M1();
    updateMotionProfile_M2();
}
```

---

## 调试指南

### 1. 缓冲区监视

```c
uint16_t bufCount = ProfileBuffer_getCount(&motionAxis1.posBuffer);

if(bufCount < 10)
{
    // 警告：缓冲区快空了
    // 原因：轨迹生成任务调用频率太低
    // 解决：增加updateMotionProfile()调用频率
}

if(motionAxis1.posBuffer.underflowCount > 0)
{
    // 错误：缓冲区下溢
    // 影响：位置命令中断，可能导致抖动
}
```

### 2. 跟踪误差检查

```c
if(MotionAxis_isError(&motionAxis1))
{
    float32_t error = motionAxis1.followingMonitor.followingError;
    float32_t errorMax = motionAxis1.followingMonitor.followingErrorMax;
    
    // error超过errorMax，触发保护
    // 可能原因：
    // 1. PID增益太小，响应太慢
    // 2. 速度/加速度太大，电机跟不上
    // 3. 负载突变或卡死
}
```

### 3. 轨迹参数检查

```c
TrapezoidalProfile_t *prof = &motionAxis1.profile;

// 查看当前轨迹状态
switch(prof->state)
{
    case PROFILE_ACCEL:
        // 加速段
        break;
    case PROFILE_CONST:
        // 匀速段
        break;
    case PROFILE_DECEL:
        // 减速段
        break;
    case PROFILE_DONE:
        // 完成
        break;
}

// 查看时间分配
float32_t totalTime = prof->accelTime + prof->constTime + prof->decelTime;
```

### 4. PID调试

```c
// 打印PID状态
float32_t cmd = motionAxis1.cmdPosition;
float32_t act = motionAxis1.actPosition;
float32_t err = cmd - act;
float32_t out = motionAxis1.posPID.ui;  // 积分项

// 观察：
// - 稳态误差是否为0（需要积分I）
// - 是否振荡（P太大或D太小）
// - 响应是否太慢（P太小）
```

---

## 常见问题

### Q1: ramper和ramper_sine有什么区别？

**A:** 
- `ramper()`：线性斜坡，直接加减速，可能产生加加速度突变
- `ramper_sine()`：正弦斜坡（S曲线），加减速更平滑，减小冲击

**建议：** 使用新的`TrapezoidalProfile`模块，支持完整的七段S曲线规划。

### Q2: 位置序列缓冲区大小如何选择？

**A:** 
```
缓冲区大小 = (最大轨迹生成延迟 / 位置环周期) × 安全系数

示例：
- 轨迹生成最大延迟：10ms
- 位置环周期：1ms
- 安全系数：2倍
- 缓冲区大小 ≥ (10/1) × 2 = 20点

当前设置128点，足够应对大部分情况。
```

### Q3: 如何实现丝杠碰撞回零？

**A:** 参考之前设计的回零功能（在之前的对话中已实现），集成到运动控制系统：

```c
// 1. 进入手动模式，低速运动
motionCmd_setManualMode(1, true, -100.0f);  // 负速度接近原点

// 2. 监控力矩（Iq电流）
while(1)
{
    float32_t torque = ipcDataToCPU1->IqFdbkM1;
    if(fabs(torque) > HOMING_TORQUE_THRESHOLD)
    {
        // 检测到碰撞，停止
        motionCmd_emergencyStop(1);
        break;
    }
}

// 3. 设置当前位置为零点
motionAxis1.cmdPosition = 0.0f;
motionAxis1.actPosition = 0.0f;

// 4. 退出手动模式
motionCmd_setManualMode(1, false, 0.0f);
```

### Q4: 双轴如何实现龙门同步？

**A:** 
```c
// 1. 初始化龙门组
AxisGroup_t ganryGroup;
AxisGroup_init(&gantryGroup, 1);

// 2. 添加两个轴（同步比例1:1）
AxisGroup_addAxis(&gantryGroup, &motionAxis1, 1.0f);
AxisGroup_addAxis(&gantryGroup, &motionAxis2, 1.0f);

// 3. 使能同步
AxisGroup_enableSync(&gantryGroup, true);

// 4. 同步运动
AxisGroup_moveAbsolute(&gantryGroup, 10.0f);  // 两轴同步到10圈
```

### Q5: 如何优化系统实时性？

**A:** 
1. **控制任务（1ms）**：只做必要计算
   - `updateControl()` - PID计算
   - `updateFeedback()` - 反馈更新

2. **后台任务（非实时）**：复杂计算
   - `updateProfile()` - 轨迹生成
   - 参数配置、诊断等

3. **优化技巧**：
   - 预计算三角函数表
   - 使用定点数代替浮点数（如果需要）
   - 减少内存分配

---

## 附录：原有函数对比

### PI_POS_run vs 新PID_run

**原函数（未使用）：**
```c
float32_t PI_POS_run(float32_t Kp, float32_t Ki, float32_t *ui, 
                     float32_t ref, float32_t fbk, 
                     float32_t outMax, float32_t outMin);
```

**新函数（集成到PIDController_t）：**
```c
float32_t PID_run(PIDController_t *pid, float32_t ref, float32_t fbk);
```

**优势：**
- ✅ 支持P/PI/PID三种模式
- ✅ 支持手动模式切换
- ✅ 使能/禁用控制
- ✅ 更好的封装性

---

## 总结

本运动控制系统提供了完整的**轨迹规划→位置控制→电机驱动**闭环，具有以下优势：

1. **模块化设计**：各层次清晰分离，易于维护和扩展
2. **实时性保证**：位置序列缓冲机制确保控制周期不受轨迹生成影响
3. **灵活性强**：支持虚拟轴、实际轴、多轴同步等多种应用
4. **安全性高**：内置跟踪误差监视、急停保护等功能
5. **易于集成**：提供简洁的API和详细的使用示例

**下一步开发建议：**
- [ ] 添加S曲线规划（jerkTime参数）
- [ ] 实现在线轨迹优化
- [ ] 添加凸轮曲线支持
- [ ] 实现电子齿轮、电子凸轮等高级功能

---

**文档版本：** v1.0  
**最后更新：** 2025-12-27  
**作者：** AI Assistant  
**联系方式：** 参考项目README

