/**
 * @file foc_pwm.h
 * @brief PWM（脉宽调制）模块头文件
 * @details 该文件定义了PWM模块的函数原型，用于初始化和配置PWM模块，
 *          生成控制电机的脉冲信号。
 */

#ifndef FOC_PWM_H
#define FOC_PWM_H

/**
 * @brief 包含FOC核心控制模块头文件
 * @details 提供PWM模块所需的系统参数和全局变量
 */
#include "foc_core.h"

// 函数声明

/**
 * @brief PWM模块初始化函数
 * @details 配置PWM模块的时基、死区、GPIO、动作限定器等参数，
 *          为电机控制做准备。
 */
void EPWM_Init(void);

/**
 * @brief 设置PWM占空比函数
 * @details 根据给定的占空比设置三相PWM输出，
 *          用于控制电机的相电压。
 * @param dutyA A相占空比（范围：0.0到1.0）
 * @param dutyB B相占空比（范围：0.0到1.0）
 * @param dutyC C相占空比（范围：0.0到1.0）
 */
void EPWM_SetDuty(float dutyA, float dutyB, float dutyC);

#endif // FOC_PWM_H