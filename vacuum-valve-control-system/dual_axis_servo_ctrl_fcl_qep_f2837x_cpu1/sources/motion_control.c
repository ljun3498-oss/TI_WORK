//#############################################################################
//
// FILE:    motion_control.c
// TITLE:   Advanced Motion Control System - Implementation
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

#include "motion_control.h"
#include <math.h>
#include <string.h>

//*****************************************************************************
// 数学宏定义
//*****************************************************************************
#define ABS(x)      ((x) < 0.0f ? -(x) : (x))
#define SIGN(x)     ((x) < 0.0f ? -1.0f : 1.0f)
#define MIN(a, b)   ((a) < (b) ? (a) : (b))
#define MAX(a, b)   ((a) > (b) ? (a) : (b))

//*****************************************************************************
// 梯形速度曲线规划函数实现
//*****************************************************************************

//
// TrapProfile_init - 初始化梯形曲线规划器
//
void TrapProfile_init(TrapezoidalProfile_t *profile, 
                      float32_t maxVel, float32_t maxAccel, float32_t maxDecel)
{
    memset(profile, 0, sizeof(TrapezoidalProfile_t));
    
    profile->maxVelocity = maxVel;
    profile->maxAccel = maxAccel;
    profile->maxDecel = maxDecel;
    profile->state = PROFILE_IDLE;
    profile->isComputed = false;
    profile->isActive = false;
}

//
// TrapProfile_setTarget - 设置新目标位置（支持运动中更新）
//
void TrapProfile_setTarget(TrapezoidalProfile_t *profile, 
                           float32_t currentPos, float32_t currentVel, 
                           float32_t targetPos)
{
    profile->currentPos = currentPos;
    profile->currentVel = currentVel;
    profile->targetPos = targetPos;
    profile->isComputed = false;
    profile->updateCounter++;
}

//
// TrapProfile_compute - 计算梯形轨迹参数
//
void TrapProfile_compute(TrapezoidalProfile_t *profile)
{
    float32_t distance, direction;
    float32_t accelDist, decelDist, constDist;
    float32_t vStart, vMax, vEnd;
    
    // 计算运动距离和方向
    distance = profile->targetPos - profile->currentPos;
    direction = SIGN(distance);
    distance = ABS(distance);
    
    // 起始速度（考虑方向）
    vStart = profile->currentVel * direction;
    vEnd = 0.0f;  // 目标速度为0（定位到位）
    vMax = profile->maxVelocity;
    
    // 如果起始速度与运动方向相反，先减速到0
    if(vStart * direction < 0)
    {
        float32_t stopTime = ABS(vStart) / profile->maxDecel;
        float32_t stopDist = ABS(vStart) * stopTime * 0.5f;
        
        profile->currentPos += vStart * stopTime * 0.5f;
        distance += stopDist;
        vStart = 0.0f;
    }
    
    // 计算加速和减速距离
    accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->maxAccel);
    decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->maxDecel);
    
    // 检查是否能达到最大速度（三角形vs梯形）
    if(accelDist + decelDist > distance)
    {
        // 三角形速度曲线（无匀速段）
        float32_t vPeak = sqrtf((2.0f * profile->maxAccel * profile->maxDecel * distance + 
                                 profile->maxDecel * vStart * vStart + 
                                 profile->maxAccel * vEnd * vEnd) / 
                                (profile->maxAccel + profile->maxDecel));
        
        vMax = MIN(vPeak, profile->maxVelocity);
        accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->maxAccel);
        decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->maxDecel);
        constDist = 0.0f;
    }
    else
    {
        // 梯形速度曲线（有匀速段）
        constDist = distance - accelDist - decelDist;
    }
    
    // 计算时间
    profile->accelTime = (vMax - vStart) / profile->maxAccel;
    profile->constTime = constDist / vMax;
    profile->decelTime = (vMax - vEnd) / profile->maxDecel;
    profile->totalTime = profile->accelTime + profile->constTime + profile->decelTime;
    
    // 计算各段位置点（考虑方向）
    profile->accelEndPos = profile->currentPos + direction * accelDist;
    profile->decelStartPos = profile->accelEndPos + direction * constDist;
    
    // 重置时间计数器
    profile->elapsedTime = 0.0f;
    profile->state = PROFILE_ACCEL;
    profile->isComputed = true;
    profile->isActive = true;
}

