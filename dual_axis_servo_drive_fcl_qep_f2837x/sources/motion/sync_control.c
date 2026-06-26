/**
 * @file sync_control.c
 * @brief 相对值同步控制模块实现
 * 
 * 实现功能：
 * 1. 相对值同步：各从动电机与主位置轴同步运动时使用增量同步方式
 * 2. 同步误差监视：超出允许范围时紧急停止
 * 3. 碰撞信号触发回零
 * 4. 同步回零流程
 * 
 * 相对同步基本原理：
 * - 同步时记住当前主动位置轴和各电机的坐标
 * - 根据初始同步时的相对偏移关系自动计算偏置
 * - 不从位置缓冲区直接复制绝对位置，而是根据偏移关系计算
 */

#include "sync_control.h"
#include <string.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// 调试日志文件
extern FILE* g_motion_debug_log;

// 简单调试输出 - 写入到日志文件
#define DEBUG_PRINT(fmt, ...) do { \
    if(g_motion_debug_log == NULL) { \
        errno_t err = fopen_s(&g_motion_debug_log, "C:\\temp\\motion_debug.log", "w"); \
        if(err != 0 || g_motion_debug_log == NULL) { \
            fopen_s(&g_motion_debug_log, "motion_debug.log", "w"); \
        } \
    } \
    if(g_motion_debug_log != NULL) { \
        fprintf(g_motion_debug_log, "[SYNC] " fmt "\n", ##__VA_ARGS__); \
        fflush(g_motion_debug_log); \
    } \
} while(0)

// 数学宏定义
#define ABS(x)      ((x) < 0.0f ? -(x) : (x))
#define SIGN(x)     ((x) < 0.0f ? -1.0f : 1.0f)
#define MIN(a, b)   ((a) < (b) ? (a) : (b))
#define MAX(a, b)   ((a) > (b) ? (a) : (b))

//=============================================================================
// 同步回调函数实现（供主轴调用）
//=============================================================================

// 前向声明
static void SyncControl_onMasterProfileUpdate(void* context, void* masterAxis, uint16_t pointsGenerated, uint16_t startIdx);
static void SyncControl_onMasterBufferTruncate(void* context, void* masterAxis, uint16_t newCount);

/**
 * @brief 同步回调：主轴轨迹更新完成
 *
 * 当主轴的updateProfile生成轨迹点后，会调用此回调
 * 将主轴新生成的点增量拷贝到从轴缓冲区
 * **关键**：
 *   1. startIdx 表示新生成的点在主轴缓冲区中的起始位置
 *   2. pointsGenerated 表示本次生成的新点数量
 *   3. 增量更新：只拷贝新生成的点，而不是整个缓冲区
 *   4. 从轴缓冲区的消费由从轴的updateControl统一处理（C#主循环调用）
 */
static void SyncControl_onMasterProfileUpdate(void* context, void* masterAxis, uint16_t pointsGenerated, uint16_t startIdx)
{
    SyncControl_t* sync = (SyncControl_t*)context;
    MotionAxis_t* master = (MotionAxis_t*)masterAxis;
    uint16_t i;

    if(sync == NULL || !sync->syncEnable || master == NULL)
    {
        return;
    }

    // 只在同步状态处理
    if(sync->syncState != SYNC_STATE_SYNCING &&
       sync->syncState != SYNC_STATE_STOPPING &&
       sync->syncState != SYNC_STATE_STOPPED)
    {
        return;
    }

    // 没有新生成的点，直接返回
    if(pointsGenerated == 0)
    {
        return;
    }

    // 获取主轴缓冲区状态
    uint16_t masterCount = master->posBuffer.count;

    if(masterCount == 0)
    {
        return;
    }

    // 更新同步控制器中的主轴位置（使用主轴缓冲区最旧点的位置）
    uint16_t readIdx = master->posBuffer.readIdx;
    sync->masterPosition = master->posBuffer.posBuffer[readIdx];
    sync->masterVelocity = master->posBuffer.velBuffer[readIdx];

    // 为每个参与同步的从动轴拷贝轨迹点
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        SyncAxis_t* slave = &sync->slaveAxes[i];

        // 只处理参与同步且未脱开的从动轴
        if(slave->axis == NULL || !slave->syncEnabled)
        {
            continue;
        }

        MotionAxis_t* slaveAxis = slave->axis;

        // 获取从动轴的缓冲区空闲空间
        uint16_t freeSpace = ProfileBuffer_getFreeSpace(&slaveAxis->posBuffer);

        // 计算需要拷贝的点数（取新生成点数和空闲空间的较小值）
        uint16_t pointsToCopy = MIN(pointsGenerated, freeSpace);

        if(pointsToCopy == 0)
        {
            continue;
        }

        // **增量更新**：从主轴缓冲区的 startIdx 开始，拷贝新生成的点
        uint16_t j;
        for(j = 0; j < pointsToCopy; j++)
        {
            // 计算主轴缓冲区读取位置（环形缓冲区的正确索引计算）
            uint16_t srcIdx = (startIdx + j) % MOTION_PROFILE_BUFFER_SIZE;

            // 获取主轴的位置和速度
            float32_t masterPos = master->posBuffer.posBuffer[srcIdx];
            float32_t masterVel = master->posBuffer.velBuffer[srcIdx];
            float32_t masterAccel = master->posBuffer.accelBuffer[srcIdx];
            float32_t masterJerk = master->posBuffer.jerkBuffer[srcIdx];

            // 计算从动轴的命令位置（相对同步）
            float32_t slaveCmdPos = slave->syncOffset + (masterPos - sync->syncStartMasterPos) * slave->gearRatio;

            // 从动轴的命令速度、加速度、加加速度（主轴值 * 齿轮比）
            float32_t slaveCmdVel = masterVel * slave->gearRatio;
            float32_t slaveCmdAccel = masterAccel * slave->gearRatio;
            float32_t slaveCmdJerk = masterJerk * slave->gearRatio;

            // 写入从动轴的缓冲区
            ProfileBuffer_write(&slaveAxis->posBuffer, slaveCmdPos, slaveCmdVel, slaveCmdAccel, slaveCmdJerk);
        }

        DEBUG_PRINT("[SyncControl_onMasterProfileUpdate] master[new=%d,start=%d] slave[%d] copied %d points, slaveBuf=%d\n",
               pointsGenerated, startIdx, i, pointsToCopy, slaveAxis->posBuffer.count);
    }
}

/**
 * @brief 同步回调：主轴缓冲区被截断
 *
 * 当主轴重新规划轨迹时，会截断缓冲区
 * 从轴必须同步截断自己的缓冲区，保持一致
 */
static void SyncControl_onMasterBufferTruncate(void* context, void* masterAxis, uint16_t newCount)
{
    SyncControl_t* sync = (SyncControl_t*)context;
    uint16_t i;

    if(sync == NULL || !sync->syncEnable)
    {
        return;
    }

    // 为每个从动轴同步截断缓冲区
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        SyncAxis_t* slave = &sync->slaveAxes[i];

        // 只处理参与同步且未脱开的从动轴
        if(slave->axis == NULL || !slave->syncEnabled)
        {
            continue;
        }

        MotionAxis_t* slaveAxis = slave->axis;
        uint16_t oldCount = slaveAxis->posBuffer.count;

        if(oldCount > newCount)
        {
            // 从轴缓冲区也需要截断到相同数量
            ProfileBuffer_truncate(&slaveAxis->posBuffer, newCount);

            DEBUG_PRINT("[SyncControl_onMasterBufferTruncate] slave[%d]: %d -> %d points\n",
                   i, oldCount, newCount);
        }
    }
}

