//#############################################################################
//
// FILE:    motion_control.h
// TITLE:   Advanced Motion Control System - Data Types and API
//
// 高级运动控制系统
// - 梯形速度曲线规划
// - 位置序列生成和缓存
// - 位置轴抽象层
// - 跟踪误差监视
// - 多轴同步支持
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

#ifndef MOTION_CONTROL_H
#define MOTION_CONTROL_H

#include <stdint.h>
#include <stdbool.h>

// TI C2000 类型定义
#ifndef __TMS320C28XX__
typedef float float32_t;
#else
// C2000平台使用driverlib头文件中的类型定义
#include "device.h"
#endif

//*****************************************************************************
// 常量定义
//*****************************************************************************
#define MOTION_PROFILE_BUFFER_SIZE  128  // 位置序列缓冲区大小
#define MOTION_MAX_AXES             4    // 最大轴数量
#define MOTION_MAX_GROUP_AXES       4    // 每组最大轴数量
#define MOTION_MAX_MOTORS_PER_AXIS  4    // 每个轴最大电机数量（支持多电机同步）

//*****************************************************************************
// 枚举类型定义
//*****************************************************************************

// 轴状态
typedef enum
{
    AXIS_STATE_DISABLED = 0,      // 禁用
    AXIS_STATE_STANDBY,           // 待机（使能但无运动）
    AXIS_STATE_MOVING,            // 运动中
    AXIS_STATE_STOPPING,          // 停止中
    AXIS_STATE_ERROR,             // 错误状态
    AXIS_STATE_HOMING             // 回零中
} AxisState_e;

// 轴类型
typedef enum
{
    AXIS_TYPE_VIRTUAL = 0,        // 虚拟轴
    AXIS_TYPE_REAL,               // 实际电机轴
    AXIS_TYPE_GANTRY              // 龙门同步轴
} AxisType_e;

// 轴控制模式
typedef enum
{
    AXIS_MODE_POSITION = 0,       // 位置模式
    AXIS_MODE_VELOCITY,           // 速度模式
    AXIS_MODE_TORQUE,             // 力矩模式
    AXIS_MODE_MANUAL              // 手动模式
} AxisMode_e;

// 轨迹状态
typedef enum
{
    PROFILE_IDLE = 0,             // 空闲
    PROFILE_ACCEL,                // 加速段
    PROFILE_CONST,                // 匀速段
    PROFILE_DECEL,                // 减速段
    PROFILE_DONE                  // 完成
} ProfileState_e;

//*****************************************************************************
// 数据结构定义
//*****************************************************************************

//
// 梯形速度曲线参数
//
typedef struct
{
    // 运动参数
    float32_t maxVelocity;        // 最大速度 [unit/s]
    float32_t maxAccel;           // 最大加速度 [unit/s^2]
    float32_t maxDecel;           // 最大减速度 [unit/s^2]
    float32_t jerkTime;           // S曲线时间（0=梯形，>0=S曲线）[s]
    
    // 当前状态
    float32_t currentPos;         // 当前位置 [unit]
    float32_t currentVel;         // 当前速度 [unit/s]
    float32_t targetPos;          // 目标位置 [unit]
    
    // 轨迹段时间计算
    float32_t accelTime;          // 加速时间 [s]
    float32_t constTime;          // 匀速时间 [s]
    float32_t decelTime;          // 减速时间 [s]
    float32_t totalTime;          // 总时间 [s]
    
    // 轨迹段位置点
    float32_t accelEndPos;        // 加速结束位置
    float32_t decelStartPos;      // 减速开始位置
    
    // 运行状态
    ProfileState_e state;         // 当前轨迹状态
    float32_t elapsedTime;        // 已运行时间 [s]
    uint32_t updateCounter;       // 更新计数器
    
    // 标志
    bool isComputed;              // 轨迹已计算
    bool isActive;                // 轨迹激活
} TrapezoidalProfile_t;

//
// 位置序列缓冲区（环形FIFO）
//
typedef struct
{
    float32_t buffer[MOTION_PROFILE_BUFFER_SIZE];  // 位置缓冲区
    uint16_t writeIdx;            // 写索引
    uint16_t readIdx;             // 读索引
    uint16_t count;               // 当前元素数量
    uint16_t maxCount;            // 最大元素数量
    uint32_t overflowCount;       // 溢出计数
    uint32_t underflowCount;      // 下溢计数
} ProfileBuffer_t;

//
// PID控制器（支持手动模式）
//
typedef struct
{
    // PID参数
    float32_t Kp;                 // 比例增益
    float32_t Ki;                 // 积分增益
    float32_t Kd;                 // 微分增益
    
    // 状态变量
    float32_t ui;                 // 积分累积
    float32_t error_prev;         // 上次误差
    
    // 限幅
    float32_t outMax;             // 输出上限
    float32_t outMin;             // 输出下限
    
    // 手动模式
    bool manualMode;              // 手动模式标志
    float32_t manualOutput;       // 手动输出值
    
    // 使能
    bool enable;                  // 控制器使能
} PIDController_t;

