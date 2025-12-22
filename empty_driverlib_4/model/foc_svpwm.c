/**
 * @file foc_svpwm.c
 * @brief SVPWM（空间矢量脉宽调制）模块源文件
 * @details 该文件实现了SVPWM算法，根据αβ坐标系下的电压指令计算PWM比较值
 */

#include "foc_svpwm.h"
#include <math.h>

/**
 * @brief SVPWM计算函数
 * @details 根据αβ坐标系下的电压指令计算SVPWM的比较值
 * @param[in,out] handle SVPWM结构体指针
 * @param[in] Valpha α轴电压指令，单位：V
 * @param[in] Vbeta β轴电压指令，单位：V
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta)
{
    // 计算电压矢量幅值和角度
    float Vmag = sqrtf(Valpha * Valpha + Vbeta * Vbeta);
    float angle = atan2f(Vbeta, Valpha);
    
    // 角度归一化到[0, 2π]
    if (angle < 0.0f) {
        angle += 2.0f * M_PI;
    }
    
    // 计算扇区号 (0-5)
    float angle_sector = angle / (M_PI / 3.0f);  // π/3 = 60°
    uint8_t sector = (uint8_t)floorf(angle_sector);
    if (sector >= 6) {
        sector = 0;
    }
    handle->sector = sector;
    
    // 计算占空比
    float T0 = (1.0f - Vmag / (2.0f/3.0f * handle->Vdc)) * TBPRD_VAL;  // 零矢量时间
    float T1 = Vmag / (2.0f/3.0f * handle->Vdc) * cosf(M_PI/3.0f * (sector + 1) - angle) * TBPRD_VAL;
    float T2 = Vmag / (2.0f/3.0f * handle->Vdc) * cosf(angle - M_PI/3.0f * sector) * TBPRD_VAL;
    
    // 计算各相占空比
    float Ta, Tb, Tc;
    switch(sector) {
        case 0:
            Ta = T1 + T2 + T0/2;
            Tb = T2 + T0/2;
            Tc = T0/2;
            break;
        case 1:
            Ta = T1 + T0/2;
            Tb = T1 + T2 + T0/2;
            Tc = T0/2;
            break;
        case 2:
            Ta = T0/2;
            Tb = T1 + T2 + T0/2;
            Tc = T2 + T0/2;
            break;
        case 3:
            Ta = T0/2;
            Tb = T1 + T0/2;
            Tc = T1 + T2 + T0/2;
            break;
        case 4:
            Ta = T2 + T0/2;
            Tb = T0/2;
            Tc = T1 + T2 + T0/2;
            break;
        case 5:
            Ta = T1 + T2 + T0/2;
            Tb = T0/2;
            Tc = T1 + T0/2;
            break;
        default:
            Ta = Tb = Tc = TBPRD_VAL / 2;
            break;
    }
    
    // 更新比较值
    handle->CMPA1 = (uint16_t)Ta;
    handle->CMPB1 = (uint16_t)(TBPRD_VAL - Ta);
    handle->CMPA2 = (uint16_t)Tb;
    handle->CMPB2 = (uint16_t)(TBPRD_VAL - Tb);
    handle->CMPA3 = (uint16_t)Tc;
    handle->CMPB3 = (uint16_t)(TBPRD_VAL - Tc);
}