//
// TrapProfile_getPosition - 获取当前时刻的位置命令
//
float32_t TrapProfile_getPosition(TrapezoidalProfile_t *profile, float32_t dt)
{
    float32_t position;
    float32_t t, direction;
    
    if(!profile->isActive)
    {
        return profile->currentPos;
    }
    
    // 更新时间
    profile->elapsedTime += dt;
    t = profile->elapsedTime;
    
    // 方向
    direction = SIGN(profile->targetPos - profile->currentPos);
    
    // 根据当前状态计算位置
    if(t <= profile->accelTime)
    {
        // 加速段: s = s0 + v0*t + 0.5*a*t^2
        profile->state = PROFILE_ACCEL;
        position = profile->currentPos + 
                   profile->currentVel * t + 
                   0.5f * profile->maxAccel * t * t * direction;
    }
    else if(t <= (profile->accelTime + profile->constTime))
    {
        // 匀速段: s = s1 + vMax*(t-t1)
        profile->state = PROFILE_CONST;
        float32_t t1 = t - profile->accelTime;
        position = profile->accelEndPos + 
                   profile->maxVelocity * t1 * direction;
    }
    else if(t <= profile->totalTime)
    {
        // 减速段: s = s2 + vMax*t - 0.5*a*t^2
        profile->state = PROFILE_DECEL;
        float32_t t2 = t - profile->accelTime - profile->constTime;
        position = profile->decelStartPos + 
                   profile->maxVelocity * t2 * direction - 
                   0.5f * profile->maxDecel * t2 * t2 * direction;
    }
    else
    {
        // 运动完成
        profile->state = PROFILE_DONE;
        profile->isActive = false;
        position = profile->targetPos;
    }
    
    return position;
}

//
// TrapProfile_getVelocity - 获取当前速度
//
float32_t TrapProfile_getVelocity(TrapezoidalProfile_t *profile)
{
    float32_t velocity;
    float32_t t, direction;
    
    if(!profile->isActive)
    {
        return 0.0f;
    }
    
    t = profile->elapsedTime;
    direction = SIGN(profile->targetPos - profile->currentPos);
    
    if(t <= profile->accelTime)
    {
        // 加速段: v = v0 + a*t
        velocity = profile->currentVel + profile->maxAccel * t * direction;
    }
    else if(t <= (profile->accelTime + profile->constTime))
    {
        // 匀速段: v = vMax
        velocity = profile->maxVelocity * direction;
    }
    else if(t <= profile->totalTime)
    {
        // 减速段: v = vMax - a*t
        float32_t t2 = t - profile->accelTime - profile->constTime;
        velocity = (profile->maxVelocity - profile->maxDecel * t2) * direction;
    }
    else
    {
        // 运动完成
        velocity = 0.0f;
    }
    
    return velocity;
}

//
// TrapProfile_isDone - 检查运动是否完成
//
bool TrapProfile_isDone(TrapezoidalProfile_t *profile)
{
    return (profile->state == PROFILE_DONE || !profile->isActive);
}

//
// TrapProfile_stop - 停止运动（按减速度停止）
//
void TrapProfile_stop(TrapezoidalProfile_t *profile, 
                      float32_t currentPos, float32_t currentVel)
{
    // 计算停止距离
    float32_t stopDist = (currentVel * currentVel) / (2.0f * profile->maxDecel);
    float32_t stopPos = currentPos + SIGN(currentVel) * stopDist;
    
    // 设置新目标为停止位置
    TrapProfile_setTarget(profile, currentPos, currentVel, stopPos);
    TrapProfile_compute(profile);
}

//*****************************************************************************
// 位置缓冲区函数实现
//*****************************************************************************

//
// ProfileBuffer_init - 初始化位置缓冲区
//
void ProfileBuffer_init(ProfileBuffer_t *buffer)
{
    memset(buffer, 0, sizeof(ProfileBuffer_t));
    buffer->maxCount = MOTION_PROFILE_BUFFER_SIZE;
}

