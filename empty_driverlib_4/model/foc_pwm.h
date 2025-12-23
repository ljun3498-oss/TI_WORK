// FOC (Field Oriented Control) PWM模块头文件
#ifndef FOC_PWM_H
#define FOC_PWM_H

// 包含标准C库头文件
#include <stdint.h>     // 包含标准整数类型定义

// 包含TI DriverLib头文件
#include "driverlib.h"   // 提供对TI C2000系列处理器外设的访问函数

// 函数声明

// PWM初始化函数 - 配置EPWM模块以输出PWM信号
void EPWM_Init(void);

// PWM占空比设置函数 - 设置EPWM模块的占空比
void EPWM_SetDuty(uint16_t epwm_base, uint16_t duty);

#endif // FOC_PWM_H
