# 运动控制系统 - 快速开始指南

## 🚀 5分钟快速上手

### 1. 基本配置 (30秒)

```c
#include "motion_control.h"

// 在main()中初始化
void main(void)
{
    // ... 系统初始化 ...
    
    initMotionControl();  // 一键初始化运动控制
    
    for(;;)
    {
        // 后台更新轨迹
        updateMotionProfile_M1();
        updateMotionProfile_M2();
    }
}
```

### 2. 定时器配置 (1分钟)

在1ms定时器中断中添加：

```c
interrupt void cpuTimer0ISR(void)
{
    // 替代原有的runSpeedControl_M1/M2
    runSpeedControl_M1_New();
    runSpeedControl_M2_New();
    
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
```

### 3. 第一个运动程序 (2分钟)

```c
// 使能轴
motionCmd_enableAxis(1);

// 运动到10圈
motionCmd_moveAbsolute(1, 10.0f);

// 等待完成
while(!MotionAxis_isIdle(&motionAxis1))
{
    updateMotionProfile_M1();
}

// 禁用轴
motionCmd_disableAxis(1);
```

## 📝 常用命令速查表

| 命令 | 函数 | 说明 |
|------|------|------|
| **使能轴** | `motionCmd_enableAxis(id)` | id=1或2 |
| **禁用轴** | `motionCmd_disableAxis(id)` | - |
| **绝对运动** | `motionCmd_moveAbsolute(id, pos)` | 移动到指定位置 |
| **相对运动** | `motionCmd_moveRelative(id, dist)` | 相对当前位置移动 |
| **正常停止** | `motionCmd_stop(id)` | 按减速度停止 |
| **急停** | `motionCmd_emergencyStop(id)` | 最大减速度停止 |
| **手动模式** | `motionCmd_setManualMode(id, enable, vel)` | vel单位rpm |
| **同步使能** | `motionCmd_enableSync(enable)` | 多轴同步 |
| **同步运动** | `motionCmd_syncMove(pos)` | 所有轴同步到位置 |

## ⚙️ 关键参数调整

### 运动参数（根据负载调整）

```c
MotionAxis_setMotionParams(&motionAxis1, 
    50.0f,      // 最大速度 [rev/s] = 3000 rpm
    166.67f,    // 加速度 [rev/s²] = 10000 rpm/s  
    200.0f);    // 减速度 [rev/s²] (通常>加速度)
```

**调整建议：**
- 空载：可以设置较大的速度和加速度
- 重载：降低加速度，避免电机失步
- 精密定位：降低速度，提高定位精度

### PID增益（需要实际调试）

```c
MotionAxis_setPIDGains(&motionAxis1, 
    2.0f,       // Kp: 位置比例增益
    0.1f,       // Ki: 位置积分增益  
    0.01f);     // Kd: 位置微分增益
```

**调试步骤：**
1. 设置 Kp=1, Ki=0, Kd=0
2. 逐步增大Kp直到出现振荡
3. 将Kp减半
4. 如果有稳态误差，加入 Ki=Kp/10
5. 如果超调严重，加入 Kd=Kp/100

### 跟踪误差限值

```c
MotionAxis_setFollowingErrorLimit(&motionAxis1, 
    5.0f,       // 位置误差 [rev] (超过触发ERROR)
    50.0f);     // 速度误差 [rpm]
```

## 🔍 故障排查

### 问题1：位置缓冲区下溢（抖动）

**症状：** 电机运动不平滑，有抖动  
**原因：** `updateMotionProfile()`调用频率太低

**解决：**
```c
// 主循环中确保频繁调用
for(;;)
{
    updateMotionProfile_M1();  // 必须高频调用
    updateMotionProfile_M2();
    
    // 监控缓冲区
    if(motionAxis1.posBuffer.count < 10)
    {
        // 警告：缓冲区快空了
    }
}
```

### 问题2：跟踪误差超限

**症状：** 电机自动停止，`axisState = ERROR`  
**原因：** 
1. PID增益太小，响应慢
2. 速度/加速度设置太大
3. 负载卡死

**解决：**
```c
// 1. 检查误差值
float32_t error = motionAxis1.followingMonitor.followingError;

// 2. 调整PID或运动参数
if(error > 2.0f)
{
    // 增大Kp或降低速度
}

// 3. 复位错误
FollowingError_reset(&motionAxis1.followingMonitor);
MotionAxis_enable(&motionAxis1);
```

### 问题3：运动不到位

**症状：** 电机停止但未到目标位置

**检查：**
```c
// 1. 检查轨迹状态
if(motionAxis1.profile.state == PROFILE_DONE)
{
    // 轨迹已完成
}

// 2. 检查位置误差
float32_t error = motionAxis1.cmdPosition - motionAxis1.actPosition;

// 3. 检查PID输出
float32_t output = PID_run(&motionAxis1.posPID, ...);
```

