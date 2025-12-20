#ifndef FOC_PWM_H
#define FOC_PWM_H

#include "foc_core.h"

// 函数声明
void EPWM_Init(void);
void EPWM_SetDuty(float dutyA, float dutyB, float dutyC);

#endif // FOC_PWM_H
