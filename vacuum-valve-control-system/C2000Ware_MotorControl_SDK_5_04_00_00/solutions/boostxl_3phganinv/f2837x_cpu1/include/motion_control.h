/*
 * @Author: qiaozhifeng-IndustryComputer qiaozhifeng@163.com
 * @Date: 2025-12-27 23:19:15
 * @LastEditors: qiaozhifeng-IndustryComputer qiaozhifeng@163.com
 * @LastEditTime: 2026-01-15 01:29:14
 * @FilePath: \C2000Ware_MotorControl_SDK_5_04_00_00\solutions\boostxl_3phganinv\f2837x_cpu1\include\motion_control.h
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
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

// 缓冲区填充策略配置
#define MOTION_TARGET_BUFFER_SIZE   20   // 目标缓冲大小（20ms）
#define MOTION_MIN_BUFFER_SIZE      8    // 最小缓冲大小（8ms安全余量）
#define MOTION_KEEP_POINTS          10   // 截断时保留点数（10ms防止欠载）

// 并发保护配置
#define MOTION_MAX_WAIT_ITERATIONS  10000  // 最大等待迭代次数（防止死锁）

// 缓冲区状态监控配置
#define MOTION_BUFFER_EMPTY_WARNING_THRESHOLD   10   // 缓冲区空警告阈值
#define MOTION_BUFFER_EMPTY_ERROR_THRESHOLD     100  // 缓冲区空错误阈值

// 调试配置
#define MOTION_DEBUG_COUNTER_PERIOD 100  // 调试信息输出周期

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
    float32_t emergencyDecel;     // 急停减速度（0=非急停，>0=急停状态）[unit/s^2]
    float32_t jerkTime;           // S曲线时间（0=梯形，>0=S曲线）[s]

    // 当前状态
    float32_t currentPos;         // 当前位置 [unit]
    float32_t currentVel;         // 当前速度 [unit/s]
    float32_t currentAccel;       // 当前加速度 [unit/s^2] (用于加速度连续性）
    float32_t startPos;           // 轨迹起始位置 [unit] (保存原始位置，不被修改）
    float32_t startVelocity;      // 轨迹起始速度(绝对值) [unit/s] (用于加速段计算)
    float32_t startAccel;         // 轨迹起始加速度 [unit/s^2] (用于加速度连续型）
    float32_t targetPos;          // 目标位置 [unit]
    float32_t peakVelocity;       // 实际峰值速度 [unit/s] (三角形曲线时<maxVelocity)

    // 下一次规划的起始点（保证轨迹连续性）
    float32_t nextPlanPos;        // 下一次规划的起始位置 [unit]
    float32_t nextPlanVel;        // 下一次规划的起始速度 [unit/s]

    // 轨迹段时间计数
    float32_t accelTransTime;     // 加速度过渡时间（起始加速度不为0时）[s]
    float32_t accelTransEndPos;   // 加速度过渡结束位置 [unit]
    float32_t reverseDecelTime;   // 反向减速时间（速度反向时需要先减速到0）[s]
    float32_t accelTime;          // 加速时间[s]
    float32_t constTime;          // 匀速时间[s]
    float32_t decelTime;          // 减速时间[s]
    float32_t totalTime;          // 总时间[s]

    // S型曲线专用时间段（7段式）
    float32_t tj1;                // 加速段-加加速时间[s]
    float32_t ta;                 // 加速段-匀加速时间[s]
    float32_t tj2;                // 加速段-减加速时间[s]
    float32_t tv;                 // 匀速段时间 [s]
    float32_t tjd1;               // 减速段-加减速时间[s]
    float32_t td;                 // 减速段-匀减速时间[s]
    float32_t tjd2;               // 减速段-减减速时间[s]
    float32_t actualJerk;         // 实际加加速度 [unit/s^3] (用于显示)
    
    // 停止命令专用：Phase0后的加速度（用于Phase1-3计算）
    float32_t accelAfterPhase0;   // Phase0后的加速度 [unit/s^2]
    
    // REVERSE/OVERSHOOT模式：Phase1-3停止阶段的实际时间参数
    float32_t stopTjd1;           // 停止阶段-加减速时间[s]
    float32_t stopTd;             // 停止阶段-匀减速时间[s]
    float32_t stopTjd2;           // 停止阶段-减减速时间[s]

    // 实际使用的运动参数（保存规划时的值，避免被外部修改影响）
    float32_t actualMaxVelocity;  // 实际最大速度 [unit/s]
    float32_t actualAccel;        // 实际加速度 [unit/s^2]
    float32_t actualDecel;        // 实际减速度 [unit/s^2]
    
    // 上次规划时的配置参数快照（用于参数变化检测）
    float32_t configuredMaxVel;   // 上次配置的最大速度
    float32_t configuredAccel;    // 上次配置的加速度
    float32_t configuredDecel;    // 上次配置的减速度

    // 轨迹段位置点
    float32_t reverseDecelEndPos; // 反向减速结束位置（速度=0的位置）
    float32_t accelEndPos;        // 加速结束位置
    float32_t decelStartPos;      // 减速开始位置

    // 运行状态
    ProfileState_e state;         // 当前轨迹状
    float32_t elapsedTime;        // 已运行时间[s]
    uint32_t updateCounter;       // 更新计数器

    // 标志
    bool isComputed;              // 轨迹已计算
    bool isActive;                // 轨迹激活
    bool isStopCommand;           // 停止命令标志（用于区分停止和普通运动）
    bool isMicroMotion;           // 微小运动标志（使用简化线性轨迹）
} TrapezoidalProfile_t;

//
// 位置序列缓冲区（环形FIFO）
// 同时存储位置和速度，确保二者严格对应
//
typedef struct
{
    float32_t posBuffer[MOTION_PROFILE_BUFFER_SIZE];  // 位置缓冲区
    float32_t velBuffer[MOTION_PROFILE_BUFFER_SIZE];  // 速度缓冲区（与位置对应）
    float32_t accelBuffer[MOTION_PROFILE_BUFFER_SIZE]; // 加速度缓冲区（与位置对应）
    float32_t jerkBuffer[MOTION_PROFILE_BUFFER_SIZE];  // 加加速度缓冲区（与位置对应）
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
    float32_t followingErrorMax;  // 跟踪误差限值[unit]
    float32_t velocityError;      // 速度误差 [unit/s]
    float32_t velocityErrorMax;   // 速度误差限值[unit/s]

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
    uint16_t motorID;             // 电机ID (1=M1, 2=M2, 0xFF=未使用）
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
    float32_t cmdPosition;        // 命令位置 [axis unit] - 当前执行的插补点
    float32_t actPosition;        // 实际位置（平均值）[axis unit]
    float32_t cmdVelocity;        // 命令速度 [axis unit/s] - 当前执行速度
    float32_t actVelocity;        // 实际速度（平均值）[axis unit/s]
    float32_t cmdAcceleration;    // 命令加速度 [axis unit/s^2] - 当前执行加速度

    // 运动目标（用户发起运动命令时的目标）
    float32_t targetPosition;     // 目标位置 [axis unit] - 运动规划的终点
    float32_t targetVelocity;     // 目标速度 [axis unit/s] - 到达目标时的速度（通常为0）

    // 轨迹规划器（整个轴共享，所有电机读取相同的位置命令）
    TrapezoidalProfile_t profile; // 梯形曲线规划器
    ProfileBuffer_t posBuffer;    // 位置序列缓冲区（共享）

    // 统计信息
    uint32_t moveCounter;         // 运动次数
    uint32_t errorCounter;        // 错误次数
    float32_t totalDistance;      // 累计行程

    // 采样时间
    float32_t profileUpdateTs;    // 轨迹更新周期 [s]
    float32_t posLoopTs;          // 位置环周期[s]

    // 频率控制（轨迹更新频率 < 位置环频率）
    uint16_t profileUpdateDivider;  // 轨迹更新分频比（例如：5 = 每5次位置环更新1次轨迹）
    uint16_t profileUpdateCounter;  // 轨迹更新计数器
    bool forceProfileUpdate;        // 强制立即更新标志（用于响应命令）

    // 并发保护标志（用于多线程/中断环境）
    bool isReplanning;              // 正在重新规划标志（运动指令设置，updateProfile检查）
    bool isUpdating;                // 正在更新buffer标志（updateProfile设置，运动指令检查）
} MotionAxis_t;

//
// 多轴同步组
//
typedef struct
{
    uint16_t groupID;             // 组ID
    uint16_t numAxes;             // 轴数量
    MotionAxis_t* axes[MOTION_MAX_GROUP_AXES];  // 轴指针数组

    bool syncEnable;              // 同步使能
    float32_t syncRatio[MOTION_MAX_GROUP_AXES]; // 同步比例

    uint32_t syncErrorCount;      // 同步误差计数
} AxisGroup_t;

//*****************************************************************************
// API函数声明
//*****************************************************************************

// ========== 轨迹规划函数 ==========
void TrapProfile_init(TrapezoidalProfile_t* profile,
    float32_t maxVel, float32_t maxAccel, float32_t maxDecel);
void TrapProfile_setTarget(TrapezoidalProfile_t* profile,
    float32_t currentPos, float32_t currentVel,
    float32_t targetPos);
void TrapProfile_compute(TrapezoidalProfile_t* profile);
void TrapProfile_setJerkTime(TrapezoidalProfile_t* profile, float32_t jerkTime);
float32_t TrapProfile_getPosition(TrapezoidalProfile_t* profile, float32_t dt);
float32_t TrapProfile_getVelocity(TrapezoidalProfile_t* profile);
float32_t TrapProfile_getAcceleration(TrapezoidalProfile_t* profile);
float32_t TrapProfile_getJerk(TrapezoidalProfile_t* profile);
bool TrapProfile_isDone(TrapezoidalProfile_t* profile);
void TrapProfile_stop(TrapezoidalProfile_t* profile, float32_t currentPos,
    float32_t currentVel, float32_t currentAccel, float32_t profileUpdateTs);
float32_t TrapProfile_getTotalTime(TrapezoidalProfile_t* profile);
float32_t TrapProfile_getElapsedTime(TrapezoidalProfile_t* profile);

// ========== 位置缓冲区函数==========
void ProfileBuffer_init(ProfileBuffer_t* buffer);
bool ProfileBuffer_write(ProfileBuffer_t* buffer, float32_t position, float32_t velocity, float32_t acceleration);
bool ProfileBuffer_read(ProfileBuffer_t* buffer, float32_t* position, float32_t* velocity);
uint16_t ProfileBuffer_getCount(ProfileBuffer_t* buffer);
uint16_t ProfileBuffer_getFreeSpace(ProfileBuffer_t* buffer);
void ProfileBuffer_clear(ProfileBuffer_t* buffer);
void ProfileBuffer_truncate(ProfileBuffer_t* buffer, uint16_t keepCount);

// ========== PID控制器函数==========
void PID_init(PIDController_t* pid, float32_t Kp, float32_t Ki, float32_t Kd,
    float32_t outMax, float32_t outMin);
float32_t PID_run(PIDController_t* pid, float32_t ref, float32_t fbk);
void PID_reset(PIDController_t* pid);
void PID_setManual(PIDController_t* pid, bool enable, float32_t manualValue);
void PID_setGains(PIDController_t* pid, float32_t Kp, float32_t Ki, float32_t Kd);

// ========== 电机驱动函数 ==========
void MotorDrive_init(MotorDrive_t* motor);
void MotorDrive_config(MotorDrive_t* motor, uint16_t motorID, float32_t gearRatio);
void MotorDrive_setPIDGains(MotorDrive_t* motor, float32_t Kp, float32_t Ki, float32_t Kd);
void MotorDrive_setFollowingErrorLimit(MotorDrive_t* motor, float32_t posError,
    float32_t velError);
void MotorDrive_enable(MotorDrive_t* motor, bool enable);
void MotorDrive_updateControl(MotorDrive_t* motor, float32_t cmdPos, float32_t* velRef);
void MotorDrive_updateFeedback(MotorDrive_t* motor, float32_t actPos, float32_t actVel);
bool MotorDrive_isError(MotorDrive_t* motor);

// ========== 运动轴函数==========
// 指针方式API（用于跨语言调用，避免P/Invoke结构体同步问题）
MotionAxis_t* MotionAxis_create(uint16_t axisID, AxisType_e axisType);
void MotionAxis_destroy(MotionAxis_t* axis);

// 原有API保持不变
void MotionAxis_init(MotionAxis_t* axis, uint16_t axisID, AxisType_e axisType);
void MotionAxis_addMotor(MotionAxis_t* axis, uint16_t motorID, float32_t gearRatio);
void MotionAxis_setMotionParams(MotionAxis_t* axis, float32_t maxVel,
    float32_t maxAccel, float32_t maxDecel);
void MotionAxis_setJerkTime(MotionAxis_t* axis, float32_t jerkTime);
void MotionAxis_setPIDGains(MotionAxis_t* axis, uint16_t motorIndex,
    float32_t Kp, float32_t Ki, float32_t Kd);
void MotionAxis_setFollowingErrorLimit(MotionAxis_t* axis, uint16_t motorIndex,
    float32_t posError, float32_t velError);
void MotionAxis_setProfileUpdateTs(MotionAxis_t* axis, float32_t ts);
void MotionAxis_enable(MotionAxis_t* axis);
void MotionAxis_disable(MotionAxis_t* axis);
int MotionAxis_getState(MotionAxis_t* axis);
void MotionAxis_moveAbsolute(MotionAxis_t* axis, float32_t targetPos);
void MotionAxis_moveRelative(MotionAxis_t* axis, float32_t distance);
void MotionAxis_stop(MotionAxis_t* axis);
void MotionAxis_emergencyStop(MotionAxis_t* axis);
void MotionAxis_updateProfile(MotionAxis_t* axis);
void MotionAxis_updateControl(MotionAxis_t* axis);
void MotionAxis_updateFeedback(MotionAxis_t* axis, uint16_t motorIndex,
    float32_t actPos, float32_t actVel);
bool MotionAxis_isIdle(MotionAxis_t* axis);
bool MotionAxis_isError(MotionAxis_t* axis);
uint16_t MotionAxis_getMotorCount(MotionAxis_t* axis);
AxisType_e MotionAxis_getAxisType(MotionAxis_t* axis);
AxisState_e MotionAxis_getAxisState(MotionAxis_t* axis);
float32_t MotionAxis_getCmdPosition(MotionAxis_t* axis);
float32_t MotionAxis_getActPosition(MotionAxis_t* axis);
float32_t MotionAxis_getCmdVelocity(MotionAxis_t* axis);
float32_t MotionAxis_getActVelocity(MotionAxis_t* axis);
float32_t MotionAxis_getTargetPosition(MotionAxis_t* axis);
float32_t MotionAxis_getTargetVelocity(MotionAxis_t* axis);
uint16_t MotionAxis_getBufferCount(MotionAxis_t* axis);
ProfileState_e MotionAxis_getProfileState(MotionAxis_t* axis);

// ========== 电机驱动状态获取函数==========
float32_t MotorDrive_getActPosition(MotionAxis_t* axis, uint16_t motorIndex);
float32_t MotorDrive_getActVelocity(MotionAxis_t* axis, uint16_t motorIndex);
float32_t MotorDrive_getActAcceleration(MotionAxis_t* axis, uint16_t motorIndex);
float32_t MotorDrive_getActJerk(MotionAxis_t* axis, uint16_t motorIndex);
float32_t MotorDrive_getPIDKp(MotionAxis_t* axis, uint16_t motorIndex);
bool MotorDrive_isPIDEnabled(MotionAxis_t* axis, uint16_t motorIndex);
bool MotorDrive_isEnabled(MotionAxis_t* axis, uint16_t motorIndex);
uint32_t MotorDrive_getErrorCounter(MotionAxis_t* axis, uint16_t motorIndex);

// 轨迹诊断getter函数
float32_t MotionAxis_getTotalTime(MotionAxis_t* axis);
float32_t MotionAxis_getElapsedTime(MotionAxis_t* axis);
float32_t MotionAxis_getProfileUpdateTs(MotionAxis_t* axis);
uint16_t MotionAxis_getBufferFreeSpace(MotionAxis_t* axis);

// ========== 多轴同步函数 ==========
void AxisGroup_init(AxisGroup_t* group, uint16_t groupID);
void AxisGroup_addAxis(AxisGroup_t* group, MotionAxis_t* axis, float32_t syncRatio);
void AxisGroup_enableSync(AxisGroup_t* group, bool enable);
void AxisGroup_moveAbsolute(AxisGroup_t* group, float32_t targetPos);
void AxisGroup_stop(AxisGroup_t* group);

// ========== 跟踪误差监视函数 ==========
void FollowingError_init(FollowingErrorMonitor_t* monitor,
    float32_t posErrorMax, float32_t velErrorMax);
void FollowingError_update(FollowingErrorMonitor_t* monitor,
    float32_t cmdPos, float32_t actPos,
    float32_t cmdVel, float32_t actVel);
bool FollowingError_isTrip(FollowingErrorMonitor_t* monitor);
void FollowingError_reset(FollowingErrorMonitor_t* monitor);

#endif // MOTION_CONTROL_H

//
// End of File
//
