# S 型加减速曲线完整理论推导

## 一、基本模型与约束条件

### 1.1 七段 S 曲线结构

```
加速度 a
    ↑
aMax |████████████
     │  P1  P2  P3  │ P4 │  P5  P6  P7  │
     │              │    │              │
     │              │    │              │
     └──────────────────────────────────────→ 时间 t
     0  tj1  tj1+ta  tj1+ta+tj2
```

**七段定义**：

| 阶段 | 名称 | 特点 |
|------|------|------|
| Phase 0 | 加速度过渡 | 将初始加速度变为 0 |
| Phase 1 | 加加速 | jerk 为正 |
| Phase 2 | 匀加速 | 可选 |
| Phase 3 | 减加速 | jerk 为负 |
| Phase 4 | 匀速 | 可选 |
| Phase 5 | 加减速 | jerk 为负 |
| Phase 6 | 匀减速 | 可选 |
| Phase 7 | 减减速 | jerk 为正 |

### 1.2 关键参数

| 参数 | 定义 |
|------|------|
| v₀ | 起始速度 |
| v | 当前/峰值速度 |
| v_t | 目标速度 |
| dv | 速度变化量 = v - v₀ |
| aMax | 最大加速度 |
| dMax | 最大减速度 |
| jerkTime = tjd | Jerk 恒定时间（加速度从 0 到 aMax 的时间）|
| jMax | 最大加加速度 = aMax / jerkTime |

### 1.3 加减速段分类判断

```
dv > aMax × jerkTime  →  梯形波（有匀加速段）
dv ≤ aMax × jerkTime  →  三角波（无匀加速段）
```

---

## 二、梯形波加速段公式推导

### 2.1 物理模型

梯形波加速有三个阶段：
- **Phase 1**：a = jMax·t，加速度从 0 增加到 aMax
- **Phase 2**：a = aMax，保持匀加速
- **Phase 3**：a = aMax - jMax·τ，加速度从 aMax 减小到 0

### 2.2 时间参数

```
t₁ = tj                              （Phase 1 时间）
t₂ = tj + ta                         （Phase 2 结束时间）
t₃ = 2·tj + ta                       （Phase 3 结束时间 = 加速段时间）

ta = dv/aMax - tj                     （Phase 2 时间）
```

### 2.3 各相位移公式

#### Phase 1（加加速）：τ ∈ [0, t₁]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = jMax·τ |
| 速度 | v(τ) = v₀ + 0.5·jMax·τ² |
| 位置 | s(τ) = v₀·τ + (jMax·τ³)/6 |

**Phase 1 结束状态**：
```
v₁ = v₀ + 0.5·jMax·tj²
s₁ = v₀·tj + (jMax·tj³)/6
```

#### Phase 2（匀加速）：τ ∈ [0, ta]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = 0 |
| 速度 | v(τ) = v₁ + aMax·τ |
| 位置 | s(τ) = s₁ + v₁·τ + 0.5·aMax·τ² |

**Phase 2 结束状态**：
```
v₂ = v₁ + aMax·ta
s₂ = s₁ + v₁·ta + 0.5·aMax·ta²
```

#### Phase 3（减加速）：τ ∈ [0, t₁]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = aMax - jMax·τ |
| 速度 | v(τ) = v₂ + aMax·τ - 0.5·jMax·τ² |
| 位置 | s(τ) = s₂ + v₂·τ + 0.5·aMax·τ² - (jMax·τ³)/6 |

**Phase 3 结束状态**：
```
v = v₂ + 0.5·jMax·tj²  （应等于 v = v₀ + dv）
s₃ = v₂·tj + 0.5·aMax·tj² - (jMax·tj³)/6
```

### 2.4 加速段总位移

```
s_a = s₁ + (s₂ - s₁) + s₃
    = v₀·tj + jMax·tj³/6 + v₁·ta + 0.5·aMax·ta² + v₂·tj + 0.5·aMax·tj² - jMax·tj³/6
    = v₀·tj + v₁·ta + v₂·tj + 0.5·aMax·ta² + 0.5·aMax·tj²
```

---

## 三、三角波加速段公式推导

### 3.1 物理模型

三角波只有两个阶段：
- **Phase 1**：a = jMax·t，加速度从 0 增加到 a_peak
- **Phase 3**：a = a_peak - jMax·τ，加速度从 a_peak 减小到 0

其中 a_peak = jMax·tjd，tjd = √(dv/jMax)

### 3.2 时间参数

```
tjd = √(dv / jMax)    （Phase 1 = Phase 3 时间）
总时间 = 2 × tjd
```

### 3.3 各相位移公式

#### Phase 1

```
v₁ = v₀ + 0.5·jMax·tjd²
s₁ = v₀·tjd + jMax·tjd³/6
```

#### Phase 3

```
s₃ = v₁·tjd - jMax·tjd³/6
```

### 3.4 加速段总位移

```
s_a = s₁ + s₃
    = v₀·tjd + jMax·tjd³/6 + v₁·tjd - jMax·tjd³/6
    = (v₀ + v₁)·tjd
    = (2·v₀ + 0.5·jMax·tjd²)·tjd
    = 2·v₀·tjd + jMax·tjd³
```

---

## 四、梯形波减速段公式推导

### 4.1 物理模型

梯形波减速有三个阶段：
- **Phase 1**：a = -jMax·t，加速度从 0 减小到 -dMax
- **Phase 2**：a = -dMax，保持匀减速
- **Phase 3**：a = -dMax + jMax·τ，加速度从 -dMax 增加到 0