//=============================================================================
// 辅助函数
//=============================================================================

/**
 * @brief 检查所有轴是否处于静止状态
 */
static bool SyncControl_checkAllIdle(SyncControl_t* sync)
{
    uint16_t i;

    // 检查主轴
    if(sync->masterAxis != NULL)
    {
        if(MotionAxis_getAxisState(sync->masterAxis) != AXIS_STATE_STANDBY &&
           MotionAxis_getAxisState(sync->masterAxis) != AXIS_STATE_DISABLED)
        {
            return false;
        }
    }

    // 只检查参与同步的从动轴（syncEnabled=true）
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        // 跳过不参与同步的从动轴
        if(!sync->slaveAxes[i].syncEnabled)
        {
            continue;
        }

        if(sync->slaveAxes[i].axis != NULL)
        {
            if(MotionAxis_getAxisState(sync->slaveAxes[i].axis) != AXIS_STATE_STANDBY &&
               MotionAxis_getAxisState(sync->slaveAxes[i].axis) != AXIS_STATE_DISABLED)
            {
                return false;
            }

            // 检查是否有错误
            if(MotionAxis_isError(sync->slaveAxes[i].axis))
            {
                return false;
            }
        }
    }

    return true;
}

/**
 * @brief 检查参与同步的轴是否无错误
 */
static bool SyncControl_checkNoErrors(SyncControl_t* sync)
{
    uint16_t i;

    // 检查主轴
    if(sync->masterAxis != NULL)
    {
        if(MotionAxis_isError(sync->masterAxis))
        {
            return false;
        }
    }

    // 只检查参与同步的从动轴（syncEnabled=true）
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        // 跳过不参与同步的从动轴
        if(!sync->slaveAxes[i].syncEnabled)
        {
            continue;
        }

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
 * @brief 计算从动轴的命令位置（相对同步）
 * @note 正确公式：slaveTargetPos = syncOffset + (masterPosition - syncStartMasterPos) * gearRatio
 *       其中 syncOffset = 同步开始时主轴位置 - 同步开始时从动轴位置
 *       这样可以保证主从轴的位置增量一致，不会发生坐标突变
 */
static float32_t SyncControl_calculateSlaveCmdPos(SyncControl_t* sync, uint16_t slaveIndex)
{
    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    
    // 相对同步：
    // 从动轴目标位置 = 同步偏移 + (主轴当前位置 - 同步开始时主轴位置) × 齿轮比
    float32_t masterRelativeMove = sync->masterPosition - sync->syncStartMasterPos;
    float32_t slaveTargetPos = slave->syncOffset + masterRelativeMove * slave->gearRatio;
    
    return slaveTargetPos;
}

//=============================================================================
// 初始化函数
//=============================================================================

/**
 * @brief 初始化同步控制对象
 */
void SyncControl_init(SyncControl_t* sync, MotionAxis_t* masterAxis, float32_t profileUpdateTs)
{
    uint16_t i;
    
    memset(sync, 0, sizeof(SyncControl_t));
    
    // 设置主轴
    sync->masterAxis = masterAxis;
    if(masterAxis != NULL)
    {
        sync->masterAxisID = masterAxis->axisID;
    }
    
    // 初始化从动轴数组
    for(i = 0; i < SYNC_MAX_AXES; i++)
    {
        memset(&sync->slaveAxes[i], 0, sizeof(SyncAxis_t));
        sync->slaveAxes[i].axis = NULL;
        sync->slaveAxes[i].axisID = 0xFF;
        sync->slaveAxes[i].followingErrorMax = SYNC_DEFAULT_ERROR_LIMIT;
        // 从动轴间误差阈值为默认值的一半（更严格）
        sync->slaveAxes[i].slaveToSlaveErrorMax = SYNC_DEFAULT_ERROR_LIMIT * 0.5f;
        sync->slaveAxes[i].isHomed = false;
    }
    
    // 默认配置
    sync->syncMode = SYNC_MODE_RELATIVE;  // 默认使用相对同步
    sync->syncEnable = false;
    sync->syncState = SYNC_STATE_IDLE;
    sync->numSlaveAxes = 0;
    
    // 同步误差配置
    sync->syncErrorLimit = SYNC_DEFAULT_ERROR_LIMIT;
    sync->errorCheckCounter = 0;
    sync->syncErrorTrip = false;
    
    // 统计
    sync->syncMotionCount = 0;
    
    // 时间戳
    sync->profileUpdateTs = profileUpdateTs;
    sync->lastUpdateTime = 0.0f;
    
    DEBUG_PRINT("[SyncControl] Initialized with profileUpdateTs=%.4fs\n", profileUpdateTs);
}

/**
 * @brief 添加从动轴到同步组
 */
uint16_t SyncControl_addSlaveAxis(SyncControl_t* sync, MotionAxis_t* axis, float32_t gearRatio)
{
    if(sync->numSlaveAxes >= SYNC_MAX_AXES)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Maximum slave axes reached (%d)\n", SYNC_MAX_AXES);
        return 0xFF;
    }
    
    if(axis == NULL)
    {
        DEBUG_PRINT("[SyncControl] ERROR: NULL axis pointer\n");
        return 0xFF;
    }
    
    // 检查是否已经添加过这个轴
    uint16_t i;
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(sync->slaveAxes[i].axis == axis)
        {
            DEBUG_PRINT("[SyncControl] Axis already added at index %d, updating gear ratio\n", i);
            sync->slaveAxes[i].gearRatio = gearRatio;
            return i;
        }
    }
    
    uint16_t index = sync->numSlaveAxes;
    
    sync->slaveAxes[index].axis = axis;
    sync->slaveAxes[index].axisID = axis->axisID;
    sync->slaveAxes[index].gearRatio = gearRatio;
    sync->slaveAxes[index].syncEnabled = false;  // 默认不参与同步，需要手动使能
    sync->slaveAxes[index].syncOffset = 0.0f;
    sync->slaveAxes[index].syncPosition = 0.0f;
    sync->slaveAxes[index].followingError = 0.0f;
    sync->slaveAxes[index].followingErrorMax = SYNC_DEFAULT_ERROR_LIMIT;
    // 从动轴间误差阈值为默认值的一半（更严格）
    sync->slaveAxes[index].slaveToSlaveErrorMax = SYNC_DEFAULT_ERROR_LIMIT * 0.5f;
    sync->slaveAxes[index].homePosition = 0.0f;
    sync->slaveAxes[index].isHomed = false;
    sync->slaveAxes[index].errorCounter = 0;

    // 【关键修复】：设置从轴的同步状态标志
    // 这样updateControl可以根据此标志决定是否从缓冲区读取
    MotionAxis_setSyncing(axis, true);

    sync->numSlaveAxes++;
    
    DEBUG_PRINT("[SyncControl] Slave axis added: index=%d, axisID=%d, gearRatio=%.2f\n",
           index, axis->axisID, gearRatio);
    
    return index;
}

