// SVPWM（空间矢量脉宽调制）模块源文件
#include "foc_svpwm.h"
#include "foc_core.h"  // 包含TBPRD_VAL宏定义
#include <math.h>

// 常量定义
#define SQRT3_OVER_2 0.86602540378f  // √3/2 的值
#define SQRT3 1.73205080757f          // √3 的值
#define ONE_OVER_SQRT3 0.57735026919f // 1/√3 的值

// SVPWM计算函数 - 根据αβ坐标系下的电压指令计算SVPWM的比较值
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta)
{
    float t0, t1, t2; // 重命名变量顺序，避免重复声明
    float Ta, Tb, Tc;
    
    // 计算扇区
    float Vbeta_n = SQRT3 * Vbeta;
    float Va0 = Valpha;
    float Vb0 = -0.5f * Valpha + 0.5f * Vbeta_n; // 修正Vb0的计算
    float Vc0 = -0.5f * Valpha - 0.5f * Vbeta_n; // 修正Vc0的计算
    
    uint8_t a = (Va0 > 0.0f) ? 1 : 0;
    uint8_t b = (Vb0 > 0.0f) ? 1 : 0;
    uint8_t c = (Vc0 > 0.0f) ? 1 : 0;
    
    // 扇区计算逻辑 - 使用标准SVPWM扇区定义
    handle->sector = 0;
    if (a == 1 && b == 0 && c == 0) handle->sector = 1;
    else if (a == 1 && b == 1 && c == 0) handle->sector = 2;
    else if (a == 0 && b == 1 && c == 0) handle->sector = 3;
    else if (a == 0 && b == 1 && c == 1) handle->sector = 4;
    else if (a == 0 && b == 0 && c == 1) handle->sector = 5;
    else if (a == 1 && b == 0 && c == 1) handle->sector = 6;
    
    // 计算基本矢量的作用时间
    float Uref = sqrtf(Valpha * Valpha + Vbeta * Vbeta);
    float theta = atan2f(Vbeta, Valpha);
    
    // 确保theta在[0, 2π)范围内
    if (theta < 0.0f) {
        theta += 2.0f * M_PI_F;
    }
    
    // 计算t1和t2
    t1 = SQRT3 * Uref * sinf(theta - (handle->sector - 1) * M_PI_F / 3.0f) / handle->Vdc;
    t2 = SQRT3 * Uref * sinf((handle->sector) * M_PI_F / 3.0f - theta) / handle->Vdc;
    
    // 计算零矢量的作用时间
    float Ts = 1.0f; // 开关周期归一化到1
    t0 = (Ts - t1 - t2) / 2.0f;
    
    // 根据扇区计算各相的占空比
    switch (handle->sector) {
        case 1:
            Ta = t0 + t1 + t2/2.0f;
            Tb = t0 + t2/2.0f;
            Tc = t0;
            break;
        case 2:
            Ta = t0 + t1/2.0f;
            Tb = t0 + t1/2.0f + t2;
            Tc = t0;
            break;
        case 3:
            Ta = t0;
            Tb = t0 + t1 + t2/2.0f;
            Tc = t0 + t2/2.0f;
            break;
        case 4:
            Ta = t0;
            Tb = t0 + t1/2.0f;
            Tc = t0 + t1/2.0f + t2;
            break;
        case 5:
            Ta = t0 + t2/2.0f;
            Tb = t0;
            Tc = t0 + t1 + t2/2.0f;
            break;
        case 6:
            Ta = t0 + t1/2.0f + t2;
            Tb = t0;
            Tc = t0 + t1/2.0f;
            break;
    }
    
    // 限幅
    Ta = fminf(fmaxf(Ta, 0.0f), 1.0f);
    Tb = fminf(fmaxf(Tb, 0.0f), 1.0f);
    Tc = fminf(fmaxf(Tc, 0.0f), 1.0f);

    // 边界保护 - 确保比较值不会接近0或TBPRD_VAL，避免边界情况
    const uint16_t MIN_CMP = 10;  // 最小比较值
    const uint16_t MAX_CMP = TBPRD_VAL - 10;  // 最大比较值

    /* up-down 模式：CMPA = duty * TBPRD */
    handle->CMPA1 = (uint16_t)(Ta * TBPRD_VAL);
    handle->CMPA2 = (uint16_t)(Tb * TBPRD_VAL);
    handle->CMPA3 = (uint16_t)(Tc * TBPRD_VAL);
    
    // 应用边界保护
    handle->CMPA1 = (uint16_t)fminf(fmaxf(handle->CMPA1, MIN_CMP), MAX_CMP);
    handle->CMPA2 = (uint16_t)fminf(fmaxf(handle->CMPA2, MIN_CMP), MAX_CMP);
    handle->CMPA3 = (uint16_t)fminf(fmaxf(handle->CMPA3, MIN_CMP), MAX_CMP);
    
    // 计算互补PWM输出（用于下桥臂）
    handle->CMPB1 = (uint16_t)(TBPRD_VAL - handle->CMPA1);
    handle->CMPB2 = (uint16_t)(TBPRD_VAL - handle->CMPA2);
    handle->CMPB3 = (uint16_t)(TBPRD_VAL - handle->CMPA3);
}



