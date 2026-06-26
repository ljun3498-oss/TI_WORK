/**
 * @file homing_control.c
 * @brief 回零控制源文件 - 独立的回零控制模块
 * 
 * 本文件实现完整的回零控制功能，与同步控制完全解耦
 * 回零控制是基于同步控制的高级功能，需要先建立同步关系
 * 
 * 回零流程：
 * 1. 准备阶段：主轴先反向运动一段距离
 * 2. 低速寻零：按回零方向运动
 * 3. 碰撞检测：从动轴触碰碰撞点时脱开同步并停止
 * 4. 逐轴回零：逐个完成从动轴的回零
 * 5. 全部碰撞完成后，主轴停止
 * 6. 所有轴移动到各自碰撞点，设置统一预设回零值
 * 7. 重新建立同步，恢复运动参数
 */
#include "homing_control.h"
#include "sync_control.h"
#include "motion_control.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 调试日志文件
extern FILE* g_motion_debug_log;

// 简单调试输出 - 写入到日志文件
#define HOMING_DEBUG_PRINT(fmt, ...) do { \
    if(g_motion_debug_log == NULL) { \
        errno_t err = fopen_s(&g_motion_debug_log, "C:\\temp\\motion_debug.log", "w"); \
        if(err != 0 || g_motion_debug_log == NULL) { \
            fopen_s(&g_motion_debug_log, "motion_debug.log", "w"); \
        } \
    } \
    if(g_motion_debug_log != NULL) { \
        fprintf(g_motion_debug_log, "[Homing] " fmt "\n", ##__VA_ARGS__); \
        fflush(g_motion_debug_log); \
    } \
} while(0)

//=============================================================================
// 辅助函数
//=============================================================================

/**
 * @brief 检查所有轴是否无错误
 */
static bool HomingControl_checkNoErrors(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
    {
        return false;
    }
    
    SyncControl_t* sync = homing->syncControl;
    uint16_t i;

    // 检查主轴
    if(sync->masterAxis != NULL)
    {
        if(MotionAxis_isError(sync->masterAxis))
        {
            return false;
        }
    }

    // 检查所有从动轴
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis != NULL)
        {
            if(MotionAxis_isError(sync->slaveAxes[i].axis))
            {
                return false;
            }
        }
    }

    return true;
}

/**
 * @brief 获取主轴当前位置
 */
static float32_t HomingControl_getMasterPosition(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
    {
        return 0.0f;
    }
    
    SyncControl_t* sync = homing->syncControl;
    
    if(sync->masterAxis != NULL)
    {
        return sync->masterAxis->cmdPosition;
    }
    
    return sync->masterPosition;
}

/**
 * @brief 更新主轴位置
 */
static void HomingControl_updateMasterPosition(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
    {
        return;
    }
    
    SyncControl_t* sync = homing->syncControl;
    
    if(sync->masterAxis != NULL)
    {
        sync->masterPosition = sync->masterAxis->cmdPosition;
        sync->masterVelocity = sync->masterAxis->cmdVelocity;
    }
}

//=============================================================================
// 统一辅助函数（供 HomingControl_update 内部调用）
//=============================================================================

/**
 * @brief 统一判断所有轴（主轴+参与回零的从轴）是否完全停止
 * @return true=全部停止，false=有轴还在运动
 */
static bool HomingControl_allAxesStopped(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
        return true;

    SyncControl_t* sync = homing->syncControl;

    // 调试：打印所有轴状态
    HOMING_DEBUG_PRINT("[allAxesStopped] Checking: state=%d", homing->state);

    if(sync->masterAxis != NULL)
    {
        AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
        float32_t mcv = fabsf(sync->masterAxis->cmdVelocity);
        float32_t mav = fabsf(sync->masterAxis->actVelocity);
        HOMING_DEBUG_PRINT("[allAxesStopped] Master: state=%d, cmdVel=%.2f, actVel=%.2f",
               ms, sync->masterAxis->cmdVelocity, sync->masterAxis->actVelocity);
        if(ms != AXIS_STATE_STANDBY && ms != AXIS_STATE_DISABLED)
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Master NOT stopped: state=%d", ms);
            return false;
        }
        if(mcv > 0.1f || mav > 0.1f)
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Master NOT stopped: cmdVel=%.2f, actVel=%.2f", mcv, mav);
            return false;
        }
    }

    uint16_t i;
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(!homing->activeSlaveAxes[i])
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Slave[%d]: skipped (not active)", i);
            continue;
        }
        if(sync->slaveAxes[i].axis == NULL)
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Slave[%d]: skipped (NULL)", i);
            continue;
        }

        AxisState_e ss = MotionAxis_getAxisState(sync->slaveAxes[i].axis);
        float32_t scv = fabsf(sync->slaveAxes[i].axis->cmdVelocity);
        float32_t sav = fabsf(sync->slaveAxes[i].axis->actVelocity);
        HOMING_DEBUG_PRINT("[allAxesStopped] Slave[%d]: state=%d, cmdVel=%.2f, actVel=%.2f, active=%d, homingState=%d",
               i, ss, sync->slaveAxes[i].axis->cmdVelocity, sync->slaveAxes[i].axis->actVelocity,
               homing->activeSlaveAxes[i], homing->collisionInfo[i].state);
        if(ss != AXIS_STATE_STANDBY && ss != AXIS_STATE_DISABLED)
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Slave[%d] NOT stopped: state=%d", i, ss);
            return false;
        }
        if(scv > 0.1f || sav > 0.1f)
        {
            HOMING_DEBUG_PRINT("[allAxesStopped] Slave[%d] NOT stopped: cmdVel=%.2f, actVel=%.2f", i, scv, sav);
            return false;
        }
    }
    HOMING_DEBUG_PRINT("[allAxesStopped] All axes STOPPED!");
    return true;
}

/**
 * @brief 统一处理单个轴的 COLLISION_ACTIVE 状态
 *        记录位置 → 标记 isHomed → 切换 COLLISION_ACKNOWLEDGED → 同步脱开 → completedCount++
 * @return true=处理了一个碰撞，false=该轴无需处理
 */
static bool HomingControl_processOneCollision(HomingControl_t* homing, uint16_t i)
{
    if(homing == NULL || homing->syncControl == NULL)
        return false;
    if(!homing->activeSlaveAxes[i])
        return false;
    if(homing->collisionInfo[i].state == COLLISION_ACKNOWLEDGED)
        return false;
    if(homing->collisionInfo[i].state != COLLISION_ACTIVE)
        return false;

    SyncControl_t* sync = homing->syncControl;
    SyncAxis_t* slave = &sync->slaveAxes[i];

    float32_t pos = (slave->axis->numMotors > 0) ?
        slave->axis->motors[0].actPosition : slave->axis->actPosition;

    slave->homePosition = pos;
    slave->isHomed = true;
    homing->collisionInfo[i].state = COLLISION_ACKNOWLEDGED;

    homing->collisionAtSpeed = fabsf(slave->axis->cmdVelocity);
    homing->lowSpeedCollision = (homing->collisionAtSpeed < 10.0f);

    SyncControl_decoupleSlaveAxis(sync, i, true);

    if(homing->completedCount < homing->numActiveSlaveAxes)
        homing->completedCount++;

    HOMING_DEBUG_PRINT("[Homing] processCollision[%d]: pos=%.2f, vel=%.2f, completedCount=%d,numActiveSlaveAxes=%d",
           i, pos, homing->collisionAtSpeed, homing->completedCount,homing->numActiveSlaveAxes);
    return true;
}

/**
 * @brief 统一处理所有轴的 ACTIVE 碰撞（遍历调用 processOneCollision）
 * @return true=有碰撞被处理
 */
static bool HomingControl_processAllActiveCollisions(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
        return false;

    bool handled = false;
    uint16_t i;
    for(i = 0; i < homing->syncControl->numSlaveAxes; i++)
    {
        if(HomingControl_processOneCollision(homing, i))
            handled = true;
    }
    return handled;
}

/**
 * @brief 统一急停所有轴并清除同步跟随标志
 *        用于非 SEARCH_HOME/SEARCH_LOW/COLLISION_ONE 状态下的异常碰撞处理
 */
static void HomingControl_emergencyStopAllAndDecouple(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
        return;

    SyncControl_t* sync = homing->syncControl;
    uint16_t i;

    if(sync->masterAxis != NULL)
        MotionAxis_emergencyStop(sync->masterAxis);

    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis == NULL)
            continue;
        sync->slaveAxes[i].syncEnabled = false;
        MotionAxis_setSyncing(sync->slaveAxes[i].axis, false);
        MotionAxis_emergencyStop(sync->slaveAxes[i].axis);
    }
}

/**
 * @brief 统一设置所有轴的回零位置（SETTING_HOME / REESTABLISHING_SYNC 共用）
 */
