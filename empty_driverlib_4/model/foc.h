// FOC (Field Oriented Control)系统主头文件
#ifndef FOC_H
#define FOC_H

// 包含FOC核心控制模块头文件 - 定义了FOC系统的核心参数、变量和函数，如Clarke变换、Park变换、PI控制等
#include "foc_core.h"

// 包含SVPWM（空间矢量脉宽调制）模块头文件 - 实现了SVPWM算法，用于生成PWM控制信号
#include "foc_svpwm.h"

// 包含编码器模块头文件 - 用于处理编码器信号，获取电机转子位置和速度信息
#include "foc_encoder.h"

// 包含ADC模块头文件 - 用于读取ADC采样值，获取电机相电流等模拟信号
#include "foc_adc.h"

// 包含PWM模块头文件 - 用于初始化和配置PWM模块，生成控制电机的脉冲信号
#include "foc_pwm.h"

#endif // FOC_H