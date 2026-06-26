//#############################################################################
//
// FILE:   scurve_profile.c (Redesigned Multi-Phase Architecture)
//
// TITLE:  S-Curve Trajectory Profile - Complete Redesign (Optional Feature)
//
// 设计理念：
//   系统性地处理所有运动情况：
//   1. 停止命令 (STOP)
//   2. 反向运动 (REVERSE) - 先减速到0，再加速到目标
//   3. 过冲运动 (OVERSHOOT) - 距离不足时允许过冲后返回
//   4. 正常运动 (NORMAL) - 标准S曲线
//   5. 速度变化 (VELOCITY_CHANGE) - 从当前速度过渡到目标速度
//
// 核心原则：
//   - 任何反向运动都分解为：减速到0 + 从0加速
//   - 加速度过渡始终独立处理（Phase 0）
//   - 保证位置、速度、加速度的连续性
//
// 裁剪说明：
//   此文件为S型曲线功能模块（可选）
//   在scurve_profile.h中设置 USE_SCURVE_PROFILE=0 可完全禁用
//   禁用后，motion_control.c将使用内置的梯形曲线实现
//
//#############################################################################

#include "scurve_profile.h"

// 仅在启用S型曲线功能时编译此文件
// #if USE_SCURVE_PROFILE
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//*****************************************************************************
// 宏定义
//*****************************************************************************
extern FILE* g_motion_debug_log;

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

#define ABS(x) ((x) > 0 ? (x) : -(x))
#define SIGN(x) ((x) > 0 ? 1.0f : (x) < 0 ? -1.0f : 0.0f)
#define MIN(a,b) ((a) < (b) ? (a) : (b))
#define MAX(a,b) ((a) > (b) ? (a) : (b))
#define SQUARE(x) ((x) * (x))
#define CUBE(x) ((x) * (x) * (x))

#define SCURVE_EPSILON_TIME 0.0001f
#define SCURVE_EPSILON_VEL 0.1f
#define SCURVE_EPSILON_POS 0.01f
#define SCURVE_EPSILON_ACCEL 50.0f

//*****************************************************************************
// 运动类型枚举
//*****************************************************************************
typedef enum {
    MOTION_TYPE_STOP,            // 停止命令
    MOTION_TYPE_REVERSE,         // 反向运动
    MOTION_TYPE_OVERSHOOT,       // 过冲运动
    MOTION_TYPE_VELOCITY_CHANGE, // 速度变化（不需减到0）
    MOTION_TYPE_NORMAL,          // 正常运动
    MOTION_TYPE_MICRO            // 微小运动（距离很小，使用简化轨迹）
} MotionType;

//*****************************************************************************
// 微小运动阈值定义
//*****************************************************************************
#define MICRO_MOTION_THRESHOLD      5.0f    // 微小运动距离阈值（单位：counts）
#define MICRO_MOTION_MIN_TIME       0.01f   // 微小运动最小执行时间（秒）

//*****************************************************************************
// 内部函数声明
//*****************************************************************************
static void calculateStopToZeroProfile(float32_t v0, float32_t a0, 
                                       float32_t dMax, float32_t jerkTime,
                                       float32_t *t_trans, float32_t *t_jerk1, 
                                       float32_t *t_const, float32_t *t_jerk2,
                                       float32_t *s_total, float32_t *v_after_trans,
                                       float32_t *a_after_trans);

static float32_t calculateDecelDistance(float32_t v_start, float32_t v_target,
                                        float32_t dMax, float32_t jerkTime);

static void calculate7SegmentSCurve(float32_t v_start, float32_t v_max, 
                                   float32_t distance, float32_t aMax, 
                                   float32_t dMax, float32_t jerkTime,
                                   TrapezoidalProfile_t *profile);

static MotionType determineMotionType(TrapezoidalProfile_t *profile, 
                                     float32_t direction, float32_t distance,
                                     float32_t effectiveDecel);

//*****************************************************************************
//
// calculateStopToZeroProfile - 计算减速到0的Profile
//
// 参数：
//   v0 - 初始速度（绝对值）
//   a0 - 初始加速度（有符号）
//   dMax - 最大减速度
//   jerkTime - Jerk时间
//   t_trans - [输出] 加速度过渡时间
//   t_jerk1 - [输出] 加减速时间
//   t_const - [输出] 匀减速时间
//   t_jerk2 - [输出] 减减速时间
//   s_total - [输出] 总停止距离
//   v_after_trans - [输出] 加速度过渡后的速度
//   a_after_trans - [输出] 加速度过渡后的加速度
//
// 返回：无
//
// 说明：
//   计算从当前速度和加速度减速到0的完整轨迹，包括：
//   - Phase 0: 加速度过渡段（如果 a0 > 0）
//   - Phase 1-3: 标准减速段（加减速、匀减速、减减速）
//
//*****************************************************************************
static void calculateStopToZeroProfile(float32_t v0, float32_t a0, 
                                       float32_t dMax, float32_t jerkTime,
                                       float32_t *t_trans, float32_t *t_jerk1, 
                                       float32_t *t_const, float32_t *t_jerk2,
                                       float32_t *s_total, float32_t *v_after_trans,
                                       float32_t *a_after_trans)
{
    float32_t jMax = dMax / jerkTime;
    float32_t s_trans = 0.0f;
    float32_t v1 = v0;
    float32_t a1 = 0.0f;  // Phase0后的加速度（用于Phase1-3）
    
    // **关键**：速度方向决定了减速加速度的方向
    // v > 0: 减速需要 a < 0
    // v < 0: 减速需要 a > 0
    float32_t v_sign = SIGN(v0);
    if(ABS(v_sign) < 0.5f) v_sign = 1.0f;  // 默认正向
    
    float32_t accelThreshold = 100.0f;
    float32_t velThreshold = 1.0f;
    // **情况1**：速度或加速度接近0 → 跳过Phase0，从0开始标准减速
    if(ABS(v0) < velThreshold || ABS(a0) < accelThreshold)
    {
        *t_trans = 0.0f;
        v1 = v0;
        a1 = 0.0f;
        DEBUG_PRINT("[StopProfile Phase0] a0=%.2f, v0=%.2f (~0) -> Skip Phase0\n", a0, v0);
    }
    // **情况2**：正在减速（a * v < 0）→ 加速度方向正确
    else if(a0 * v0 < 0)
    {
        float32_t a0_abs = ABS(a0);
        
        if(a0_abs <= dMax * 1.1f)
        {
            // 减速度在合理范围内 → 跳过Phase0，保持当前加速度
            *t_trans = 0.0f;
            v1 = v0;
            a1 = a0;  // **关键**：保持当前加速度，不是0！
            DEBUG_PRINT("[StopProfile Phase0] a0=%.2f is decelerating (a*v<0), |a|<=dMax -> Skip Phase0, keep a1=%.2f\n", a0, a1);
        }
        else
        {
            // 减速度过大 → Phase0调整到±dMax
            *t_trans = (a0_abs - dMax) / jMax;
            float32_t maxTransTime = MIN(0.1f, jerkTime);
            if(*t_trans > maxTransTime) *t_trans = maxTransTime;
            
            float32_t jerk_dir = -SIGN(a0);
            float32_t vel_change = a0 * (*t_trans) + jerk_dir * 0.5f * jMax * SQUARE(*t_trans);
            v1 = v0 + vel_change;
            s_trans = v0 * (*t_trans) + 0.5f * a0 * SQUARE(*t_trans) + 
                     jerk_dir * (jMax * CUBE(*t_trans)) / 6.0f;
            a1 = -v_sign * dMax;  // Phase0后加速度为±dMax（减速方向）
            
            DEBUG_PRINT("[StopProfile Phase0] a0=%.2f->%.2f (adjust to dMax), t=%.3f, v: %.2f->%.2f, s=%.2f\n",
                       a0, a1, *t_trans, v0, v1, s_trans);
        }
    }
    // **情况3**：正在加速（a * v > 0）→ Phase0将加速度过渡到0
    else
    {
        *t_trans = ABS(a0) / jMax;
        float32_t maxTransTime = MIN(0.2f, 2.0f * jerkTime);
        if(*t_trans > maxTransTime) *t_trans = maxTransTime;
        
        float32_t jerk_dir = -SIGN(a0);
        float32_t vel_change = a0 * (*t_trans) + jerk_dir * 0.5f * jMax * SQUARE(*t_trans);
        v1 = v0 + vel_change;
        s_trans = v0 * (*t_trans) + 0.5f * a0 * SQUARE(*t_trans) + 
                 jerk_dir * (jMax * CUBE(*t_trans)) / 6.0f;
        a1 = 0.0f;  // Phase0后加速度为0
        
        DEBUG_PRINT("[StopProfile Phase0] a0=%.2f is accelerating (a*v>0) -> Phase0 to 0, t=%.3f, v: %.2f->%.2f, s=%.2f\n",
                   a0, *t_trans, v0, v1, s_trans);
    }
    
    *v_after_trans = v1;
    
    // **关键**：Phase1-3使用v1和a1计算
    float32_t v1_abs = ABS(v1);
    float32_t a1_decel = ABS(a1);  // a1的绝对值，表示减速度大小
    
    // Phase 1-3: 从 (v1_abs, a1_decel) 减速到 (0, 0)
    // a1_decel是当前减速度的绝对值（正值表示正在减速）
    float32_t s_decel = 0.0f;
    
    // **情况A**：a1已经是减速加速度（a1_decel > 0）
    if(a1_decel > accelThreshold)
    {
        // 当前已经在减速，使用a1_decel作为起始减速度
        
        // **情况A1**：减速度接近或达到最大值 → 直接Phase2+3
        if(a1_decel >= dMax * 0.9f)
        {
            float32_t effective_decel = MIN(a1_decel, dMax);
            
            // Phase1时间=0（已经达到减速度）
            *t_jerk1 = 0.0f;
            *t_jerk2 = jerkTime;
            
            // Phase3减少的速度
            float32_t v_reduced_by_phase3 = 0.5f * effective_decel * jerkTime;
            float32_t v_to_reduce_in_phase2 = v1_abs - v_reduced_by_phase3;
            
            if(v_to_reduce_in_phase2 > SCURVE_EPSILON_VEL)
            {
                *t_const = v_to_reduce_in_phase2 / effective_decel;
                
                float32_t s2 = v1_abs * (*t_const) - 0.5f * effective_decel * SQUARE(*t_const);
                float32_t v2 = v1_abs - effective_decel * (*t_const);
                float32_t s3 = v2 * (*t_jerk2) - 0.5f * effective_decel * SQUARE(*t_jerk2) + 
                              (jMax * CUBE(*t_jerk2)) / 6.0f;
                s_decel = s2 + s3;
                
                DEBUG_PRINT("[StopProfile Phase2+3] a1=%.2f, v1=%.2f, t2=%.3f, t3=%.3f, s=%.2f\n",
                           a1_decel, v1_abs, *t_const, *t_jerk2, s_decel);
            }
            else
            {
                *t_const = 0.0f;
                *t_jerk2 = sqrtf(2.0f * v1_abs / effective_decel);
                if(*t_jerk2 > jerkTime) *t_jerk2 = jerkTime;
                s_decel = v1_abs * (*t_jerk2) - 0.5f * effective_decel * SQUARE(*t_jerk2) + 
                         (jMax * CUBE(*t_jerk2)) / 6.0f;
                
                DEBUG_PRINT("[StopProfile Phase3 Only] a1=%.2f, v1=%.2f, t3=%.3f, s=%.2f\n",
                           a1_decel, v1_abs, *t_jerk2, s_decel);
            }
        }
        // **情况A2**：减速度小于最大值 → Phase1继续增加减速度到dMax，然后Phase2+3
        else
        {
            // Phase1: 从a1_decel增加到dMax
            *t_jerk1 = (dMax - a1_decel) / jMax;
            
            // Phase1期间的速度和位移
            // v(t) = v1 - a1_decel*t - 0.5*jMax*t² (速度减小)
            // s(t) = v1*t - 0.5*a1_decel*t² - jMax*t³/6
            float32_t v_after_phase1 = v1_abs - a1_decel * (*t_jerk1) - 0.5f * jMax * SQUARE(*t_jerk1);
            float32_t s1 = v1_abs * (*t_jerk1) - 0.5f * a1_decel * SQUARE(*t_jerk1) - 
                          (jMax * CUBE(*t_jerk1)) / 6.0f;
            
            // 检查Phase1后速度是否已经为0
            if(v_after_phase1 <= SCURVE_EPSILON_VEL)
            {
                // Phase1就足够减速到0
                // 重新计算t_jerk1使v=0
                // v1 - a1_decel*t - 0.5*jMax*t² = 0
                float32_t disc = SQUARE(a1_decel) + 2.0f * jMax * v1_abs;
                if(disc >= 0.0f)
                {
                    *t_jerk1 = (-a1_decel + sqrtf(disc)) / jMax;
                }
                *t_const = 0.0f;
                *t_jerk2 = 0.0f;
                
                s_decel = v1_abs * (*t_jerk1) - 0.5f * a1_decel * SQUARE(*t_jerk1) - 
                         (jMax * CUBE(*t_jerk1)) / 6.0f;
                
                DEBUG_PRINT("[StopProfile Phase1 Only] a1=%.2f, v1=%.2f, t1=%.3f, s=%.2f\n",
                           a1_decel, v1_abs, *t_jerk1, s_decel);
            }
            else
            {
                // 需要Phase2+3
                *t_jerk2 = jerkTime;
                float32_t v_reduced_by_phase3 = 0.5f * dMax * jerkTime;
                float32_t v_to_reduce_in_phase2 = v_after_phase1 - v_reduced_by_phase3;
                
                if(v_to_reduce_in_phase2 > SCURVE_EPSILON_VEL)
                {
                    *t_const = v_to_reduce_in_phase2 / dMax;
                    
                    float32_t s2 = v_after_phase1 * (*t_const) - 0.5f * dMax * SQUARE(*t_const);
                    float32_t v2 = v_after_phase1 - dMax * (*t_const);
                    float32_t s3 = v2 * (*t_jerk2) - 0.5f * dMax * SQUARE(*t_jerk2) + 
                                  (jMax * CUBE(*t_jerk2)) / 6.0f;
                    s_decel = s1 + s2 + s3;
                    
                    DEBUG_PRINT("[StopProfile Phase1+2+3] a1=%.2f->%.2f, v1=%.2f, t=[%.3f,%.3f,%.3f], s=%.2f\n",
                               a1_decel, dMax, v1_abs, *t_jerk1, *t_const, *t_jerk2, s_decel);
                }
                else
                {
                    *t_const = 0.0f;
                    // 只需Phase1+3
                    float32_t disc = SQUARE(dMax) - 2.0f * jMax * v_after_phase1;
                    if(disc >= 0.0f && v_after_phase1 > SCURVE_EPSILON_VEL)
                    {
                        *t_jerk2 = (dMax - sqrtf(disc)) / jMax;
                    }
                    float32_t s3 = v_after_phase1 * (*t_jerk2) - 0.5f * dMax * SQUARE(*t_jerk2) + 
                                  (jMax * CUBE(*t_jerk2)) / 6.0f;
                    s_decel = s1 + s3;
                    
                    DEBUG_PRINT("[StopProfile Phase1+3] a1=%.2f->%.2f, v1=%.2f, t1=%.3f, t3=%.3f, s=%.2f\n",
                               a1_decel, dMax, v1_abs, *t_jerk1, *t_jerk2, s_decel);
                }
            }
        }
    }
    // **情况B**：a1≈0，从0开始标准减速
    else if(v1_abs > dMax * jerkTime)
    {
        // 能达到最大减速度 - 标准3段S曲线
        *t_jerk1 = jerkTime;
        *t_const = v1_abs / dMax - jerkTime;
        *t_jerk2 = jerkTime;
        
        float32_t s1 = v1_abs * (*t_jerk1) - (jMax * CUBE(*t_jerk1)) / 6.0f;
        float32_t v_mid1 = v1_abs - 0.5f * jMax * SQUARE(*t_jerk1);
        float32_t s2 = v_mid1 * (*t_const) - 0.5f * dMax * SQUARE(*t_const);
        float32_t v_mid2 = v_mid1 - dMax * (*t_const);
        float32_t s3 = v_mid2 * (*t_jerk2) - 0.5f * dMax * SQUARE(*t_jerk2) + 
                      (jMax * CUBE(*t_jerk2)) / 6.0f;
        s_decel = s1 + s2 + s3;
        
        DEBUG_PRINT("[StopProfile Phase1-3] v1=%.2f, t=[%.3f,%.3f,%.3f], s=%.2f\n",
                   v1_abs, *t_jerk1, *t_const, *t_jerk2, s_decel);
    }
    else
    {
        // 不能达到最大减速度 - 对称2段S曲线
        float32_t tjd = sqrtf(v1_abs / jMax);
        *t_jerk1 = tjd;
        *t_const = 0.0f;
        *t_jerk2 = tjd;
        
        s_decel = v1_abs * 2.0f * tjd - jMax * CUBE(tjd);
        
        DEBUG_PRINT("[StopProfile Phase1-3 Short] v1=%.2f, tjd=%.3f, s=%.2f\n",
                   v1_abs, tjd, s_decel);
    }
    
    // **关键**：s_decel是绝对值，需要乘以v1的符号以恢复方向
    float32_t v1_sign = SIGN(v1);
    *s_total = s_trans + v1_sign * s_decel;
    
    // **关键**：返回Phase0/Phase1后的加速度状态（用于get函数）
    *a_after_trans = a1;  // 这是Phase0后的加速度（可能非零！）

    DEBUG_PRINT("[StopProfile Total] v0=%.2f, a0=%.2f -> a_after=%.2f, s_total=%.2f, t_total=%.3f\n",
               v0, a0, *a_after_trans, *s_total, *t_trans + *t_jerk1 + *t_const + *t_jerk2);
}