### 4.2 关键约束

减速段必须满足：结束时速度为 0

由 Phase 3 结束条件推导：
```
v₂ = dMax·tjd/2

而 v₂ = v - dMax·tjd/2 - dMax·td

→ v = dMax·(tjd + td)
```

### 4.3 时间参数

```
td = v/dMax - tjd    （Phase 2 时间）
```

### 4.4 各相位移公式

#### Phase 1：τ ∈ [0, tjd]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = -jMax·τ |
| 速度 | v(τ) = v - 0.5·jMax·τ² |
| 位置 | s(τ) = v·τ - jMax·τ³/6 |

**Phase 1 结束状态**：
```
v₁ = v - 0.5·jMax·tjd²
s₁ = v·tjd - jMax·tjd³/6
```

#### Phase 2：τ ∈ [0, td]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = 0 |
| 速度 | v(τ) = v₁ - dMax·τ |
| 位置 | s(τ) = s₁ + v₁·τ - 0.5·dMax·τ² |

**Phase 2 结束状态**：
```
v₂ = v₁ - dMax·td
s₂ = s₁ + v₁·td - 0.5·dMax·td²
```

#### Phase 3：τ ∈ [0, tjd]

| 物理量 | 公式 |
|--------|------|
| 加加速度 | a(τ) = -dMax + jMax·τ |
| 速度 | v(τ) = v₂ - dMax·τ + 0.5·jMax·τ² |
| 位置 | s(τ) = s₂ + v₂·τ - 0.5·dMax·τ² + jMax·τ³/6 |

**Phase 3 结束状态**：
```
v = v₂ - 0.5·jMax·tjd² = 0  ✓
s₃ = v₂·tjd - dMax·tjd²/3
```

### 4.5 减速段总位移（正确公式）

```
s_d = s₁ + (s₂ - s₁) + s₃
    = v·tjd - jMax·tjd³/6 + v₁·td - 0.5·dMax·td² + v₂·tjd - dMax·tjd²/3

代入 v₁ = v - 0.5·dMax·tjd，v₂ = dMax·tjd/2：

s_d = dMax·(tjd² + 1.5·tjd·td + 0.5·td²)
```

**简化形式**：
```c
s_d = dMax * (tjd*tjd + 1.5f * tjd * td + 0.5f * td * td);
```

---

## 五、三角波减速段公式推导

### 5.1 物理模型

三角波只有两个阶段（无匀减速段）：
- **Phase 1**：a = -jMax·t，加速度从 0 减小到 -jMax·tjd
- **Phase 3**：a = -jMax·tjd + jMax·τ，加速度从 -jMax·tjd 增加到 0

### 5.2 时间参数

```
tjd = √(v / jMax)
```

### 5.3 各相位移公式

#### Phase 1

```
v₁ = v - 0.5·jMax·tjd²
s₁ = v·tjd - jMax·tjd³/6
```

#### Phase 3

```
s₃ = v₁·tjd - jMax·tjd³/3
```

### 5.4 减速段总位移

```
s_d = s₁ + s₃
    = v·tjd - jMax·tjd³/6 + v·tjd - 0.5·jMax·tjd² - jMax·tjd³/3
    = 2·v·tjd - jMax·tjd³
```

---

## 六、牛顿迭代法求峰值速度

### 6.1 问题定义

已知：总距离 distance、起始速度 v₀、目标速度 v_t
求：峰值速度 v_peak

### 6.2 目标函数

```
f(v) = s_a(v) + s_d(v) - distance = 0
```

### 6.3 迭代公式

```
v_new = v - f(v) / f'(v)

其中 f'(v) = ds_a/dv + ds_d/dv
```

### 6.4 各轮廓导数

| 轮廓类型 | 导数 ds/dv |
|----------|------------|
| 梯形波加速 | v_peak / aMax |
| 三角波加速 | v₀/(jMax·tjd) + 1.5·tjd |
| 梯形波减速 | tjd + v_peak / dMax |
| 三角波减速 | 1.5·tjd |

---

## 七、完整公式汇总表

### 7.1 加速段汇总

| 参数/公式 | 梯形波 | 三角波 |
|-----------|--------|--------|
| **触发条件** | dv > aMax × jerkTime | dv ≤ aMax × jerkTime |
| **时间参数** | | |
| tj / tjd | jerkTime | √(dv / jMax) |
| ta / tv | dv/aMax - jerkTime | 0 |
| **Phase 1 位移** | s₁ = v₀·tj + jMax·tj³/6 | s₁ = v₀·tjd + jMax·tjd³/6 |
| **Phase 1 末速度** | v₁ = v₀ + 0.5·jMax·tj² | v₁ = v₀ + 0.5·jMax·tjd² |
| **Phase 2 位移** | s₂ = v₁·ta + 0.5·aMax·ta² | - |
| **Phase 2 末速度** | v₂ = v₁ + aMax·ta | - |
| **Phase 3 位移** | s₃ = v₂·tj + 0.5·aMax·tj² - jMax·tj³/6 | s₃ = v₁·tjd - jMax·tjd³/6 |
| **s_a 总位移** | v₀·tj + v₁·ta + v₂·tj + 0.5·aMax·(ta² + tj²) | 2·v₀·tjd + jMax·tjd³ |
| **导数 ds_a/dv** | v_peak / aMax | v₀/(jMax·tjd) + 1.5·tjd |

### 7.2 减速段汇总