/**
 * @brief 设置从动轴是否参与同步
 */
void SyncControl_setSlaveSyncEnabled(SyncControl_t* sync, uint16_t slaveIndex, bool enabled)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Invalid slave index %d (max=%d)\n", slaveIndex, sync->numSlaveAxes);
        return;
    }
    
    DEBUG_PRINT("[SyncControl] Slave[%d] syncEnabled: %d -> %d\n", slaveIndex, sync->slaveAxes[slaveIndex].syncEnabled, enabled);
    sync->slaveAxes[slaveIndex].syncEnabled = enabled;
}

/**
 * @brief 获取从动轴是否参与同步
 */
bool SyncControl_getSlaveSyncEnabled(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return false;
    }
    
    return sync->slaveAxes[slaveIndex].syncEnabled;
}

/**
 * @brief 配置同步参数
 */
void SyncControl_config(SyncControl_t* sync, SyncMode_e syncMode, float32_t errorLimit)
{
    sync->syncMode = syncMode;
    sync->syncErrorLimit = errorLimit;
    
    // 更新所有从动轴的误差限值
    uint16_t i;
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        sync->slaveAxes[i].followingErrorMax = errorLimit;
        // 从动轴间误差阈值为默认值的一半（更严格）
        sync->slaveAxes[i].slaveToSlaveErrorMax = errorLimit * 0.5f;
    }
    
    DEBUG_PRINT("[SyncControl] Config: syncMode=%s, errorLimit=%.2f\n",
           (syncMode == SYNC_MODE_RELATIVE) ? "RELATIVE" : "ABSOLUTE",
           errorLimit);
}

/**
 * @brief 配置从动轴间误差限值（更严格）
 */
void SyncControl_configSlaveToSlaveError(SyncControl_t* sync, uint16_t slaveIndex, float32_t slaveToSlaveErrorMax)
{
    if(slaveIndex < sync->numSlaveAxes)
    {
        sync->slaveAxes[slaveIndex].slaveToSlaveErrorMax = slaveToSlaveErrorMax;
        
        DEBUG_PRINT("[SyncControl] Config slave[%d] slaveToSlaveErrorMax=%.2f\n",
               slaveIndex, slaveToSlaveErrorMax);
    }
}

/**
 * @brief 配置绝对同步允许误差限值
 */
void SyncControl_configAbsoluteSyncErrorLimit(SyncControl_t* sync, float32_t errorLimit)
{
    sync->absoluteSyncErrorLimit = errorLimit;

    DEBUG_PRINT("[SyncControl] Config absoluteSyncErrorLimit=%.2f\n", errorLimit);
}

//=============================================================================
// 从动轴独立控制（脱开同步）
//=============================================================================

/**
 * @brief 让指定从动轴脱开同步并独立减速/急停
 * @param sync 同步控制对象指针
 * @param slaveIndex 从动轴索引
 * @param emergencyStop true=急停，false=正常减速停止
 * @note 脱开后该轴将独立执行轨迹规划，不再受SyncControl更新
 */
void SyncControl_decoupleSlaveAxis(SyncControl_t* sync, uint16_t slaveIndex, bool emergencyStop)
{
    if(sync == NULL || slaveIndex >= sync->numSlaveAxes)
    {
        DEBUG_PRINT("[SyncControl] decoupleSlaveAxis: invalid parameters\n");
        return;
    }

    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    if(slave->axis == NULL)
    {
        DEBUG_PRINT("[SyncControl] decoupleSlaveAxis: axis is NULL\n");
        return;
    }

    DEBUG_PRINT("[SyncControl] Decoupling slave[%d]: emergencyStop=%d, current cmdVel=%.2f, axisState=%d, bufferCount=%d\n",
           slaveIndex, emergencyStop, slave->axis->cmdVelocity, slave->axis->axisState, slave->axis->posBuffer.count);

    // 1. 首先设置该从动轴不再参与同步（关键：先于任何操作设置，防止回调干扰）
    slave->syncEnabled = false;

    // 2. 【关键修复】：清除从轴的同步状态标志
    // 清除后，updateControl会从自己的缓冲区读取（减速曲线由自己生成）
    MotionAxis_setSyncing(slave->axis, false);

    // 3. 根据emergencyStop参数决定停止方式
    if(emergencyStop)
    {
        // 急停：调用MotionAxis_emergencyStop生成独立减速曲线
        DEBUG_PRINT("[SyncControl] Slave[%d] decoupled with emergency stop: jerkTime=%.3f, maxDecel=%.2f\n",
               slaveIndex, slave->axis->profile.jerkTime, slave->axis->profile.maxDecel);
        MotionAxis_emergencyStop(slave->axis);
        DEBUG_PRINT("[SyncControl] Slave[%d] decoupled with emergency stop\n", slaveIndex);
    }
    else
    {
        // 正常减速停止
        DEBUG_PRINT("[SyncControl] Slave[%d] decoupled with normal stop: jerkTime=%.3f, maxDecel=%.2f\n",
               slaveIndex, slave->axis->profile.jerkTime, slave->axis->profile.maxDecel);
        MotionAxis_stop(slave->axis);
        DEBUG_PRINT("[SyncControl] Slave[%d] decoupled with normal stop\n", slaveIndex);
    }

    // 4. 【关键修复】：立即执行一次updateProfile和updateControl
    // 原因：在ISR下一次触发回调之前，必须确保减速曲线已经生成并填充到缓冲区
    // 否则ISR回调可能覆盖从轴命令位置，导致减速曲线无法执行
    MotionAxis_updateProfile(slave->axis);
    MotionAxis_updateControl(slave->axis);
    DEBUG_PRINT("[SyncControl] Slave[%d] immediate update: state=%d, cmdVel=%.2f, bufferCount=%d\n",
           slaveIndex, slave->axis->axisState, slave->axis->cmdVelocity, slave->axis->posBuffer.count);

    DEBUG_PRINT("[SyncControl] Slave[%d] decoupled: syncEnabled=%d, isSyncing=%d, axisState=%d, cmdVel=%.2f\n",
           slaveIndex, slave->syncEnabled, slave->axis->isSyncing, slave->axis->axisState, slave->axis->cmdVelocity);
}

/**
 * @brief 让指定从动轴恢复同步（重新加入同步组）
 * @param sync 同步控制对象指针
 * @param slaveIndex 从动轴索引
 */
void SyncControl_recoupleSlaveAxis(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(sync == NULL || slaveIndex >= sync->numSlaveAxes)
    {
        DEBUG_PRINT("[SyncControl] recoupleSlaveAxis: invalid parameters\n");
        return;
    }

    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    if(slave->axis == NULL)
    {
        DEBUG_PRINT("[SyncControl] recoupleSlaveAxis: axis is NULL\n");
        return;
    }

    DEBUG_PRINT("[SyncControl] Recoupling slave[%d]: current pos=%.2f, actPos=%.2f, bufferCount=%d\n",
           slaveIndex, slave->axis->cmdPosition, slave->axis->actPosition, slave->axis->posBuffer.count);

    // 1. 【关键修复】：清空从轴缓冲区
    // 原因：缓冲区中可能还包含脱开同步时残留的轨迹点
    // 恢复同步后，从轴应立即从回调获取当前位置，而不是执行旧的轨迹
    // 这样可以避免位置跳变
    ProfileBuffer_clear(&slave->axis->posBuffer);
    DEBUG_PRINT("[SyncControl] Slave[%d] buffer cleared before recouple\n", slaveIndex);

    // 2. 重新计算同步偏移（基于电机实际位置）
    slave->syncOffset = SyncControl_getSlaveActPosition(sync, slaveIndex);
    slave->syncPosition = sync->masterPosition;

    // 3. 【关键修复】：恢复同步状态标志，让从轴从缓冲区读取（由主轴回调填充）
    MotionAxis_setSyncing(slave->axis, true);

    // 4. 重新使能该从动轴参与同步
    slave->syncEnabled = true;

    DEBUG_PRINT("[SyncControl] Slave[%d] recoupled: syncEnabled=%d, syncOffset=%.2f, isSyncing=%d\n",
           slaveIndex, slave->syncEnabled, slave->syncOffset, slave->axis->isSyncing);
}