static void HomingControl_setAllAxesHomePosition(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL)
        return;

    SyncControl_t* sync = homing->syncControl;
    uint16_t i;
    float32_t homePos = homing->postHomeTarget;

    if(sync->masterAxis != NULL)
    {
        sync->masterAxis->cmdPosition = homePos;
        sync->masterAxis->actPosition = homePos;
        if(sync->masterAxis->numMotors > 0 && sync->masterAxis->motors[0].enable)
            sync->masterAxis->motors[0].actPosition = homePos * sync->masterAxis->motors[0].gearRatio;
        sync->masterPosition = homePos;
        sync->masterCmdPosition = homePos;
        sync->masterCmdVelocity = 0.0f;
        sync->masterAxis->axisState = AXIS_STATE_STANDBY;
        sync->masterAxis->profile.isActive = false;
        sync->masterAxis->isStopped = true;
        sync->masterAxis->cmdVelocity = 0.0f;
        sync->masterAxis->actVelocity = 0.0f;
        ProfileBuffer_clear(&sync->masterAxis->posBuffer);
    }

    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis == NULL)
            continue;
        sync->slaveAxes[i].axis->cmdPosition = homePos;
        sync->slaveAxes[i].axis->actPosition = homePos;
        if(sync->slaveAxes[i].axis->numMotors > 0 && sync->slaveAxes[i].axis->motors[0].enable)
            sync->slaveAxes[i].axis->motors[0].actPosition = homePos * sync->slaveAxes[i].axis->motors[0].gearRatio;
        sync->slaveAxes[i].axis->axisState = AXIS_STATE_STANDBY;
        sync->slaveAxes[i].axis->profile.isActive = false;
        sync->slaveAxes[i].axis->isStopped = true;
        sync->slaveAxes[i].axis->cmdVelocity = 0.0f;
        sync->slaveAxes[i].axis->actVelocity = 0.0f;
        ProfileBuffer_clear(&sync->slaveAxes[i].axis->posBuffer);
    }
}

//=============================================================================
// 动态创建/销毁
//=============================================================================

/**
 * @brief 创建回零控制对象
 */
HomingControl_t* HomingControl_create(SyncControl_t* syncControl, float32_t profileUpdateTs)
{
    HomingControl_t* homing = (HomingControl_t*)malloc(sizeof(HomingControl_t));
    
    if(homing == NULL)
    {
        return NULL;
    }
    
    HomingControl_init(homing, syncControl, profileUpdateTs);
    
    return homing;
}

/**
 * @brief 销毁回零控制对象
 */
void HomingControl_destroy(HomingControl_t* homing)
{
    if(homing != NULL)
    {
        free(homing);
    }
}

//=============================================================================
// 初始化和配置
//=============================================================================

/**
 * @brief 初始化回零控制对象
 */
void HomingControl_init(HomingControl_t* homing, SyncControl_t* syncControl, float32_t profileUpdateTs)
{
    uint16_t i;
    
    if(homing == NULL)
    {
        return;
    }
    
    // 清零结构体
    memset(homing, 0, sizeof(HomingControl_t));
    
    // 设置关联
    homing->syncControl = syncControl;
    
    // 设置默认参数
    homing->reverseDist = 50.0f;           // 默认反向距离
    homing->lowSpeed = 10.0f;              // 默认低速
    homing->homeSpeed = 5.0f;              // 默认寻零速度
    homing->emergencyDecel = 300.0f;       // 默认急停减速度
    homing->direction = -1;                 // 默认负方向
    homing->postHomeTarget = 0.0f;         // 默认回零后目标位置
    homing->useDecelSwitch = false;        // 默认不使用减速开关

    // 默认状态
    homing->state = HOMING_STATE_IDLE;

    // 默认位置容忍度
    homing->positionTolerance = 0.1f;

    // 初始化碰撞信息数组
    for(i = 0; i < 8; i++)
    {
        homing->collisionInfo[i].state = COLLISION_INACTIVE;
        homing->collisionInfo[i].pinState = false;
        homing->collisionInfo[i].position = 0.0f;
        homing->collisionInfo[i].count = 0;
    }
    homing->totalCollisionCount = 0;

    // 减速开关状态（全局单一）
    homing->decelSwitchTriggered = false;
    homing->decelSwitchPinState = false;
    homing->masterDecelingToLowSpeed = false;
    
    // 时间戳
    homing->profileUpdateTs = profileUpdateTs;
    homing->lastUpdateTime = 0.0f;
    
    HOMING_DEBUG_PRINT("[HomingControl] Initialized with profileUpdateTs=%.6f", profileUpdateTs);
}

/**
 * @brief 配置回零参数
 */
void HomingControl_config(HomingControl_t* homing, HomingControlConfig_t* config)
{
    if(homing == NULL || config == NULL)
    {
        return;
    }
    
    homing->reverseDist = config->reverseDist;
    homing->lowSpeed = config->lowSpeed;
    homing->homeSpeed = config->homeSpeed;
    homing->emergencyDecel = config->emergencyDecelMult * 100.0f;  // 假设默认加速度为100
    homing->direction = config->direction;
    homing->postHomeTarget = config->postHomeTarget;
    homing->useDecelSwitch = config->useDecelSwitch;
    homing->positionTolerance = config->positionTolerance;
    
    HOMING_DEBUG_PRINT("[HomingControl] Configured: reverseDist=%.2f, lowSpeed=%.2f, homeSpeed=%.2f, direction=%d",
           homing->reverseDist, homing->lowSpeed, homing->homeSpeed, homing->direction);
}

/**
 * @brief 配置回零参数（简化版本）
 */
void HomingControl_configSimple(HomingControl_t* homing, 
                                float32_t reverseDist, 
                                float32_t lowSpeed, 
                                float32_t homeSpeed,
                                float32_t emergencyDecelMult,
                                int8_t direction,
                                float32_t postHomeTarget,
                                bool useDecelSwitch)
{
    if(homing == NULL)
    {
        return;
    }
    
    homing->reverseDist = reverseDist;
    homing->lowSpeed = lowSpeed;
    homing->homeSpeed = homeSpeed;
    homing->emergencyDecel = emergencyDecelMult * 100.0f;  // 假设默认加速度为100
    homing->direction = direction;
    homing->postHomeTarget = postHomeTarget;
    homing->useDecelSwitch = useDecelSwitch;
    
    HOMING_DEBUG_PRINT("[HomingControl] Configured (simple): reverseDist=%.2f, lowSpeed=%.2f, homeSpeed=%.2f, direction=%d",
           homing->reverseDist, homing->lowSpeed, homing->homeSpeed, homing->direction);
}

/**
 * @brief 设置位置误差容忍度
 */
void HomingControl_setPositionTolerance(HomingControl_t* homing, float32_t tolerance)
{
    if(homing == NULL)
    {
        return;
    }
    homing->positionTolerance = tolerance;
}

/**
 * @brief 获取位置误差容忍度
 */
float32_t HomingControl_getPositionTolerance(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return 0.1f;
    }
    return homing->positionTolerance;
}

//=============================================================================
// 同步控制关联
//=============================================================================

/**
 * @brief 关联同步控制对象
 */
void HomingControl_attachSyncControl(HomingControl_t* homing, SyncControl_t* syncControl)
{
    if(homing == NULL)
    {
        return;
    }
    homing->syncControl = syncControl;
}

/**
 * @brief 获取关联的同步控制对象
 */
SyncControl_t* HomingControl_getSyncControl(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return NULL;
    }
    return homing->syncControl;
}

//=============================================================================
// 回零操作
//=============================================================================

/**
 * @brief 启动同步碰撞回零流程
 */
