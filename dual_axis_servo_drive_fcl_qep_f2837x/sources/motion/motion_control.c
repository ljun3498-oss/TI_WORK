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
#include "scurve_profile.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>  // for malloc/free
#include <stdio.h>   // for sprintf (debug)

// 调试日志文件（全局共享，供scurve_profile.c使用）
FILE* g_motion_debug_log = NULL;

#define DEBUG_PRINT(fmt, ...) do { \
    if(g_motion_debug_log == NULL) { \
        errno_t err = fopen_s(&g_motion_debug_log, "C:\\temp\\motion_debug.log", "w"); \
        if(err != 0 || g_motion_debug_log == NULL) { \
            fopen_s(&g_motion_debug_log, "motion_debug.log", "w"); \
        } \
    } \
    if(g_motion_debug_log != NULL) { \
        fprintf(g_motion_debug_log, fmt, ##__VA_ARGS__); \
        fflush(g_motion_debug_log); \
    } \
} while(0)

//*****************************************************************************
// 数学宏定义
//*****************************************************************************
#define ABS(x)      ((x) < 0.0f ? -(x) : (x))
#define SIGN(x)     ((x) < 0.0f ? -1.0f : 1.0f)
#define MIN(a, b)   ((a) < (b) ? (a) : (b))
#define MAX(a, b)   ((a) > (b) ? (a) : (b))
#define SQUARE(x)   ((x) * (x))
#define CUBE(x)     ((x) * (x) * (x))

//*****************************************************************************
// S型曲线常量定义
//*****************************************************************************
#define SCURVE_MIN_JERK         1000.0f     // 最小加加速度 [unit/s^3]
#define SCURVE_DEFAULT_JERK     50000.0f    // 默认加加速度 [unit/s^3]
#define SCURVE_EPSILON          1e-6f       // 浮点数比较精度
#define SCURVE_MIN_TIME         1e-4f       // 最小时间段（0.1ms）

//*****************************************************************************
// 梯形速度曲线规划函数实现
//*****************************************************************************

//
// TrapProfile_init - 初始化曲线规划器（默认梯形曲线）
//
void TrapProfile_init(TrapezoidalProfile_t *profile, 
                      float32_t maxVel, float32_t maxAccel, float32_t maxDecel)
{
    memset(profile, 0, sizeof(TrapezoidalProfile_t));
    
    // 基本运动参数
    profile->maxVelocity = maxVel;
    profile->maxAccel = maxAccel;
    profile->maxDecel = maxDecel;
    profile->jerkTime = 0.0f;  // 默认为0表示梯形曲线，>0表示S型曲线
    
    // 初始化配置参数快照
    profile->configuredMaxVel = maxVel;
    profile->configuredAccel = maxAccel;
    profile->configuredDecel = maxDecel;
    
    // 目标速度（默认0，停止到位；可被 setTargetVelocity 修改）
    profile->targetVelocity = 0.0f;
    
    // 状态初始化
    profile->state = PROFILE_IDLE;
    profile->isComputed = false;
    profile->isActive = false;
}

//
// TrapProfile_computeSCurve - S型曲线规划计算（内部函数）
//
static void TrapProfile_computeSCurve(TrapezoidalProfile_t *profile)
{
#if USE_SCURVE_PROFILE
    // 调用独立的S型曲线规划模块
    SCurve_computeProfile(profile);
#else
    // S型曲线功能未启用，回退到梯形曲线
    // 此处不应到达，因为TrapProfile_compute会先判断jerkTime
    profile->isComputed = false;
#endif
    return;
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
    
    // **关键修复**：保留startVelocity的真实符号（包括负值）
    profile->startVelocity = currentVel;
    
    profile->isComputed = false;
    profile->updateCounter++;
}

// TrapProfile_setTargetVelocity - 设置目标速度（用于速度变化轨迹）
// vEnd=0: 减速到0停止（普通停止）
// vEnd>0: 减速到vEnd后继续运动到targetPos（如速度变化场景）
//
void TrapProfile_setTargetVelocity(TrapezoidalProfile_t *profile, float32_t targetVelocity)
{
    profile->targetVelocity = targetVelocity;
    profile->isComputed = false;  // 需要重新计算
    profile->updateCounter++;
}

//
// TrapProfile_compute - 计算轨迹参数（支持梯形和S型曲线）
//
void TrapProfile_compute(TrapezoidalProfile_t *profile)
{
    DEBUG_PRINT("\n[TrapProfile_compute] jerkTime=%.4f %s\n", 
           profile->jerkTime, 
           (profile->jerkTime > 0.0001f) ? "=> S型曲线" : "=> 梯形曲线");
    
    // 根据jerkTime判断曲线类型：jerkTime > 0 使用S型曲线
#if USE_SCURVE_PROFILE
    if(profile->jerkTime > 0.0001f)
    {
        TrapProfile_computeSCurve(profile);
        return;
    }
#else
    // S型曲线功能未启用，强制使用梯形曲线
    if(profile->jerkTime > 0.0001f)
    {
        DEBUG_PRINT("[Warning] S-Curve disabled, using Trapezoidal profile\n");
        profile->jerkTime = 0.0f;  // 强制设为0，使用梯形曲线
    }
#endif
    
    // 以下是梯形曲线的计算逻辑
    float32_t distance, direction;
    float32_t accelDist, decelDist, constDist;
    float32_t vStart, vMax, vEnd;
    
    // 计算运动距离和方向
    distance = profile->targetPos - profile->currentPos;
    direction = SIGN(distance);
    distance = ABS(distance);
    
    // 保存原始起始位置（不被修改，用于反向减速段计算）
    profile->startPos = profile->currentPos;
    
    // 保存实际使用的运动参数（maxVelocity、maxAccel、maxDecel）
    // 这样即使外部修改这些参数，也不会影响已规划轨迹的计算
    profile->actualMaxVelocity = profile->maxVelocity;
    profile->actualAccel = profile->maxAccel;
    
    // **关键修复**：急停时使用emergencyDecel
    if(profile->emergencyDecel > 0.1f)
    {
        profile->actualDecel = profile->emergencyDecel;
        DEBUG_PRINT("[TrapProfile_compute] Using emergencyDecel=%.2f\n", profile->emergencyDecel);
    }
    else
    {
        profile->actualDecel = profile->maxDecel;
    }
    
    // 起始速度和目标速度
    // currentVel是带符号的（从buffer读取），direction是运动方向
    vStart = profile->currentVel;  // 保持带符号
    vMax = profile->actualMaxVelocity;  // 使用实际保存的最大速度
    
    // 【关键修复】：使用 targetVelocity 决定目标速度
    // vEnd = 0: 减速到0停止（普通停止）
    // vEnd > 0: 减速到vEnd后继续运动（如速度变化场景）
    vEnd = profile->targetVelocity;
    
    // 【速度变化处理】：vStart > vMax
    // 当前速度超过新maxVelocity时，需要先减速到vMax（或targetVelocity）
    if(vStart > vMax && vStart > 0.0f)
    {
        // 有足够距离：减速到vMax（或targetVelocity）后继续向目标运动
        // vEnd 已经是 targetVelocity（默认0，可被 setTargetVelocity 修改）
        // 这里只需要确保 vEnd <= vMax（减速到的速度不能超过vMax）
        if(vEnd > vMax) vEnd = vMax;
        
        DEBUG_PRINT("[TrapProfile_compute] Velocity-Change: vStart=%.1f > vMax=%.1f, vEnd=%.1f\n",
                   vStart, vMax, vEnd);
    }
    else
    {
        // 正常情况：vEnd 保持为 targetVelocity（默认0.0f）
        if(vEnd < 0.0f) vEnd = 0.0f;  // 确保 vEnd 非负
    }
    
    // 如果起始速度与运动方向相反，需要先减速到0再反向加速
    if(vStart * direction < 0)
    {
        // 速度方向与运动方向相反，先减速到0
        float32_t stopTime = ABS(vStart) / profile->actualDecel;
        float32_t stopDist = ABS(vStart) * stopTime * 0.5f;
        
        // 保存反向减速段信息
        profile->reverseDecelTime = stopTime;
        profile->reverseDecelEndPos = profile->currentPos + vStart * stopTime * 0.5f;
        
        // 调整起始位置和距离（反向减速后从该位置开始正向加速）
        profile->currentPos = profile->reverseDecelEndPos;
        distance += stopDist;  // 需要额外的距离来停止
        vStart = 0.0f;  // 从0开始加速
    }
    else
    {
        // 速度方向与运动方向相同或速度为0，取绝对值用于计算
        profile->reverseDecelTime = 0.0f;  // 无反向减速段
        profile->reverseDecelEndPos = profile->currentPos;
        vStart = ABS(vStart);
    }
    
    // 保存起始速度（梯形曲线中，此时vStart已经是绝对值）
    profile->startVelocity = vStart;
    
    // 计算加速和减速距离
    accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->actualAccel);
    decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->actualDecel);
    
    // 【诊断日志】：输出初始状态（用于定位问题）
    DEBUG_PRINT("[TrapProfile_compute] INIT: vStart=%.1f, vEnd=%.1f, vMax=%.1f, accelDist=%.2f, decelDist=%.2f, distance=%.1f, cond1=%d, cond2=%d\n",
               vStart, vEnd, vMax, accelDist, decelDist, distance,
               (int)(vStart > vMax), (int)(accelDist + decelDist > distance));
    if(vStart > vMax)
    {
        DEBUG_PRINT("[TrapProfile_compute] ENTERING VELOCITY-CHANGE CASE\n");
    }
    
    // ===== 速度变化处理：vStart > vMax > vEnd =====
    // 这是"减速到新速度继续运动"的情况，需要特殊处理
    // 速度曲线：vStart(500) -> 减速到 vMax(400) -> 匀速 -> 减速到 vEnd(0)
    // 注意：vStart > vMax 时，accelDist < 0，这部分距离是"负加速"（减速）
    // 真正的匀速段从"vMax 已达到"时开始
    if(vStart > vMax)
    {
        // 【核心理解】：accelDist < 0 意味着"从vStart减速到vMax"
        // 这部分距离是减速过程的距离，不是加速
        // constDist 应该从 vMax 达到后开始计算
        accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->actualAccel);  // 负值！
        decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->actualDecel);
        
        float32_t s_needed = ABS(accelDist) + decelDist;  // 需要从"减速"和"最终减速"的总距离
        
        if(s_needed > distance)
        {
            // 三角形：vStart > vPeak > vMax，无匀速段
            // 求解：找到恰好用完 distance 的 vPeak
            // s_total = (vStart²-vPeak²)/(2*J) + (vPeak²-vEnd²)/(2*K)
            // 其中 J=actualAccel, K=actualDecel
            // 整理后：vPeak²*(1/2J + 1/2K) - vPeak*vStart/2J + (vStart²/2J - vEnd²/2K - distance) = 0
            float32_t J = profile->actualAccel;
            float32_t K = profile->actualDecel;
            // 【修复】：当 vStart > vMax 时，不需要限制 vMax！
            // vPeak 应该是满足距离约束的最优峰值（可能 > 或 < maxVelocity）
            // 这里的"减速到vMax再加速"实际上变成了"减速到vPeak再减速到vEnd"
            // 所以 vMax 可以 < profile->maxVelocity
            float32_t discriminant = J * vStart * vStart + K * vEnd * vEnd - 
                                   2.0f * J * K * distance;
            if(discriminant >= 0.0f)
            {
                // 使用简化公式：vPeak = (J*vStart + sqrt(D)) / (J+K)
                float32_t vPeak = (J * vStart + sqrtf(discriminant)) / (J + K);
                vPeak = MAX(vPeak, vEnd);  // 确保 vPeak >= vEnd
                // vMax 存储峰值速度（用于后续的 profile 字段）
                // 注意：当 vPeak > vMax 时，实际峰值 > maxVelocity
                // 这表示"无法在达到 maxVelocity 前减速到 vEnd"，需要退化为匀减速
                if(vPeak > vMax)
                {
                    // 无法在不超速的情况下用完距离，退化为纯减速
                    // 重新计算：只减速到 vEnd，不用匀速段
                    vPeak = sqrtf(vStart * vStart - 2.0f * J * distance);
                    vPeak = MAX(vPeak, vEnd);
                }
                vMax = vPeak;
                DEBUG_PRINT("[TrapProfile_compute] Triangle: vPeak=%.1f (was %.1f)\n", vPeak, profile->maxVelocity);
            }
            else
            {
                vMax = vEnd;  // 距离不够，只能减速到vEnd
                DEBUG_PRINT("[TrapProfile_compute] Triangle: discriminant<0, degenerate to stop at vEnd=%.1f\n", vEnd);
            }
            accelDist = (vMax * vMax - vStart * vStart) / (2.0f * J);  // 负值
            decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * K);
            constDist = 0.0f;
        }
        else
        {
            // 梯形：有匀速段
            // constDist = distance - ABS(accelDist) - decelDist
            constDist = distance - ABS(accelDist) - decelDist;
        }
        
        DEBUG_PRINT("[TrapProfile_compute] Velocity-Change: vStart=%.1f->vMax=%.1f->vEnd=%.1f, s_needed=%.1f, accelDist=%.2f, constDist=%.2f, decelDist=%.2f\n",
                   vStart, vMax, vEnd, s_needed, accelDist, constDist, decelDist);
    }
    // ===== 正常梯形曲线：vStart < vMax（加速到vMax，或匀速）=====
    else if(vStart < vMax - 0.01f)  // 需要加速（0.01容差避免浮点误差）
    {
        accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->actualAccel);
        decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->actualDecel);
        
        if(accelDist + decelDist > distance)
        {
            // 三角形：无法达到vMax
            float32_t vPeak = sqrtf((2.0f * profile->actualAccel * profile->actualDecel * distance + 
                                     profile->actualDecel * vStart * vStart + 
                                     profile->actualAccel * vEnd * vEnd) / 
                                    (profile->actualAccel + profile->actualDecel));
            vMax = MIN(vPeak, profile->maxVelocity);
            accelDist = (vMax * vMax - vStart * vStart) / (2.0f * profile->actualAccel);
            decelDist = (vMax * vMax - vEnd * vEnd) / (2.0f * profile->actualDecel);
            constDist = 0.0f;
        }
        else
        {
            // 梯形
            constDist = distance - accelDist - decelDist;
        }
    }
    else
    {
        // vStart ≈ vMax 或 vStart > vMax 已由上面处理
        // 纯匀速或纯减速到vEnd
        accelDist = 0.0f;
        constDist = distance - decelDist;
        if(constDist < 0.0f)
        {
            constDist = 0.0f;
            // 距离不够减速到vEnd，只能减速到中间速度
            float32_t vMid = sqrtf(vStart * vStart - 2.0f * profile->actualDecel * distance);
            if(vMid < vEnd) vMid = vEnd;
            decelDist = (vStart * vStart - vMid * vMid) / (2.0f * profile->actualDecel);
        }
    }
    
    // 计算时间
    // 【修复】：当 vStart > vMax 时（减速到更低速度），accelTime < 0
    // 这时 "Phase A" 是减速过程，不是加速过程
    // 正确的阶段划分：
    // - Phase A (accelTime): 从 vStart 减速到 vMax（时间 = |vStart-vMax| / accel）
    // - Phase B (constTime): 匀速
    // - Phase C (decelTime): 从 vMax 减速到 vEnd
    // 所以 accelTime 应该取绝对值！
    profile->accelTime = (vMax - vStart) / profile->actualAccel;  // 可能为负
    profile->accelTime = ABS(profile->accelTime);  // 【修复】：取绝对值，确保非负
    profile->constTime = constDist / (vMax > 0 ? vMax : 1.0f);  // 避免除零
    profile->decelTime = ABS(vMax - vEnd) / profile->actualDecel;  // 【修复】：取绝对值
    profile->totalTime = profile->reverseDecelTime + profile->accelTime + profile->constTime + profile->decelTime;
        // 【诊断日志】：输出关键计算值
        DEBUG_PRINT("[TrapProfile_compute] RESULT: vStart=%.1f, vEnd=%.1f, vMax=%.1f, peakVel=%.1f\n",
            vStart, vEnd, vMax, vMax);
        DEBUG_PRINT("[TrapProfile_compute] distance=%.1f, accelDist=%.2f, decelDist=%.2f, constDist=%.2f\n",
            distance, accelDist, decelDist, constDist);
        DEBUG_PRINT("[TrapProfile_compute] accelTime=%.3f, constTime=%.3f, decelTime=%.3f, totalTime=%.3f\n",
            profile->accelTime, profile->constTime, profile->decelTime, profile->totalTime);
        DEBUG_PRINT("[TrapProfile_compute] direction=%.1f, reverseDecelTime=%.3f, reverseDecelEndPos=%.2f\n",
            direction, profile->reverseDecelTime, profile->reverseDecelEndPos);
        DEBUG_PRINT("[TrapProfile_compute] accelEndPos=%.2f, decelStartPos=%.2f, targetPos=%.2f\n",
            profile->accelEndPos, profile->decelStartPos, profile->targetPos);
    // 保存实际峰值速度（三角形曲线时可能小于maxVelocity）
    // 注意：对于纯减速轨迹（如急停），vMax等于vStart，这里需要保存起始速度
    profile->peakVelocity = vMax;
    
    // 计算各段位置点（考虑方向）
    // 注意：accelEndPos等是基于reverseDecelEndPos的，不是原始currentPos
    //
    // 【修复】：当 accelDist < 0 时（速度从高往低走，如"减速到新速度继续运动"），
    // 原公式 accelEndPos = revDecelEndPos + dir*accelDist 会导致错误
    // 因为 accelDist 为负时，向"后"走，而实际应该向"前"走（只是速度在降低）
    // 正确公式：accelEndPos = revDecelEndPos + dir * ABS(accelDist)
    if(accelDist < 0.0f)
    {
        // 减速型：向运动方向走 ABS(accelDist) 的距离
        profile->accelEndPos = profile->reverseDecelEndPos + direction * ABS(accelDist);
    }
    else
    {
        // 加速型：原公式
        profile->accelEndPos = profile->reverseDecelEndPos + direction * accelDist;
    }
    profile->decelStartPos = profile->accelEndPos + direction * constDist;

    // 保存accelDist（带符号，用于区分加速型和减速型轨迹）
    profile->accelDist = accelDist;

    // 重置时间计数器
    profile->elapsedTime = 0.0f;
    profile->state = PROFILE_ACCEL;
    profile->isComputed = true;
    profile->isActive = true;
}