//=============================================================================
// 同步控制函数
//=============================================================================

/**
 * @brief 建立同步
 */
bool SyncControl_establishSync(SyncControl_t* sync)
{
    uint16_t i;
    
    DEBUG_PRINT("[SyncControl] Establishing sync...\n");
    
    // 条件检查：所有轴无报错、完成初始化、处于静止态
    if(!SyncControl_checkNoErrors(sync))
    {
        DEBUG_PRINT("[SyncControl] ERROR: Some axes have errors\n");
        // 打印错误信息
        if(sync->masterAxis != NULL)
        {
            DEBUG_PRINT("[SyncControl] Master axis error: %d\n", MotionAxis_isError(sync->masterAxis));
        }
        for(i = 0; i < sync->numSlaveAxes; i++)
        {
            if(sync->slaveAxes[i].axis != NULL)
            {
                DEBUG_PRINT("[SyncControl] Slave[%d] axis error: %d\n", i, MotionAxis_isError(sync->slaveAxes[i].axis));
            }
        }
        return false;
    }
    
    if(!SyncControl_checkAllIdle(sync))
    {
        DEBUG_PRINT("[SyncControl] ERROR: Some axes are not idle\n");
        // 打印状态信息
        if(sync->masterAxis != NULL)
        {
            DEBUG_PRINT("[SyncControl] Master axis state: %d\n", MotionAxis_getAxisState(sync->masterAxis));
        }
        for(i = 0; i < sync->numSlaveAxes; i++)
        {
            if(sync->slaveAxes[i].axis != NULL)
            {
                DEBUG_PRINT("[SyncControl] Slave[%d] axis state: %d\n", i, MotionAxis_getAxisState(sync->slaveAxes[i].axis));
            }
        }
        return false;
    }
    
    // 更新主轴位置
    SyncControl_updateMasterPosition(sync);
    DEBUG_PRINT("[SyncControl] Master position: %.2f\n", sync->masterPosition);
    
    // 记录同步开始时的主轴位置
    sync->syncStartMasterPos = sync->masterPosition;
    
    // 检查是否有从动轴参与同步（使用用户勾选的syncEnabled状态）
    // 不再自动重新启用所有从动轴，只使用当前已勾选的从动轴
    bool anySlaveEnabled = false;
    DEBUG_PRINT("[SyncControl] Checking enabled slaves: numSlaveAxes=%d\n", sync->numSlaveAxes);
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        DEBUG_PRINT("[SyncControl] Slave[%d]: axis=%p, syncEnabled=%d\n", 
               i, (void*)sync->slaveAxes[i].axis, sync->slaveAxes[i].syncEnabled);
        if(sync->slaveAxes[i].syncEnabled)
        {
            anySlaveEnabled = true;
        }
    }
    
    DEBUG_PRINT("[SyncControl] After re-enable: anySlaveEnabled=%d\n", anySlaveEnabled);
    
    // 检查是否至少有一个从动轴参与同步
    if(!anySlaveEnabled)
    {
        DEBUG_PRINT("[SyncControl] ERROR: No slave axes enabled for sync\n");
        return false;
    }
    
    // 为每个从动轴计算同步偏移（只处理syncEnabled=true的从动轴）
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        SyncAxis_t* slave = &sync->slaveAxes[i];

        // 只处理参与同步的从动轴
        if(slave->axis != NULL && slave->syncEnabled)
        {
            // 注意：运动轴与电机绑定后，轴坐标应该始终与电机实际坐标保持一致
            // 不需要在建立同步时特殊处理，系统会自动保持一致

            // 从电机获取实际位置用于日志输出
            float32_t slaveActPos = MotorDrive_getActPosition(slave->axis, 0);

            DEBUG_PRINT("[SyncControl] Slave[%d]: actPos=%.2f\n", i, slaveActPos);

            // 【关键修复】：清空从轴缓冲区
            // 原因：缓冲区中可能还包含独立运动时的轨迹点
            // 恢复同步后，从轴应立即从回调获取当前位置，避免位置跳变
            ProfileBuffer_clear(&slave->axis->posBuffer);
            DEBUG_PRINT("[SyncControl] Slave[%d] buffer cleared before enable\n", i);

            // 相对同步：记录从动轴当前位置作为基准
            // 同步后，从动轴位置 = 基准位置 + (主轴位移增量) × 齿轮比
            // 这样主轴移动多少，从动轴就移动多少，保持位置差不变
            slave->syncOffset = SyncControl_getSlaveActPosition(sync, i);
            slave->syncPosition = sync->masterPosition;

            // 【关键修复】：恢复同步状态标志
            MotionAxis_setSyncing(slave->axis, true);

            DEBUG_PRINT("[SyncControl] Slave[%d]: syncOffset=%.2f, masterPos=%.2f, isSyncing=1\n",
                   i, slave->syncOffset, sync->masterPosition);
            
            // 绝对同步模式：检查主从轴坐标偏差是否在允许范围内
            if(sync->syncMode == SYNC_MODE_ABSOLUTE)
            {
                float32_t actualPos = SyncControl_getSlaveActPosition(sync, i);
                float32_t expectedSlavePos = sync->masterPosition * slave->gearRatio;
                float32_t actualError = ABS(actualPos - expectedSlavePos);
                
                DEBUG_PRINT("[SyncControl] Absolute sync check: Slave[%d] expected=%.2f, actual=%.2f, error=%.2f, limit=%.2f\n",
                       i, expectedSlavePos, actualPos, actualError, sync->absoluteSyncErrorLimit);
                
                // 检查误差是否超限
                if(sync->absoluteSyncErrorLimit > 0 && actualError > sync->absoluteSyncErrorLimit)
                {
                    DEBUG_PRINT("[SyncControl] ERROR: Absolute sync error exceeded limit! error=%.2f > limit=%.2f\n",
                           actualError, sync->absoluteSyncErrorLimit);
                    sync->syncState = SYNC_STATE_ERROR;
                    return false;
                }
            }
            
            // 重置零点状态（如果不需要保留零点的话）
            if(!slave->isHomed)
            {
                slave->homePosition = 0.0f;
            }
        }
    }
    
    // 使能同步
    sync->syncEnable = true;
    // 设置为STOPPED状态而不是IDLE，这样从动轴会立即跟随主轴（保持同步关系）
    // 只有在SYNCING/STOPPING/STOPPED状态下，从动轴才会跟随主轴
    sync->syncState = SYNC_STATE_STOPPED;
    sync->syncErrorTrip = false;
    
    // ===== 注册主轴同步回调 =====
    // 主轴的updateProfile和updateControl会回调这些函数来同步从动轴
    if(sync->masterAxis != NULL)
    {
        MotionAxis_registerSyncCallback(sync->masterAxis,
            sync,  // context参数，传递给回调函数
            SyncControl_onMasterProfileUpdate,  // 轨迹更新回调
            NULL,                           // 位置更新回调（已移除，由C#统一执行）
            SyncControl_onMasterBufferTruncate); // 缓冲区截断回调
        DEBUG_PRINT("[SyncControl] Registered sync callbacks for master axis\n");
    }
    
    DEBUG_PRINT("[SyncControl] Sync established successfully\n");
    DEBUG_PRINT("[SyncControl] Master start position: %.2f, numSlaveAxes=%d\n", 
           sync->syncStartMasterPos, sync->numSlaveAxes);
    
    return true;
}