bool HomingControl_start(HomingControl_t* homing, float32_t postHomeTarget)
{
    if(homing == NULL || homing->syncControl == NULL)
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: Null pointer");
        return false;
    }
    
    SyncControl_t* sync = homing->syncControl;
    uint16_t i;

    HOMING_DEBUG_PRINT("[HomingControl] Starting collision homing process...");

    // ========== 前提条件检查 ==========
    // 必须先建立同步才能启动同步回零
    if(!sync->syncEnable)
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: Sync not enabled. Please establish sync first.");
        return false;
    }

    // 同步状态必须是SYNC_STATE_SYNCING或SYNC_STATE_STOPPED或SYNC_STATE_IDLE
    if(sync->syncState != SYNC_STATE_SYNCING &&
       sync->syncState != SYNC_STATE_STOPPED &&
       sync->syncState != SYNC_STATE_IDLE)
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: Sync not established. Current state: %d", sync->syncState);
        return false;
    }

    HOMING_DEBUG_PRINT("[HomingControl] StartHoming: syncState=%d, syncEnable=%d, numSlaveAxes=%d",
           sync->syncState, sync->syncEnable, sync->numSlaveAxes);

    // 检查是否有从动轴
    if(sync->numSlaveAxes == 0)
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: No slave axes configured");
        return false;
    }

    // 检查是否有错误
    if(!HomingControl_checkNoErrors(homing))
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: Some axes have errors");
        return false;
    }

    // 检查是否有至少一个从动轴使能了同步
    uint8_t enabledCount = 0;
    homing->numActiveSlaveAxes = 0;

    // 首先检查所有轴的状态（用于调试）
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        uint16_t axisState = (sync->slaveAxes[i].axis != NULL) ?
            MotionAxis_getAxisState(sync->slaveAxes[i].axis) : 0;
        bool hasError = (sync->slaveAxes[i].axis != NULL) ?
            MotionAxis_isError(sync->slaveAxes[i].axis) : false;
        HOMING_DEBUG_PRINT("[HomingControl] StartHoming: slave[%d] syncEnabled=%d, axisState=%d, hasError=%d",
               i, sync->slaveAxes[i].syncEnabled, axisState, hasError);

        // 记录参与回零的轴
        homing->activeSlaveAxes[i] = 0;
        if(sync->slaveAxes[i].syncEnabled)
        {
            homing->activeSlaveAxes[i] = 1;
            homing->numActiveSlaveAxes++;
            enabledCount++;
        }
    }

    HOMING_DEBUG_PRINT("[HomingControl] StartHoming: enabledCount=%d, numActiveSlaveAxes=%d", enabledCount, homing->numActiveSlaveAxes);

    // 至少需要一个从动轴参与同步回零
    if(enabledCount == 0)
    {
        HOMING_DEBUG_PRINT("[HomingControl] ERROR: No slave axes enabled for sync homing");
        return false;
    }

    HOMING_DEBUG_PRINT("[HomingControl] StartHoming: numActiveSlaveAxes=%d", homing->numActiveSlaveAxes);

    // 更新主轴位置
    HomingControl_updateMasterPosition(homing);

    HOMING_DEBUG_PRINT("[HomingControl] StartHoming: masterPosition=%.2f, cmdPosition=%.2f, actPosition=%.2f",
           sync->masterPosition,
           (sync->masterAxis != NULL) ? sync->masterAxis->cmdPosition : 0.0f,
           (sync->masterAxis != NULL) ? sync->masterAxis->actPosition : 0.0f);

    // 设置回零后统一目标位置
    homing->postHomeTarget = postHomeTarget;

    // 注意：同步回零启动的条件是主轴与从动轴已经同步了
    // 因此不需要在这里调用establishSync再次建立同步
    // 只需要确保参与回零的从动轴的syncEnabled标志是true

    // 恢复参与回零的从动轴的syncEnabled标志
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(homing->activeSlaveAxes[i])
        {
            sync->slaveAxes[i].syncEnabled = true;
            HOMING_DEBUG_PRINT("[HomingControl] Ensuring syncEnabled for slave[%d]", i);
        }
    }

    // 不再调用establishSync，因为同步已经建立

    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        HOMING_DEBUG_PRINT("[HomingControl] StartHoming: slave[%d] cmdPosition=%.2f, actPosition=%.2f",
               i,
               (sync->slaveAxes[i].axis != NULL) ? sync->slaveAxes[i].axis->cmdPosition : 0.0f,
               (sync->slaveAxes[i].axis != NULL) ? sync->slaveAxes[i].axis->actPosition : 0.0f);
    }

    // ========== 保存运动参数 ==========
    if(sync->masterAxis != NULL && !homing->motionParamsSaved)
    {
        homing->savedMaxVelocity = sync->masterAxis->profile.maxVelocity;
        homing->savedMaxAccel = sync->masterAxis->profile.maxAccel;
        homing->savedMaxDecel = sync->masterAxis->profile.maxDecel;
        homing->motionParamsSaved = true;
        HOMING_DEBUG_PRINT("[HomingControl] Motion params saved: maxVel=%.2f, maxAccel=%.2f, maxDecel=%.2f",
               homing->savedMaxVelocity, homing->savedMaxAccel, homing->savedMaxDecel);
    }

    // ========== 重置所有从动轴的回零状态 ==========
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        // 重置HomingControl中独立的碰撞信息
        homing->collisionInfo[i].state = COLLISION_INACTIVE;
        homing->collisionInfo[i].pinState = false;
        
        // 同步控制中的回零状态（保留）
        sync->slaveAxes[i].isHomed = false;
        sync->slaveAxes[i].homePosition = 0.0f;

        // 记录每个从动轴的起始位置
        if(sync->slaveAxes[i].axis != NULL)
        {
            sync->slaveAxes[i].axis->homingStartPosition = sync->slaveAxes[i].axis->cmdPosition;
        }
    }

    // ========== 重置回零状态 ==========
    homing->currentAxis = 0;
    homing->completedCount = 0;
    homing->allHomed = false;
    homing->searchDone = false;
    homing->reverseMoveStarted = false;
    homing->reverseTargetPos = 0.0f;
    homing->stepMoveToZeroPendingSet = false;
    homing->moveTimeout = 0;
    homing->lastError = HOMING_ERROR_NONE;

    // 重置低速碰撞标志
    homing->lowSpeedCollision = false;
    homing->collisionAtSpeed = 0.0f;

    // 重置减速开关状态（全局）
    homing->decelSwitchTriggered = false;
    homing->decelSwitchPinState = false;
    homing->masterDecelingToLowSpeed = false;

    // 更新回零状态（根据是否使用减速开关决定首个搜索阶段）
    if(homing->useDecelSwitch)
    {
        homing->state = HOMING_STATE_SEARCH_HOME;
    }
    else
    {
        homing->state = HOMING_STATE_SEARCH_LOW;
    }
    homing->homingCount++;

    HOMING_DEBUG_PRINT("[HomingControl] Collision homing started: postHomeTarget=%.2f, direction=%d, activeSlaveAxes=%d, homingState=%d",
           postHomeTarget, homing->direction, homing->numActiveSlaveAxes, homing->state);

    return true;
}

/**
 * @brief 取消回零操作
 */
void HomingControl_cancel(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return;
    }
    
    HOMING_DEBUG_PRINT("[HomingControl] Cancelling homing...");

    if(homing->syncControl != NULL)
    {
        SyncControl_t* sync = homing->syncControl;
        uint16_t i;

        // 停止所有轴
        if(sync->masterAxis != NULL)
        {
            MotionAxis_stop(sync->masterAxis);
        }

        for(i = 0; i < sync->numSlaveAxes; i++)
        {
            if(sync->slaveAxes[i].axis != NULL)
            {
                MotionAxis_stop(sync->slaveAxes[i].axis);
            }
        }
    }

    // 重置回零状态
    homing->currentAxis = 0;
    homing->completedCount = 0;
    homing->allHomed = false;
    homing->state = HOMING_STATE_IDLE;

    HOMING_DEBUG_PRINT("[HomingControl] Homing cancelled");
}

//=============================================================================
// 状态更新 - 核心状态机
//=============================================================================

/**
 * @brief 更新回零状态机（核心函数）
 */