//*****************************************************************************
//
// calculateDecelDistance - 计算从v_start减速到v_target的S曲线距离
//
// 参数：
//   v_start - 起始速度（绝对值）
//   v_target - 目标速度（绝对值）
//   dMax - 最大减速度
//   jerkTime - Jerk时间
//
// 返回：从v_start减速到v_target所需的距离（绝对值）
//
// 说明：
//   计算S型减速轮廓从起始速度减速到目标速度所需的最小距离。
//   这是VELOCITY_CHANGE判断的核心：当Phase0结束后的剩余距离大于
//   (s_to_cruise + s_to_zero)时，应该使用VELOCITY_CHANGE模式。
//
//*****************************************************************************
static float32_t calculateDecelDistance(float32_t v_start, float32_t v_target,
                                       float32_t dMax, float32_t jerkTime)
{
    float32_t v_start_abs = ABS(v_start);
    float32_t v_target_abs = ABS(v_target);

    if(v_start_abs <= v_target_abs)
    {
        // 不需要减速
        return 0.0f;
    }

    float32_t dv = v_start_abs - v_target_abs;
    float32_t jMax = dMax / jerkTime;

    if(dv <= dMax * jerkTime)
    {
        // 三角波轮廓：dv = dMax * T + 0.5 * jMax * T²
        // 简化近似：T = sqrt(dv * jerkTime / dMax)
        float32_t tjd = sqrtf(dv * jerkTime / dMax);

        // s = v_start*T - dMax*T²/6 + (v_start - dMax*T)*T - dMax*T²/6
        //   = 2*v_start*T - dMax*T²/3
        float32_t s = 2.0f * v_start_abs * tjd - dMax * SQUARE(tjd) / 3.0f;

        DEBUG_PRINT("[DecelDist Tri] dv=%.2f, T=%.4f, s=%.4f\n", dv, tjd, s);
        return s;
    }
    else
    {
        // 梯形轮廓：标准3段S曲线
        float32_t tjd1 = jerkTime;
        float32_t td = (dv - dMax * jerkTime) / dMax;
        float32_t tjd2 = jerkTime;

        // Phase 1: s1 = v_start*tjd1 - dMax*tjd1²/6
        float32_t s1 = v_start_abs * tjd1 - dMax * SQUARE(tjd1) / 6.0f;
        // v after Phase1: v1 = v_start - 0.5*dMax*tjd1
        float32_t v1 = v_start_abs - 0.5f * dMax * tjd1;

        // Phase 2: s2 = v1*td - 0.5*dMax*td²
        float32_t s2 = v1 * td - 0.5f * dMax * SQUARE(td);
        // v after Phase2: v2 = v1 - dMax*td
        float32_t v2 = v1 - dMax * td;

        // Phase 3: s3 = v2*tjd2 - dMax*tjd2²/6
        float32_t s3 = v2 * tjd2 - dMax * SQUARE(tjd2) / 6.0f;

        float32_t s = s1 + s2 + s3;

        DEBUG_PRINT("[DecelDist Trap] dv=%.2f, s1=%.4f, s2=%.4f, s3=%.4f, s=%.4f\n",
                   dv, s1, s2, s3, s);
        return s;
    }
}

//*****************************************************************************
//
// calculate7SegmentSCurve - 计算标准7段S曲线Profile
//
// 参数：
//   v_start - 起始速度（有符号，考虑方向）
//   v_max - 最大允许速度
//   distance - 剩余距离（绝对值）
//   aMax - 最大加速度
//   dMax - 最大减速度
//   jerkTime - Jerk时间
//   profile - [输出] Profile结构体
//
// 返回：无
//
// 说明：
//   计算从当前速度到目标位置的标准7段S曲线，包括：
//   Phase 1-3: 加速段（加加速、匀加速、减加速）
//   Phase 4: 匀速段
//   Phase 5-7: 减速段（加减速、匀减速、减减速）
//
//*****************************************************************************
static void calculate7SegmentSCurve(float32_t v_start, float32_t v_max, 
                                   float32_t distance, float32_t aMax, 
                                   float32_t dMax, float32_t jerkTime,
                                   TrapezoidalProfile_t *profile)
{
    float32_t jMax = aMax / jerkTime;
    float32_t absVStart = ABS(v_start);
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
    profile->emergencyDecel : profile->maxDecel;
    DEBUG_PRINT("\n[7-Segment] START: v_start=%.2f, v_max=%.2f, distance=%.2f\n",
               v_start, v_max, distance);
    
    // 确保v_max不小于v_start
    if(v_max < absVStart)
    {
        v_max = absVStart;
        DEBUG_PRINT("[7-Segment] v_max adjusted to %.2f (>= v_start)\n", v_max);
    }
    
    // Step 1: 计算加速段
    float32_t dv_accel = v_max - absVStart;
    float32_t tj1 = jerkTime;
    float32_t ta = 0.0f;
    float32_t tj2 = jerkTime;
    float32_t s_accel = 0.0f;
    bool accelReachMax = false;
    
    if(dv_accel > SCURVE_EPSILON_VEL)
    {
        // 需要加速
        if(dv_accel > aMax * jerkTime)
        {
            // 能达到最大加速度
        accelReachMax = true;
            ta = dv_accel / aMax - jerkTime;
            
            float32_t s1 = absVStart * tj1 + (jMax * CUBE(tj1)) / 6.0f;
            float32_t v1 = absVStart + 0.5f * jMax * SQUARE(tj1);
            float32_t s2 = v1 * ta + 0.5f * aMax * SQUARE(ta);
            float32_t v2 = v1 + aMax * ta;
            float32_t s3 = v2 * tj2 + 0.5f * aMax * SQUARE(tj2) - (jMax * CUBE(tj2)) / 6.0f;
            s_accel = s1 + s2 + s3;
        }
        else
        {
            // 不能达到最大加速度 - 对称S曲线
        accelReachMax = false;
        tj1 = sqrtf(dv_accel / jMax);
        ta = 0.0f;
        tj2 = tj1;
            
            s_accel = absVStart * 2.0f * tj1 + jMax * CUBE(tj1);
        }
    }
    else
    {
        // 不需要加速
        tj1 = 0.0f;
        ta = 0.0f;
        tj2 = 0.0f;
        s_accel = 0.0f;
    }
    
    DEBUG_PRINT("[7-Segment Accel] dv=%.2f, reachMax=%d, tj1=%.3f, ta=%.3f, tj2=%.3f, s=%.2f\n",
               dv_accel, accelReachMax, tj1, ta, tj2, s_accel);
    
    // Step 2: 计算减速段
    float32_t tjd1 = jerkTime;
    float32_t td = 0.0f;
    float32_t tjd2 = jerkTime;
    float32_t s_decel = 0.0f;
    bool decelReachMax = false;
    
    if(v_max > dMax * jerkTime)
    {
        // 能达到最大减速度
        decelReachMax = true;
        td = v_max / dMax - jerkTime;

        // **关键修复**：正确的梯形轮廓S曲线减速段位移公式
        // s_d = v_max²/dMax + dMax*jerkTime²/3
        // 各段位移之和：s1 + s2 + s3
        float32_t v1 = v_max - 0.5f * jMax * SQUARE(jerkTime);
        float32_t s1 = v_max * jerkTime - (jMax * CUBE(jerkTime)) / 6.0f;
        float32_t v2 = v1 - dMax * td;
        float32_t s2 = v1 * td - 0.5f * dMax * SQUARE(td);
        float32_t s3 = v2 * jerkTime - 0.5f * dMax * SQUARE(jerkTime) + (jMax * CUBE(jerkTime)) / 6.0f;

        // 使用简化公式验证：s_decel = v_max²/dMax + dMax*jerkTime²/3
        float32_t s_decel_simple = v_max * v_max / dMax + dMax * CUBE(jerkTime) / 3.0f;

        // 使用各段相加的精确值
        s_decel = s1 + s2 + s3;
        tjd1 = jerkTime;
        tjd2 = jerkTime;
    }
    else
    {
        // 不能达到最大减速度 - 对称S曲线（三角波轮廓）
        decelReachMax = false;
        // **关键修复**：必须使用减速的 jMax，不是加速的 jMax
        float32_t jMax_decel = effectiveDecel / jerkTime;
        tjd1 = sqrtf(v_max / jMax_decel);
        td = 0.0f;
        tjd2 = tjd1;

        s_decel = v_max * 2.0f * tjd1 - jMax_decel * CUBE(tjd1);
    }
    
    DEBUG_PRINT("[7-Segment Decel] v_max=%.2f, reachMax=%d, tjd1=%.3f, td=%.3f, tjd2=%.3f, s=%.2f\n",
               v_max, decelReachMax, tjd1, td, tjd2, s_decel);
    
    // Step 3: 计算匀速段
    float32_t s_cruise = distance - s_accel - s_decel;
    float32_t tv = 0.0f;
    
    if(s_cruise > SCURVE_EPSILON_POS)
    {
        // 有匀速段
        tv = s_cruise / v_max;
        DEBUG_PRINT("[7-Segment Cruise] s=%.2f, tv=%.3f\n", s_cruise, tv);
    }
    else if(s_cruise < -SCURVE_EPSILON_POS)
    {
        // 距离不足 - 需要降低峰值速度
        DEBUG_PRINT("[7-Segment] Distance insufficient! s_cruise=%.2f < 0, adjusting v_max\n", s_cruise);

        // 使用牛顿迭代法求解v_peak
        float32_t v_peak = v_max * 0.8f;  // 初始猜测

        for(int iter = 0; iter < 50; iter++)
        {
            float32_t dv_a = v_peak - absVStart;
            float32_t s_a, s_d;
            float32_t ds_a_dv = 0.0f;  // 加速段导数
            float32_t ds_d_dv = 0.0f;  // 减速段导数

            // 计算加速段距离和导数
            if(dv_a > aMax * jerkTime)
            {
                // 梯形轮廓加速
                float32_t tj = jerkTime;
                float32_t ta_temp = dv_a / aMax - jerkTime;

                float32_t s1 = absVStart * tj + (jMax * CUBE(tj)) / 6.0f;
                float32_t v1 = absVStart + 0.5f * jMax * SQUARE(tj);
                float32_t s2 = v1 * ta_temp + 0.5f * aMax * SQUARE(ta_temp);
                float32_t v2 = v1 + aMax * ta_temp;
                float32_t s3 = v2 * tj + 0.5f * aMax * SQUARE(tj) - (jMax * CUBE(tj)) / 6.0f;
                s_a = s1 + s2 + s3;

                // 梯形轮廓加速段导数推导：
                // s_a = v_start*(2*tj+ta) + aMax*tj² + aMax*tj*ta + 0.5*aMax*ta²
                // 其中 ta = dv/aMax - tj = (v-v_start)/aMax - tj
                // ds_a/dv = 2*tj + ta + tj + ta + tj = 4*tj + 3*ta = 4*jerkTime + 3*(dv/aMax - jerkTime)
                //                        = jerkTime + 3*dv/aMax
                //                        = jerkTime + 3*(v_peak - v_start)/aMax
                ds_a_dv = v_peak / aMax;
            }
            else
            {
                // 三角轮廓加速
                float32_t tj = sqrtf(dv_a / jMax);
                s_a = absVStart * 2.0f * tj + jMax * CUBE(tj);

                // 三角轮廓加速段导数推导：
                // s_a = 2*v_start*tjd + jMax*tjd³
                // ds_a/dv = v_start/(jMax*tjd) + 1.5*tjd
                if(dv_a > 0.001f)
                {
                    ds_a_dv = absVStart / (jMax * tj) + 1.5f * tj;
                }
                else
                {
                    ds_a_dv = 0.5f / sqrtf(jMax * 0.001f);  // 避免除零
                }
            }

            // 计算减速段距离和导数
            if(v_peak > dMax * jerkTime)
            {
                // 梯形轮廓减速
                float32_t tjd = jerkTime;
                float32_t td_temp = v_peak / dMax - jerkTime;
                // 正确的 s_d 公式
                s_d = dMax * (SQUARE(tjd) + 1.5f * tjd * td_temp + 0.5f * SQUARE(td_temp));
                //s_d = v_peak * (2.0f * tjd + td_temp) -
                //      dMax * SQUARE(tjd) - 0.5f * dMax * SQUARE(td_temp)-dMax*td_temp*tjd;

                // 梯形轮廓减速段导数推导：
                // s_d = v*(2*tjd+td) - dMax*tjd² - 0.5*dMax*td²-dmax*td*tjd
                // 其中 td = v/dMax - tjd
                // 展开：s_d = 2*tjd*v + v*td - dMax*tjd² - 0.5*dMax*td²-dmax*td*tjd
                // ds_d/dv = tjd + v/dMax
                //∂s_d/∂v = 2tjd + td + v·∂td/∂v - dMax·tjd·∂td/∂v - dMax·td·∂td/∂v
                // = 2tjd + td + v·(1/dMax) - dMax·tjd·(1/dMax) - dMax·td·(1/dMax)
                // = 2tjd + td + v/dMax - tjd - td
                // = tjd + v/dMax
                ds_d_dv = tjd + v_peak / dMax;
            }
            else
            {
                // 三角轮廓减速
                // **关键修复**：必须使用减速的 jMax_decel，不是加速的 jMax
                float32_t jMax_decel = dMax / jerkTime;
                float32_t tjd = sqrtf(v_peak / jMax_decel);
                s_d = v_peak * 2.0f * tjd - jMax_decel * CUBE(tjd);

                // 三角轮廓减速段导数推导：
                // s_d = 2*v_peak*sqrt(v_peak/jMax_decel) - jMax_decel*(v_peak/jMax_decel)^(3/2)
                //      = (2*v - v) * sqrt(v/jMax_decel) = v * sqrt(v/jMax_decel)
                // ds_d/dv = sqrt(v/jMax_decel) + v/(2*sqrt(jMax_decel*v))
                //          = (3/2) * sqrt(v/jMax_decel) = 1.5 * sqrt(v/jMax_decel)
                if(v_peak > 0.001f)
                {
                    ds_d_dv = 1.5f * sqrtf(v_peak / jMax_decel);
                }
                else
                {
                    ds_d_dv = 1.5f * sqrtf(0.001f / jMax_decel);
                }
            }

            float32_t error = s_a + s_d - distance;
            float32_t derivative = ds_a_dv + ds_d_dv;

            DEBUG_PRINT("[Newton iter %d] v_peak=%.2f, s_a=%.4f, s_d=%.4f, error=%.4f, ds_a=%.4f, ds_d=%.4f, deriv=%.4f\n",
                       iter, v_peak, s_a, s_d, error, ds_a_dv, ds_d_dv, derivative);

            if(ABS(error) < 0.001f)
            {
                DEBUG_PRINT("[Newton] Converged at iter %d, v_peak=%.4f, error=%.6f\n", iter, v_peak, error);
                break;
            }

            // 防止导数过小导致步长过大
            if(ABS(derivative) < 0.01f)
            {
                derivative = (derivative >= 0) ? 0.01f : -0.01f;
            }

            // 牛顿迭代：v_peak = v_peak - f(v) / f'(v)
            float32_t delta = error / derivative;
            v_peak = v_peak - delta;

            // 限制v_peak范围
            if(v_peak < absVStart) v_peak = absVStart;
            if(v_peak > v_max) v_peak = v_max;
        }
        
        v_max = v_peak;
        tv = 0.0f;
        s_cruise = 0.0f;
        
        DEBUG_PRINT("[7-Segment] v_max adjusted to %.2f (triangular profile)\n", v_max);
        
        // 重新计算加速段和减速段
        dv_accel = v_max - absVStart;
        
        if(dv_accel > aMax * jerkTime)
        {
            accelReachMax = true;
            tj1 = jerkTime;
            ta = dv_accel / aMax - jerkTime;
            tj2 = jerkTime;
        }
        else
        {
            accelReachMax = false;
            tj1 = sqrtf(dv_accel / jMax);
            ta = 0.0f;
            tj2 = tj1;
        }
        
        if(v_max > dMax * jerkTime)
        {
            decelReachMax = true;
            tjd1 = jerkTime;
            td = v_max / dMax - jerkTime;
            tjd2 = jerkTime;
            // 正确的梯形轮廓减速位移公式
            // s_d = v*(2*tjd+td) - dMax*tjd² - 0.5*dMax*td²
            // 其中 td = v/dMax - tjd
            s_decel = v_max * (2.0f * tjd1 + td) -
                       dMax * SQUARE(tjd1) - 0.5f * dMax * SQUARE(td)- dMax * td * tjd1;
        }
        else
        {
            decelReachMax = false;
            // **关键修复**：必须使用减速的 jMax_decel
            float32_t jMax_decel = dMax / jerkTime;
            tjd1 = sqrtf(v_max / jMax_decel);
            td = 0.0f;
            tjd2 = tjd1;
            s_decel = v_max * 2.0f * tjd1 - jMax_decel * CUBE(tjd1);
        }
    }
    else
    {
        // 刚好
        tv = 0.0f;
        s_cruise = 0.0f;
    }
    
    // Step 4: 填充profile结构体
    profile->tj1 = tj1;
    profile->ta = ta;
    profile->tj2 = tj2;
    profile->tv = tv;
    profile->tjd1 = tjd1;
    profile->td = td;
    profile->tjd2 = tjd2;
    
    profile->accelTime = tj1 + ta + tj2;
    profile->constTime = tv;
    profile->decelTime = tjd1 + td + tjd2;
    profile->totalTime = profile->accelTime + profile->constTime + profile->decelTime;
    
    profile->peakVelocity = v_max;
    // Jerk is calculated from jerkTime, no need to store separately
    
    DEBUG_PRINT("[7-Segment] RESULT: tj1=%.3f, ta=%.3f, tj2=%.3f, tv=%.3f, tjd1=%.3f, td=%.3f, tjd2=%.3f\n",
           tj1, ta, tj2, tv, tjd1, td, tjd2);
    DEBUG_PRINT("[7-Segment] Total time=%.3f, v_peak=%.2f\n", profile->totalTime, v_max);
}