//
// TrapProfile_getPositionSCurve - S型曲线位置计算（内部函数）
// 现在直接调用新的SCurve_getPosition
//
static float32_t TrapProfile_getPositionSCurve(TrapezoidalProfile_t *profile, float32_t t)
{
#if USE_SCURVE_PROFILE
    // 直接调用新架构的位置计算函数
    return SCurve_getPosition(profile, t);
#else
    // S型曲线功能未启用，返回当前位置
    return profile->currentPos;
#endif
}





//
// TrapProfile_getPosition - 获取当前时刻的位置命令
//
float32_t TrapProfile_getPosition(TrapezoidalProfile_t *profile, float32_t dt)
{
    float32_t position;
    float32_t t, direction;
    float32_t initialVel;
    
    if(!profile->isActive)
    {
        // **关键修复**：轨迹已完成时，返回 targetPos 而不是 currentPos
        // 原因：currentPos 在轨迹开始时被设置为 startPos，从未被更新为 targetPos
        // 如果返回 currentPos（起始位置），会导致位置跳变到起始位置！
        return profile->targetPos;
    }
    
    // **关键修复**：允许dt=0（用于第一个点的状态连续性）
    // 但如果dt是一个很小的非零值，则认为是错误并使用默认值
    if(dt > 0.0f && dt < 0.0001f)
    {
        dt = 0.010f;  // Fallback to 10ms（仅当dt在(0, 0.0001)之间时）
    }
    
    // Update time
    profile->elapsedTime += dt;
    t = profile->elapsedTime;
    
    // S型曲线使用专用计算函数
    if(profile->jerkTime > 0.0001f)
    {
        position = TrapProfile_getPositionSCurve(profile, t);
        
        // 更新状态
        if(t >= profile->totalTime)
        {
            profile->state = PROFILE_DONE;
            profile->isActive = false;
        }
        else if(t <= profile->tj1 + profile->ta + profile->tj2)
        {
            profile->state = PROFILE_ACCEL;
        }
        else if(t <= profile->tj1 + profile->ta + profile->tj2 + profile->tv)
        {
            profile->state = PROFILE_CONST;
        }
        else
        {
            profile->state = PROFILE_DECEL;
        }
        
        return position;
    }
    
    // 以下是梯形曲线的计算逻辑
    
    // **关键修复**：急停时使用emergencyDecel，否则使用actualDecel
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->actualDecel;
    
    // 方向（最终运动方向）
    direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    
    // 初始速度（可能为负）
    initialVel = profile->currentVel;
    
    // 检查是否在反向减速段
    if(t <= profile->reverseDecelTime)
    {
        // 反向减速段：从初始负速度减速到0
        // v = v0 - a*t, s = s0 + v0*t - 0.5*a*t^2
        // 使用startPos（原始起始位置）而不是currentPos（已被修改）
        profile->state = PROFILE_DECEL;  // 实际上是减速
        float32_t decelDirection = SIGN(initialVel);  // 速度方向
        position = profile->startPos + 
                   initialVel * t - 
                   0.5f * effectiveDecel * t * t * decelDirection;
    }
    else
    {
        // 调整时间：扣除反向减速时间
        float32_t t_adj = t - profile->reverseDecelTime;
        
        // 正常轨迹段（从reverseDecelEndPos开始，初速度为startVelocity）
        if(t_adj <= profile->accelTime)
        {
            profile->state = PROFILE_ACCEL;
            if(profile->accelDist < 0.0f)
            {
                // 减速型：accelDist < 0 表示从vStart减速到vMax（不是加速）
                // v(t) = vStart - decel*t, s = vStart*t - 0.5*decel*t^2
                position = profile->reverseDecelEndPos +
                           (profile->startVelocity * t_adj -
                            0.5f * effectiveDecel * t_adj * t_adj) * direction;
            }
            else
            {
                // 加速型：正常加速
                // v(t) = vStart + accel*t, s = vStart*t + 0.5*accel*t^2
                position = profile->reverseDecelEndPos +
                           (profile->startVelocity * t_adj +
                            0.5f * profile->actualAccel * t_adj * t_adj) * direction;
            }
        }
        else if(t_adj <= (profile->accelTime + profile->constTime))
        {
            // 匀速段
            profile->state = PROFILE_CONST;
            float32_t t1 = t_adj - profile->accelTime;
            position = profile->accelEndPos + 
                       profile->peakVelocity * t1 * direction;
        }
        else if(t_adj <= (profile->accelTime + profile->constTime + profile->decelTime))
        {
            // 减速段
            profile->state = PROFILE_DECEL;
            float32_t t2 = t_adj - profile->accelTime - profile->constTime;
            
            // ===== 特殊处理：纯减速轨迹 =====
            // 对于纯减速轨迹（accelTime=0, constTime=0），应该从startPos开始
            // 而不是从decelStartPos开始（decelStartPos可能不正确）
            if(profile->accelTime == 0.0f && profile->constTime == 0.0f)
            {
                // 纯减速：s = s0 + v0*t - 0.5*a*t^2（使用有效减速度）
                position = profile->reverseDecelEndPos + 
                           profile->peakVelocity * t2 * direction - 
                           0.5f * effectiveDecel * t2 * t2 * direction;
            }
            else
            {
                // 正常减速段（使用有效减速度）
                position = profile->decelStartPos + 
                           profile->peakVelocity * t2 * direction - 
                           0.5f * effectiveDecel * t2 * t2 * direction;
            }
        }
        else
        {
            // 运动完成
            profile->state = PROFILE_DONE;
            profile->isActive = false;
            position = profile->targetPos;
        }
    }
    
    return position;
}

//
// TrapProfile_getVelocitySCurve - S型曲线速度计算（内部函数）
// 现在直接调用新的SCurve_getVelocity
//
static float32_t TrapProfile_getVelocitySCurve(TrapezoidalProfile_t *profile, float32_t t)
{
#if USE_SCURVE_PROFILE
    // 直接调用新架构的速度计算函数
    return SCurve_getVelocity(profile, t);
#else
    // S型曲线功能未启用，返回0
    return 0.0f;
#endif
}


//
// TrapProfile_getVelocity - 获取当前速度
//
float32_t TrapProfile_getVelocity(TrapezoidalProfile_t *profile)
{
    float32_t velocity;
    float32_t t, direction;
    float32_t initialVel;
    
    if(!profile->isActive)
    {
        return 0.0f;
    }
    
    t = profile->elapsedTime;
    
    // S型曲线使用专用计算函数
    if(profile->jerkTime > 0.0001f)
    {
        return TrapProfile_getVelocitySCurve(profile, t);
    }
    
    // 以下是梯形曲线的计算逻辑
    direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    initialVel = profile->currentVel;
    
    // **关键修复**：急停时使用emergencyDecel，否则使用actualDecel
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->actualDecel;
    
    // 检查是否在反向减速段
    if(t <= profile->reverseDecelTime)
    {
        // 反向减速段：从初始速度减速到0
        // v = v0 - a*t (v0是负数)
        float32_t decelDirection = SIGN(initialVel);
        velocity = initialVel - effectiveDecel * t * decelDirection;
    }
    else
    {
        // 调整时间：扣除反向减速时间
        float32_t t_adj = t - profile->reverseDecelTime;
        
        // ===== 特殊处理：纯减速轨迹（如急停）=====
        // 当accelTime=0时，说明不需要加速，直接从当前速度开始减速
        // 此时peakVelocity就是起始速度vStart
        if(profile->accelTime == 0.0f && profile->constTime == 0.0f)
        {
            // 纯减速轨迹：v = vStart - decel*t
            if(t_adj <= profile->decelTime)
            {
                velocity = (profile->peakVelocity - effectiveDecel * t_adj) * direction;
            }
            else
            {
                velocity = 0.0f;
            }
        }
        // 正常轨迹段（包含加速/匀速/减速）
        else if(t_adj <= profile->accelTime)
        {
            // 加速段: v = vStart + a*t (从起始速度加速)
            if(profile->accelDist < 0.0f)
            {
                // 减速型：accelDist < 0 表示从vStart减速到vMax
                // v(t) = vStart - decel*t
                velocity = (profile->startVelocity - effectiveDecel * t_adj) * direction;
            }
            else
            {
                velocity = (profile->startVelocity + profile->actualAccel * t_adj) * direction;
            }
        }
        else if(t_adj <= (profile->accelTime + profile->constTime))
        {
            // 匀速段: v = vPeak
            velocity = profile->peakVelocity * direction;
        }
        else if(t_adj <= (profile->accelTime + profile->constTime + profile->decelTime))
        {
            // 减速段: v = vPeak - a*t2（使用有效减速度）
            float32_t t2 = t_adj - profile->accelTime - profile->constTime;
            velocity = (profile->peakVelocity - effectiveDecel * t2) * direction;
        }
        else
        {
            // 运动完成
            velocity = 0.0f;
        }
    }
    
    return velocity;
}

