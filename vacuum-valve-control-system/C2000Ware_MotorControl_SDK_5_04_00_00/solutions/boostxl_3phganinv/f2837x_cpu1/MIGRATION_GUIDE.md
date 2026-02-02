# 迁移指南 - 从单电机架构到多电机架构

## 📋 概述

本文档指导您从**单电机绑定架构**迁移到**多电机绑定架构**。

### 核心变化

| 方面 | 旧架构 | 新架构 |
|------|--------|--------|
| 电机绑定 | 1个轴 → 1个电机 | 1个轴 → 0-4个电机 |
| 同步方式 | AxisGroup（独立轨迹） | 共享轨迹 |
| PID配置 | 轴级别 | 电机级别 |
| 反馈更新 | 轴级别 | 电机级别 |

## 🔧 API变更列表

### 1. 初始化函数

#### ✅ 保持不变
```c
MotionAxis_init(&axis, axisID, axisType);  // 无变化
```

#### ⚠️ 已废弃
```c
// 旧API（已移除）
void MotionAxis_bindMotor(MotionAxis_t *axis, uint16_t motorID, float32_t gearRatio);
```

#### ✨ 新增
```c
// 新API：可多次调用以绑定多个电机
void MotionAxis_addMotor(MotionAxis_t *axis, uint16_t motorID, float32_t gearRatio);
```

### 2. PID配置函数

#### ⚠️ 签名变更
```c
// 旧API
void MotionAxis_setPIDGains(MotionAxis_t *axis, 
                            float32_t Kp, float32_t Ki, float32_t Kd);

// 新API：增加motorIndex参数
void MotionAxis_setPIDGains(MotionAxis_t *axis, 
                            uint16_t motorIndex,  // ← 新增
                            float32_t Kp, float32_t Ki, float32_t Kd);
```

### 3. 跟踪误差配置

#### ⚠️ 签名变更
```c
// 旧API
void MotionAxis_setFollowingErrorLimit(MotionAxis_t *axis, 
                                       float32_t posError, float32_t velError);

// 新API：增加motorIndex参数
void MotionAxis_setFollowingErrorLimit(MotionAxis_t *axis, 
                                       uint16_t motorIndex,  // ← 新增
                                       float32_t posError, float32_t velError);
```

### 4. 反馈更新函数

#### ⚠️ 签名变更
```c
// 旧API
void MotionAxis_updateFeedback(MotionAxis_t *axis, 
                               float32_t actPos, float32_t actVel);

// 新API：增加motorIndex参数
void MotionAxis_updateFeedback(MotionAxis_t *axis, 
                               uint16_t motorIndex,  // ← 新增
                               float32_t actPos, float32_t actVel);
```

### 5. 新增查询函数

```c
// 获取轴绑定的电机数量
uint16_t MotionAxis_getMotorCount(MotionAxis_t *axis);
```

## 📝 代码迁移步骤

### 步骤1：修改初始化代码

**旧代码：**
```c
MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
MotionAxis_bindMotor(&axis1, 1, 1.0f);
```

**新代码：**
```c
MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
MotionAxis_addMotor(&axis1, 1, 1.0f);  // bindMotor → addMotor
```

### 步骤2：修改PID配置

**旧代码：**
```c
MotionAxis_setPIDGains(&axis1, 2.0f, 0.1f, 0.01f);
```

**新代码：**
```c
MotionAxis_setPIDGains(&axis1, 
                       0,         // ← motorIndex (第一个电机)
                       2.0f, 0.1f, 0.01f);
```

### 步骤3：修改跟踪误差配置

**旧代码：**
```c
MotionAxis_setFollowingErrorLimit(&axis1, 5.0f, 50.0f);
```

**新代码：**
```c
MotionAxis_setFollowingErrorLimit(&axis1, 
                                  0,         // ← motorIndex
                                  5.0f, 50.0f);
```

### 步骤4：修改反馈更新

**旧代码：**
```c
void runSpeedControl_M1(void)
{
    float32_t actPos = ipcDataToCPU1->positionFdbkM1;
    float32_t actVel = ipcDataToCPU1->speedFdbkM1 / 60.0f;
    
    MotionAxis_updateFeedback(&axis1, actPos, actVel);
    // ...
}
```