| 参数/公式 | 梯形波 | 三角波 |
|-----------|--------|--------|
| **触发条件** | v > dMax × jerkTime | v ≤ dMax × jerkTime |
| **时间参数** | | |
| tjd | jerkTime | √(v / jMax) |
| td | v/dMax - jerkTime | 0 |
| **Phase 1 位移** | s₁ = v·tjd - jMax·tjd³/6 | s₁ = v·tjd - jMax·tjd³/6 |
| **Phase 1 末速度** | v₁ = v - 0.5·jMax·tjd² | v₁ = v - 0.5·jMax·tjd² |
| **Phase 2 位移** | s₂ = v₁·td - 0.5·dMax·td² | - |
| **Phase 2 末速度** | v₂ = v₁ - dMax·td | - |
| **Phase 3 位移** | s₃ = v₂·tjd - dMax·tjd²/3 | s₃ = v₁·tjd - jMax·tjd³/3 |
| **s_d 总位移** | dMax·(tjd² + 1.5·tjd·td + 0.5·td²) | 2·v·tjd - jMax·tjd³ |
| **导数 ds_d/dv** | tjd + v/dMax | 1.5·tjd |

### 7.3 约束条件汇总

| 类型 | 约束条件 |
|------|----------|
| 梯形波加速 | dv = aMax·(tj + ta)，ta = dv/aMax - tj |
| 三角波加速 | dv = jMax·tjd² |
| 梯形波减速 | v = dMax·(tjd + td)，td = v/dMax - tjd |
| 三角波减速 | v = jMax·tjd² |

### 7.4 各阶段完整公式（7段 S 曲线）

#### Phase 1（加加速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | jMax |
| 加速度 a(t) | jMax·t |
| 速度 v(t) | v₀ + 0.5·jMax·t² |
| 位置 s(t) | v₀·t + (jMax·t³)/6 |

#### Phase 2（匀加速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | 0 |
| 加速度 a(t) | aMax |
| 速度 v(t) | v₁ + aMax·t |
| 位置 s(t) | s₁ + v₁·t + 0.5·aMax·t² |

#### Phase 3（减加速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | -jMax |
| 加速度 a(t) | aMax - jMax·t |
| 速度 v(t) | v₂ + aMax·t - 0.5·jMax·t² |
| 位置 s(t) | s₂ + v₂·t + 0.5·aMax·t² - (jMax·t³)/6 |

#### Phase 4（匀速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | 0 |
| 加速度 a(t) | 0 |
| 速度 v(t) | v_peak |
| 位置 s(t) | s_peak + v_peak·t |

#### Phase 5（加减速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | -jMax |
| 加速度 a(t) | -jMax·t |
| 速度 v(t) | v_peak - 0.5·jMax·t² |
| 位置 s(t) | v_peak·t - jMax·t³/6 |

#### Phase 6（匀减速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | 0 |
| 加速度 a(t) | -dMax |
| 速度 v(t) | v₁ - dMax·t |
| 位置 s(t) | s₁ + v₁·t - 0.5·dMax·t² |

#### Phase 7（减减速）

| 物理量 | 公式 |
|--------|------|
| 加加速度 j(t) | jMax |
| 加速度 a(t) | -dMax + jMax·t |
| 速度 v(t) | v₂ - dMax·t + 0.5·jMax·t² |
| 位置 s(t) | s₂ + v₂·t - 0.5·dMax·t² + jMax·t³/6 |

---

## 八、代码实现要点

### 8.1 梯形波减速段正确实现

```c
// 时间参数
float32_t tjd = jerkTime;
float32_t td = v_peak / dMax - jerkTime;

// 正确公式
float32_t s_d = dMax * (SQUARE(tjd) + 1.5f * tjd * td + 0.5f * td * td);

// 导数
float32_t ds_d_dv = tjd + v_peak / dMax;
```

### 8.2 牛顿迭代完整流程

```c
float32_t v_peak = v_max * 0.8f;  // 初始猜测

for (int iter = 0; iter < 50; iter++)
{
    // 1. 计算加速段
    if (dv_a > aMax * jerkTime) {
        // 梯形波加速
        float32_t tj = jerkTime;
        float32_t ta = dv_a / aMax - jerkTime;
        float32_t s1 = v0 * tj + jMax * tj*j*tj / 6;
        float32_t v1 = v0 + 0.5f * jMax * tj * tj;
        float32_t s2 = v1 * ta + 0.5f * aMax * ta * ta;
        float32_t v2 = v1 + aMax * ta;
        float32_t s3 = v2 * tj + 0.5f * aMax * tj * tj - jMax * tj*j*tj / 6;
        float32_t s_a = s1 + s2 + s3;
        float32_t ds_a_dv = v_peak / aMax;
    } else {
        // 三角波加速
        float32_t tjd = sqrtf(dv_a / jMax);
        float32_t s_a = v0 * 2.0f * tjd + jMax * tjd*tjd*tjd;
        float32_t ds_a_dv = v0 / (jMax * tjd) + 1.5f * tjd;
    }

    // 2. 计算减速段
    if (v_peak > dMax * jerkTime) {
        // 梯形波减速
        float32_t tjd = jerkTime;
        float32_t td = v_peak / dMax - jerkTime;
        float32_t s_d = dMax * (tjd*tjd + 1.5f*tjd*td + 0.5f*td*td);
        float32_t ds_d_dv = tjd + v_peak / dMax;
    } else {
        // 三角波减速
        float32_t tjd = sqrtf(v_peak / jMax);
        float32_t s_d = v_peak * 2.0f * tjd - jMax * tjd*tjd*tjd;
        float32_t ds_d_dv = 1.5f * tjd;
    }

    // 3. 牛顿迭代
    float32_t error = s_a + s_d - distance;
    float32_t derivative = ds_a_dv + ds_d_dv;
    v_peak = v_peak - error / derivative;
}
```