//*****************************************************************************
//
// determineMotionType - 判断运动类型
//
// 参数：
//   profile - Profile结构体
//   direction - 运动方向（1或-1）
//   distance - 运动距离（绝对值）
//
// 返回：运动类型
//
//*****************************************************************************
static MotionType determineMotionType(TrapezoidalProfile_t *profile, 
                                     float32_t direction, float32_t distance,
                                     float32_t effectiveDecel)
{
    float32_t v0 = profile->startVelocity;
    float32_t a0 = profile->startAccel;
    
    // **优先检查停止命令标志**
    if(profile->isEmergencyStop)
    {
        DEBUG_PRINT("[MotionType] STOP (explicit stop command flag set)\n");
        return MOTION_TYPE_STOP;
    }
    
    // 先计算停止距离（用于后续判断）
    // **关键修复**：传入带符号的v0，以便正确计算Phase0的速度变化
    float32_t t_trans, t_j1, t_c, t_j2, s_stop, v_after, a_after;
    calculateStopToZeroProfile(v0, a0, effectiveDecel,
                              profile->jerkTime, &t_trans, &t_j1, &t_c, &t_j2,
                              &s_stop, &v_after, &a_after);

    float32_t dist_abs = ABS(distance);
    
    // 1. 停止命令？（仅当距离接近0且速度接近0时）
    if(distance < 0.1f && ABS(v0) < SCURVE_EPSILON_VEL)
    {
        DEBUG_PRINT("[MotionType] STOP (distance=%.2f ~0, v0=%.2f ~0)\n", distance, v0);
        return MOTION_TYPE_STOP;
    }
    
    // 2. 微小运动？（距离小于阈值，速度接近0，需要实际移动）
    if(distance <= MICRO_MOTION_THRESHOLD && ABS(v0) < SCURVE_EPSILON_VEL)
    {
        DEBUG_PRINT("[MotionType] MICRO (distance=%.2f <= %.2f, v0=%.2f ~0)\n", 
                   distance, MICRO_MOTION_THRESHOLD, v0);
        return MOTION_TYPE_MICRO;
    }
    
    // 3. 反向运动？（速度方向与目标方向相反）
    if(SIGN(v0) * direction < -0.5f && ABS(v0) > SCURVE_EPSILON_VEL)
    {
        DEBUG_PRINT("[MotionType] REVERSE (v0=%.2f, dir=%.0f, opposite directions)\n", v0, direction);
        return MOTION_TYPE_REVERSE;
    }

    // 4. 速度变更？（当前速度方向与目标一致，但目标速度需要减速到更低值）
    //    条件：s_stop <= distance（能停在目标位置内）AND v0 > v_target
    //    **重要**：此检查必须在OVEROHOOT之前，因为高->低速切换可能被误判为OVEROHOOT
    if(ABS(v0) > profile->maxVelocity * 1.01f && s_stop <= dist_abs * 1.02f)
    {
        DEBUG_PRINT("[MotionType] VELOCITY_CHANGE (v0=%.2f > v_target=%.2f, stopDist=%.2f <= dist=%.2f)\n",
                   v0, profile->maxVelocity, s_stop, dist_abs);
        return MOTION_TYPE_VELOCITY_CHANGE;
    }

    // 5. 过冲？（停止距离 > 目标距离）
    //    只有在确定不是VELOCITY_CHANGE之后才检查OVEROHOOT
    if(s_stop > dist_abs * 1.15f)  // 停止距离 > 目标距离的115%
    {
        DEBUG_PRINT("[MotionType] OVERSHOOT (stopDist=%.2f > dist=%.2f * 1.15)\n",
                   s_stop, dist_abs);
        return MOTION_TYPE_OVERSHOOT;
    }

    // 6. 正常运动
    DEBUG_PRINT("[MotionType] NORMAL\n");
    return MOTION_TYPE_NORMAL;
}