//
// ProfileBuffer_write - 写入位置到缓冲区
//
bool ProfileBuffer_write(ProfileBuffer_t *buffer, float32_t position)
{
    if(buffer->count >= MOTION_PROFILE_BUFFER_SIZE)
    {
        buffer->overflowCount++;
        return false;
    }
    
    buffer->buffer[buffer->writeIdx] = position;
    buffer->writeIdx = (buffer->writeIdx + 1) % MOTION_PROFILE_BUFFER_SIZE;
    buffer->count++;
    
    return true;
}

//
// ProfileBuffer_read - 从缓冲区读取位置
//
bool ProfileBuffer_read(ProfileBuffer_t *buffer, float32_t *position)
{
    if(buffer->count == 0)
    {
        buffer->underflowCount++;
        return false;
    }
    
    *position = buffer->buffer[buffer->readIdx];
    buffer->readIdx = (buffer->readIdx + 1) % MOTION_PROFILE_BUFFER_SIZE;
    buffer->count--;
    
    return true;
}

//
// ProfileBuffer_getCount - 获取缓冲区当前元素数量
//
uint16_t ProfileBuffer_getCount(ProfileBuffer_t *buffer)
{
    return buffer->count;
}

//
// ProfileBuffer_getFreeSpace - 获取缓冲区剩余空间
//
uint16_t ProfileBuffer_getFreeSpace(ProfileBuffer_t *buffer)
{
    return (MOTION_PROFILE_BUFFER_SIZE - buffer->count);
}

//
// ProfileBuffer_clear - 清空缓冲区
//
void ProfileBuffer_clear(ProfileBuffer_t *buffer)
{
    buffer->readIdx = 0;
    buffer->writeIdx = 0;
    buffer->count = 0;
}

//*****************************************************************************
// PID控制器函数实现
//*****************************************************************************

//
// PID_init - 初始化PID控制器
//
void PID_init(PIDController_t *pid, float32_t Kp, float32_t Ki, float32_t Kd,
              float32_t outMax, float32_t outMin)
{
    memset(pid, 0, sizeof(PIDController_t));
    
    pid->Kp = Kp;
    pid->Ki = Ki;
    pid->Kd = Kd;
    pid->outMax = outMax;
    pid->outMin = outMin;
    pid->enable = false;
    pid->manualMode = false;
}

//
// PID_run - 运行PID控制器
//
float32_t PID_run(PIDController_t *pid, float32_t ref, float32_t fbk)
{
    float32_t error, up, ud, out;
    
    // 禁用时返回0
    if(!pid->enable)
    {
        return 0.0f;
    }
    
    // 手动模式直接返回手动值
    if(pid->manualMode)
    {
        return pid->manualOutput;
    }
    
    // 计算误差
    error = ref - fbk;
    
    // P项
    up = pid->Kp * error;
    
    // I项（带抗饱和）
    pid->ui += pid->Ki * error;
    if(pid->ui > pid->outMax)
        pid->ui = pid->outMax;
    else if(pid->ui < pid->outMin)
        pid->ui = pid->outMin;
    
    // D项
    ud = pid->Kd * (error - pid->error_prev);
    pid->error_prev = error;
    
    // PID输出
    out = up + pid->ui + ud;
    
    // 输出限幅
    if(out > pid->outMax)
        out = pid->outMax;
    else if(out < pid->outMin)
        out = pid->outMin;
    
    return out;
}

//
// PID_reset - 复位PID控制器
//
void PID_reset(PIDController_t *pid)
{
    pid->ui = 0.0f;
    pid->error_prev = 0.0f;
}

//
// PID_setManual - 设置手动模式
//
void PID_setManual(PIDController_t *pid, bool enable, float32_t manualValue)
{
    pid->manualMode = enable;
    pid->manualOutput = manualValue;
    
    // 进入手动模式时复位积分
    if(enable)
    {
        pid->ui = 0.0f;
    }
}

//
// PID_setGains - 设置PID增益
//
void PID_setGains(PIDController_t *pid, float32_t Kp, float32_t Ki, float32_t Kd)
{
    pid->Kp = Kp;
    pid->Ki = Ki;
    pid->Kd = Kd;
}

//*****************************************************************************
// 跟踪误差监视函数实现
//*****************************************************************************

