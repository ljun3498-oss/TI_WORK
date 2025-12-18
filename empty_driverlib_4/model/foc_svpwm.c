#include "foc_svpwm.h"

/**
 * @brief SVPWM计算函数
 * @param handle SVPWM句柄
 * @param Valpha α轴电压指令
 * @param Vbeta β轴电压指令
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta)
{
    float Vref = sqrt(Valpha * Valpha + Vbeta * Vbeta); // 参考电压矢量幅值
    float theta = atan2f(Vbeta, Valpha);                 // 参考电压矢量角度

    // 计算扇区
    float sec = theta / (M_PI / 3.0f);
    if (sec < 0) sec += 6;
    handle->sector = (uint8_t)(sec + 0.5f);
    if (handle->sector >= 6) handle->sector = 0;

    // 计算占空比
    float Ts = 1.0f / PWM_FREQ_HZ; // 开关周期
    float Ta, Tb, Tc;              // 各相导通时间

    switch (handle->sector)
    {
        case 0: // 扇区1
            Ta = (Valpha * Ts) / handle->Vdc;
            Tb = (Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            Tc = 0.0f;
            break;
        case 1: // 扇区2
            Ta = (Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            Tb = (sqrt(3.0f) * Vbeta * Ts) / handle->Vdc;
            Tc = 0.0f;
            break;
        case 2: // 扇区3
            Ta = 0.0f;
            Tb = (Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            Tc = (-Valpha * Ts) / handle->Vdc;
            break;
        case 3: // 扇区4
            Ta = 0.0f;
            Tb = (Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            Tc = (-Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            break;
        case 4: // 扇区5
            Ta = (-Valpha * Ts) / handle->Vdc;
            Tb = 0.0f;
            Tc = (-Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            break;
        case 5: // 扇区6
            Ta = (-Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f;
            Tb = 0.0f;
            Tc = (-sqrt(3.0f) * Vbeta * Ts) / handle->Vdc;
            break;
        default:
            Ta = Tb = Tc = 0.0f;
            break;
    }

    // 计算偏移量，确保所有占空比在0-1之间
    float offset = (Ta + Tb + Tc) / 3.0f;

    // 计算最终的占空比
    float dutyA = (Ta - offset) / Ts + 0.5f;
    float dutyB = (Tb - offset) / Ts + 0.5f;
    float dutyC = (Tc - offset) / Ts + 0.5f;

    // 限幅处理
    dutyA = clampf_val(dutyA, 0.0f, 1.0f);
    dutyB = clampf_val(dutyB, 0.0f, 1.0f);
    dutyC = clampf_val(dutyC, 0.0f, 1.0f);

    // 计算比较值
    handle->CMPA1 = (uint16_t)(dutyA * (float)TBPRD + 0.5f);
    handle->CMPA2 = (uint16_t)(dutyB * (float)TBPRD + 0.5f);
    handle->CMPA3 = (uint16_t)(dutyC * (float)TBPRD + 0.5f);

    // 记录三相电压值
    handle->Va = dutyA * handle->Vdc;
    handle->Vb = dutyB * handle->Vdc;
    handle->Vc = dutyC * handle->Vdc;
}