---

## 九、验证示例

**参数**：distance=100, v₀=0, aMax=dMax=2000, jerkTime=0.05

**计算**：jMax = 2000/0.05 = 40000

### 梯形波加速

```
dv = 400
aMax × jerkTime = 2000 × 0.05 = 100
dv > 100 → 梯形波

tj = 0.05
ta = 400/2000 - 0.05 = 0.15

s1 = 0 + 40000×0.000125/6 = 0.833
v1 = 0 + 0.5×40000×0.0025 = 50
s2 = 50×0.15 + 0.5×2000×0.0225 = 7.5 + 22.5 = 30
v2 = 50 + 2000×0.15 = 350
s3 = 350×0.05 + 2.5 - 0.833 = 19.167
s_a = 0.833 + 30 + 19.167 = 50
```

### 梯形波减速

```
v = 400
dMax × jerkTime = 2000 × 0.05 = 100
v > 100 → 梯形波

tjd = 0.05
td = 400/2000 - 0.05 = 0.15

s_d = 2000 × (0.0025 + 1.5×0.05×0.15 + 0.5×0.0225)
    = 2000 × (0.0025 + 0.01125 + 0.01125)
    = 2000 × 0.025 = 50
```

### 验证

```
s_a + s_d = 50 + 50 = 100 ✓
```

**终点位置 = 目标位置 100 ✓**

---

## 十、常见错误分析

### 10.1 减速段 s_d 公式错误

**错误形式**（未正确应用约束条件）：
```c
// 错误：直接用 v 计算，未考虑约束 v = dMax·(tjd + td)
s_d = v * (2*tjd + td) - dMax * tjd² - 0.5*dMax*td² - dMax*td*tjd;
```

**正确形式**（应用约束条件化简后）：
```c
// 正确：应用 v = dMax·(tjd + td) 约束条件
s_d = dMax * (tjd² + 1.5f * tjd * td + 0.5f * td * td);
```

### 10.2 关键区别

| 项目 | 错误公式 | 正确公式 |
|------|----------|----------|
| tjd² 项系数 | -dMax | +dMax |
| 推导方法 | 直接代入 | 应用约束条件化简 |

---

---

## 十一、代码实现

### 11.1 数据结构定义

```c
// 轨迹参数结构体
typedef struct {
    // 运动参数
    float32_t maxVelocity;      // 最大速度
    float32_t maxAccel;        // 最大加速度
    float32_t maxDecel;        // 最大减速度
    float32_t emergencyDecel;  // 急停减速度
    float32_t jerkTime;        // Jerk时间

    // 状态
    float32_t currentPos;       // 当前位置
    float32_t currentVel;       // 当前速度
    float32_t currentAccel;    // 当前加速度

    // 时间参数
    float32_t accelTransTime;  // Phase0过渡时间
    float32_t accelTime;       // 加速段时间
    float32_t constTime;      // 匀速段时间
    float32_t decelTime;      // 减速段时间
    float32_t totalTime;       // 总时间

    // S曲线7段时间
    float32_t tj1, ta, tj2;   // 加速段
    float32_t tv;              // 匀速段
    float32_t tjd1, td, tjd2; // 减速段

    // 位置标记
    float32_t reverseDecelEndPos; // 反向减速结束位置
    float32_t accelEndPos;        // 加速结束位置
    float32_t decelStartPos;      // 减速开始位置

    // 标志
    bool isEmergencyStop;         // 急停标志
    bool isStopMove;            // 停止标志
    bool isVelocityChange;        // 速度变化模式
    bool isComputed;             // 已计算
} TrapezoidalProfile_t;
```

### 11.2 核心计算函数

#### 11.2.1 计算停止到零的轨迹

```c
// 计算从当前速度和加速度减速到零的轨迹
void calculateStopToZeroProfile(float32_t v0, float32_t a0,
                               float32_t dMax, float32_t jerkTime,
                               float32_t *t_trans, float32_t *t_jerk1,
                               float32_t *t_const, float32_t *t_jerk2,
                               float32_t *s_total, float32_t *v_after,
                               float32_t *a_after)
{
    // Phase 0: 加速度过渡
    *t_trans = (a0 > SCURVE_EPSILON_ACCEL) ? a0 / dMax * jerkTime : 0.0f;

    float32_t v_after_trans = v0 - 0.5f * a0 * *t_trans;
    *v_after = v_after_trans;
    *a_after = 0.0f;

    // Phase 1-3: 减速到0
    float32_t v_abs = ABS(*v_after);
    float32_t jMax = dMax / jerkTime;

    if (v_abs > dMax * jerkTime) {
        // 梯形波：有余量进入匀减速
        *t_jerk1 = jerkTime;
        *t_const = v_abs / dMax - jerkTime;
        *t_jerk2 = jerkTime;
    } else {
        // 三角波：无法进入匀减速
        float32_t tjd = sqrtf(v_abs / jMax);
        *t_jerk1 = tjd;
        *t_const = 0.0f;
        *t_jerk2 = tjd;
    }

    // 计算总停止距离
    float32_t tjd = *t_jerk1;
    float32_t td = *t_const;
    *s_total = dMax * (SQUARE(tjd) + 1.5f * tjd * td + 0.5f * SQUARE(td));
}
```

#### 11.2.2 计算7段S曲线