HomingState_e HomingControl_update(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return HOMING_STATE_IDLE;
    }
    
    // 如果没有关联同步控制对象，返回空闲状态
    if(homing->syncControl == NULL)
    {
        return HOMING_STATE_IDLE;
    }
    
    SyncControl_t* sync = homing->syncControl;
    uint16_t i;
    
    // 只在回零相关状态时处理
    if(homing->state == HOMING_STATE_IDLE)
    {
        return homing->state;
    }
    
    // 单步回零控制 - 如果使能了单步模式且处于等待确认状态，则不执行状态切换
    if(homing->stepEnable && homing->stepPending)
    {
        HOMING_DEBUG_PRINT("[Homing] Step pending, waiting for confirm (state=%d)", homing->state);
        return homing->state;
    }
    
    // 更新主轴位置
    HomingControl_updateMasterPosition(homing);
    
    switch(homing->state)
    {
        HOMING_DEBUG_PRINT("[Homing] switch: processing state=%d", homing->state);
        
        case HOMING_STATE_PREPARE:
        {
            // ========== 准备阶段：反向移动 ==========
            if(sync->masterAxis == NULL)
                break;

            // 反向运动中如有碰撞 → 急停所有轴并进入 ERROR
            bool reverseCollision = false;
            for(uint16_t j = 0; j < sync->numSlaveAxes; j++)
            {
                if(homing->activeSlaveAxes[j] &&
                   (homing->collisionInfo[j].pinState || homing->collisionInfo[j].state == COLLISION_ACTIVE))
                {
                    reverseCollision = true;
                    break;
                }
            }
            if(reverseCollision)
            {
                HomingControl_emergencyStopAllAndDecouple(homing);
                homing->lastError = HOMING_ERROR_REVERSE_COLLISION;
                homing->state = HOMING_STATE_ERROR;
                HOMING_DEBUG_PRINT("[Homing] PREPARE: reverse collision detected, ERROR");
                break;
            }

            // 首次进入：下发反向运动指令
            if(!homing->reverseMoveStarted)
            {
                homing->reverseTargetPos = sync->masterPosition - homing->direction * homing->reverseDist;
                MotionAxis_moveAbsolute(sync->masterAxis, homing->reverseTargetPos);
                homing->reverseMoveStarted = true;
                HOMING_DEBUG_PRINT("[Homing] PREPARE: reverse to %.2f", homing->reverseTargetPos);
                break;
            }

            // 等待主轴到位停止
            AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
            float32_t posErr = fabsf(sync->masterAxis->actPosition - homing->reverseTargetPos);
            bool atTarget = (posErr <= homing->positionTolerance) &&
                            (fabsf(sync->masterAxis->cmdVelocity) < 0.1f) &&
                            (fabsf(sync->masterAxis->actVelocity) < 0.1f) &&
                            (ms == AXIS_STATE_STANDBY || ms == AXIS_STATE_DISABLED);

            if(!atTarget)
            {
                HOMING_DEBUG_PRINT("[Homing] PREPARE: waiting, posErr=%.3f, state=%d", posErr, ms);
                break;
            }

            homing->reverseMoveStarted = false;

            if(homing->stepEnable)
            {
                homing->stepFromState = HOMING_STATE_PREPARE;
                homing->stepPending = true;
                break;
            }

            // 决定下一个阶段：使用减速开关 → SEARCH_HOME，否则 → SEARCH_LOW
            if(homing->useDecelSwitch)
            {
                homing->state = HOMING_STATE_SEARCH_HOME;
                HOMING_DEBUG_PRINT("[Homing] PREPARE done → SEARCH_HOME");
            }
            else
            {
                homing->state = HOMING_STATE_SEARCH_LOW;
                HOMING_DEBUG_PRINT("[Homing] PREPARE done → SEARCH_LOW");
            }
            break;
        }

        case HOMING_STATE_SEARCH_HOME:
        {
            // ========== 阶段1：高速寻零（使用减速开关时）==========
            // 主轴以 homeSpeed 高速运动
            // 减速开关触发后 → 主轴降速到 lowSpeed → 切换 SEARCH_LOW
            // 注意：本状态不执行同步脱开，脱开在 SEARCH_LOW 中处理

            HOMING_DEBUG_PRINT("[Homing] SEARCH_HOME: entered, useDecelSwitch=%d, numSlaveAxes=%d",
                   homing->useDecelSwitch, sync->numSlaveAxes);

            if(!homing->useDecelSwitch)
            {
                // 不使用减速开关时直接跳过
                homing->state = HOMING_STATE_SEARCH_LOW;
                HOMING_DEBUG_PRINT("[Homing] SEARCH_HOME: no decel switch, skip to SEARCH_LOW");
                break;
            }

            if(sync->masterAxis == NULL)
                break;

            AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);

            // ----- 主轴寻零运动控制 -----
            if(!homing->decelSwitchTriggered)  // 减速开关未触发时继续高速运动
            {
                if(ms == AXIS_STATE_STANDBY || ms == AXIS_STATE_DISABLED || ms == AXIS_STATE_MOVING)
                {
                    float32_t posErr = fabsf(sync->masterAxis->profile.targetPos - sync->masterAxis->actPosition);
                    if(posErr < HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING / 3.0f)
                    {
                        float32_t targetSpeed = homing->homeSpeed;  // 高速
                        float32_t searchTarget = sync->masterPosition + homing->direction * HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING;
                        MotionAxis_setMotionParams(sync->masterAxis, targetSpeed,
                                                 sync->masterAxis->profile.maxAccel,
                                                 sync->masterAxis->profile.maxDecel);
                        MotionAxis_moveAbsolute(sync->masterAxis, searchTarget);
                        HOMING_DEBUG_PRINT("[Homing] SEARCH_HOME: high-speed=%.2f to %.2f",
                               homing->direction, targetSpeed, searchTarget);
                    }
                }
            }

            // ----- 减速开关触发检测 -----
            // 注意：减速开关是全局的，只需检测一次
            if(homing->decelSwitchTriggered)
            {
                homing->decelSwitchTriggered = false;
                homing->masterDecelingToLowSpeed = true;
                homing->state = HOMING_STATE_SEARCH_LOW;
                HOMING_DEBUG_PRINT("[Homing] SEARCH_HOME: global decel switch triggered!");
            }
            break;
        }

        case HOMING_STATE_SEARCH_LOW:
        {
            // ========== 阶段2：低速寻零 + 碰撞检测（不使用减速开关时直接进入）
            // 主轴以 lowSpeed 寻零，检测碰撞 → COLLISION_ONE
            if(homing->searchDone)
            {
                HOMING_DEBUG_PRINT("[Homing] SEARCH_LOW: searchDone=true, skip");
                break;
            }

            // 统一处理所有 ACTIVE 碰撞
            HomingControl_processAllActiveCollisions(homing);

            // 检查是否所有轴都完成碰撞
            if(homing->completedCount >= homing->numActiveSlaveAxes)
            {
                if(!HomingControl_allAxesStopped(homing))
                {
                    if(sync->masterAxis != NULL)
                    {
                        AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
                        if(ms == AXIS_STATE_MOVING)
                            MotionAxis_emergencyStop(sync->masterAxis);
                        else if(ms == AXIS_STATE_STANDBY || ms == AXIS_STATE_DISABLED)
                            ProfileBuffer_clear(&sync->masterAxis->posBuffer);
                    }
                    HOMING_DEBUG_PRINT("[Homing] SEARCH_LOW: all done, waiting for stop");
                    break;
                }
                homing->searchDone = true;
                homing->state = HOMING_STATE_MOVE_TO_ZERO;
                HOMING_DEBUG_PRINT("[Homing] SEARCH_LOW → MOVE_TO_ZERO (all done)");
                break;
            }

            // 主轴继续低速寻零
            if(sync->masterAxis != NULL && !homing->searchDone)
            {
                AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
                if(ms == AXIS_STATE_STANDBY || ms == AXIS_STATE_DISABLED || ms == AXIS_STATE_MOVING)
                {
                    float32_t posErr = fabsf(sync->masterAxis->profile.targetPos - sync->masterAxis->actPosition);
                    if(posErr < HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING / 3.0f||homing->masterDecelingToLowSpeed)
                    {
                        float32_t targetSpeed = homing->lowSpeed;
                        float32_t searchTarget = sync->masterPosition + homing->direction * HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING;
                        MotionAxis_setMotionParams(sync->masterAxis, targetSpeed,
                                                 sync->masterAxis->profile.maxAccel,
                                                 sync->masterAxis->profile.maxDecel);
                        MotionAxis_moveAbsolute(sync->masterAxis, searchTarget);
                        homing->masterDecelingToLowSpeed=false;
                        HOMING_DEBUG_PRINT("[Homing] SEARCH_LOW: search %.2f to %.2f", targetSpeed, searchTarget);
                    }
                }
            }
            break;
        }

        case HOMING_STATE_COLLISION_ONE:
        {
            // ========== 阶段2b/3：碰撞处理
            // - 碰撞信号触发 → 该轴同步脱开
            // - 最后轴碰撞 → 主轴急停 → 切换 COLLISION_ALL
            // - 主轴继续寻零运动（lowSpeed），触发其他轴碰撞

            // 统一处理所有 ACTIVE 碰撞（记录位置、isHomed、decouple、completedCount++）
            HomingControl_processAllActiveCollisions(homing);

            // 检测碰撞信号：非最后一个轴 → 同步脱开（不停止主轴）；最后一个轴 → 主轴急停
            for(i = 0; i < sync->numSlaveAxes; i++)
            {
                if(!homing->activeSlaveAxes[i])
                    continue;
                if(homing->collisionInfo[i].state != COLLISION_INACTIVE)
                    continue;
                if(sync->slaveAxes[i].axis == NULL || !sync->slaveAxes[i].syncEnabled)
                    continue;

                if(!homing->collisionInfo[i].pinState)
                    continue;

                uint16_t remaining = homing->numActiveSlaveAxes - homing->completedCount - 1;
                bool isLast = (remaining == 0);

                if(!isLast)
                {
                    SyncControl_decoupleSlaveAxis(sync, i, true);
                    HOMING_DEBUG_PRINT("[Homing] COLLISION_ONE[%d]: non-last, decoupled", i);
                    continue;
                }

                // 最后轴碰撞：设置 ACTIVE → 统一处理会触发 decouple
                float32_t pos = (sync->slaveAxes[i].axis->numMotors > 0) ?
                    sync->slaveAxes[i].axis->motors[0].actPosition :
                    sync->slaveAxes[i].axis->actPosition;
                homing->collisionInfo[i].state = COLLISION_ACTIVE;
                homing->collisionInfo[i].position = pos;
                HOMING_DEBUG_PRINT("[Homing] COLLISION_ONE[%d]: LAST collision, pos=%.2f", i, pos);
            }

            // 主轴低速寻零运动（直到所有轴完成碰撞）
            if(sync->masterAxis != NULL && !homing->searchDone &&
               homing->numActiveSlaveAxes > homing->completedCount)
            {
                AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
                if(ms == AXIS_STATE_STANDBY || ms == AXIS_STATE_DISABLED)
                {
                    float32_t posErr = fabsf(sync->masterAxis->profile.targetPos - sync->masterAxis->actPosition);
                    if(posErr < HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING / 3.0f)
                    {
                        float32_t targetSpeed = homing->lowSpeed;
                        float32_t searchTarget = sync->masterPosition + homing->direction * HOMING_DISTANCE_FOR_EACH_SEARCH_MOVEING;
                        MotionAxis_setMotionParams(sync->masterAxis, targetSpeed,
                                                 sync->masterAxis->profile.maxAccel,
                                                 sync->masterAxis->profile.maxDecel);
                        MotionAxis_moveAbsolute(sync->masterAxis, searchTarget);
                        HOMING_DEBUG_PRINT("[Homing] COLLISION_ONE: master search %.2f to %.2f", targetSpeed, searchTarget);
                    }
                }
            }

            // 检查是否所有轴都完成碰撞
            if(homing->completedCount >= homing->numActiveSlaveAxes)
            {
                if(!HomingControl_allAxesStopped(homing))
                {
                    // 主轴急停
                    if(sync->masterAxis != NULL)
                    {
                        AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
                        if(ms == AXIS_STATE_MOVING || ms == AXIS_STATE_STOPPING)
                            MotionAxis_emergencyStop(sync->masterAxis);
                    }
                    HOMING_DEBUG_PRINT("[Homing] COLLISION_ONE: all done, waiting for stop");
                    break;
                }
                homing->searchDone = true;

                if(homing->stepEnable)
                {
                    homing->stepFromState = HOMING_STATE_COLLISION_ONE;
                    homing->stepPending = true;
                    break;
                }
                homing->state = HOMING_STATE_COLLISION_ALL;
                HOMING_DEBUG_PRINT("[Homing] COLLISION_ONE done → COLLISION_ALL");
            }
            break;
        }
        
        case HOMING_STATE_COLLISION_ALL:
        {
            // ========== 阶段4：所有轴碰撞完成，等待主轴停止
            // 统一处理 ACTIVE 碰撞，然后等待主轴停止 → WAIT_ALL_STOPPED
            HomingControl_processAllActiveCollisions(homing);

            if(!HomingControl_allAxesStopped(homing))
            {
                if(sync->masterAxis != NULL)
                {
                    AxisState_e ms = MotionAxis_getAxisState(sync->masterAxis);
                    if(ms == AXIS_STATE_MOVING || ms == AXIS_STATE_STOPPING)
                        MotionAxis_emergencyStop(sync->masterAxis);
                }
                HOMING_DEBUG_PRINT("[Homing] COLLISION_ALL: waiting for stop");
                break;
            }
            homing->state = HOMING_STATE_WAIT_ALL_STOPPED;
            HOMING_DEBUG_PRINT("[Homing] COLLISION_ALL → WAIT_ALL_STOPPED");
            break;
        }

        case HOMING_STATE_WAIT_ALL_STOPPED:
        {
            // ========== 阶段5：等待所有轴完全停止 → MOVE_TO_ZERO
            HomingControl_processAllActiveCollisions(homing);

            if(!HomingControl_allAxesStopped(homing))
            {
                HOMING_DEBUG_PRINT("[Homing] WAIT_ALL_STOPPED: waiting...");
                break;
            }
            homing->state = HOMING_STATE_MOVE_TO_ZERO;
            HOMING_DEBUG_PRINT("[Homing] WAIT_ALL_STOPPED → MOVE_TO_ZERO");
            break;
        }
        
        case HOMING_STATE_MOVE_TO_ZERO:
        {
            HOMING_DEBUG_PRINT("[Homing] MOVE_TO_ZERO - checking all axes");
            
            if(homing->stepEnable && homing->stepPending)
            {
                break;
            }

            // 遍历所有从动轴，检查是否需要执行移动
            for(int j = 0; j < sync->numSlaveAxes; j++)
            {
                SyncAxis_t* slave = &sync->slaveAxes[j];
                
                // 只处理已经完成减速（状态为STANDBY）的从动轴
                if(slave->axis != NULL && 
                   homing->collisionInfo[j].state == COLLISION_ACKNOWLEDGED &&
                   slave->axis->axisState == AXIS_STATE_STANDBY)
                {
                    float32_t currentPos = slave->axis->cmdPosition;
                    float32_t targetPos = slave->homePosition;
                    float32_t targetSpeed = homing->lowSpeed;
                    // 检查是否需要移动（距离大于tolerance）
                    if(fabsf(currentPos - targetPos) > homing->positionTolerance)
                    {
                        // 检查该轴是否已经在移动到目标（通过检查targetPosition）
                        // 如果targetPosition已经是目标位置，说明已经执行过移动
                        if(fabsf(slave->axis->targetPosition - targetPos) > homing->positionTolerance)
                        {
                            // 使用正常的加速度和减速度（而不是使用速度值作为减速度）
                            MotionAxis_setMotionParams(slave->axis, targetSpeed, sync->masterAxis->profile.maxAccel,sync->masterAxis->profile.maxDecel);
                            MotionAxis_moveAbsolute(slave->axis, targetPos);
                            HOMING_DEBUG_PRINT("[Homing] MOVE_TO_ZERO - axis %d from %.2f to %.2f, targetPos=%.2f, state=%d", 
                                j, currentPos, targetPos, slave->axis->targetPosition, slave->axis->axisState);
                        }
                        else
                        {
                            HOMING_DEBUG_PRINT("[Homing] MOVE_TO_ZERO - axis %d already has targetPosition=%.2f, state=%d, cmdVel=%.2f", 
                                j, slave->axis->targetPosition, slave->axis->axisState, slave->axis->cmdVelocity);
                        }
                        // 否则说明已经执行过移动，等待其到达目标
                    }
                    else
                    {
                        // 位置已经在容差范围内，确保状态正确
                        if(slave->axis->axisState == AXIS_STATE_MOVING || slave->axis->axisState == AXIS_STATE_STOPPING)
                        {
                            slave->axis->axisState = AXIS_STATE_STANDBY;
                            slave->axis->cmdVelocity = 0.0f;
                            slave->axis->actVelocity = 0.0f;
                        }
                    }
                }
            }
            
            // 检查所有轴是否都到达目标且停止
            bool allAtTarget = true;
            for(int j = 0; j < sync->numSlaveAxes; j++)
            {
                SyncAxis_t* slave = &sync->slaveAxes[j];
                
                if(slave->axis != NULL && homing->collisionInfo[j].state == COLLISION_ACKNOWLEDGED)
                {
                    AxisState_e axisState = MotionAxis_getAxisState(slave->axis);
                    float32_t currentPos = slave->axis->cmdPosition;
                    float32_t targetPos = slave->homePosition;
                    float32_t currentVel = slave->axis->cmdVelocity;
                    
                    if(axisState == AXIS_STATE_MOVING || axisState == AXIS_STATE_STOPPING)
                    {
                        allAtTarget = false;
                    }
                    else if(fabsf(currentVel) > 0.1f)
                    {
                        allAtTarget = false;
                    }
                    else if(fabsf(currentPos - targetPos) > 0.5f)
                    {
                        allAtTarget = false;
                    }
                }
            }
            
            if(allAtTarget)
            {
                HOMING_DEBUG_PRINT("[Homing] MOVE_TO_ZERO - all axes at target");
                
                if(homing->stepEnable)
                {
                    homing->stepFromState = HOMING_STATE_MOVE_TO_ZERO;
                    homing->stepPending = true;
                }
                else
                {
                    // 回零完成后，跳过释放同步步骤，直接进入SETTING_HOME
                    // 在SETTING_HOME中会设置位置并重新建立同步
                    HOMING_DEBUG_PRINT("[Homing] MOVE_TO_ZERO complete, skipping to SETTING_HOME");

                    // 直接切换到SETTING_HOME状态
            homing->state = HOMING_STATE_SETTING_HOME;
                }
            }
            break;
        }
        
        case HOMING_STATE_SETTING_HOME:
        {
            // ========== 阶段7：设置回零位置
            HOMING_DEBUG_PRINT("[Homing] SETTING_HOME phase");

            if(homing->stepPending && homing->stepFromState == HOMING_STATE_SETTING_HOME)
                homing->stepPending = false;

            if(HomingControl_allAxesStopped(homing))
            {
                HomingControl_setAllAxesHomePosition(homing);
                homing->state = HOMING_STATE_REESTABLISHING_SYNC;
                HOMING_DEBUG_PRINT("[Homing] SETTING_HOME → REESTABLISHING_SYNC");
                break;
            }

            if(sync->masterAxis != NULL)
                MotionAxis_stop(sync->masterAxis);
            for(i = 0; i < sync->numSlaveAxes; i++)
            {
                if(sync->slaveAxes[i].axis != NULL)
                    MotionAxis_stop(sync->slaveAxes[i].axis);
            }
            break;
        }
        
        case HOMING_STATE_REESTABLISHING_SYNC:
        {
            // ========== 阶段8：重新建立同步
            HOMING_DEBUG_PRINT("[Homing] REESTABLISHING_SYNC phase");

            if(homing->stepPending && homing->stepFromState == HOMING_STATE_REESTABLISHING_SYNC)
                homing->stepPending = false;

            if(!HomingControl_allAxesStopped(homing))
            {
                if(sync->masterAxis != NULL)
                    MotionAxis_stop(sync->masterAxis);
                for(i = 0; i < sync->numSlaveAxes; i++)
                {
                    if(sync->slaveAxes[i].axis != NULL)
                        MotionAxis_stop(sync->slaveAxes[i].axis);
                }
                break;
            }

            if(homing->stepEnable && !homing->stepPending)
            {
                homing->stepFromState = HOMING_STATE_REESTABLISHING_SYNC;
                homing->stepPending = true;
            }
            else
            {
                // 恢复运动参数
                if(sync->masterAxis != NULL && homing->motionParamsSaved)
                {
                    MotionAxis_setMotionParams(sync->masterAxis,
                                            homing->savedMaxVelocity,
                                            homing->savedMaxVelocity,
                                            homing->savedMaxAccel);
                    sync->masterAxis->profile.maxDecel = homing->savedMaxDecel;
                }

                // 设置回零位置（复用统一辅助函数）
                HomingControl_setAllAxesHomePosition(homing);

                // 恢复同步使能
                for(i = 0; i < sync->numSlaveAxes; i++)
                {
                    if(homing->activeSlaveAxes[i])
                    {
                        sync->slaveAxes[i].syncEnabled = true;
                        HOMING_DEBUG_PRINT("[Homing] REESTABLISH: restore syncEnabled[%d]", i);
                    }
                }

                if(!SyncControl_establishSync(sync))
                {
                    sync->syncEnable = true;
                    sync->syncState = SYNC_STATE_STOPPED;
                    sync->syncStartMasterPos = sync->masterPosition;
                    for(i = 0; i < sync->numSlaveAxes; i++)
                    {
                        if(sync->slaveAxes[i].axis != NULL)
                        {
                            sync->slaveAxes[i].syncEnabled = true;
                            sync->slaveAxes[i].syncOffset = SyncControl_getSlaveActPosition(sync, i);
                            sync->slaveAxes[i].syncPosition = sync->masterPosition;
                        }
                    }
                }

                homing->state = HOMING_STATE_COMPLETE;
                homing->allHomed = true;
            }
            break;
        }
        
        case HOMING_STATE_COMPLETE:
        {
            // 阶段9：回零完成
            homing->allHomed = true;
            HOMING_DEBUG_PRINT("[Homing] COMPLETE - all axes at home position");
            break;
        }

        case HOMING_STATE_ERROR:
        {
            // 错误状态：保持在错误状态，直到用户取消或重新开始
            HOMING_DEBUG_PRINT("[Homing] ERROR state - lastError=%d", homing->lastError);
            // 可以在这里添加自动恢复逻辑，或者等待外部干预
            break;
        }
        
        default:
            break;
    }
    
    return homing->state;
}

