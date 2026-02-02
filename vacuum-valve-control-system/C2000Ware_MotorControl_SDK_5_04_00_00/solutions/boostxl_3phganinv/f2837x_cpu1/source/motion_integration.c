//#############################################################################
//
// FILE:    motion_integration.c
// TITLE:   Motion Control System Integration with Dual-Axis Servo Drive
//
// 将高级运动控制系统集成到双轴伺服驱动系统
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

#include "motion_control.h"
#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include "dual_axis_servo_drive_ipc.h"

//*****************************************************************************
// 全局运动轴对象
//*****************************************************************************
MotionAxis_t motionAxis1;  // 电机1的运动轴
MotionAxis_t motionAxis2;  // 电机2的运动轴

// 可选：多轴同步组
AxisGroup_t axisGroup1;

// 外部IPC数据指针
extern IPC_DataFromCPU1_t *ipcDataFromCPU1;
extern IPC_DataToCPU1_t   *ipcDataToCPU1;

//*****************************************************************************
// 运动控制系统初始化
//*****************************************************************************

//
// initMotionControl - 初始化运动控制系统
//
void initMotionControl(void)
{
    //
    // 初始化电机1的运动轴
    //
    MotionAxis_init(&motionAxis1, 1, AXIS_TYPE_REAL);
    MotionAxis_bindMotor(&motionAxis1, 1, 1.0f);  // 绑定到电机1，齿轮比1:1
    
    // 设置运动参数（根据实际机械系统调整）
    // maxVel: 3000 rpm = 50 rev/s
    // maxAccel: 10000 rpm/s = 166.67 rev/s^2
    MotionAxis_setMotionParams(&motionAxis1, 
                               50.0f,      // 最大速度 [rev/s]
                               166.67f,    // 最大加速度 [rev/s^2]
                               166.67f);   // 最大减速度 [rev/s^2]
    
    // 设置位置环PID增益（需要根据实际系统调试）
    MotionAxis_setPIDGains(&motionAxis1, 
                           2.0f,   // Kp - 位置比例增益
                           0.1f,   // Ki - 位置积分增益
                           0.01f); // Kd - 位置微分增益
    
    // 设置跟踪误差限值
    MotionAxis_setFollowingErrorLimit(&motionAxis1, 
                                      5.0f,    // 位置误差限值 [rev]
                                      50.0f);  // 速度误差限值 [rpm]
    
    // 设置采样时间
    motionAxis1.profileUpdateTs = 0.001f;  // 1ms轨迹更新周期
    motionAxis1.posLoopTs = 0.001f;        // 1ms位置环周期
    
    //
    // 初始化电机2的运动轴（配置相同）
    //
    MotionAxis_init(&motionAxis2, 2, AXIS_TYPE_REAL);
    MotionAxis_bindMotor(&motionAxis2, 2, 1.0f);
    MotionAxis_setMotionParams(&motionAxis2, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&motionAxis2, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&motionAxis2, 5.0f, 50.0f);
    motionAxis2.profileUpdateTs = 0.001f;
    motionAxis2.posLoopTs = 0.001f;
    
    //
    // 可选：初始化多轴同步组
    //
    AxisGroup_init(&axisGroup1, 1);
    AxisGroup_addAxis(&axisGroup1, &motionAxis1, 1.0f);   // 电机1，同步比例1:1
    AxisGroup_addAxis(&axisGroup1, &motionAxis2, 1.0f);   // 电机2，同步比例1:1
    AxisGroup_enableSync(&axisGroup1, false);              // 默认不使能同步
}

//*****************************************************************************
// 重构后的速度/位置控制函数（使用运动控制系统）
//*****************************************************************************

