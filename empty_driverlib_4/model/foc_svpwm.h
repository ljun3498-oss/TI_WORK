#ifndef FOC_SVPWM_H
#define FOC_SVPWM_H

#include "foc_core.h"

// SVPWM相关结构体
typedef struct {
    float Vdc;             // 母线电压
    float Va, Vb, Vc;      // 三相电压
    float Va_offset, Vb_offset, Vc_offset; // 偏移电压
    uint16_t CMPA1, CMPB1; // EPWM1比较值
    uint16_t CMPA2, CMPB2; // EPWM2比较值
    uint16_t CMPA3, CMPB3; // EPWM3比较值
    uint8_t sector;        // 扇区
} SVPWM_Handle;

// 函数声明
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta);

#endif // FOC_SVPWM_H