//=============================================================================
// 状态查询
//=============================================================================

/**
 * @brief 获取回零状态
 */
HomingState_e HomingControl_getState(HomingControl_t* homing)
{
    if(homing == NULL) return HOMING_STATE_IDLE;
    return homing->state;
}

/**
 * @brief 获取最后一次错误代码
 */
int32_t HomingControl_getLastError(HomingControl_t* homing)
{
    if(homing == NULL) return HOMING_ERROR_NONE;
    return homing->lastError;
}

/**
 * @brief 检查是否正在回零
 */
bool HomingControl_isActive(HomingControl_t* homing)
{
    if(homing == NULL) return false;
    return homing->state != HOMING_STATE_IDLE && 
           homing->state != HOMING_STATE_COMPLETE &&
           homing->state != HOMING_STATE_ERROR;
}

/**
 * @brief 检查是否回零完成
 */
bool HomingControl_isCompleted(HomingControl_t* homing)
{
    if(homing == NULL) return false;
    return homing->state == HOMING_STATE_COMPLETE;
}

/**
 * @brief 获取回零进度（已完成的轴数）
 */
uint16_t HomingControl_getCompletedCount(HomingControl_t* homing)
{
    if(homing == NULL) return 0;
    return homing->completedCount;
}

/**
 * @brief 获取剩余回零轴数
 */