/**
 * @brief 释放同步
 */
void SyncControl_releaseSync(SyncControl_t* sync)
{
    uint16_t i;
    
    DEBUG_PRINT("[SyncControl] Releasing sync...\n");
    
    // ===== 注销主轴同步回调 =====
    if(sync->masterAxis != NULL)
    {
        MotionAxis_unregisterSyncCallback(sync->masterAxis);
        DEBUG_PRINT("[SyncControl] Unregistered sync callbacks for master axis\n");
    }
    
    sync->syncEnable = false;
    sync->syncState = SYNC_STATE_IDLE;
    
    // 重置同步开始位置（关键：避免第二次建立同步时使用旧的起始位置）
    sync->syncStartMasterPos = 0.0f;
    
    // 重置所有从动轴的同步状态
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        // 关键修复：在相对同步模式下，不重新计算syncOffset！
        // syncOffset代表建立同步时的初始偏移，应该保持不变
        // 只有在重新建立同步时才会重新计算syncOffset
        // 这样可以避免释放同步后再次建立同步时坐标突变

        sync->slaveAxes[i].syncPosition = sync->masterPosition;

        // 关键修复：释放同步时重置syncEnabled标志
        sync->slaveAxes[i].syncEnabled = false;

        // 关键修复：释放同步时清除同步状态标志
        // 从轴重新变为独立控制，自己消费缓冲区
        if(sync->slaveAxes[i].axis != NULL)
        {
            MotionAxis_setSyncing(sync->slaveAxes[i].axis, false);
        }

        // 注意：不再维护 motorActPosition，直接从电机获取实际位置
        // 这样在释放同步后，从动轴可以继续从当前位置开始独立运动
    }
    
    DEBUG_PRINT("[SyncControl] Sync released: masterPos=%.2f\n", sync->masterPosition);
}

/**
 * @brief 主轴绝对位置运动（同步触发）
 */
bool SyncControl_moveMasterAbsolute(SyncControl_t* sync, float32_t targetPos)
{
    DEBUG_PRINT("[SyncControl_moveMasterAbsolute] Called, syncEnable=%d, syncState=%d, targetPos=%.2f\n", 
           sync->syncEnable, sync->syncState, targetPos);
    
    if(!sync->syncEnable)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Sync not enabled\n");
        return false;
    }
    
    if(sync->syncState != SYNC_STATE_IDLE && 
       sync->syncState != SYNC_STATE_SYNCING &&
       sync->syncState != SYNC_STATE_STOPPED)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Cannot move in current state: %d\n", sync->syncState);
        return false;
    }
    
    DEBUG_PRINT("[SyncControl] Master absolute move: %.2f -> %.2f\n", sync->masterPosition, targetPos);
    DEBUG_PRINT("[SyncControl] Sync mode: %s, numSlaveAxes=%d\n", 
           (sync->syncMode == SYNC_MODE_RELATIVE) ? "RELATIVE" : "ABSOLUTE", sync->numSlaveAxes);
    
    // 关键修改：不再触发从动轴的独立运动
    // 从动轴的命令位置会在 C# 的 UpdateSyncControl 中根据主轴位置实时计算
    // 这样从动轴会严格跟随主轴，保持同步
    
    // 只触发主轴的运动
    MotionAxis_moveAbsolute(sync->masterAxis, targetPos);
    
    // 更新状态
    sync->syncState = SYNC_STATE_SYNCING;
    sync->syncMotionCount++;
    
    DEBUG_PRINT("[SyncControl] Sync motion started\n");
    
    return true;
}

/**
 * @brief 主轴相对位置运动（同步触发）
 */
bool SyncControl_moveMasterRelative(SyncControl_t* sync, float32_t distance)
{
    if(!sync->syncEnable)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Sync not enabled\n");
        return false;
    }
    
    // 计算主轴目标位置
    float32_t targetPos = sync->masterPosition + distance;
    
    // 使用绝对运动函数
    return SyncControl_moveMasterAbsolute(sync, targetPos);
}

/**
 * @brief 同步停止
 * @note 关键修改：只停止主轴，从动轴会跟随主轴减速停止
 *       这样可以保证主从轴同步停止
 */
void SyncControl_syncStop(SyncControl_t* sync)
{
    DEBUG_PRINT("[SyncControl] Sync stop requested\n");
    
    // 检查同步状态
    if(sync->syncState != SYNC_STATE_SYNCING && 
       sync->syncState != SYNC_STATE_STOPPING &&
       sync->syncState != SYNC_STATE_STOPPED)
    {
        DEBUG_PRINT("[SyncControl] Sync stop ignored - not in sync state\n");
        return;
    }
    
    // 只停止主轴（从动轴会跟随主轴减速）
    if(sync->masterAxis != NULL)
    {
        MotionAxis_stop(sync->masterAxis);
        DEBUG_PRINT("[SyncControl] Master axis stop command issued\n");
    }
    
    // 不直接停止从动轴！让它们跟随主轴停止
    // 从动轴的命令位置会在 UpdateSyncControl 中根据主轴位置更新
    // 这样主从轴会保持同步直到完全停止
    
    // 设置同步状态为减速停止中（不是立即转为IDLE）
    sync->syncState = SYNC_STATE_STOPPING;
    
    DEBUG_PRINT("[SyncControl] Sync stopping in progress (master will command slave stop)\n");
}

/**
 * @brief 同步急停
 * @note 关键修改：只急停主轴，从动轴会跟随主轴停止
 *       急停是快速停止，从动轴同样需要快速跟随停止
 */
void SyncControl_emergencyStop(SyncControl_t* sync)
{
    DEBUG_PRINT("[SyncControl] Emergency stop requested\n");
    
    // 检查同步状态
    if(sync->syncState != SYNC_STATE_SYNCING && 
       sync->syncState != SYNC_STATE_STOPPING &&
       sync->syncState != SYNC_STATE_STOPPED)
    {
        DEBUG_PRINT("[SyncControl] Emergency stop ignored - not in valid state\n");
        return;
    }
    
    // 只急停主轴（从动轴会跟随主轴停止）
    if(sync->masterAxis != NULL)
    {
        MotionAxis_emergencyStop(sync->masterAxis);
        DEBUG_PRINT("[SyncControl] Master axis emergency stop issued\n");
    }
    
    // 不直接急停从动轴！让它们跟随主轴停止
    // 从动轴的命令位置会在 UpdateSyncControl 中根据主轴位置更新
    // 这样主从轴会保持同步直到完全停止
    
    // 设置同步状态为减速停止中（急停也是先减速再停止）
    sync->syncState = SYNC_STATE_STOPPING;
    
    DEBUG_PRINT("[SyncControl] Sync emergency stopping (master will command slave stop)\n");
}

