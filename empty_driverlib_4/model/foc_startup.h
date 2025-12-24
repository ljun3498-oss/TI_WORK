// FOC (Field Oriented Control)电机启动模块头文件
#ifndef FOC_STARTUP_H
#define FOC_STARTUP_H

// 包含标准C库头文件
#include <stdint.h>     // 包含标准整数类型定义
#include <stdbool.h>    // 包含布尔类型定义
#include <math.h>       // 包含数学函数库

// 包含TI DriverLib头文件
#include "driverlib.h"

// 包含FOC核心模块头文件
#include "foc_core.h"

// 包含SVPWM模块头文件
#include "foc_svpwm.h"

// 启动状态枚举
typedef enum {
    STARTUP_STATE_IDLE = 0,        // 空闲状态
    STARTUP_STATE_ALIGNMENT,       // 电机对齐状态
    STARTUP_STATE_OPEN_LOOP,       // 开环运行状态
    STARTUP_STATE_CLOSE_LOOP,      // 闭环运行状态
    STARTUP_STATE_COMPLETE,        // 启动完成状态
    STARTUP_STATE_ERROR            // 错误状态
} StartupState;

// 启动参数结构体
typedef struct {
    StartupState state;            // 当前启动状态
    float alignment_time_ms;       // 对齐时间（毫秒）
    float alignment_current;       // 对齐电流（安培）
    float open_loop_time_ms;       // 开环运行时间（毫秒）
    float open_loop_speed;         // 开环运行速度（弧度/秒）
    float transition_speed;        // 切换到闭环的速度阈值（弧度/秒）
    float start_time;              // 启动开始时间
    bool encoder_index_detected;   // 编码器索引信号检测标志
} StartupParams;

// 全局变量声明
extern StartupParams startup_params;

// 函数声明
// 初始化启动参数
void Startup_init(void);

// 执行电机启动序列
void Startup_exec(void);

// 检查启动是否完成
bool Startup_isComplete(void);

// 获取当前启动状态
StartupState Startup_getState(void);

// 重置启动序列
void Startup_reset(void);

// 获取开环角度
float Startup_getOpenLoopAngle(void);

#endif // FOC_STARTUP_H