uint16_t HomingControl_getRemainingCount(HomingControl_t* homing)
{
    if(homing == NULL || homing->syncControl == NULL) return 0;
    return homing->numActiveSlaveAxes - homing->completedCount;
}

//=============================================================================
// 单步回零控制
//=============================================================================

/**
 * @brief 使能/禁用单步回零模式
 */
void HomingControl_setStepEnable(HomingControl_t* homing, bool enable)
{
    if(homing == NULL) return;
    homing->stepEnable = enable;
}

/**
 * @brief 获取单步回零模式使能状态
 */
bool HomingControl_getStepEnable(HomingControl_t* homing)
{
    if(homing == NULL) return false;
    return homing->stepEnable;
}

/**
 * @brief 获取回零单步等待确认状态
 */
bool HomingControl_getStepPending(HomingControl_t* homing)
{
    if(homing == NULL) return false;
    return homing->stepPending;
}

/**
 * @brief 确认回零单步
 */
void HomingControl_stepConfirm(HomingControl_t* homing)
{
    if(homing == NULL) return;
    
    HOMING_DEBUG_PRINT("[HomingControl] Step confirm: pending=%d, fromState=%d, currentState=%d",
           homing->stepPending, homing->stepFromState, homing->state);
    
    if(homing->stepPending)
    {
        homing->stepPending = false;
        
        switch(homing->stepFromState)
        {
            case HOMING_STATE_PREPARE:
                if(homing->useDecelSwitch)
                {
                    homing->state = HOMING_STATE_SEARCH_HOME;
                    HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: PREPARE -> SEARCH_HOME");
                }
                else
                {
                    homing->state = HOMING_STATE_SEARCH_LOW;
                    HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: PREPARE -> SEARCH_LOW");
                }
                break;

            case HOMING_STATE_SEARCH_HOME:
                homing->state = HOMING_STATE_SEARCH_LOW;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: SEARCH_HOME -> SEARCH_LOW");
                break;

            case HOMING_STATE_SEARCH_LOW:
                homing->state = HOMING_STATE_COLLISION_ONE;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: SEARCH_LOW -> COLLISION_ONE");
                break;
                
            case HOMING_STATE_COLLISION_ONE:
                homing->state = HOMING_STATE_COLLISION_ALL;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: COLLISION_ONE -> COLLISION_ALL");
                break;
                
            case HOMING_STATE_COLLISION_ALL:
                homing->state = HOMING_STATE_MOVE_TO_ZERO;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: COLLISION_ALL -> MOVE_TO_ZERO");
                break;
                
            case HOMING_STATE_MOVE_TO_ZERO:
                homing->state = HOMING_STATE_RELEASING_SYNC;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: MOVE_TO_ZERO -> RELEASING_SYNC");
                break;
                
            case HOMING_STATE_RELEASING_SYNC:
                homing->state = HOMING_STATE_SETTING_HOME;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: RELEASING_SYNC -> SETTING_HOME");
                break;
                
            case HOMING_STATE_SETTING_HOME:
                homing->state = HOMING_STATE_REESTABLISHING_SYNC;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: SETTING_HOME -> REESTABLISHING_SYNC");
                break;
                
            case HOMING_STATE_REESTABLISHING_SYNC:
                homing->state = HOMING_STATE_COMPLETE;
                homing->allHomed = true;
                HOMING_DEBUG_PRINT("[Homing] Step CONFIRMED: REESTABLISHING_SYNC -> COMPLETE");
                break;
                
            default:
                break;
        }
    }
}

//=============================================================================
// 碰撞信息
//=============================================================================

/**
 * @brief 设置从动轴碰撞信号状态
 */
void HomingControl_setCollisionSignal(HomingControl_t* homing, uint16_t slaveIndex, bool collisionActive)
{
    if(homing == NULL || slaveIndex >= 8)
    {
        return;
    }
    
    HomingCollisionInfo_t* collision = &homing->collisionInfo[slaveIndex];
    
    HOMING_DEBUG_PRINT("[HomingControl] SetCollisionSignal: slave=%d, active=%d, currentState=%d\n", 
           slaveIndex, collisionActive, collision->state);
    
    // 忽略非激活状态
    if(!collisionActive)
    {
        return;
    }
    
    // 如果已经触发，忽略
    if(collision->state == COLLISION_ACTIVE || 
       collision->state == COLLISION_ACKNOWLEDGED)
    {
        HOMING_DEBUG_PRINT("[HomingControl] SetCollisionSignal: IGNORED - already active/acknowledged\n");
        return;
    }
    
    // 触发碰撞
    collision->state = COLLISION_ACTIVE;
    collision->pinState = true;
    collision->count++;
    homing->totalCollisionCount++;
    
    // 获取当前位置作为碰撞位置
    if(homing->syncControl != NULL)
    {
        uint16_t numSlaves = SyncControl_getNumSlaveAxes(homing->syncControl);
        if(slaveIndex < numSlaves)
        {
            collision->position = SyncControl_getSlaveActPosition(homing->syncControl, slaveIndex);
        }
    }
    
    HOMING_DEBUG_PRINT("[HomingControl] Collision DETECTED on slave[%d]: position=%.2f, count=%d\n",
           slaveIndex, collision->position, collision->count);
}