//=============================================================================
// 状态查询函数
//=============================================================================

/**
 * @brief 获取同步模式
 */
SyncMode_e SyncControl_getSyncMode(SyncControl_t* sync)
{
    return sync->syncMode;
}

/**
 * @brief 检查同步是否激活
 */
bool SyncControl_isSyncActive(SyncControl_t* sync)
{
    return sync->syncEnable && sync->syncState == SYNC_STATE_SYNCING;
}

/**
 * @brief 检查同步误差是否超限
 */
bool SyncControl_isErrorTrip(SyncControl_t* sync)
{
    return sync->syncErrorTrip;
}

/**
 * @brief 获取从动轴的同步误差
 */
float32_t SyncControl_getFollowingError(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    return sync->slaveAxes[slaveIndex].followingError;
}

/**
 * @brief 获取从动轴的实际位置
 * 
 * 直接从绑定的电机中获取实际位置（通过MotionAxis结构），
 * 不再维护内部副本，这样可以确保获取的是最新的电机位置。
 */
float32_t SyncControl_getSlaveActPosition(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    // 从绑定的运动轴中获取电机实际位置
    if(sync->slaveAxes[slaveIndex].axis != NULL)
    {
        MotionAxis_t* axis = sync->slaveAxes[slaveIndex].axis;
        if(axis->numMotors > 0 && axis->motors[0].enable)
        {
            // 从绑定的电机中获取实际位置（已经是电机坐标系）
            float32_t motorPos = axis->motors[0].actPosition;
            DEBUG_PRINT("[SyncControl_getSlaveActPosition] slaveIndex=%d, actPos=%.2f (from motor)\n",
                   slaveIndex, motorPos);
            return motorPos;
        }
    }
    
    // 如果没有绑定的轴或电机，返回0
    DEBUG_PRINT("[SyncControl_getSlaveActPosition] slaveIndex=%d: no bound axis or motor\n", slaveIndex);
    return 0.0f;
}

/**
 * @brief 获取从动轴的同步偏移量
 */
float32_t SyncControl_getSlaveSyncOffset(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    return sync->slaveAxes[slaveIndex].syncOffset;
}

/**
 * @brief 获取从动轴的零点位置
 */
float32_t SyncControl_getSlaveHomePosition(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    return sync->slaveAxes[slaveIndex].homePosition;
}

/**
 * @brief 获取从动轴数量
 */
uint16_t SyncControl_getNumSlaveAxes(SyncControl_t* sync)
{
    return sync->numSlaveAxes;
}

/**
 * @brief 获取从动轴的命令位置（由C代码根据同步模式计算）
 * @note 相对同步：slaveTargetPos = syncOffset + (masterPosition - syncStartMasterPos) * gearRatio
 *       绝对同步：slaveTargetPos = masterPosition * gearRatio
 */
float32_t SyncControl_getSlaveCmdPosition(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    
    float32_t cmdPos;
    if(sync->syncMode == SYNC_MODE_RELATIVE)
    {
        // 相对同步：使用计算公式
        cmdPos = SyncControl_calculateSlaveCmdPos(sync, slaveIndex);
    }
    else
    {
        // 绝对同步：直接乘以齿轮比
        cmdPos = sync->masterPosition * slave->gearRatio;
    }
    
    return cmdPos;
}

/**
 * @brief 获取从动轴的实际命令位置（不是基于主轴计算的位置）
 * 在MOVE_TO_ZERO状态下使用此函数获取从动轴的实际位置
 */
float32_t SyncControl_getSlaveActualCmdPosition(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return 0.0f;
    }
    
    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    
    if(slave->axis == NULL)
    {
        return 0.0f;
    }
    
    // 直接返回运动轴的命令位置
    return MotionAxis_getCmdPosition(slave->axis);
}

/**
 * @brief 获取主轴位置
 */
float32_t SyncControl_getMasterPosition(SyncControl_t* sync)
{
    return sync->masterPosition;
}

/**
 * @brief 获取同步开始时的主轴位置
 */
float32_t SyncControl_getSyncStartMasterPos(SyncControl_t* sync)
{
    return sync->syncStartMasterPos;
}


//=============================================================================
// 更新函数
//=============================================================================

/**
 * @brief 更新同步控制
 */
