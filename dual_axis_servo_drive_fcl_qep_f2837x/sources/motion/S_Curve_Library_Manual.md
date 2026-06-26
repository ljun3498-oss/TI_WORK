# S 型加减速曲线函数库使用手册

## 目录

1. [概述](#1-概述)
2. [理论基础](#2-理论基础)
3. [数据结构](#3-数据结构)
4. [API 函数详解](#4-api-函数详解)
5. [运动类型](#5-运动类型)
6. [使用流程](#6-使用流程)
7. [代码示例](#7-代码示例)
8. [函数调用关系](#8-函数调用关系)
9. [配置选项](#9-配置选项)
10. [常见问题](#10-常见问题)

---

## 1. 概述

### 1.1 模块功能

S 型加减速曲线函数库（`scurve_profile.c/h`）是运动控制系统的核心模块，提供：

- **S 曲线轨迹规划**：基于加加速度（jerk）约束的平滑加减速
- **多种运动类型支持**：正常运动、反向运动、过冲运动、速度变化、停止命令
- **实时位置/速度/加速度计算**：支持任意时刻的状态查询
- **加速度连续性**：自动处理轨迹切换时的加速度过渡

### 1.2 核心特性

| 特性 | 说明 |
|------|------|
| 七段式 S 曲线 | 加速段和减速段各包含 3 个 jerk 相位 |
| 梯形波/三角波自适应 | 根据运动距离自动选择最优轮廓 |
| 加速度过渡段 | Phase 0 确保轨迹切换时的加速度连续 |
| 急停支持 | 支持emergencyDecel 参数实现快速停止 |
| 速度变化模式 | 支持高速到低速的平滑过渡 |

### 1.3 文件结构

```
f2837x_cpu1/
├── include/
│   ├── motion_control.h      # 基础数据结构定义
│   └── scurve_profile.h       # S曲线API声明
└── source/
    ├── scurve_profile.c       # S曲线实现
    └── motion_control.c       # 运动轴控制
```

---

## 2. 理论基础

### 2.1 S 曲线七段结构

```
加速度 a
    ↑
aMax │▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
     │ P1   P2   P3  │ P4 │ P5   P6   P7  │
     │               │    │               │
     └──────────────────────────────────────────────────→ 时间 t
     0   tj1  tj1+ta tj1+ta+tj2
```

### 2.2 阶段定义

| 阶段 | 名称 | 加加速度 | 特点 |
|------|------|----------|------|
| Phase 0 | 加速度过渡 | 取决于 a0 | 将初始加速度变为 0 |
| Phase 1 | 加加速 | +jMax | 加速度从 0 增加到 aMax |
| Phase 2 | 匀加速 | 0 | 保持最大加速度（可选）|
| Phase 3 | 减加速 | -jMax | 加速度从 aMax 减小到 0 |
| Phase 4 | 匀速 | 0 | 保持峰值速度（可选）|
| Phase 5 | 加减速 | -jMax | 加速度从 0 减小到 -dMax |
| Phase 6 | 匀减速 | 0 | 保持最大减速度（可选）|
| Phase 7 | 减减速 | +jMax | 加速度从 -dMax 增加到 0 |

### 2.3 梯形波与三角波

**梯形波**（长距离）：
```
dv > aMax × jerkTime → 有匀加速段
```

**三角波**（短距离）：
```
dv ≤ aMax × jerkTime → 无匀加速段
```

### 2.4 关键参数关系

```
jMax = aMax / jerkTime     // 最大加加速度
ta = dv/aMax - jerkTime    // 匀加速时间
tv = (distance - sa - sd) / v_peak  // 匀速时间
```

---

## 3. 数据结构

### 3.1 TrapezoidalProfile_t

S 曲线参数结构体，定义在 `motion_control.h` 中：

```c
typedef struct
{
    // ========== 运动参数 ==========
    float32_t maxVelocity;        // 最大速度 [unit/s]
    float32_t maxAccel;           // 最大加速度 [unit/s^2]
    float32_t maxDecel;           // 最大减速度 [unit/s^2]
    float32_t emergencyDecel;     // 急停减速度 [unit/s^2]
    float32_t jerkTime;           // S曲线jerk时间（0=梯形, >0=S曲线）[s]

    // ========== 当前状态 ==========
    float32_t currentPos;         // 当前位置 [unit]
    float32_t currentVel;        // 当前速度 [unit/s]
    float32_t currentAccel;      // 当前加速度 [unit/s^2]

    // ========== 轨迹参数 ==========
    float32_t startPos;          // 起始位置 [unit]
    float32_t targetPos;         // 目标位置 [unit]
    float32_t peakVelocity;      // 峰值速度 [unit/s]

    // ========== 时间参数 ==========
    float32_t accelTransTime;    // Phase0过渡时间 [s]
    float32_t accelTime;         // Phase1-3总时间 [s]
    float32_t constTime;         // Phase4匀速时间 [s]
    float32_t decelTime;         // Phase5-7总时间 [s]
    float32_t totalTime;         // 总时间 [s]

    // ========== S曲线7段时间 ==========
    float32_t tj1;               // 加速-加加速时间 [s]
    float32_t ta;                // 加速-匀加速时间 [s]
    float32_t tj2;               // 加速-减加速时间 [s]
    float32_t tv;                // 匀速时间 [s]
    float32_t tjd1;              // 减速-加减速时间 [s]
    float32_t td;                // 减速-匀减速时间 [s]
    float32_t tjd2;              // 减速-减减速时间 [s]

    // ========== 停止专用参数 ==========
    float32_t stopTjd1;          // 停止-加减速时间 [s]
    float32_t stopTd;            // 停止-匀减速时间 [s]
    float32_t stopTjd2;          // 停止-减减速时间 [s]
    float32_t reverseDecelTime;   // 反向减速总时间 [s]
    float32_t reverseDecelEndPos; // 反向减速结束位置 [unit]

    // ========== 标志 ==========
    bool isEmergencyStop;         // 急停标志
    bool isStopMove;             // 停止命令标志
    bool isVelocityChange;        // 速度变化模式
    bool isComputed;             // 轨迹已计算
} TrapezoidalProfile_t;
```

### 3.2 关键宏定义

```c
#define SCURVE_EPSILON_TIME   0.0001f   // 时间阈值
#define SCURVE_EPSILON_VEL    0.1f     // 速度阈值
#define SCURVE_EPSILON_POS    0.01f    // 位置阈值
#define SCURVE_EPSILON_ACCEL  50.0f    // 加速度阈值
```

---

## 4. API 函数详解

### 4.1 初始化函数

#### TrapProfile_init

```c
void TrapProfile_init(TrapezoidalProfile_t* profile,
                     float32_t maxVel,
                     float32_t maxAccel,
                     float32_t maxDecel);
```

**功能**：初始化轨迹参数结构体

**参数**：
- `profile` - 轨迹结构体指针
- `maxVel` - 最大速度 [unit/s]
- `maxAccel` - 最大加速度 [unit/s²]
- `maxDecel` - 最大减速度 [unit/s²]

**示例**：
```c
TrapezoidalProfile_t profile;
TrapProfile_init(&profile, 500.0f, 2000.0f, 2000.0f);
```

---

#### TrapProfile_setJerkTime

```c
void TrapProfile_setJerkTime(TrapezoidalProfile_t* profile, float32_t jerkTime);
```

**功能**：设置 S 曲线 jerk 时间

**参数**：
- `jerkTime = 0` - 梯形曲线
- `jerkTime > 0` - S 型曲线（值越大，加减速越平滑）

**示例**：
```c
// 梯形曲线
TrapProfile_setJerkTime(&profile, 0.0f);

// S型曲线
TrapProfile_setJerkTime(&profile, 0.1f);  // 100ms jerk时间
```

---

### 4.2 轨迹计算函数

#### TrapProfile_setTarget

```c
void TrapProfile_setTarget(TrapezoidalProfile_t* profile,
                         float32_t currentPos,
                         float32_t currentVel,
                         float32_t targetPos);
```

**功能**：设置运动目标点

**参数**：
- `currentPos` - 当前位置 [unit]
- `currentVel` - 当前速度 [unit/s]
- `targetPos` - 目标位置 [unit]

**调用顺序**：
```c
profile.currentPos = 100.0f;
profile.currentVel = 50.0f;
TrapProfile_setTarget(&profile, 100.0f, 50.0f, 500.0f);
```

---

#### SCurve_computeProfile / TrapProfile_compute

```c
void SCurve_computeProfile(TrapezoidalProfile_t *profile);
void TrapProfile_compute(TrapezoidalProfile_t* profile);
```

**功能**：计算完整的轨迹参数

**内部处理**：
1. 确定运动类型（NORMAL/REVERSE/OVERSHOOT/STOP/VC）
2. 计算 Phase 0（加速度过渡）
3. 计算 Phase 1-7（7段 S 曲线）
4. 计算总时间

**调用时机**：
- 设置目标后必须调用
- 轨迹切换时自动调用

---

### 4.3 状态查询函数

#### TrapProfile_getPosition

```c
float32_t TrapProfile_getPosition(TrapezoidalProfile_t* profile, float32_t t);
```

**功能**：获取指定时刻的位置

**参数**：
- `profile` - 轨迹结构体指针
- `t` - 相对时间（从轨迹开始算起）[s]

**返回值**：指定时刻的位置 [unit]

**示例**：
```c
// 获取0.1秒时的位置
float32_t pos = TrapProfile_getPosition(&profile, 0.1f);
```

---

#### TrapProfile_getVelocity

```c
float32_t TrapProfile_getVelocity(TrapezoidalProfile_t* profile);
```

**功能**：获取当前轨迹速度

**返回值**：当前速度 [unit/s]

---

#### TrapProfile_getAcceleration

```c
float32_t TrapProfile_getAcceleration(TrapezoidalProfile_t* profile);
```

**功能**：获取当前轨迹加速度

**返回值**：当前加速度 [unit/s²]

---

#### TrapProfile_getJerk

```c
float32_t TrapProfile_getJerk(TrapezoidalProfile_t* profile);
```

**功能**：获取当前轨迹加加速度

**返回值**：当前加加速度 [unit/s³]

---

### 4.4 停止控制函数

#### TrapProfile_stop

```c
void TrapProfile_stop(TrapezoidalProfile_t* profile,
                     float32_t currentPos,
                     float32_t currentVel,
                     float32_t currentAccel,
                     float32_t profileUpdateTs,
                     bool isEmergencyStop);
```

**功能**：生成停止轨迹

**参数**：
- `currentPos` - 当前位置 [unit]
- `currentVel` - 当前速度 [unit/s]
- `currentAccel` - 当前加速度 [unit/s²]
- `profileUpdateTs` - 轨迹更新周期 [s]
- `isEmergencyStop` - 是否为急停

**急停 vs 普通停止**：
| 类型 | 减速度 |
|------|--------|
| 普通停止 | maxDecel |
| 急停 | emergencyDecel |

---

### 4.5 状态查询函数

#### TrapProfile_isDone

```c
bool TrapProfile_isDone(TrapezoidalProfile_t* profile);
```

**功能**：判断轨迹是否完成

**返回值**：
- `true` - 轨迹已完成
- `false` - 轨迹进行中

---

#### TrapProfile_getTotalTime

```c
float32_t TrapProfile_getTotalTime(TrapezoidalProfile_t* profile);
```

**功能**：获取轨迹总时间

**返回值**：轨迹总时间 [s]

---

#### TrapProfile_getElapsedTime

```c
float32_t TrapProfile_getElapsedTime(TrapezoidalProfile_t* profile);
```

**功能**：获取已运行时间

**返回值**：已运行时间 [s]

---

## 5. 运动类型

### 5.1 运动类型枚举

```c
typedef enum {
    MOTION_TYPE_STOP,            // 停止命令
    MOTION_TYPE_REVERSE,         // 反向运动
    MOTION_TYPE_OVERSHOOT,      // 过冲运动
    MOTION_TYPE_VELOCITY_CHANGE,// 速度变化
    MOTION_TYPE_NORMAL,         // 正常运动
    MOTION_TYPE_MICRO           // 微小运动
} MotionType;
```

### 5.2 各类型详解

#### NORMAL（正常运动）

```
速度 ↑
       ┌────────────┐
v_max  │            │
       │            │匀速
       │            │
       └─────┬──────┘
             └────→ 位置
```

**特征**：
- 加速 → 匀速 → 减速
- 速度方向不变
- 能到达目标位置

---

#### REVERSE（反向运动）

```
速度 ↑
       ┌─┐           ┌──┐
       │ │           │  │
       │ │ 停止      │  │ 反向加速
       │0│ ←─────── │  │
       │ │           │  │
       └─┘           └──┘
             └────→ 位置
```

**触发条件**：
- 当前速度方向与目标方向相反
- `SIGN(v0) × direction < 0`

**分解**：
1. Phase 0：加速度过渡到 0
2. Phase 1-3：减速到 0
3. Phase 4-10：从 0 加速到目标

---

#### OVERSHOOT（过冲运动）

```
速度 ↑
       ┌─┐              ┌──┐
       │ │              │  │
       │ │   过冲       │  │ 返回
       │0│ ←────────── │  │
       │ │              │  │
       └─┘              └──┘
             └────→ 位置
```

**触发条件**：
- 停止距离 > 目标距离
- `s_stop > distance × 1.15`

---

#### VELOCITY_CHANGE（速度变化）

```
速度 ↑
       ┌─────────┐
v_max  │         │v_target
       │         │
       └────┬────┘
             │匀速
       ┌────┴────┐
       │         │
       └─────────┘
```

**触发条件**：
- 当前速度 > 目标速度
- 停止距离 < 剩余距离

---

#### STOP（停止）

```
速度 ↑
       │
       │ 减速到0
       │
       └────→ 位置
```

**特征**：
- 只有 Phase 1-3（减速段）
- 无 Phase 4-10（加速段）
- `accelTime = 0, constTime = 0`

---

## 6. 使用流程

> **重要说明**：S型加减速曲线通过 `MotionAxis` 运动轴抽象层来调用，不是单独使用。系统采用**双缓冲+定时生成**架构：
> - `MotionAxis_updateProfile()`：定时生成轨迹点，填充缓冲区
> - `MotionAxis_updateControl()`：高频读取缓冲区，执行位置环控制

### 6.1 系统架构

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           双缓冲架构                                        │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  ┌──────────────────┐         ┌──────────────────┐                       │
│  │   轨迹规划层       │         │   位置环控制层    │                       │
│  │  profileUpdateTs  │         │   posLoopTs      │                       │
│  │                   │         │                   │                       │
│  │  MotionAxis_     │  填充   │  MotionAxis_     │  读取                │
│  │  updateProfile()  │ ─────► │  updateControl() │                       │
│  │                   │  FIFO  │                   │                       │
│  │  - 计算S曲线      │ Buffer │  - 从buffer读取   │                       │
│  │  - 写入buffer    │        │  - PID控制       │                       │
│  │  - dt间隔生成    │        │  - 分发到电机     │                       │
│  └──────────────────┘         └──────────────────┘                       │
│                                                                             │
│  生成频率: 1ms / 2ms / 5ms (可配置)                                        │
│  控制频率: 100μs / 200μs / 1ms (根据硬件)                                  │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 6.2 API 调用层次

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           API 层次                                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  Level 1: 运动命令 API (用户调用)                                          │
│  ┌─────────────────────────────────────────────────────────────┐           │
│  │ MotionAxis_moveAbsolute()    // 绝对运动                    │           │
│  │ MotionAxis_moveRelative()    // 相对运动                    │           │
│  │ MotionAxis_stop()           // 正常停止                    │           │
│  │ MotionAxis_emergencyStop()   // 急停                        │           │
│  └─────────────────────────────────────────────────────────────┘           │
│                              │                                              │
│                              ▼                                              │
│  Level 2: 轨迹参数设置                                                      │
│  ┌─────────────────────────────────────────────────────────────┐           │
│  │ TrapProfile_setTarget()      // 设置目标位置               │           │
│  │ TrapProfile_stop()           // 生成停止轨迹               │           │
│  │ SCurve_computeProfile()      // 计算S曲线参数             │           │
│  └─────────────────────────────────────────────────────────────┘           │
│                              │                                              │
│                              ▼                                              │
│  Level 3: 状态查询 API (内部使用/调试)                                      │
│  ┌─────────────────────────────────────────────────────────────┐           │
│  │ TrapProfile_getPosition()    // 获取位置(用于生成buffer)    │           │
│  │ TrapProfile_getVelocity()    // 获取速度                    │           │
│  │ TrapProfile_getAcceleration() // 获取加速度                  │           │
│  │ TrapProfile_getJerk()       // 获取加加速度                │           │
│  └─────────────────────────────────────────────────────────────┘           │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 6.3 典型使用流程

#### 6.3.1 初始化

```c
// 1. 创建运动轴
MotionAxis_t* axis = MotionAxis_create(1, AXIS_TYPE_VIRTUAL);

// 2. 配置运动参数
MotionAxis_setMotionParams(axis,
    500.0f,    // maxVel: 最大速度
    2000.0f,   // maxAccel: 最大加速度
    2000.0f);  // maxDecel: 最大减速度

// 3. 设置S曲线jerk时间（0=梯形，>0=S曲线）
MotionAxis_setJerkTime(axis, 0.1f);  // 100ms jerk时间

// 4. 设置急停减速度
axis->profile.emergencyDecel = 4000.0f;
```

#### 6.3.2 主循环集成

```c
// 位置环任务（高频，如100μs或1ms）
void position_loop_task(void)
{
    for (int i = 0; i < numAxes; i++)
    {
        MotionAxis_updateControl(axes[i]);  // 读取buffer，执行PID
    }
}

// 轨迹更新任务（低频，如1ms或2ms）
void profile_update_task(void)
{
    for (int i = 0; i < numAxes; i++)
    {
        MotionAxis_updateProfile(axes[i]);  // 生成轨迹点，填充buffer
    }
}
```

#### 6.3.3 发送运动命令

```c
// 发送绝对运动命令
void send_move_command(MotionAxis_t* axis, float32_t targetPos)
{
    MotionAxis_moveAbsolute(axis, targetPos);
}

// 发送急停命令
void send_emergency_stop(MotionAxis_t* axis)
{
    MotionAxis_emergencyStop(axis);
}
```

### 6.4 轨迹切换流程

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        轨迹切换流程                                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  新命令到达（moveAbsolute/moveRelative/stop/emergencyStop）                   │
│      │                                                                      │
│      ▼                                                                      │
│  ┌─────────────────────┐                                                    │
│  │ MotionAxis_xxx()    │                                                    │
│  │  - 保存当前状态     │                                                    │
│  │  - 设置目标/停止   │                                                    │
│  │  - 计算过渡轨迹    │                                                    │
│  │  - 设置isReplanning│                                                    │
│  └─────────┬───────────┘                                                    │
│            │                                                                │
│            ▼                                                                │
│  ┌─────────────────────┐                                                    │
│  │ 定时触发            │                                                    │
│  │ MotionAxis_update   │                                                    │
│  │ _Profile()         │                                                    │
│  │  - 计算S曲线参数   │                                                    │
│  │  - 生成轨迹点      │                                                    │
│  │  - 写入buffer      │                                                    │
│  │  - 清除isReplanning│                                                    │
│  └─────────────────────┘                                                    │
│                                                                             │
│  ┌─────────────────────┐                                                    │
│  │ MotionAxis_update   │                                                    │
│  │ _Control()         │                                                    │
│  │  - 读取buffer      │                                                    │
│  │  - 执行PID控制      │                                                    │
│  │  - 分发到电机      │                                                    │
│  └─────────────────────┘                                                    │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 7. 代码示例

### 7.1 基础使用（通过 MotionAxis 层）

```c
#include "motion_control.h"
#include "scurve_profile.h"

// 全局变量
MotionAxis_t* g_axis = NULL;

// 初始化
void system_init(void)
{
    // 创建虚拟轴
    g_axis = MotionAxis_create(1, AXIS_TYPE_VIRTUAL);

    // 配置运动参数
    MotionAxis_setMotionParams(g_axis,
        500.0f,    // maxVel: 最大速度
        2000.0f,   // maxAccel: 最大加速度
        2000.0f);  // maxDecel: 最大减速度

    // 设置S曲线jerk时间（0=梯形，>0=S曲线）
    MotionAxis_setJerkTime(g_axis, 0.1f);  // 100ms jerk时间

    // 设置急停减速度
    g_axis->profile.emergencyDecel = 4000.0f;

    // 配置采样时间
    MotionAxis_setProfileUpdateTs(g_axis, 0.002f);  // 2ms更新轨迹
}

// 位置环任务（高频）
void position_loop_task(void)
{
    if (g_axis != NULL)
    {
        MotionAxis_updateControl(g_axis);  // 读取buffer，执行PID
    }
}

// 轨迹更新任务（低频）
void profile_update_task(void)
{
    if (g_axis != NULL)
    {
        MotionAxis_updateProfile(g_axis);  // 生成轨迹点，填充buffer
    }
}

// 发送运动命令
void send_move_command(float32_t targetPos)
{
    if (g_axis != NULL)
    {
        MotionAxis_moveAbsolute(g_axis, targetPos);
    }
}

// 主函数
int main(void)
{
    system_init();

    // 发送初始命令
    send_move_command(500.0f);

    // 等待到达目标
    while (!MotionAxis_isStopped(g_axis))
    {
        position_loop_task();
        profile_update_task();
    }

    // 发送下一个命令
    send_move_command(0.0f);

    return 0;
}
```

### 7.2 急停示例

```c
// 急停按钮处理
volatile bool g_emergencyFlag = false;

void emergency_button_isr(void)
{
    g_emergencyFlag = true;
}

// 主循环
void main_loop(void)
{
    while (1)
    {
        // 检查急停条件
        if (g_emergencyFlag && g_axis != NULL)
        {
            // MotionAxis_emergencyStop 会：
            // 1. 计算当前状态
            // 2. 设置 isEmergencyStop 标志
            // 3. 使用 emergencyDecel 生成急停轨迹
            // 4. 调用 MotionAxis_updateProfile 填充buffer
            MotionAxis_emergencyStop(g_axis);
            g_emergencyFlag = false;
        }

        // 正常处理
        position_loop_task();
        profile_update_task();
    }
}
```

### 7.3 轨迹平滑切换示例

```c
// 场景：运动中需要改变目标位置
void trajectory_handover_example(void)
{
    // 发送第一个命令：移动到500
    MotionAxis_moveAbsolute(g_axis, 500.0f);

    // 等待一段时间（如200ms）
    delay_ms(200);

    // 发送新命令：移动到1000
    // 系统会自动处理平滑过渡：
    // 1. 在moveAbsolute中检测到有运动在进行
    // 2. 计算当前状态（位置、速度、加速度）
    // 3. 调用TrapProfile_stop生成过渡轨迹
    // 4. 调用SCurve_computeProfile计算新轨迹（含Phase0过渡）
    // 5. 下次updateProfile时将新轨迹写入buffer
    MotionAxis_moveAbsolute(g_axis, 1000.0f);

    // 等待新目标完成
    while (!MotionAxis_isStopped(g_axis))
    {
        position_loop_task();
        profile_update_task();
    }
}
```

### 7.4 完整多轴应用

```c
#define MAX_AXES 3
MotionAxis_t* g_axes[MAX_AXES];

void multi_axis_init(void)
{
    for (int i = 0; i < MAX_AXES; i++)
    {
        g_axes[i] = MotionAxis_create(i + 1, AXIS_TYPE_VIRTUAL);
        MotionAxis_setMotionParams(g_axes[i], 500.0f, 2000.0f, 2000.0f);
        MotionAxis_setJerkTime(g_axes[i], 0.1f);
        g_axes[i]->profile.emergencyDecel = 4000.0f;
    }
}

// 多轴协调运动
void coordinated_move(float32_t target1, float32_t target2, float32_t target3)
{
    // 发送各轴命令
    MotionAxis_moveAbsolute(g_axes[0], target1);
    MotionAxis_moveAbsolute(g_axes[1], target2);
    MotionAxis_moveAbsolute(g_axes[2], target3);

    // 等待所有轴完成
    while (1)
    {
        bool allStopped = true;
        for (int i = 0; i < MAX_AXES; i++)
        {
            MotionAxis_updateProfile(g_axes[i]);
            MotionAxis_updateControl(g_axes[i]);

            if (!MotionAxis_isStopped(g_axes[i]))
            {
                allStopped = false;
            }
        }

        if (allStopped) break;
    }
}
```

---

## 8. 函数调用关系

### 8.1 轨迹计算调用链

```
TrapProfile_compute()
    │
    ├──► calculateStopToZeroProfile()
    │        │
    │        └──► 计算停止轨迹参数
    │
    ├──► determineMotionType()
    │        │
    │        └──► 判断运动类型
    │
    ├──► SCurve_computeProfile()
    │        │
    │        ├──► Phase 0 计算
    │        │    └──► accelTransTime, accelTransEndPos
    │        │
    │        ├──► Phase 1-7 计算
    │        │    └──► tj1, ta, tj2, tv, tjd1, td, tjd2
    │        │
    │        └──► 时间累加
    │             └──► totalTime
    │
    └──► 存储结果
         ├──► peakVelocity
         ├──► accelEndPos
         ├──► decelStartPos
         └──► targetPos
```

### 8.2 状态查询调用链

```
TrapProfile_getPosition(t)
    │
    ├──► Phase 0 处理
    │    └──► 加速度过渡计算
    │
    ├──► Phase 1-3 处理
    │    └──► 反向减速计算
    │
    ├──► Phase 4-10 处理
    │    └──► 7段S曲线计算
    │
    └──► 返回位置

TrapProfile_getVelocity()
    │
    └──► 与getPosition类似，但返回速度

TrapProfile_getAcceleration()
    │
    └──► 与getPosition类似，但返回加速度

TrapProfile_getJerk()
    │
    └──► 返回当前加加速度
```

### 8.3 停止控制调用链

### 8.1 轨迹计算调用链

```
用户调用 MotionAxis_moveAbsolute()
    │
    ├──► 检测当前状态
    │
    ├──► 保存当前状态到 profile
    │
    ├──► TrapProfile_stop() 生成过渡轨迹
    │    │
    │    └──► isStopMove = true
    │
    └──► TrapProfile_setTarget() 设置目标
         │
         └──► 设置 isReplanning 标志


定时触发 MotionAxis_updateProfile()
    │
    ├──► 检测 isReplanning 标志
    │
    ├──► TrapProfile_setTarget() (从 stop 中继承)
    │
    ├──► SCurve_computeProfile() 计算轨迹
    │    │
    │    ├──► calculateStopToZeroProfile()
    │    │    │
    │    │    └──► 计算停止轨迹参数
    │    │
    │    ├──► determineMotionType()
    │    │    │
    │    │    └──► 判断运动类型
    │    │
    │    ├──► Phase 0 计算
    │    │    └──► accelTransTime, accelTransEndPos
    │    │
    │    ├──► Phase 1-7 计算
    │    │    └──► tj1, ta, tj2, tv, tjd1, td, tjd2
    │    │
    │    └──► 时间累加
    │         └──► totalTime
    │
    ├──► 循环生成轨迹点
    │    │
    │    ├──► TrapProfile_getPosition() 获取位置
    │    ├──► TrapProfile_getVelocity() 获取速度
    │    ├──► TrapProfile_getAcceleration() 获取加速度
    │    └──► SCurve_getJerk() 获取加加速度
    │
    └──► ProfileBuffer_write() 写入缓冲区
         │
         └──► 清除 isReplanning 标志
```

### 8.2 状态查询调用链

```
定时触发 MotionAxis_updateProfile()
    │
    └──► TrapProfile_getPosition(t)
         │
         ├──► Phase 0 处理
         │    └──► 加速度过渡计算
         │
         ├──► Phase 1-3 处理
         │    └──► 反向减速计算
         │
         ├──► Phase 4-10 处理
         │    └──► 7段S曲线计算
         │
         └──► 返回位置

定时触发 MotionAxis_updateProfile()
    │
    └──► TrapProfile_getVelocity()
         │
         └──► 与getPosition类似，但返回速度

定时触发 MotionAxis_updateProfile()
    │
    └──► TrapProfile_getAcceleration()
         │
         └──► 与getPosition类似，但返回加速度

定时触发 MotionAxis_updateProfile()
    │
    └──► SCurve_getJerk()
         │
         └──► 返回当前加加速度
```

### 8.3 停止控制调用链

```
用户调用 MotionAxis_stop() / MotionAxis_emergencyStop()
    │
    ├──► 保存当前状态
    │    ├──► currentPos
    │    ├──► currentVel
    │    └──► currentAccel
    │
    ├──► 设置停止参数
    │    ├──► isStopMove = true
    │    └──► isEmergencyStop = 标志
    │
    ├──► 计算有效减速度
    │    └──► effectiveDecel = (emergencyDecel > 0) ? emergencyDecel : maxDecel
    │
    └──► 设置 isReplanning 标志（延迟到下次 updateProfile 执行）


下次定时 MotionAxis_updateProfile()
    │
    └──► SCurve_computeProfile() 生成停止轨迹
         │
         ├──► MOTION_TYPE_STOP 处理
         │    └──► 只生成 Phase 1-3 减速段
         │
         └──► 写入 buffer
```

### 8.4 函数依赖图

```
┌─────────────────────────────────────────────────────────────────┐
│                      用户层                                        │
│  MotionAxis_moveAbsolute()    // 绝对运动                         │
│  MotionAxis_moveRelative()    // 相对运动                         │
│  MotionAxis_stop()           // 正常停止                         │
│  MotionAxis_emergencyStop()   // 急停                            │
└─────────────────────────────┬───────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                    MotionAxis 层                                  │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │  MotionAxis_updateProfile()  (定时触发，如1ms/2ms)    │   │
│  │                                                         │   │
│  │  - 调用 TrapProfile_setTarget()                        │   │
│  │  - 调用 SCurve_computeProfile()                        │   │
│  │  - 循环调用 getPosition/getVelocity/getAcceleration     │   │
│  │  - 调用 ProfileBuffer_write() 填充缓冲区               │   │
│  └─────────────────────────────────────────────────────────┘   │
│                              │                                   │
│                              ▼                                   │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │  MotionAxis_updateControl()  (高频触发，如100μs/1ms)   │   │
│  │                                                         │   │
│  │  - 调用 ProfileBuffer_read() 读取缓冲区                 │   │
│  │  - 执行 PID 控制                                       │   │
│  │  - 分发到各电机                                       │   │
│  └─────────────────────────────────────────────────────────┘   │
└─────────────────────────────┬───────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                    轨迹规划层                                      │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │  SCurve_computeProfile()                                 │   │
│  │                                                         │   │
│  │  - determineMotionType()  判断运动类型                    │   │
│  │  - calculateStopToZeroProfile()  计算停止轨迹            │   │
│  │  - calculate7SegmentSCurve()  计算7段S曲线             │   │
│  └─────────────────────────────────────────────────────────┘   │
│                              │                                   │
│                              ▼                                   │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │  状态查询函数                                            │   │
│  │  - SCurve_getPosition()  位置计算                        │   │
│  │  - SCurve_getVelocity()  速度计算                        │   │
│  │  - SCurve_getAcceleration()  加速度计算                  │   │
│  │  - SCurve_getJerk()  加加速度计算                      │   │
│  └─────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────┘
```

---

## 9. 配置选项

### 9.1 编译开关

```c
// scurve_profile.h
#ifndef USE_SCURVE_PROFILE
#define USE_SCURVE_PROFILE  1   // 1=启用, 0=禁用
#endif
```

### 9.2 参数配置建议

| 应用场景 | maxVel | maxAccel | maxDecel | jerkTime |
|----------|--------|----------|----------|----------|
| 精细定位 | 100 | 500 | 500 | 0.05 |
| 标准运动 | 500 | 2000 | 2000 | 0.1 |
| 高速运动 | 1000 | 5000 | 5000 | 0.02 |
| 急停应用 | - | - | 2×maxDecel | 0.01 |

### 9.3 急停配置

```c
// 设置急停减速度（应为正常减速度的2-3倍）
profile.emergencyDecel = 4000.0f;  // 正常为2000
```

---

## 10. 常见问题

### Q1: 轨迹切换时位置跳变？

**原因**：轨迹切换时没有正确保存和传递当前状态

**解决**：
1. 在切换前调用 `getPosition/getVelocity/getAcceleration` 获取当前状态
2. 调用 `TrapProfile_stop()` 生成平滑过渡轨迹
3. 将当前状态传递给 `setTarget()`

### Q2: 急停时位置回退？

**原因**：
- 急停轨迹的 `reverseDecelEndPos` 计算错误
- `SCurve_getPosition` 对 STOP 轨迹处理不当

**解决**：
检查 `SCurve_getPosition` 中是否有 STOP 轨迹的特殊处理：
```c
// STOP轨迹检测
if (reverseDecelTime > EPSILON &&
    accelTime < EPSILON &&
    constTime < EPSILON)
{
    return targetPos;  // 直接返回目标位置
}
```

### Q3: 三角波/梯形波判断错误？

**原因**：判断条件阈值问题

**解决**：
```c
// 正确判断
if (dv > aMax * jerkTime) {
    // 梯形波
} else {
    // 三角波
}
```

### Q4: 速度方向反转？

**原因**：REVERSE 模式处理不当

**解决**：
1. 检查 `direction` 计算是否正确
2. 检查 Phase 4-10 的方向判断逻辑

### Q5: 加速度不连续？

**原因**：Phase 0 过渡段处理不当

**解决**：
1. 确保 `accelTransTime` 正确计算
2. 确保 Phase 1 使用 `a_after` 作为初始加速度

---

## 附录 A: 公式速查表

### A.1 加速段位移

| 类型 | 公式 |
|------|------|
| 梯形波 s₁ | v₀·tj₁ + jMax·tj₁³/6 |
| 梯形波 s₂ | v₁·ta + 0.5·aMax·ta² |
| 梯形波 s₃ | v₂·tj₂ + 0.5·aMax·tj₂² - jMax·tj₂³/6 |
| 三角波 | 2·v₀·tjd + jMax·tjd³ |

### A.2 减速段位移

| 类型 | 公式 |
|------|------|
| 梯形波 | dMax·(tjd² + 1.5·tjd·td + 0.5·td²) |
| 三角波 | 2·v·tjd - jMax·tjd³ |

### A.3 时间参数

| 参数 | 梯形波 | 三角波 |
|------|--------|--------|
| tj₁/tjd | jerkTime | √(dv/jMax) |
| ta/tv | dv/aMax - jerkTime | 0 |
| tjd₁ | jerkTime | √(v/jMax) |
| td | v/dMax - jerkTime | 0 |

---

## 附录 B: 调试技巧

### B.1 启用调试日志

```c
// 在 scurve_profile.c 中
#define DEBUG_PRINT(fmt, ...) \
    fprintf(g_motion_debug_log, fmt, ##__VA_ARGS__); \
    fflush(g_motion_debug_log);
```

### B.2 关键输出点

```
[SCurve_computeProfile]  - 轨迹计算开始
[Input]                  - 输入参数
[Decel]                  - 减速度参数
[Phase0]                 - 过渡段参数
[MotionType]             - 运动类型判断
[STOP/REVERSE/NORMAL]    - 各类型处理
[7-Segment]              - 7段参数
[NORMAL]                 - 结果汇总
[SCurve_getPosition]     - 位置计算（调试用）
```

### B.3 验证要点

1. **位置连续性**：相邻时刻位置差应平滑
2. **速度连续性**：相位切换点速度应相等
3. **加速度连续性**：相邻时刻加速度应平滑
4. **终点验证**：最终位置应等于目标位置

---

*文档版本：v2.0*
*更新时间：2026-06-02*
*基于代码版本：scurve_profile.c (Redesigned Multi-Phase Architecture)*