//
// TrapProfile_getAcceleration - 获取当前加速度
//
float32_t TrapProfile_getAcceleration(TrapezoidalProfile_t *profile)
{
    float32_t acceleration = 0.0f;
    float32_t t, direction;
    
    if(!profile->isActive)
    {
        return 0.0f;
    }
    
    t = profile->elapsedTime;
    direction = SIGN(profile->targetPos - profile->currentPos);
    
    // S型曲线的加速度计算 - 调用新架构函数
#if USE_SCURVE_PROFILE
    if(profile->jerkTime > 0.0001f)
    {
        return SCurve_getAcceleration(profile, t);
    }
#endif
    
    /* 旧代码已注释
    if(profile->jerkTime > 0.0001f)
    {
        jMax = profile->actualJerk;  // 使用保存的实际加加速度
        aMax = profile->actualAccel;
        dMax = profile->actualDecel;
        
        // ===== Phase 0: 加速度过渡段 =====
        if(t <= profile->accelTransTime && profile->accelTransTime > 0.0001f)
        {
            // 加速度从startAccel线性过渡到0
            float32_t a0 = profile->startAccel;
            float32_t maxAccelOrDecel = MAX(aMax, dMax);
            float32_t jMaxTrans = maxAccelOrDecel / profile->jerkTime;
            
            // a(t) = a0 - sign(a0)*jMax*t
            acceleration = a0 - SIGN(a0) * jMaxTrans * t;
            
            DEBUG_PRINT("[Accel Trans Accel] t=%.3f, a0=%.2f, accel=%.2f\n", t, a0, acceleration);
            
            return acceleration;
        }
        
        // 调整时间：扣除加速度过渡时间和反向减速时间
        t = t - profile->accelTransTime - profile->reverseDecelTime;
        
        // **关键检查**：确保时间不为负
        if(t < 0)
        {
            // 时间为负，说明还在过渡段，但判断可能有误
            DEBUG_PRINT("[Accel Warning] Negative time after transition: t=%.3f, returning 0\n", t);
            return 0.0f;
        }
        
        // 累积时间点
        t1 = profile->tj1;
        t2 = t1 + profile->ta;
        t3 = t2 + profile->tj2;
        t4 = t3 + profile->tv;
        t5 = t4 + profile->tjd1;
        t6 = t5 + profile->td;
        t7 = t6 + profile->tjd2;
        
        // 调试输出（仅第一次）
        static int accel_debug_count = 0;
        if(accel_debug_count < 5)
        {
            DEBUG_PRINT("[Accel] t=%.3f, jMax=%.2f, t1=%.3f, t2=%.3f, t3=%.3f, t4=%.3f\n",
                   t, jMax, t1, t2, t3, t4);
            accel_debug_count++;
        }
        
        if(t <= t1)
        {
            // 阶段1：加加速段，加速度线性增加
            acceleration = jMax * t;
        }
        else if(t <= t2)
        {
            // 阶段2：匀加速段，加速度恒定
            acceleration = aMax;
        }
        else if(t <= t3)
        {
            // 阶段3：减加速段，加速度线性减小
            dt = t - t2;
            acceleration = aMax - jMax * dt;
        }
        else if(t <= t4)
        {
            // 阶段4：匀速段，加速度为0
            acceleration = 0.0f;
        }
        else if(t <= t5)
        {
            // 阶段5：加减速段，减速度线性增加
            dt = t - t4;
            acceleration = -jMax * dt;
        }
        else if(t <= t6)
        {
            // 阶段6：匀减速段，减速度恒定
            acceleration = -dMax;
        }
        else if(t <= t7)
        {
            // 阶段7：减减速段，减速度线性减小
            dt = t - t6;
            acceleration = -dMax + jMax * dt;
        }
        else
        {
            // 运动完成
            acceleration = 0.0f;
        }
        
        return acceleration * direction;
    }
    */  // 旧代码结束
    
    // 梯形曲线的加速度计算（阶跃式）
    // **关键修复**：急停时使用emergencyDecel，否则使用actualDecel
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->actualDecel;
    
    if(profile->state == PROFILE_ACCEL)
    {
        // 当accelDist < 0时，"accel phase"实际是减速过程（如速度从500降到400）
        if(profile->accelDist < 0.0f)
        {
            acceleration = -effectiveDecel * direction;
        }
        else
        {
            acceleration = profile->actualAccel * direction;
        }
    }
    else if(profile->state == PROFILE_DECEL)
    {
        acceleration = -effectiveDecel * direction;
    }
    else
    {
        acceleration = 0.0f;
    }
    
    return acceleration;
}

//
// TrapProfile_isDone - 检查运动是否完成
//
bool TrapProfile_isDone(TrapezoidalProfile_t *profile)
{
    return (profile->state == PROFILE_DONE || !profile->isActive);
}

//
// TrapProfile_getTotalTime - 获取轨迹总时间
//
float32_t TrapProfile_getTotalTime(TrapezoidalProfile_t *profile)
{
    return profile->totalTime;
}

//
// TrapProfile_getElapsedTime - 获取轨迹已执行时间
//
float32_t TrapProfile_getElapsedTime(TrapezoidalProfile_t *profile)
{
    return profile->elapsedTime;
}

//
// TrapProfile_setJerkTime - 设置S型曲线的jerkTime参数
//
void TrapProfile_setJerkTime(TrapezoidalProfile_t *profile, float32_t jerkTime)
{
    // jerkTime = 0 表示梯形曲线
    // jerkTime > 0 表示S型曲线，数值为达到最大加速度所需的时间
    profile->jerkTime = MAX(jerkTime, 0.0f);
    profile->isComputed = false;  // 需要重新计算
}

//
// TrapProfile_getJerk - 获取当前加加速度
//
float32_t TrapProfile_getJerk(TrapezoidalProfile_t *profile)
{
    float32_t jerk = 0.0f;
    float32_t t, direction;
    float32_t jMax;
    float32_t t1, t2, t3, t4, t5, t6, t7;
    
    if(!profile->isActive)
    {
        return 0.0f;
    }
    
    // 只有S型曲线才有加加速度
    if(profile->jerkTime <= 0.0001f)
    {
        return 0.0f;  // 梯形曲线的加加速度为0（除突变点外）
    }
    
    t = profile->elapsedTime;
    direction = SIGN(profile->targetPos - profile->currentPos);
    jMax = profile->actualJerk;  // 使用保存的实际加加速度
    
    // 调试输出（仅前几次）
    static int jerk_debug_count = 0;
    if(jerk_debug_count < 3)
    {
        DEBUG_PRINT("[Jerk] t=%.3f, jMax=%.2f, actualJerk=%.2f, jerkTime=%.3f\n",
               t, jMax, profile->actualJerk, profile->jerkTime);
        jerk_debug_count++;
    }
    
    // 累积时间点
    t1 = profile->tj1;
    t2 = t1 + profile->ta;
    t3 = t2 + profile->tj2;
    t4 = t3 + profile->tv;
    t5 = t4 + profile->tjd1;
    t6 = t5 + profile->td;
    t7 = t6 + profile->tjd2;
    
    // 根据时间判断所在阶段
    if(t <= t1)
    {
        // 阶段1：加加速段，正加加速
        jerk = jMax;
    }
    else if(t <= t2)
    {
        // 阶段2：匀加速段，加加速度为0
        jerk = 0.0f;
    }
    else if(t <= t3)
    {
        // 阶段3：减加速段，负加加速
        jerk = -jMax;
    }
    else if(t <= t4)
    {
        // 阶段4：匀速段，加加速度为0
        jerk = 0.0f;
    }
    else if(t <= t5)
    {
        // 阶段5：加减速段，负加加速（开始减速）
        jerk = -jMax;
    }
    else if(t <= t6)
    {
        // 阶段6：匀减速段，加加速度为0
        jerk = 0.0f;
    }
    else if(t <= t7)
    {
        // 阶段7：减减速段，正加加速（减小减速度）
        jerk = jMax;
    }
    else
    {
        // 运动完成
        jerk = 0.0f;
    }
    
    return jerk * direction;
}