SyncState_e SyncControl_update(SyncControl_t* sync)
{
    uint16_t i;
    
    // 如果同步未使能，直接返回
    if(!sync->syncEnable)
    {
        return sync->syncState;
    }
    
    // 更新主轴位置
    SyncControl_updateMasterPosition(sync);
    
    // 如果正在同步运动中（包括STOPPING和STOPPED状态），检查同步误差
    if(sync->syncState == SYNC_STATE_SYNCING || 
       sync->syncState == SYNC_STATE_STOPPING ||
       sync->syncState == SYNC_STATE_STOPPED)
    {
        // 检查所有从动轴的跟踪误差
        sync->errorCheckCounter++;
        if(sync->errorCheckCounter >= SYNC_ERROR_CHECK_PERIOD)
        {
            sync->errorCheckCounter = 0;
            
            // 第一步：计算所有从动轴相对于主轴的误差
            float32_t slaveErrors[SYNC_MAX_AXES];
            uint16_t validSlaveCount = 0;
            
            for(i = 0; i < sync->numSlaveAxes; i++)
            {
                SyncAxis_t* slave = &sync->slaveAxes[i];
                
                // 只检查参与同步的从动轴，同时排除正在执行急停的轴（STOPPING状态）
                // 以及正在执行急停曲线的轴（isReplanning=true）
                if(slave->axis != NULL && slave->syncEnabled &&
                   !slave->axis->isReplanning &&
                   slave->axis->axisState != AXIS_STATE_STOPPING)
                {
                    // 计算命令位置和实际位置的误差
                    float32_t cmdPos;
                    if(sync->syncMode == SYNC_MODE_RELATIVE)
                    {
                        cmdPos = SyncControl_calculateSlaveCmdPos(sync, i);
                    }
                    else
                    {
                        cmdPos = sync->masterPosition * slave->gearRatio;
                    }
                    
                    // 获取从动轴的实际位置（从电机直接获取）
                    float32_t actualPos = SyncControl_getSlaveActPosition(sync, i);
                    
                    // **关键修复**：检测未初始化或无效的电机反馈
                    // 垃圾值检测：如果实际位置绝对值很大（如>10000），认为是无效的垃圾数据
                    // 未初始化检测：如果电机实际位置接近0且命令位置也接近0，认为尚未初始化
                    // 这可以防止在电机反馈初始化前触发错误的同步错误
                    bool isFeedbackInitialized = (ABS(actualPos) > 0.1f || ABS(cmdPos) > 0.1f);
                    bool isValidFeedback = (ABS(actualPos) < 10000.0f);  // 检测垃圾值（如-1601800960）
                    
                    if(!isFeedbackInitialized || !isValidFeedback)
                    {
                        DEBUG_PRINT("[SyncControl] ErrorCheck: Slave[%d] invalid feedback (cmdPos=%.2f, actualPos=%.2f), skipping\n",
                               i, cmdPos, actualPos);
                        slaveErrors[i] = 0.0f;
                        continue;
                    }
                    
                    float32_t error = cmdPos - actualPos;
                    slave->followingError = error;
                    slaveErrors[i] = error;
                    validSlaveCount++;
                    
                    DEBUG_PRINT("[SyncControl] ErrorCheck: Slave[%d] cmdPos=%.2f, actualPos=%.2f, error=%.2f, limit=%.2f, mode=%d\n",
                           i, cmdPos, actualPos, error, slave->followingErrorMax, sync->syncMode);
                    
                    // 1.1 检查主轴与从动轴的误差是否超限
                    if(ABS(error) > slave->followingErrorMax)
                    {
                        slave->errorCounter++;
                        sync->syncErrorTrip = true;
                        
                        DEBUG_PRINT("[SyncControl] ERROR: Master-Slave[%d] error exceeded: %.2f > %.2f\n",
                               i, error, slave->followingErrorMax);
                        
                        // 急停所有轴
                        SyncControl_emergencyStop(sync);
                        sync->syncState = SYNC_STATE_ERROR;
                        
                        return sync->syncState;
                    }
                }
                else
                {
                    slaveErrors[i] = 0.0f;
                }
            }
            
            // 第二步：计算从动轴之间的误差（间接计算）
            // 从动轴之间误差 = |error1 - error2|
            // 这反映了两个从动轴跟随主轴的"一致性"
            // 只检查两个都参与同步的从动轴
            if(validSlaveCount >= 2)
            {
                float32_t maxSlaveToSlaveError = 0.0f;
                uint16_t maxErrorSlaveIndex = 0;
                
                for(i = 0; i < sync->numSlaveAxes; i++)
                {
                    SyncAxis_t* slave = &sync->slaveAxes[i];
                    
                    // 只检查参与同步的从动轴，同时排除正在执行急停的轴（STOPPING状态）
                    // 以及正在执行急停曲线的轴（isReplanning=true）
                    // 注意：STANDBY状态的轴也需要检查（允许同步运动恢复）
                    if(slave->axis != NULL && slave->syncEnabled &&
                       !slave->axis->isReplanning &&
                       slave->axis->axisState != AXIS_STATE_STOPPING)
                    {
                        // 计算该从动轴与其他所有从动轴的最大误差
                        uint16_t j;
                        for(j = i + 1; j < sync->numSlaveAxes; j++)
                        {
                            SyncAxis_t* otherSlave = &sync->slaveAxes[j];

                            // 只检查参与同步的从动轴，同时排除正在执行急停的轴
                            if(otherSlave->axis != NULL && otherSlave->syncEnabled &&
                               !otherSlave->axis->isReplanning &&
                               otherSlave->axis->axisState != AXIS_STATE_STOPPING)
                            {
                                // 从动轴之间误差 = |error_i - error_j|
                                float32_t slaveToSlaveErr = ABS(slaveErrors[i] - slaveErrors[j]);
                                
                                if(slaveToSlaveErr > maxSlaveToSlaveError)
                                {
                                    maxSlaveToSlaveError = slaveToSlaveErr;
                                    maxErrorSlaveIndex = i;
                                }
                            }
                        }
                    }
                }
                
                // 更新最大从动轴间误差
                if(validSlaveCount >= 2)
                {
                    sync->slaveAxes[maxErrorSlaveIndex].slaveToSlaveError = maxSlaveToSlaveError;
                    
                    // 2.1 检查从动轴之间误差是否超限（更严格的阈值）
                    if(maxSlaveToSlaveError > sync->slaveAxes[maxErrorSlaveIndex].slaveToSlaveErrorMax)
                    {
                        sync->slaveAxes[maxErrorSlaveIndex].errorCounter++;
                        sync->syncErrorTrip = true;
                        
                        DEBUG_PRINT("[SyncControl] ERROR: Slave-Slave[%d] error exceeded: %.2f > %.2f\n",
                               maxErrorSlaveIndex, maxSlaveToSlaveError, 
                               sync->slaveAxes[maxErrorSlaveIndex].slaveToSlaveErrorMax);
                        
                        // 急停所有轴
                        SyncControl_emergencyStop(sync);
                        sync->syncState = SYNC_STATE_ERROR;
                        
                        return sync->syncState;
                    }
                }
            }
        }
    }
    
    // 检查同步是否完成
    // 关键修改：运动完成后转为STOPPED而不是IDLE，保持同步关系
    if(sync->syncState == SYNC_STATE_SYNCING)
    {
        bool allDone = true;
        
        // 检查主轴
        if(sync->masterAxis != NULL)
        {
            if(MotionAxis_getAxisState(sync->masterAxis) == AXIS_STATE_MOVING)
            {
                allDone = false;
            }
        }
        
        // 检查从动轴（只检查仍参与同步的从动轴）
        for(i = 0; i < sync->numSlaveAxes; i++)
        {
            // 只检查参与同步的从动轴（已脱开的从动轴由其自己的轨迹控制，不在此检查）
            if(sync->slaveAxes[i].axis != NULL &&
               sync->slaveAxes[i].syncEnabled)
            {
                if(MotionAxis_getAxisState(sync->slaveAxes[i].axis) == AXIS_STATE_MOVING)
                {
                    allDone = false;
                }
            }
        }
        
        if(allDone)
        {
            // 运动完成，设置为STOPPED而不是IDLE，保持同步关系
            sync->syncState = SYNC_STATE_STOPPED;
            DEBUG_PRINT("[SyncControl] Sync motion completed - now in STOPPED state\n");
        }
    }
    
    // 处理同步停止状态（STOPPING）
    // 关键：主轴停止后转为STOPPED（停止完成但保持同步关系）
    // 只有用户明确调用"释放同步"或"取消同步"时才转为IDLE
    // 这样从动轴会一直跟随主轴直到主轴停止，然后保持同步关系
    if(sync->syncState == SYNC_STATE_STOPPING)
    {
        // 检查主轴是否已停止（不再是MOVING状态）
        bool masterStopped = true;
        if(sync->masterAxis != NULL)
        {
            AxisState_e masterState = MotionAxis_getAxisState(sync->masterAxis);
            if(masterState == AXIS_STATE_MOVING)
            {
                masterStopped = false;
            }
        }
        
        if(masterStopped)
        {
            // 主轴已停止，同步停止完成
            // 转为STOPPED状态（保持同步关系，从动轴继续跟随主轴当前位置）
            sync->syncState = SYNC_STATE_STOPPED;
            DEBUG_PRINT("[SyncControl] Sync stop completed - now in STOPPED state (sync maintained)\n");
        }
        else
        {
            // 主轴仍在减速中，继续保持STOPPING状态
            // 从动轴会继续跟随主轴（在C#的UpdateSyncControl中处理）
            DEBUG_PRINT("[SyncControl] Sync stopping - master still decelerating\n");
        }
    }
    
    return sync->syncState;
}