//*****************************************************************************
//
// SCurve_computeProfile - S曲线规划主函数（完全重新设计）
//
// 参数：
//   profile - Profile结构体指针
//
// 返回：无
//
// 说明：
//   系统性地处理所有运动情况：
//   - 停止命令：Phase 0 + Phase 1-3 (减速到0)
//   - 反向运动：Phase 0 + Phase 1-3 (减速到0) + Phase 4-10 (从0到目标)
//   - 过冲运动：与反向运动相同
//   - 正常运动：Phase 0 (如果需要) + Phase 4-10 (标准7段)
//
//*****************************************************************************
void SCurve_computeProfile(TrapezoidalProfile_t *profile)
{
    // **防御性检查**：确保速度、加速度、减速度为正值标量
    if(profile->maxVelocity < 0.0f) profile->maxVelocity = -profile->maxVelocity;
    if(profile->maxAccel < 0.0f) profile->maxAccel = -profile->maxAccel;
    if(profile->maxDecel < 0.0f) profile->maxDecel = -profile->maxDecel;
    if(profile->jerkTime < 0.0f) profile->jerkTime = -profile->jerkTime;

    DEBUG_PRINT("\n");
    DEBUG_PRINT("========== S-Curve Profile Computation START (Redesigned) ==========\n");
    DEBUG_PRINT("[Input] currentPos=%.2f, startVel=%.2f, startAccel=%.2f, targetPos=%.2f\n",
               profile->currentPos, profile->startVelocity, profile->startAccel, 
               profile->targetPos);
    
    // **关键修复**：确定有效减速度（仅在急停命令时使用emergencyDecel）
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
                               profile->emergencyDecel : profile->maxDecel;
    DEBUG_PRINT("[Decel] isEmergencyStop=%d, maxDecel=%.2f, emergencyDecel=%.2f, effectiveDecel=%.2f\n",
               profile->isEmergencyStop ? 1 : 0, profile->maxDecel, profile->emergencyDecel, effectiveDecel);
    
    // 初始化
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    if(ABS(direction) < 0.5f) direction = 1.0f;  // 避免direction=0
    float32_t dist_abs = ABS(distance);
    // **关键修复**：直接使用startVelocity（已包含符号）
    float32_t v0 = profile->startVelocity;
        float32_t a0 = profile->startAccel;
    
    //==============================================================
    // Step 1: 计算 Phase 0（加速度过渡到0），得到真实起点
    //         必须在判断运动类型之前完成！
    //==============================================================
    // **关键修复**：急停命令时，使用emergencyDecel计算jMax，保持加速度过渡的一致性
    float32_t jMax;
    if(profile->isEmergencyStop)
    {
        jMax = effectiveDecel / profile->jerkTime;
    }
    else
    {
        jMax = profile->maxAccel / profile->jerkTime;
    }
    profile->actualJerk = jMax;

    float32_t t_trans = 0.0f;
    float32_t s_trans = 0.0f;
    // **关键修复**：只有当加速度与速度方向相同时（正在加速）才需要Phase 0过渡
    // 当 a0 * v0 < 0 时（正在减速），加速度方向已正确，应跳过Phase 0
    if(ABS(a0) > SCURVE_EPSILON_ACCEL && a0 * v0 >= 0)
    {
        t_trans = ABS(a0) / jMax;
        if(t_trans < 0.001f) t_trans = 0.001f;
        float32_t jerk_trans = -SIGN(a0) * jMax;
        s_trans = v0 * t_trans + 0.5f * a0 * SQUARE(t_trans) +
                  (jerk_trans * CUBE(t_trans)) / 6.0f;
    }

    float32_t pos_after_phase0 = profile->currentPos + s_trans;
    float32_t vel_after_phase0 = v0 + a0 * t_trans + 0.5f * (-SIGN(a0) * jMax) * SQUARE(t_trans);
    if(t_trans < SCURVE_EPSILON_TIME)
    {
        pos_after_phase0 = profile->currentPos;
        vel_after_phase0 = v0;
    }

    // 保存 Phase 0 结果（所有运动类型共用）
    // **关键修复**：如果跳过了Phase 0（正在减速），保持原加速度
    profile->accelTransTime = t_trans;
    profile->accelTransEndPos = pos_after_phase0;
    profile->velAfterPhase0 = vel_after_phase0;
    // 如果执行了Phase 0，则加速度过渡到0；否则保持原加速度
    profile->accelAfterPhase0 = (t_trans > SCURVE_EPSILON_TIME) ? 0.0f : a0;

    DEBUG_PRINT("[Phase0] t_trans=%.4f, pos_after=%.4f, vel_after=%.4f, a_after=%.4f\n",
               t_trans, pos_after_phase0, vel_after_phase0, profile->accelAfterPhase0);

    //==============================================================
    // Step 2: 根据 Phase 0 结束后的真实状态，判断运动类型
    //==============================================================
    float32_t remaining_dist = profile->targetPos - pos_after_phase0;
    float32_t remaining_dir = SIGN(remaining_dist);
    if(ABS(remaining_dir) < 0.5f) remaining_dir = direction;
    float32_t remaining_dist_abs = ABS(remaining_dist);

    float32_t vel_after_abs = ABS(vel_after_phase0);

    // 重新计算 Phase 0 结束后的停止距离（从 a=0 开始减速）
    float32_t t_trans_vc, t_j1_vc, t_c_vc, t_j2_vc, s_stop_vc, v_after_vc, a_after_vc;
    calculateStopToZeroProfile(vel_after_abs, 0.0f, effectiveDecel,
                              profile->jerkTime, &t_trans_vc, &t_j1_vc, &t_c_vc,
                              &t_j2_vc, &s_stop_vc, &v_after_vc, &a_after_vc);

    // 判断运动类型
    MotionType motionType;

    // **新增**：优先检查停止标志（由TrapProfile_stop设置的isStopMove或isEmergencyStop）
    if(profile->isStopMove || profile->isEmergencyStop)
    {
        motionType = MOTION_TYPE_STOP;
        DEBUG_PRINT("[MotionType] STOP (isStopMove=%d, isEmergencyStop=%d)\n",
                   profile->isStopMove ? 1 : 0, profile->isEmergencyStop ? 1 : 0);
    }
    else if(remaining_dist_abs < 0.1f && vel_after_abs < SCURVE_EPSILON_VEL)
    {
        motionType = MOTION_TYPE_STOP;
        DEBUG_PRINT("[MotionType] STOP (near target, v~0)\n");
    }
    else if(SIGN(vel_after_phase0) * remaining_dir < -0.5f && vel_after_abs > SCURVE_EPSILON_VEL)
    {
        motionType = MOTION_TYPE_REVERSE;
        DEBUG_PRINT("[MotionType] REVERSE (dir change after Phase0: vel=%.2f, remaining_dir=%.0f)\n",
                   vel_after_phase0, remaining_dir);
    }
    else if(vel_after_abs > profile->maxVelocity * 1.01f &&
            SIGN(vel_after_phase0) * remaining_dir > 0.5f)
    {
        // **根本修复**：使用正确的距离计算公式
        // VELOCITY_CHANGE 需要：
        //   1. Phase 1-3: 从 vel_after_abs 减速到 maxVelocity
        //   2. Phase 11-13: 从 maxVelocity 减速到 0
        // 总距离 = s_to_cruise + s_to_zero
        float32_t s_to_cruise = calculateDecelDistance(vel_after_abs, profile->maxVelocity,
                                                       effectiveDecel, profile->jerkTime);
        float32_t s_to_zero = calculateDecelDistance(profile->maxVelocity, 0.0f,
                                                      effectiveDecel, profile->jerkTime);
        float32_t s_vc_total = s_to_cruise + s_to_zero;

        if(s_vc_total <= remaining_dist_abs * 1.02f)
        {
            motionType = MOTION_TYPE_VELOCITY_CHANGE;
            DEBUG_PRINT("[MotionType] VELOCITY_CHANGE (vel=%.2f > v_max=%.2f, s_to_cruise=%.4f, s_to_zero=%.4f, s_total=%.4f <= dist=%.4f)\n",
                       vel_after_abs, profile->maxVelocity, s_to_cruise, s_to_zero, s_vc_total, remaining_dist_abs);
        }
        else
        {
            motionType = MOTION_TYPE_OVERSHOOT;
            DEBUG_PRINT("[MotionType] OVERSHOOT (s_vc_total=%.4f > dist=%.4f)\n",
                       s_vc_total, remaining_dist_abs);
        }
    }
    else if(s_stop_vc > remaining_dist_abs * 1.15f)
    {
        motionType = MOTION_TYPE_OVERSHOOT;
        DEBUG_PRINT("[MotionType] OVERSHOOT (stopDist=%.2f > dist=%.2f)\n",
                   s_stop_vc, remaining_dist_abs);
    }
    else if(remaining_dist_abs <= MICRO_MOTION_THRESHOLD && vel_after_abs < SCURVE_EPSILON_VEL)
    {
        motionType = MOTION_TYPE_MICRO;
        DEBUG_PRINT("[MotionType] MICRO\n");
    }
    else
    {
        motionType = MOTION_TYPE_NORMAL;
        DEBUG_PRINT("[MotionType] NORMAL\n");
    }

    // 初始化公共字段
    profile->startPos = profile->currentPos;
    profile->elapsedTime = 0.0f;
    profile->reverseDecelTime = 0.0f;
    profile->isVelocityChange = false;

    //==============================================================
    // Step 3: 根据运动类型计算轨迹
    //==============================================================
    switch(motionType)
    {
        case MOTION_TYPE_STOP:
        {
            //==============================================================
            // 停止命令：减速到0
            // Phase 0 已在上方预计算（加速度->0），此处复用结果
            // Phase 1-3 从 Phase 0 结束状态减速到 0
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_STOP] Processing...\n");

            // **关键修复**：使用独立的临时变量，避免覆盖Phase 0的过渡时间
            float32_t t_j1_s, t_c_s, t_j2_s, s_stop_s, v_after_s, a_after_s;
            float32_t t_trans_stop;  // 独立的临时变量，不影响Phase 0
            calculateStopToZeroProfile(vel_after_abs, 0.0f, effectiveDecel,
                                      profile->jerkTime, &t_trans_stop, &t_j1_s, &t_c_s,
                                      &t_j2_s, &s_stop_s, &v_after_s, &a_after_s);

            profile->reverseDecelTime = t_j1_s + t_c_s + t_j2_s;
            profile->accelAfterPhase0 = a_after_s;
            profile->stopTjd1 = t_j1_s;
            profile->stopTd = t_c_s;
            profile->stopTjd2 = t_j2_s;

            profile->tj1 = 0.0f;
            profile->ta = 0.0f;
            profile->tj2 = 0.0f;
            profile->tv = 0.0f;
            profile->tjd1 = t_j1_s;
            profile->td = t_c_s;
            profile->tjd2 = t_j2_s;

            profile->accelTime = 0.0f;
            profile->constTime = 0.0f;
            profile->decelTime = profile->reverseDecelTime;
            // **关键修复**：使用预先计算的t_trans（Phase 0的过渡时间），不是calculateStopToZeroProfile返回的值
            profile->totalTime = t_trans + profile->decelTime;

            profile->peakVelocity = v_after_s;
            // **关键修复**：s_stop_s 是正值（距离量），必须乘以速度方向符号
            profile->reverseDecelEndPos = profile->accelTransEndPos;
            profile->accelEndPos = profile->reverseDecelEndPos;
            profile->decelStartPos = profile->reverseDecelEndPos;
            profile->targetPos = profile->accelTransEndPos + s_stop_s * SIGN(vel_after_phase0);

            DEBUG_PRINT("[STOP] Result: totalTime=%.3f, stopAt=%.2f\n",
                       profile->totalTime, profile->targetPos);
            break;
        }

        case MOTION_TYPE_REVERSE:
        case MOTION_TYPE_OVERSHOOT:
        {
            //==============================================================
            // 反向/过冲：Phase 0 -> 减速到0 -> 从0加速到目标
            // Phase 0 已预计算，使用 (pos_after_phase0, vel_after_phase0, a=0) 作为真实起点
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_%s] Processing...\n",
                       motionType == MOTION_TYPE_REVERSE ? "REVERSE" : "OVERSHOOT");

            // Phase 1-3: 从 Phase 0 结束状态减速到 0
            // s_stop_r 是正的距离量（由 calculateStopToZeroProfile 按速度绝对值计算）
            // 必须乘以方向符号得到带符号的位移
            float32_t t_j1_r, t_c_r, t_j2_r, s_stop_r, v_after_r, a_after_r;
            float32_t t_trans_for_stop;  // 添加临时变量
            calculateStopToZeroProfile(vel_after_abs, 0.0f, effectiveDecel,
                                      profile->jerkTime, &t_trans_for_stop, &t_j1_r, &t_c_r,
                                      &t_j2_r, &s_stop_r, &v_after_r, &a_after_r);

            profile->reverseDecelTime = t_j1_r + t_c_r + t_j2_r;
            profile->accelAfterPhase0 = a_after_r;
            profile->stopTjd1 = t_j1_r;
            profile->stopTd = t_c_r;
            profile->stopTjd2 = t_j2_r;

            // **关键修复**：s_stop_r 是正值（距离量），必须乘以速度方向符号
            // 负向运动时：s_stop_signed 为负，pos_stop < accelTransEndPos
            float32_t s_stop_signed = s_stop_r * SIGN(vel_after_phase0);
            float32_t pos_stop = profile->accelTransEndPos + s_stop_signed;

            DEBUG_PRINT("[REVERSE] Phase0: pos=%.4f->%.4f, vel=%.4f->%.4f\n",
                       profile->currentPos, profile->accelTransEndPos,
                       v0, vel_after_phase0);
            DEBUG_PRINT("[REVERSE] Stop: s_stop_signed=%.4f, pos_stop=%.4f, reverseDecelTime=%.4f\n",
                       s_stop_signed, pos_stop, profile->reverseDecelTime);
            DEBUG_PRINT("[REVERSE] S-curve input: v_start=0, v_max=%.4f, dist=%.4f\n",
                       profile->maxVelocity, remaining_dist);
            DEBUG_PRINT("[REVERSE] S-curve result: tj1=%.4f, ta=%.4f, tj2=%.4f, tv=%.4f\n",
                       profile->tj1, profile->ta, profile->tj2, profile->tv);
            DEBUG_PRINT("[REVERSE] S-curve result: tjd1=%.4f, td=%.4f, tjd2=%.4f, peakVel=%.4f\n",
                       profile->tjd1, profile->td, profile->tjd2, profile->peakVelocity);

            // Phase 2: 从0加速到目标
            float32_t remaining_dist = ABS(profile->targetPos - pos_stop);

            // 使用标准7段S曲线从0加速到目标
            calculate7SegmentSCurve(0.0f, profile->maxVelocity, remaining_dist,
                                   profile->maxAccel,
                                   profile->maxDecel,
                                   profile->jerkTime, profile);

            // 更新总时间
            profile->totalTime = t_trans + profile->reverseDecelTime +
                               profile->accelTime + profile->constTime + profile->decelTime;

            // 设置位置点 - 从 pos_stop（速度=0）开始加速到目标
            float32_t tj1 = profile->tj1;
            float32_t ta = profile->ta;
            float32_t tj2 = profile->tj2;
            float32_t jMax_accel = profile->maxAccel / profile->jerkTime;

            float32_t aMax_actual;
            if(ta > SCURVE_EPSILON_TIME)
            {
                aMax_actual = profile->maxAccel;
            }
            else
            {
                aMax_actual = jMax_accel * tj1;
            }

            float32_t s1 = 0.0f * tj1 + (jMax_accel * CUBE(tj1)) / 6.0f;
            float32_t v1 = 0.0f + 0.5f * jMax_accel * SQUARE(tj1);
            float32_t s2 = v1 * ta + 0.5f * aMax_actual * SQUARE(ta);
            float32_t v2 = v1 + aMax_actual * ta;
            float32_t s3 = v2 * tj2 + 0.5f * aMax_actual * SQUARE(tj2) - (jMax_accel * CUBE(tj2)) / 6.0f;
            float32_t s_accel_actual = s1 + s2 + s3;

            float32_t phase47_dir = SIGN(profile->targetPos - pos_stop);
            profile->reverseDecelEndPos = pos_stop;
            profile->accelEndPos = pos_stop + phase47_dir * s_accel_actual;

            DEBUG_PRINT("[REVERSE] s1=%.4f, s2=%.4f, s3=%.4f, s_accel=%.4f\n",
                       s1, s2, s3, s_accel_actual);
            DEBUG_PRINT("[REVERSE] Accel: pos_stop=%.4f, dir=%.0f, accelEndPos=%.4f\n",
                       pos_stop, phase47_dir, profile->accelEndPos);
            
            // 计算减速段实际距离
            float32_t tjd1 = profile->tjd1;
            float32_t td = profile->td;
            float32_t tjd2 = profile->tjd2;
            
            // **关键修复**：计算实际减速度峰值
            float32_t dMax_actual;
            if(td > SCURVE_EPSILON_TIME)
            {
                dMax_actual = profile->maxDecel;
    }
    else
    {
                dMax_actual = jMax_accel * tjd1;  // 三角形减速
            }
            
            float32_t sd1 = profile->peakVelocity * tjd1 - (jMax_accel * CUBE(tjd1)) / 6.0f;
            float32_t vd1 = profile->peakVelocity - 0.5f * jMax_accel * SQUARE(tjd1);
            float32_t sd2 = vd1 * td - 0.5f * dMax_actual * SQUARE(td);
            float32_t vd2 = vd1 - dMax_actual * td;
            float32_t sd3 = vd2 * tjd2 - 0.5f * dMax_actual * SQUARE(tjd2) + (jMax_accel * CUBE(tjd2)) / 6.0f;
            float32_t s_decel_actual = sd1 + sd2 + sd3;
            
            profile->decelStartPos = profile->targetPos - phase47_dir * s_decel_actual;

            // **关键修复**：清除isVelocityChange标志，确保SCurve_getPosition正确处理Phase 4-10
            // 如果不清除，SCurve_getPosition会错误地在Phase 1-3结束后停止位置计算
            profile->isVelocityChange = false;
            
            DEBUG_PRINT("[%s] Total time=%.3f (stop=%.3f + forward=%.3f)\n",
                       motionType == MOTION_TYPE_REVERSE ? "REVERSE" : "OVERSHOOT",
                       profile->totalTime, t_trans + profile->reverseDecelTime,
                       profile->accelTime + profile->constTime + profile->decelTime);
            
            break;
        }
        
        case MOTION_TYPE_MICRO:
        {
            //==============================================================
            // 微小运动：使用简化的线性插值轨迹
            // 对于非常小的距离（<=5 counts），不进行完整的S曲线加减速
            // 而是使用固定时间的线性运动，确保位置精确到达
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_MICRO] Processing distance=%.2f...\n", dist_abs);
            
            // 使用固定的微小运动时间（基于距离和最大速度计算合理时间）
            float32_t microTime = dist_abs / (profile->maxVelocity * 0.1f);  // 使用10%最大速度
            if(microTime < MICRO_MOTION_MIN_TIME) microTime = MICRO_MOTION_MIN_TIME;
            if(microTime > 0.1f) microTime = 0.1f;  // 最大100ms
            
            // 设置为简单的匀速运动（无加减速）
            profile->accelTransTime = 0.0f;
            profile->reverseDecelTime = 0.0f;
            profile->accelAfterPhase0 = 0.0f;
            profile->tj1 = 0.0f;
            profile->ta = 0.0f;
            profile->tj2 = 0.0f;
            profile->tv = microTime;  // 全部时间用于匀速段
            profile->tjd1 = 0.0f;
            profile->td = 0.0f;
            profile->tjd2 = 0.0f;
            
            // 停止段参数也清零
            profile->stopTjd1 = 0.0f;
            profile->stopTd = 0.0f;
            profile->stopTjd2 = 0.0f;
            
            profile->accelTime = 0.0f;
            profile->constTime = microTime;
            profile->decelTime = 0.0f;
            profile->totalTime = microTime;
            
            profile->peakVelocity = dist_abs / microTime;  // 计算实际速度
            
            // 位置点 - 微小运动只有匀速段
            profile->accelTransEndPos = profile->currentPos;
            profile->reverseDecelEndPos = profile->currentPos;
            profile->accelEndPos = profile->currentPos;
            profile->decelStartPos = profile->targetPos;
            
            // 标记为微小运动模式（用于getPosition等函数）
            profile->isMicroMotion = true;
            
            DEBUG_PRINT("[MICRO] time=%.4f, velocity=%.2f, from=%.2f to=%.2f\n", 
                       microTime, profile->peakVelocity, profile->currentPos, profile->targetPos);
            
            break;
        }

        case MOTION_TYPE_VELOCITY_CHANGE:
        {
            //==============================================================
            // 速度变更：从 Phase 0 结束后的状态减速到 v_cruise
            // 轨迹结构：Phase 0 -> Phase 1-3(S型减速到v_cruise) -> Phase 7(匀速) -> Phase 11-13(减速到targetPos)
            // Phase 0 已在上方预计算，使用 (pos_after_phase0, vel_after_phase0, a=0) 作为真实起点
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_VELOCITY_CHANGE] vel_after=%.2f -> v_cruise=%.2f, target=%.2f\n",
                       vel_after_phase0, profile->maxVelocity, profile->targetPos);
            DEBUG_PRINT("[VC] Phase0 result: pos=%.4f, vel=%.4f, t_trans=%.4f\n",
                       pos_after_phase0, vel_after_phase0, t_trans);

            profile->isVelocityChange = true;
            profile->isMicroMotion = false;

            float32_t v_cruise = profile->maxVelocity;
            float32_t v_after_abs = vel_after_abs;
            float32_t v0_signed = vel_after_phase0;
            float32_t s_dir = (v0_signed < 0.0f) ? -1.0f : 1.0f;
            float32_t dMax = effectiveDecel;

            // Phase 1-3：S型减速从 v_after_abs 到 v_cruise
            // 策略C：若 dv_decel1 <= dMax * jerkTime（三角波可达），则调整 tjd 使速度精确到达
            float32_t dv_decel1 = v_after_abs - v_cruise;
            float32_t tjd1_vc, tjd2_vc, td_vc;

            if(dv_decel1 <= 0.0f)
            {
                // 速度已低于目标，不需要减速
                td_vc = 0.0f;
                tjd1_vc = 0.0f;
                tjd2_vc = 0.0f;
                DEBUG_PRINT("[VC] dv=%.2f <= 0, skip Phase1-3 deceleration\n", dv_decel1);
            }
            else if(dv_decel1 <= dMax * profile->jerkTime)
            {
                // 三角波轮廓：调整 tjd 使速度刚好到达 v_cruise
                // 条件：tjd1 = tjd2 = tjd, td = 0
                // **关键修复**：正确的三角波时间公式
                // T = sqrt(dv * jerkTime / dMax)
                // 推导：dv = 2 * (0.5 * a_max * T) = a_max * T
                //      a_max = dMax（峰值加速度）
                //      dv = dMax * T + 0.5 * jMax * T²（Phase1 + Phase3）
                //      jMax = dMax / jerkTime
                //      dv = dMax * T + 0.5 * (dMax/jerkTime) * T²
                //      dv = dMax * T * (1 + T/(2*jerkTime))
                //      假设 T << jerkTime，dv ≈ dMax * T
                // **但完整公式是**：T² * dMax / (2*jerkTime) + T * dMax - dv = 0
                // 解得：T = sqrt(dv * jerkTime / dMax)（忽略小项）
                tjd1_vc = sqrtf(dv_decel1 * profile->jerkTime / dMax);
                tjd2_vc = tjd1_vc;
                td_vc = 0.0f;
                DEBUG_PRINT("[VC] Triangle decel: dv=%.2f, tjd=%.4f\n", dv_decel1, tjd1_vc);
            }
            else
            {
                // 梯形轮廓：标准3段S型减速
                tjd1_vc = profile->jerkTime;
                tjd2_vc = profile->jerkTime;
                td_vc = (dv_decel1 - dMax * profile->jerkTime) / dMax;
                DEBUG_PRINT("[VC] Trapezoid decel: dv=%.2f, tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                           dv_decel1, tjd1_vc, td_vc, tjd2_vc);
            }

            // 计算 Phase 1-3 位移
            float32_t jMax_vc = dMax / profile->jerkTime;
            float32_t s1 = 0.0f, s2 = 0.0f, s3 = 0.0f;

            if(tjd1_vc > SCURVE_EPSILON_TIME)
            {
                // Phase 1: s1 = v_start_abs * tjd1 - jMax * tjd1³ / 6
                float32_t v_start_abs = v_after_abs;
                float32_t a_effect = 0.0f;  // Phase0结束后加速度为0
                s1 = v_start_abs * tjd1_vc - jMax_vc * CUBE(tjd1_vc) / 6.0f;
                float32_t v_at_p1 = v_start_abs - jMax_vc * SQUARE(tjd1_vc) / 2.0f;

                if(td_vc > SCURVE_EPSILON_TIME)
                {
                    // Phase 2: s2 = v_at_p1 * td - dMax * td² / 2
                    s2 = v_at_p1 * td_vc - dMax * SQUARE(td_vc) / 2.0f;
                    float32_t v_at_p2 = v_at_p1 - dMax * td_vc;
                    float32_t a_phase3_start = -dMax + a_effect;  // Phase3开始时的加速度
                    // Phase 3: s3 = v_at_p2 * tjd2 + a_phase3_start * tjd2² / 2 + jMax * tjd2³ / 6
                    s3 = v_at_p2 * tjd2_vc + a_phase3_start * SQUARE(tjd2_vc) / 2.0f +
                         jMax_vc * CUBE(tjd2_vc) / 6.0f;
                }
                else if(tjd2_vc > SCURVE_EPSILON_TIME)
                {
                    // Phase 3（无匀减速段）: v_at_p2 = v_at_p1
                    float32_t a_phase3_start = -dMax + a_effect;  // Phase3开始时的加速度
                    // s3 = v_at_p1 * tjd2 + a_phase3_start * tjd2² / 2 + jMax * tjd2³ / 6
                    s3 = v_at_p1 * tjd2_vc + a_phase3_start * SQUARE(tjd2_vc) / 2.0f +
                         jMax_vc * CUBE(tjd2_vc) / 6.0f;
                }
            }

            // s_phase13 = 所有阶段位移之和
            float32_t s_phase13 = s1 + s2 + s3;
            float32_t p13_end_pos = pos_after_phase0 + s_dir * s_phase13;
            float32_t p13_end_vel = v_cruise * s_dir;

            DEBUG_PRINT("[VC] Phase1-3: s=%.4f, endPos=%.4f, endVel=%.4f\n",
                       s_phase13, p13_end_pos, p13_end_vel);

            // 保存 Phase 1-3 参数
            profile->reverseDecelTime = tjd1_vc + td_vc + tjd2_vc;
            profile->stopTjd1 = tjd1_vc;
            profile->stopTd = td_vc;
            profile->stopTjd2 = tjd2_vc;
            profile->vcDecel1Time = profile->reverseDecelTime;
            profile->vcDecel1Tjd1 = tjd1_vc;
            profile->vcDecel1Td = td_vc;
            profile->vcDecel1Tjd2 = tjd2_vc;
            profile->reverseDecelEndPos = p13_end_pos;
            profile->accelEndPos = p13_end_pos;

            // **关键修复**：Phase 0 结束后加速度为0，所以 accelAfterPhase0 = 0
            // 这对于三角波执行阶段的正确计算至关重要！
            profile->accelAfterPhase0 = 0.0f;

            // Phase 7：匀速段
            // 计算从 p13_end_pos 到 targetPos 的剩余距离
            float32_t s_to_target = profile->targetPos - p13_end_pos;
            float32_t s_to_target_abs = ABS(s_to_target);
            float32_t dir_to_target = SIGN(s_to_target);
            if(ABS(dir_to_target) < 0.5f) dir_to_target = s_dir;

            // Phase 11-13：减速到 targetPos（从 v_cruise 减速到 0）
            float32_t tjd_d2, td_d2 = 0.0f;
            float32_t dv_d2 = v_cruise;
            float32_t jerk = dMax / profile->jerkTime;  // jerk 固定值 = dmax/jerktime = 20000
            float32_t maxTjdForTri = dMax * profile->jerkTime;  // jerk * jerkTime = dMax (用于梯形波判断)

            if(dv_d2 > maxTjdForTri)
            {
                // 梯形波轮廓：能达到最大减速度，Phase 11-13 时间 = jerkTime
                td_d2 = (dv_d2 - maxTjdForTri) / dMax;
                tjd_d2 = profile->jerkTime;
            }
            else
            {
                // 三角波轮廓：速度变化量太小，保持 jerk 固定，计算满足 dv = jerk * tjd_d2² 的时间
                // 修正：使用 sqrt(dv / jerk) 而不是 dv / dMax，确保 jerk = dMax / jerkTime 固定
                tjd_d2 = sqrtf(dv_d2 / jerk);
                if(tjd_d2 < 0.001f) tjd_d2 = 0.001f;
            }

            // 计算 Phase 11-13 位移
            float32_t s_d2 = 0.0f;
            if(td_d2 > SCURVE_EPSILON_TIME)
            {
                float32_t a2 = jMax_vc * tjd_d2;
                float32_t v1 = v_cruise - 0.5f * jMax_vc * SQUARE(tjd_d2);
                float32_t s1 = v_cruise * tjd_d2 - (jMax_vc * CUBE(tjd_d2)) / 6.0f;
                float32_t s2 = v1 * td_d2 - 0.5f * a2 * SQUARE(td_d2);
                float32_t v2 = v1 - a2 * td_d2;
                float32_t s3 = v2 * tjd_d2 - 0.5f * a2 * SQUARE(tjd_d2) + (jMax_vc * CUBE(tjd_d2)) / 6.0f;
                s_d2 = s1 + s2 + s3;
            }
            else
            {
                // 三角波轮廓（速度变化量太小，jerk 保持固定 = dMax/jerkTime）
                // Phase 11: s1 = v_cruise * tjd - jerk * tjd³ / 6
                // Phase 13 (dt=tjd): s3 = v_cruise * tjd - 5/6 * jerk * tjd³
                // 总位移: s_d2 = 2 * v_cruise * tjd - jerk * tjd³
                s_d2 = 2.0f * v_cruise * tjd_d2 - jerk * CUBE(tjd_d2);
            }

            float32_t s_d2_signed = s_d2 * dir_to_target;

            // Phase 7 距离
            float32_t cruise_dist = s_to_target_abs - s_d2;
            float32_t cruise_dist_signed;
            if(cruise_dist <= 0.0f)
            {
                cruise_dist = 0.0f;
                cruise_dist_signed = 0.0f;
                profile->constTime = 0.0f;
                profile->decelStartPos = profile->targetPos;
            }
            else
            {
                cruise_dist_signed = cruise_dist * dir_to_target;
                profile->constTime = cruise_dist / v_cruise;
                profile->decelStartPos = p13_end_pos + cruise_dist_signed;
            }

            profile->vcConstTime = profile->constTime;
            profile->vcDecel2Time = tjd_d2 * 2.0f + td_d2;
            profile->vcDecel2Tjd1 = tjd_d2;
            profile->vcDecel2Td = td_d2;
            profile->vcDecel2Tjd2 = tjd_d2;
            profile->vcDecel2Dist = s_d2;

            profile->accelTime = 0.0f;
            profile->decelTime = 0.0f;
            profile->peakVelocity = v_cruise;
            profile->totalTime = t_trans + profile->reverseDecelTime +
                               profile->constTime + profile->vcDecel2Time;

            DEBUG_PRINT("[VC] FINAL: trans=%.4f, decel1=%.4f, cruise=%.4f, decel2=%.4f, total=%.4f\n",
                       t_trans, profile->reverseDecelTime, profile->constTime,
                       profile->vcDecel2Time, profile->totalTime);
            DEBUG_PRINT("[VC] Positions: current=%.4f, p13_end=%.4f, decelStart=%.4f, target=%.4f\n",
                       profile->currentPos, p13_end_pos, profile->decelStartPos, profile->targetPos);
            break;
        }

        case MOTION_TYPE_NORMAL:
        default:
        {
            //==============================================================
            // 正常运动：Phase 0 -> 标准7段S曲线
            // Phase 0 已预计算，使用 (pos_after_phase0, vel_after_phase0, a=0) 作为真实起点
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_NORMAL] Processing from pos=%.4f, vel=%.4f...\n",
                       pos_after_phase0, vel_after_phase0);

            float32_t v_start_for_forward = vel_after_abs;
            float32_t remaining_dist_for_curve = remaining_dist_abs;
            float32_t forward_dir = remaining_dir;

            // 标准7段S曲线
            calculate7SegmentSCurve(v_start_for_forward, profile->maxVelocity,
                                   remaining_dist_for_curve, profile->maxAccel,
                                   profile->maxDecel,
                                   profile->jerkTime, profile);

            profile->totalTime = t_trans + profile->accelTime +
                               profile->constTime + profile->decelTime;

            profile->reverseDecelEndPos = pos_after_phase0;

            float32_t tj1 = profile->tj1;
            float32_t ta = profile->ta;
            float32_t tj2 = profile->tj2;
            float32_t jMax_accel = profile->maxAccel / profile->jerkTime;

            float32_t aMax_actual;
            if(ta > SCURVE_EPSILON_TIME)
            {
                aMax_actual = profile->maxAccel;
            }
            else
            {
                aMax_actual = jMax_accel * tj1;
            }

            float32_t s1 = v_start_for_forward * tj1 + (jMax_accel * CUBE(tj1)) / 6.0f;
            float32_t v1 = v_start_for_forward + 0.5f * jMax_accel * SQUARE(tj1);
            float32_t s2 = v1 * ta + 0.5f * aMax_actual * SQUARE(ta);
            float32_t v2 = v1 + aMax_actual * ta;
            float32_t s3 = v2 * tj2 + 0.5f * aMax_actual * SQUARE(tj2) - (jMax_accel * CUBE(tj2)) / 6.0f;
            float32_t s_accel_actual = s1 + s2 + s3;

            profile->accelEndPos = pos_after_phase0 + forward_dir * s_accel_actual;

            float32_t tjd1 = profile->tjd1;
            float32_t td = profile->td;
            float32_t tjd2 = profile->tjd2;

            float32_t dMax_actual;
            if(td > SCURVE_EPSILON_TIME)
            {
                dMax_actual = profile->maxDecel;
            }
            else
            {
                dMax_actual = jMax_accel * tjd1;
            }

            float32_t sd1 = profile->peakVelocity * tjd1 - (jMax_accel * CUBE(tjd1)) / 6.0f;
            float32_t vd1 = profile->peakVelocity - 0.5f * jMax_accel * SQUARE(tjd1);
            float32_t sd2 = vd1 * td - 0.5f * dMax_actual * SQUARE(td);
            float32_t vd2 = vd1 - dMax_actual * td;
            float32_t sd3 = vd2 * tjd2 - 0.5f * dMax_actual * SQUARE(tjd2) + (jMax_accel * CUBE(tjd2)) / 6.0f;
            float32_t s_decel_actual = sd1 + sd2 + sd3;

            profile->decelStartPos = profile->targetPos - forward_dir * s_decel_actual;

            DEBUG_PRINT("[NORMAL] v_start=%.2f, v_max=%.2f, dist=%.2f, totalTime=%.3f\n",
                       v_start_for_forward, profile->peakVelocity, remaining_dist_for_curve, profile->totalTime);
            DEBUG_PRINT("[NORMAL] Positions: start=%.4f, accelEnd=%.4f, decelStart=%.4f, target=%.4f\n",
                       pos_after_phase0, profile->accelEndPos, profile->decelStartPos, profile->targetPos);
            break;
        }
    }
    
    // 设置状态
    profile->state = PROFILE_ACCEL;
    profile->isComputed = true;
    profile->isActive = true;

    // 对于非微小运动，确保isMicroMotion标志为false
    // （微小运动在case MOTION_TYPE_MICRO中已设置为true）
    if(motionType != MOTION_TYPE_MICRO)
    {
        profile->isMicroMotion = false;
    }
    // **关键修复**：不要在这里清除isEmergencyStop标志！
    // 这个标志需要在整个轨迹执行过程中保持，用于SCurve_getAcceleration/Velocity/Position
    // 标志会在updateProfile的轨迹完成处清除
    // profile->isEmergencyStop = false;  // ← 移除
    
    DEBUG_PRINT("========== S-Curve Profile Computation COMPLETE ==========\n\n");
}