/**
 * @brief 获取从动轴碰撞信号状态
 */
CollisionState_e HomingControl_getCollisionState(HomingControl_t* homing, uint16_t slaveIndex)
{
    if(homing == NULL || slaveIndex >= 8)
    {
        return COLLISION_INACTIVE;
    }
    
    return homing->collisionInfo[slaveIndex].state;
}

/**
 * @brief 获取从动轴碰撞次数
 */
uint32_t HomingControl_getSlaveCollisionCount(HomingControl_t* homing, uint16_t slaveIndex)
{
    if(homing == NULL || slaveIndex >= 8)
    {
        return 0;
    }
    
    return homing->collisionInfo[slaveIndex].count;
}

/**
 * @brief 获取从动轴碰撞位置
 */
float32_t HomingControl_getSlaveCollisionPosition(HomingControl_t* homing, uint16_t slaveIndex)
{
    if(homing == NULL || slaveIndex >= 8)
    {
        return 0.0f;
    }
    
    return homing->collisionInfo[slaveIndex].position;
}

/**
 * @brief 获取总碰撞次数
 */
uint32_t HomingControl_getTotalCollisionCount(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return 0;
    }
    
    return homing->totalCollisionCount;
}

/**
 * @brief 检查是否发生低速碰撞
 */
bool HomingControl_isLowSpeedCollision(HomingControl_t* homing)
{
    if(homing == NULL) return false;
    return homing->lowSpeedCollision;
}

/**
 * @brief 获取碰撞时的速度
 */
float32_t HomingControl_getCollisionSpeed(HomingControl_t* homing)
{
    if(homing == NULL) return 0.0f;
    return homing->collisionAtSpeed;
}

/**
 * @brief 设置减速开关信号状态（全局减速开关）
 * @param homing 回零控制对象指针
 * @param active 减速开关信号是否激活
 * @note 外部（C#）应在减速开关触发时调用此函数
 */
void HomingControl_setDecelSwitchSignal(HomingControl_t* homing, bool active)
{
    if(homing == NULL)
    {
        HOMING_DEBUG_PRINT("[HomingControl] DecelSwitch: homing is NULL");
        return;
    }

    HOMING_DEBUG_PRINT("[HomingControl] DecelSwitch called with active=%d, current pinState=%d, triggered=%d",
           active, homing->decelSwitchPinState, homing->decelSwitchTriggered);

    if(!active)
    {
        homing->decelSwitchPinState = false;
        HOMING_DEBUG_PRINT("[HomingControl] DecelSwitch: released");
        return;
    }

    if(homing->decelSwitchTriggered)
    {
        HOMING_DEBUG_PRINT("[HomingControl] DecelSwitch: already triggered, ignoring");
        return;
    }

    homing->decelSwitchPinState = true;
    homing->decelSwitchTriggered = true;

    HOMING_DEBUG_PRINT("[HomingControl] DecelSwitch triggered!");
}

/**
 * @brief 获取减速开关触发状态
 */
bool HomingControl_getDecelSwitchTriggered(HomingControl_t* homing)
{
    if(homing == NULL)
        return false;
    return homing->decelSwitchTriggered;
}

//=============================================================================
// 碰撞信息（续）
//=============================================================================

/**
 * @brief 清除所有从动轴的碰撞状态（用于释放同步后重新建立同步）
 */
void HomingControl_clearAllCollisionState(HomingControl_t* homing)
{
    if(homing == NULL)
    {
        return;
    }

    uint16_t i;
    for(i = 0; i < 8; i++)
    {
        homing->collisionInfo[i].state = COLLISION_INACTIVE;
        homing->collisionInfo[i].pinState = false;
        homing->collisionInfo[i].count = 0;
    }
    homing->totalCollisionCount = 0;

    // 清除减速开关状态
    homing->decelSwitchTriggered = false;
    homing->decelSwitchPinState = false;
    homing->masterDecelingToLowSpeed = false;

    HOMING_DEBUG_PRINT("[HomingControl] All collision and decel-switch states cleared\n");
}

//=============================================================================
// 统计信息
//=============================================================================

/**
 * @brief 获取回零次数
 */
uint32_t HomingControl_getHomingCount(HomingControl_t* homing)
{
    if(homing == NULL) return 0;
    return homing->homingCount;
}

/**
 * @brief 重置统计信息
 */
void HomingControl_resetStatistics(HomingControl_t* homing)
{
    if(homing == NULL) return;
    homing->homingCount = 0;
}

//=============================================================================
// 同步回零快捷接口实现（使用内部静态实例）
//=============================================================================

// 静态全局HomingControl_t实例（用于SyncHoming快捷接口）
static HomingControl_t g_syncHoming;
static bool g_syncHomingInitialized = false;

// 调试日志文件
extern FILE* g_motion_debug_log;

// 简单调试输出
#define SYNC_HOMING_DEBUG_PRINT(fmt, ...) fprintf(stderr, "[SyncHoming] " fmt "\n", ##__VA_ARGS__)

/**
 * @brief 检查所有轴是否无错误
 */
static bool SyncHoming_checkNoErrors(SyncControl_t* sync)
{
    uint16_t i;

    if(sync == NULL) return false;

    // 检查主轴
    if(sync->masterAxis != NULL)
    {
        if(MotionAxis_isError(sync->masterAxis))
        {
            return false;
        }
    }

    // 检查所有从动轴
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis != NULL)
        {
            if(MotionAxis_isError(sync->slaveAxes[i].axis))
            {
                return false;
            }
        }
    }

    return true;
}

/**
 * @brief 初始化同步回零模块
 */
void SyncHoming_init(SyncControl_t* sync, SyncHomingConfig_t* config)
{
    if(sync == NULL)
    {
        return;
    }

    // 初始化全局HomingControl_t
    HomingControl_init(&g_syncHoming, sync, 0.001f);
    
    // 如果提供了配置，则使用配置
    if(config != NULL)
    {
        // 配置回零参数
        HomingControl_configSimple(&g_syncHoming, 
                                config->reverseDist,
                                config->lowSpeed,
                                config->homeSpeed,
                                config->emergencyDecelMult,
                                config->direction,
                                config->postHomeTarget,
                                config->useDecelSwitch);

        // 设置位置误差容忍度
        HomingControl_setPositionTolerance(&g_syncHoming, config->positionTolerance);

        SYNC_HOMING_DEBUG_PRINT("Initialized: reverseDist=%.2f, lowSpeed=%.2f, homeSpeed=%.2f, direction=%d",
               config->reverseDist, config->lowSpeed, config->homeSpeed, config->direction);
    }
    
    g_syncHomingInitialized = true;
}

/**
 * @brief 配置同步回零参数
 */
void SyncHoming_config(SyncControl_t* sync, float32_t reverseDist, float32_t lowSpeed,
                      float32_t homeSpeed, float32_t emergencyDecelMult,
                      int8_t direction, float32_t postHomeTarget,
                      bool useDecelSwitch, float32_t positionTolerance)
{
    (void)sync;

    HOMING_DEBUG_PRINT("[SyncHoming] config: reverseDist=%.2f, lowSpeed=%.2f, homeSpeed=%.2f, direction=%d, useDecelSwitch=%d",
           reverseDist, lowSpeed, homeSpeed, direction, useDecelSwitch);

    // 如果尚未初始化，先初始化
    if(!g_syncHomingInitialized)
    {
        HomingControl_init(&g_syncHoming, sync, 0.001f);
        g_syncHomingInitialized = true;
        HOMING_DEBUG_PRINT("[SyncHoming] Initialized with sync=%p", (void*)sync);
    }

    // 配置回零参数
    HomingControl_configSimple(&g_syncHoming,
                            reverseDist,
                            lowSpeed,
                            homeSpeed,
                            emergencyDecelMult,
                            direction,
                            postHomeTarget,
                            useDecelSwitch);

    // 设置位置误差容忍度
    HomingControl_setPositionTolerance(&g_syncHoming, positionTolerance);

    SYNC_HOMING_DEBUG_PRINT("Configured: reverseDist=%.2f, lowSpeed=%.2f, homeSpeed=%.2f, direction=%d, useDecelSwitch=%d",
           reverseDist, lowSpeed, homeSpeed, direction, useDecelSwitch);
}

/**
 * @brief 启动同步碰撞回零流程
 */
