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
#if USE_SCURVE_PROFILE
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
        
        float32_t s1 = v_max * tjd1 - (jMax * CUBE(tjd1)) / 6.0f;
        float32_t v1 = v_max - 0.5f * jMax * SQUARE(tjd1);
        float32_t s2 = v1 * td - 0.5f * dMax * SQUARE(td);
        float32_t v2 = v1 - dMax * td;
        float32_t s3 = v2 * tjd2 - 0.5f * dMax * SQUARE(tjd2) + (jMax * CUBE(tjd2)) / 6.0f;
        s_decel = s1 + s2 + s3;
    }
    else
    {
        // 不能达到最大减速度 - 对称S曲线
        decelReachMax = false;
        tjd1 = sqrtf(v_max / jMax);
        td = 0.0f;
        tjd2 = tjd1;
        
        s_decel = v_max * 2.0f * tjd1 - jMax * CUBE(tjd1);
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
        
        for(int iter = 0; iter < 20; iter++)
        {
            float32_t dv_a = v_peak - absVStart;
            float32_t s_a, s_d;
            
            // 计算加速段距离
            if(dv_a > aMax * jerkTime)
            {
                float32_t tj = jerkTime;
                float32_t ta_temp = dv_a / aMax - jerkTime;
                s_a = absVStart * (2.0f * tj + ta_temp) + 
                     0.5f * aMax * (SQUARE(ta_temp) + 2.0f * jerkTime * ta_temp) + 
                     jMax * CUBE(tj) / 3.0f;
    }
    else
    {
                float32_t tj = sqrtf(dv_a / jMax);
                s_a = absVStart * 2.0f * tj + jMax * CUBE(tj);
            }
            
            // 计算减速段距离
            if(v_peak > dMax * jerkTime)
            {
                float32_t tjd = jerkTime;
                float32_t td_temp = v_peak / dMax - jerkTime;
                s_d = v_peak * (2.0f * tjd + td_temp) - 
                     0.5f * dMax * (SQUARE(td_temp) + 2.0f * jerkTime * td_temp) - 
                     jMax * CUBE(tjd) / 3.0f;
    }
    else
    {
                float32_t tjd = sqrtf(v_peak / jMax);
                s_d = v_peak * 2.0f * tjd - jMax * CUBE(tjd);
            }
            
            float32_t error = s_a + s_d - distance;
            
            if(ABS(error) < 0.1f)
            {
                break;  // 收敛
            }
            
            // 牛顿迭代：v_peak = v_peak - f(v) / f'(v)
            // 对于三角形轮廓，导数 = 3 * sqrt(v_peak / jMax)
            float32_t derivative;
            if(v_peak > 0.1f)
            {
                derivative = 3.0f * sqrtf(v_peak / jMax);
        }
        else
        {
                derivative = 0.1f;  // 避免除零
        }
            v_peak = v_peak - error / derivative;
            
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
            }
            else
            {
            decelReachMax = false;
            tjd1 = sqrtf(v_max / jMax);
                td = 0.0f;
            tjd2 = tjd1;
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
    if(profile->isStopCommand)
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
    
    // 4. 过冲？
    if(s_stop > distance * 1.15f)  // 停止距离 > 目标距离的115%
    {
        DEBUG_PRINT("[MotionType] OVERSHOOT (stopDist=%.2f > dist=%.2f * 1.15)\n", 
                   s_stop, distance);
        return MOTION_TYPE_OVERSHOOT;
    }
    
    // 5. 正常运动
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
    DEBUG_PRINT("\n");
    DEBUG_PRINT("========== S-Curve Profile Computation START (Redesigned) ==========\n");
    DEBUG_PRINT("[Input] currentPos=%.2f, startVel=%.2f, startAccel=%.2f, targetPos=%.2f\n",
               profile->currentPos, profile->startVelocity, profile->startAccel, 
               profile->targetPos);
    
    // **关键修复**：确定有效减速度（急停时使用emergencyDecel）
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->maxDecel;
    DEBUG_PRINT("[Decel] maxDecel=%.2f, emergencyDecel=%.2f, effectiveDecel=%.2f\n",
               profile->maxDecel, profile->emergencyDecel, effectiveDecel);
    
    // 初始化
    float32_t distance = profile->targetPos - profile->currentPos;
    float32_t direction = SIGN(distance);
    if(ABS(direction) < 0.5f) direction = 1.0f;  // 避免direction=0
    float32_t dist_abs = ABS(distance);
    // **关键修复**：直接使用startVelocity（已包含符号）
    float32_t v0 = profile->startVelocity;
        float32_t a0 = profile->startAccel;
    
    // **关键修复**：设置actualJerk（用于TrapProfile_getJerk）
    float32_t jMax = profile->maxAccel / profile->jerkTime;
    profile->actualJerk = jMax;
    
    profile->startPos = profile->currentPos;
    profile->elapsedTime = 0.0f;
    profile->accelTransTime = 0.0f;
    profile->reverseDecelTime = 0.0f;
    
    // Step 1: 判断运动类型
    MotionType motionType = determineMotionType(profile, direction, dist_abs, effectiveDecel);
    
    // Step 2: 根据运动类型计算轨迹
    switch(motionType)
    {
        case MOTION_TYPE_STOP:
        {
            //==============================================================
            // 停止命令：只需要减速到0
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_STOP] Processing...\n");
            
            // **关键修复**：传入带符号的v0，以便正确计算Phase0的速度变化
            float32_t t_trans, t_j1, t_c, t_j2, s_stop, v_after, a_after;
            calculateStopToZeroProfile(v0, a0, effectiveDecel, 
                                      profile->jerkTime, &t_trans, &t_j1, &t_c, 
                                      &t_j2, &s_stop, &v_after, &a_after);
            
            // 设置参数
            profile->accelTransTime = t_trans;
            profile->reverseDecelTime = t_j1 + t_c + t_j2;  // **关键修复**：必须设置这个！
            profile->accelAfterPhase0 = a_after;  // **关键**：保存Phase0后的加速度
            profile->tj1 = 0.0f;
            profile->ta = 0.0f;
            profile->tj2 = 0.0f;
            profile->tv = 0.0f;
            profile->tjd1 = t_j1;
            profile->td = t_c;
            profile->tjd2 = t_j2;
            
            // **关键修复**：STOP模式下也必须设置stopTjd1/stopTd/stopTjd2！
            // 因为SCurve_getAcceleration/Velocity在Phase1-3中使用这些参数
            profile->stopTjd1 = t_j1;
            profile->stopTd = t_c;
            profile->stopTjd2 = t_j2;
            
            profile->accelTime = 0.0f;
            profile->constTime = 0.0f;
            profile->decelTime = t_j1 + t_c + t_j2;
            profile->totalTime = t_trans + profile->decelTime;
            
            profile->peakVelocity = v_after;
            
            // 位置点
            float32_t jMax_stop = profile->maxAccel / profile->jerkTime;
            float32_t s_trans = 0.0f;
            if(t_trans > SCURVE_EPSILON_TIME)
            {
                // **关键修复**：s_trans已包含符号（使用带符号的v0计算）
                s_trans = v0 * t_trans + 0.5f * a0 * SQUARE(t_trans) - 
                         (SIGN(a0) * jMax_stop * CUBE(t_trans)) / 6.0f;
            }
            profile->accelTransEndPos = profile->currentPos + s_trans;
            profile->reverseDecelEndPos = profile->accelTransEndPos;
            profile->accelEndPos = profile->reverseDecelEndPos;
            profile->decelStartPos = profile->reverseDecelEndPos;
            // **关键修复**：s_stop是从currentPos开始的总位移（带符号），直接相加
            profile->targetPos = profile->currentPos + s_stop;
            
            DEBUG_PRINT("[STOP] Result: totalTime=%.3f, stopAt=%.2f\n", 
                       profile->totalTime, profile->targetPos);
            
            break;
        }
        
        case MOTION_TYPE_REVERSE:
        case MOTION_TYPE_OVERSHOOT:
        {
            //==============================================================
            // 反向/过冲：先减速到0，然后从0加速到目标
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_%s] Processing...\n", 
                       motionType == MOTION_TYPE_REVERSE ? "REVERSE" : "OVERSHOOT");
            
            // Phase 1: 减速到0
            // **关键修复**：传入带符号的v0，以便正确判断加速状态（a0*v0同号=加速）
            float32_t t_trans, t_j1, t_c, t_j2, s_stop, v_after, a_after;
            calculateStopToZeroProfile(v0, a0, effectiveDecel, 
                                      profile->jerkTime, &t_trans, &t_j1, &t_c, 
                                      &t_j2, &s_stop, &v_after, &a_after);
            
            profile->accelTransTime = t_trans;
            profile->reverseDecelTime = t_j1 + t_c + t_j2;
            profile->accelAfterPhase0 = a_after;
            
            // **关键修复**：保存停止阶段的实际时间参数（用于Phase1-3加速度计算）
            profile->stopTjd1 = t_j1;
            profile->stopTd = t_c;
            profile->stopTjd2 = t_j2;
            
            // **关键修复**：Phase0位移公式已包含符号，直接使用
            float32_t s_phase0 = v0 * t_trans + 0.5f * a0 * SQUARE(t_trans) - 
                                (SIGN(a0) * profile->actualJerk * CUBE(t_trans)) / 6.0f;
            float32_t pos_after_trans = profile->currentPos + s_phase0;
            
            // **关键修复**：s_stop现在是带符号的（包含Phase0后的剩余位移）
            // 例如：v1=-300减到0，s_stop是负值
            float32_t pos_stop = profile->currentPos + s_stop;
            
            profile->accelTransEndPos = pos_after_trans;
            profile->reverseDecelEndPos = pos_stop;
            
            DEBUG_PRINT("[%s Phase1] Stop at pos=%.2f (from %.2f)\n",
                       motionType == MOTION_TYPE_REVERSE ? "REVERSE" : "OVERSHOOT",
                       pos_stop, profile->currentPos);
            
            // Phase 2: 从0加速到目标
            float32_t remaining_dist = ABS(profile->targetPos - pos_stop);
            
            DEBUG_PRINT("[%s Phase2] Forward from pos=%.2f to %.2f (dist=%.2f)\n",
                       motionType == MOTION_TYPE_REVERSE ? "REVERSE" : "OVERSHOOT",
                       pos_stop, profile->targetPos, remaining_dist);
            
            // 使用标准7段S曲线从0到目标
            calculate7SegmentSCurve(0.0f, profile->maxVelocity, remaining_dist, 
                                   profile->maxAccel, 
                                   profile->maxDecel, 
                                   profile->jerkTime, profile);
            
            // 更新总时间
            profile->totalTime = profile->accelTransTime + profile->reverseDecelTime + 
                               profile->accelTime + profile->constTime + profile->decelTime;
            
            // 设置位置点 - 对于反向/过冲，从pos_stop（速度=0）开始加速到目标
            // 计算从0加速到peakVelocity的距离
            float32_t tj1 = profile->tj1;
            float32_t ta = profile->ta;
            float32_t tj2 = profile->tj2;
            float32_t jMax_accel = profile->maxAccel / profile->jerkTime;
            
            // **关键修复**：计算实际加速度峰值
            float32_t aMax_actual;
            if(ta > SCURVE_EPSILON_TIME)
            {
                aMax_actual = profile->maxAccel;
            }
            else
            {
                aMax_actual = jMax_accel * tj1;  // 三角形加速
            }
            
            float32_t s1 = 0.0f * tj1 + (jMax_accel * CUBE(tj1)) / 6.0f;
            float32_t v1 = 0.0f + 0.5f * jMax_accel * SQUARE(tj1);
            float32_t s2 = v1 * ta + 0.5f * aMax_actual * SQUARE(ta);
            float32_t v2 = v1 + aMax_actual * ta;
            float32_t s3 = v2 * tj2 + 0.5f * aMax_actual * SQUARE(tj2) - (jMax_accel * CUBE(tj2)) / 6.0f;
            float32_t s_accel_actual = s1 + s2 + s3;
            
            // **关键修复**：REVERSE模式下，Phase4-7的方向是从停止点到目标的方向
            float32_t phase47_dir = SIGN(profile->targetPos - pos_stop);
            profile->accelEndPos = pos_stop + phase47_dir * s_accel_actual;
            
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
        
        case MOTION_TYPE_NORMAL:
        default:
        {
            //==============================================================
            // 正常运动：标准7段S曲线（可能带加速度过渡）
            //==============================================================
            DEBUG_PRINT("\n[MOTION_TYPE_NORMAL] Processing...\n");
            
            // **关键修复**：保持v0的符号，因为Phase0后的速度方向可能与目标方向一致或相反
            // 例如：v0=-475（负向），Phase0后变为-500（仍负向），然后需要判断是否与目标方向一致
            float32_t v_after_phase0 = v0;  // 先假设没有Phase0
            float32_t v_start_for_forward = ABS(v0);
            float32_t remaining_dist = dist_abs;
            
            // **智能判断是否需要加速度过渡**
            // 
            // NORMAL模式下，速度方向已与目标方向一致
            // 新轨迹的第一阶段可能是加速或减速，取决于当前速度和目标
            // 
            // 判断逻辑：
            // 1. 如果当前正在加速（a*v>0），且新轨迹需要继续加速 → 检查是否兼容
            // 2. 如果当前正在减速（a*v<0），且新轨迹需要继续减速 → 检查是否兼容
            // 3. 如果方向不兼容 → 需要Phase0
            //
            // 简化判断：新轨迹需要先加速到peakVelocity，所以需要正向加速度（与速度同向）
            // - 如果当前加速度已是加速方向（a*v>0）→ 可能跳过Phase0
            // - 如果当前加速度是减速方向（a*v<0）→ 需要Phase0
            //
            bool needPhase0 = false;
            float32_t jMax_normal = profile->maxAccel / profile->jerkTime;
            
            if(ABS(a0) <= SCURVE_EPSILON_ACCEL)
            {
                // 加速度接近0，不需要Phase0
                needPhase0 = false;
                DEBUG_PRINT("[NORMAL Phase0] a0=%.2f (~0) -> Skip Phase0\n", a0);
            }
            else if(v_start_for_forward >= profile->maxVelocity * 0.95f)
            {
                // 当前速度已接近最大速度，新轨迹需要减速或维持
                // 如果当前加速度是减速方向（a*v<0），可以跳过Phase0
                if(a0 * v0 < 0 && ABS(a0) <= profile->maxDecel * 1.1f)
                {
                    needPhase0 = false;
                    DEBUG_PRINT("[NORMAL Phase0] v~vMax, a0=%.2f is decelerating -> Skip Phase0\n", a0);
                }
                else
                {
                    needPhase0 = true;
                }
            }
            else
            {
                // 当前速度未达最大，新轨迹需要加速
                // 如果当前加速度是加速方向（a*v>0），可以跳过Phase0
                if(a0 * v0 > 0 && ABS(a0) <= profile->maxAccel * 1.1f)
                {
                    needPhase0 = false;
                    DEBUG_PRINT("[NORMAL Phase0] v<vMax, a0=%.2f is accelerating -> Skip Phase0\n", a0);
                }
                else
                {
                    needPhase0 = true;
                }
            }
            
            if(needPhase0 && ABS(a0) > SCURVE_EPSILON_ACCEL)
            {
                profile->accelTransTime = ABS(a0) / jMax_normal;
                
                // 限制过渡时间
                float32_t maxTransTime = MIN(0.2f, 2.0f * profile->jerkTime);
                if(profile->accelTransTime > maxTransTime)
                {
                    profile->accelTransTime = maxTransTime;
                }
                
                float32_t vel_change = a0 * profile->accelTransTime - 
                                      0.5f * SIGN(a0) * jMax_normal * SQUARE(profile->accelTransTime);
                v_after_phase0 = v0 + vel_change;  // 保持符号
                v_start_for_forward = ABS(v_after_phase0);  // 取绝对值用于7段计算
                
                // **关键修复**：s_trans已包含符号（使用带符号的v0计算），直接相加
                float32_t s_trans = v0 * profile->accelTransTime + 
                                   0.5f * a0 * SQUARE(profile->accelTransTime) - 
                                   (SIGN(a0) * jMax_normal * CUBE(profile->accelTransTime)) / 6.0f;
                
                profile->accelTransEndPos = profile->currentPos + s_trans;
                remaining_dist = dist_abs - ABS(s_trans);
                
                if(remaining_dist < 0.0f) remaining_dist = 0.0f;
                
                DEBUG_PRINT("[NORMAL Phase0] Accel transition: a0=%.2f, t=%.3f, v: %.2f->%.2f, s=%.2f\n",
                           a0, profile->accelTransTime, v0, v_after_phase0, s_trans);
            }
            else
            {
                profile->accelTransTime = 0.0f;
                profile->accelTransEndPos = profile->currentPos;
            }
            
            // 计算标准7段S曲线
            calculate7SegmentSCurve(v_start_for_forward, profile->maxVelocity, 
                                   remaining_dist, profile->maxAccel, 
                                   profile->maxDecel, 
                                   profile->jerkTime, profile);
            
            // 更新总时间
            profile->totalTime = profile->accelTransTime + profile->accelTime + 
                               profile->constTime + profile->decelTime;
            
            // 设置位置点 - 需要正确计算加速段和减速段的实际距离
            profile->reverseDecelEndPos = profile->accelTransEndPos;
            
            // 计算加速段实际距离（从v_start_for_forward到peakVelocity）
            float32_t tj1 = profile->tj1;
            float32_t ta = profile->ta;
            float32_t tj2 = profile->tj2;
            float32_t jMax_accel = profile->maxAccel / profile->jerkTime;
            
            // **关键修复**：计算实际加速度峰值
            float32_t aMax_actual;
            if(ta > SCURVE_EPSILON_TIME)
            {
                aMax_actual = profile->maxAccel;
    }
    else
    {
                aMax_actual = jMax_accel * tj1;  // 三角形加速
            }
            
            float32_t s1 = v_start_for_forward * tj1 + (jMax_accel * CUBE(tj1)) / 6.0f;
            float32_t v1 = v_start_for_forward + 0.5f * jMax_accel * SQUARE(tj1);
            float32_t s2 = v1 * ta + 0.5f * aMax_actual * SQUARE(ta);
            float32_t v2 = v1 + aMax_actual * ta;
            float32_t s3 = v2 * tj2 + 0.5f * aMax_actual * SQUARE(tj2) - (jMax_accel * CUBE(tj2)) / 6.0f;
            float32_t s_accel_actual = s1 + s2 + s3;
            
            profile->accelEndPos = profile->accelTransEndPos + direction * s_accel_actual;
            
            // 计算减速段实际距离（从peakVelocity到0）
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
            
            profile->decelStartPos = profile->targetPos - direction * s_decel_actual;
            
            DEBUG_PRINT("[NORMAL] accelEndPos=%.2f, decelStartPos=%.2f, diff=%.2f\n",
                       profile->accelEndPos, profile->decelStartPos, 
                       profile->accelEndPos - profile->decelStartPos);
            DEBUG_PRINT("[NORMAL] s_accel_actual=%.2f, s_decel_actual=%.2f, diff=%.2f\n",
                       s_accel_actual, s_decel_actual, s_accel_actual - s_decel_actual);
            DEBUG_PRINT("[NORMAL] Total time=%.3f (trans=%.3f + motion=%.3f)\n",
                       profile->totalTime, profile->accelTransTime,
                       profile->accelTime + profile->constTime + profile->decelTime);
            
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
    
    // **关键修复**：不要在这里清除isStopCommand标志！
    // 这个标志需要在整个轨迹执行过程中保持，用于SCurve_getAcceleration/Velocity/Position
    // 标志会在updateProfile的轨迹完成处清除
    // profile->isStopCommand = false;  // ← 移除
    
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
    
    if(t >= profile->totalTime)
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
    
    // **关键修复**：使用有效减速度（急停时使用emergencyDecel）
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->maxDecel;
    
    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
        float32_t jMax_trans = (profile->isStopCommand) ? 
                               (effectiveDecel / profile->jerkTime) : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：Phase0位置公式使用实际的v0和a0（都带方向）
            // 公式：s(t) = v0*t + 0.5*a0*t^2 - (SIGN(a0)*jMax*t^3)/6
            float32_t s = v0 * t_elapsed + 0.5f * a0 * SQUARE(t_elapsed) - 
                         (SIGN(a0) * jMax_trans * CUBE(t_elapsed)) / 6.0f;
            return profile->currentPos + s;
    }
    else
    {
            // **关键修复**：已过加速度过渡段，计算Phase0的总位移（使用带符号的v0）
            // 公式：s = v0*t + 0.5*a0*t^2 - (SIGN(a0)*jMax*t^3)/6
            float32_t s_trans = v0 * profile->accelTransTime + 
                               0.5f * a0 * SQUARE(profile->accelTransTime) - 
                               (SIGN(a0) * jMax_trans * CUBE(profile->accelTransTime)) / 6.0f;
            pos = profile->currentPos + s_trans;
            t_elapsed -= profile->accelTransTime;
            
            float32_t vel_change = a0 * profile->accelTransTime - 
                                  0.5f * SIGN(a0) * jMax_trans * SQUARE(profile->accelTransTime);
            v0 = v0 + vel_change;
        }
    }
    
    // Phase 1-3: 反向减速段（停止到0）
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        float32_t t_stop_total = profile->reverseDecelTime;
        
        if(t_elapsed <= t_stop_total)
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
                float32_t jMax_decel = dMax / profile->jerkTime;
                
                if(t_elapsed <= stop_tjd1)
                {
                    // Phase 1: 减加速
                    s = v0 * t_elapsed + 0.5f * a_start * SQUARE(t_elapsed) - 
                        v0_direction * (jMax_decel * CUBE(t_elapsed)) / 6.0f;
                }
                else if(t_elapsed <= stop_tjd1 + stop_td)
                {
                    // Phase 2: 匀减速
                    float32_t t1 = stop_tjd1;
                    float32_t t2 = t_elapsed - t1;
                    
                    float32_t s1 = v0 * t1 + 0.5f * a_start * SQUARE(t1) - 
                                   v0_direction * (jMax_decel * CUBE(t1)) / 6.0f;
                    float32_t v1 = v0 + a_start * t1 - v0_direction * 0.5f * jMax_decel * SQUARE(t1);
                    float32_t a1 = a_start - v0_direction * jMax_decel * t1;
                    
                    float32_t s2 = v1 * t2 + 0.5f * a1 * SQUARE(t2);
                    s = s1 + s2;
        }
        else
        {
                    // Phase 3: 减减速
                    float32_t t1 = stop_tjd1;
                    float32_t t2 = stop_td;
                    float32_t t3 = t_elapsed - t1 - t2;
                    
                    float32_t s1 = v0 * t1 + 0.5f * a_start * SQUARE(t1) - 
                                   v0_direction * (jMax_decel * CUBE(t1)) / 6.0f;
                    float32_t v1 = v0 + a_start * t1 - v0_direction * 0.5f * jMax_decel * SQUARE(t1);
                    float32_t a1 = a_start - v0_direction * jMax_decel * t1;
                    
                    float32_t s2 = v1 * t2 + 0.5f * a1 * SQUARE(t2);
                    float32_t v2 = v1 + a1 * t2;
                    
                    float32_t s3 = v2 * t3 + 0.5f * a1 * SQUARE(t3) + 
                                   v0_direction * (jMax_decel * CUBE(t3)) / 6.0f;
                    s = s1 + s2 + s3;
                }
            }
            
            // **关键修复**：s已包含方向（使用了带符号的v0），直接返回
            return pos + s;
    }
    else
    {
            // 已过反向减速段，现在速度=0，位置在reverseDecelEndPos
            pos = profile->reverseDecelEndPos;
            t_elapsed -= t_stop_total;
            v0 = 0.0f;  // 速度归零
        }
    }
    
    // Phase 4-10: 标准7段S曲线（从v0到目标）
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
    
    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isStopCommand)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续当前速度的方向
        // currentVel是Phase0之前的速度（带符号）
        phase47_direction = SIGN(profile->currentVel);
        if(ABS(phase47_direction) < 0.5f) phase47_direction = direction;  // 速度为0时用目标方向
    }
    
    if(t_elapsed <= t1)
    {
        // Phase 4: 加加速
        float32_t s = v_start_abs * t_elapsed + (jMax * CUBE(t_elapsed)) / 6.0f;
        return pos + phase47_direction * s;
    }
    else if(t_elapsed <= t2)
    {
        // Phase 5: 匀加速
        float32_t dt = t_elapsed - t1;
        float32_t s1 = v_start_abs * t1 + (jMax * CUBE(t1)) / 6.0f;
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t s2 = v1 * dt + 0.5f * aMax * SQUARE(dt);
        return pos + phase47_direction * (s1 + s2);
    }
    else if(t_elapsed <= t3)
    {
        // Phase 6: 减加速
        float32_t dt = t_elapsed - t2;
        float32_t s1 = v_start_abs * t1 + (jMax * CUBE(t1)) / 6.0f;
        float32_t v1 = v_start_abs + 0.5f * jMax * SQUARE(t1);
        float32_t s2 = v1 * profile->ta + 0.5f * aMax * SQUARE(profile->ta);
        float32_t v2 = v1 + aMax * profile->ta;
        float32_t s3 = v2 * dt + 0.5f * aMax * SQUARE(dt) - (jMax * CUBE(dt)) / 6.0f;
        return pos + phase47_direction * (s1 + s2 + s3);
    }
    else if(t_elapsed <= t4)
    {
        // Phase 7: 匀速（如果有匀速段）
        float32_t dt = t_elapsed - t3;
        float32_t s_accel = profile->accelEndPos - pos;  // 加速段总距离
        float32_t s_cruise = profile->peakVelocity * dt;
        return pos + phase47_direction * (ABS(s_accel) + s_cruise);
    }
    else if(t_elapsed <= t5)
    {
        // Phase 8: 加减速
        float32_t dt = t_elapsed - t4;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * dt - (jMax * CUBE(dt)) / 6.0f;
        return pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1);
    }
    else if(t_elapsed <= t6)
    {
        // Phase 9: 匀减速
        float32_t dt = t_elapsed - t5;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * profile->tjd1 - (jMax * CUBE(profile->tjd1)) / 6.0f;
        float32_t v_d1 = profile->peakVelocity - 0.5f * jMax * SQUARE(profile->tjd1);
        float32_t s_d2 = v_d1 * dt - 0.5f * dMax * SQUARE(dt);
        return pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1 + s_d2);
    }
    else
    {
        // Phase 10: 减减速
        float32_t dt = t_elapsed - t6;
        float32_t s_accel = profile->accelEndPos - pos;
        float32_t s_cruise = profile->peakVelocity * profile->tv;
        float32_t s_d1 = profile->peakVelocity * profile->tjd1 - (jMax * CUBE(profile->tjd1)) / 6.0f;
        float32_t v_d1 = profile->peakVelocity - 0.5f * jMax * SQUARE(profile->tjd1);
        float32_t s_d2 = v_d1 * profile->td - 0.5f * dMax * SQUARE(profile->td);
        float32_t v_d2 = v_d1 - dMax * profile->td;
        float32_t s_d3 = v_d2 * dt - 0.5f * dMax * SQUARE(dt) + (jMax * CUBE(dt)) / 6.0f;
        return pos + phase47_direction * (ABS(s_accel) + s_cruise + s_d1 + s_d2 + s_d3);
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
    
    if(t >= profile->totalTime)
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
    
    // **关键修复**：使用有效减速度（急停时使用emergencyDecel）
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->maxDecel;
    
    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
        float32_t jMax_trans = (profile->isStopCommand) ? 
                               (effectiveDecel / profile->jerkTime) : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：Phase0速度公式使用实际的v0和a0（都带方向）
            // 公式：v(t) = v0 + a0*t - 0.5*SIGN(a0)*jMax*t^2
            // 例如：v0=-380, a0=+2000 → v从-380向0增加（绝对值减小）
            float32_t v = v0 + a0 * t_elapsed - 0.5f * SIGN(a0) * jMax_trans * SQUARE(t_elapsed);
            return v;
        }
        else
        {
            t_elapsed -= profile->accelTransTime;
            // **关键修复**：Phase0结束后更新v0，保持速度符号
            // 例如：v0=-419, vel_change=+81 → v0=-338（负值，正确✅）
            float32_t vel_change = a0 * profile->accelTransTime - 
                                  0.5f * SIGN(a0) * jMax_trans * SQUARE(profile->accelTransTime);
            v0 = v0 + vel_change;
        }
    }
    
    // Phase 1-3: 反向减速段
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME)
    {
        float32_t t_stop_total = profile->reverseDecelTime;
        
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
                float32_t jMax_decel = dMax / profile->jerkTime;
                
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
                    float32_t v1 = v_start_abs + a_effect * stop_tjd1 - 
                                   0.5f * jMax_decel * SQUARE(stop_tjd1);
                    float32_t a1 = a_effect - jMax_decel * stop_tjd1;  // 峰值减速度（负值）
                    v = v1 + a1 * (t_elapsed - stop_tjd1);
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
                }
                
                // 防止速度变负
                if(v < 0.0f) v = 0.0f;
            }
            
            // **关键修复**：已经包含方向，直接返回（v是绝对值，需恢复符号）
            return v * v0_direction;
        }
        else
        {
            t_elapsed -= t_stop_total;
            v0 = 0.0f;
        }
    }
    
    // Phase 4-10: 标准7段S曲线
    // **关键修复**：计算实际加速度峰值
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
    
    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isStopCommand)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续当前速度的方向
        // currentVel是Phase0之前的速度（带符号）
        phase47_direction = SIGN(profile->currentVel);
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
        float32_t v = profile->peakVelocity - 0.5f * jMax * SQUARE(t_elapsed - t4);
        return v * phase47_direction;
    }
    else if(t_elapsed <= t6)
    {
        float32_t v1 = profile->peakVelocity - 0.5f * jMax * SQUARE(profile->tjd1);
        float32_t v = v1 - dMax * (t_elapsed - t5);
        return v * phase47_direction;
    }
    else
    {
        float32_t v1 = profile->peakVelocity - 0.5f * jMax * SQUARE(profile->tjd1);
        float32_t v2 = v1 - dMax * profile->td;
        float32_t v = v2 - dMax * (t_elapsed - t6) + 0.5f * jMax * SQUARE(t_elapsed - t6);
        return v * phase47_direction;
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
    
    if(t >= profile->totalTime)
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
    
    // **关键修复**：使用有效减速度（急停时使用emergencyDecel）
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->maxDecel;
    
    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        if(t_elapsed <= profile->accelTransTime)
        {
            // **关键修复**：停止命令的加速度过渡段应使用effectiveDecel的jMax
            // 因为我们要快速停止，应该使用更大的减速度
            float32_t jMax_trans = (profile->isStopCommand) ? 
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
                float32_t jMax_decel = dMax / profile->jerkTime;
                
                // **关键修复**：Phase1-3是"停止"段，加速度方向应与速度相反
                // 对于负速度v0_direction=-1：需要正加速度来减速
                // 对于正速度v0_direction=+1：需要负加速度来减速
                // 公式中使用 -v0_direction 来确保加速度与速度方向相反
                
                if(t_elapsed <= stop_tjd1)
                {
                    // Phase 1: 减加速（建立减速加速度）
                    // 加速度从a_start变化到峰值减速度(-v0_direction * dMax)
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
                }
            }
            
            // **关键修复**：直接返回a（已包含方向信息）
            return a;
        }
        else
        {
            t_elapsed -= t_stop_total;
        }
    }
    
    // Phase 4-10: 标准7段S曲线
    // **关键修复**：计算实际加速度峰值
    float32_t aMax, dMax;
    
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
    
    // **关键修复**：Phase4-7的方向应该基于实际运动方向
    // - REVERSE模式：从停止点到目标
    // - NORMAL模式（有Phase0）：继续当前运动方向（Phase0不改变方向）
    // - NORMAL模式（无Phase0）：基于目标方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isStopCommand)
    {
        // REVERSE模式：方向 = SIGN(targetPos - stopPos)
        phase47_direction = SIGN(profile->targetPos - profile->reverseDecelEndPos);
    }
    else if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        // NORMAL模式（有Phase0）：继续当前速度的方向
        // currentVel是Phase0之前的速度（带符号）
        phase47_direction = SIGN(profile->currentVel);
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
        return -jMax * (t_elapsed - t4) * phase47_direction;
    }
    else if(t_elapsed <= t6)
    {
        return -dMax * phase47_direction;
    }
    else
    {
        return (-dMax + jMax * (t_elapsed - t6)) * phase47_direction;
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
    
    // 使用有效减速度（急停时使用emergencyDecel）
    float32_t effectiveDecel = (profile->emergencyDecel > 0.1f) ? 
                               profile->emergencyDecel : profile->maxDecel;
    float32_t jMax_decel = effectiveDecel / profile->jerkTime;
    
    // Phase 0: 加速度过渡段（在当前运动方向上过渡）
    if(profile->accelTransTime > SCURVE_EPSILON_TIME)
    {
        float32_t jMax_trans = (profile->isStopCommand) ? jMax_decel : jMax;
        
        if(t_elapsed <= profile->accelTransTime)
        {
            // 在加速度过渡段内：jerk = -sign(a0) * jMax_trans，使用初始运动方向
            return -SIGN(profile->startAccel) * jMax_trans * v0_direction;
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
    
    // 计算7段时间点
    float32_t t1 = profile->tj1;
    float32_t t2 = t1 + profile->ta;
    float32_t t3 = t2 + profile->tj2;
    float32_t t4 = t3 + profile->tv;
    float32_t t5 = t4 + profile->tjd1;
    float32_t t6 = t5 + profile->td;
    
    // **关键修复**：REVERSE模式下，Phase4-7的方向是从停止点到目标的方向
    float32_t phase47_direction = direction;
    if(profile->reverseDecelTime > SCURVE_EPSILON_TIME && !profile->isStopCommand)
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