//*****************************************************************************
//
// SCurve_getPosition - 计算当前位置
//
// 参数：
//   profile - Profile结构体指针
//   t - 时间（从规划开始的elapsed time）
//
// 返回：当前位置
//
// 说明：
//   根据时间t判断当前处于哪个Phase，然后使用对应的公式计算位置
//   Phase划分：
//   0. [0, t_trans]: 加速度过渡段
//   1. [t_trans, t_trans+t_rev]: 反向减速段（如果有）
//   2. [t_trans+t_rev, t_trans+t_rev+t_accel]: 加速段
//   3. [t_trans+t_rev+t_accel, t_trans+t_rev+t_accel+t_const]: 匀速段
//   4. [t_trans+t_rev+t_accel+t_const, totalTime]: 减速段
//
//*****************************************************************************
float32_t SCurve_getPosition(TrapezoidalProfile_t *profile, float32_t t)
{
    if(!profile->isComputed || !profile->isActive)
    {
        return profile->currentPos;
    }
    
    if(t <= SCURVE_EPSILON_TIME)
    {
        return profile->currentPos;
    }
    
    if(t > profile->totalTime)
    {
        return profile->targetPos;
    }
    
    // **微小运动特殊处理**：使用线性插值
    if(profile->isMicroMotion)
    {
        float32_t progress = t / profile->totalTime;
        if(progress > 1.0f) progress = 1.0f;
        return profile->currentPos + (profile->targetPos - profile->currentPos) * progress;
    }
    
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    // **关键修复**：v0直接使用startVelocity（已包含符号）
    float32_t v0 = profile->startVelocity;
    float32_t a0 = profile->startAccel;
    float32_t jMax = profile->maxAccel / profile->jerkTime;
    float32_t pos = profile->currentPos;
    float32_t t_elapsed = t;
    
    // **关键修复**：计算初始运动方向（基于速度，而非位置）
    float32_t v0_direction = SIGN(v0);
    if(ABS(v0_direction) < 0.5f) v0_direction = direction;  // 速度为0时使用目标方向
    
    // **关键修复**：使用有效减速度（仅在急停命令时使用emergencyDecel）
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
                               profile->emergencyDecel : profile->maxDecel;

    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
        float32_t jMax_trans = (profile->isEmergencyStop) ? 
                               (effectiveDecel / profile->jerkTime) : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：Phase0位置公式使用实际的v0和a0（都带方向）
            // jerk = -SIGN(a0) * jMax_trans（使加速度向 0 变化）
            // a(t) = a0 + jerk*t，v(t) = v0 + a0*t + jerk*t²/2，s(t) = v0*t + a0*t²/2 + jerk*t³/6
            float32_t jerk_trans = -SIGN(a0) * jMax_trans;
            float32_t s = v0 * t_elapsed + 0.5f * a0 * SQUARE(t_elapsed) + 
                         (jerk_trans * CUBE(t_elapsed)) / 6.0f;
            return profile->currentPos + s;
        }
        else
        {
            // **关键修复**：已过加速度过渡段，计算Phase0的总位移（使用带符号的v0）
            float32_t jerk_trans = -SIGN(a0) * jMax_trans;
            float32_t s_trans = v0 * profile->accelTransTime + 
                              0.5f * a0 * SQUARE(profile->accelTransTime) + 
                              (jerk_trans * CUBE(profile->accelTransTime)) / 6.0f;
            pos = profile->currentPos + s_trans;
            t_elapsed -= profile->accelTransTime;
            
            // Phase0结束后的速度：v = v0 + a0*t + jerk*t²/2
            float32_t v_after_trans = v0 + a0 * profile->accelTransTime + 
                                    0.5f * jerk_trans * SQUARE(profile->accelTransTime);
            v0 = v_after_trans;
            v0_direction = SIGN(v0);
        }
    }
    // Phase 1-3: 反向减速段（停止到0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        float32_t t_stop_total = profile->reverseDecelTime;

        // **关键修复**：使用 < 条件，在边界处使用 reverseDecelEndPos
        // 当 t_elapsed >= t_stop_total 时，使用预存的位置确保连续性
        if(t_elapsed < t_stop_total)
        {
            // **关键修复**：使用effectiveDecel（急停时会加倍）
            float32_t dMax = effectiveDecel;
            float32_t a_start = profile->accelAfterPhase0;  // **关键**：Phase0后的加速度
            float32_t s = 0.0f;

            // **关键修复**：梯形曲线（jerkTime=0）使用线性减速位移，S型曲线使用jerk位移
            if(profile->jerkTime < SCURVE_EPSILON_TIME)
            {
                // 梯形曲线：线性减速位移
                // s(t) = v0*t - 0.5*decel*t^2（注意v0已包含符号）
                s = v0 * t_elapsed - 0.5f * dMax * v0_direction * SQUARE(t_elapsed);
            }
            else
            {
                // S型曲线：使用stopTjd1/stopTd/stopTjd2
                float32_t stop_tjd1 = profile->stopTjd1;
                float32_t stop_td = profile->stopTd;
                float32_t stop_tjd2 = profile->stopTjd2;
                float32_t jMax_decel = effectiveDecel / profile->jerkTime;
                float32_t v_start_abs = ABS(v0);
                float32_t a_start = profile->accelAfterPhase0;
                float32_t a_effect = a_start * v0_direction;
                float32_t t_stop_total_check = stop_tjd1 + stop_td + stop_tjd2;

                // 检查是否接近终点，如果是则直接使用预存值
                if(t_elapsed >= t_stop_total_check - SCURVE_EPSILON_TIME)
                {
                    // 接近终点，使用预存的终点位置
                    return profile->reverseDecelEndPos;
                }

                if(t_elapsed <= stop_tjd1)
                {
                    // Phase 1: 减加速（建立减速加速度）
                    // 速度: |v| = v_start_abs + a_effect*t - 0.5*jMax*t²
                    // 位置: s = v0*t + 0.5*a_effect*t² - jMax*t³/6
                    s = v0_direction * (v_start_abs * t_elapsed + 0.5f * a_effect * SQUARE(t_elapsed) -
                        (jMax_decel * CUBE(t_elapsed)) / 6.0f);
                }
                else if(t_elapsed <= stop_tjd1 + stop_td)
                {
                    // Phase 2: 匀减速（保持峰值减速度）
                    // |v| = v1 - dMax*t2
                    // s = s1 + v0_direction * (v1*t2 - 0.5*dMax*t2²)
                    // s1 = v0*t1 + 0.5*a_effect*t1² - jMax*t1³/6
                    float32_t t1 = stop_tjd1;
                    float32_t v1 = v_start_abs + a_effect * t1 - 0.5f * jMax_decel * SQUARE(t1);
                    float32_t s1 = v0_direction * (v_start_abs * t1 + 0.5f * a_effect * SQUARE(t1) -
                                   (jMax_decel * CUBE(t1)) / 6.0f);
                    float32_t t2 = t_elapsed - t1;
                    float32_t s2 = v0_direction * (v1 * t2 - 0.5f * dMax * SQUARE(t2));
                    s = s1 + s2;
                }
                else
                {
                    float32_t t1 = stop_tjd1;
                    float32_t t2 = stop_td;
                    float32_t v1 = v_start_abs + a_effect * t1 - 0.5f * jMax_decel * SQUARE(t1);
                    float32_t v2 = v1 - dMax * t2;
                    float32_t s1 = v0_direction * (v_start_abs * t1 + 0.5f * a_effect * SQUARE(t1) -
                                   (jMax_decel * CUBE(t1)) / 6.0f);
                    float32_t s2 = v0_direction * (v1 * t2 - 0.5f * dMax * SQUARE(t2));
                    float32_t t3 = t_elapsed - t1 - t2;

                    // 添加调试输出
                    DEBUG_PRINT("[Phase3-CALC] t_elapsed=%.6f, t1=%.6f, t2=%.6f, t3=%.6f, v2=%.4f\n",
                                t_elapsed, t1, t2, t3, v2);
                    DEBUG_PRINT("[Phase3-CALC] s1=%.6f, s2=%.6f, v0_direction=%.1f\n",
                                s1, s2, v0_direction);

                    // **修正**：s3 公式中的第三项应该使用实际的 jerk 值
                    // jerk_actual = (a_end - a_start) / T = (0 - (-2000)) / 0.05 = 40000
                    // 而不是 jMax_decel = dMax / jerkTime = 20000 / 0.5 = 40000
                    // 因为三角波的时间是 t3，不是配置参数 jerktime
                    // 正确公式：s3 = v2*T + a_start*T²/2 + jerk_actual*T³/6
                    // 其中 a_start = -dMax + a_effect
                    float32_t a_phase3_start =a_effect - jMax_decel * t1;  // Phase3 开始时的加速度（负值）
                    float32_t jerk_actual = jMax_decel;  // 实际的 jerk 值
                    float32_t s3 = v0_direction * (v2 * t3 + a_phase3_start * SQUARE(t3) / 2.0f +
                                                    jerk_actual * CUBE(t3) / 6.0f);

                    DEBUG_PRINT("[Phase3-CALC] s3=%.6f, total_s=%.6f, pos+s=%.6f,a_phase3_start=%.6f,jerk_actual=%.6f\n",
                                s3, s1 + s2 + s3, pos + s1 + s2 + s3,a_phase3_start,jerk_actual);

                    s = s1 + s2 + s3;
                }
            }
            
            // **关键修复**：s已包含方向（使用了带符号的v0），直接返回
            return pos + s;
    }
    else
    {
        // 已过Phase1-3减速段，位置在reverseDecelEndPos
        pos = profile->reverseDecelEndPos;
        t_elapsed -= t_stop_total;

        // **VELOCITY_CHANGE**：Phase1-3结束后减速到v_peak，非停止到0
        if(profile->isVelocityChange)
        {
            // Phase7: 匀速（仅当constTime > 0时存在）
            if(profile->constTime > SCURVE_EPSILON_TIME)
            {
                if(t_elapsed < profile->constTime)
                {
                    // 计算 Phase 7 内的相对时间
                    float32_t t_in_cruise = t_elapsed;
                    float32_t s_cruise = profile->peakVelocity * t_in_cruise;
                    DEBUG_PRINT("[SCurve_getPosition] Phase7: t_in_cruise=%.4f, s_cruise=%.4f\n", t_in_cruise, s_cruise);
                    return pos + direction * s_cruise;
                }
                else
                {
                    // Phase 7 结束
                    t_elapsed -= profile->constTime;
                    pos = profile->decelStartPos;  // Phase7结束，减速开始
                    DEBUG_PRINT("[SCurve_getPosition] after Phase7: t_elapsed=%.4f, pos=%.4f\n", t_elapsed, pos);
                }
            }

            // Phase11-13: 低速减速到目标（使用VC模式专用字段）
            if(profile->vcDecel2Time > SCURVE_EPSILON_TIME)
            {
                float32_t dMax = effectiveDecel;
                float32_t jMax_d2 = dMax / profile->jerkTime;
                float32_t td_d2 = profile->vcDecel2Td;
                float32_t tjd1_d2 = profile->vcDecel2Tjd1;
                float32_t tjd2_d2 = profile->vcDecel2Tjd2;
                // **关键修复**：v_start_d2 是速度绝对值（正值），不乘 v0_direction
                // 公式 v = v_start_d2 - ... 假设起始速度为正
                // 最终结果乘以 direction 得到带符号的速度
                float32_t v_start_d2 = profile->peakVelocity;

                // Phase 11: 减加速（加速度从0变到 -jerk*tjd_d2），jerk 固定 = dMax/jerkTime
                if(t_elapsed < tjd1_d2)
                {
                    // 三角波：a(t) = -jerk * t, v(t) = v_start - jerk * t² / 2
                    // s = v_start * t - jerk * t³ / 6
                    float32_t jerk = dMax / profile->jerkTime;  // jerk 固定值
                    float32_t s_d2 = v_start_d2 * t_elapsed -
                                      jerk * CUBE(t_elapsed) / 6.0f;
                    DEBUG_PRINT("[SCurve_getPosition] Phase11: s_d2=%.4f, total=%.4f\n", s_d2, pos + direction * s_d2);
                    return pos + direction * s_d2;
                }
                // Phase 12: 匀减速（仅当td_d2 > 0时有此段）
                else if(td_d2 > SCURVE_EPSILON_TIME && t_elapsed <= tjd1_d2 + td_d2)
                {
                    // Phase 12: 匀减速（保持峰值减速度-dMax）
                    float32_t dt = t_elapsed - tjd1_d2;
                    float32_t s1 = v_start_d2 * tjd1_d2 - (jMax_d2 * CUBE(tjd1_d2)) / 6.0f;
                    float32_t v1 = v_start_d2 - 0.5f * jMax_d2 * SQUARE(tjd1_d2);
                    float32_t a2 = jMax_d2 * tjd1_d2;  // dMax
                    float32_t s2 = v1 * dt - 0.5f * a2 * SQUARE(dt);
                    DEBUG_PRINT("[SCurve_getPosition] Phase12: s1=%.4f, s2=%.4f, total=%.4f\n", s1, s2, pos + direction * (s1 + s2));
                    return pos + direction * (s1 + s2);
                }
                // Phase 13: 减减速（加速度从-dMax变到0）
                else
                {
                    float32_t dt = t_elapsed - tjd1_d2 - td_d2;
                    
                if(td_d2 < SCURVE_EPSILON_TIME)
                {
                    // 三角波轮廓：Phase 11 + Phase 13（无匀减速段），jerk 固定 = dMax/jerkTime
                    // Phase 11: a = -jerk*t, v = v_cruise - jerk*t²/2, s = v_cruise*t - jerk*t³/6
                    // Phase 13: a = a_peak + jerk*dt, v = v_mid + a_peak*dt + jerk*dt²/2
                    //          s3 = v_mid*dt + a_peak*dt²/2 + jerk*dt³/6
                    float32_t jerk = dMax / profile->jerkTime;
                    float32_t v_mid = v_start_d2 - jerk * SQUARE(tjd1_d2) / 2.0f;
                    float32_t a_peak = -jerk * tjd1_d2;
                    float32_t s1 = v_start_d2 * tjd1_d2 - jerk * CUBE(tjd1_d2) / 6.0f;
                    float32_t s3 = v_mid * dt + a_peak * SQUARE(dt) / 2.0f + jerk * CUBE(dt) / 6.0f;
                    DEBUG_PRINT("[SCurve_getPosition] Phase13 (triangular): s1=%.4f, s3=%.4f, total=%.4f\n",
                               s1, s3, pos + direction * (s1 + s3));
                    return pos + direction * (s1 + s3);
                }
                    else
                    {
                        // 梯形轮廓
                        float32_t jMax1 = dMax / tjd1_d2;
                        float32_t s1 = v_start_d2 * tjd1_d2 - (jMax1 * CUBE(tjd1_d2)) / 6.0f;
                        float32_t v1 = v_start_d2 - 0.5f * jMax1 * SQUARE(tjd1_d2);
                        float32_t a2 = jMax_d2 * tjd1_d2;  // dMax
                        float32_t s2 = v1 * td_d2 - 0.5f * a2 * SQUARE(td_d2);
                        float32_t v2 = v1 - a2 * td_d2;
                        float32_t s3 = v2 * dt - 0.5f * a2 * SQUARE(dt) +
                                      (jMax_d2 * CUBE(dt)) / 6.0f;
                        DEBUG_PRINT("[SCurve_getPosition] Phase13 (trapezoidal): s1=%.4f, s2=%.4f, s3=%.4f, total=%.4f\n",
                                   s1, s2, s3, pos + direction * (s1 + s2 + s3));
                        return pos + direction * (s1 + s2 + s3);
                    }
                }
            }
            DEBUG_PRINT("[SCurve_getPosition] no decel2, returning pos=%.4f\n", pos);
            return pos;
        }

        // **VELOCITY_CHANGE**：无加速段(Phase4-10)，直接返回峰值速度
        if(profile->isVelocityChange)
        {
            return profile->peakVelocity * v0_direction;
        }

        v0 = 0.0f;  // 速度归零
    }
    }
    // **VELOCITY_CHANGE**：Phase 1-3 + Phase 7 + Phase 11-13 已完整计算，直接返回targetPos
    if(profile->isVelocityChange)
    {
        return profile->targetPos;
    }

    // **关键修复**：STOP轨迹（只有Phase 1-3减速到0）直接返回targetPos
    // 判断条件：Phase 1-3 存在（reverseDecelTime > 0），但Phase 4-10 不存在（accelTime=0, constTime=0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME &&
       profile->accelTime < SCURVE_EPSILON_TIME &&
       profile->constTime < SCURVE_EPSILON_TIME)
    {
        return profile->targetPos;
    }

    // **关键修复**：计算实际加速度峰值（对于三角形轮廓，不使用最大允许值）
    float32_t aMax, dMax;
    float32_t v_start_abs = ABS(v0);
    
    // 计算各阶段的时间点
    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;
    float32_t t7 = t6 + profile->tjd2;
    
    DEBUG_PRINT("[SCurve_getPosition Phase4-10] t=%.6f, v0=%.6f, v_start_abs=%.6f\n", t, v0, v_start_abs);
    DEBUG_PRINT("[SCurve_getPosition Phase4-10] t1=%.6f, t2=%.6f, t3=%.6f, t4=%.6f, t5=%.6f, t6=%.6f, t7=%.6f\n",
               t1, t2, t3, t4, t5, t6, t7);
    DEBUG_PRINT("[SCurve_getPosition Phase4-10] (t1-t=%.6f), (t2-t=%.6f), (t3-t=%.6f), (t4-t=%.6f), (t5-t=%.6f), (t6-t=%.6f)\n",
               t1-t, t2-t, t3-t, t4-t, t5-t, t6-t);
    DEBUG_PRINT("[SCurve_getPosition Phase4-10] reverseDecelEndPos=%.4f, accelEndPos=%.4f, pos=%.4f\n",
               profile->reverseDecelEndPos, profile->accelEndPos, pos);
    
    // 计算实际加速度峰值
    // 计算实际加速度峰值
    if(profile->ta > SCURVE_EPSILON_TIME)
    {
        // 梯形加速：能达到最大加速度
        aMax = profile->maxAccel;
        }
        else
        {
        // 三角形加速：实际加速度峰值 = jMax * tj1
        aMax = jMax * t1;
    }
    
    if(profile->td > SCURVE_EPSILON_TIME)
    {
        // 梯形减速：能达到最大减速度
        dMax = profile->maxDecel;
    }
    else
    {
        // 三角形减速：实际减速度峰值 = jMax * tjd1
        dMax = jMax * profile->tjd1;
    }
    float32_t jMax_decel = effectiveDecel / profile->jerkTime;
    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isEmergencyStop)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续Phase0结束后的速度方向
        // **关键修复**：使用velAfterPhase0而不是currentVel
        // velAfterPhase0是Phase0结束后的实际速度（带符号）
        phase47_direction = SIGN(profile->velAfterPhase0);
        if(ABS(phase47_direction) < 0.5f) phase47_direction = direction;  // 速度为0时用目标方向
    }

    DEBUG_PRINT("[SCurve_getPosition] KEY_PARAMS: pos=%.4f, accelEndPos=%.4f, decelStartPos=%.4f, targetPos=%.4f, peakVel=%.4f\n",
               pos, profile->accelEndPos, profile->decelStartPos, profile->targetPos, profile->peakVelocity);

    if(t_elapsed < t1)
    {
        // Phase 4: 加加速
        float32_t s = v_start_abs * t_elapsed + (jMax * CUBE(t_elapsed)) / 6.0f;
        DEBUG_PRINT("[Phase4] t=%.4f, s=%.4f, result=%.4f\n", t_elapsed, s, pos + phase47_direction * s);
        return pos + phase47_direction * s;
    }
    else if(t_elapsed < t2)
    {
        // Phase 5: 匀加速
        float32_t dt = t_elapsed - t1;
        float32_t s1 = v_start_abs * t1 + (jMax * CUBE(t1)) / 6.0f;
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t s2 = v1 * dt + 0.5f * aMax * SQUARE(dt);
        DEBUG_PRINT("[Phase5] dt=%.4f, s1=%.4f, s2=%.4f, result=%.4f\n", dt, s1, s2, pos + phase47_direction * (s1 + s2));
        return pos + phase47_direction * (s1 + s2);
    }
    else if(t_elapsed < t3)
    {
        // Phase 6: 减加速
        float32_t dt = t_elapsed - t2;
        float32_t s1 = v_start_abs * t1 + (jMax * CUBE(t1)) / 6.0f;
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t s2 = v1 * profile->ta + 0.5f * aMax * SQUARE(profile->ta);
        float32_t v2 = v1 + aMax * profile->ta;
        float32_t s3 = v2 * dt + 0.5f * aMax * SQUARE(dt) - (jMax * CUBE(dt)) / 6.0f;
        float32_t total_s = s1 + s2 + s3;
        DEBUG_PRINT("[SCurve_getPosition] Phase6: dt=%.4f, s1=%.4f, s2=%.4f, s3=%.4f, total=%.4f, result=%.4f\n",
                   dt, s1, s2, s3, total_s, pos + phase47_direction * total_s);
        return pos + phase47_direction * (s1 + s2 + s3);
    }
    else if(t_elapsed < t4)
    {
        // Phase 7: 匀速（如果有匀速段）
        float32_t dt = t_elapsed - t3;
        float32_t s_accel = profile->accelEndPos - pos;  // 加速段总距离
        float32_t s_cruise = profile->peakVelocity * dt;
        return pos + phase47_direction * (ABS(s_accel) + s_cruise);
    }
    else if(t_elapsed < t5)
    {
        // Phase 8: 加减速
        float32_t dt = t_elapsed - t4;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * dt - (jMax_decel * CUBE(dt)) / 6.0f;
        return pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1);
    }
    else if(t_elapsed < t6)
    {
        // Phase 9: 匀减速（保持峰值减速度）
        // **关键修复**：必须使用减速的 jMax_decel
        float32_t jMax_decel = effectiveDecel / profile->jerkTime;
        float32_t dt = t_elapsed - t5;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * profile->tjd1 - (jMax_decel * CUBE(profile->tjd1)) / 6.0f;
        float32_t v_d1 = profile->peakVelocity - 0.5f * jMax_decel * SQUARE(profile->tjd1);
        float32_t s_d2 = v_d1 * dt - 0.5f * dMax * SQUARE(dt);
        DEBUG_PRINT("[Phase9] dt=%.4f, s_accel=%.4f, s_cruise=%.4f, s_d1=%.4f, s_d2=%.4f, result=%.4f\n",
                   dt, ABS(s_accel), s_cruise, s_d1, s_d2, pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1 + s_d2));
        return pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1 + s_d2);
    }
    else
    {
        // Phase 10: 减减速（加速度回到0）
        float32_t jMax_decel = effectiveDecel / profile->jerkTime;
        float32_t dt = t_elapsed - t6;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * profile->tjd1 - (jMax_decel * CUBE(profile->tjd1)) / 6.0f;
        float32_t v_d1 = profile->peakVelocity - 0.5f * jMax_decel * SQUARE(profile->tjd1);
        
        float32_t s_d2, s_d3;
        
        if(profile->td > SCURVE_EPSILON_TIME)
        {
            // 梯形波轮廓
            float32_t v_d2 = v_d1 - dMax * profile->td;
            s_d2 = v_d1 * profile->td - 0.5f * dMax * SQUARE(profile->td);
            s_d3 = v_d2 * dt - 0.5f * dMax * SQUARE(dt) + (jMax_decel * CUBE(dt)) / 6.0f;
        }
        else
        {
            // 三角波轮廓
            s_d2 = 0.0f;
            // 加速度从 -jMax_decel*tjd1 变化到 0
            // v(t) = v_d1 - jMax_decel*tjd1*dt + 0.5*jMax_decel*dt²
            // s_d3 = ∫v(t)dt = v_d1*dt - 0.5*jMax_decel*tjd1*dt² + jMax_decel*dt³/6
            s_d3 = v_d1 * dt - 0.5f * jMax_decel * profile->tjd1 * SQUARE(dt) 
                + (jMax_decel * CUBE(dt)) / 6.0f;
        }
        
        float32_t total_dist = ABS(s_accel) + s_cruise + s_d1 + s_d2 + s_d3;
        return pos + phase47_direction * total_dist;
    }
}

