//#############################################################################
//
// FILE:    motion_integration_v2.c
// TITLE:   Motion Control System Integration V2 - Multi-Motor Architecture
//
// 新架构：一个运动轴可以绑定0到多个电机
// - 完美同步：所有电机读取相同的位置命令
// - 独立PID：每个电机独立调参
// - 支持龙门轴：2个电机绑定到1个轴
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

// 场景1：两个独立轴（各绑定1个电机）
MotionAxis_t axis1;  // 轴1 -> 电机1
MotionAxis_t axis2;  // 轴2 -> 电机2

// 场景2（可选）：一个龙门轴（绑定2个电机）
// MotionAxis_t gantryAxis;  // 龙门轴 -> 电机1 + 电机2

// 外部IPC数据指针
extern IPC_DataFromCPU1_t *ipcDataFromCPU1;
extern IPC_DataToCPU1_t   *ipcDataToCPU1;

//*****************************************************************************
// 运动控制系统初始化
//*****************************************************************************

//
// initMotionControl_V2 - 初始化运动控制系统（新架构）
//
void initMotionControl_V2(void)
{
    //
    // === 场景1：两个独立轴 ===
    //
    
    // 初始化轴1
    MotionAxis_init(&axis1, 1, AXIS_TYPE_REAL);
    
    // 绑定电机1到轴1（齿轮比1:1）
    MotionAxis_addMotor(&axis1, 1, 1.0f);
    
    // 设置轴1的运动参数
    MotionAxis_setMotionParams(&axis1, 
                               50.0f,      // 最大速度 [rev/s]
                               166.67f,    // 最大加速度 [rev/s^2]
                               166.67f);   // 最大减速度 [rev/s^2]
    
    // 设置电机1（索引0）的PID增益
    MotionAxis_setPIDGains(&axis1, 0,      // motorIndex = 0
                           2.0f,            // Kp
                           0.1f,            // Ki
                           0.01f);          // Kd
    
    // 设置电机1的跟踪误差限值
    MotionAxis_setFollowingErrorLimit(&axis1, 0,  // motorIndex = 0
                                      5.0f,        // 位置误差限值 [rev]
                                      50.0f);      // 速度误差限值 [rpm]
    
    // 设置采样时间
    axis1.profileUpdateTs = 0.001f;  // 1ms轨迹更新周期
    axis1.posLoopTs = 0.001f;        // 1ms位置环周期
    
    //
    // 初始化轴2（配置相同）
    //
    MotionAxis_init(&axis2, 2, AXIS_TYPE_REAL);
    MotionAxis_addMotor(&axis2, 2, 1.0f);  // 绑定电机2
    MotionAxis_setMotionParams(&axis2, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&axis2, 0, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&axis2, 0, 5.0f, 50.0f);
    axis2.profileUpdateTs = 0.001f;
    axis2.posLoopTs = 0.001f;
    
    //
    // === 场景2（可选）：龙门轴配置示例 ===
    // 注意：如果使用龙门轴，则不使用axis1和axis2
    //
    /*
    MotionAxis_init(&gantryAxis, 10, AXIS_TYPE_GANTRY);
    
    // 绑定两个电机到同一个轴
    MotionAxis_addMotor(&gantryAxis, 1, 1.0f);  // 电机1，齿轮比1:1
    MotionAxis_addMotor(&gantryAxis, 2, 1.0f);  // 电机2，齿轮比1:1
    
    // 设置轴的运动参数（两个电机共享）
    MotionAxis_setMotionParams(&gantryAxis, 50.0f, 166.67f, 166.67f);
    
    // 设置电机1的PID增益
    MotionAxis_setPIDGains(&gantryAxis, 0, 2.0f, 0.1f, 0.01f);
    
    // 设置电机2的PID增益（可以与电机1不同）
    MotionAxis_setPIDGains(&gantryAxis, 1, 2.2f, 0.12f, 0.012f);
    
    // 设置跟踪误差限值
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 0, 5.0f, 50.0f);
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 1, 5.0f, 50.0f);
    
    // 关键：所有电机读取相同的位置命令，完美同步！
    */
}

//*****************************************************************************
// 重构后的速度/位置控制函数
//*****************************************************************************