//
// runSpeedControl_M1_New - 电机1的新速度控制函数（集成运动控制）
//
// 此函数应在CPU1的定时器中断中调用，周期建议1ms
//
void runSpeedControl_M1_New(void)
{
    float32_t velRef;
    
    // 1. 更新实际位置和速度反馈（从CPU2通过IPC获取）
    float32_t actPos_M1 = ipcDataToCPU1->positionFdbkM1;  // [机械角度 pu]
    float32_t actVel_M1 = ipcDataToCPU1->speedFdbkM1;     // [rpm]
    
    // 转换单位：pu -> rev, rpm -> rev/s
    actPos_M1 = actPos_M1;              // 已经是pu单位（0-1对应0-360度）
    actVel_M1 = actVel_M1 / 60.0f;      // rpm -> rev/s
    
    MotionAxis_updateFeedback(&motionAxis1, actPos_M1, actVel_M1);
    
    // 2. 更新位置环控制（从缓冲区读取命令位置，计算速度命令）
    MotionAxis_updateControl(&motionAxis1);
    
    // 3. 获取速度命令并发送给CPU2
    if(motionAxis1.posPID.enable && !motionAxis1.posPID.manualMode)
    {
        // 自动模式：使用PID计算的速度命令
        velRef = PID_run(&motionAxis1.posPID, 
                         motionAxis1.cmdPosition, 
                         motionAxis1.actPosition);
        
        // 转换单位：rev/s -> rpm
        velRef = velRef * 60.0f;
    }
    else if(motionAxis1.posPID.manualMode)
    {
        // 手动模式：使用手动设定的速度
        velRef = motionAxis1.posPID.manualOutput;
    }
    else
    {
        // 禁用模式
        velRef = 0.0f;
    }
    
    // 限幅
    if(velRef > 3000.0f) velRef = 3000.0f;
    if(velRef < -3000.0f) velRef = -3000.0f;
    
    // 通过IPC发送速度命令到CPU2
    ipcDataFromCPU1->speedRefM1 = velRef;
    
    // 4. 检查错误状态
    if(MotionAxis_isError(&motionAxis1))
    {
        // 跟踪误差超限，停止电机
        ipcDataFromCPU1->speedRefM1 = 0.0f;
        ipcDataFromCPU1->enableM1 = 0;
        
        // 可以在这里触发告警
        // triggerAlarm(ALARM_FOLLOWING_ERROR_M1);
    }
}

//
// runSpeedControl_M2_New - 电机2的新速度控制函数
//
void runSpeedControl_M2_New(void)
{
    float32_t velRef;
    
    // 1. 更新反馈
    float32_t actPos_M2 = ipcDataToCPU1->positionFdbkM2;
    float32_t actVel_M2 = ipcDataToCPU1->speedFdbkM2 / 60.0f;
    
    MotionAxis_updateFeedback(&motionAxis2, actPos_M2, actVel_M2);
    
    // 2. 更新控制
    MotionAxis_updateControl(&motionAxis2);
    
    // 3. 计算速度命令
    if(motionAxis2.posPID.enable && !motionAxis2.posPID.manualMode)
    {
        velRef = PID_run(&motionAxis2.posPID, 
                         motionAxis2.cmdPosition, 
                         motionAxis2.actPosition);
        velRef = velRef * 60.0f;
    }
    else if(motionAxis2.posPID.manualMode)
    {
        velRef = motionAxis2.posPID.manualOutput;
    }
    else
    {
        velRef = 0.0f;
    }
    
    // 限幅
    if(velRef > 3000.0f) velRef = 3000.0f;
    if(velRef < -3000.0f) velRef = -3000.0f;
    
    ipcDataFromCPU1->speedRefM2 = velRef;
    
    // 4. 检查错误
    if(MotionAxis_isError(&motionAxis2))
    {
        ipcDataFromCPU1->speedRefM2 = 0.0f;
        ipcDataFromCPU1->enableM2 = 0;
    }
}

//
// updateMotionProfile_M1 - 更新电机1的轨迹规划（后台任务）
//
// 此函数应在后台循环中调用，或在较低优先级的任务中调用
// 用于预先生成位置序列并填充到缓冲区
//
void updateMotionProfile_M1(void)
{
    MotionAxis_updateProfile(&motionAxis1);
    
    // 监视缓冲区状态
    uint16_t bufferCount = ProfileBuffer_getCount(&motionAxis1.posBuffer);
    
    // 如果缓冲区太少，说明轨迹生成跟不上，需要优化
    if(bufferCount < 10 && motionAxis1.axisState == AXIS_STATE_MOVING)
    {
        // 触发警告：缓冲区快空了
        // triggerWarning(WARNING_BUFFER_LOW_M1);
    }
}

//
// updateMotionProfile_M2 - 更新电机2的轨迹规划
//
void updateMotionProfile_M2(void)
{
    MotionAxis_updateProfile(&motionAxis2);
    
    uint16_t bufferCount = ProfileBuffer_getCount(&motionAxis2.posBuffer);
    if(bufferCount < 10 && motionAxis2.axisState == AXIS_STATE_MOVING)
    {
        // 触发警告
    }
}

//*****************************************************************************
// 用户API函数
//*****************************************************************************

//
// motionCmd_enableAxis - 使能轴
//
void motionCmd_enableAxis(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_enable(&motionAxis1);
        ipcDataFromCPU1->enableM1 = 1;
    }
    else if(axisID == 2)
    {
        MotionAxis_enable(&motionAxis2);
        ipcDataFromCPU1->enableM2 = 1;
    }
}

//
// motionCmd_disableAxis - 禁用轴
//
void motionCmd_disableAxis(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_disable(&motionAxis1);
        ipcDataFromCPU1->enableM1 = 0;
    }
    else if(axisID == 2)
    {
        MotionAxis_disable(&motionAxis2);
        ipcDataFromCPU1->enableM2 = 0;
    }
}