## 📊 性能优化

### CPU负载分配

```
控制中断 (1ms, 高优先级)
├─ updateControl()        ~200us
├─ updateFeedback()       ~50us  
└─ PID计算                ~100us
   总计: ~350us (35% CPU@1ms)

后台任务 (非实时, 低优先级)  
└─ updateProfile()        ~1-5ms
   (不影响控制实时性)
```

### 缓冲区监控

```c
typedef struct {
    uint16_t count;          // 当前元素数量
    uint32_t overflowCount;  // 溢出次数（不应该发生）
    uint32_t underflowCount; // 下溢次数（说明轨迹跟不上）
} ProfileBuffer_t;

// 监控代码
if(motionAxis1.posBuffer.underflowCount > 0)
{
    // 错误：轨迹生成跟不上控制需求
    // 增加updateProfile()调用频率
}
```

## 🎯 典型应用场景

### 场景1：简单点到点定位

```c
motionCmd_enableAxis(1);
motionCmd_moveAbsolute(1, 10.0f);  // 到10圈
// 等待到位...
motionCmd_disableAxis(1);
```

### 场景2：连续多点运动

```c
motionCmd_enableAxis(1);

for(int i = 0; i < 10; i++)
{
    motionCmd_moveAbsolute(1, positions[i]);
    while(!MotionAxis_isIdle(&motionAxis1))
    {
        updateMotionProfile_M1();
    }
}

motionCmd_disableAxis(1);
```

### 场景3：实时跟踪（运动中更新）

```c
motionCmd_enableAxis(1);

while(running)
{
    // 获取新目标（可能来自传感器、通信等）
    float32_t newTarget = getTargetFromSensor();
    
    // 实时更新（自动重新规划）
    motionCmd_moveAbsolute(1, newTarget);
    
    updateMotionProfile_M1();
}
```

### 场景4：丝杠碰撞回零

```c
// 进入手动模式，低速接近原点
motionCmd_setManualMode(1, true, -100.0f);  // 负速度

while(1)
{
    // 监控力矩
    float32_t torque = ipcDataToCPU1->IqFdbkM1;
    
    if(fabs(torque) > 2.0f)  // 检测到碰撞
    {
        motionCmd_emergencyStop(1);
        
        // 设置当前位置为零
        motionAxis1.cmdPosition = 0.0f;
        motionAxis1.actPosition = 0.0f;
        
        // 退出手动模式
        motionCmd_setManualMode(1, false, 0.0f);
        break;
    }
}

// 反向退出一点距离
motionCmd_moveRelative(1, 0.5f);  // 退出0.5圈
```

### 场景5：双轴同步

```c
// 使能同步
motionCmd_enableSync(true);

// 同步运动
motionCmd_syncMove(15.0f);  // 两轴同步到15圈

// 等待到位
while(!MotionAxis_isIdle(&motionAxis1) || 
      !MotionAxis_isIdle(&motionAxis2))
{
    updateMotionProfile_M1();
    updateMotionProfile_M2();
}

// 禁用同步
motionCmd_enableSync(false);
```

## 📚 更多资源

- **详细文档：** 参考 `MOTION_CONTROL_README.md`
- **API参考：** 参考 `motion_control.h`
- **示例代码：** 参考 `motion_integration.c`

## 🐛 调试工具

### 实时监控变量

```c
// 在CCS Expression窗口添加：
motionAxis1.axisState           // 轴状态
motionAxis1.cmdPosition         // 命令位置
motionAxis1.actPosition         // 实际位置
motionAxis1.profile.state       // 轨迹状态
motionAxis1.posBuffer.count     // 缓冲区数量
motionAxis1.followingMonitor.followingError  // 跟踪误差
```

### 波形观察（DATALOG）

建议记录以下信号：
1. `cmdPosition` vs `actPosition` - 位置跟踪
2. `cmdVelocity` vs `actVelocity` - 速度跟踪
3. `followingError` - 跟踪误差
4. `PID output` - 控制器输出

## ⚠️ 注意事项

1. **首次使用前必须调试PID参数**，默认参数可能不适合您的系统
2. **确保`updateProfile()`在主循环中高频调用**，避免缓冲区下溢
3. **设置合理的跟踪误差限值**，过小会频繁触发保护
4. **手动模式下禁用自动保护**，请谨慎操作
5. **多轴同步需要确保电机性能一致**，否则会产生同步误差

---

**快速开始到此结束！** 🎉

更多高级功能请参考完整文档 `MOTION_CONTROL_README.md`