//
// FollowingError_init - 初始化跟踪误差监视器
//
void FollowingError_init(FollowingErrorMonitor_t *monitor, 
                         float32_t posErrorMax, float32_t velErrorMax)
{
    memset(monitor, 0, sizeof(FollowingErrorMonitor_t));
    
    monitor->followingErrorMax = posErrorMax;
    monitor->velocityErrorMax = velErrorMax;
}

//
// FollowingError_update - 更新跟踪误差
//
void FollowingError_update(FollowingErrorMonitor_t *monitor, 
                           float32_t cmdPos, float32_t actPos,
                           float32_t cmdVel, float32_t actVel)
{
    // 计算误差
    monitor->followingError = cmdPos - actPos;
    monitor->velocityError = cmdVel - actVel;
    
    // 检查超限
    if(ABS(monitor->followingError) > monitor->followingErrorMax)
    {
        monitor->followingErrorTrip = true;
        monitor->tripCounter++;
    }
    
    if(ABS(monitor->velocityError) > monitor->velocityErrorMax)
    {
        monitor->velocityErrorTrip = true;
        monitor->tripCounter++;
    }
}

//
// FollowingError_isTrip - 检查是否超限
//
bool FollowingError_isTrip(FollowingErrorMonitor_t *monitor)
{
    return (monitor->followingErrorTrip || monitor->velocityErrorTrip);
}

//
// FollowingError_reset - 复位跟踪误差监视器
//
void FollowingError_reset(FollowingErrorMonitor_t *monitor)
{
    monitor->followingErrorTrip = false;
    monitor->velocityErrorTrip = false;
}

//*****************************************************************************
// 电机驱动函数实现
//*****************************************************************************

//
// MotorDrive_init - 初始化电机驱动
//
void MotorDrive_init(MotorDrive_t *motor)
{
    memset(motor, 0, sizeof(MotorDrive_t));
    
    motor->motorID = 0xFF;  // 未使用
    motor->gearRatio = 1.0f;
    motor->enable = false;
    
    // 初始化PID控制器
    PID_init(&motor->posPID, 1.0f, 0.0f, 0.0f, 1000.0f, -1000.0f);
    
    // 初始化跟踪误差监视
    FollowingError_init(&motor->followingMonitor, 10.0f, 100.0f);
}

//
// MotorDrive_config - 配置电机驱动
//
void MotorDrive_config(MotorDrive_t *motor, uint16_t motorID, float32_t gearRatio)
{
    motor->motorID = motorID;
    motor->gearRatio = gearRatio;
    motor->enable = false;
}

//
// MotorDrive_setPIDGains - 设置电机PID增益
//
void MotorDrive_setPIDGains(MotorDrive_t *motor, float32_t Kp, float32_t Ki, float32_t Kd)
{
    PID_setGains(&motor->posPID, Kp, Ki, Kd);
}

//
// MotorDrive_setFollowingErrorLimit - 设置电机跟踪误差限值
//
void MotorDrive_setFollowingErrorLimit(MotorDrive_t *motor, 
                                       float32_t posError, 
                                       float32_t velError)
{
    FollowingError_init(&motor->followingMonitor, posError, velError);
}

//
// MotorDrive_enable - 使能/禁用电机
//
void MotorDrive_enable(MotorDrive_t *motor, bool enable)
{
    motor->enable = enable;
    motor->posPID.enable = enable;
    
    if(enable)
    {
        FollowingError_reset(&motor->followingMonitor);
    }
}

//
// MotorDrive_updateControl - 更新电机控制（从轴位置命令计算速度命令）
//
void MotorDrive_updateControl(MotorDrive_t *motor, float32_t cmdPos, float32_t *velRef)
{
    float32_t cmdPosMotor, cmdVelMotor;
    
    if(!motor->enable || motor->motorID == 0xFF)
    {
        *velRef = 0.0f;
        return;
    }
    
    // 转换到电机坐标系（考虑齿轮比）
    cmdPosMotor = cmdPos / motor->gearRatio;
    
    // 更新跟踪误差监视（电机坐标系）
    // 注意：cmdVel暂时用速度环输出近似
    FollowingError_update(&motor->followingMonitor, 
                          cmdPosMotor, motor->actPosition,
                          0.0f, motor->actVelocity);
    
    // 检查跟踪误差
    if(FollowingError_isTrip(&motor->followingMonitor))
    {
        motor->errorCounter++;
        motor->posPID.enable = false;
        *velRef = 0.0f;
        return;
    }
    
    // 位置环PID计算速度命令（电机坐标系）
    cmdVelMotor = PID_run(&motor->posPID, cmdPosMotor, motor->actPosition);
    
    // 输出速度命令
    *velRef = cmdVelMotor;
}