//*****************************************************************************
//
// SCurve_getVelocity - 计算当前速度
//
//*****************************************************************************
float32_t SCurve_getVelocity(TrapezoidalProfile_t *profile, float32_t t)
{
    if(!profile->isComputed || !profile->isActive)
    {
        return 0.0f;
    }
    
    if(t <= SCURVE_EPSILON_TIME)
    {
        // **关键修复**：直接返回startVelocity（已包含符号）
        return profile->startVelocity;
    }
    
    if(t > profile->totalTime)
    {
        return 0.0f;
    }
    
    // **微小运动特殊处理**：返回恒定速度
    if(profile->isMicroMotion)
    {
        float32_t distance = profile->targetPos - profile->currentPos;
        float32_t direction = SIGN(distance);
        return profile->peakVelocity * direction;
    }
    
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    // **关键修复**：v0直接使用startVelocity（已包含符号），不乘direction
    float32_t v0 = profile->startVelocity;
    float32_t a0 = profile->startAccel;
    float32_t jMax = profile->maxAccel / profile->jerkTime;
    float32_t t_elapsed = t;
    
    // **关键修复**：计算初始运动方向（基于速度，而非位置）
    float32_t v0_direction = SIGN(v0);
    if(ABS(v0_direction) < 0.5f) v0_direction = direction;  // 速度为0时使用目标方向
    
    // **关键修复**：使用有效减速度（仅在急停命令时使用emergencyDecel）
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
                               profile->emergencyDecel : profile->maxDecel;

    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
        float32_t jMax_trans = (profile->isEmergencyStop) ? 
                               (effectiveDecel / profile->jerkTime) : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：Phase0速度公式使用实际的v0和a0（都带方向）
            // jerk = -SIGN(a0) * jMax_trans（使加速度向 0 变化）
            // a(t) = a0 + jerk*t，v(t) = v0 + a0*t + jerk*t²/2
            float32_t jerk_trans = -SIGN(a0) * jMax_trans;
            float32_t v = v0 + a0 * t_elapsed + 0.5f * jerk_trans * SQUARE(t_elapsed);
            return v;
        }
        else
        {
            t_elapsed -= profile->accelTransTime;
            // Phase0结束后的速度
            float32_t jerk_trans = -SIGN(a0) * jMax_trans;
            float32_t v_after_trans = v0 + a0 * profile->accelTransTime + 
                                   0.5f * jerk_trans * SQUARE(profile->accelTransTime);
            v0 = v_after_trans;
        }
    }

    // Phase 1-3: 反向减速段
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        float32_t t_stop_total = profile->reverseDecelTime;

        // **关键修复**：使用 <= 条件确保在边界处位置和速度一致
        if(t_elapsed <= t_stop_total)
        {
            // **关键修复**：Phase1-3也必须使用effectiveDecel，因为时间参数是基于它计算的！
            float32_t dMax = effectiveDecel;  // 使用effectiveDecel，不是maxDecel！
            float32_t v_start_abs = ABS(v0);
            float32_t a_start = profile->accelAfterPhase0;  // **关键**：Phase0后的加速度
            float32_t v = 0.0f;
            
            // **关键修复**：梯形曲线（jerkTime=0）使用线性减速，S型曲线使用jerk减速
            if(profile->jerkTime < SCURVE_EPSILON_TIME)
            {
                // 梯形曲线：纯线性减速
                // v(t) = v0 - decel*t
                v = v_start_abs - dMax * t_elapsed;
                if(v < 0.0f) v = 0.0f;  // 防止负速度
            }
            else
            {
                // S型曲线：使用stopTjd1/stopTd/stopTjd2
                float32_t stop_tjd1 = profile->stopTjd1;
                float32_t stop_td = profile->stopTd;
                float32_t stop_tjd2 = profile->stopTjd2;
                float32_t jMax_decel = effectiveDecel / profile->jerkTime;

                // **关键修复**：a_start是实际加速度（带符号）
                // 需要转换为对速度绝对值的"效果"：
                // - 如果a_start与v0方向相反（减速）→ 效果是减小|v| → 用负值
                // - 如果a_start与v0方向相同（加速）→ 效果是增加|v| → 用正值
                // 转换公式：a_effect = a_start * v0_direction
                // 例如：a_start=1800, v0=-419, v0_direction=-1 → a_effect=-1800（减速效果）
                float32_t a_effect = a_start * v0_direction;

                if(t_elapsed <= stop_tjd1)
                {
                    // Phase 1: 减加速（|v|减小，|a|增加到dMax）
                    // 公式：|v(t)| = |v0| + a_effect*t - 0.5*jMax*t²
                    v = v_start_abs + a_effect * t_elapsed - 0.5f * jMax_decel * SQUARE(t_elapsed);
                }
                else if(t_elapsed <= stop_tjd1 + stop_td)
                {
                    // Phase 2: 匀减速（保持峰值减速度-dMax）
                    // **关键修复**：使用恒定减速度公式！
                    // |v| = v1 - dMax*t2
                    float32_t v1 = v_start_abs + a_effect * stop_tjd1 -
                                   0.5f * jMax_decel * SQUARE(stop_tjd1);
                    float32_t t2 = t_elapsed - stop_tjd1;
                    v = v1 - dMax * t2;
                }
                else
                {
                    // Phase 3: 减减速（|a|从dMax减到0）
                    float32_t v1 = v_start_abs + a_effect * stop_tjd1 -
                                   0.5f * jMax_decel * SQUARE(stop_tjd1);
                    float32_t a1 = a_effect - jMax_decel * stop_tjd1;  // 峰值减速度
                    float32_t v2 = v1 + a1 * stop_td;

                    float32_t dt = t_elapsed - stop_tjd1 - stop_td;
                    v = v2 + a1 * dt + 0.5f * jMax_decel * SQUARE(dt);

                    // **关键修复**：在Phase3结束处强制速度为期望值以确保与Phase4连续
                    // 对于停止模式，速度应为0；对于VELOCITY_CHANGE模式，速度应为peakVelocity
                    if(t_elapsed >= t_stop_total - SCURVE_EPSILON_TIME)
                    {
                        if(profile->isVelocityChange)
                        {
                            v = profile->peakVelocity;  // VELOCITY_CHANGE模式：速度应为peakVelocity
                        }
                        else
                        {
                            v = 0.0f;  // 停止模式：速度应为0
                        }
                    }
                }

                // **关键修复**：防止速度变负
                if(v < 0.0f) v = 0.0f;
            }
            
            return v * v0_direction;
        }
        else
        {
            t_elapsed -= t_stop_total;
            DEBUG_PRINT("[SCurve_getVelocity] after Phase1-3: t_elapsed=%.4f, constTime=%.4f, vcDecel2Time=%.4f\n",
                       t_elapsed, profile->constTime, profile->vcDecel2Time);
            // **VELOCITY_CHANGE**：Phase1-3减速到v_peak后，非停止到0
            if(profile->isVelocityChange)
            {
                // Phase1-3结束后速度 = peakVelocity（减速到峰值，非归零）
                v0 = profile->peakVelocity * v0_direction;
                // Phase7: 匀速（如果constTime > 0）
                if(profile->constTime > SCURVE_EPSILON_TIME)
                {
                    DEBUG_PRINT("[SCurve_getVelocity] Phase7: t_elapsed=%.4f, constTime=%.4f\n",
                               t_elapsed, profile->constTime);
                    if(t_elapsed <= profile->constTime)
                    {
                        DEBUG_PRINT("[SCurve_getVelocity] Phase7 returning peakVelocity=%.2f\n",
                                   profile->peakVelocity * v0_direction);
                        return profile->peakVelocity * v0_direction;
                    }
                    t_elapsed -= profile->constTime;
                    DEBUG_PRINT("[SCurve_getVelocity] after Phase7: t_elapsed=%.4f\n", t_elapsed);
                }
                // Phase11-13: 减速到目标速度（与Phase 7独立）
                if(profile->vcDecel2Time > SCURVE_EPSILON_TIME)
                {
                    DEBUG_PRINT("[SCurve_getVelocity] Phase11-13: t_elapsed=%.4f, tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                               t_elapsed, profile->vcDecel2Tjd1, profile->vcDecel2Td, profile->vcDecel2Tjd2);
                    float32_t dMax = effectiveDecel;
                    float32_t jMax_d2 = effectiveDecel / profile->jerkTime;
                    float32_t td_d2 = profile->vcDecel2Td;
                    float32_t tjd1_d2 = profile->vcDecel2Tjd1;
                    float32_t tjd2_d2 = profile->vcDecel2Tjd2;
                    // **关键修复**：v_start_d2 是速度绝对值（正值），不乘 v0_direction
                    // 公式 v = v_start - ... 假设起始速度为正
                    // 最终结果乘以 direction 得到带符号的速度
                    float32_t v_start_d2 = profile->peakVelocity;
                    float32_t v_target = profile->vcTargetVel;

                    // Phase 11: 减加速（加速度从0变到-dMax），jerk 固定 = -dMax/jerkTime
                    if(t_elapsed < tjd1_d2)
                    {
                        // 三角波：v(t) = v_start - jerk * t² / 2
                        // jerk = dMax / jerkTime（固定值）
                        float32_t jerk = dMax / profile->jerkTime;  // 固定 jerk 值
                        float32_t v_abs = v_start_d2 - jerk * SQUARE(t_elapsed) / 2.0f;
                        DEBUG_PRINT("[SCurve_getVelocity] Phase11: v_abs=%.2f, jerk=%.2f\n", v_abs, jerk);
                        return v_abs * direction;
                    }
                    // Phase 12: 匀减速（仅当td_d2 > 0时有此段）
                    else if(td_d2 > SCURVE_EPSILON_TIME && t_elapsed <= tjd1_d2 + td_d2)
                    {
                        // Phase 12: 匀减速
                        float32_t v1_abs = v_start_d2 - 0.5f * jMax_d2 * SQUARE(tjd1_d2);
                        float32_t dt = t_elapsed - tjd1_d2;
                        float32_t v_abs = v1_abs - dMax * dt;
                        DEBUG_PRINT("[SCurve_getVelocity] Phase12: v_abs=%.2f, v1_abs=%.2f\n", v_abs, v1_abs);
                        return v_abs * direction;
                    }
                    // Phase 13: 减减速（加速度从-dMax变到0）
                    else
                    {
                        float32_t dt = t_elapsed - tjd1_d2 - td_d2;
                        
                        if(td_d2 < SCURVE_EPSILON_TIME)
                        {
                            // 三角波轮廓（Phase 13：加速度从 a_peak = -jerk*tjd 变到 0）
                            // a(t) = a_peak + jerk * dt, jerk = dMax / jerkTime（固定值，正）
                            // v(t) = v_mid + a_peak*dt + jerk*dt²/2
                            float32_t jerk = dMax / profile->jerkTime;  // 固定 jerk 值（正）
                            float32_t a_peak = -jerk * tjd1_d2;  // 峰值减速度（负值）
                            float32_t v_mid = v_start_d2 - jerk * SQUARE(tjd1_d2) / 2.0f;  // Phase 11 结束速度
                            float32_t v_abs = v_mid + a_peak * dt + jerk * SQUARE(dt) / 2.0f;
                            if(v_abs < v_target) v_abs = v_target;
                            DEBUG_PRINT("[SCurve_getVelocity] Phase13 (triangular): v_abs=%.2f, v_mid=%.2f, dt=%.4f\n", v_abs, v_mid, dt);
                            return v_abs * direction;
                        }
                        else
                        {
                            // 梯形轮廓
                            float32_t jMax1 = dMax / tjd1_d2;
                            float32_t v1_abs = v_start_d2 - 0.5f * jMax1 * SQUARE(tjd1_d2);
                            float32_t v2_abs = v1_abs - dMax * td_d2;
                            float32_t v_abs = v2_abs - dMax * dt + 0.5f * jMax_d2 * SQUARE(dt);
                            if(v_abs < v_target) v_abs = v_target;
                            DEBUG_PRINT("[SCurve_getVelocity] Phase13 (trapezoidal): v_abs=%.2f\n", v_abs);
                            return v_abs * direction;
                        }
                    }
                }
                // 无减速段，轨迹结束
                DEBUG_PRINT("[SCurve_getVelocity] no decel2, returning peakVelocity=%.2f\n",
                           profile->peakVelocity * direction);
                return profile->peakVelocity * direction;
            }
            else
            {
                v0 = 0.0f;
            }
        }
    }
    // VELOCITY_CHANGE: already handled Phase 1-3 + Phase 7 + Phase 11-13
    if(profile->isVelocityChange)
    {
        return 0.0f;
    }

    // **关键修复**：STOP轨迹（只有Phase 1-3减速到0）直接返回0
    // 判断条件：Phase 1-3 存在（reverseDecelTime > 0），但Phase 4-10 不存在（accelTime=0, constTime=0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME &&
       profile->accelTime < SCURVE_EPSILON_TIME &&
       profile->constTime < SCURVE_EPSILON_TIME)
    {
        return 0.0f;
    }

    // Phase 4-10: 标准7段S曲线
    // **关键修复**：计算实际加速度峰值和减速jMax
    float32_t aMax, dMax;
    float32_t v_start_abs = ABS(v0);

    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;

    // 计算实际加速度峰值
    if(profile->ta > SCURVE_EPSILON_TIME)
    {
        aMax = profile->maxAccel;
    }
    else
    {
        aMax = jMax * t1;  // 三角形加速
    }

    if(profile->td > SCURVE_EPSILON_TIME)
    {
        dMax = profile->maxDecel;
    }
    else
    {
        dMax = jMax * profile->tjd1;  // 三角形减速
    }

    // **关键修复**：必须使用减速的 jMax_decel，不是加速的 jMax
    float32_t jMax_decel = effectiveDecel / profile->jerkTime;

    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isEmergencyStop)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续Phase0结束后的速度方向
        // **关键修复**：使用velAfterPhase0而不是currentVel
        // velAfterPhase0是Phase0结束后的实际速度（带符号）
        phase47_direction = SIGN(profile->velAfterPhase0);
        if(ABS(phase47_direction) < 0.5f) phase47_direction = direction;  // 速度为0时用目标方向
    }

    if(t_elapsed <= t1)
    {
        float32_t v = v_start_abs + 0.5f * jMax * SQUARE(t_elapsed);
        return v * phase47_direction;
    }
    else if(t_elapsed <= t2)
    {
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t v = v1 + aMax * (t_elapsed - t1);
        return v * phase47_direction;
    }
    else if(t_elapsed <= t3)
    {
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t v2 = v1 + aMax * profile->ta;
        float32_t v = v2 + aMax * (t_elapsed - t2) - 0.5f * jMax * SQUARE(t_elapsed - t2);
        return v * phase47_direction;
    }
    else if(t_elapsed <= t4)
    {
        return profile->peakVelocity * phase47_direction;
    }
    else if(t_elapsed <= t5)
    {
        // Phase 8: 使用减速的 jMax_decel
        float32_t v = profile->peakVelocity - 0.5f * jMax_decel * SQUARE(t_elapsed - t4);
        return v * phase47_direction;
    }
    else if(t_elapsed <= t6)
    {
        // Phase 9: 使用减速的 jMax_decel
        float32_t v1 = profile->peakVelocity - 0.5f * jMax_decel * SQUARE(profile->tjd1);
        float32_t v = v1 - dMax * (t_elapsed - t5);
        return v * phase47_direction;
    }
    else
    {
        // Phase 10: 减减速（加速度回到0）
        float32_t v_d1 = profile->peakVelocity - 0.5f * jMax_decel * SQUARE(profile->tjd1);
        
        if(profile->td > SCURVE_EPSILON_TIME)
        {
            // 梯形波轮廓
            float32_t v_d2 = v_d1 - dMax * profile->td;
            float32_t dt = t_elapsed - t6;
            float32_t v = v_d2 - dMax * dt + 0.5f * jMax_decel * SQUARE(dt);
            return v * phase47_direction;
        }
        else
        {
            // 三角波轮廓
            // 初始加速度 = -jMax_decel * tjd1
            float32_t dt = t_elapsed - t6;
            float32_t v = v_d1 - jMax_decel * profile->tjd1 * dt + 0.5f * jMax_decel * SQUARE(dt);
            return v * phase47_direction;
        }
    }
}