```c
// 计算7段S曲线参数
void calculate7SegmentSCurve(float32_t v_start, float32_t v_max,
                          float32_t distance, float32_t aMax,
                          float32_t dMax, float32_t jerkTime,
                          TrapezoidalProfile_t *profile)
{
    float32_t jMax = aMax / jerkTime;
    float32_t dv = v_max - v_start;

    // 判断加速段轮廓（梯形/三角）
    if (dv > aMax * jerkTime) {
        // 梯形波加速
        profile->tj1 = jerkTime;
        profile->ta = dv / aMax - jerkTime;
        profile->tj2 = jerkTime;
    } else {
        // 三角波加速
        float32_t tjd = sqrtf(dv / jMax);
        profile->tj1 = tjd;
        profile->ta = 0.0f;
        profile->tj2 = tjd;
    }

    // 判断减速段轮廓
    if (v_max > dMax * jerkTime) {
        // 梯形波减速
        profile->tjd1 = jerkTime;
        profile->td = v_max / dMax - jerkTime;
        profile->tjd2 = jerkTime;
    } else {
        // 三角波减速
        float32_t tjd = sqrtf(v_max / jMax);
        profile->tjd1 = tjd;
        profile->td = 0.0f;
        profile->tjd2 = tjd;
    }

    // 计算匀速段时间
    float32_t s_accel = calculateAccelDistance(v_start, v_max, aMax, jerkTime);
    float32_t s_decel = calculateDecelDistance(v_max, 0.0f, dMax, jerkTime);
    profile->tv = (distance - s_accel - s_decel) / v_max;
}
```

### 11.3 位置/速度计算

```c
// 获取指定时刻的位置
float32_t SCurve_getPosition(TrapezoidalProfile_t *profile, float32_t t)
{
    float32_t pos = profile->currentPos;
    float32_t v0 = profile->currentVel;
    float32_t direction = SIGN(profile->targetPos - pos);
    float32_t t_elapsed = t;

    // Phase 0: 加速度过渡
    if (profile->accelTransTime > EPSILON) {
        if (t_elapsed < profile->accelTransTime) {
            // 在Phase 0内
            float32_t jerk = -profile->currentAccel / profile->accelTransTime;
            pos += v0 * t_elapsed +
                   0.5f * profile->currentAccel * SQUARE(t_elapsed) +
                   jerk * CUBE(t_elapsed) / 6.0f;
            return pos;
        }
        // Phase 0 结束
        t_elapsed -= profile->accelTransTime;
        pos = profile->accelTransEndPos;
        v0 = profile->velAfterPhase0;
    }

    // Phase 1-3: 反向减速（如需要）
    if (profile->reverseDecelTime > EPSILON) {
        if (t_elapsed < profile->reverseDecelTime) {
            // 计算减速段位置
            return pos + calculateDecelPosition(profile, t_elapsed);
        }
        t_elapsed -= profile->reverseDecelTime;
        pos = profile->reverseDecelEndPos;
        v0 = 0.0f;
    }

    // Phase 4-10: 标准7段S曲线
    return pos + calculate7SegmentPosition(profile, t_elapsed);
}

// 计算7段S曲线位置
float32_t calculate7SegmentPosition(TrapezoidalProfile_t *profile,
                                    float32_t t)
{
    float32_t v_start = 0.0f;
    float32_t s = 0.0f;
    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;

    if (t <= t1) {
        // Phase 4: 加加速
        s = v_start * t + profile->jMax * CUBE(t) / 6.0f;
    } else if (t <= t2) {
        // Phase 5: 匀加速
        float32_t v1 = v_start + 0.5f * profile->jMax * SQUARE(t1);
        float32_t s1 = v_start * t1 + profile->jMax * CUBE(t1) / 6.0f;
        float32_t dt = t - t1;
        s = s1 + v1 * dt + 0.5f * profile->maxAccel * SQUARE(dt);
    } else if (t <= t3) {
        // Phase 6: 减加速
        // ... 继续计算各段
    }
    // ... 其他阶段

    return s;
}
```

### 11.4 牛顿迭代法求峰值速度

```c
// 使用牛顿迭代法求峰值速度
float32_t calculatePeakVelocity(float32_t v_start, float32_t distance,
                              float32_t aMax, float32_t dMax,
                              float32_t jerkTime)
{
    float32_t v_peak = v_start + distance * 0.5f;  // 初始猜测
    float32_t jMax = aMax / jerkTime;

    for (int iter = 0; iter < 50; iter++) {
        // 计算加速距离
        float32_t s_accel = calculateAccelDistance(v_start, v_peak, aMax, jerkTime);

        // 计算减速距离
        float32_t s_decel = calculateDecelDistance(v_peak, 0.0f, dMax, jerkTime);

        // 误差
        float32_t error = s_accel + s_decel - distance;

        // 收敛判断
        if (ABS(error) < 0.01f) break;

        // 牛顿迭代
        float32_t ds_accel_dv = v_peak / aMax;
        float32_t ds_decel_dv = jerkTime + v_peak / dMax;
        float32_t derivative = ds_accel_dv + ds_decel_dv;

        v_peak = v_peak - error / derivative;
    }

    return v_peak;
}
```

---

## 十二、运动类型判断流程

