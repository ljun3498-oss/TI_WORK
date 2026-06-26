//#############################################################################
//
// FILE:   scurve_test.c
//
// TITLE:  S-Curve Test Interface - 导出11段轨迹信息供测试程序调用
//
// 功能说明：
//   封装 scurve_profile.c 的轨迹计算，提供11段格式的轨迹信息输出。
//   测试程序通过此接口获取轨迹参数、段信息、采样点数据进行可视化和验证。
//
// 11段格式（用户定义）：
//   Phase 0: 加速度过渡  (a: a0 -> 0)
//   Phase 1: 减速-减加速 (a: -jMax -> -dMax)
//   Phase 2: 减速-匀减速 (a = -dMax)
//   Phase 3: 减速-减减速 (a: -dMax -> 0)
//   Phase 4: 加速-加加速 (a: 0 -> +jMax)
//   Phase 5: 加速-匀加速 (a = +aMax)
//   Phase 6: 加速-减加速 (a: +jMax -> 0)
//   Phase 7: 匀速段      (v = v_peak)
//   Phase 8: 减速-加减速 (a: 0 -> -jMax)
//   Phase 9: 减速-匀减速 (a = -dMax)
//   Phase 10: 减速-减减速 (a: -dMax -> 0)
//
// 运动类型对应活跃段：
//   STOP           : Phase 0, 1, 2, 3        (4段)
//   REVERSE/OVER.. : Phase 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (11段)
//   NORMAL (有P0)  : Phase 0, 4, 5, 6, 7, 8, 9, 10  (8段)
//   NORMAL (无P0)   : Phase 4, 5, 6, 7, 8, 9, 10    (7段)
//   MICRO           : Phase 7                          (1段)
//
//#############################################################################
#include "scurve_profile.h"
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

#if USE_SCURVE_PROFILE

//*****************************************************************************
// 宏定义
//*****************************************************************************
#define NUM_PHASES 14
#define MAX_LOG_SIZE 65536
#define EPSILON_TIME  0.0001f
#define EPSILON_VEL   0.1f
#define EPSILON_POS   0.01f
#define EPSILON_ACCEL 50.0f

#define ABS(x)    ((x) > 0 ? (x) : -(x))
#define SIGN(x)   ((x) > 0 ? 1.0f : (x) < 0 ? -1.0f : 0.0f)
#define MIN(a,b)  ((a) < (b) ? (a) : (b))
#define MAX(a,b)  ((a) > (b) ? (a) : (b))
#define SQUARE(x) ((x) * (x))
#define CUBE(x)   ((x) * (x) * (x))

// 调试日志文件（供 scurve_profile.c 的 DEBUG_PRINT 使用）
extern FILE* g_motion_debug_log;

// DEBUG_PRINT 宏定义
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
// 段类型枚举（按用户定义的11段编号）
//*****************************************************************************
typedef enum {
    PHASE_TRANS       = 0,  // Phase 0: accel transition
    PHASE_DECEL_JERK1 = 1,  // Phase 1: decel - jerk-down
    PHASE_DECEL_CONST = 2,  // Phase 2: decel - constant
    PHASE_DECEL_JERK2 = 3,  // Phase 3: decel - jerk-up
    PHASE_ACCEL_JERK1 = 4,  // Phase 4: accel - jerk-up
    PHASE_ACCEL_CONST = 5,  // Phase 5: accel - constant
    PHASE_ACCEL_JERK2 = 6,  // Phase 6: accel - jerk-down
    PHASE_CRUISE      = 7,  // Phase 7: cruise
    PHASE_DECEL2_J1   = 8,  // Phase 8: decel2 - jerk-down
    PHASE_DECEL2_C    = 9,  // Phase 9: decel2 - constant
    PHASE_DECEL2_J2   = 10, // Phase 10: decel2 - jerk-up
    PHASE_VC_DEC_JERK1 = 11, // Phase 11: VC high-to-low jerk-down
    PHASE_VC_DEC_CONST  = 12, // Phase 12: VC high-to-low constant
    PHASE_VC_DEC_JERK2  = 13, // Phase 13: VC high-to-low jerk-up
} PhaseIndex;

//*****************************************************************************
// 11段段信息结构
//*****************************************************************************
typedef struct {
    PhaseIndex index;
    char name[32];
    float32_t startTime;
    float32_t endTime;
    float32_t startPos;
    float32_t endPos;
    float32_t startVel;
    float32_t endVel;
    float32_t startAccel;
    float32_t endAccel;
    float32_t jerk;
    bool     isActive;
} Segment11_t;

//*****************************************************************************
// 测试上下文
//*****************************************************************************
typedef struct {
    TrapezoidalProfile_t profile;
    int computed;
    int motionType;
    char motionTypeName[32];
    float32_t totalTime;
    float32_t peakVelocity;
    float32_t distance;
    int isEmergencyStop;  // 保存急停命令状态

    Segment11_t segments[NUM_PHASES];
    int activeSegmentCount;

    char formulaSource[64];
    int formulaMode;

    char debugLog[MAX_LOG_SIZE];
    int  debugLogLen;
} STestContext_t;

// 全局测试上下文
static STestContext_t g_ctx = {0};