//
// MotorDrive_updateFeedback - 更新电机反馈
//
void MotorDrive_updateFeedback(MotorDrive_t *motor, float32_t actPos, float32_t actVel)
{
    float32_t lastPos = motor->actPosition;
    
    motor->actPosition = actPos;
    motor->actVelocity = actVel;
    
    // 累计行程
    motor->totalDistance += ABS(actPos - lastPos);
}

//
// MotorDrive_isError - 检查电机是否故障
//
bool MotorDrive_isError(MotorDrive_t *motor)
{
    return FollowingError_isTrip(&motor->followingMonitor);
}

//*****************************************************************************
// 运动轴函数实现
//*****************************************************************************

//
// MotionAxis_init - 初始化运动轴
//
void MotionAxis_init(MotionAxis_t *axis, uint16_t axisID, AxisType_e axisType)
{
    uint16_t i;
    
    memset(axis, 0, sizeof(MotionAxis_t));
    
    axis->axisID = axisID;
    axis->axisType = axisType;
    axis->axisState = AXIS_STATE_DISABLED;
    axis->axisMode = AXIS_MODE_POSITION;
    axis->numMotors = 0;
    
    // 初始化所有电机驱动槽位
    for(i = 0; i < MOTION_MAX_MOTORS_PER_AXIS; i++)
    {
        MotorDrive_init(&axis->motors[i]);
    }
    
    // 默认采样时间
    axis->profileUpdateTs = 0.001f;  // 1ms轨迹更新
    axis->posLoopTs = 0.001f;        // 1ms位置环
    
    // 频率控制参数（轨迹更新频率可以低于位置环频率以降低CPU占用）
    // 默认值：分频比=1，即轨迹更新频率=位置环频率
    // 可以设置为5，即每5次位置环执行1次轨迹更新（例如：位置环1KHz，轨迹更新200Hz）
    axis->profileUpdateDivider = 10;   // 默认不分频
    axis->profileUpdateCounter = 0;
    axis->forceProfileUpdate = false;
    
    // 初始化轨迹规划器和缓冲区
    TrapProfile_init(&axis->profile, 1000.0f, 10000.0f, 10000.0f);
    ProfileBuffer_init(&axis->posBuffer);
}

//
// MotionAxis_addMotor - 添加电机到轴（支持0到多个电机）
//
void MotionAxis_addMotor(MotionAxis_t *axis, uint16_t motorID, float32_t gearRatio)
{
    if(axis->numMotors >= MOTION_MAX_MOTORS_PER_AXIS)
    {
        return;  // 已达到最大电机数量
    }
    
    // 配置电机
    MotorDrive_config(&axis->motors[axis->numMotors], motorID, gearRatio);
    axis->numMotors++;
    
    // 更新轴类型
    if(axis->numMotors == 0)
    {
        axis->axisType = AXIS_TYPE_VIRTUAL;
    }
    else if(axis->numMotors >= 2)
    {
        axis->axisType = AXIS_TYPE_GANTRY;  // 多电机=龙门轴
    }
    else
    {
        axis->axisType = AXIS_TYPE_REAL;
    }
}

//
// MotionAxis_setMotionParams - 设置运动参数
//
void MotionAxis_setMotionParams(MotionAxis_t *axis, float32_t maxVel, 
                                float32_t maxAccel, float32_t maxDecel)
{
    TrapProfile_init(&axis->profile, maxVel, maxAccel, maxDecel);
}

//
// MotionAxis_setPIDGains - 设置指定电机的PID增益
//
void MotionAxis_setPIDGains(MotionAxis_t *axis, uint16_t motorIndex,
                            float32_t Kp, float32_t Ki, float32_t Kd)
{
    if(motorIndex < axis->numMotors)
    {
        MotorDrive_setPIDGains(&axis->motors[motorIndex], Kp, Ki, Kd);
    }
}