bool SyncHoming_start(SyncControl_t* sync, float32_t postHomeTarget)
{
    uint16_t i;

    SYNC_HOMING_DEBUG_PRINT("Starting collision homing process...");

    // 自动初始化（如果尚未初始化）
    if(!g_syncHomingInitialized && sync != NULL)
    {
        SYNC_HOMING_DEBUG_PRINT("Auto-initializing...");
        HomingControl_init(&g_syncHoming, sync, 0.001f);
        // 使用默认参数
        HomingControl_configSimple(&g_syncHoming, 100.0f, 10.0f, 50.0f, 3.0f, 1, 0.0f, false);
        HomingControl_setPositionTolerance(&g_syncHoming, 0.1f);
        g_syncHomingInitialized = true;
    }

    // 前提条件检查
    if(!sync->syncEnable)
    {
        SYNC_HOMING_DEBUG_PRINT("ERROR: Sync not enabled. Please establish sync first.");
        return false;
    }

    if(sync->syncState != SYNC_STATE_SYNCING &&
       sync->syncState != SYNC_STATE_STOPPED &&
       sync->syncState != SYNC_STATE_IDLE)
    {
        SYNC_HOMING_DEBUG_PRINT("ERROR: Sync not established. Current state: %d", sync->syncState);
        return false;
    }

    if(sync->numSlaveAxes == 0)
    {
        SYNC_HOMING_DEBUG_PRINT("ERROR: No slave axes configured");
        return false;
    }

    if(!SyncHoming_checkNoErrors(sync))
    {
        SYNC_HOMING_DEBUG_PRINT("ERROR: Some axes have errors");
        return false;
    }

    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(!sync->slaveAxes[i].syncEnabled)
        {
            SYNC_HOMING_DEBUG_PRINT("ERROR: Slave axis %d not enabled for sync", i);
            return false;
        }
    }

    // 重置所有从动轴的回零状态
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        g_syncHoming.collisionInfo[i].state = COLLISION_INACTIVE;
        g_syncHoming.collisionInfo[i].pinState = false;
        sync->slaveAxes[i].isHomed = false;
        sync->slaveAxes[i].homePosition = 0.0f;
    }

    // 使用HomingControl API启动回零
    return HomingControl_start(&g_syncHoming, postHomeTarget);
}

/**
 * @brief 取消同步回零
 */
void SyncHoming_cancel(SyncControl_t* sync)
{
    uint16_t i;

    SYNC_HOMING_DEBUG_PRINT("Cancelling homing...");

    if(sync->masterAxis != NULL)
    {
        MotionAxis_stop(sync->masterAxis);
    }

    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis != NULL)
        {
            MotionAxis_stop(sync->slaveAxes[i].axis);
        }
    }

    // 使用HomingControl API取消回零
    HomingControl_cancel(&g_syncHoming);

    if(sync->syncEnable)
    {
        sync->syncState = SYNC_STATE_IDLE;
    }
    else
    {
        sync->syncState = SYNC_STATE_IDLE;
    }

    SYNC_HOMING_DEBUG_PRINT("Homing cancelled");
}

/**
 * @brief 更新同步回零状态（每个周期调用）
 */
HomingState_e SyncHoming_update(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return HOMING_STATE_IDLE;
    }

    // 调用HomingControl的更新函数
    return HomingControl_update(&g_syncHoming);
}

/**
 * @brief 获取同步回零当前状态
 */
HomingState_e SyncHoming_getState(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return HOMING_STATE_IDLE;
    }
    
    return HomingControl_getState(&g_syncHoming);
}

/**
 * @brief 获取同步回零最后一次错误代码
 */
int32_t SyncHoming_getLastError(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return HOMING_ERROR_NONE;
    }
    return HomingControl_getLastError(&g_syncHoming);
}

/**
 * @brief 获取回零进度
 */
uint16_t SyncHoming_getCompletedCount(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return 0;
    }
    return HomingControl_getCompletedCount(&g_syncHoming);
}

/**
 * @brief 获取回零剩余轴数
 */
uint16_t SyncHoming_getRemainingCount(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return 0;
    }
    return HomingControl_getRemainingCount(&g_syncHoming);
}

/**
 * @brief 检查是否发生低速碰撞
 */
bool SyncHoming_isLowSpeedCollision(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return false;
    }
    return HomingControl_isLowSpeedCollision(&g_syncHoming);
}

/**
 * @brief 获取碰撞时的速度
 */
float32_t SyncHoming_getCollisionSpeed(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return 0.0f;
    }
    return HomingControl_getCollisionSpeed(&g_syncHoming);
}

/**
 * @brief 设置回零位置误差容忍度
 */
void SyncHoming_setPositionTolerance(SyncControl_t* sync, float32_t tolerance)
{
    if(sync == NULL)
    {
        return;
    }
    HomingControl_setPositionTolerance(&g_syncHoming, tolerance);
}

/**
 * @brief 获取回零位置误差容忍度
 */
float32_t SyncHoming_getPositionTolerance(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return 0.1f;
    }
    return HomingControl_getPositionTolerance(&g_syncHoming);
}

/**
 * @brief 获取单步回零等待确认状态
 */
bool SyncHoming_getStepPending(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return false;
    }
    return HomingControl_getStepPending(&g_syncHoming);
}

/**
 * @brief 确认单步回零状态切换
 */
void SyncHoming_stepConfirm(SyncControl_t* sync)
{
    if(sync == NULL)
    {
        return;
    }
    HomingControl_stepConfirm(&g_syncHoming);
}

/**
 * @brief 设置单步回零模式
 */
void SyncHoming_setStepEnable(SyncControl_t* sync, bool enable)
{
    if(sync == NULL)
    {
        return;
    }
    HomingControl_setStepEnable(&g_syncHoming, enable);
}

//=============================================================================
// 碰撞检测快捷接口（通过内部静态实例）
//=============================================================================

/**
 * @brief 设置从动轴碰撞信号状态
 */
void SyncHoming_setCollisionSignal(SyncControl_t* sync, uint16_t slaveIndex, bool collisionActive)
{
    (void)sync;
    HomingControl_setCollisionSignal(&g_syncHoming, slaveIndex, collisionActive);
}

/**
 * @brief 获取从动轴碰撞信号状态
 */
CollisionState_e SyncHoming_getCollisionState(SyncControl_t* sync, uint16_t slaveIndex)
{
    (void)sync;
    return HomingControl_getCollisionState(&g_syncHoming, slaveIndex);
}

/**
 * @brief 获取从动轴碰撞次数
 */
uint32_t SyncHoming_getSlaveCollisionCount(SyncControl_t* sync, uint16_t slaveIndex)
{
    (void)sync;
    return HomingControl_getSlaveCollisionCount(&g_syncHoming, slaveIndex);
}

/**
 * @brief 获取从动轴碰撞位置
 */
float32_t SyncHoming_getSlaveCollisionPosition(SyncControl_t* sync, uint16_t slaveIndex)
{
    (void)sync;
    return HomingControl_getSlaveCollisionPosition(&g_syncHoming, slaveIndex);
}

/**
 * @brief 获取总碰撞次数
 */
uint32_t SyncHoming_getTotalCollisionCount(SyncControl_t* sync)
{
    (void)sync;
    return HomingControl_getTotalCollisionCount(&g_syncHoming);
}

/**
 * @brief 清除所有从动轴的碰撞状态（用于释放同步后重新建立同步）
 */
void SyncHoming_clearAllCollisionState(SyncControl_t* sync)
{
    (void)sync;
    HomingControl_clearAllCollisionState(&g_syncHoming);
}

void SyncHoming_setDecelSwitchSignal(SyncControl_t* sync, bool active)
{
    (void)sync;
    HomingControl_setDecelSwitchSignal(&g_syncHoming, active);
}

bool SyncHoming_getDecelSwitchTriggered(SyncControl_t* sync)
{
    (void)sync;
    return HomingControl_getDecelSwitchTriggered(&g_syncHoming);
}

/**
 * @brief 获取回零减速开关引脚状态（用于调试）
 */
bool SyncHoming_getDecelSwitchPinState(SyncControl_t* sync)
{
    (void)sync;
    if(&g_syncHoming != NULL)
    {
        return g_syncHoming.decelSwitchPinState;
    }
    return false;
}

/**
 * @brief 获取回零控制初始化状态（用于调试）
 */
bool SyncHoming_isInitialized(void)
{
    return g_syncHomingInitialized;
}

/**
 * @brief 获取回零控制中的useDecelSwitch标志（用于调试）
 */
bool SyncHoming_getUseDecelSwitch(void)
{
    return g_syncHoming.useDecelSwitch;
}

/**
 * @brief 设置减速开关状态（供C#调用）
 * @param sync 同步控制对象
 * @param enabled 减速开关是否激活
 * @note 减速开关是全局的，只需要一个减速开关
 */
void SyncControl_setDecelSwitch(SyncControl_t* sync, bool enabled)
{
    if(sync == NULL)
    {
        HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch: sync is NULL!");
        return;
    }

    HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch: enabled=%d, g_syncHomingInitialized=%d",
           enabled, g_syncHomingInitialized);

    // 检查 g_syncHoming 是否已初始化
    if(!g_syncHomingInitialized)
    {
        HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch: g_syncHoming not initialized!");
        return;
    }

    // 检查 g_syncHoming.syncControl 是否为 NULL
    if(g_syncHoming.syncControl == NULL)
    {
        HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch: g_syncHoming.syncControl is NULL!");
        return;
    }

    HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch: calling SyncHoming_setDecelSwitchSignal(%d)", enabled);
    SyncHoming_setDecelSwitchSignal(sync, enabled);
    HOMING_DEBUG_PRINT("[SyncControl] DecelSwitch set to %d", enabled);
}

//=============================================================================
// End of File
//=============================================================================