//*****************************************************************************
// 内部函数声明
//*****************************************************************************
static void STest_clearContext(void);
static void STest_computeSegmentTimes(TrapezoidalProfile_t* prof, STestContext_t* ctx);
static void STest_computeSegmentValues(TrapezoidalProfile_t* prof, STestContext_t* ctx);
static void STest_computeFromProfile(void);
static void STest_log(const char* fmt, ...);

//*****************************************************************************
// 初始化测试环境
//*****************************************************************************
void STest_init(void)
{
    // 初始化调试日志文件（供 scurve_profile.c 的 DEBUG_PRINT 使用）
    if(g_motion_debug_log == NULL) {
        fopen_s(&g_motion_debug_log, "C:\\TEMP\\motion_debug.log", "w");
        if(g_motion_debug_log != NULL) {
            fprintf(g_motion_debug_log, "[STest_init] Debug log initialized\n");
            fflush(g_motion_debug_log);
        }
    }
    
    STest_clearContext();
    STest_log("[STest] S-Curve test module initialized\n");
}

//*****************************************************************************
// 释放测试环境
//*****************************************************************************
void STest_destroy(void)
{
    memset(&g_ctx, 0, sizeof(g_ctx));
}

//*****************************************************************************
// 清除上下文
//*****************************************************************************
static void STest_clearContext(void)
{
    memset(&g_ctx, 0, sizeof(g_ctx));
    g_ctx.computed = 0;
    g_ctx.activeSegmentCount = 0;
    g_ctx.formulaMode = 0;
    strcpy(g_ctx.formulaSource, "scurve_profile.c");
    strcpy(g_ctx.motionTypeName, "N/A");

    const char* phaseNames[NUM_PHASES] = {
        "TransAccel",      // Phase 0
        "DecJerk1",        // Phase 1
        "DecConst",        // Phase 2
        "DecJerk2",        // Phase 3
        "AccJerk1",        // Phase 4
        "AccConst",        // Phase 5
        "AccJerk2",        // Phase 6
        "Cruise",          // Phase 7
        "Dec2Jerk1",       // Phase 8
        "Dec2Const",       // Phase 9
        "Dec2Jerk2",       // Phase 10
        "VC_DecJerk1",     // Phase 11: VC high->low jerk-down
        "VC_DecConst",     // Phase 12: VC high->low constant
        "VC_DecJerk2"      // Phase 13: VC high->low jerk-up
    };

    for (int i = 0; i < NUM_PHASES; i++) {
        g_ctx.segments[i].index = (PhaseIndex)i;
        strncpy(g_ctx.segments[i].name, phaseNames[i], 31);
        g_ctx.segments[i].isActive = false;
        g_ctx.segments[i].jerk = 0.0f;
    }
}

//*****************************************************************************
// 调试日志
//*****************************************************************************
static void STest_log(const char* fmt, ...)
{
    if (g_ctx.debugLogLen >= MAX_LOG_SIZE - 512) {
        g_ctx.debugLogLen = 0;
    }

    char buf[1024];
    va_list args;
    va_start(args, fmt);
    int len = vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);

    if (len > 0 && g_ctx.debugLogLen + len < MAX_LOG_SIZE - 1) {
        memcpy(g_ctx.debugLog + g_ctx.debugLogLen, buf, len);
        g_ctx.debugLogLen += len;
        g_ctx.debugLog[g_ctx.debugLogLen] = '\0';
    }
}

//*****************************************************************************
// 执行轨迹计算
//*****************************************************************************
void STest_compute(float32_t startPos, float32_t startVel, float32_t startAccel,
                   float32_t targetPos, float32_t maxVel, float32_t maxAccel,
                   float32_t maxDecel, float32_t jerkTime, float32_t emergencyDecel)
{
    STest_clearContext();
    STest_log("\n========== S-Curve Test Compute ==========\n");
    STest_log("[Input Params]\n");
    STest_log("  startPos:    %.4f\n", startPos);
    STest_log("  startVel:    %.4f\n", startVel);
    STest_log("  startAccel:  %.4f\n", startAccel);
    STest_log("  targetPos:   %.4f\n", targetPos);
    STest_log("  maxVel:      %.4f\n", maxVel);
    STest_log("  maxAccel:    %.4f\n", maxAccel);
    STest_log("  maxDecel:    %.4f\n", maxDecel);
    STest_log("  jerkTime:     %.4f\n", jerkTime);
    STest_log("  emergencyDecel: %.4f\n", emergencyDecel);
    STest_log("  formulaMode: %s\n", g_ctx.formulaSource);

    TrapProfile_init(&g_ctx.profile, maxVel, maxAccel, maxDecel);
    g_ctx.profile.jerkTime = jerkTime;
    g_ctx.profile.emergencyDecel = emergencyDecel;
    g_ctx.profile.currentPos = startPos;
    g_ctx.profile.currentVel = startVel;
    g_ctx.profile.currentAccel = startAccel;
    g_ctx.profile.targetPos = targetPos;
    g_ctx.profile.startVelocity = startVel;
    g_ctx.profile.startAccel = startAccel;

    SCurve_computeProfile(&g_ctx.profile);

    STest_computeFromProfile();

    STest_log("========== Compute Done ==========\n\n");
}