//
// runSpeedControl_Axis1_V2 - 轴1的控制函数
//
// 此函数应在CPU1的定时器中断中调用，周期建议1ms
//
void runSpeedControl_Axis1_V2(void)
{
    float32_t velRef;
    uint16_t i;
    
    // 1. 更新所有电机的实际位置和速度反馈（从CPU2通过IPC获取）
    for(i = 0; i < axis1.numMotors; i++)
    {
        if(axis1.motors[i].motorID == 1)  // 电机1
        {
            float32_t actPos_M1 = ipcDataToCPU1->positionFdbkM1;  // [pu]
            float32_t actVel_M1 = ipcDataToCPU1->speedFdbkM1;     // [rpm]
            
            // 转换单位：rpm -> rev/s
            actVel_M1 = actVel_M1 / 60.0f;
            
            MotionAxis_updateFeedback(&axis1, i, actPos_M1, actVel_M1);
        }
        else if(axis1.motors[i].motorID == 2)  // 电机2（如果是龙门轴）
        {
            float32_t actPos_M2 = ipcDataToCPU1->positionFdbkM2;
            float32_t actVel_M2 = ipcDataToCPU1->speedFdbkM2 / 60.0f;
            
            MotionAxis_updateFeedback(&axis1, i, actPos_M2, actVel_M2);
        }
    }
    
    // 2. 更新控制（从缓冲区读取命令位置，计算各电机速度命令）
    MotionAxis_updateControl(&axis1);
    
    // 3. 获取速度命令并发送给CPU2
    for(i = 0; i < axis1.numMotors; i++)
    {
        if(!axis1.motors[i].enable)
        {
            velRef = 0.0f;
        }
        else if(axis1.motors[i].posPID.manualMode)
        {
            // 手动模式：使用手动设定的速度
            velRef = axis1.motors[i].posPID.manualOutput;
        }
        else
        {
            // 自动模式：PID已在updateControl中计算
            // 这里需要获取计算好的速度命令
            // 简化处理：直接使用PID输出
            velRef = PID_run(&axis1.motors[i].posPID, 
                            axis1.cmdPosition / axis1.motors[i].gearRatio,
                            axis1.motors[i].actPosition);
        }
        
        // 转换单位：rev/s -> rpm
        velRef = velRef * 60.0f;
        
        // 限幅
        if(velRef > 3000.0f) velRef = 3000.0f;
        if(velRef < -3000.0f) velRef = -3000.0f;
        
        // 通过IPC发送速度命令到CPU2
        if(axis1.motors[i].motorID == 1)
        {
            ipcDataFromCPU1->speedRefM1 = velRef;
        }
        else if(axis1.motors[i].motorID == 2)
        {
            ipcDataFromCPU1->speedRefM2 = velRef;
        }
    }
    
    // 4. 检查错误状态
    if(MotionAxis_isError(&axis1))
    {
        // 停止所有电机
        for(i = 0; i < axis1.numMotors; i++)
        {
            if(axis1.motors[i].motorID == 1)
            {
                ipcDataFromCPU1->speedRefM1 = 0.0f;
                ipcDataFromCPU1->enableM1 = 0;
            }
            else if(axis1.motors[i].motorID == 2)
            {
                ipcDataFromCPU1->speedRefM2 = 0.0f;
                ipcDataFromCPU1->enableM2 = 0;
            }
        }
    }
}

//
// runSpeedControl_Axis2_V2 - 轴2的控制函数
//
void runSpeedControl_Axis2_V2(void)
{
    float32_t velRef;
    uint16_t i;
    
    // 1. 更新反馈
    for(i = 0; i < axis2.numMotors; i++)
    {
        if(axis2.motors[i].motorID == 2)  // 电机2
        {
            float32_t actPos_M2 = ipcDataToCPU1->positionFdbkM2;
            float32_t actVel_M2 = ipcDataToCPU1->speedFdbkM2 / 60.0f;
            
            MotionAxis_updateFeedback(&axis2, i, actPos_M2, actVel_M2);
        }
    }
    
    // 2. 更新控制
    MotionAxis_updateControl(&axis2);
    
    // 3. 发送速度命令
    for(i = 0; i < axis2.numMotors; i++)
    {
        if(!axis2.motors[i].enable)
        {
            velRef = 0.0f;
        }
        else if(axis2.motors[i].posPID.manualMode)
        {
            velRef = axis2.motors[i].posPID.manualOutput;
        }
        else
        {
            velRef = PID_run(&axis2.motors[i].posPID, 
                            axis2.cmdPosition / axis2.motors[i].gearRatio,
                            axis2.motors[i].actPosition);
        }
        
        velRef = velRef * 60.0f;
        
        if(velRef > 3000.0f) velRef = 3000.0f;
        if(velRef < -3000.0f) velRef = -3000.0f;
        
        if(axis2.motors[i].motorID == 2)
        {
            ipcDataFromCPU1->speedRefM2 = velRef;
        }
    }
    
    // 4. 检查错误
    if(MotionAxis_isError(&axis2))
    {
        for(i = 0; i < axis2.numMotors; i++)
        {
            if(axis2.motors[i].motorID == 2)
            {
                ipcDataFromCPU1->speedRefM2 = 0.0f;
                ipcDataFromCPU1->enableM2 = 0;
            }
        }
    }
}

//
// updateMotionProfile_Axis1 - 更新轴1的轨迹规划
//
void updateMotionProfile_Axis1(void)
{
    MotionAxis_updateProfile(&axis1);
}

//
// updateMotionProfile_Axis2 - 更新轴2的轨迹规划
//
void updateMotionProfile_Axis2(void)
{
    MotionAxis_updateProfile(&axis2);
}

//*****************************************************************************
// 用户API函数
//*****************************************************************************