```
                    ┌───────────────────────┐
                    │    开始判断            │
                    └───────────┬───────────┘
                                │
                    ┌───────────▼───────────┐
                    │ isStopMove ||          │
                    │ isEmergencyStop?       │
                    └───────────┬───────────┘
                                │ 是
                    ┌───────────▼───────────┐
                    │    MOTION_TYPE_STOP   │
                    └───────────────────────┘

                                │ 否
                    ┌───────────▼───────────┐
                    │ distance < 0.1 &&     │
                    │ |v0| < EPSILON?       │
                    └───────────┬───────────┘
                                │ 是
                    ┌───────────▼───────────┐
                    │    MOTION_TYPE_STOP   │
                    └───────────────────────┘

                                │ 否
                    ┌───────────▼───────────┐
                    │ direction与v0方向相反?  │
                    └───────────┬───────────┘
                                │ 是
                    ┌───────────▼───────────┐
                    │  MOTION_TYPE_REVERSE  │
                    └───────────────────────┘

                                │ 否
                    ┌───────────▼───────────┐
                    │ v0 > maxVel &&       │
                    │ s_stop <= dist?      │
                    └───────────┬───────────┘
                                │ 是
                    ┌───────────▼───────────┐
                    │MOTION_TYPE_VELOCITY_  │
                    │     CHANGE           │
                    └───────────────────────┘

                                │ 否
                    ┌───────────▼───────────┐
                    │ s_stop > dist * 1.15? │
                    └───────────┬───────────┘
                                │ 是
                    ┌───────────▼───────────┐
                    │  MOTION_TYPE_OVER     │
                    │       SHOOT          │
                    └───────────────────────┘

                                │ 否
                    ┌───────────▼───────────┐
                    │   MOTION_TYPE_NORMAL  │
                    └───────────────────────┘
```

---

## 十三、使用示例

> **重要说明**：S型加减速曲线不是单独使用的，而是通过 `MotionAxis` 运动轴抽象层来调用的。系统采用**双缓冲+定时生成**架构：
> - `MotionAxis_updateProfile()`：定时生成轨迹点，填充缓冲区（可低于位置环频率）
> - `MotionAxis_updateControl()`：高频读取缓冲区，执行位置环控制

### 13.1 系统架构

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           双缓冲架构                                        │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  ┌──────────────────┐         ┌──────────────────┐                       │
│  │   轨迹规划层       │         │   位置环控制层    │                       │
│  │  (profileUpdateTs)│         │  (posLoopTs)     │                       │
│  │                   │         │                   │                       │
│  │  MotionAxis_      │  填充   │ MotionAxis_      │  读取                │
│  │  updateProfile()  │ ─────► │ updateControl()   │                       │
│  │                   │         │                   │                       │
│  │  - 计算S曲线      │  FIFO   │  - 从buffer读取   │                       │
│  │  - 写入buffer     │ Buffer  │  - PID控制       │                       │
│  │  - dt间隔生成     │         │  - 分发到电机     │                       │
│  └──────────────────┘         └──────────────────┘                       │
│                                                                             │
│  生成频率: 1ms / 2ms / 5ms (可配置)                                        │
│  控制频率: 100μs / 200μs / 1ms (根据硬件)                                 │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 13.2 API 调用层次

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           API 层次                                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  Level 1: 运动命令 API (用户调用)                                          │
│  ┌─────────────────────────────────────────────────────────────┐           │
│  │ MotionAxis_moveAbsolute()    // 绝对运动                    │           │
│  │ MotionAxis_moveRelative()    // 相对运动                    │           │
│  │ MotionAxis_stop()            // 正常停止                    │           │
│  │ MotionAxis_emergencyStop()   // 急停                       │           │
│  └─────────────────────────────────────────────────────────────┘           │
│                              │                                              │
│                              ▼                                              │
│  Level 2: 轨迹参数设置                                                      │
│  ┌─────────────────────────────────────────────────────────────┐           │
│  │ TrapProfile_setTarget()      // 设置目标位置               │           │
│  │ TrapProfile_stop()           // 生成停止轨迹               │           │
│  │ SCurve_computeProfile()       // 计算S曲线参数             │           │
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

### 13.3 典型使用流程

#### 13.3.1 创建和初始化

```c
// 1. 创建运动轴
MotionAxis_t* axis = MotionAxis_create(1, AXIS_TYPE_VIRTUAL);

// 2. 配置运动参数（梯形/S曲线）
MotionAxis_setMotionParams(axis,
    500.0f,    // maxVel: 最大速度
    2000.0f,   // maxAccel: 最大加速度
    2000.0f);  // maxDecel: 最大减速度

// 3. 设置S曲线jerk时间（0=梯形，>0=S曲线）
MotionAxis_setJerkTime(axis, 0.1f);  // 100ms jerk时间

// 4. 设置急停减速度
axis->profile.emergencyDecel = 4000.0f;  // 急停时用4000，正常用2000
```

#### 13.3.2 发送运动命令

```c
// 发送绝对运动命令
void send_move_command(MotionAxis_t* axis, float32_t targetPos)
{
    // 检查是否允许新命令
    if (axis->axisState == AXIS_STATE_MOVING ||
        axis->axisState == AXIS_STATE_STOPPING)
    {
        // 当前有运动，需要停止后再发新命令
        // 系统会自动处理平滑过渡
    }

    // 发送运动命令
    MotionAxis_moveAbsolute(axis, targetPos);
}

// 发送急停命令
void send_emergency_stop(MotionAxis_t* axis)
{
    MotionAxis_emergencyStop(axis);
}
```

#### 13.3.3 主循环集成

