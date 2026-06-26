# S型加减速速度轨迹技术文档

## 目录

1. [概述](#1-概述)
2. [基本概念与数学基础](#2-基本概念与数学基础)
3. [设计理念与架构](#3-设计理念与架构)
4. [Phase架构详解](#4-phase架构详解)
5. [运动类型分类](#5-运动类型分类)
6. [7段S曲线原理](#6-7段s曲线原理)
7. [停止阶段原理](#7-停止阶段原理)
8. [加速度过渡原理](#8-加速度过渡原理)
9. [API函数详解](#9-api函数详解)
10. [关键数据结构](#10-关键数据结构)
11. [公式速查表](#11-公式速查表)
12. [配置与调试](#12-配置与调试)

---

## 1. 概述

### 1.1 什么是S型速度曲线

S型速度曲线是高级运动控制中常用的速度规划方式，相比梯形曲线，S型曲线通过控制**加加速度（jerk）**保持恒定，使加速度线性变化，从而实现更平滑的速度过渡。

```
加速度a
  ↑
aMax → ┌────┐
        │    │ ← 匀加速段 (Phase 2)
    ────┘    └──
        ↑        ↑
      tj1       tj2
        ↓        ↓
       ━━━━━━━━ ← 匀速段
        ↓        ↓
    ┌────┐
    │    │ ← 匀减速段 (Phase 6)
────┘    └──
        ↑        ↑
       tjd1      tjd2

速度v
  ↑
  │       ╱╲
  │      ╱  ╲
  │     ╱    ╲
  │    ╱      ╲
  │   ╱        ╲
  │  ╱          ╲
  │ ╱            ╲
  │╱              ╲
  └────────────────→ 时间
```

### 1.2 模块位置

```
f2837x_cpu1/source/
├── motion_control.c     ← 梯形曲线主实现
├── scurve_profile.c     ← S型曲线主实现（独立模块）
└── scurve_profile.h    ← S型曲线头文件

在scurve_profile.h中设置 USE_SCURVE_PROFILE=0 可完全禁用S型曲线
```

### 1.3 核心特性

| 特性 | 说明 |
|------|------|
| **加速度** | 线性变化（无突变） |
| **加加速度** | 恒定值（冲击可控） |
| **速度曲线** | S形（平滑过渡） |
| **计算复杂度** | 中等偏高 |
| **机械冲击** | 小（加加速度受限） |
| **适用场景** | 高精度定位、包装机械、机器人 |

### 1.4 jerkTime参数

S型曲线通过`jerkTime > 0`来启用，表示达到最大加速度所需的时间：

```c
// scurve_profile.c 第139-144行
if(profile->jerkTime > 0.0001f)
{
    // 使用S型曲线
    TrapProfile_computeSCurve(profile);
}
```

**物理意义**：
- `jerkTime = aMax / jMax`（加速度从0增加到aMax所需时间）
- jerkTime越大，加速度变化越缓慢，冲击越小

---

## 2. 基本概念与数学基础

### 2.1 核心参数

| 参数 | 符号 | 定义 | 单位 |
|------|-------|------|------|
| 最大速度 | vMax | 运动过程中的最大允许速度 | unit/s |
| 最大加速度 | aMax | 加减速时的最大加速度 | unit/s² |
| 最大减速度 | dMax | 减速时的最大减速度 | unit/s² |
| 加加速度 | jMax | 加速度的变化率 | unit/s³ |
| Jerk时间 | jerkTime | 达到aMax所需的加加速时间 | s |
| Jerk时间 | tjdTime | 达到dMax所需的加减速时间 | s |

### 2.2 加加速度与Jerk时间的关系

```c
// scurve_profile.c 第135行
jMax = dMax / jerkTime;

// 或者
// scurve_profile.c 第751行
jMax = maxAccel / jerkTime;
```

**物理意义**：加加速度jMax决定了加速度变化的快慢，jMax越大，加速度变化越快。

### 2.3 运动学公式

#### 加加速度（恒定）

```
j(t) = jMax（恒定）
```

#### 加速度（线性变化）

```
Phase 1（加加速）：a(t) = jMax × t
Phase 2（匀加速）：a(t) = aMax（恒定）
Phase 3（减加速）：a(t) = aMax - jMax × t
```

#### 速度（积分）

```
Phase 1：v(t) = v₀ + 0.5 × jMax × t²
Phase 2：v(t) = v₁ + aMax × t
Phase 3：v(t) = v₂ + aMax × t - 0.5 × jMax × t²
```

#### 位移（积分）

```
Phase 1：s(t) = v₀ × t + (jMax × t³) / 6
Phase 2：s(t) = v₁ × t + (aMax × t²) / 2
Phase 3：s(t) = v₂ × t + (aMax × t²) / 2 - (jMax × t³) / 6
```

---

## 3. 设计理念与架构

### 3.1 系统性运动处理

S型曲线模块采用统一的框架系统性地处理所有运动情况：

```
┌─────────────────────────────────────────────────────────────────────┐
│                      S-Curve 轨迹规划框架                              │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│  ┌───────────────────┐                                               │
│  │ 运动类型判断        │ → STOP / REVERSE / OVERSHOOT / NORMAL / MICRO│
│  └─────────┬─────────┘                                               │
│            ↓                                                          │
│  ┌───────────────────┐                                               │
│  │ Phase 0: 加速度过渡 │ → 当前加速度非0时，过渡到目标加速度           │
│  └─────────┬─────────┘                                               │
│            ↓                                                          │
│  ┌───────────────────┐                                               │
│  │ Phase 1-3: 停止阶段 │ → 减速到0（STOP/REVERSE/OVERSHOOT需要）     │
│  └─────────┬─────────┘                                               │
│            ↓                                                          │
│  ┌───────────────────┐                                               │
│  │ Phase 4-10: 正常运动 │ → 从0或当前速度运动到目标                    │
│  └─────────┬─────────┘                                               │
│            ↓                                                          │
│  ┌───────────────────┐                                               │
│  │ 输出轨迹参数        │ → tj1, ta, tj2, tv, tjd1, td, tjd2            │
│  └───────────────────┘                                               │
│                                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

### 3.2 运动类型枚举

```c
// scurve_profile.c 第69-76行
typedef enum {
    MOTION_TYPE_STOP,            // 停止命令（减速到0）
    MOTION_TYPE_REVERSE,         // 反向运动（先减速到0，再反向加速）
    MOTION_TYPE_OVERSHOOT,      // 过冲运动（距离不足时允许过冲后返回）
    MOTION_TYPE_VELOCITY_CHANGE, // 速度变化（不需减到0）
    MOTION_TYPE_NORMAL,          // 正常运动（标准S曲线）
    MOTION_TYPE_MICRO            // 微小运动（简化线性轨迹）
} MotionType;
```

### 3.3 核心原则

1. **任何反向运动都分解为**：减速到0 + 从0加速
2. **加速度过渡始终独立处理**（Phase 0）
3. **保证位置、速度、加速度的连续性**
4. **支持急停**（emergencyDecel）

### 3.4 独立性设计

S型曲线作为独立模块设计，可通过配置完全禁用：

```c
// scurve_profile.h
#define USE_SCURVE_PROFILE 1  // 1=启用, 0=禁用

// motion_control.c 中调用
void TrapProfile_compute(TrapezoidalProfile_t *profile)
{
    if(profile->jerkTime > 0.0001f)
    {
#if USE_SCURVE_PROFILE
        TrapProfile_computeSCurve(profile);
#endif
        return;
    }
    // 梯形曲线逻辑...
}
```

---

## 4. Phase架构详解

### 4.1 完整Phase划分

```
总时间 = Phase0 + Phase1-3(停止) + Phase4-10(正常运动)

┌─────────────────────────────────────────────────────────────────────┐
│                         完整S曲线Phase架构                            │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│ Phase 0: [0, t_trans]        加速度过渡段                            │
│          - 当前加速度非0时，过渡到0                                    │
│                                                                      │
│ Phase 1-3: [t_trans, t_trans+t_rev]  停止阶段（减速到0）              │
│   ├─ Phase 1: tjd1             加减速（建立减速加速度）                │
│   ├─ Phase 2: td               匀减速（保持峰值减速度）               │
│   └─ Phase 3: tjd2             减减速（消除加速度）                    │
│                                                                      │
│ Phase 4-10: [t_trans+t_rev, totalTime]  正常运动阶段                  │
│   ├─ Phase 4: tj1              加加速                                │
│   ├─ Phase 5: ta               匀加速                                │
│   ├─ Phase 6: tj2              减加速                                │
│   ├─ Phase 7: tv               匀速                                  │
│   ├─ Phase 8: tjd1             加减速                                │
│   ├─ Phase 9: td               匀减速                                │
│   └─ Phase 10: tjd2            减减速                                │
│                                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

### 4.2 Phase 0：加速度过渡段

**目的**：当轨迹重新规划时，如果当前轨迹的加速度非0，需要平滑过渡。

**处理逻辑**（scurve_profile.c 第149-204行）：

```c
// 情况1：速度或加速度接近0 → 跳过Phase0
if(ABS(v0) < velThreshold || ABS(a0) < accelThreshold)
{
    t_trans = 0.0f;
}

// 情况2：正在减速（a*v < 0）→ 方向正确
else if(a0 * v0 < 0)
{
    if(ABS(a0) <= dMax × 1.1f)
        t_trans = 0.0f;  // 保持当前加速度
    else
        t_trans = (ABS(a0) - dMax) / jMax;  // 调整到dMax
}

// 情况3：正在加速（a*v > 0）→ 过渡到0
else
{
    t_trans = ABS(a0) / jMax;
}
```

**Phase 0公式**：

```
位置：s(t) = v₀×t + 0.5×a₀×t² - SIGN(a₀)×jMax×t³/6
速度：v(t) = v₀ + a₀×t - 0.5×SIGN(a₀)×jMax×t²
加速度：a(t) = a₀ - SIGN(a₀)×jMax×t
```

### 4.3 Phase 1-3：停止阶段

**目的**：将速度减速到0（STOP/REVERSE/OVERSHOOT需要）。

**结构**：

```
加速度a
  ↑
dMax → ┌────┐
        │    │
    ────┘    └──
        ↑        ↑
      tjd1      tjd2
        ↓        ↓
        ━━━━━━━━
```

**判断能否达到最大减速度**（scurve_profile.c 第228-362行）：

```c
// 条件：v₁ ≥ 0.5 × dMax² / jMax
if(v1_abs >= 0.5f * dMax * jerkTime)
{
    // 能达到最大减速度 - 标准3段式
    stopTjd1 = jerkTime;
    stopTd = v1_abs / dMax - jerkTime;
    stopTjd2 = jerkTime;
}
else
{
    // 不能达到最大减速度 - 对称2段式
    tjd = sqrtf(v1_abs / jMax);
    stopTjd1 = tjd;
    stopTd = 0.0f;
    stopTjd2 = tjd;
}
```

### 4.4 Phase 4-10：正常运动阶段

**目的**：从当前速度（或0）运动到目标速度（或位置）。

详见第6节"7段S曲线原理"。

---

## 5. 运动类型分类

### 5.1 分类决策流程

```c
// scurve_profile.c 第654-708行
static MotionType determineMotionType(...)
{
    // 1. 急停命令标志
    if(profile->isEmergencyStop)
        return MOTION_TYPE_STOP;
    
    // 2. 距离≈0 且 速度≈0
    if(distance < 0.1f && ABS(v0) < EPS)
        return MOTION_TYPE_STOP;
    
    // 3. 微小运动
    if(distance <= 5.0f && ABS(v0) < EPS)
        return MOTION_TYPE_MICRO;
    
    // 4. 反向运动（速度方向与目标方向相反）
    if(SIGN(v0) * direction < -0.5f)
        return MOTION_TYPE_REVERSE;
    
    // 5. 过冲（停止距离 > 目标距离的115%）
    if(s_stop > distance × 1.15f)
        return MOTION_TYPE_OVERSHOOT;
    
    // 6. 正常运动
    return MOTION_TYPE_NORMAL;
}
```

### 5.2 各类运动处理

| 运动类型 | 处理方式 | Phase序列 |
|----------|----------|-----------|
| **STOP** | 减速到0 | Phase0 → Phase1-3 |
| **REVERSE** | 减速到0 → 反向加速到目标 | Phase0 → Phase1-3 → Phase4-10 |
| **OVERSHOOT** | 与REVERSE相同 | Phase0 → Phase1-3 → Phase4-10 |
| **NORMAL** | 标准S曲线运动 | Phase0(可选) → Phase4-10 |
| **MICRO** | 简化线性插值 | 无Phase |

### 5.3 微小运动特殊处理

```c
// scurve_profile.c 第945-996行
case MOTION_TYPE_MICRO:
{
    // 使用简化的线性插值轨迹
    float32_t microTime = dist_abs / (maxVelocity × 0.1f);
    if(microTime < MICRO_MOTION_MIN_TIME) microTime = MICRO_MOTION_MIN_TIME;
    if(microTime > 0.1f) microTime = 0.1f;
    
    // 设置为匀速运动（无加减速）
    profile->tj1 = 0.0f;
    profile->ta = 0.0f;
    profile->tj2 = 0.0f;
    profile->tv = microTime;
    profile->tjd1 = 0.0f;
    profile->td = 0.0f;
    profile->tjd2 = 0.0f;
    
    profile->isMicroMotion = true;
}
```

---

## 6. 7段S曲线原理

### 6.1 标准7段S曲线架构

```
加速度a
    ↑
aMax → ┌────┐
        │    │ ← 匀加速段 (Phase 5)
    ────┘    └──
        ↑        ↑
      tj1       tj2
        ↓        ↓
    ━━━━━━━━━━━━ ← 匀速段 (Phase 7)
        ↓        ↓
    ┌────┐
    │    │ ← 匀减速段 (Phase 9)
────┘    └──
        ↑        ↑
       tjd1      tjd2

速度v
    ↑
    │      ╱╲
    │     ╱  ╲
    │    ╱    ╲
    │   ╱      ╲
    │  ╱        ╲
    │ ╱          ╲
    │╱            ╲
    └────────────────→ 时间
    tj1  ta  tj2  tv  tjd1 td tjd2
```

### 6.2 段时间参数

| Phase | 参数 | 说明 | 时间长度 |
|-------|------|------|----------|
| 4 | tj1 | 加加速（加速度从0增加到aMax） | jerkTime |
| 5 | ta | 匀加速（保持aMax恒定） | dv_accel/aMax - tj1 |
| 6 | tj2 | 减加速（加速度从aMax减到0） | jerkTime |
| 7 | tv | 匀速（速度恒定） | 距离/v_max |
| 8 | tjd1 | 加减速（加速度从0增加到dMax） | jerkTime |
| 9 | td | 匀减速（保持dMax恒定） | v_max/dMax - tjd1 |
| 10 | tjd2 | 减减速（加速度从dMax减到0） | jerkTime |

### 6.3 能否达到最大加速度的判断

```c
// scurve_profile.c 第423-428行
// 条件：dv_accel ≥ 0.5 × aMax² / jMax
if(dv_accel >= 0.5f * aMax * jerkTime)
{
    // 能达到配置值，使用标准3段式
    tj1 = jerkTime;
    ta = dv_accel / aMax - jerkTime;
    tj2 = jerkTime;
}
else
{
    // 不能达到最大加速度，使用2段式（三角形）
    tj1 = sqrtf(dv_accel / jMax);
    ta = 0.0f;  // 无匀加速段
    tj2 = tj1;
}
```

**物理意义**：
- 当速度变化量dv较小时，不需要匀加速段
- 三角形加速：加加速→减加速（无匀加速）

### 6.4 时间点计算

```c
// scurve_profile.c 第456-466行
float32_t t1 = tj1;
float32_t t2 = t1 + ta;         // tj1 + ta
float32_t t3 = t2 + tj2;        // tj1 + ta + tj2
float32_t t4 = t3 + tv;         // tj1 + ta + tj2 + tv
float32_t t5 = t4 + tjd1;       // tj1 + ta + tj2 + tv + tjd1
float32_t t6 = t5 + td;         // tj1 + ta + tj2 + tv + tjd1 + td
float32_t t7 = t6 + tjd2;       // tj1 + ta + tj2 + tv + tjd1 + td + tjd2

profile->totalTime = t7;
```

### 6.5 各Phase速度公式

```c
// scurve_profile.c 第1643-1731行

// Phase 4 (tj1): 加加速
if(t_elapsed <= t1)
    v = v0 + 0.5f × jMax × t²;

// Phase 5 (ta): 匀加速
else if(t_elapsed <= t2)
    v = v1 + aMax × (t - t1);

// Phase 6 (tj2): 减加速
else if(t_elapsed <= t3)
    v = v2 + aMax × (t - t2) - 0.5f × jMax × (t - t2)²;

// Phase 7 (tv): 匀速
else if(t_elapsed <= t4)
    v = v3;  // = peakVelocity

// Phase 8 (tjd1): 加减速
else if(t_elapsed <= t5)
    v = v3 - 0.5f × jMax × (t - t4)²;

// Phase 9 (td): 匀减速
else if(t_elapsed <= t6)
    v = v4 - dMax × (t - t5);

// Phase 10 (tjd2): 减减速
else
    v = v5 - dMax × (t - t6) + 0.5f × jMax × (t - t6)²;
```

### 6.6 各Phase位置公式

```c
// scurve_profile.c 第1415-1572行

// Phase 4 (tj1): 加加速
if(t_elapsed <= t1)
    s = v0 × t + (jMax × t³) / 6;

// Phase 5 (ta): 匀加速
else if(t_elapsed <= t2)
    s = s1 + v1 × (t - t1) + (aMax × (t - t1)²) / 2;

// Phase 6 (tj2): 减加速
else if(t_elapsed <= t3)
    s = s2 + v2 × (t - t2) + (aMax × (t - t2)²) / 2 - (jMax × (t - t2)³) / 6;

// Phase 7 (tv): 匀速
else if(t_elapsed <= t4)
    s = s3 + v3 × (t - t3);

// Phase 8 (tjd1): 加减速
else if(t_elapsed <= t5)
    s = s4 + v4 × (t - t4) - (jMax × (t - t4)³) / 6;

// Phase 9 (td): 匀减速
else if(t_elapsed <= t6)
    s = s5 + v5 × (t - t5) - (dMax × (t - t5)²) / 2;

// Phase 10 (tjd2): 减减速
else
    s = s6 + v6 × (t - t6) - (dMax × (t - t6)²) / 2 + (jMax × (t - t6)³) / 6;
```

---

## 7. 停止阶段原理

### 7.1 停止阶段架构

```
加速度a
  ↑
dMax → ┌────┐
        │    │ ← 匀减速段 (Phase 2)
    ────┘    └──
        ↑        ↑
      tjd1      tjd2
        ↓        ↓
       ━━━━━━━━
```

### 7.2 停止阶段时间计算

```c
// scurve_profile.c 第228-362行
void calculateStopToZeroProfile(...)
{
    // Phase 0: 加速度过渡（见第8节）
    
    // Phase 1-3: 从 (v1_abs, a1_decel) 减速到 (0, 0)
    
    if(a1_decel > accelThreshold)
    {
        // 已在减速状态
        if(a1_decel >= dMax × 0.9f)
        {
            // 直接进入Phase 2+3
            *t_jerk1 = 0.0f;
            *t_const = (v1_abs - 0.5×dMax×jerkTime) / dMax;
            *t_jerk2 = jerkTime;
        }
        else
        {
            // 需要Phase 1增加减速度
            *t_jerk1 = (dMax - a1_decel) / jMax;
            *t_const = (v1_abs - ...) / dMax;
            *t_jerk2 = jerkTime;
        }
    }
    else
    {
        // a1≈0，从0开始标准减速
        if(v1_abs >= dMax × jerkTime)
        {
            // 标准3段式
            *t_jerk1 = jerkTime;
            *t_const = v1_abs / dMax - jerkTime;
            *t_jerk2 = jerkTime;
        }
        else
        {
            // 对称2段式
            tjd = sqrtf(v1_abs / jMax);
            *t_jerk1 = tjd;
            *t_const = 0.0f;
            *t_jerk2 = tjd;
        }
    }
}
```

### 7.3 停止阶段速度公式

```c
// Phase 1 (tjd1): 减加速（建立减速加速度）
if(t <= stopTjd1)
    v = v0 + a_start × t - 0.5 × jMax × t²;

// Phase 2 (td): 匀减速（保持峰值减速度）
if(t > stopTjd1 && t <= stopTjd1 + stopTd)
    v = v1 + a1 × (t - stopTjd1);

// Phase 3 (tjd2): 减减速（消除加速度）
if(t > stopTjd1 + stopTd)
    v = v2 + a1 × dt + 0.5 × jMax × dt²;
```

---

## 8. 加速度过渡原理

### 8.1 为什么需要加速度过渡

当轨迹重新规划时（如参数变化、停止命令），当前轨迹的加速度可能不为0。如果直接切换到新的加速度，会产生**加加速度（jerk）突变**，导致机械振动。

### 8.2 加速度连续性保证

```
原轨迹加速度    Phase 0过渡    新轨迹加速度
    │              │              │
    ↓              ↓              ↓
   +a0 ──────→ +a1 ──────────────────→ -dMax
              (过渡)
```

### 8.3 三种过渡情况

```c
// scurve_profile.c 第149-204行

// 情况1：速度或加速度接近0 → 跳过Phase0
if(ABS(v0) < velThreshold || ABS(a0) < accelThreshold)
{
    t_trans = 0.0f;
    v1 = v0;
    a1 = 0.0f;
}

// 情况2：正在减速（a × v < 0）→ 方向正确
else if(a0 × v0 < 0)
{
    if(ABS(a0) <= dMax × 1.1f)
    {
        t_trans = 0.0f;  // 跳过过渡
        a1 = a0;         // 保持当前加速度
    }
    else
    {
        // 减速度过大，需要调整
        t_trans = (ABS(a0) - dMax) / jMax;
        a1 = -SIGN(a0) × dMax;  // 调整到dMax
    }
}

// 情况3：正在加速（a × v > 0）→ 需要过渡到0
else
{
    t_trans = ABS(a0) / jMax;
    a1 = 0.0f;  // 过渡到0
}
```

### 8.4 Phase 0公式

```c
// 位置
s(t) = v₀×t + 0.5×a₀×t² - SIGN(a₀)×jMax×t³/6

// 速度
v(t) = v₀ + a₀×t - 0.5×SIGN(a₀)×jMax×t²

// 加速度
a(t) = a₀ - SIGN(a₀)×jMax×t
```

---

## 9. API函数详解

### 9.1 S曲线主规划函数

```c
// scurve_profile.c 第727行
void SCurve_computeProfile(TrapezoidalProfile_t *profile)
```

**功能**：S型曲线轨迹规划主函数

**处理流程**：

```
1. 确定有效减速度（急停/普通）
   ↓
2. 初始化参数
   ↓
3. 判断运动类型（STOP/REVERSE/NORMAL等）
   ↓
4. 根据运动类型计算轨迹
   ↓
5. 保存轨迹参数
```

### 9.2 S曲线位置计算函数

```c
// scurve_profile.c 第1216行
float32_t SCurve_getPosition(TrapezoidalProfile_t *profile, float32_t t)
```

**功能**：根据时间t计算S曲线位置

**Phase判断**：

```c
if(t <= accelTransTime)                    // Phase 0
else if(t <= accelTransTime + reverseDecelTime)  // Phase 1-3
else if(t <= t1)                           // Phase 4
else if(t <= t2)                           // Phase 5
else if(t <= t3)                           // Phase 6
else if(t <= t4)                           // Phase 7
else if(t <= t5)                           // Phase 8
else if(t <= t6)                           // Phase 9
else                                        // Phase 10
```

### 9.3 S曲线速度计算函数

```c
// scurve_profile.c 第1498行
float32_t SCurve_getVelocity(TrapezoidalProfile_t *profile, float32_t t)
```

**功能**：根据时间t计算S曲线速度

### 9.4 S曲线加速度计算函数

```c
// scurve_profile.c 第1739行
float32_t SCurve_getAcceleration(TrapezoidalProfile_t *profile, float32_t t)
```

**功能**：根据时间t计算S曲线加速度

**返回值范围**：
- Phase 0-3: 0 ~ ±dMax
- Phase 4-6: 0 ~ +aMax
- Phase 7: 0
- Phase 8-10: 0 ~ -dMax

### 9.5 S曲线加加速度计算函数

```c
// scurve_profile.c 第1943行
float32_t SCurve_getJerk(TrapezoidalProfile_t *profile, float32_t t)
```

**功能**：根据时间t计算S曲线加加速度

**返回值**：
- Phase 0, 4, 8: +jMax 或 -jMax
- Phase 2, 5, 9: 0（匀加速/匀减速）
- Phase 1, 3, 6, 7, 10: 线性变化

---

## 10. 关键数据结构

### 10.1 S型曲线专用参数

```c
// motion_control.h 第153-176行
typedef struct
{
    // ... 梯形曲线参数 ...
    
    // S型曲线专用时间段（7段式）
    float32_t tj1;      // 加速段-加加速时间 [s]
    float32_t ta;       // 加速段-匀加速时间 [s]
    float32_t tj2;      // 加速段-减加速时间 [s]
    float32_t tv;       // 匀速段时间 [s]
    float32_t tjd1;     // 减速段-加减速时间 [s]
    float32_t td;       // 减速段-匀减速时间 [s]
    float32_t tjd2;     // 减速段-减减速时间 [s]
    float32_t actualJerk; // 实际加加速度 [unit/s³]
    
    // 停止命令专用
    float32_t accelAfterPhase0;  // Phase0后的加速度 [unit/s²]
    float32_t accelTransTime;    // 加速度过渡时间 [s]
    float32_t accelTransEndPos;  // 加速度过渡结束位置 [unit]
    
    // 停止阶段时间参数
    float32_t stopTjd1;  // 停止-加减速时间 [s]
    float32_t stopTd;    // 停止-匀减速时间 [s]
    float32_t stopTjd2;  // 停止-减减速时间 [s]
    
    // 标志
    bool isMicroMotion;  // 微小运动标志
} TrapezoidalProfile_t;
```

### 10.2 运动类型枚举

```c
typedef enum {
    MOTION_TYPE_STOP,            // 停止命令
    MOTION_TYPE_REVERSE,         // 反向运动
    MOTION_TYPE_OVERSHOOT,      // 过冲运动
    MOTION_TYPE_VELOCITY_CHANGE, // 速度变化
    MOTION_TYPE_NORMAL,          // 正常运动
    MOTION_TYPE_MICRO            // 微小运动
} MotionType;
```

---

## 11. 公式速查表

### 11.1 加加速度与Jerk时间

| 公式 | 说明 |
|------|------|
| `jMax = aMax / jerkTime` | 最大加加速度 |
| `jerkTime = aMax / jMax` | 达到aMax的时间 |

### 11.2 Phase 0 过渡

| 公式 | 说明 |
|------|------|
| `t_trans = \|a₀\| / jMax` | 过渡时间 |
| `s_trans = v₀×t_trans + 0.5×a₀×t² - jMax×t³/6` | 过渡位移 |
| `v_after = v₀ + a₀×t_trans - 0.5×jMax×t²` | 过渡后速度 |

### 11.3 加速段时间参数

| 条件 | 时间参数 |
|------|----------|
| `dv ≥ 0.5×aMax²/jMax` | 3段式：tj1=jerkTime, ta=dv/aMax-tj1, tj2=jerkTime |
| `dv < 0.5×aMax²/jMax` | 2段式：tj1=tj2=√(dv/jMax), ta=0 |

### 11.4 减速段时间参数

| 条件 | 时间参数 |
|------|----------|
| `v ≥ 0.5×dMax²/jMax` | 3段式：tjd1=jerkTime, td=v/dMax-tjd1, tjd2=jerkTime |
| `v < 0.5×dMax²/jMax` | 2段式：tjd1=tjd2=√(v/jMax), td=0 |

### 11.5 各Phase速度公式

| Phase | 速度公式 |
|-------|----------|
| Phase 4 | `v = v₀ + 0.5×jMax×t²` |
| Phase 5 | `v = v₁ + aMax×t` |
| Phase 6 | `v = v₂ + aMax×t - 0.5×jMax×t²` |
| Phase 7 | `v = v₃` |
| Phase 8 | `v = v₃ - 0.5×jMax×t²` |
| Phase 9 | `v = v₄ - dMax×t` |
| Phase 10 | `v = v₅ - dMax×t + 0.5×jMax×t²` |

### 11.6 各Phase位置公式

| Phase | 位置公式 |
|-------|----------|
| Phase 4 | `s = v₀×t + jMax×t³/6` |
| Phase 5 | `s = s₁ + v₁×t + aMax×t²/2` |
| Phase 6 | `s = s₂ + v₂×t + aMax×t²/2 - jMax×t³/6` |
| Phase 7 | `s = s₃ + v₃×t` |
| Phase 8 | `s = s₄ + v₄×t - jMax×t³/6` |
| Phase 9 | `s = s₅ + v₅×t - dMax×t²/2` |
| Phase 10 | `s = s₆ + v₆×t - dMax×t²/2 + jMax×t³/6` |

---

## 12. 配置与调试

### 12.1 配置常量

```c
// scurve_profile.h
#define USE_SCURVE_PROFILE        1       // S型曲线启用标志
#define SCURVE_EPSILON_TIME       0.0001f  // 时间容差
#define SCURVE_EPSILON_VEL        0.1f     // 速度容差
#define SCURVE_EPSILON_POS        0.01f    // 位置容差
#define SCURVE_EPSILON_ACCEL      50.0f     // 加速度容差
#define MICRO_MOTION_THRESHOLD    5.0f      // 微小运动距离阈值
#define MICRO_MOTION_MIN_TIME     0.01f     // 微小运动最小时间

// motion_control.c
#define SCURVE_MIN_JERK           1000.0f   // 最小加加速度
#define SCURVE_DEFAULT_JERK       50000.0f  // 默认加加速度
```

### 12.2 调试输出示例

```c
// 运动类型判断
DEBUG_PRINT("[MotionType] STOP (explicit stop command flag set)\n");
DEBUG_PRINT("[MotionType] REVERSE (v0=%.2f, dir=%.0f)\n", v0, direction);
DEBUG_PRINT("[MotionType] OVERSHOOT (stopDist=%.2f > dist=%.2f)\n", s_stop, distance);
DEBUG_PRINT("[MotionType] NORMAL\n");

// 7段曲线计算结果
DEBUG_PRINT("[7-Segment] RESULT: tj1=%.3f, ta=%.3f, tj2=%.3f, tv=%.3f, tjd1=%.3f, td=%.3f, tjd2=%.3f\n",
           tj1, ta, tj2, tv, tjd1, td, tjd2);
DEBUG_PRINT("[7-Segment] Total time=%.3f, v_peak=%.2f\n", profile->totalTime, v_max);
```

### 12.3 S型曲线初始化示例

```c
// 1. 初始化（设置jerkTime启用S型曲线）
TrapezoidalProfile_t profile;
TrapProfile_init(&profile, 500.0f, 2000.0f, 2000.0f);

// 2. 设置S曲线参数（jerkTime = aMax / jMax）
profile->jerkTime = 0.02f;  // 20ms达到最大加速度
                            // jMax = aMax / jerkTime = 2000 / 0.02 = 100000

// 3. 设置目标
TrapProfile_setTarget(&profile, 0.0f, 0.0f, 1000.0f);

// 4. 计算轨迹（自动选择S型曲线）
TrapProfile_compute(&profile);

// 5. 实时获取
float32_t pos = SCurve_getPosition(&profile, t);
float32_t vel = SCurve_getVelocity(&profile, t);
float32_t accel = SCurve_getAcceleration(&profile, t);
```

### 12.4 jerkTime参数选择指南

| 应用场景 | jerkTime建议 | jMax | 特点 |
|----------|-------------|------|------|
| 高精度定位 | 0.02-0.05s | 40000-100000 | 加速度变化缓慢，冲击小 |
| 一般运动 | 0.01-0.02s | 100000-200000 | 平衡型 |
| 快速响应 | 0.005-0.01s | 200000-400000 | 响应快，冲击较大 |

---

## 附录A：梯形与S型对比

| 特性 | 梯形曲线 | S型曲线 |
|------|----------|---------|
| **加速度** | 阶跃变化 | 线性变化 |
| **加加速度** | 突变（冲击力大） | 恒定（冲击可控） |
| **jerkTime** | = 0 | > 0 |
| **速度曲线** | 梯形 | S形 |
| **加速度曲线** | 矩形 | 梯形 |
| **Phase数量** | 3-4段 | 7-10段 |
| **计算复杂度** | 低 | 中等偏高 |
| **机械冲击** | 较大 | 较小 |
| **适用场景** | 一般运动 | 高精度/低振动 |

---

## 附录B：S曲线Phase图示

```
        加速度a                    速度v                    位置s
          ↑                         ↑                         ↑
     aMax →┌────┐            vMax →╱╲                 Smax →╱╲
          │    │               ╱╲╱  ╲╲                    ╱  ╲
      ────┘    └──            ╱      ╲╲                  ╱    ╲
          ↑        ↑        ╱          ╲                ╱      ╲
        tj1       tj2      ╱            ╲              ╱        ╲
          ↓        ↓      ╱              ╲            ╱          ╲
      ━━━━━━━━━━━━        ╱                ╲          ╱            ╲
          ↓        ↓     ╱                  ╲        ╱              ╲
     ┌────┐              ╱                    ╲      ╱                ╲
     │    │ ←匀减速    ╱                      ╲    ╱                  ╲
────┘    └──         ╱                        ╲  ╱                    ╲
     ↑        ↑    ╱                          ╲╱                        ╲
    tjd1      tjd2╱                            ╲________________________╲
          ↓                                                         ↓
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━→ t
      tj1  ta  tj2  tv  tjd1 td tjd2
```

---

## 附录C：修订历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-04-06 | 初始版本 |

---

*文档生成时间：2026-04-06*

*运动控制系统 - S型加减速速度轨迹技术文档*