//
// motionCmd_enableAxis_V2 - 使能轴
//
void motionCmd_enableAxis_V2(uint16_t axisID)
{
    uint16_t i;
    
    if(axisID == 1)
    {
        MotionAxis_enable(&axis1);
        
        // 使能IPC对应的电机
        for(i = 0; i < axis1.numMotors; i++)
        {
            if(axis1.motors[i].motorID == 1)
                ipcDataFromCPU1->enableM1 = 1;
            if(axis1.motors[i].motorID == 2)
                ipcDataFromCPU1->enableM2 = 1;
        }
    }
    else if(axisID == 2)
    {
        MotionAxis_enable(&axis2);
        
        for(i = 0; i < axis2.numMotors; i++)
        {
            if(axis2.motors[i].motorID == 2)
                ipcDataFromCPU1->enableM2 = 1;
        }
    }
}

//
// motionCmd_disableAxis_V2 - 禁用轴
//
void motionCmd_disableAxis_V2(uint16_t axisID)
{
    uint16_t i;
    
    if(axisID == 1)
    {
        MotionAxis_disable(&axis1);
        
        for(i = 0; i < axis1.numMotors; i++)
        {
            if(axis1.motors[i].motorID == 1)
                ipcDataFromCPU1->enableM1 = 0;
            if(axis1.motors[i].motorID == 2)
                ipcDataFromCPU1->enableM2 = 0;
        }
    }
    else if(axisID == 2)
    {
        MotionAxis_disable(&axis2);
        
        for(i = 0; i < axis2.numMotors; i++)
        {
            if(axis2.motors[i].motorID == 2)
                ipcDataFromCPU1->enableM2 = 0;
        }
    }
}

//
// motionCmd_moveAbsolute_V2 - 绝对位置运动
//
void motionCmd_moveAbsolute_V2(uint16_t axisID, float32_t targetPos)
{
    if(axisID == 1)
    {
        MotionAxis_moveAbsolute(&axis1, targetPos);
    }
    else if(axisID == 2)
    {
        MotionAxis_moveAbsolute(&axis2, targetPos);
    }
}

//
// motionCmd_moveRelative_V2 - 相对位置运动
//
void motionCmd_moveRelative_V2(uint16_t axisID, float32_t distance)
{
    if(axisID == 1)
    {
        MotionAxis_moveRelative(&axis1, distance);
    }
    else if(axisID == 2)
    {
        MotionAxis_moveRelative(&axis2, distance);
    }
}

//
// motionCmd_stop_V2 - 停止运动
//
void motionCmd_stop_V2(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_stop(&axis1);
    }
    else if(axisID == 2)
    {
        MotionAxis_stop(&axis2);
    }
}

//
// motionCmd_emergencyStop_V2 - 急停
//
void motionCmd_emergencyStop_V2(uint16_t axisID)
{
    if(axisID == 1)
    {
        MotionAxis_emergencyStop(&axis1);
    }
    else if(axisID == 2)
    {
        MotionAxis_emergencyStop(&axis2);
    }
}

//*****************************************************************************
// 使用示例
//*****************************************************************************

//
// motionControlExample_V2 - 新架构使用示例
//
void motionControlExample_V2(void)
{
    // === 示例1：独立双轴运动 ===
    
    // 初始化
    initMotionControl_V2();
    
    // 使能两个轴
    motionCmd_enableAxis_V2(1);
    motionCmd_enableAxis_V2(2);
    
    // 轴1运动到10圈
    motionCmd_moveAbsolute_V2(1, 10.0f);
    
    // 轴2运动到5圈
    motionCmd_moveAbsolute_V2(2, 5.0f);
    
    // === 示例2：龙门轴运动（使用gantryAxis） ===
    /*
    // 初始化龙门轴（已在init中配置）
    MotionAxis_enable(&gantryAxis);
    
    // 龙门轴运动到15圈
    // 关键：两个电机读取相同的位置命令，完美同步！
    MotionAxis_moveAbsolute(&gantryAxis, 15.0f);
    
    // 等待到位
    while(!MotionAxis_isIdle(&gantryAxis))
    {
        updateMotionProfile(&gantryAxis);
    }
    
    // 检查同步性：监控两个电机的位置差异
    float32_t pos1 = gantryAxis.motors[0].actPosition;
    float32_t pos2 = gantryAxis.motors[1].actPosition;
    float32_t syncError = fabs(pos1 - pos2);
    
    if(syncError > 0.1f)  // 0.1圈 = 36度
    {
        // 同步误差过大，触发告警
    }
    */
}

//*****************************************************************************
// 龙门轴同步性监控
//*****************************************************************************

//
// checkGantrySyncError - 检查龙门轴同步误差
//
float32_t checkGantrySyncError(MotionAxis_t *axis)
{
    float32_t maxError = 0.0f;
    float32_t avgPos = 0.0f;
    uint16_t i;
    
    if(axis->numMotors < 2)
    {
        return 0.0f;  // 不是龙门轴
    }
    
    // 计算平均位置
    for(i = 0; i < axis->numMotors; i++)
    {
        avgPos += axis->motors[i].actPosition;
    }
    avgPos /= axis->numMotors;
    
    // 计算最大偏差
    for(i = 0; i < axis->numMotors; i++)
    {
        float32_t error = ABS(axis->motors[i].actPosition - avgPos);
        if(error > maxError)
        {
            maxError = error;
        }
    }
    
    return maxError;
}

//
// End of File
//