//
// MotionAxis_setFollowingErrorLimit - 设置指定电机的跟踪误差限值
//
void MotionAxis_setFollowingErrorLimit(MotionAxis_t *axis, uint16_t motorIndex,
                                       float32_t posError, float32_t velError)
{
    if(motorIndex < axis->numMotors)
    {
        MotorDrive_setFollowingErrorLimit(&axis->motors[motorIndex], posError, velError);
    }
}

//
// MotionAxis_enable - 使能轴（使能所有绑定的电机）
//
void MotionAxis_enable(MotionAxis_t *axis)
{
    uint16_t i;
    
    if(axis->axisState == AXIS_STATE_DISABLED || 
       axis->axisState == AXIS_STATE_ERROR)
    {
        axis->axisState = AXIS_STATE_STANDBY;
        
        // 使能所有绑定的电机
        for(i = 0; i < axis->numMotors; i++)
        {
            MotorDrive_enable(&axis->motors[i], true);
        }
    }
}

//
// MotionAxis_disable - 禁用轴（禁用所有绑定的电机）
//
void MotionAxis_disable(MotionAxis_t *axis)
{
    uint16_t i;
    
    axis->axisState = AXIS_STATE_DISABLED;
    axis->profile.isActive = false;
    
    // 禁用所有绑定的电机
    for(i = 0; i < axis->numMotors; i++)
    {
        MotorDrive_enable(&axis->motors[i], false);
    }
}

//
// MotionAxis_moveAbsolute - 绝对位置运动
//
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos)
{
    float32_t startPos, startVel;
    
    if(axis->axisState != AXIS_STATE_STANDBY && 
       axis->axisState != AXIS_STATE_MOVING)
    {
        return;
    }
    
    // 关键优化：不清空缓冲区，从缓冲区最新位置平滑过渡
    // 如果缓冲区有数据，从缓冲区最新位置开始规划
    // 如果缓冲区空，从当前命令位置开始规划
    if(axis->posBuffer.count > 0)
    {
        // 从缓冲区最新位置作为新轨迹起点
        uint16_t lastIdx = (axis->posBuffer.writeIdx + 
                           MOTION_PROFILE_BUFFER_SIZE - 1) % 
                           MOTION_PROFILE_BUFFER_SIZE;
        startPos = axis->posBuffer.buffer[lastIdx];
        startVel = axis->profile.currentVel;  // 保持当前规划速度
    }
    else
    {
        // 缓冲区空，使用当前命令位置
        startPos = axis->cmdPosition;
        startVel = axis->cmdVelocity;
    }
    
    // 设置新目标（从当前轨迹末端平滑过渡）
    TrapProfile_setTarget(&axis->profile, startPos, startVel, targetPos);
    TrapProfile_compute(&axis->profile);
    
    axis->axisState = AXIS_STATE_MOVING;
    axis->moveCounter++;
    
    // 设置强制更新标志，确保新轨迹立即生效（提高实时性）
    // 实际更新将在 updateProfile 中根据分频器执行
    axis->forceProfileUpdate = true;
}

//
// MotionAxis_moveRelative - 相对位置运动
//
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance)
{
    float32_t targetPos = axis->cmdPosition + distance;
    MotionAxis_moveAbsolute(axis, targetPos);
}

//
// MotionAxis_stop - 正常停止
//
void MotionAxis_stop(MotionAxis_t *axis)
{
    float32_t startPos, startVel;
    
    if(axis->axisState == AXIS_STATE_MOVING)
    {
        axis->axisState = AXIS_STATE_STOPPING;
        
        // 关键优化：从缓冲区最新位置开始规划停止轨迹
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
        
        TrapProfile_stop(&axis->profile, startPos, startVel);
        
        // 设置强制更新标志，确保停止轨迹立即生效
        axis->forceProfileUpdate = true;
    }
}