//
// TrapProfile_stop - 停止运动（按减速度停止）
//
// 参数：
//   profile - 轨迹结构体指针
//   currentPos - 当前的位置
//   currentVel - 当前的速度
//   currentAccel - 当前的加速度
//   profileUpdateTs - 轨迹更新周期
//   isEmergencyStop - 是否为急停命令（true=急停使用emergencyDecel，false=普通停止使用maxDecel）
//
void TrapProfile_stop(TrapezoidalProfile_t *profile,
                      float32_t currentPos,
                      float32_t currentVel,
                      float32_t currentAccel,
                      float32_t profileUpdateTs,
                      bool isEmergencyStop)
{
    float32_t absVel = ABS(currentVel);

    // **保留起始加速度**：停止时也要平滑处理加速度
    // 加速度会从当前值平滑过渡到0，然后进入减速段
    profile->startAccel = currentAccel;
    profile->currentAccel = currentAccel;

    // **关键修复**：根据isEmergencyStop标志决定使用哪个减速度
    float32_t effectiveDecel;
    if(isEmergencyStop && profile->emergencyDecel > 0.1f)
    {
        effectiveDecel = profile->emergencyDecel;  // 急停使用emergencyDecel
    }
    else
    {
        effectiveDecel = profile->maxDecel;  // 普通停止使用maxDecel
    }

    DEBUG_PRINT("[TrapProfile_stop] Keep current accel=%.2f for smooth transition\n",
           currentAccel);
    DEBUG_PRINT("[TrapProfile_stop] isEmergencyStop=%d, effectiveDecel=%.2f\n",
           isEmergencyStop ? 1 : 0, effectiveDecel);

    // **改进策略**：不计算停止距离，只设置标志
    // 停止目标位置的精确计算由SCurve_computeProfile统一完成
    // 这样可以避免双重计算和不一致问题

    // 设置急停和停止标志
    profile->isEmergencyStop = isEmergencyStop;
    profile->isStopMove = true;  // 标记为停止运动类型
    profile->isMicroMotion = false;
    // **简化**：停止位置暂时设为当前位置
    // 真正的停止位置由SCurve_computeProfile根据加速度过渡后计算
    float32_t stopPos = currentPos;

    DEBUG_PRINT("[TrapProfile_stop] currentPos=%.2f, currentVel=%.2f, stopPos=%.2f (precise calc in SCurve)\n",
           currentPos, currentVel, stopPos);

    // 设置新目标为停止位置
    TrapProfile_setTarget(profile, currentPos, currentVel, stopPos);

    TrapProfile_compute(profile);

    // **关键**：不要在这里清除标志！
    // 标志会在SCurve_computeProfile中被使用，然后由SCurve_computeProfile清除
    // 这样可以确保标志在 TrapProfile_stop → TrapProfile_compute → SCurve_computeProfile 调用链中有效

    // 及时记录新的运动配置参数，防止轨迹更新中再次执行轨迹规划
    profile->configuredMaxVel = profile->maxVelocity;
    profile->configuredAccel = profile->maxAccel;
    profile->configuredDecel = profile->maxDecel;
    profile->configuredJerkTime = profile->jerkTime;
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
// ProfileBuffer_write - 写入位置和速度到缓冲区
//
bool ProfileBuffer_write(ProfileBuffer_t *buffer, float32_t position, float32_t velocity, float32_t acceleration, float32_t jerk)
{
    if(buffer->count >= MOTION_PROFILE_BUFFER_SIZE)
    {
        buffer->overflowCount++;
        return false;
    }
    
    // **关键保护**：限制写入的加速度值，防止异常值进入buffer
    // 最大允许1.5倍配置值（与读取限制保持一致）
    const float32_t MAX_ACCEL_LIMIT = 3000.0f;  // 硬限制：3000（与getBufferEndPoint一致）
    if(acceleration > MAX_ACCEL_LIMIT) {
        DEBUG_PRINT("[BufferWrite] WARNING: accel clamped from %.2f to %.2f\n",
               acceleration, MAX_ACCEL_LIMIT);
        acceleration = MAX_ACCEL_LIMIT;
    }
    else if(acceleration < -MAX_ACCEL_LIMIT) {
        DEBUG_PRINT("[BufferWrite] WARNING: accel clamped from %.2f to %.2f\n",
               acceleration, -MAX_ACCEL_LIMIT);
        acceleration = -MAX_ACCEL_LIMIT;
    }
    
    buffer->posBuffer[buffer->writeIdx] = position;
    buffer->velBuffer[buffer->writeIdx] = velocity;
    buffer->accelBuffer[buffer->writeIdx] = acceleration;
    buffer->jerkBuffer[buffer->writeIdx] = jerk;
    buffer->writeIdx = (buffer->writeIdx + 1) % MOTION_PROFILE_BUFFER_SIZE;
    buffer->count++;
    
    return true;
}

//
// ProfileBuffer_read - 从缓冲区读取位置、速度和加速度
//
bool ProfileBuffer_read(ProfileBuffer_t *buffer, float32_t *position, float32_t *velocity, float32_t *Acceleration)
{
    if(buffer->count == 0)
    {
        buffer->underflowCount++;
        return false;
    }
    
    *position = buffer->posBuffer[buffer->readIdx];
    *velocity = buffer->velBuffer[buffer->readIdx];
    *Acceleration = buffer->accelBuffer[buffer->readIdx];
    
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

//
// ProfileBuffer_truncate - 截断缓冲区，只保留指定数量的点
// 用途：在收到新运动命令时，保留正在执行的少量点（防止欠载），丢弃旧轨迹的后续点
//
void ProfileBuffer_truncate(ProfileBuffer_t *buffer, uint16_t keepCount)
{
    if(keepCount >= buffer->count)
    {
        // 要保留的点数 >= 当前点数，无需截断
        return;
    }
    
    // 调整count和writeIdx
    // readIdx保持不变（正在读取的位置不变）
    // writeIdx = readIdx + keepCount
    buffer->count = keepCount;
    buffer->writeIdx = (buffer->readIdx + keepCount) % MOTION_PROFILE_BUFFER_SIZE;
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
    
    DEBUG_PRINT("[MotorDrive_updateFeedback] motorID=%d, newActPos=%.2f, oldActPos=%.2f\n", 
           motor->motorID, actPos, lastPos);
    
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
// 运动轴内部辅助函数
//*****************************************************************************

//
// MotionAxis_waitForUpdate - 等待updateProfile完成（内部函数）
//
static void MotionAxis_waitForUpdate(MotionAxis_t *axis)
{
    uint16_t waitCounter = 0;
    while(axis->isUpdating && waitCounter < MOTION_MAX_WAIT_ITERATIONS)
    {
        waitCounter++;
    }
}

//
// MotionAxis_truncateBuffer - 截断缓冲区（内部函数）
// 截断后通知同步回调，让从轴也同步截断
//
static void MotionAxis_truncateBuffer(MotionAxis_t *axis)
{
    if(axis->posBuffer.count > MOTION_KEEP_POINTS)
    {
        uint16_t oldCount = axis->posBuffer.count;
        ProfileBuffer_truncate(&axis->posBuffer, MOTION_KEEP_POINTS);
        uint16_t newCount = axis->posBuffer.count;

        // **同步截断**：通知从轴缓冲区也被截断
        if(axis->onBufferTruncate != NULL)
        {
            axis->onBufferTruncate(axis->syncCallbackContext, (void*)axis, newCount);
            DEBUG_PRINT("[MotionAxis_truncateBuffer] Truncated: %d -> %d, notified slaves\n",
                   oldCount, newCount);
        }
    }
}

//
// MotionAxis_getBufferEndPoint - 获取buffer末尾的位置、速度和加速度（内部函数）
//
static void MotionAxis_getBufferEndPoint(MotionAxis_t *axis, 
                                         float32_t *startPos, 
                                         float32_t *startVel,
                                         float32_t *startAccel)
{
    if(axis->posBuffer.count > 0)
    {
        // Buffer有数据：从最后一个点继续
        uint16_t lastIdx = (axis->posBuffer.writeIdx + 
                           MOTION_PROFILE_BUFFER_SIZE - 1) % 
                           MOTION_PROFILE_BUFFER_SIZE;
        *startPos = axis->posBuffer.posBuffer[lastIdx];
        *startVel = axis->posBuffer.velBuffer[lastIdx];
        *startAccel = axis->posBuffer.accelBuffer[lastIdx];
        
        // **关键调试**：检查buffer中的速度是否异常
        if(ABS(*startVel) < 0.1f && axis->posBuffer.count > 5)
        {
            DEBUG_PRINT("[WARNING] getBufferEndPoint: startVel=%.2f very small! count=%d, cmdVel=%.2f\n",
                   *startVel, axis->posBuffer.count, axis->cmdVelocity);
        }
        
        // **关键修复**：限制加速度的绝对值，防止累积增长导致失控
        float32_t maxAccelLimit = axis->profile.maxAccel * 1.5f;  // 允许最多1.5倍的配置值
        if(*startAccel > maxAccelLimit) {
            DEBUG_PRINT("[getBufferEndPoint] WARNING: startAccel clamped from %.2f to %.2f\n",
                   *startAccel, maxAccelLimit);
            *startAccel = maxAccelLimit;
        }
        else if(*startAccel < -maxAccelLimit) {
            DEBUG_PRINT("[getBufferEndPoint] WARNING: startAccel clamped from %.2f to %.2f\n",
                   *startAccel, -maxAccelLimit);
            *startAccel = -maxAccelLimit;
        }
        
        DEBUG_PRINT("[getBufferEndPoint] From buffer: pos=%.2f, vel=%.2f, accel=%.2f\n",
               *startPos, *startVel, *startAccel);
    }
    else
    {
        // Buffer空：从当前执行点继续
        *startPos = axis->cmdPosition;
        *startVel = axis->cmdVelocity;
        *startAccel = 0.0f;  // 如果buffer为空，假设从静止或匀速状态开始
        
        // **关键修复**：如果buffer为空但cmdVelocity太小，
        // 减速轨迹无法生成。需要检查并设置最小速度
        if(axis->cmdVelocity != 0.0f && ABS(axis->cmdVelocity) < 1.0f)
        {
            // 速度太小但非零，设置为最小绝对值，保持符号
            *startVel = (axis->cmdVelocity > 0) ? 1.0f : -1.0f;
            DEBUG_PRINT("[getBufferEndPoint] WARNING: cmdVelocity too small (%.2f), set to min (%.2f)\n",
                   axis->cmdVelocity, *startVel);
        }
        else if(ABS(axis->cmdVelocity) < 0.001f)
        {
            // 速度为0，无法生成减速轨迹，返回-1标记
            *startVel = 0.0f;
            DEBUG_PRINT("[getBufferEndPoint] WARNING: cmdVelocity is zero, cannot generate stop profile\n");
        }
        
        DEBUG_PRINT("[getBufferEndPoint] From current: pos=%.2f, vel=%.2f, accel=%.2f\n",
               *startPos, *startVel, *startAccel);
    }
}

//*****************************************************************************
// 运动轴函数实现
//*****************************************************************************

//
// MotionAxis_create - 创建运动轴（动态分配，用于跨语言调用）
//
MotionAxis_t* MotionAxis_create(uint16_t axisID, AxisType_e axisType)
{
    MotionAxis_t *axis = (MotionAxis_t*)malloc(sizeof(MotionAxis_t));
    if(axis != NULL)
    {
        MotionAxis_init(axis, axisID, axisType);
    }
    return axis;
}

//
// MotionAxis_destroy - 销毁运动轴（释放动态分配的内存）
//
void MotionAxis_destroy(MotionAxis_t *axis)
{
    if(axis != NULL)
    {
        free(axis);
    }
}

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
    
    // 初始化位置和速度
    axis->cmdPosition = 0.0f;
    axis->actPosition = 0.0f;
    axis->cmdVelocity = 0.0f;
    axis->actVelocity = 0.0f;
    axis->cmdAcceleration = 0.0f;
    
    // 初始化所有电机驱动槽位
    for(i = 0; i < MOTION_MAX_MOTORS_PER_AXIS; i++)
    {
        MotorDrive_init(&axis->motors[i]);
    }
    
    // 默认采样时间
    // profileUpdateTs: 轨迹点之间的时间间隔（应等于位置环周期）
    // posLoopTs: 位置环执行周期
    // 注意：profileUpdateTs决定轨迹规划的时间分辨率，应该等于posLoopTs
    axis->profileUpdateTs = 0.001f;  // 1ms - 每个位置点的时间间隔
    axis->posLoopTs = 0.001f;        // 1ms - 位置环周期
    
    // 频率控制参数（轨迹更新频率可以低于位置环频率以降低CPU占用）
    // profileUpdateDivider控制updateProfile的调用频率
    // 对于PC仿真，设置为1（C#端已通过PROFILE_UPDATE_DIVIDER控制）
    // 在实际嵌入式系统中，如果在1ms中断中调用，可以设置为10来降低CPU占用
    axis->profileUpdateDivider = 10;   // PC仿真：不分频
    axis->profileUpdateCounter = 0;
    axis->forceProfileUpdate = false;
    
    // 并发保护标志初始化
    axis->isReplanning = false;       // 运动指令执行标志
    axis->isUpdating = false;         // updateProfile执行标志
    
    // 统一停止状态标志初始化
    axis->isStopped = true;

    // 同步状态标志初始化（由SyncControl模块在建立同步时设置）
    axis->isSyncing = false;          // 初始时轴处于停止状态
    
    // 初始化轨迹规划器和缓冲区
    TrapProfile_init(&axis->profile, 1000.0f, 10000.0f, 10000.0f);
    ProfileBuffer_init(&axis->posBuffer);
    
    // 初始化下一次规划的起始点
    axis->profile.nextPlanPos = 0.0f;
    axis->profile.nextPlanVel = 0.0f;
}

//
// MotionAxis_syncPositionWithMotor - 同步轴坐标与电机实际坐标
// @note 电机坐标（编码器反馈）是实际值，轴坐标应该始终反映电机的实际位置
//       调用时机：添加电机后、轴使能时、建立同步时、错误复位时
// @important 不同步命令位置！命令位置是规划出来的值，不应该被覆盖
//
void MotionAxis_syncPositionWithMotor(MotionAxis_t *axis)
{
    if(axis->numMotors == 0 || axis->numMotors > MOTION_MAX_MOTORS_PER_AXIS)
    {
        return;  // 无电机或多电机（不支持）不进行同步
    }
    
    DEBUG_PRINT("[MotionAxis_syncPositionWithMotor] axisID=%d, numMotors=%d, state=%d, motorActPos=%.2f, axisActPos=%.2f, cmdPos=%.2f\n",
           axis->axisID, axis->numMotors, axis->axisState, 
           axis->motors[0].actPosition, axis->actPosition, axis->cmdPosition);
    
    // 对于单电机，轴坐标 = 电机坐标
    axis->actPosition = axis->motors[0].actPosition;
    axis->actVelocity = axis->motors[0].actVelocity;
    
    // 注意：不再同步命令位置！命令位置是规划出来的值，应该保持不变
    // 这样可以避免在建立同步时命令位置被意外覆盖为0
    
    DEBUG_PRINT("[MotionAxis_syncPositionWithMotor] Result: actPosition=%.2f, cmdPosition=%.2f\n", 
           axis->actPosition, axis->cmdPosition);
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
    
    DEBUG_PRINT("[MotionAxis_addMotor] axisID=%d, motorID=%d, current numMotors=%d\n", 
           axis->axisID, motorID, axis->numMotors);
    
    // 配置电机
    MotorDrive_config(&axis->motors[axis->numMotors], motorID, gearRatio);
    axis->numMotors++;
    
    // 注意：添加电机时只同步实际位置（反映电机编码器反馈）
    // 不同步命令位置，因为命令位置是规划出来的值
    if(axis->numMotors > 0)
    {
        axis->actPosition = axis->motors[0].actPosition;
        axis->actVelocity = axis->motors[0].actVelocity;
    }
    
    DEBUG_PRINT("[MotionAxis_addMotor] After: actPosition=%.2f, cmdPosition=%.2f\n", 
           axis->actPosition, axis->cmdPosition);
    
    // 更新轴类型（在递增后判断）
    if(axis->numMotors == 0)
    {
        axis->axisType = AXIS_TYPE_VIRTUAL;  // 无电机=虚拟轴
    }
    else if(axis->numMotors == 1)
    {
        axis->axisType = AXIS_TYPE_REAL;     // 单电机=实轴
    }
    else // numMotors >= 2
    {
        axis->axisType = AXIS_TYPE_GANTRY;   // 多电机=龙门轴
    }
}

//
// MotionAxis_setMotionParams - 设置运动参数
//
void MotionAxis_setMotionParams(MotionAxis_t *axis, float32_t maxVel,
                                float32_t maxAccel, float32_t maxDecel)
{
    // ===== 运动过程中参数更新：不能清空状态 =====
    // 如果profile处于active状态，说明正在运动中
    // 这时只更新参数字段，不调用init（init会清空所有状态导致位置突变）
    // 参数变化会在下一次updateProfile中被检测到，自动触发重新规划
    if(axis->profile.isActive)
    {
        // 运动中：只更新参数，保持所有状态
        axis->profile.maxVelocity = maxVel;
        axis->profile.maxAccel = maxAccel;
        axis->profile.maxDecel = maxDecel;

        DEBUG_PRINT("[setMotionParams] Runtime update: maxVel=%.1f, maxAccel=%.1f, maxDecel=%.1f (isActive=true)\n",
               maxVel, maxAccel, maxDecel);
    }
    else
    {
        // 空闲状态：保留 jerkTime 设置，只更新速度/加速度/减速度
        // 注意：不调用 TrapProfile_init，因为它会重置 jerkTime 为 0
        axis->profile.maxVelocity = maxVel;
        axis->profile.maxAccel = maxAccel;
        axis->profile.maxDecel = maxDecel;
        axis->profile.configuredMaxVel = maxVel;
        axis->profile.configuredAccel = maxAccel;
        axis->profile.configuredDecel = maxDecel;

        DEBUG_PRINT("[setMotionParams] Idle: maxVel=%.1f, maxAccel=%.1f, maxDecel=%.1f, jerkTime=%.3f (preserved)\n",
               maxVel, maxAccel, maxDecel, axis->profile.jerkTime);
    }
}

//
// MotionAxis_setJerkTime - 设置S型曲线的jerkTime参数
//
void MotionAxis_setJerkTime(MotionAxis_t *axis, float32_t jerkTime)
{
    TrapProfile_setJerkTime(&axis->profile, jerkTime);
    DEBUG_PRINT("[setJerkTime] jerkTime=%.3f %s\n", 
           jerkTime, (jerkTime > 0.0001f) ? "(S型曲线)" : "(梯形曲线)");
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
// MotionAxis_setProfileUpdateTs - 设置轨迹更新时间步长（修复P/Invoke同步问题）
//
void MotionAxis_setProfileUpdateTs(MotionAxis_t *axis, float32_t ts)
{
    axis->profileUpdateTs = ts;
}

//
// MotionAxis_calcTruncatePoints - 计算动态截断保留点数
// 速度越快 → 减速距离越长 → 需要更多缓冲点
// 速度越慢 → 减速距离越短 → 需要更少缓冲点
// 公式: keepPoints = MOTION_KEEP_POINTS_REF * (|velocity| / MOTION_KEEP_VEL_REF)
//
uint16_t MotionAxis_calcTruncatePoints(float32_t currentVelocity)
{
    float32_t absVel = (currentVelocity > 0.0f) ? currentVelocity : -currentVelocity;

    // 按比例计算保留点数
    float32_t ratio = absVel / MOTION_KEEP_VEL_REF;
    uint16_t points = (uint16_t)(MOTION_KEEP_POINTS_REF * ratio);

    // 限制在范围内
    if(points < MOTION_KEEP_POINTS_MIN)
        points = MOTION_KEEP_POINTS_MIN;
    if(points > MOTION_KEEP_POINTS_MAX)
        points = MOTION_KEEP_POINTS_MAX;

    DEBUG_PRINT("[MotionAxis_calcTruncatePoints] vel=%.1f -> keepPoints=%d (ratio=%.2f)\n",
           absVel, points, ratio);

    return points;
}

//
// MotionAxis_enable - 使能轴（使能所有绑定的电机）
//
void MotionAxis_enable(MotionAxis_t *axis)
{
    uint16_t i;
    
    DEBUG_PRINT("[MotionAxis_enable] axisID=%d, current state=%d\n", axis->axisID, axis->axisState);
    
    if(axis->axisState == AXIS_STATE_DISABLED || 
       axis->axisState == AXIS_STATE_ERROR)
    {
        axis->axisState = AXIS_STATE_STANDBY;
        
        // 使能轴时（从禁用状态恢复），同步实际位置
        // 不同步命令位置，因为命令位置是规划出来的值
        DEBUG_PRINT("[MotionAxis_enable] Syncing position with motor: numMotors=%d\n", axis->numMotors);
        MotionAxis_syncPositionWithMotor(axis);
        
        // 使能所有绑定的电机
        for(i = 0; i < axis->numMotors; i++)
        {
            MotorDrive_enable(&axis->motors[i], true);
        }
    }
    else
    {
        DEBUG_PRINT("[MotionAxis_enable] Axis already enabled (state=%d), skipping sync\n", axis->axisState);
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
// MotionAxis_getState - 获取轴状态
//
int MotionAxis_getState(MotionAxis_t *axis)
{
    return (int)axis->axisState;
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
    
    // 设置重新规划标志，阻止updateProfile在规划过程中修改buffer
    axis->isReplanning = true;
    
    // ===== 等待updateProfile完成 =====
    MotionAxis_waitForUpdate(axis);
    
    // ===== 正确策略：截断buffer，从截断后最后一个点继续规划 =====
    // 关键理解：
    // 1. 截断buffer，保留少量点（防止欠载）
    // 2. 新轨迹必须从**截断后最后一个点**的位置、速度和加速度继续
    // 3. 这样能保证：buffer中所有点的速度和加速度是连续的
    
    // DEBUG: 记录截断前的状态
    DEBUG_PRINT("[moveAbsolute] Before truncate: count=%d, cmdPos=%.2f, cmdVel=%.2f\n",
           axis->posBuffer.count, axis->cmdPosition, axis->cmdVelocity);
    
    // 截断buffer，保留少量点防止欠载
    MotionAxis_truncateBuffer(axis);
    
    // ===== 始终从Buffer末尾获取位置、速度和加速度（核心原则）=====
    // **关键理解**：新轨迹必须从Buffer最后一个点（已规划未执行）平滑连接
    // 不能从cmdXXX（当前执行点）开始，否则会丢弃buffer中未执行的点！
    float32_t startAccel;
    MotionAxis_getBufferEndPoint(axis, &startPos, &startVel, &startAccel);
    
    // **核心理解**：Buffer末端点就是新轨迹的起点，无需1dt补偿！
    // 原因：
    // 1. Buffer末端是上次updateProfile写入的最后一个点
    // 2. 新轨迹从这个点开始规划，逐点写入Buffer
    // 3. 执行器从Buffer逐点读取，规划时不需要关心执行位置
    // 4. 1dt补偿会引入误差，导致不连续
    
    DEBUG_PRINT("[moveAbsolute] Use buffer end directly (no 1dt compensation): pos=%.2f, vel=%.2f, accel=%.2f\n",
           startPos, startVel, startAccel);
    
    // 直接使用buffer末端点作为新轨迹的起点（无补偿）
    
    DEBUG_PRINT("[moveAbsolute] After truncate & 1dt comp: count=%d, startPos=%.2f, startVel=%.2f, startAccel=%.2f, targetPos=%.2f\n",
           axis->posBuffer.count, startPos, startVel, startAccel, targetPos);
    
    // ===== 方向突变预判逻辑 =====
    // 检测：当前速度方向与目标方向相反，且速度较大
    float32_t distToTarget = targetPos - startPos;
    float32_t velocityDirection = SIGN(startVel);
    float32_t motionDirection = SIGN(distToTarget);
    float32_t absVel = ABS(startVel);
    float32_t absDist = ABS(distToTarget);
    
    // 判断是否为方向突变场景
    bool isDirectionChange = (velocityDirection * motionDirection < 0.0f) && (absVel > 50.0f);
    
    if(isDirectionChange)
    {
        // 计算最小刹车距离（考虑S型曲线）
        float32_t maxDecel = axis->profile.maxDecel;
        float32_t jerkTime = axis->profile.jerkTime;
        float32_t jMax = maxDecel / jerkTime;
        
        // S型曲线刹车距离估算（保守估计）
        float32_t theoreticalStopDist;
        if(absVel > maxDecel * jerkTime)
        {
            // 有匀减速段
            float32_t td = absVel / maxDecel - jerkTime;
            float32_t s1 = absVel * jerkTime - (jMax * CUBE(jerkTime)) / 6.0f;
            float32_t v1 = absVel - 0.5f * jMax * SQUARE(jerkTime);
            float32_t s2 = v1 * td - 0.5f * maxDecel * SQUARE(td);
            float32_t v2 = v1 - maxDecel * td;
            float32_t s3 = v2 * jerkTime - 0.5f * maxDecel * SQUARE(jerkTime) + 
                          (jMax * CUBE(jerkTime)) / 6.0f;
            theoreticalStopDist = s1 + s2 + s3;
        }
        else
        {
            // 纯S型减速
            float32_t tjd = sqrtf(absVel / jMax);
            theoreticalStopDist = absVel * 2.0f * tjd - jMax * CUBE(tjd);
        }
        
        DEBUG_PRINT("[Direction Change] Detected: vel=%.2f, dist=%.2f, stopDist=%.2f\n",
               startVel, distToTarget, theoreticalStopDist);
        
        // 判断是否会过冲
        float32_t overshootRatio = theoreticalStopDist / absDist;
        
        if(overshootRatio > 1.2f)
        {
            // 严重过冲：刹车距离远大于目标距离
            float32_t estimatedOvershoot = theoreticalStopDist - absDist;
            DEBUG_PRINT("[Direction Change] CRITICAL: Will overshoot by %.2f (ratio=%.2f)\n", 
                   estimatedOvershoot, overshootRatio);
            
            // 策略：允许过冲+返回，使用加速度过渡段平滑处理
            // 1. 启用加速度过渡段（自动在SCurve_computeProfile中处理）
            // 2. 允许系统自然减速，过冲后自动规划返回轨迹
            // 3. 不强制降速（会导致更大的加速度冲击）
            
            // 可选：临时提高加速度/减速度限制（如果硬件允许）
            // 这里保守策略，依赖加速度过渡段
            DEBUG_PRINT("[Direction Change] Strategy: Allow overshoot + return with accel transition\n");
        }
        else if(overshootRatio > 0.8f)
        {
            // 轻微过冲：接近边界
            DEBUG_PRINT("[Direction Change] WARNING: Close to overshoot (ratio=%.2f)\n", overshootRatio);
            DEBUG_PRINT("[Direction Change] Strategy: Natural deceleration with accel transition\n");
        }
        else
        {
            // 可以在目标前停下
            DEBUG_PRINT("[Direction Change] OK: Can stop before target (ratio=%.2f)\n", overshootRatio);
        }
    }
    // 初始化停止和急停标志为false
    axis->profile.isStopMove = false;
    axis->profile.isEmergencyStop = false;
    // 初始化微小运动标志为false
    axis->profile.isMicroMotion = false;
    // 设置新目标（位置、速度平滑过渡）
    TrapProfile_setTarget(&axis->profile, startPos, startVel, targetPos);
    
    // 设置起始加速度（用于加速度连续性）
    axis->profile.startAccel = startAccel;
    axis->profile.currentAccel = startAccel;
    
    // DEBUG: 输出compute前的elapsedTime
    DEBUG_PRINT("[moveAbsolute] Before compute: elapsedTime=%.3f, jerkTime=%.3f\n", 
           axis->profile.elapsedTime, axis->profile.jerkTime);
    
    TrapProfile_compute(&axis->profile);
    //及时记录新的运动配置参数，防止轨迹更新中再次执行轨迹规划
    axis->profile.configuredMaxVel = axis->profile.maxVelocity;
    axis->profile.configuredAccel = axis->profile.maxAccel;
    axis->profile.configuredDecel = axis->profile.maxDecel;        
    axis->profile.configuredJerkTime = axis->profile.jerkTime;
    // DEBUG: 输出计算后的轨迹参数
    DEBUG_PRINT("[moveAbsolute] After compute: startPos=%.2f, startVel=%.2f, elapsedTime=%.3f, peakVel=%.2f, accelTime=%.3f, constTime=%.3f, decelTime=%.3f, totalTime=%.3f\n",
           axis->profile.currentPos, axis->profile.currentVel, axis->profile.elapsedTime,
           axis->profile.peakVelocity, axis->profile.accelTime, axis->profile.constTime, 
           axis->profile.decelTime, axis->profile.totalTime);
    DEBUG_PRINT("[moveAbsolute] S-Curve params: jerkTime=%.3f, actualJerk=%.2f, tj1=%.3f, tv=%.3f\n",
           axis->profile.jerkTime, axis->profile.actualJerk, axis->profile.tj1, axis->profile.tv);
    
    // 记录目标位置和目标速度（用于用户监控）
    axis->targetPosition = targetPos;
    axis->targetVelocity = 0.0f;  // 绝对运动到达目标时速度为0
    
    axis->axisState = AXIS_STATE_MOVING;
    axis->moveCounter++;
    
    // 设置强制更新标志，确保新轨迹立即生效（提高实时性）
    axis->forceProfileUpdate = true;
    
    // 清除重新规划标志
    axis->isReplanning = false;

}

//
// MotionAxis_moveRelative - 相对位置运动
//
void MotionAxis_moveRelative(MotionAxis_t *axis, float32_t distance)
{
    float32_t startPos;
    
    // 确定起始位置：优先使用缓冲区最新位置或实际位置，避免位置突变
    if(axis->posBuffer.count > 0)
    {
        startPos = axis->motors[0].actPosition;//相对运动时不适合使用最新规划位置，直接使用电机实际位置更符合用户思维。axis->posBuffer.posBuffer[lastIdx];
    }
    else if(axis->numMotors > 0)
    {
        // 缓冲区空，使用电机实际位置（更平滑）
        startPos = axis->motors[0].actPosition;
    }
    else
    {
        // 虚拟轴使用命令位置
        startPos = axis->cmdPosition;
    }
    
    float32_t targetPos = startPos + distance;
    MotionAxis_moveAbsolute(axis, targetPos);
}

//
// MotionAxis_stop - 正常停止
//
void MotionAxis_stop(MotionAxis_t *axis)
{
    // **关键修复**：记录停止命令的执行
    DEBUG_PRINT("[MotionAxis_stop] Called, axisState=%d\n", axis->axisState);
    
    // 保存原始状态
    uint16_t originalState = axis->axisState;
    
    // 允许在 MOVING 或 STANDBY 状态下执行停止
    // 原因：从同步脱开时，从动轴可能是 STANDBY 状态但仍在运动（需要减速停止）
    if(originalState != AXIS_STATE_MOVING && originalState != AXIS_STATE_STANDBY)
    {
        DEBUG_PRINT("[MotionAxis_stop] Ignored - axis not moving (state=%d)\n", originalState);
        return;
    }
    
    // 如果是 STANDBY 状态，检查是否需要减速停止
    // 如果速度已经是0，直接返回
    if(originalState == AXIS_STATE_STANDBY && axis->cmdVelocity == 0.0f && axis->targetVelocity == 0.0f)
    {
        DEBUG_PRINT("[MotionAxis_stop] Already stopped (state=STANDBY, vel=0)\n");
        return;
    }
    
    // 如果是 STANDBY 状态但速度不为0，需要设置为 MOVING 才能生成减速轨迹
    if(originalState == AXIS_STATE_STANDBY && (axis->cmdVelocity != 0.0f || axis->targetVelocity != 0.0f))
    {
        DEBUG_PRINT("[MotionAxis_stop] STANDBY but moving (cmdVel=%.2f, targetVel=%.2f), will stop\n",
               axis->cmdVelocity, axis->targetVelocity);
        // 不改变状态，继续执行停止逻辑
    }
    
    axis->axisState = AXIS_STATE_STOPPING;
        
    // 设置重新规划标志
    axis->isReplanning = true;
    
    // 等待updateProfile完成
    MotionAxis_waitForUpdate(axis);
    
    // 【关键修复】：在截断buffer之前清除isReplanning标志
    // 原因：waitForUpdate()已确保没有并发风险，此时可以安全清除
    // 清除后允许立即执行updateProfile()将减速曲线写入缓冲区
    axis->isReplanning = false;
    
    // 截断buffer并获取起始点（保留10个点防止空载）
    MotionAxis_truncateBuffer(axis);
    
    // 始终从Buffer末尾获取位置、速度和加速度（保证连续性，防止空载）
    float32_t endPos, endVel, endAccel;
    MotionAxis_getBufferEndPoint(axis, &endPos, &endVel, &endAccel);
    
    // **关键修复**：即使末端速度很小（比如从同步脱开时），
    // 原始状态是 MOVING 或 STANDBY（从同步脱开时可能是 STANDBY），都应该生成减速轨迹
    if(ABS(endVel) < 5.0f && (originalState == AXIS_STATE_MOVING || originalState == AXIS_STATE_STANDBY))
    {
        // 速度很小但轴原本在运动（或STANDBY但实际在运动），检查是否应该忽略
        // 如果目标位置和当前位置已经很近，则忽略
        float32_t remainingDist = ABS(axis->targetPosition - axis->cmdPosition);
        float32_t stoppingDist = ABS(endVel * endVel) / (2.0f * axis->profile.maxDecel);
        
        if(remainingDist <= stoppingDist * 1.2f)
        {
            // 剩余距离足够停止，忽略停止命令
            DEBUG_PRINT("[stop] Already at target (dist=%.2f <= stopDist=%.2f), ignore stop\n",
                   remainingDist, stoppingDist);
            // 跳过轨迹生成，必须清除 isReplanning 以解锁 updateProfile
            // 注意：isEmergencyStop 未被设置（TrapProfile_stop 尚未调用），无需清除
            // axisState 保持 STOPPING，后续由 updateControl 的 buffer 空判断转换为 STANDBY
            axis->isReplanning = false;
            return;
        }
        // 剩余距离太远但速度很小，强制设置最小速度以生成减速轨迹
        DEBUG_PRINT("[stop] WARNING: endVel=%.2f too small but dist=%.2f > stopDist=%.2f, force min speed\n",
               endVel, remainingDist, stoppingDist);
        if(endVel > 0) endVel = 1.0f;
        else if(endVel < 0) endVel = -1.0f;
        else endVel = 1.0f; // 速度为0时默认为正方向
    }
    
    // **核心理解**：Buffer末端点就是停止轨迹的起点，无需1dt补偿！
    float32_t p_predicted = endPos;
    float32_t v_predicted = endVel;
    float32_t a_predicted = endAccel;
    
    // 限制加速度在合理范围内
    if(a_predicted > axis->profile.maxAccel * 1.5f)
    {
        a_predicted = axis->profile.maxAccel * 1.5f;
    }
    else if(a_predicted < -axis->profile.maxAccel * 1.5f)
    {
        a_predicted = -axis->profile.maxAccel * 1.5f;
    }
    
    // **关键修复**：如果速度的绝对值太小，限制为最小绝对值，但保持符号
    float32_t absVel = ABS(v_predicted);
    if(absVel < 1.0f && absVel > 0.001f)
    {
        // 速度接近0但非零，保持符号，设置最小绝对值
        float32_t velSign = SIGN(v_predicted);
        v_predicted = velSign * 1.0f;
        DEBUG_PRINT("[stop] Vel too small, set to minimum (endVel=%.2f, absVel=%.2f, newVel=%.2f)\n", 
               endVel, absVel, v_predicted);
    }
    else if(absVel < 0.001f)
    {
        // 速度已经接近0，直接设为0
        v_predicted = 0.0f;
        DEBUG_PRINT("[stop] Vel near zero, set to 0 (endVel=%.2f)\n", endVel);
    }
        
    // 使用预测值作为停止轨迹的起始速度和加速度
    axis->profile.startAccel = a_predicted;
    axis->profile.currentAccel = a_predicted;
    TrapProfile_stop(&axis->profile, endPos, v_predicted, a_predicted, axis->profileUpdateTs, false);
    
    // 记录目标位置和目标速度（用于用户监控）
    // 停止命令的目标位置为停止位置，目标速度为0
    axis->targetPosition = axis->profile.targetPos;
    axis->targetVelocity = 0.0f;
    
    // 设置强制更新标志，确保停止轨迹立即生效
    axis->forceProfileUpdate = true;
    
    // 【关键修复】：立即执行updateProfile将减速曲线写入缓冲区
    // 注意：由于isReplanning已在前面清除，这里updateProfile会正常执行
    MotionAxis_updateProfile(axis);
    
    DEBUG_PRINT("[MotionAxis_stop] Stop profile created: targetPos=%.2f, totalTime=%.3f\n",
           axis->profile.targetPos, axis->profile.totalTime);
}

//
// MotionAxis_emergencyStop - 急停
//
void MotionAxis_emergencyStop(MotionAxis_t *axis)
{
    // 保存原始状态
    uint16_t originalState = axis->axisState;
    
    if(originalState != AXIS_STATE_DISABLED && 
       originalState != AXIS_STATE_ERROR)
    {
        // 检查原始状态，允许 MOVING、STOPPING 或 STANDBY 状态执行急停
        // 从同步脱开时可能是 STANDBY 状态
        if(originalState != AXIS_STATE_MOVING && 
           originalState != AXIS_STATE_STOPPING &&
           originalState != AXIS_STATE_STANDBY)
        {
            DEBUG_PRINT("[emergencyStop] Ignored - axis not moving (state=%d)\n", originalState);
            return;
        }
        
        // 如果是 STANDBY 状态，检查是否需要减速停止
        // 如果速度已经是0，直接返回
        if(originalState == AXIS_STATE_STANDBY && axis->cmdVelocity == 0.0f && axis->targetVelocity == 0.0f)
        {
            DEBUG_PRINT("[emergencyStop] Already stopped (state=STANDBY, vel=0)\n");
            return;
        }
        
        axis->axisState = AXIS_STATE_STOPPING;
        
        // 设置重新规划标志
        axis->isReplanning = true;
        
        // **关键修复**：使用专门的急停加速度变量，避免临时修改maxDecel
        // 设置急停减速度为2倍的正常减速度
        axis->profile.emergencyDecel = axis->profile.maxDecel * 2.0f;
    
        // 等待updateProfile完成
        MotionAxis_waitForUpdate(axis);
        
        // 【关键修复】：在截断buffer之前清除isReplanning标志
        // 原因：waitForUpdate()已确保没有并发风险，此时可以安全清除
        // 清除后允许立即执行updateProfile()将减速曲线写入缓冲区
        axis->isReplanning = false;
        
        // 截断buffer并获取起始点（保留10个点防止空载）
        MotionAxis_truncateBuffer(axis);
    
    // 始终从Buffer末尾获取位置、速度和加速度（保证连续性，防止空载）
    float32_t endPos, endVel, endAccel;
    MotionAxis_getBufferEndPoint(axis, &endPos, &endVel, &endAccel);
    
    // **关键修复**：即使末端速度很小（比如从同步脱开时），
    // 原始状态是 MOVING 或 STANDBY 都应该生成急停轨迹
    if(ABS(endVel) < 5.0f && (originalState == AXIS_STATE_MOVING || originalState == AXIS_STATE_STANDBY))
    {
        // 速度很小但原本在运动，检查剩余距离
        float32_t remainingDist = ABS(axis->targetPosition - axis->cmdPosition);
        float32_t stoppingDist = ABS(endVel * endVel) / (2.0f * axis->profile.emergencyDecel);
        
        if(remainingDist <= stoppingDist * 1.2f)
        {
            // 剩余距离足够停止，忽略急停命令
            DEBUG_PRINT("[emergencyStop] Already at target, ignore\n");
            // 必须清除 isReplanning 和 emergencyDecel 以解锁 updateProfile
            // axisState 保持 STOPPING，后续由 updateControl 的 buffer 空判断转换为 STANDBY
            axis->isReplanning = false;
            axis->profile.emergencyDecel = 0.0f;
            return;
        }
        // 强制设置最小速度以生成急停轨迹
        DEBUG_PRINT("[emergencyStop] WARNING: endVel=%.2f too small, force min speed\n", endVel);
        if(endVel > 0) endVel = 1.0f;
        else if(endVel < 0) endVel = -1.0f;
        else endVel = 1.0f; // 速度为0时默认为正方向
    }
    
    // **核心理解**：Buffer末端点就是急停轨迹的起点，无需1dt补偿！
    float32_t p_predicted = endPos;
    float32_t v_predicted = endVel;
    float32_t a_predicted = endAccel;
    
    // 限制加速度在合理范围内
    if(a_predicted > axis->profile.maxAccel * 1.5f)
    {
        a_predicted = axis->profile.maxAccel * 1.5f;
    }
    else if(a_predicted < -axis->profile.maxAccel * 1.5f)
    {
        a_predicted = -axis->profile.maxAccel * 1.5f;
    }
    
    // **关键修复**：如果速度的绝对值太小，限制为最小绝对值，但保持符号
    float32_t absVel = ABS(v_predicted);
    if(absVel < 1.0f && absVel > 0.001f)
    {
        // 速度接近0但非零，保持符号，设置最小绝对值
        float32_t velSign = SIGN(v_predicted);
        v_predicted = velSign * 1.0f;
        DEBUG_PRINT("[emergencyStop] Vel too small, set to minimum (endVel=%.2f, absVel=%.2f, newVel=%.2f)\n", 
               endVel, absVel, v_predicted);
    }
    else if(absVel < 0.001f)
    {
        // 速度已经接近0，直接设为0
        v_predicted = 0.0f;
        DEBUG_PRINT("[emergencyStop] Vel near zero, set to 0 (endVel=%.2f)\n", endVel);
    }
        
        // 使用预测值作为停止轨迹的起始速度和加速度
        axis->profile.startAccel = a_predicted;
        axis->profile.currentAccel = a_predicted;

        TrapProfile_stop(&axis->profile, endPos, v_predicted, a_predicted, axis->profileUpdateTs, true);
        
        // 记录目标位置和目标速度（用于用户监控）
        // 急停命令的目标位置为停止位置，目标速度为0
        axis->targetPosition = axis->profile.targetPos;
        axis->targetVelocity = 0.0f;
        
        // 设置强制更新标志，确保急停轨迹立即生效
        axis->forceProfileUpdate = true;
        
        // 【关键修复】：立即执行updateProfile将急停曲线写入缓冲区
        // 注意：由于isReplanning已在前面清除，这里updateProfile会正常执行
        MotionAxis_updateProfile(axis);
        
        DEBUG_PRINT("[MotionAxis_emergencyStop] Emergency stop profile created: targetPos=%.2f, totalTime=%.3f\n",
               axis->profile.targetPos, axis->profile.totalTime);
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
    
    // 调试：定期输出S型曲线状态
    static uint32_t scurve_check_counter = 0;
    if(++scurve_check_counter == 1)  // 仅第一次
    {
        DEBUG_PRINT("[updateProfile] First call: jerkTime=%.3f, actualJerk=%.2f, %s\n",
               axis->profile.jerkTime, axis->profile.actualJerk,
               (axis->profile.jerkTime > 0.0001f) ? "S-Curve" : "Trapezoidal");
    }
    
    if(axis->axisState != AXIS_STATE_MOVING && 
       axis->axisState != AXIS_STATE_STOPPING)
    {
        return;
    }
    
    // 如果正在重新规划，跳过本次更新（避免并发修改buffer）
    if(axis->isReplanning)
    {
        return;
    }
    
    // ===== 运动参数变化检测 =====
    // 检测maxVelocity、maxAccel、maxDecel是否发生变化
    // 如果参数变化，需要重新规划轨迹，确保平滑过渡
    // 
    // 注意：STOPPING状态下不触发参数变化检测
    // 原因：stop/emergencyStop会临时修改maxDecel，然后恢复原值
    // 如果触发重新规划，会用恢复后的普通减速度替换急停的大减速度
    
    // DEBUG: 定期输出参数对比
    static uint32_t debugCounter = 0;
    debugCounter++;
    if(debugCounter % MOTION_DEBUG_COUNTER_PERIOD == 0 && axis->profile.isActive)
    {
        DEBUG_PRINT("[updateProfile] Params check: isActive=%d, state=%d, maxVel=%.1f/%.1f, maxAccel=%.1f/%.1f, maxDecel=%.1f/%.1f\n",
               axis->profile.isActive, axis->axisState,
               axis->profile.maxVelocity, axis->profile.configuredMaxVel,
               axis->profile.maxAccel, axis->profile.configuredAccel,
               axis->profile.maxDecel, axis->profile.configuredDecel);
    }
    
    // 只在MOVING状态（非STOPPING）下检测参数变化
    // 
    // **重要修正**：使用 configured* 字段（上次规划时的配置值）进行比较，
    // 而不是 actual* 字段（轨迹规划后的实际使用值，可能因短距离规划而变化）
    // 这样可以避免在纯减速时误判为参数变化
    if(axis->axisState == AXIS_STATE_MOVING &&
       axis->profile.isActive && 
       (axis->profile.maxVelocity != axis->profile.configuredMaxVel ||
        axis->profile.maxAccel != axis->profile.configuredAccel ||
        axis->profile.maxDecel != axis->profile.configuredDecel||
        axis->profile.jerkTime != axis->profile.configuredJerkTime))
    {
        // 检测到参数变化，设置重新规划标志
        axis->isReplanning = true;
        
        DEBUG_PRINT("[updateProfile] Parameter change detected: maxVel %.1f->%.1f, maxAccel %.1f->%.1f, maxDecel %.1f->%.1f\n",
               axis->profile.configuredMaxVel, axis->profile.maxVelocity,
               axis->profile.configuredAccel, axis->profile.maxAccel,
               axis->profile.configuredDecel, axis->profile.maxDecel);
        
        // ===== 截断buffer，保留少量点防止欠载 =====
        DEBUG_PRINT("[updateProfile] Buffer truncate before: count=%d\n", axis->posBuffer.count);
        
        MotionAxis_truncateBuffer(axis);
        
        DEBUG_PRINT("[updateProfile] Buffer truncate after: count=%d\n", axis->posBuffer.count);
        
        // ===== 从buffer末尾继续规划 =====
        float32_t startPos, startVel, startAccel;
        MotionAxis_getBufferEndPoint(axis, &startPos, &startVel, &startAccel);
        
        // 设置起始加速度
        axis->profile.startAccel = startAccel;
        axis->profile.currentAccel = startAccel;
        
        // 重新规划到当前目标位置（使用新的运动参数）
        // 注意：targetVelocity 保持为 axis->targetVelocity（由 moveAbsolute 在开始时设置）
        // 这样可以区分"减速到新速度后继续"和"减速到0停止"
        TrapProfile_setTarget(&axis->profile, startPos, startVel, axis->targetPosition);
        TrapProfile_setTargetVelocity(&axis->profile, axis->targetVelocity);
        TrapProfile_compute(&axis->profile);
        
        DEBUG_PRINT("[updateProfile] Replan with new params: startPos=%.2f, startVel=%.2f, targetPos=%.2f\n",
               startPos, startVel, axis->targetPosition);
        
        // 强制更新，立即生成新轨迹点
        axis->forceProfileUpdate = true;
        //【关键修复】：同步 configured* 字段，阻止重复触发
        // 说明：TrapProfile_compute 只更新了 actual* 字段（内部计算用）
        // 并没有更新 configured* 字段（用于参数变化检测）
        // 如果不手动同步，下一个周期会再次检测到参数变化并重复触发重新规划
        axis->profile.configuredMaxVel = axis->profile.maxVelocity;
        axis->profile.configuredAccel = axis->profile.maxAccel;
        axis->profile.configuredDecel = axis->profile.maxDecel;        
        axis->profile.configuredJerkTime = axis->profile.jerkTime;
        // 清除重新规划标志
        axis->isReplanning = false;
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
    
    // ===== 设置isUpdating标志，保护buffer写入过程 =====
    // 防止运动指令在updateProfile执行期间读取buffer
    axis->isUpdating = true;
    
    // ===== 移除提前检查isActive的逻辑 =====
    // 原因：isActive会在生成最后一个点时被设为false
    // 如果提前检查，会导致最后一批点无法生成
    // 正确做法：在生成点的循环中检查isDone
    
    // 计算缓冲区可填充数量
    freeSpace = ProfileBuffer_getFreeSpace(&axis->posBuffer);
    
    // ===== 优化的缓冲填充策略 =====
    // 关键：保持小buffer，让lastIdx更接近当前执行点
    // 这样从buffer[lastIdx]规划新轨迹时，速度更接近实际执行速度
    // 
    // 策略：
    // 1. 目标buffer大小：10个点（10ms缓冲）- 足够防止欠载，又足够小避免速度滞后
    // 2. 最小buffer大小：5个点（5ms安全余量）
    // 3. updateProfile高频调用（1ms），能够持续补充buffer
    
    uint16_t pointsToGenerate;
    
    // 根据当前buffer数量决定填充策略
    if(axis->posBuffer.count == 0)
    {
        // Buffer空：快速填充到目标大小
        pointsToGenerate = MIN(freeSpace, MOTION_TARGET_BUFFER_SIZE);
    }
    else if(axis->posBuffer.count < MOTION_MIN_BUFFER_SIZE)
    {
        // Buffer低于最小值：加速填充
        pointsToGenerate = MIN(freeSpace, MOTION_TARGET_BUFFER_SIZE - axis->posBuffer.count);
    }
    else if(axis->posBuffer.count < MOTION_TARGET_BUFFER_SIZE)
    {
        // Buffer在最小值和目标值之间：正常填充
        pointsToGenerate = MIN(freeSpace, MOTION_TARGET_BUFFER_SIZE - axis->posBuffer.count);
    }
    else
    {
        // Buffer已达到目标值：每次生成1个点维持水平
        pointsToGenerate = MIN(freeSpace, 1);
    }
    
    // DEBUG: 记录第一个点的生成
    // **关键修复**：检查是否是新profile的第一批点
    // 修复BUG：只有当轨迹已完成（isActive=false）时才重置elapsedTime
    // 原因：当轨迹完成但buffer未消费完时，isNewProfile不应为true
    // 否则会导致elapsedTime被错误重置为0，生成从0开始的错误轨迹点
    bool isNewProfile = false;
    
    if(axis->posBuffer.count == 0)
    {
        if(!axis->profile.isActive)
        {
            // 轨迹已完成且buffer为空：不需要生成新轨迹点
            // 说明：这是正常的停止状态，不需要任何动作
            DEBUG_PRINT("[updateProfile] Profile completed, buffer empty - no trajectory to generate\n");
            
            // 清除isUpdating标志并返回
            axis->isUpdating = false;
            return;
        }
        else if(axis->profile.elapsedTime >= axis->profile.totalTime)
        {
            // elapsedTime已超过总时间但isActive仍为true：也认为是新轨迹
            isNewProfile = true;
            DEBUG_PRINT("[updateProfile] elapsedTime >= totalTime but isActive=true - reset to new trajectory\n");
        }
        // 如果轨迹仍在进行中（elapsedTime < totalTime），不重置
        // 继续生成轨迹点以填充buffer
    }
    
    // **核心原则**：新profile从t=0开始（t=0 = Buffer末端点）
    if(isNewProfile)
    {
        axis->profile.elapsedTime = 0.0f;
        DEBUG_PRINT("[updateProfile] New profile starts, elapsedTime=0, isActive=%d\n", axis->profile.isActive);
    }
    
    bool isFirstPoint = isNewProfile;
    
    // **核心原则**：Profile的起点（t=0）= Buffer末端点
    // 这些值在moveAbsolute中已经经过1dt补偿，确保连续性
    float32_t bufferEndPos = 0.0f, bufferEndVel = 0.0f, bufferEndAccel = 0.0f;
    if(isFirstPoint && axis->posBuffer.count > 0)
    {
        // **核心理解**：使用profile的起始值（即Buffer末端点）
        bufferEndPos = axis->profile.currentPos;
        bufferEndVel = axis->profile.startVelocity;
        bufferEndAccel = axis->profile.startAccel;
        
        DEBUG_PRINT("[updateProfile] Buffer end (from profile): pos=%.2f, vel=%.2f, accel=%.2f\n",
                   bufferEndPos, bufferEndVel, bufferEndAccel);
    }

    // **增量同步**：在生成点之前保存当前writeIdx
    // 这表示新生成的点将写入到这个位置开始
    axis->syncLastWriteIdx = axis->posBuffer.writeIdx;

    for(i = 0; i < pointsToGenerate; i++)
    {
        float32_t dt = axis->profileUpdateTs;
        
        // **关键理解**：新Profile的第一个填充点应该是t=dt，而不是t=0
        // 原因：
        // - Buffer末端点就是新profile的起点（t=0），已经在buffer中了
        // - 如果再写入t=0的点，会产生重复，导致速度/位置出现"平台"
        // - 新profile的第一个填充点应该是t=dt的状态
        // - Profile的计算（包括Phase0/Phase1-3等）会正确处理t=dt的状态
        // 
        // 注意：不再设置dt=0！新轨迹从t=dt开始填充
        
        float32_t nextTime = axis->profile.elapsedTime + dt;
        
        if(axis->profile.isActive && nextTime > axis->profile.totalTime && 
           axis->profile.totalTime > axis->profile.elapsedTime)
        {
            // 下一个点会超过totalTime，调整dt使其精确命中totalTime
            dt = axis->profile.totalTime - axis->profile.elapsedTime;
            nextTime = axis->profile.totalTime;
            DEBUG_PRINT("[updateProfile] Adjusted final dt: %.4f -> %.4f to hit totalTime=%.3f\n",
                   axis->profileUpdateTs, dt, axis->profile.totalTime);
        }
        
        // **关键修复**：先推进elapsedTime，再获取所有状态（保证时间一致）
        axis->profile.elapsedTime = nextTime;
        
        // 获取位置（现在使用更新后的elapsedTime，与velocity/accel一致）
        position = TrapProfile_getPosition(&axis->profile, 0.0f);
        
        // 获取速度（使用当前profile的elapsedTime）
        float32_t velocity = TrapProfile_getVelocity(&axis->profile);
        
        // 获取加速度（使用当前profile的elapsedTime）
        float32_t acceleration = TrapProfile_getAcceleration(&axis->profile);
        
        // **核心理念**：第一个填充的点是t=dt的状态（t=0已在buffer中）
        if(isFirstPoint && i == 0 && axis->posBuffer.count > 0)
        {
            // Buffer有数据时，第一个填充的点是t=dt的状态
            // 原因：
            // 1. Profile的t=0 = Buffer末端点（已经在buffer中）
            // 2. 从t=dt开始填充，避免重复，消除"平台"
            // 3. Profile内部正确计算了t=dt的状态（包含Phase0/Phase1-3等）
            
            DEBUG_PRINT("[updateProfile] First point: t=%.4f (t=0 already in buffer), pos=%.2f, vel=%.2f, accel=%.2f\n",
                       nextTime, position, velocity, acceleration);
        }
        
        // **调试输出**：检查急停时的加速度计算
        if(axis->profile.emergencyDecel > 0.1f && i < 3)
        {
            DEBUG_PRINT("[Buffer Write %d] t=%.4f, accel=%.2f, emergencyDecel=%.2f, reverseDecelTime=%.3f\n",
                       i, axis->profile.elapsedTime, acceleration, axis->profile.emergencyDecel, axis->profile.reverseDecelTime);
        }
        
        // DEBUG: 输出第一个生成的点
        if(isFirstPoint && i == 0)
        {
            DEBUG_PRINT("[updateProfile] First point: pos=%.2f, vel=%.2f, accel=%.2f, elapsedTime=%.3f, state=%d\n",
                   position, velocity, acceleration, axis->profile.elapsedTime, axis->profile.state);
            isFirstPoint = false;
        }
        
        // **关键修复**：拒绝写入异常的velocity=0
        // 这是循环过程中的问题：当t超过totalTime时velocity被设为0
        if(axis->posBuffer.count > 0)
        {
            uint16_t lastIdx = (axis->posBuffer.writeIdx + MOTION_PROFILE_BUFFER_SIZE - 1) % 
                              MOTION_PROFILE_BUFFER_SIZE;
            float32_t lastVelInBuffer = axis->posBuffer.velBuffer[lastIdx];
            
            // **移除硬限制**：不再强制拒绝写入0速度
            // 如果profile计算出速度=0，应该接受它
            // 之前的硬限制导致"位置停止但速度非0"的物理矛盾
            // 现在依靠正确的S曲线数学计算来保证平滑性
            
            // 仅记录异常供调试（提高阈值，避免误报）
            if(ABS(velocity) < 0.5f && ABS(lastVelInBuffer) > 50.0f)
            {
                DEBUG_PRINT("[WARNING] Large velocity drop: %.2f -> %.2f (elapsedTime=%.3f)\n",
                       lastVelInBuffer, velocity, axis->profile.elapsedTime);
            }
        }
        
        // 获取当前阶段的实际jerk值（用于1dt补偿）
#if USE_SCURVE_PROFILE
        float32_t jerk = SCurve_getJerk(&axis->profile);
#else
        float32_t jerk = 0.0f;  // 梯形曲线无jerk
#endif
        
        // 写入位置、速度、加速度和jerk到buffer
        ProfileBuffer_write(&axis->posBuffer, position, velocity, acceleration, jerk);
        DEBUG_PRINT("[Buffer Write] pos=%.4f, vel=%.2f, accel=%.2f, jerk=%.2f, idx=%d, count=%d\n",
            position, velocity, acceleration, jerk, axis->posBuffer.writeIdx, axis->posBuffer.count);
        // 更新下一次规划的起始点（确保轨迹连续）
        axis->profile.nextPlanPos = position;
        axis->profile.nextPlanVel = velocity;
        
        // **关键修正**：先写入当前点，然后检查是否完成
        // 这样可以确保运动完成时的最后一个点（targetPos, 0）被正确写入buffer
        if(TrapProfile_isDone(&axis->profile))
        {
            // 运动完成，退出循环
            // 注意：此时最后一个点已经被写入buffer
            break;
        }
    }

    // ===== 轨迹完成处理：清除停止命令相关标志 =====
    // 当轨迹规划完成（isActive=false）时，清除停止命令标志
    // 注意：STOPPING→STANDBY 状态转换在 updateControl 中进行（当 buffer 消费空时）
    if(!axis->profile.isActive)
    {
        // **关键修复**：当轨迹正常完成时，自动切换到 STOPPING 状态
        // 原因：正常运动完成后（不是调用stop），axisState仍然是MOVING
        // 必须在这里切换状态，才能在buffer为空时正确转换到STANDBY
        if(axis->axisState == AXIS_STATE_MOVING)
        {
            axis->axisState = AXIS_STATE_STOPPING;
            DEBUG_PRINT("[updateProfile] Profile completed, auto switch from MOVING to STOPPING\n");
        }

        // 清除急停命令标志和急停减速度（急停轨迹已完成）
        if(axis->profile.isEmergencyStop)
        {
            axis->profile.isEmergencyStop = false;
            axis->profile.emergencyDecel = 0.0f;
        }

        // 清除 isReplanning 标志（规划已完成）
        if(axis->isReplanning)
        {
            axis->isReplanning = false;
        }

        // 注意：STOPPING → STANDBY 的状态转换在 updateControl 中进行
        // 条件：axisState == STOPPING && buffer 为空
        // 原因：只有当 buffer 中的所有减速点都被消费完，才说明轴真正停止
    }

    // ===== 同步回调：通知轨迹更新完成 =====
    // 回调onProfileUpdate，通知从动轴可以填充同步轨迹
    // 注意：这里使用i来记录本次循环实际写入的点数
    // **关键修复**：传递主轴缓冲区的最新位置，而不是上一周期的cmdPosition
    // 这样从轴可以立即使用主轴的最新轨迹位置进行同步
    if(axis->posBuffer.count > 0)
    {
        uint16_t lastIdx = (axis->posBuffer.writeIdx + MOTION_PROFILE_BUFFER_SIZE - 1) %
                          MOTION_PROFILE_BUFFER_SIZE;
        axis->syncProfilePos = axis->posBuffer.posBuffer[lastIdx];
        axis->syncProfileVel = axis->posBuffer.velBuffer[lastIdx];
    }
    else
    {
        // 缓冲区为空（不应该发生），使用命令位置作为后备
        axis->syncProfilePos = axis->cmdPosition;
        axis->syncProfileVel = axis->cmdVelocity;
    }

    DEBUG_PRINT("[updateProfile] Sync callback: masterPos=%.2f, masterVel=%.2f, pointsGenerated=%d\n",
           axis->syncProfilePos, axis->syncProfileVel, i);

    // **增量同步**：记录新点的起始位置，供从轴增量更新使用
    uint16_t startIdx = axis->syncLastWriteIdx;
    uint16_t newPoints = i;  // 本次生成的点数

    // 更新lastWriteIdx，为下次回调准备
    axis->syncLastWriteIdx = axis->posBuffer.writeIdx;

    if(axis->onProfileUpdate != NULL && newPoints > 0)
    {
        axis->onProfileUpdate(axis->syncCallbackContext, (void*)axis, newPoints, startIdx);
    }

    // ===== 清除isUpdating标志 =====
    axis->isUpdating = false;
}

//
// MotionAxis_updateControl - 更新控制（高频任务，位置环周期执行）
//
// 关键改进：
// 1. 一个轴的位置命令分发给所有绑定的电机，保证完美同步
// 2. 缓冲区空时的保护机制，防止电机突然停止
// 3. 所有轴统一逻辑：无论是否同步，都从自己的缓冲区读取
//    - 同步中：从轴缓冲区由主轴的onProfileUpdate回调填充
//    - 非同步中：从轴缓冲区由自己的updateProfile填充
//
void MotionAxis_updateControl(MotionAxis_t *axis)
{
    float32_t cmdPos, cmdVel, cmdAcceleration;
    uint16_t i;
    float32_t velRef;
    static uint32_t bufferEmptyWarning = 0;

    if(axis->axisState == AXIS_STATE_DISABLED)
    {
        return;
    }

    // 从缓冲区读取位置和速度命令（轴坐标系）
    // 所有轴统一逻辑：无论是否同步，都从自己的缓冲区读取
    bool bufferReadSuccess = ProfileBuffer_read(&axis->posBuffer, &cmdPos, &cmdVel, &cmdAcceleration);
    static uint32_t debugCount = 0;

    // 调试：无论读取成功与否都打印，特别是碰撞后
    if(debugCount++ < 10 || bufferReadSuccess || axis->axisState == AXIS_STATE_STOPPING)
    {
        DEBUG_PRINT("[MotionAxis_updateControl] Buffer %s: cmdPos=%.2f, cmdVel=%.2f, state=%d, bufferCount=%d, readIdx=%d, writeIdx=%d, isReplanning=%d\n",
            bufferReadSuccess ? "read" : "EMPTY",
            bufferReadSuccess ? cmdPos : axis->cmdPosition,
            bufferReadSuccess ? cmdVel : axis->cmdVelocity,
            axis->axisState,
            axis->posBuffer.count,
            axis->posBuffer.readIdx,
            axis->posBuffer.writeIdx,
            axis->isReplanning);
    }

    if(bufferReadSuccess)
    {
        // 正常情况：从缓冲区读取到新位置和速度
        axis->cmdPosition = cmdPos;
        axis->cmdVelocity = cmdVel;
        axis->cmdAcceleration = cmdAcceleration;
        bufferEmptyWarning = 0;  // 复位警告计数
    }
    else
    {
        // 缓冲区空，保持当前命令（保护机制）
        cmdPos = axis->cmdPosition;
        cmdVel = axis->cmdVelocity;
        cmdAcceleration = axis->cmdAcceleration;

        // 【轴停止判断】：当 buffer 为空时，说明所有轨迹点已执行完
        if(axis->axisState == AXIS_STATE_STOPPING)
        {
            // 减速完成（缓冲区为空），切换到 STANDBY 状态
            axis->axisState = AXIS_STATE_STANDBY;
            axis->isStopped = true;
            axis->cmdVelocity = 0.0f;
            axis->targetVelocity = 0.0f;

            // 清除急停状态标志
            if(axis->profile.emergencyDecel > 0.1f)
            {
                axis->profile.emergencyDecel = 0.0f;
            }

            // 清除急停命令标志
            if(axis->profile.isEmergencyStop)
            {
                axis->profile.isEmergencyStop = false;
            }

            DEBUG_PRINT("[MotionAxis_updateControl] STOPPING complete (buffer empty) - switching to STANDBY\n");
        }

        DEBUG_PRINT("[MotionAxis_updateControl] Buffer EMPTY: keep current cmdPos=%.2f, cmdVel=%.2f, state=%d\n",
            axis->cmdPosition, axis->cmdVelocity, axis->axisState);
        if(bufferEmptyWarning == MOTION_BUFFER_EMPTY_WARNING_THRESHOLD)
        {
            // 缓冲区持续为空达到警告阈值
        }
        if(bufferEmptyWarning > MOTION_BUFFER_EMPTY_ERROR_THRESHOLD)
        {
            axis->errorCounter++;
            bufferEmptyWarning = MOTION_BUFFER_EMPTY_ERROR_THRESHOLD + 1;
        }
    }

    // 将相同的位置命令分发给所有电机
    // 每个电机根据自己的齿轮比和反馈独立PID控制
    for(i = 0; i < axis->numMotors; i++)
    {
        MotorDrive_updateControl(&axis->motors[i], cmdPos, &velRef);
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

    // ===== 同步回调：通知位置更新完成 =====
    if(axis->onPositionUpdate != NULL)
    {
        axis->onPositionUpdate(axis->syncCallbackContext, (void*)axis, axis->cmdPosition, axis->cmdVelocity);
    }
}

//
// MotionAxis_updateFeedback - 更新指定电机的反馈（从CPU2获取）
// @note 对于绑定了电机的轴（主轴或从动轴），轴坐标始终等于电机实际坐标
//       电机坐标（编码器反馈）是实际值，轴坐标应该反映电机的实际位置
//       只有虚拟轴（无电机）才使用命令位置作为实际位置
//
void MotionAxis_updateFeedback(MotionAxis_t *axis, uint16_t motorIndex,
                               float32_t actPos, float32_t actVel)
{
    if(motorIndex < axis->numMotors)
    {
        // 更新电机反馈（电机坐标系）
        MotorDrive_updateFeedback(&axis->motors[motorIndex], actPos, actVel);
        
        // 关键：只要绑定了电机，轴坐标就等于电机实际坐标
        // 电机坐标是编码器反馈，是实际值，轴坐标应该始终反映电机的实际位置
        if(axis->numMotors > 0)
        {
            // 绑定电机的轴：轴实际位置 = 电机实际位置
            // 使用第一个电机的坐标（单电机情况）
            axis->actPosition = axis->motors[0].actPosition;
            axis->actVelocity = axis->motors[0].actVelocity;
        }
        else
        {
            // 虚拟轴（无电机）：实际位置 = 命令位置
            axis->actPosition = axis->cmdPosition;
            axis->actVelocity = axis->cmdVelocity;
        }
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
// MotionAxis_isStopped - 获取统一停止状态
// 返回轴是否完全停止（无论是否有电机、虚拟轴等）
// 由MotionAxis_updateProfile实时更新
// 注意：这个函数不仅检查isStopped标志，还会检查axisState和cmdVelocity
// 以确保在同步运动等场景下也能准确判断停止状态
//
bool MotionAxis_isStopped(MotionAxis_t *axis)
{
    // 首先检查isStopped标志
    if(axis->isStopped)
    {
        return true;
    }
    
    // 如果isStopped为false，进一步检查轴状态
    // 关键修复：当axisState不是MOVING或STOPPING时，即使isStopped为false，轴也可能是停止的
    if(axis->axisState != AXIS_STATE_MOVING && axis->axisState != AXIS_STATE_STOPPING)
    {
        return true;
    }
    
    // 检查命令速度是否接近0（容差阈值）
    if(fabsf(axis->cmdVelocity) < 0.1f)
    {
        return true;
    }
    
    // 轴仍在运动中
    return false;
}

//
// MotionAxis_getMotorCount - 获取轴绑定的电机数量
//
uint16_t MotionAxis_getMotorCount(MotionAxis_t *axis)
{
    return axis->numMotors;
}

//
// MotionAxis_getAxisType - 获取轴类型
//
AxisType_e MotionAxis_getAxisType(MotionAxis_t *axis)
{
    return axis->axisType;
}

//
// MotionAxis_getAxisState - 获取轴状态
//
AxisState_e MotionAxis_getAxisState(MotionAxis_t *axis)
{
    return axis->axisState;
}

//
// MotionAxis_getCmdPosition - 获取命令位置
//
float32_t MotionAxis_getCmdPosition(MotionAxis_t *axis)
{
    return axis->cmdPosition;
}

//
// MotionAxis_setCmdPosition - 设置命令位置（用于同步控制）
// 同步状态下，从动轴直接从主轴获取命令位置
//
void MotionAxis_setCmdPosition(MotionAxis_t *axis, float32_t cmdPos)
{
    axis->cmdPosition = cmdPos;
}

//
// MotionAxis_setActPosition - 设置实际位置（用于软件回零）
// 直接修改轴的实际位置，用于软件回零功能
// 注意：同时也会修改电机的实际位置
//
void MotionAxis_setActPosition(MotionAxis_t *axis, float32_t actPos)
{
    axis->actPosition = actPos;
    
    // 如果轴绑定了电机，同时更新电机的实际位置
    if (axis->numMotors > 0 && axis->motors[0].enable)
    {
        axis->motors[0].actPosition = actPos * axis->motors[0].gearRatio;
    }
}

//
// MotionAxis_getActPosition - 获取实际位置
//
float32_t MotionAxis_getActPosition(MotionAxis_t *axis)
{
    return axis->actPosition;
}

//
// MotionAxis_getCmdVelocity - 获取命令速度
//
float32_t MotionAxis_getCmdVelocity(MotionAxis_t *axis)
{
    return axis->cmdVelocity;
}

//
// MotionAxis_getActVelocity - 获取实际速度
//
float32_t MotionAxis_getActVelocity(MotionAxis_t *axis)
{
    return axis->actVelocity;
}

//
// MotionAxis_getTargetPosition - 获取目标位置
//
float32_t MotionAxis_getTargetPosition(MotionAxis_t *axis)
{
    return axis->targetPosition;
}

//
// MotionAxis_getTargetVelocity - 获取目标速度
//
float32_t MotionAxis_getTargetVelocity(MotionAxis_t *axis)
{
    return axis->targetVelocity;
}

//
// MotionAxis_getBufferCount - 获取缓冲区数量
//
uint16_t MotionAxis_getBufferCount(MotionAxis_t *axis)
{
    return axis->posBuffer.count;
}

//
// MotionAxis_getProfileState - 获取轨迹状态
//
ProfileState_e MotionAxis_getProfileState(MotionAxis_t *axis)
{
    return axis->profile.state;
}

//
// MotorDrive_getActPosition - 获取电机实际位置
//
float32_t MotorDrive_getActPosition(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0.0f;
    }
    return axis->motors[motorIndex].actPosition;
}

//
// MotorDrive_getActVelocity - 获取电机实际速度
//
float32_t MotorDrive_getActVelocity(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0.0f;
    }
    return axis->motors[motorIndex].actVelocity;
}

//
// MotorDrive_getActAcceleration - 获取电机实际加速度（从buffer读取）
//
float32_t MotorDrive_getActAcceleration(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0.0f;
    }
    
    // **关键修复**：从buffer读取当前正在执行的点的加速度
    // 必须与cmdPosition和cmdVelocity保持一致（都来自readIdx点）
    if(axis->posBuffer.count == 0)
    {
        return 0.0f;
    }
    
    // 读取buffer中刚刚读出来执行的那个点的加速度（readIdx-1）
    // 这与ProfileBuffer_read读取的position和velocity是同一个点
    uint16_t currentIdx = (axis->posBuffer.readIdx + MOTION_PROFILE_BUFFER_SIZE - 1) % 
                          MOTION_PROFILE_BUFFER_SIZE;
    return axis->posBuffer.accelBuffer[currentIdx];
}

//
// MotorDrive_getActJerk - 获取当前执行点的加加速度
//
// 参数：
//   axis - 轴对象指针
//   motorIndex - 电机索引
//
// 返回：当前加加速度 [unit/s³]
//
// 说明：
//   从buffer读取当前正在执行的点的jerk值
//   与position、velocity、acceleration来自同一个buffer点
//
float32_t MotorDrive_getActJerk(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0.0f;
    }
    
    // 从buffer读取当前正在执行的点的加加速度
    // 必须与cmdPosition、cmdVelocity、cmdAcceleration保持一致（都来自readIdx点）
    if(axis->posBuffer.count == 0)
    {
        return 0.0f;
    }
    
    // 读取buffer中刚刚读出来执行的那个点的jerk（readIdx-1）
    // 这与ProfileBuffer_read读取的position、velocity、acceleration是同一个点
    uint16_t currentIdx = (axis->posBuffer.readIdx + MOTION_PROFILE_BUFFER_SIZE - 1) % 
                          MOTION_PROFILE_BUFFER_SIZE;
    return axis->posBuffer.jerkBuffer[currentIdx];
}

//
// MotorDrive_getPIDKp - 获取电机PID的Kp值
//
float32_t MotorDrive_getPIDKp(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0.0f;
    }
    return axis->motors[motorIndex].posPID.Kp;
}

//
// MotorDrive_isPIDEnabled - 获取电机PID使能状态
//
bool MotorDrive_isPIDEnabled(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return false;
    }
    return axis->motors[motorIndex].posPID.enable;
}

//
// MotorDrive_isEnabled - 获取电机使能状态
//
bool MotorDrive_isEnabled(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return false;
    }
    return axis->motors[motorIndex].enable;
}

//
// MotorDrive_getErrorCounter - 获取电机错误计数
//
uint32_t MotorDrive_getErrorCounter(MotionAxis_t *axis, uint16_t motorIndex)
{
    if(motorIndex >= axis->numMotors)
    {
        return 0;
    }
    return axis->motors[motorIndex].errorCounter;
}

//
// MotionAxis_getTotalTime - 获取轨迹总时间（诊断用）
//
float32_t MotionAxis_getTotalTime(MotionAxis_t *axis)
{
    return axis->profile.totalTime;
}

//
// MotionAxis_getElapsedTime - 获取轨迹已执行时间（诊断用）
//
float32_t MotionAxis_getElapsedTime(MotionAxis_t *axis)
{
    return axis->profile.elapsedTime;
}

//
// MotionAxis_getProfileUpdateTs - 获取轨迹更新时间步长（诊断用）
//
float32_t MotionAxis_getProfileUpdateTs(MotionAxis_t *axis)
{
    return axis->profileUpdateTs;
}

//
// MotionAxis_getBufferFreeSpace - 获取缓冲区剩余空间（诊断用）
//
uint16_t MotionAxis_getBufferFreeSpace(MotionAxis_t *axis)
{
    return ProfileBuffer_getFreeSpace(&axis->posBuffer);
}

//
// MotionAxis_isSyncing - 获取轴是否处于同步跟随状态
// 由SyncControl模块设置，用于标识轴是否处于同步跟随状态
//
bool MotionAxis_isSyncing(MotionAxis_t *axis)
{
    return axis->isSyncing;
}

//
// MotionAxis_setSyncing - 设置轴的同步状态
// 由SyncControl模块调用，在建立/释放同步时设置
//
void MotionAxis_setSyncing(MotionAxis_t *axis, bool isSyncing)
{
    axis->isSyncing = isSyncing;
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

//*****************************************************************************
// 同步回调函数实现
//*****************************************************************************

//
// MotionAxis_registerSyncCallback - 注册同步回调函数
//
void MotionAxis_registerSyncCallback(void* axisPtr,
    void* context,
    void (*onProfileUpdate)(void* context, void* masterAxis, uint16_t pointsGenerated, uint16_t startIdx),
    void (*onPositionUpdate)(void* context, void* masterAxis, float32_t cmdPos, float32_t cmdVel),
    void (*onBufferTruncate)(void* context, void* masterAxis, uint16_t newCount))
{
    MotionAxis_t* axis = (MotionAxis_t*)axisPtr;
    axis->syncCallbackContext = context;
    axis->onProfileUpdate = (void (*)(void*, void*, uint16_t, uint16_t))onProfileUpdate;
    axis->onPositionUpdate = (void (*)(void*, void*, float32_t, float32_t))onPositionUpdate;
    axis->onBufferTruncate = (void (*)(void*, void*, uint16_t))onBufferTruncate;
    axis->syncLastWriteIdx = axis->posBuffer.writeIdx;  // 初始化lastWriteIdx

    DEBUG_PRINT("[MotionAxis] Registered sync callback for axis %d\n", axis->axisID);
}

//
// MotionAxis_unregisterSyncCallback - 注销同步回调函数
//
void MotionAxis_unregisterSyncCallback(void* axisPtr)
{
    MotionAxis_t* axis = (MotionAxis_t*)axisPtr;
    axis->syncCallbackContext = NULL;
    axis->onProfileUpdate = NULL;
    axis->onPositionUpdate = NULL;
    axis->onBufferTruncate = NULL;

    DEBUG_PRINT("[MotionAxis] Unregistered sync callback for axis %d\n", axis->axisID);
}

//
// End of File
//