**新代码：**
```c
void runSpeedControl_M1_V2(void)
{
    float32_t actPos = ipcDataToCPU1->positionFdbkM1;
    float32_t actVel = ipcDataToCPU1->speedFdbkM1 / 60.0f;
    
    MotionAxis_updateFeedback(&axis1, 
                              0,         // ← motorIndex
                              actPos, actVel);
    // ...
}
```

## 🎯 完整示例对比

### 旧架构代码

```c
//
// 旧架构：单电机绑定
//
void initMotorControl(void)
{
    // 初始化轴1
    MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
    MotionAxis_bindMotor(&axis1, 1, 1.0f);
    MotionAxis_setMotionParams(&axis1, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&axis1, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&axis1, 5.0f, 50.0f);
    
    // 初始化轴2
    MotionAxis_init(&axis2, 2, AXIS_TYPE_REAL);
    MotionAxis_bindMotor(&axis2, 2, 1.0f);
    MotionAxis_setMotionParams(&axis2, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&axis2, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&axis2, 5.0f, 50.0f);
}

void runSpeedControl_M1(void)
{
    float32_t actPos = ipcDataToCPU1->positionFdbkM1;
    float32_t actVel = ipcDataToCPU1->speedFdbkM1 / 60.0f;
    
    MotionAxis_updateFeedback(&axis1, actPos, actVel);
    MotionAxis_updateControl(&axis1);
    
    // 发送速度命令...
}
```

### 新架构代码

```c
//
// 新架构：多电机绑定
//
void initMotorControl_V2(void)
{
    // 初始化轴1
    MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
    MotionAxis_addMotor(&axis1, 1, 1.0f);  // ← 改为addMotor
    MotionAxis_setMotionParams(&axis1, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&axis1, 0, 2.0f, 0.1f, 0.01f);  // ← 新增motorIndex=0
    MotionAxis_setFollowingErrorLimit(&axis1, 0, 5.0f, 50.0f);  // ← 新增motorIndex=0
    
    // 初始化轴2
    MotionAxis_init(&axis2, 2, AXIS_TYPE_REAL);
    MotionAxis_addMotor(&axis2, 2, 1.0f);  // ← 改为addMotor
    MotionAxis_setMotionParams(&axis2, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&axis2, 0, 2.0f, 0.1f, 0.01f);  // ← 新增motorIndex=0
    MotionAxis_setFollowingErrorLimit(&axis2, 0, 5.0f, 50.0f);  // ← 新增motorIndex=0
}

void runSpeedControl_M1_V2(void)
{
    float32_t actPos = ipcDataToCPU1->positionFdbkM1;
    float32_t actVel = ipcDataToCPU1->speedFdbkM1 / 60.0f;
    
    MotionAxis_updateFeedback(&axis1, 0, actPos, actVel);  // ← 新增motorIndex=0
    MotionAxis_updateControl(&axis1);
    
    // 发送速度命令...
}
```

## 🚀 高级用法：龙门轴

新架构的核心优势是支持龙门轴：

```c
void initGantryAxis(void)
{
    // 初始化龙门轴
    MotionAxis_init(&gantryAxis, 10, AXIS_TYPE_GANTRY);
    
    // 绑定两个电机到同一个轴
    MotionAxis_addMotor(&gantryAxis, 1, 1.0f);  // 左侧电机
    MotionAxis_addMotor(&gantryAxis, 2, 1.0f);  // 右侧电机
    
    // 设置运动参数（两个电机共享）
    MotionAxis_setMotionParams(&gantryAxis, 50.0f, 166.67f, 166.67f);
    
    // 分别设置两个电机的PID
    MotionAxis_setPIDGains(&gantryAxis, 0, 2.0f, 0.1f, 0.01f);    // 电机1
    MotionAxis_setPIDGains(&gantryAxis, 1, 2.2f, 0.12f, 0.012f);  // 电机2
    
    // 分别设置跟踪误差限值
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 0, 3.0f, 30.0f);
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 1, 3.0f, 30.0f);
}

void runSpeedControl_Gantry(void)
{
    uint16_t i;
    
    // 更新所有电机的反馈
    for(i = 0; i < gantryAxis.numMotors; i++)
    {
        if(gantryAxis.motors[i].motorID == 1)
        {
            float32_t actPos = ipcDataToCPU1->positionFdbkM1;
            float32_t actVel = ipcDataToCPU1->speedFdbkM1 / 60.0f;
            MotionAxis_updateFeedback(&gantryAxis, i, actPos, actVel);
        }
        else if(gantryAxis.motors[i].motorID == 2)
        {
            float32_t actPos = ipcDataToCPU1->positionFdbkM2;
            float32_t actVel = ipcDataToCPU1->speedFdbkM2 / 60.0f;
            MotionAxis_updateFeedback(&gantryAxis, i, actPos, actVel);
        }
    }
    
    // 更新控制（所有电机读取相同的位置命令）
    MotionAxis_updateControl(&gantryAxis);
    
    // 发送速度命令到各个电机...
}
```