```c
// 位置环任务（高频，如100μs或1ms）
void position_loop_task(void)
{
    // 遍历所有轴
    for (int i = 0; i < numAxes; i++)
    {
        MotionAxis_updateControl(axes[i]);  // 读取buffer，执行PID
    }
}

// 轨迹更新任务（低频，如1ms或2ms）
void profile_update_task(void)
{
    // 遍历所有轴
    for (int i = 0; i < numAxes; i++)
    {
        MotionAxis_updateProfile(axes[i]);  // 生成轨迹点，填充buffer
    }
}

// 主函数
int main(void)
{
    // 初始化
    MotionAxis_t* axis = MotionAxis_create(1, AXIS_TYPE_VIRTUAL);
    MotionAxis_setMotionParams(axis, 500.0f, 2000.0f, 2000.0f);
    MotionAxis_setJerkTime(axis, 0.1f);
    axis->profile.emergencyDecel = 4000.0f;

    // 发送初始命令
    MotionAxis_moveAbsolute(axis, 0.0f);

    // 主循环
    while (1)
    {
        // 高频位置环
        position_loop_task();

        // 低频轨迹更新
        if (should_update_profile())
        {
            profile_update_task();
        }
    }
}
```

### 13.4 定时器配置示例

```c
// 配置采样时间（用于轨迹计算）
void configure_timing(MotionAxis_t* axis)
{
    // 轨迹更新周期（生成buffer的间隔）
    axis->profileUpdateTs = 0.001f;  // 1ms生成一次轨迹

    // 位置环周期（PID控制间隔）
    axis->posLoopTs = 0.0001f;  // 100μs控制一次

    // 分频比：轨迹更新频率 vs 位置环频率
    axis->profileUpdateDivider = 10;  // 每10次位置环更新，1次轨迹更新
    axis->profileUpdateCounter = 0;
}

// 在位置环任务中调用
void position_loop_isr(void)
{
    for (int i = 0; i < numAxes; i++)
    {
        MotionAxis_updateControl(axes[i]);  // 始终执行

        // 分频控制轨迹更新
        if (++axes[i]->profileUpdateCounter >= axes[i]->profileUpdateDivider)
        {
            axes[i]->profileUpdateCounter = 0;
            MotionAxis_updateProfile(axes[i]);  // 定时执行
        }
    }
}
```

### 13.5 轨迹切换示例

```c
// 场景：运动中需要改变目标位置
void trajectory_handover_example(MotionAxis_t* axis)
{
    // 初始命令：移动到500
    MotionAxis_moveAbsolute(axis, 500.0f);

    // 等待一段时间后，改变目标为1000
    delay_ms(200);  // 等待200ms

    // 发送新命令
    // 系统会自动：
    // 1. 计算当前状态（位置、速度、加速度）
    // 2. 生成平滑过渡轨迹（Phase0 + 新轨迹）
    // 3. 填充buffer
    MotionAxis_moveAbsolute(axis, 1000.0f);
}

// 场景：运动中需要急停
void emergency_stop_example(MotionAxis_t* axis)
{
    // 启动运动
    MotionAxis_moveAbsolute(axis, 1000.0f);

    // 运行中检测到急停条件
    if (emergency_condition_detected())
    {
        // MotionAxis_emergencyStop 会：
        // 1. 计算当前状态
        // 2. 设置 isEmergencyStop 标志
        // 3. 设置 emergencyDecel
        // 4. 调用 SCurve_computeProfile 生成急停轨迹
        // 5. 调用 MotionAxis_updateProfile 填充buffer
        MotionAxis_emergencyStop(axis);
    }
}
```

### 13.6 缓冲区状态监控

```c
// 监控缓冲区状态
void monitor_buffer_status(MotionAxis_t* axis)
{
    uint16_t count = ProfileBuffer_getCount(&axis->posBuffer);
    uint16_t freeSpace = ProfileBuffer_getFreeSpace(&axis->posBuffer);

    printf("Buffer: count=%d, free=%d\n", count, freeSpace);

    // 缓冲区状态判断
    if (count < 10)
    {
        // 缓冲区接近空，可能跟不上位置环
        // 检查是否需要优化轨迹更新频率
    }
    else if (count > MOTION_PROFILE_BUFFER_SIZE - 10)
    {
        // 缓冲区接近满，可能生成太慢
        // 检查计算负载
    }
}

// 检查轴是否完全停止
void check_stop_status(MotionAxis_t* axis)
{
    if (MotionAxis_isStopped(axis))
    {
        printf("Axis stopped at position: %.2f\n", axis->cmdPosition);
    }
}
```

### 13.7 完整应用示例（伪代码）