//
// 跟踪误差监视器
//
typedef struct
{
    float32_t followingError;     // 当前跟踪误差 [unit]
    float32_t followingErrorMax;  // 跟踪误差限值 [unit]
    float32_t velocityError;      // 速度误差 [unit/s]
    float32_t velocityErrorMax;   // 速度误差限值 [unit/s]
    
    bool followingErrorTrip;      // 跟踪误差超限标志
    bool velocityErrorTrip;       // 速度误差超限标志
    uint32_t tripCounter;         // 超限计数器
} FollowingErrorMonitor_t;

//
// 电机驱动对象（一个轴可以绑定多个电机）
//
typedef struct
{
    // 电机配置
    uint16_t motorID;             // 电机ID (1=M1, 2=M2, 0xFF=未使用)
    float32_t gearRatio;          // 齿轮比（轴单位/电机单位）
    bool enable;                  // 使能标志
    
    // 位置反馈（电机坐标系）
    float32_t actPosition;        // 实际位置 [motor unit]
    float32_t actVelocity;        // 实际速度 [motor unit/s]
    
    // PID控制器（每个电机独立）
    PIDController_t posPID;       // 位置环PID
    
    // 跟踪误差监视（每个电机独立）
    FollowingErrorMonitor_t followingMonitor;
    
    // 统计信息
    float32_t totalDistance;      // 累计行程
    uint32_t errorCounter;        // 错误次数
} MotorDrive_t;

//
// 运动轴对象（一个轴可以绑定0到多个电机）
//
typedef struct
{
    // 轴配置
    uint16_t axisID;              // 轴ID
    AxisType_e axisType;          // 轴类型
    AxisMode_e axisMode;          // 控制模式
    AxisState_e axisState;        // 轴状态
    
    // 绑定的电机数组（0个=虚拟轴，1个=单轴，2+个=同步轴/龙门轴）
    uint16_t numMotors;           // 绑定的电机数量
    MotorDrive_t motors[MOTION_MAX_MOTORS_PER_AXIS];  // 电机驱动数组
    
    // 轴位置反馈（轴坐标系，综合所有电机）
    float32_t cmdPosition;        // 命令位置 [axis unit]
    float32_t actPosition;        // 实际位置（平均值）[axis unit]
    float32_t cmdVelocity;        // 命令速度 [axis unit/s]
    float32_t actVelocity;        // 实际速度（平均值）[axis unit/s]
    
    // 轨迹规划器（整个轴共享，所有电机读取相同的位置命令）
    TrapezoidalProfile_t profile; // 梯形曲线规划器
    ProfileBuffer_t posBuffer;    // 位置序列缓冲区（共享）
    
    // 统计信息
    uint32_t moveCounter;         // 运动次数
    uint32_t errorCounter;        // 错误次数
    float32_t totalDistance;      // 累计行程
    
    // 采样时间
    float32_t profileUpdateTs;    // 轨迹更新周期 [s]
    float32_t posLoopTs;          // 位置环周期 [s]
    
    // 频率控制（轨迹更新频率 < 位置环频率）
    uint16_t profileUpdateDivider;  // 轨迹更新分频比（例如：5 = 每5次位置环更新1次轨迹）
    uint16_t profileUpdateCounter;  // 轨迹更新计数器
    bool forceProfileUpdate;        // 强制立即更新标志（用于响应命令）
} MotionAxis_t;

//
// 多轴同步组
//
typedef struct
{
    uint16_t groupID;             // 组ID
    uint16_t numAxes;             // 轴数量
    MotionAxis_t *axes[MOTION_MAX_GROUP_AXES];  // 轴指针数组
    
    bool syncEnable;              // 同步使能
    float32_t syncRatio[MOTION_MAX_GROUP_AXES]; // 同步比例
    
    uint32_t syncErrorCount;      // 同步误差计数
} AxisGroup_t;

//*****************************************************************************
// API函数声明
//*****************************************************************************

// ========== 轨迹规划函数 ==========
void TrapProfile_init(TrapezoidalProfile_t *profile, 
                      float32_t maxVel, float32_t maxAccel, float32_t maxDecel);
void TrapProfile_setTarget(TrapezoidalProfile_t *profile, 
                           float32_t currentPos, float32_t currentVel, 
                           float32_t targetPos);