//*****************************************************************************
//
// SCurve_getAcceleration - 计算当前加速度
//
//*****************************************************************************
float32_t SCurve_getAcceleration(TrapezoidalProfile_t *profile, float32_t t)
{
    if(!profile->isComputed || !profile->isActive)
    {
        return 0.0f;
    }
    
    if(t <= SCURVE_EPSILON_TIME)
    {
        // **关键修复**：t=0时直接返回startAccel（保持原值，不改变符号）
        // Phase0等阶段的t=0加速度就是startAccel，不应该乘以direction
        return profile->startAccel;
    }
    
    if(t > profile->totalTime)
    {
        return 0.0f;
    }
    
    // **微小运动特殊处理**：返回0加速度（匀速运动）
    if(profile->isMicroMotion)
    {
        return 0.0f;
    }
    
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    float32_t a0 = profile->startAccel;
    float32_t jMax = profile->maxAccel / profile->jerkTime;
    float32_t t_elapsed = t;
    
    // **关键修复**：计算初始运动方向（基于速度，而非位置）
    float32_t v0_direction = SIGN(profile->startVelocity);
    if(ABS(v0_direction) < 0.5f) v0_direction = direction;  // 速度为0时使用目标方向
    
    // **关键修复**：使用有效减速度（仅在急停命令时使用emergencyDecel）
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
                               profile->emergencyDecel : profile->maxDecel;

    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
            // 因为我们要快速停止，应该使用更大的减速度
            float32_t jMax_trans = (profile->isEmergencyStop) ? 
                                   (effectiveDecel / profile->jerkTime) : jMax;
            // Phase0将加速度从a0过渡到0，保持原始方向
            float32_t a = a0 - SIGN(a0) * jMax_trans * t_elapsed;
            // **关键修复**：直接返回a，不要用v0_direction改变方向！
            // 因为a0本身就有方向，Phase0只是减小|a|到0
            return a;
        }
        else
        {
            t_elapsed -= profile->accelTransTime;
        }
    }
    
    // Phase 1-3: 反向减速段
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        float32_t t_stop_total = profile->reverseDecelTime;
        
        if(t_elapsed <= t_stop_total)
        {
            // **关键修复**：Phase1-3也必须使用effectiveDecel，因为时间参数是基于它计算的！
            // calculateStopToZeroProfile传入的dMax就是effectiveDecel
            float32_t dMax = effectiveDecel;  // 使用effectiveDecel，不是maxDecel！
            float32_t a_start = profile->accelAfterPhase0;  // **关键**：Phase0后的加速度
            float32_t a = 0.0f;
            
            // **关键修复**：梯形曲线（jerkTime=0）使用恒定减速度，S型曲线使用变化减速度
            if(profile->jerkTime < SCURVE_EPSILON_TIME)
            {
                // 梯形曲线：恒定减速度
                // a = -decel * v0_direction（保持方向）
                a = -dMax * v0_direction;
            }
            else
            {
                // S型曲线：使用stopTjd1/stopTd/stopTjd2
                float32_t stop_tjd1 = profile->stopTjd1;
                float32_t stop_td = profile->stopTd;
                float32_t stop_tjd2 = profile->stopTjd2;
                float32_t jMax_decel = effectiveDecel / profile->jerkTime;

                // **关键修复**：Phase1-3是"停止"段，加速度方向应与速度相反
                // 对于负速度v0_direction=-1：需要正加速度来减速
                // 对于正速度v0_direction=+1：需要负加速度来减速
                // 公式中使用 -v0_direction 来确保加速度与速度方向相反

                if(t_elapsed <= stop_tjd1)
                {
                    // Phase 1: 减加速（建立减速加速度）
                    // 加速度从a_start变化到峰值减速度
                    // **关键修复**：使用与SCurve_getVelocity一致的加速度模型
                    // v = v_start_abs + a_effect*t - 0.5*jMax*t²，其中 a_effect = a_start * v0_direction
                    // 对|v|求导：d|v|/dt = a_effect - jMax*t
                    // 实际加速度 a = d|v|/dt * v0_direction = (a_effect - jMax*t) * v0_direction
                    //                        = a_start - jMax * v0_direction * t
                    a = a_start - v0_direction * jMax_decel * t_elapsed;
                }
                else if(t_elapsed <= stop_tjd1 + stop_td)
                {
                    // Phase 2: 匀减速（保持峰值减速度）
                    float32_t a1 = a_start - v0_direction * jMax_decel * stop_tjd1;
                    a = a1;
                }
                else
                {
                    // Phase 3: 减减速（加速度从峰值回到0）
                    float32_t a1 = a_start - v0_direction * jMax_decel * stop_tjd1;
                    float32_t dt = t_elapsed - stop_tjd1 - stop_td;
                    a = a1 + v0_direction * jMax_decel * dt;

                    // **关键修复**：在Phase3结束处强制加速度为0以确保与Phase4连续
                    if(t_elapsed >= t_stop_total - SCURVE_EPSILON_TIME)
                    {
                        a = 0.0f;
                    }
                }
            }
            
            // **关键修复**：直接返回a（已包含方向信息）
            return a;
        }
        else
        {
            t_elapsed -= t_stop_total;

            // **VELOCITY_CHANGE**：Phase1-3结束后减速到v_peak，非停止到0
            if(profile->isVelocityChange)
            {
                // Phase1-3结束，加速度=0
                // Phase7: 匀速 -> 加速度=0
                if(profile->constTime > SCURVE_EPSILON_TIME)
                {
                    if(t_elapsed <= profile->constTime)
                    {
                        return 0.0f;
                    }
                    t_elapsed -= profile->constTime;
                }
                // Phase11-13: 低速减速
                if(profile->vcDecel2Time > SCURVE_EPSILON_TIME)
                {
                    float32_t dMax = effectiveDecel;
                    float32_t td_d2 = profile->vcDecel2Td;
                    float32_t tjd1_d2 = profile->vcDecel2Tjd1;
                    float32_t jerk = dMax / profile->jerkTime;  // jerk 固定值

                    if(td_d2 > SCURVE_EPSILON_TIME)
                    {
                        // 梯形波轮廓（有匀减速段）
                        if(t_elapsed < tjd1_d2)
                        {
                            // Phase 11: 加速度从 0 线性变化到 -dMax
                            float32_t accel_abs = -jerk * t_elapsed;
                            return accel_abs * direction;
                        }
                        else if(t_elapsed < tjd1_d2 + td_d2)
                        {
                            // Phase 12: 匀减速（保持峰值加速度 -dMax）
                            return -dMax * direction;
                        }
                        else
                        {
                            // Phase 13: 加速度从 -dMax 线性变化到 0
                            float32_t dt = t_elapsed - tjd1_d2 - td_d2;
                            float32_t accel_abs = -dMax + jerk * dt;
                            return accel_abs * direction;
                        }
                    }
                    else
                    {
                        // 三角波轮廓（无匀减速段）
                        // Phase 11: 加速度从 0 变化到 a_peak = -jerk * tjd1_d2
                        // Phase 13: 加速度从 a_peak 变化到 0
                        if(t_elapsed < tjd1_d2)
                        {
                            // Phase 11: a = -jerk * t
                            float32_t accel_abs = -jerk * t_elapsed;
                            return accel_abs * direction;
                        }
                        else
                        {
                            // Phase 13: a = a_peak + jerk * dt = -jerk * tjd1_d2 + jerk * dt
                            float32_t dt = t_elapsed - tjd1_d2;
                            float32_t accel_abs = -jerk * tjd1_d2 + jerk * dt;
                            return accel_abs * direction;
                        }
                    }
                }
                return 0.0f;
            }
        }
    }

    // **VELOCITY_CHANGE**：无加速段(Phase4-10)，加速度已在Phase11-13后归零
    if(profile->isVelocityChange)
    {
        return 0.0f;
    }

    // **关键修复**：STOP轨迹（只有Phase 1-3减速到0）直接返回0
    // 判断条件：Phase 1-3 存在（reverseDecelTime > 0），但Phase 4-10 不存在（accelTime=0, constTime=0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME &&
       profile->accelTime < SCURVE_EPSILON_TIME &&
       profile->constTime < SCURVE_EPSILON_TIME)
    {
        return 0.0f;
    }

    // Phase 4-10: 标准7段S曲线
    // **关键修复**：计算实际加速度峰值和减速jMax
    float32_t aMax, dMax;

    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;
    // **关键修复**：必须使用减速的 jMax_decel，不是加速的 jMax
    float32_t jMax_decel = effectiveDecel / profile->jerkTime;
    // 计算实际加速度峰值
    if(profile->ta > SCURVE_EPSILON_TIME)
    {
        aMax = profile->maxAccel;
    }
    else
    {
        aMax = jMax * t1;  // 三角形加速
    }

    if(profile->td > SCURVE_EPSILON_TIME)
    {
        dMax = profile->maxDecel;
    }
    else
    {
        dMax = jMax_decel * profile->tjd1;  // 三角形减速
    }
    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isEmergencyStop)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续Phase0结束后的速度方向
        // **关键修复**：使用velAfterPhase0而不是currentVel
        // velAfterPhase0是Phase0结束后的实际速度（带符号）
        phase47_direction = SIGN(profile->velAfterPhase0);
        if(ABS(phase47_direction) < 0.5f) phase47_direction = direction;  // 速度为0时用目标方向
    }

    if(t_elapsed <= t1)
    {
        float32_t accel = jMax * t_elapsed * phase47_direction;
        return accel;
    }
    else if(t_elapsed <= t2)
    {
        return aMax * phase47_direction;
    }
    else if(t_elapsed <= t3)
    {
        return (aMax - jMax * (t_elapsed - t2)) * phase47_direction;
    }
    else if(t_elapsed <= t4)
    {
        return 0.0f;
    }
    else if(t_elapsed <= t5)
    {
        // Phase 8: 使用减速的 jMax_decel
        return -jMax_decel * (t_elapsed - t4) * phase47_direction;
    }
    else if(t_elapsed <= t6)
    {
        // Phase 9: 使用 dMax
        return -dMax * phase47_direction;
    }
    else
    {
        return (-dMax + jMax_decel * (t_elapsed - t6)) * phase47_direction;
    }
}