```c
// ============================================================
// 完整运动控制应用示例
// ============================================================

// 全局变量
#define MAX_AXES 3
MotionAxis_t* g_axes[MAX_AXES];
bool g_emergencyFlag = false;

// 初始化
void system_init(void)
{
    // 创建轴
    for (int i = 0; i < MAX_AXES; i++)
    {
        g_axes[i] = MotionAxis_create(i + 1, AXIS_TYPE_VIRTUAL);

        // 配置参数
        MotionAxis_setMotionParams(g_axes[i], 500.0f, 2000.0f, 2000.0f);
        MotionAxis_setJerkTime(g_axes[i], 0.1f);
        g_axes[i]->profile.emergencyDecel = 4000.0f;

        // 配置时间
        MotionAxis_setProfileUpdateTs(g_axes[i], 0.002f);  // 2ms更新轨迹
    }
}

// 位置环中断（100μs）
void position_isr(void)
{
    for (int i = 0; i < MAX_AXES; i++)
    {
        // 更新控制（读取buffer，执行PID）
        MotionAxis_updateControl(g_axes[i]);
    }
}

// 轨迹更新（2ms，由软件定时器触发）
void profile_timer_callback(void)
{
    for (int i = 0; i < MAX_AXES; i++)
    {
        // 检查急停
        if (g_emergencyFlag)
        {
            MotionAxis_emergencyStop(g_axes[i]);
            g_emergencyFlag = false;
        }

        // 更新轨迹（填充buffer）
        MotionAxis_updateProfile(g_axes[i]);
    }
}

// 应用任务：执行预定义运动序列
void motion_sequence_task(void)
{
    // 命令1：移动到300
    MotionAxis_moveAbsolute(g_axes[0], 300.0f);

    // 等待到达目标
    while (!MotionAxis_isStopped(g_axes[0]))
    {
        os_sleep(10);
    }

    // 命令2：移动到-200
    MotionAxis_moveAbsolute(g_axes[0], -200.0f);

    // 等待到达目标
    while (!MotionAxis_isStopped(g_axes[0]))
    {
        os_sleep(10);
    }

    // 命令3：相对移动+100
    MotionAxis_moveRelative(g_axes[0], 100.0f);
}

// 急停按钮处理
void emergency_button_handler(void)
{
    g_emergencyFlag = true;
}

// 主函数
int main(void)
{
    system_init();

    // 启动急停监控
    set_button_callback(BUTTON_EMERGENCY, emergency_button_handler);

    // 启动定时器
    start_position_isr(100);      // 100μs周期
    start_profile_timer(2000);    // 2ms周期

    // 执行运动序列
    motion_sequence_task();

    while (1)
    {
        // 监控状态
        for (int i = 0; i < MAX_AXES; i++)
        {
            monitor_buffer_status(g_axes[i]);
        }
        os_sleep(100);
    }
}
```

### 13.8 调试技巧

```c
// 启用调试日志
#define MOTION_DEBUG 1

// 关键调试点
void debug_profile(MotionAxis_t* axis)
{
    if (MOTION_DEBUG)
    {
        printf("[Profile] target=%.2f, current=%.2f, vel=%.2f, accel=%.2f\n",
               axis->profile.targetPos,
               axis->profile.currentPos,
               axis->profile.currentVel,
               axis->profile.currentAccel);

        printf("[Buffer] count=%d, readIdx=%d, writeIdx=%d\n",
               axis->posBuffer.count,
               axis->posBuffer.readIdx,
               axis->posBuffer.writeIdx);

        printf("[State] axisState=%d, isActive=%d, isStopped=%d\n",
               axis->axisState,
               axis->profile.isActive,
               axis->isStopped);
    }
}
```

---

## 十四、调试要点

### 14.1 关键检查点

1. **位置连续性**：相邻时刻位置差应平滑
2. **速度连续性**：相位切换点速度应相等
3. **加速度连续性**：相邻时刻加速度应平滑
4. **终点验证**：最终位置 = 目标位置

### 14.2 常见错误

| 错误 | 表现 | 原因 |
|------|------|------|
| 减速距离错误 | 最终位置≠目标 | s_d 公式错误 |
| 速度跳变 | 相位边界速度不连续 | 边界条件判断错误 |
| 加速度跳变 | 相位边界加速度不连续 | Phase 0 处理不当 |
| 位置回退 | 急停后位置后退 | STOP 轨迹处理缺失 |

### 14.3 调试日志

```
[Input]        currentPos=0.00, v0=0.00, targetPos=500.00
[Decel]        effectiveDecel=2000.00
[MotionType]   NORMAL
[7-Segment]    tj1=0.100, ta=0.350, tv=0.298, tjd1=0.100, td=0.400, tjd2=0.100
[NORMAL]       v_peak=500.00, totalTime=1.447
```

---

## 十五、性能优化

### 15.1 定点化

```c
// 使用Q格式定点数替代浮点数
typedef int32_t fixed_t;
#define Q_SHIFT 16
#define Q_SCALE (1 << Q_SHIFT)

// 定点乘法
#define Q_MUL(a, b) (((a) * (b)) >> Q_SHIFT)

// 定点开方
fixed_t Q_SQRT(fixed_t x) {
    // 牛顿迭代法
    fixed_t result = x;
    for (int i = 0; i < 8; i++) {
        if (result == 0) return 0;
        result = (result + x / result) >> 1;
    }
    return result;
}
```

### 15.2 查表法

```c
// 预计算 jerkTime 对应的 jMax
const float32_t jMax_table[] = {
    20000.0f,  // jerkTime = 0.1
    40000.0f,  // jerkTime = 0.05
    100000.0f  // jerkTime = 0.02
};

// 查表获取 jMax
float32_t get_jMax(float32_t jerkTime) {
    if (jerkTime <= 0.0f) return 0.0f;
    return 2000.0f / jerkTime;  // aMax = 2000
}
```

---

## 十六、参考资料

1. **Ge, D., et al.** "Planning smooth and time-optimal trapezoi-
   dal velocity profiles for robotic manipulators."
   *Advanced Robotics*, 2001.

2. **Liu, S.** "An efficient acceleration/deceleration planning
   method for CNC machining with smooth velocity profiles."
   *International Journal of Machine Tools & Manufacture*, 1995.

3. **Pi, Y., et al.** "A novel S-curve acceleration/deceleration
   control algorithm for CNC machining."
   *Chinese Journal of Mechanical Engineering*, 2011.

---

*文档版本：v2.0*
*更新时间：2026-06-02*
*代码版本：scurve_profile.c (Redesigned Multi-Phase Architecture)*