//
// motionCmd_moveAbsolute - 绝对位置运动
//
void motionCmd_moveAbsolute(uint16_t axisID, float32_t targetPos)
{
    if(axisID == 1)
    {
        MotionAxis_moveAbsolute(&motionAxis1, targetPos);
    }
    else if(axisID == 2)
    {
        MotionAxis_moveAbsolute(&motionAxis2, targetPos);
    }
}

//
// motionCmd_moveRelative - 相对位置运动
//
void motionCmd_moveRelative(uint16_t axisID, float32_t distance)
{
    if(axisID == 1)
    {
        MotionAxis_moveRelative(&motionAxis1, distance);
    }
    else if(axisID == 2)
    {
        MotionAxis_moveRelative(&motionAxis2, distance);
    }
}

//
// motionCmd_stop - 停止运动
//
void motionCmd_stop(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_stop(&motionAxis1);
    }
    else if(axisID == 2)
    {
        MotionAxis_stop(&motionAxis2);
    }
}

//
// motionCmd_emergencyStop - 急停
//
void motionCmd_emergencyStop(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_emergencyStop(&motionAxis1);
    }
    else if(axisID == 2)
    {
        MotionAxis_emergencyStop(&motionAxis2);
    }
}

//
// motionCmd_setManualMode - 设置手动模式
//
void motionCmd_setManualMode(uint16_t axisID, bool enable, float32_t manualVel)
{
    if(axisID == 1)
    {
        PID_setManual(&motionAxis1.posPID, enable, manualVel / 60.0f);  // rpm -> rev/s
    }
    else if(axisID == 2)
    {
        PID_setManual(&motionAxis2.posPID, enable, manualVel / 60.0f);
    }
}

//
// motionCmd_enableSync - 使能多轴同步
//
void motionCmd_enableSync(bool enable)
{
    AxisGroup_enableSync(&axisGroup1, enable);
}

//
// motionCmd_syncMove - 同步运动
//
void motionCmd_syncMove(float32_t targetPos)
{
    AxisGroup_moveAbsolute(&axisGroup1, targetPos);
}

//*****************************************************************************
// 使用示例
//*****************************************************************************

//
// motionControlExample - 运动控制使用示例
//
void motionControlExample(void)
{
    // 1. 系统初始化（在main函数中调用一次）
    initMotionControl();
    
    // 2. 使能轴
    motionCmd_enableAxis(1);
    motionCmd_enableAxis(2);
    
    // 3. 设置运动参数（可选，已在init中设置默认值）
    MotionAxis_setMotionParams(&motionAxis1, 
                               30.0f,      // 降低最大速度到30 rev/s
                               100.0f,     // 降低加速度
                               150.0f);    // 更大的减速度（快速停止）
    
    // 4. 绝对位置运动
    motionCmd_moveAbsolute(1, 10.0f);   // 电机1运动到位置10圈
    motionCmd_moveAbsolute(2, 5.0f);    // 电机2运动到位置5圈
    
    // 5. 等待运动完成（在主循环中检查）
    while(!MotionAxis_isIdle(&motionAxis1) || !MotionAxis_isIdle(&motionAxis2))
    {
        // 后台更新轨迹
        updateMotionProfile_M1();
        updateMotionProfile_M2();
        
        // 控制循环在定时器中断中运行
        // runSpeedControl_M1_New() - 在1ms定时器中断中调用
        // runSpeedControl_M2_New() - 在1ms定时器中断中调用
    }
    
    // 6. 运动中更新目标（实时响应新命令）
    motionCmd_moveAbsolute(1, 20.0f);   // 电机1改变目标到20圈
    // 系统会自动根据当前位置和速度重新规划轨迹
    
    // 7. 相对运动
    motionCmd_moveRelative(1, 5.0f);    // 电机1相对当前位置移动5圈
    
    // 8. 停止运动
    motionCmd_stop(1);                  // 正常停止（按设定减速度）
    
    // 9. 急停
    motionCmd_emergencyStop(2);         // 急停（最大减速度）
    
    // 10. 手动模式
    motionCmd_setManualMode(1, true, 500.0f);  // 电机1进入手动模式，速度500rpm
    // ...运行一段时间...
    motionCmd_setManualMode(1, false, 0.0f);   // 退出手动模式
    
    // 11. 多轴同步运动
    motionCmd_enableSync(true);         // 使能同步
    motionCmd_syncMove(15.0f);          // 两轴同步运动到15圈
    
    // 12. 禁用轴
    motionCmd_disableAxis(1);
    motionCmd_disableAxis(2);
}

//
// End of File
//