//*****************************************************************************
// 停止轨迹计算 - 调用TrapProfile_stop生成停止轨迹
//*****************************************************************************
void STest_computeStop(float32_t currentPos, float32_t currentVel, float32_t currentAccel,
                       float32_t maxVel, float32_t maxAccel, float32_t maxDecel,
                       float32_t jerkTime, float32_t emergencyDecel, int isEmergencyStopCmd)
{
    STest_clearContext();
    STest_log("\n========== S-Curve Stop Profile Compute ==========\n");
    STest_log("[Stop Input Params]\n");
    STest_log("  currentPos:   %.4f\n", currentPos);
    STest_log("  currentVel:   %.4f\n", currentVel);
    STest_log("  currentAccel: %.4f\n", currentAccel);
    STest_log("  maxVel:       %.4f\n", maxVel);
    STest_log("  maxAccel:     %.4f\n", maxAccel);
    STest_log("  maxDecel:     %.4f\n", maxDecel);
    STest_log("  jerkTime:     %.4f\n", jerkTime);
    STest_log("  emergencyDecel: %.4f\n", emergencyDecel);
    STest_log("  isEmergencyStopCmd: %d\n", isEmergencyStopCmd);
    STest_log("  formulaMode:  %s\n", g_ctx.formulaSource);

    // 初始化profile参数
    TrapProfile_init(&g_ctx.profile, maxVel, maxAccel, maxDecel);
    g_ctx.profile.jerkTime = jerkTime;
    g_ctx.profile.emergencyDecel = emergencyDecel;
    g_ctx.profile.currentPos = currentPos;
    g_ctx.profile.currentVel = currentVel;
    g_ctx.profile.currentAccel = currentAccel;
    g_ctx.profile.startVelocity = currentVel;
    g_ctx.profile.startAccel = currentAccel;

    // **修复**：优先使用GUI传入的isEmergencyStopCmd参数
    // 只有当isEmergencyStopCmd未指定（-1）时，才根据emergencyDecel与maxDecel自动判断
    bool isEmergencyStop = (isEmergencyStopCmd != -1) ? (isEmergencyStopCmd == 1) :
                          ((emergencyDecel > 0.1f) && (ABS(emergencyDecel - maxDecel) > 1.0f));

    STest_log("  Final isEmergencyStop: %d\n", isEmergencyStop ? 1 : 0);

    // 调用TrapProfile_stop生成停止轨迹
    // 该函数会设置isEmergencyStop标志并计算停止目标位置
    TrapProfile_stop(&g_ctx.profile, currentPos, currentVel, currentAccel, 0.001f, isEmergencyStop);

    // **关键**：在SCurve_computeProfile调用前保存isEmergencyStop状态
    // 因为SCurve_computeProfile会清除profile中的isEmergencyStop标志
    g_ctx.isEmergencyStop = isEmergencyStop ? 1 : 0;

    // 计算S曲线轨迹
    SCurve_computeProfile(&g_ctx.profile);

    // 从profile提取段信息
    STest_computeFromProfile();

    STest_log("========== Stop Profile Compute Done ==========\n\n");
}

//*****************************************************************************
// 从profile提取11段信息
//*****************************************************************************
static void STest_computeFromProfile(void)
{
    TrapezoidalProfile_t* p = &g_ctx.profile;
    float32_t distance = p->targetPos - p->currentPos;

    if (p->isEmergencyStop) {
        g_ctx.motionType = 0;
        strcpy(g_ctx.motionTypeName, "STOP");
    } else if (p->isMicroMotion) {
        g_ctx.motionType = 5;
        strcpy(g_ctx.motionTypeName, "MICRO");
    } else if (p->isVelocityChange) {
        g_ctx.motionType = 6;
        strcpy(g_ctx.motionTypeName, "VELOCITY_CHANGE");
    } else {
        int hasPhase0 = (p->accelTransTime > EPSILON_TIME) ? 1 : 0;
        int hasDecelToZero = (p->reverseDecelTime > EPSILON_TIME) ? 1 : 0;
        int hasCruise = (p->constTime > EPSILON_TIME) ? 1 : 0;

        if (hasDecelToZero && hasCruise) {
            g_ctx.motionType = 1;
            strcpy(g_ctx.motionTypeName, "REVERSE");
        } else if (hasDecelToZero && !hasCruise) {
            g_ctx.motionType = 2;
            strcpy(g_ctx.motionTypeName, "OVERSHOOT");
        } else if (hasPhase0) {
            g_ctx.motionType = 3;
            strcpy(g_ctx.motionTypeName, "NORMAL");
        } else {
            g_ctx.motionType = 4;
            strcpy(g_ctx.motionTypeName, "NORMAL");
        }
    }

    STest_log("[MotionType] %s (code=%d)\n", g_ctx.motionTypeName, g_ctx.motionType);

    STest_computeSegmentTimes(p, &g_ctx);
    STest_computeSegmentValues(p, &g_ctx);

    g_ctx.computed = 1;
    g_ctx.totalTime = p->totalTime;
    g_ctx.peakVelocity = p->peakVelocity;
    g_ctx.distance = distance;
}

