//#############################################################################
//
// FILE:   scurve_profile.h
//
// TITLE:  S-Curve Trajectory Profile Header (Optional Feature)
//
// 功能说明：
//   S型曲线轨迹规划模块（可选功能），包含：
//   - S型曲线参数计算
//   - 位置/速度/加速度实时计算
//   - 加速度连续性处理
//
// 裁剪说明：
//   - 设置 USE_SCURVE_PROFILE = 0 可完全禁用S型曲线功能
//   - 禁用后系统将仅使用梯形曲线，节省约2KB代码空间
//   - 默认启用S型曲线，通过jerkTime>0运行时切换
//
//######################################################## #####################
#ifndef SCURVE_PROFILE_H
#define SCURVE_PROFILE_H

//*****************************************************************************
// Includes
//*****************************************************************************
#include "motion_control.h"

//*****************************************************************************
// 配置：S型曲线功能开关
//*****************************************************************************
// 设置为 1 启用S型曲线功能（默认）
// 设置为 0 禁用S型曲线功能，仅使用梯形曲线
#ifndef USE_SCURVE_PROFILE
#define USE_SCURVE_PROFILE  1
#endif

//*****************************************************************************
// Function Prototypes (仅在启用S型曲线时编译)
//*****************************************************************************
#if USE_SCURVE_PROFILE

//
// S型曲线规划计算
//
void SCurve_computeProfile(TrapezoidalProfile_t *profile);

//
// S型曲线实时计算（带加速度过渡段）
//
float32_t SCurve_getPosition(TrapezoidalProfile_t *profile, float32_t t);
float32_t SCurve_getVelocity(TrapezoidalProfile_t *profile, float32_t t);
float32_t SCurve_getAcceleration(TrapezoidalProfile_t *profile, float32_t t);
float32_t SCurve_getJerk(TrapezoidalProfile_t *profile);

#endif // USE_SCURVE_PROFILE

#endif // SCURVE_PROFILE_H