//*****************************************************************************
//
// SCurve_getJerk - 获取当前加加速度
//
// 参数：
//   profile - Profile结构体指针
//
// 返回：当前加加速度 [unit/s³]
//
// 说明：
//   根据profile当前阶段（elapsedTime）返回对应的jerk值
//   用于缓冲区存储和1dt补偿计算
//
//*****************************************************************************
float32_t SCurve_getJerk(TrapezoidalProfile_t *profile)
{
    if(!profile->isComputed || !profile->isActive)
    {
        return 0.0f;
    }
    
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    float32_t jMax = profile->maxAccel / profile->jerkTime;
    float32_t t_elapsed = profile->elapsedTime;
    
    // **关键修复**：计算初始运动方向（基于速度，而非位置）
    float32_t v0_direction = SIGN(profile->startVelocity);
    if(ABS(v0_direction) < 0.5f) v0_direction = direction;  // 速度为0时使用目标方向
    
    // **关键修复**：使用有效减速度（仅在急停命令时使用emergencyDecel）
    float32_t effectiveDecel = (profile->isEmergencyStop) ?
                               profile->emergencyDecel : profile->maxDecel;
    float32_t jMax_decel = effectiveDecel / profile->jerkTime;
    
    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        float32_t jMax_trans = (profile->isEmergencyStop) ? jMax_decel : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：Phase0 的 jerk 公式
            // a(t) = a0 + jerk*t，当 t=t_trans 时 a=0
            // jerk = -a0 / t_trans = -SIGN(a0) * jMax_trans
            // 当 a0 = -2000 时，jerk = -(-1) * 20000 = +20000（正 jerk，增加加速度）
            return -SIGN(profile->startAccel) * jMax_trans;
        }
        else
        {
            t_elapsed -= profile->accelTransTime;
        }
    }
    
    // Phase 1-3: 反向减速段（停止到0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        // **关键修复**：使用stopTjd1/stopTd/stopTjd2（停止阶段的实际参数）
        float32_t stop_tjd1 = profile->stopTjd1;
        float32_t stop_td = profile->stopTd;
        float32_t stop_tjd2 = profile->stopTjd2;
        float32_t t_stop_total = stop_tjd1 + stop_td + stop_tjd2;
        
        if(t_elapsed <= t_stop_total)
        {
            // **关键修复**：Phase1-3的jerk = -SIGN(v0) * jMax_decel
            if(t_elapsed <= stop_tjd1)
            {
                // Phase 1: 加减速段，jerk方向使加速度朝着减小|v0|的方向变化
                return -v0_direction * jMax_decel;
            }
            else if(t_elapsed <= stop_tjd1 + stop_td)
            {
                // Phase 2: 匀减速段，jerk = 0
                return 0.0f;
            }
            else
            {
                // Phase 3: 减减速段，jerk方向相反
                return v0_direction * jMax_decel;
            }
        }
        else
        {
            t_elapsed -= t_stop_total;
        }
    }

    // Phase 7 (cruise) in VC mode: jerk = 0
    if (profile->isVelocityChange && profile->constTime > SCURVE_EPSILON_TIME)
    {
        if (t_elapsed <= profile->constTime)
        {
            return 0.0f;
        }
        t_elapsed -= profile->constTime;
    }

    // VC Phase 11-13: high-to-low deceleration
    if (profile->isVelocityChange && profile->vcDecel2Time > SCURVE_EPSILON_TIME)
    {
        float32_t dMax = effectiveDecel;
        float32_t jMax_vc = dMax / profile->jerkTime;
        float32_t td_vc = profile->vcDecel2Td;
        float32_t tjd1_vc = profile->vcDecel2Tjd1;
        float32_t tjd2_vc = profile->vcDecel2Tjd2;

        if (t_elapsed <= tjd1_vc)
        {
            // Phase 11: jerk-down (toward -dMax)
            return -v0_direction * jMax_vc;
        }
        else if (t_elapsed <= tjd1_vc + td_vc)
        {
            // Phase 12: constant -dMax
            return 0.0f;
        }
        else
        {
            // Phase 13: jerk-up (toward 0)
            return v0_direction * jMax_vc;
        }
    }

    // **关键修复**：STOP轨迹（只有Phase 1-3减速到0）直接返回0
    // 判断条件：Phase 1-3 存在（reverseDecelTime > 0），但Phase 4-10 不存在（accelTime=0, constTime=0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME &&
       profile->accelTime < SCURVE_EPSILON_TIME &&
       profile->constTime < SCURVE_EPSILON_TIME)
    {
        return 0.0f;
    }

    // 计算7段时间点
    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;
    
    // **关键修复**：REVERSE模式下，Phase4-7的方向是从停止点到目标的方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isEmergencyStop)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    
    // Phase 4: 加速段
    if(t_elapsed <= t1)
    {
        // 加加速段
        return jMax * phase47_direction;
    }
    else if(t_elapsed <= t2)
    {
        // 匀加速段
        return 0.0f;
    }
    else if(t_elapsed <= t3)
    {
        // 减加速段
        return -jMax * phase47_direction;
    }
    // Phase 5: 匀速段
    else if(t_elapsed <= t4)
    {
        return 0.0f;
    }
    // Phase 6-7: 减速段
    else if(t_elapsed <= t5)
    {
        // 加减速段
        return -jMax_decel * phase47_direction;
    }
    else if(t_elapsed <= t6)
    {
        // 匀减速段
        return 0.0f;
    }
    else
    {
        // 减减速段
        return jMax_decel * phase47_direction;
    }
}

#endif // USE_SCURVE_PROFILE