//*****************************************************************************
// 计算11段时间
//*****************************************************************************
static void STest_computeSegmentTimes(TrapezoidalProfile_t* prof, STestContext_t* ctx)
{
    for (int i = 0; i < NUM_PHASES; i++) {
        ctx->segments[i].isActive = false;
        ctx->segments[i].startTime = 0.0f;
        ctx->segments[i].endTime = 0.0f;
    }

    float32_t t = 0.0f;
    float32_t t_trans = prof->accelTransTime;
    float32_t t_stop = prof->reverseDecelTime;
    float32_t t_j1 = prof->tj1;
    float32_t t_ta  = prof->ta;
    float32_t t_j2  = prof->tj2;
    float32_t t_tv  = prof->tv;
    float32_t tjd1  = prof->tjd1;
    float32_t td    = prof->td;
    float32_t tjd2  = prof->tjd2;
    float32_t stjd1 = prof->stopTjd1;
    float32_t std   = prof->stopTd;
    float32_t stjd2 = prof->stopTjd2;
    float32_t effectiveDecel = (prof->emergencyDecel > 0.1f) ? prof->emergencyDecel : prof->maxDecel;
    float32_t jerkTime = prof->jerkTime;

    // Phase 0: 加速度过渡
    if (t_trans > EPSILON_TIME) {
        ctx->segments[0].isActive = true;
        ctx->segments[0].startTime = 0.0f;
        ctx->segments[0].endTime = t_trans;
        t = t_trans;
        STest_log("[Phase 0] t=[%.4f, %.4f], dur=%.4f\n",
                  ctx->segments[0].startTime, ctx->segments[0].endTime,
                  ctx->segments[0].endTime - ctx->segments[0].startTime);
    }

    // Phase 1-3: VELOCITY_CHANGE deceleration from high speed to peak speed
    if (prof->isVelocityChange && t_stop > EPSILON_TIME) {
        float32_t jMax_d = effectiveDecel / jerkTime;
        float32_t sd1_end = t + stjd1;
        float32_t sd2_end = sd1_end + std;
        float32_t sd3_end = sd2_end + stjd2;

        ctx->segments[1].isActive = true;
        ctx->segments[1].startTime = t;
        ctx->segments[1].endTime = sd1_end;

        if (std > EPSILON_TIME) {
            ctx->segments[2].isActive = true;
            ctx->segments[2].startTime = sd1_end;
            ctx->segments[2].endTime = sd2_end;
        }

        ctx->segments[3].isActive = true;
        ctx->segments[3].startTime = (std > EPSILON_TIME) ? sd2_end : sd1_end;
        ctx->segments[3].endTime = sd3_end;

        t = sd3_end;
        STest_log("[VC Phase1-3] tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                  stjd1, std, stjd2);
    }
    // REVERSE/OVERSHOOT: Phase 1-3 stop-to-zero deceleration
    else if (!prof->isVelocityChange && t_stop > EPSILON_TIME) {
        float32_t s1_end = t + stjd1;
        float32_t s2_end = s1_end + std;
        float32_t s3_end = s2_end + stjd2;

        ctx->segments[1].isActive = true;
        ctx->segments[1].startTime = t;
        ctx->segments[1].endTime = s1_end;

        ctx->segments[2].isActive = true;
        ctx->segments[2].startTime = s1_end;
        ctx->segments[2].endTime = s2_end;

        ctx->segments[3].isActive = true;
        ctx->segments[3].startTime = s2_end;
        ctx->segments[3].endTime = s3_end;

        t = s3_end;
        STest_log("[RevPhase1-3] stop=%.4f, tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                  t_stop, stjd1, std, stjd2);
    }

    // Phase 4-6: acceleration
    if (t_j1 > EPSILON_TIME || t_ta > EPSILON_TIME || t_j2 > EPSILON_TIME) {
        float32_t a4_end = t + t_j1;
        float32_t a5_end = a4_end + t_ta;
        float32_t a6_end = a5_end + t_j2;

        ctx->segments[4].isActive = true;
        ctx->segments[4].startTime = t;
        ctx->segments[4].endTime = a4_end;

        if (t_ta > EPSILON_TIME) {
            ctx->segments[5].isActive = true;
            ctx->segments[5].startTime = a4_end;
            ctx->segments[5].endTime = a5_end;
        }

        ctx->segments[6].isActive = true;
        ctx->segments[6].startTime = (t_ta > EPSILON_TIME) ? a5_end : a4_end;
        ctx->segments[6].endTime = a6_end;

        t = a6_end;
        STest_log("[Phase 4-6] accel=%.4f, tj1=%.4f, ta=%.4f, tj2=%.4f\n",
                  prof->accelTime, t_j1, t_ta, t_j2);
    }

    // Phase 7: 匀速段（对于VELOCITY_CHANGE模式，如果constTime > 0）
    // 注意：对于VELOCITY_CHANGE模式，使用constTime（vcConstTime的别名）而不是tv
    float32_t t_cruise_time = prof->isVelocityChange ? prof->constTime : t_tv;
    if (t_cruise_time > EPSILON_TIME) {
        ctx->segments[7].isActive = true;
        ctx->segments[7].startTime = t;
        ctx->segments[7].endTime = t + t_cruise_time;
        t += t_cruise_time;
        STest_log("[Phase 7] cruise=%.4f\n", t_cruise_time);
    }

    // Phase 8-10: 减速段
    if (tjd1 > EPSILON_TIME || td > EPSILON_TIME || tjd2 > EPSILON_TIME) {
        float32_t d8_end = t + tjd1;
        float32_t d9_end = d8_end + td;
        float32_t d10_end = d9_end + tjd2;

        ctx->segments[8].isActive = true;
        ctx->segments[8].startTime = t;
        ctx->segments[8].endTime = d8_end;

        if (td > EPSILON_TIME) {
            ctx->segments[9].isActive = true;
            ctx->segments[9].startTime = d8_end;
            ctx->segments[9].endTime = d9_end;
        }

        ctx->segments[10].isActive = true;
        ctx->segments[10].startTime = (td > EPSILON_TIME) ? d9_end : d8_end;
        ctx->segments[10].endTime = d10_end;

        STest_log("[Phase 8-10] decel=%.4f, tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                  prof->decelTime, tjd1, td, tjd2);
    }

    // Phase 11-13: VELOCITY_CHANGE high-to-low deceleration
    // (only active when isVelocityChange=true and vcDecel2Time > 0)
    if (prof->isVelocityChange && prof->vcDecel2Time > EPSILON_TIME) {
        float32_t td_vc = prof->vcDecel2Td;
        float32_t tjd1_vc = prof->vcDecel2Tjd1;
        float32_t tjd2_vc = prof->vcDecel2Tjd2;
        float32_t p11_end = t + tjd1_vc;
        float32_t p12_end = p11_end + td_vc;
        float32_t p13_end = p12_end + tjd2_vc;

        ctx->segments[11].isActive = true;
        ctx->segments[11].startTime = t;
        ctx->segments[11].endTime = p11_end;

        if (td_vc > EPSILON_TIME) {
            ctx->segments[12].isActive = true;
            ctx->segments[12].startTime = p11_end;
            ctx->segments[12].endTime = p12_end;
        }

        ctx->segments[13].isActive = true;
        ctx->segments[13].startTime = (td_vc > EPSILON_TIME) ? p12_end : p11_end;
        ctx->segments[13].endTime = p13_end;

        t = p13_end;
        STest_log("[Phase 11-13] VC decel=%.4f, tjd1=%.4f, td=%.4f, tjd2=%.4f\n",
                  prof->vcDecel2Time, tjd1_vc, td_vc, tjd2_vc);
    }

    ctx->activeSegmentCount = 0;
    for (int i = 0; i < NUM_PHASES; i++) {
        if (ctx->segments[i].isActive) ctx->activeSegmentCount++;
    }
    STest_log("[Stats] Active: %d / %d, totalTime=%.4f\n\n",
              ctx->activeSegmentCount, NUM_PHASES, prof->totalTime);
}

//*****************************************************************************
// 计算各段的位置/速度/加速度值
//*****************************************************************************
static void STest_computeSegmentValues(TrapezoidalProfile_t* prof, STestContext_t* ctx)
{
    DEBUG_PRINT("[STest_computeSegmentValues] prof->totalTime=%.6f, ctx->totalTime=%.6f\n",
                prof->totalTime, ctx->totalTime);

    for (int i = 0; i < NUM_PHASES; i++) {
        if (!ctx->segments[i].isActive) continue;

        float32_t t_start = ctx->segments[i].startTime;
        float32_t t_end = ctx->segments[i].endTime;

        // **关键调试**：输出每个分段的 startTime 和 endTime
        if (i == 10) {
            DEBUG_PRINT("[Seg10-DBG] t_start=%.6f, t_end=%.6f, prof->totalTime=%.6f\n",
                       t_start, t_end, prof->totalTime);
        }

        float32_t pos_start = SCurve_getPosition(prof, t_start);
        float32_t pos_end = SCurve_getPosition(prof, t_end);
        float32_t vel_start = SCurve_getVelocity(prof, t_start);
        float32_t vel_end = SCurve_getVelocity(prof, t_end);

        // **关键修复**：使用SCurve_getAcceleration直接计算加速度，而不是用速度差分估算
        float32_t accel_start = SCurve_getAcceleration(prof, t_start);
        float32_t accel_end = SCurve_getAcceleration(prof, t_end);

        ctx->segments[i].startPos = pos_start;
        ctx->segments[i].endPos = pos_end;
        ctx->segments[i].startVel = vel_start;
        ctx->segments[i].endVel = vel_end;
        ctx->segments[i].startAccel = accel_start;
        ctx->segments[i].endAccel = accel_end;

        float32_t dt = t_end - t_start;
        if (dt > EPSILON_TIME) {
            ctx->segments[i].jerk = (accel_end - accel_start) / dt;
        } else {
            ctx->segments[i].jerk = 0.0f;
        }

        STest_log("[Seg%2d %-14s] t=[%.4f,%.4f] pos=[%.4f,%.4f] vel=[%.4f,%.4f] accel=[%.2f,%.2f] jerk=%.2f\n",
                  i, ctx->segments[i].name,
                  t_start, t_end,
                  pos_start, pos_end,
                  vel_start, vel_end,
                  accel_start, accel_end,
                  ctx->segments[i].jerk);
    }
}

//*****************************************************************************
// 获取轨迹类型
//*****************************************************************************
int STest_getMotionType(void)
{
    return g_ctx.motionType;
}

const char* STest_getMotionTypeName(void)
{
    return g_ctx.motionTypeName;
}

//*****************************************************************************
// 获取总时间和峰值速度
//*****************************************************************************
float32_t STest_getTotalTime(void)  { return g_ctx.totalTime; }
float32_t STest_getPeakVelocity(void) { return g_ctx.peakVelocity; }
float32_t STest_getDistance(void)    { return g_ctx.distance; }

//*****************************************************************************
// 获取活跃段数量
//*****************************************************************************
int STest_getActiveSegmentCount(void)
{
    return g_ctx.activeSegmentCount;
}

//*****************************************************************************
// 获取指定段信息
//*****************************************************************************
int STest_getSegmentInfo(int index,
                         float32_t* outStartTime, float32_t* outEndTime,
                         float32_t* outStartPos, float32_t* outEndPos,
                         float32_t* outStartVel, float32_t* outEndVel,
                         float32_t* outStartAccel, float32_t* outEndAccel,
                         float32_t* outJerk)
{
    if (index < 0 || index >= NUM_PHASES) return -1;
    if (!g_ctx.computed) return -2;

    Segment11_t* seg = &g_ctx.segments[index];
    if (outStartTime)   *outStartTime   = seg->startTime;
    if (outEndTime)     *outEndTime     = seg->endTime;
    if (outStartPos)    *outStartPos    = seg->startPos;
    if (outEndPos)      *outEndPos      = seg->endPos;
    if (outStartVel)    *outStartVel    = seg->startVel;
    if (outEndVel)      *outEndVel      = seg->endVel;
    if (outStartAccel)  *outStartAccel  = seg->startAccel;
    if (outEndAccel)    *outEndAccel    = seg->endAccel;
    if (outJerk)        *outJerk        = seg->jerk;

    return seg->isActive ? 1 : 0;
}

//*****************************************************************************
// 获取段名称和活跃状态
//*****************************************************************************
const char* STest_getSegmentName(int index)
{
    if (index < 0 || index >= NUM_PHASES) return "";
    return g_ctx.segments[index].name;
}

int STest_isSegmentActive(int index)
{
    if (index < 0 || index >= NUM_PHASES) return -1;
    if (!g_ctx.computed) return -2;
    return g_ctx.segments[index].isActive ? 1 : 0;
}

//*****************************************************************************
// 在指定时间点采样（用于绘图）
//*****************************************************************************
void STest_sample(float32_t startTime, float32_t dt, int numPoints,
                  float32_t* outTimes, float32_t* outPositions,
                  float32_t* outVelocities, float32_t* outAccelerations,
                  float32_t* outJerks)
{
    if (!g_ctx.computed) return;

    TrapezoidalProfile_t* prof = &g_ctx.profile;
    float32_t sampleTime = startTime;
    float32_t actualDt = dt;
    float32_t endTime = startTime + numPoints * actualDt;

    DEBUG_PRINT("[STest_sample] startTime=%.6f, dt=%.6f, numPoints=%d, prof->totalTime=%.6f, endTime=%.6f\n",
                startTime, dt, numPoints, prof->totalTime, endTime);

    // **关键修复**：如果结束时间小于总时间，说明采样点不够密集
    // 在最后一个点使用精确的终点时间
    if (endTime < prof->totalTime - 0.0001f)
    {
        // 使用更小的dt确保覆盖终点
        actualDt = prof->totalTime / (numPoints - 1);
    }

    for (int i = 0; i < numPoints; i++) {
        // 最后一个采样点使用精确的终点时间
        if (i == numPoints - 1)
        {
            sampleTime = prof->totalTime;
        }

        if (outTimes) outTimes[i] = sampleTime;
        if (outPositions) outPositions[i] = SCurve_getPosition(prof, sampleTime);
        if (outVelocities) outVelocities[i] = SCurve_getVelocity(prof, sampleTime);
        if (outAccelerations) outAccelerations[i] = SCurve_getAcceleration(prof, sampleTime);
        if (outJerks) {
            float32_t dt_jerk = MIN(actualDt, 0.001f);
            float32_t acc_curr = SCurve_getAcceleration(prof, sampleTime);
            float32_t acc_next = SCurve_getAcceleration(prof, sampleTime + dt_jerk);
            outJerks[i] = (acc_next - acc_curr) / dt_jerk;
        }

        if (i < numPoints - 1)
        {
            sampleTime += actualDt;
        }
    }
}

//*****************************************************************************
// 获取Debug日志
//*****************************************************************************
const char* STest_getDebugLog(void)
{
    return g_ctx.debugLog;
}

//*****************************************************************************
// 设置/获取公式模式
//*****************************************************************************
void STest_setFormulaMode(int mode)
{
    g_ctx.formulaMode = mode;
    if (mode == 0) {
        strcpy(g_ctx.formulaSource, "scurve_profile.c");
    } else {
        strcpy(g_ctx.formulaSource, "User Formula");
    }
    STest_log("[Formula] Switched to: %s\n", g_ctx.formulaSource);
}

int STest_getFormulaMode(void)
{
    return g_ctx.formulaMode;
}

//*****************************************************************************
// 保存/加载配置
//*****************************************************************************
int STest_saveConfig(const char* filepath)
{
    if (!g_ctx.computed) return -1;

    FILE* f = fopen(filepath, "w");
    if (!f) return -2;

    // 判断是否为停止轨迹（根据运动类型判断）
    int isStopTrajectory = (g_ctx.motionType == 0) ? 1 : 0;
    // 保存急停命令状态
    int isEmergencyStop = g_ctx.profile.isEmergencyStop ? 1 : 0;

    fprintf(f, "{\n");
    fprintf(f, "  \"version\": \"1.3\",\n");
    fprintf(f, "  \"isStopTrajectory\": %s,\n", isStopTrajectory ? "true" : "false");
    fprintf(f, "  \"isEmergencyStop\": %s,\n", isEmergencyStop ? "true" : "false");
    fprintf(f, "  \"input\": {\n");
    fprintf(f, "    \"startPos\": %.6f,\n", g_ctx.profile.currentPos);
    fprintf(f, "    \"startVel\": %.6f,\n", g_ctx.profile.startVelocity);
    fprintf(f, "    \"startAccel\": %.6f,\n", g_ctx.profile.startAccel);
    fprintf(f, "    \"targetPos\": %.6f,\n", g_ctx.profile.targetPos);
    fprintf(f, "    \"maxVel\": %.6f,\n", g_ctx.profile.maxVelocity);
    fprintf(f, "    \"maxAccel\": %.6f,\n", g_ctx.profile.maxAccel);
    fprintf(f, "    \"maxDecel\": %.6f,\n", g_ctx.profile.maxDecel);
    fprintf(f, "    \"jerkTime\": %.6f,\n", g_ctx.profile.jerkTime);
    fprintf(f, "    \"emergencyDecel\": %.6f,\n", g_ctx.profile.emergencyDecel);
    fprintf(f, "  },\n");
    fprintf(f, "  \"result\": {\n");
    fprintf(f, "    \"motionType\": \"%s\",\n", g_ctx.motionTypeName);
    fprintf(f, "    \"totalTime\": %.6f,\n", g_ctx.totalTime);
    fprintf(f, "    \"peakVelocity\": %.6f,\n", g_ctx.peakVelocity);
    fprintf(f, "    \"distance\": %.6f,\n", g_ctx.distance);
    fprintf(f, "    \"activeSegmentCount\": %d,\n", g_ctx.activeSegmentCount);
    fprintf(f, "    \"segments\": [\n");
    for (int i = 0; i < NUM_PHASES; i++) {
        Segment11_t* seg = &g_ctx.segments[i];
        fprintf(f, "      {\"phase\":%d,\"name\":\"%s\",\"active\":%s,\"sT\":%.6f,\"eT\":%.6f,\"sP\":%.6f,\"eP\":%.6f,\"sV\":%.6f,\"eV\":%.6f,\"sA\":%.6f,\"eA\":%.6f,\"jerk\":%.6f}%s\n",
                i, seg->name, seg->isActive ? "true" : "false",
                seg->startTime, seg->endTime,
                seg->startPos, seg->endPos,
                seg->startVel, seg->endVel,
                seg->startAccel, seg->endAccel,
                seg->jerk,
                i < NUM_PHASES - 1 ? "," : "");
    }
    fprintf(f, "    ]\n");
    fprintf(f, "  }\n");
    fprintf(f, "}\n");
    fclose(f);
    return 0;
}

int STest_loadConfig(const char* filepath)
{
    FILE* f = fopen(filepath, "r");
    if (!f) return -1;

    float32_t vals[9] = {0};  // 0-7: 原有参数, 8: emergencyDecel
    char line[512];
    int found = 0;
    int isStopTrajectory = 0;  // 0: 普通运动轨迹, 1: 停止轨迹
    int isEmergencyStop = -1;  // -1: 未指定(自动判断), 0: 普通停止, 1: 急停命令
    bool hasEmergencyDecel = false;  // 标记是否找到emergencyDecel字段

    while (fgets(line, sizeof(line), f)) {
        // 检查是否为停止轨迹
        if (strstr(line, "\"isStopTrajectory\"")) {
            if (strstr(line, "true") || strstr(line, "1")) {
                isStopTrajectory = 1;
            } else if (strstr(line, "false")) {
                isStopTrajectory = 0;
            }
        }
        // 检查是否为急停命令（使用单独的if，不使用else if，确保能独立检测）
        if (strstr(line, "\"isEmergencyStop\"")) {
            if (strstr(line, "true") || strstr(line, "1")) {
                isEmergencyStop = 1;
            } else if (strstr(line, "false")) {
                isEmergencyStop = 0;
            }
        }
        else if (sscanf(line, "    \"startPos\": %f,", &vals[0]) == 1) found++;
        else if (sscanf(line, "    \"startVel\": %f,", &vals[1]) == 1) found++;
        else if (sscanf(line, "    \"startAccel\": %f,", &vals[2]) == 1) found++;
        else if (sscanf(line, "    \"targetPos\": %f,", &vals[3]) == 1) found++;
        else if (sscanf(line, "    \"maxVel\": %f,", &vals[4]) == 1) found++;
        else if (sscanf(line, "    \"maxAccel\": %f,", &vals[5]) == 1) found++;
        else if (sscanf(line, "    \"maxDecel\": %f,", &vals[6]) == 1) found++;
        else if (sscanf(line, "    \"jerkTime\": %f,", &vals[7]) == 1) found++;
        // 兼容有无逗号两种格式
        else if (sscanf(line, "    \"emergencyDecel\": %f", &vals[8]) == 1) {
            found++;
            hasEmergencyDecel = true;
        }
    }
    fclose(f);

    if (found >= 8) {
        // 如果没有emergencyDecel字段，默认使用maxDecel
        if (!hasEmergencyDecel) {
            vals[8] = vals[6];  // emergencyDecel = maxDecel
        }

        // 根据配置选择不同的计算函数
        if (isStopTrajectory==1||isEmergencyStop==1) {
            // 停止轨迹：调用STest_computeStop，使用TrapProfile_stop生成停止轨迹
            STest_log("\n[LoadConfig] Using stop trajectory mode (isStopTrajectory=true, isEmergencyStop=%d)\n", isEmergencyStop);
            STest_computeStop(vals[0], vals[1], vals[2], vals[4], vals[5], vals[6], vals[7], vals[8], isEmergencyStop);
        } else {
            // 普通运动轨迹
            STest_compute(vals[0], vals[1], vals[2], vals[3], vals[4], vals[5], vals[6], vals[7], vals[8]);
        }

        STest_log("[LoadConfig] isStopTrajectory=%d, isEmergencyStop=%d, found=%d, hasEmergencyDecel=%d\n", isStopTrajectory, isEmergencyStop, found, hasEmergencyDecel);
        return 0;
    }
    return -2;
}

//*****************************************************************************
// 导出CSV
//*****************************************************************************
int STest_exportCSV(const char* filepath, float32_t dt)
{
    if (!g_ctx.computed) return -1;
    if (dt <= 0.0f) dt = 0.001f;

    FILE* f = fopen(filepath, "w");
    if (!f) return -2;

    fprintf(f, "Time,Position,Velocity,Acceleration,Jerk\n");

    // **调试**：输出关键边界点
    STest_log("[CSV Export] Profile params:\n");
    STest_log("  reverseDecelTime=%.4f, constTime=%.4f, vcDecel2Time=%.4f\n",
              g_ctx.profile.reverseDecelTime, g_ctx.profile.constTime, g_ctx.profile.vcDecel2Time);
    STest_log("  vcDecel2Tjd1=%.6f, vcDecel2Td=%.6f, vcDecel2Tjd2=%.6f\n",
              g_ctx.profile.vcDecel2Tjd1, g_ctx.profile.vcDecel2Td, g_ctx.profile.vcDecel2Tjd2);
    STest_log("  totalTime=%.4f, startVelocity=%.2f, startAccel=%.2f\n",
              g_ctx.profile.totalTime, g_ctx.profile.startVelocity, g_ctx.profile.startAccel);
    
    // 计算Phase11-13的边界时间
    float32_t t_phase11_end = g_ctx.profile.reverseDecelTime + g_ctx.profile.constTime + g_ctx.profile.vcDecel2Tjd1;
    float32_t t_phase13_start = g_ctx.profile.reverseDecelTime + g_ctx.profile.constTime + g_ctx.profile.vcDecel2Tjd1 + g_ctx.profile.vcDecel2Td;
    STest_log("  Phase11 end time=%.6f, Phase13 start time=%.6f\n", t_phase11_end, t_phase13_start);
    STest_log("  Accel at Phase11 end=%.2f, Accel at Phase13 start=%.2f\n",
              SCurve_getAcceleration(&g_ctx.profile, t_phase11_end),
              SCurve_getAcceleration(&g_ctx.profile, t_phase13_start));

    float32_t maxTime = g_ctx.totalTime + dt;
    float32_t t = 0.0f;
    while (t <= maxTime) {
        float32_t pos = SCurve_getPosition(&g_ctx.profile, t);
        float32_t vel = SCurve_getVelocity(&g_ctx.profile, t);
        float32_t accel = SCurve_getAcceleration(&g_ctx.profile, t);
        float32_t accel_next = SCurve_getAcceleration(&g_ctx.profile, t + dt);
        float32_t jerk = (accel_next - accel) / dt;

        fprintf(f, "%.6f,%.6f,%.6f,%.6f,%.6f\n", t, pos, vel, accel, jerk);
        t += dt;
    }
    fclose(f);
    return 0;
}

//*****************************************************************************
// 获取输入参数
//*****************************************************************************
void STest_getInputParams(float32_t* outStartPos, float32_t* outStartVel,
                          float32_t* outStartAccel, float32_t* outTargetPos,
                          float32_t* outMaxVel, float32_t* outMaxAccel,
                          float32_t* outMaxDecel, float32_t* outJerkTime,
                          float32_t* outEmergencyDecel)
{
    if (outStartPos)        *outStartPos        = g_ctx.profile.currentPos;
    if (outStartVel)        *outStartVel        = g_ctx.profile.startVelocity;
    if (outStartAccel)      *outStartAccel      = g_ctx.profile.startAccel;
    if (outTargetPos)       *outTargetPos       = g_ctx.profile.targetPos;
    if (outMaxVel)          *outMaxVel          = g_ctx.profile.maxVelocity;
    if (outMaxAccel)        *outMaxAccel        = g_ctx.profile.maxAccel;
    if (outMaxDecel)        *outMaxDecel        = g_ctx.profile.maxDecel;
    if (outJerkTime)        *outJerkTime        = g_ctx.profile.jerkTime;
    if (outEmergencyDecel)  *outEmergencyDecel  = g_ctx.profile.emergencyDecel;
}

//*****************************************************************************
// 设置急停减速度（用于保存配置前同步参数）
//*****************************************************************************
void STest_setEmergencyDecel(float32_t emergencyDecel)
{
    g_ctx.profile.emergencyDecel = emergencyDecel;
}

//*****************************************************************************
// 获取轨迹是否已计算
//*****************************************************************************
int STest_isComputed(void)
{
    return g_ctx.computed;
}

// 获取急停命令状态
int STest_getIsEmergencyStop(void)
{
    return g_ctx.isEmergencyStop;
}

#endif // USE_SCURVE_PROFILE