## ⚠️ 常见错误

### 错误1：忘记添加motorIndex参数

```c
// ❌ 错误：使用旧API
MotionAxis_setPIDGains(&axis1, 2.0f, 0.1f, 0.01f);

// ✅ 正确：使用新API
MotionAxis_setPIDGains(&axis1, 0, 2.0f, 0.1f, 0.01f);
//                              ↑
//                        motorIndex
```

### 错误2：motorIndex超出范围

```c
MotionAxis_addMotor(&axis1, 1, 1.0f);  // 只绑定了1个电机

// ❌ 错误：motorIndex=1超出范围（只有索引0可用）
MotionAxis_setPIDGains(&axis1, 1, 2.0f, 0.1f, 0.01f);

// ✅ 正确：使用索引0
MotionAxis_setPIDGains(&axis1, 0, 2.0f, 0.1f, 0.01f);
```

### 错误3：混用bindMotor和addMotor

```c
// ❌ 错误：bindMotor已移除
MotionAxis_bindMotor(&axis1, 1, 1.0f);  // 编译错误！

// ✅ 正确：使用addMotor
MotionAxis_addMotor(&axis1, 1, 1.0f);
```

## 📊 兼容性说明

### 完全兼容的API

这些API无需修改：
- ✅ `MotionAxis_init()`
- ✅ `MotionAxis_setMotionParams()`
- ✅ `MotionAxis_enable()`
- ✅ `MotionAxis_disable()`
- ✅ `MotionAxis_moveAbsolute()`
- ✅ `MotionAxis_moveRelative()`
- ✅ `MotionAxis_stop()`
- ✅ `MotionAxis_emergencyStop()`
- ✅ `MotionAxis_updateProfile()`
- ✅ `MotionAxis_updateControl()`
- ✅ `MotionAxis_isIdle()`
- ✅ `MotionAxis_isError()`

### 需要修改的API

这些API需要增加`motorIndex`参数：
- ⚠️ `MotionAxis_setPIDGains()` - 增加motorIndex
- ⚠️ `MotionAxis_setFollowingErrorLimit()` - 增加motorIndex
- ⚠️ `MotionAxis_updateFeedback()` - 增加motorIndex

### 已移除的API

- ❌ `MotionAxis_bindMotor()` - 改用`MotionAxis_addMotor()`

## 🔍 验证清单

迁移完成后，请检查：

- [ ] 所有`MotionAxis_bindMotor()`都替换为`MotionAxis_addMotor()`
- [ ] 所有`MotionAxis_setPIDGains()`都增加了`motorIndex`参数
- [ ] 所有`MotionAxis_setFollowingErrorLimit()`都增加了`motorIndex`参数
- [ ] 所有`MotionAxis_updateFeedback()`都增加了`motorIndex`参数
- [ ] 编译无错误
- [ ] 功能测试通过
- [ ] 同步性能满足要求（如适用）

## 📚 参考文档

- **完整架构说明：** `MULTI_MOTOR_ARCHITECTURE.md`
- **使用示例：** `motion_integration_v2.c`
- **API参考：** `motion_control.h`

## 🆘 问题排查

### 编译错误

**错误信息：** `too few arguments to function 'MotionAxis_setPIDGains'`

**解决方案：** 增加motorIndex参数
```c
// 改为：
MotionAxis_setPIDGains(&axis1, 0, Kp, Ki, Kd);
```

### 运行时错误

**问题：** 反馈不更新

**可能原因：** motorIndex错误

**解决方案：** 
```c
// 检查电机数量
uint16_t numMotors = MotionAxis_getMotorCount(&axis1);

// 确保motorIndex < numMotors
for(uint16_t i = 0; i < numMotors; i++)
{
    MotionAxis_updateFeedback(&axis1, i, actPos, actVel);
}
```

---

**迁移完成！** 🎉

如有问题，请参考`MULTI_MOTOR_ARCHITECTURE.md`或检查`motion_integration_v2.c`中的完整示例。