//
// MotionAxis_emergencyStop - 急停
//
void MotionAxis_emergencyStop(MotionAxis_t *axis)
{
    float32_t startPos, startVel;
    float32_t savedDecel;
    
    if(axis->axisState != AXIS_STATE_DISABLED && 
       axis->axisState != AXIS_STATE_ERROR)
    {
        axis->axisState = AXIS_STATE_STOPPING;
        
        // 使用更大的减速度立即停止
        savedDecel = axis->profile.maxDecel;
        axis->profile.maxDecel = axis->profile.maxDecel * 2.0f;  // 加倍减速度
        
        // 从缓冲区最新位置开始规划急停轨迹
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
        
        TrapProfile_stop(&axis->profile, startPos, startVel);
        
        // 恢复原减速度
        axis->profile.maxDecel = savedDecel;
        
        // 设置强制更新标志，确保急停轨迹立即生效
        axis->forceProfileUpdate = true;
    }
}

//
// MotionAxis_updateProfile - 更新轨迹（可调频率，降低CPU占用）
// 
// 说明：
// 1. 通过分频器控制轨迹更新频率，可以低于位置环频率
// 2. forceProfileUpdate标志允许在需要时强制更新（如新命令、停止命令）
// 3. 缓冲区机制确保位置环始终有数据可读
//
void MotionAxis_updateProfile(MotionAxis_t *axis)
{
    float32_t position;
    uint16_t freeSpace;
    uint16_t i;
    bool shouldUpdate = false;
    
    if(axis->axisState != AXIS_STATE_MOVING && 
       axis->axisState != AXIS_STATE_STOPPING)
    {
        return;
    }
    
    // 检查轨迹是否激活
    if(!axis->profile.isActive)
    {
        axis->axisState = AXIS_STATE_STANDBY;
        return;
    }
    
    // 频率控制：分频器或强制更新
    if(axis->forceProfileUpdate)
    {
        // 强制更新（新命令、停止命令）
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
    
    // 如果不需要更新，直接返回
    if(!shouldUpdate)
    {
        return;
    }
    
    // 计算缓冲区可填充数量
    freeSpace = ProfileBuffer_getFreeSpace(&axis->posBuffer);
    
    // 填充位置序列到缓冲区（预先生成多个点）
    // 每次更新可以生成多个点，确保缓冲区有足够数据
    for(i = 0; i < MIN(freeSpace, 10); i++)
    {
        position = TrapProfile_getPosition(&axis->profile, axis->profileUpdateTs);
        ProfileBuffer_write(&axis->posBuffer, position);
        
        if(TrapProfile_isDone(&axis->profile))
        {
            break;
        }
    }
}

//
// MotionAxis_updateControl - 更新控制（高频任务，位置环周期执行）
// 关键改进：
// 1. 一个轴的位置命令分发给所有绑定的电机，保证完美同步
// 2. 缓冲区空时的保护机制，防止电机突然停止
//
void MotionAxis_updateControl(MotionAxis_t *axis)
{
    float32_t cmdPos;
    uint16_t i;
    float32_t velRef;
    static uint32_t bufferEmptyWarning = 0;
    
    if(axis->axisState == AXIS_STATE_DISABLED)
    {
        return;
    }
    
    // 从缓冲区读取位置命令（轴坐标系）
    if(ProfileBuffer_read(&axis->posBuffer, &cmdPos))
    {
        // 正常情况：从缓冲区读取到新位置
        axis->cmdPosition = cmdPos;
        axis->cmdVelocity = TrapProfile_getVelocity(&axis->profile);
        bufferEmptyWarning = 0;  // 复位警告计数
    }
    else
    {
        // 缓冲区空，保持当前命令（保护机制）
        // 这种情况应该避免，说明轨迹生成跟不上位置环执行
        // 保持当前位置命令，防止电机突然停止
        
        // 可选：减速到0，避免长时间保持恒定速度命令
        if(axis->cmdVelocity != 0.0f)
        {
            // 逐步降低速度命令到0
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
        
        // 警告计数（用于诊断）
        bufferEmptyWarning++;
        if(bufferEmptyWarning > 100)
        {
            // 缓冲区长时间为空，可能需要增大缓冲区或降低分频比
            // 这里可以设置错误标志或记录日志
            axis->errorCounter++;
        }
    }
    
    // 将相同的位置命令分发给所有电机
    // 每个电机根据自己的齿轮比和反馈独立PID控制
    for(i = 0; i < axis->numMotors; i++)
    {
        MotorDrive_updateControl(&axis->motors[i], cmdPos, &velRef);
        
        // TODO: 将速度命令通过IPC发送给CPU2对应的电机
        // velRef已经是电机坐标系的速度命令
        // 实际实现在集成时完成（需要根据motorID路由到M1/M2）
        
        // 检查电机错误
        if(MotorDrive_isError(&axis->motors[i]))
        {
            axis->axisState = AXIS_STATE_ERROR;
            axis->errorCounter++;
        }
    }
    
    // 计算轴的平均实际位置（从所有电机）
    if(axis->numMotors > 0)
    {
        float32_t sumPos = 0.0f;
        float32_t sumVel = 0.0f;
        
        for(i = 0; i < axis->numMotors; i++)
        {
            sumPos += axis->motors[i].actPosition * axis->motors[i].gearRatio;
            sumVel += axis->motors[i].actVelocity * axis->motors[i].gearRatio;
        }
        
        axis->actPosition = sumPos / axis->numMotors;
        axis->actVelocity = sumVel / axis->numMotors;
    }
}

//
// MotionAxis_updateFeedback - 更新指定电机的反馈（从CPU2获取）
//
void MotionAxis_updateFeedback(MotionAxis_t *axis, uint16_t motorIndex,
                               float32_t actPos, float32_t actVel)
{
    if(motorIndex < axis->numMotors)
    {
        // 更新电机反馈（电机坐标系）
        MotorDrive_updateFeedback(&axis->motors[motorIndex], actPos, actVel);
        
        // 累计轴的总行程
        static float32_t lastPos = 0.0f;
        axis->totalDistance += ABS(actPos - lastPos);
        lastPos = actPos;
    }
}

//
// MotionAxis_isIdle - 检查轴是否空闲
//
bool MotionAxis_isIdle(MotionAxis_t *axis)
{
    return (axis->axisState == AXIS_STATE_STANDBY || 
            axis->axisState == AXIS_STATE_DISABLED);
}

//
// MotionAxis_isError - 检查轴是否故障
//
bool MotionAxis_isError(MotionAxis_t *axis)
{
    return (axis->axisState == AXIS_STATE_ERROR);
}

//
// MotionAxis_getMotorCount - 获取轴绑定的电机数量
//
uint16_t MotionAxis_getMotorCount(MotionAxis_t *axis)
{
    return axis->numMotors;
}

//*****************************************************************************
// 多轴同步函数实现
//*****************************************************************************

//
// AxisGroup_init - 初始化轴组
//
void AxisGroup_init(AxisGroup_t *group, uint16_t groupID)
{
    memset(group, 0, sizeof(AxisGroup_t));
    group->groupID = groupID;
    group->syncEnable = false;
}

//
// AxisGroup_addAxis - 添加轴到组
//
void AxisGroup_addAxis(AxisGroup_t *group, MotionAxis_t *axis, float32_t syncRatio)
{
    if(group->numAxes < MOTION_MAX_GROUP_AXES)
    {
        group->axes[group->numAxes] = axis;
        group->syncRatio[group->numAxes] = syncRatio;
        group->numAxes++;
    }
}

//
// AxisGroup_enableSync - 使能同步
//
void AxisGroup_enableSync(AxisGroup_t *group, bool enable)
{
    group->syncEnable = enable;
}

//
// AxisGroup_moveAbsolute - 组同步运动
//
void AxisGroup_moveAbsolute(AxisGroup_t *group, float32_t targetPos)
{
    uint16_t i;
    if(!group->syncEnable)
    {
        return;
    }
    
    // 同步运动所有轴（按比例）
    for(i = 0; i < group->numAxes; i++)
    {
        float32_t axisTarget = targetPos * group->syncRatio[i];
        MotionAxis_moveAbsolute(group->axes[i], axisTarget);
    }
}

//
// AxisGroup_stop - 组停止
//
void AxisGroup_stop(AxisGroup_t *group)
{
    uint16_t i;
    for(i = 0; i < group->numAxes; i++)
    {
        MotionAxis_stop(group->axes[i]);
    }
}

//
// End of File
//