void TrapProfile_compute(TrapezoidalProfile_t *profile);
float32_t TrapProfile_getPosition(TrapezoidalProfile_t *profile, float32_t dt);
float32_t TrapProfile_getVelocity(TrapezoidalProfile_t *profile);
bool TrapProfile_isDone(TrapezoidalProfile_t *profile);
void TrapProfile_stop(TrapezoidalProfile_t *profile, float32_t currentPos, 
                      float32_t currentVel);

// ========== 位置缓冲区函数 ==========
void ProfileBuffer_init(ProfileBuffer_t *buffer);
bool ProfileBuffer_write(ProfileBuffer_t *buffer, float32_t position);
bool ProfileBuffer_read(ProfileBuffer_t *buffer, float32_t *position);
uint16_t ProfileBuffer_getCount(ProfileBuffer_t *buffer);
uint16_t ProfileBuffer_getFreeSpace(ProfileBuffer_t *buffer);
void ProfileBuffer_clear(ProfileBuffer_t *buffer);

// ========== PID控制器函数 ==========
void PID_init(PIDController_t *pid, float32_t Kp, float32_t Ki, float32_t Kd,
              float32_t outMax, float32_t outMin);
float32_t PID_run(PIDController_t *pid, float32_t ref, float32_t fbk);
void PID_reset(PIDController_t *pid);
void PID_setManual(PIDController_t *pid, bool enable, float32_t manualValue);
void PID_setGains(PIDController_t *pid, float32_t Kp, float32_t Ki, float32_t Kd);

// ========== 电机驱动函数 ==========
void MotorDrive_init(MotorDrive_t *motor);
void MotorDrive_config(MotorDrive_t *motor, uint16_t motorID, float32_t gearRatio);
void MotorDrive_setPIDGains(MotorDrive_t *motor, float32_t Kp, float32_t Ki, float32_t Kd);
void MotorDrive_setFollowingErrorLimit(MotorDrive_t *motor, float32_t posError, 
                                       float32_t velError);
void MotorDrive_enable(MotorDrive_t *motor, bool enable);
void MotorDrive_updateControl(MotorDrive_t *motor, float32_t cmdPos, float32_t *velRef);
void MotorDrive_updateFeedback(MotorDrive_t *motor, float32_t actPos, float32_t actVel);
bool MotorDrive_isError(MotorDrive_t *motor);

// ========== 运动轴函数 ==========
void MotionAxis_init(MotionAxis_t *axis, uint16_t axisID, AxisType_e axisType);
void MotionAxis_addMotor(MotionAxis_t *axis, uint16_t motorID, float32_t gearRatio);
void MotionAxis_setMotionParams(MotionAxis_t *axis, float32_t maxVel, 
                                float32_t maxAccel, float32_t maxDecel);
void MotionAxis_setPIDGains(MotionAxis_t *axis, uint16_t motorIndex, 
                            float32_t Kp, float32_t Ki, float32_t Kd);
void MotionAxis_setFollowingErrorLimit(MotionAxis_t *axis, uint16_t motorIndex,
                                       float32_t posError, float32_t velError);
void MotionAxis_enable(MotionAxis_t *axis);
void MotionAxis_disable(MotionAxis_t *axis);
void MotionAxis_moveAbsolute(MotionAxis_t *axis, float32_t targetPos);
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance);
void MotionAxis_stop(MotionAxis_t *axis);
void MotionAxis_emergencyStop(MotionAxis_t *axis);
void MotionAxis_updateProfile(MotionAxis_t *axis);
void MotionAxis_updateControl(MotionAxis_t *axis);
void MotionAxis_updateFeedback(MotionAxis_t *axis, uint16_t motorIndex, 
                               float32_t actPos, float32_t actVel);
bool MotionAxis_isIdle(MotionAxis_t *axis);
bool MotionAxis_isError(MotionAxis_t *axis);
uint16_t MotionAxis_getMotorCount(MotionAxis_t *axis);

// ========== 多轴同步函数 ==========
void AxisGroup_init(AxisGroup_t *group, uint16_t groupID);
void AxisGroup_addAxis(AxisGroup_t *group, MotionAxis_t *axis, float32_t syncRatio);
void AxisGroup_enableSync(AxisGroup_t *group, bool enable);
void AxisGroup_moveAbsolute(AxisGroup_t *group, float32_t targetPos);
void AxisGroup_stop(AxisGroup_t *group);

// ========== 跟踪误差监视函数 ==========
void FollowingError_init(FollowingErrorMonitor_t *monitor, 
                         float32_t posErrorMax, float32_t velErrorMax);
void FollowingError_update(FollowingErrorMonitor_t *monitor, 
                           float32_t cmdPos, float32_t actPos,
                           float32_t cmdVel, float32_t actVel);
bool FollowingError_isTrip(FollowingErrorMonitor_t *monitor);
void FollowingError_reset(FollowingErrorMonitor_t *monitor);

#endif // MOTION_CONTROL_H

//
// End of File
//