/**
 * @brief 处理同步周期（高频任务，1ms周期调用）
 *
 * 职责分工：
 * 1. 【高频】所有从轴的 updateControl：已由C#主循环统一调用，此处不再重复调用
 * 2. 【低频】同步误差检查、状态转换（在 SyncControl_update 中处理）
 *
 * 【关键】：
 * - updateProfile 由 C# 主循环按 profileUpdateDivider 分频调用
 * - 脱开后的从轴（syncEnabled=false）：由 C# 调用自己的 updateProfile
 * - 同步从轴（syncEnabled=true）：由主轴的 updateProfile 回调填充缓冲区
 * - 所有轴的 updateControl 由 C# 主循环统一调用
 * - SyncControl_processCycle 只做同步状态管理
 */
void SyncControl_processCycle(SyncControl_t* sync)
{
    // 如果同步未使能，直接返回
    if(!sync->syncEnable)
    {
        return;
    }

    DEBUG_PRINT("[SyncControl_processCycle] syncState=%d, syncEnable=%d, masterPos=%.2f, masterVel=%.2f\n",
           sync->syncState, sync->syncEnable, sync->masterPosition, sync->masterVelocity);

    // 调试：显示从动轴缓冲区状态
    uint16_t i;
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        SyncAxis_t* slave = &sync->slaveAxes[i];
        if(slave->axis != NULL && slave->syncEnabled)
        {
            DEBUG_PRINT("[SyncControl] Slave[%d]: state=%d, bufferCount=%d, cmdPos=%.2f, cmdVel=%.2f\n",
                   i, slave->axis->axisState, slave->axis->posBuffer.count,
                   slave->axis->cmdPosition, slave->axis->cmdVelocity);
        }
    }

    // 【低频】处理同步状态（误差检查、状态转换等）
    SyncControl_update(sync);
}

/**
 * @brief 更新主轴位置
 */
void SyncControl_updateMasterPosition(SyncControl_t* sync)
{
    if(sync->masterAxis != NULL)
    {
        sync->masterPosition = MotionAxis_getCmdPosition(sync->masterAxis);
        sync->masterVelocity = MotionAxis_getCmdVelocity(sync->masterAxis);
        sync->masterCmdPosition = MotionAxis_getCmdPosition(sync->masterAxis);
        sync->masterCmdVelocity = MotionAxis_getCmdVelocity(sync->masterAxis);
    }
}

/**
 * @brief 更新主轴反馈（用于同步控制）
 * @param sync 同步控制对象指针
 * @param actPos 主轴实际位置（等于命令位置）
 * @param actVel 主轴实际速度
 */
void SyncControl_updateMasterFeedback(SyncControl_t* sync, float32_t actPos, float32_t actVel)
{
    // 主轴：实际位置 = 命令位置（严格按照轨迹执行）
    sync->masterPosition = actPos;
    sync->masterVelocity = actVel;
    sync->masterCmdPosition = actPos;
    sync->masterCmdVelocity = actVel;
}

//=============================================================================
// 统计信息函数
//=============================================================================

/**
 * @brief 获取同步运动次数
 */
uint32_t SyncControl_getSyncMotionCount(SyncControl_t* sync)
{
    return sync->syncMotionCount;
}

/**
 * @brief 获取回零次数
 * @note 此功能已移至HomingControl_t，由独立模块管理
 */
uint32_t SyncControl_getHomingCount(SyncControl_t* sync)
{
    (void)sync;
    return 0;  // 回零计数现在由HomingControl_t独立管理
}

/**
 * @brief 获取同步控制状态
 * @note 此功能已移至HomingControl_t，由独立模块管理
 */
SyncState_e SyncControl_getState(SyncControl_t* sync)
{
    return sync->syncState;
}

/**
 * @brief 检查所有轴是否都已回零
 * @note 此功能已移至HomingControl_t，由独立模块管理
 */
bool SyncControl_isAllHomed(SyncControl_t* sync)
{
    uint16_t i;
    (void)sync;
    // 检查所有从动轴
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        if(!sync->slaveAxes[i].isHomed)
        {
            return false;
        }
    }
    return true;
}

/**
 * @brief 检查指定从动轴是否已回零
 * @note 此功能已移至HomingControl_t，由独立模块管理
 */
bool SyncControl_isSlaveHomed(SyncControl_t* sync, uint16_t slaveIndex)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        return false;
    }
    return sync->slaveAxes[slaveIndex].isHomed;
}

/**
 * @brief 设置统一的回零位置
 * @note 此功能已移至HomingControl_t，由独立模块管理
 */
void SyncControl_setCommonHomePosition(SyncControl_t* sync, float32_t position)
{
    uint16_t i;
    (void)sync;
    (void)position;
    // 设置所有从动轴的统一回零位置
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        sync->slaveAxes[i].homePosition = position;
    }
}

/**
 * @brief 重置统计信息
 */
void SyncControl_resetStatistics(SyncControl_t* sync)
{
    uint16_t i;
    
    sync->syncMotionCount = 0;
    
    for(i = 0; i < sync->numSlaveAxes; i++)
    {
        sync->slaveAxes[i].errorCounter = 0;
    }
    
    DEBUG_PRINT("[SyncControl] Statistics reset\n");
}

/**
 * @brief 获取从动轴的缓冲区状态（用于调试和显示）
 * @param sync 同步控制对象指针
 * @param slaveIndex 从动轴索引
 * @param bufferCount 返回缓冲区数据点数量
 * @param bufferFreeSpace 返回缓冲区空闲空间
 * @note 用于C#界面显示从动轴缓冲区状态
 */
void SyncControl_getSlaveBufferStatus(SyncControl_t* sync, uint16_t slaveIndex,
                                     uint16_t* bufferCount, uint16_t* bufferFreeSpace)
{
    if(slaveIndex >= sync->numSlaveAxes)
    {
        *bufferCount = 0;
        *bufferFreeSpace = 0;
        return;
    }
    
    SyncAxis_t* slave = &sync->slaveAxes[slaveIndex];
    if(slave->axis != NULL)
    {
        *bufferCount = MotionAxis_getBufferCount(slave->axis);
        *bufferFreeSpace = MotionAxis_getBufferFreeSpace(slave->axis);
    }
    else
    {
        *bufferCount = 0;
        *bufferFreeSpace = 0;
    }
}

//=============================================================================
// 动态创建/销毁函数
//=============================================================================

/**
 * @brief 创建同步控制对象（动态分配）
 */
SyncControl_t* SyncControl_create(MotionAxis_t* masterAxis, float32_t profileUpdateTs)
{
    SyncControl_t* sync = (SyncControl_t*)malloc(sizeof(SyncControl_t));
    if(sync == NULL)
    {
        DEBUG_PRINT("[SyncControl] ERROR: Failed to allocate memory\n");
        return NULL;
    }

    // 初始化
    SyncControl_init(sync, masterAxis, profileUpdateTs);

    DEBUG_PRINT("[SyncControl] Created successfully\n");

    return sync;
}

/**
 * @brief 销毁同步控制对象（释放内存）
 */
void SyncControl_destroy(SyncControl_t* sync)
{
    if(sync != NULL)
    {
        DEBUG_PRINT("[SyncControl] Destroying...\n");
        free(sync);
        DEBUG_PRINT("[SyncControl] Destroyed\n");
    }
}

//=============================================================================
// End of File
//=============================================================================

