/**
 * @file foc_svpwm.c
 * @brief SVPWM（空间矢量脉宽调制）模块实现
 * @details 该文件实现了SVPWM算法，
 *          用于将αβ坐标系下的电压指令转换为三相PWM信号。
 */

#include "foc_svpwm.h"  // 包含SVPWM模块头文件

/**
 * @brief SVPWM计算函数
 * @details 根据αβ坐标系下的电压指令计算SVPWM的比较值
 * @param[in,out] handle SVPWM结构体指针
 * @param[in] Valpha α轴电压指令，单位：V
 * @param[in] Vbeta β轴电压指令，单位：V
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta)
{
    float Vref = sqrt(Valpha * Valpha + Vbeta * Vbeta); // 参考电压矢量幅值
    float theta = atan2f(Vbeta, Valpha);                 // 参考电压矢量角度，单位：弧度

    // 计算扇区
    float sec = theta / (M_PI / 3.0f); // 将角度转换为扇区数（0-6）
    if (sec < 0) sec += 6;             // 处理负角度情况
    handle->sector = (uint8_t)(sec + 0.5f); // 四舍五入确定扇区
    if (handle->sector >= 6) handle->sector = 0; // 确保扇区在0-5范围内

    // 计算占空比
    float Ts = 1.0f / PWM_FREQ_HZ; // 开关周期，单位：秒
    float Ta, Tb, Tc;              // 各相导通时间，单位：秒

    // 根据所在扇区计算各相导通时间
    switch (handle->sector)
    {
        case 0: // 扇区1
            Ta = (Valpha * Ts) / handle->Vdc; // A相导通时间
            Tb = (Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // B相导通时间
            Tc = 0.0f; // C相导通时间
            break;
        case 1: // 扇区2
            Ta = (Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // A相导通时间
            Tb = (sqrt(3.0f) * Vbeta * Ts) / handle->Vdc; // B相导通时间
            Tc = 0.0f; // C相导通时间
            break;
        case 2: // 扇区3
            Ta = 0.0f; // A相导通时间
            Tb = (Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // B相导通时间
            Tc = (-Valpha * Ts) / handle->Vdc; // C相导通时间
            break;
        case 3: // 扇区4
            Ta = 0.0f; // A相导通时间
            Tb = (Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // B相导通时间
            Tc = (-Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // C相导通时间
            break;
        case 4: // 扇区5
            Ta = (-Valpha * Ts) / handle->Vdc; // A相导通时间
            Tb = 0.0f; // B相导通时间
            Tc = (-Valpha * Ts - sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // C相导通时间
            break;
        case 5: // 扇区6
            Ta = (-Valpha * Ts + sqrt(3.0f) * Vbeta * Ts) / handle->Vdc / 2.0f; // A相导通时间
            Tb = 0.0f; // B相导通时间
            Tc = (-sqrt(3.0f) * Vbeta * Ts) / handle->Vdc; // C相导通时间
            break;
        default:
            Ta = Tb = Tc = 0.0f; // 默认情况，所有相导通时间为0
            break;
    }

    // 计算偏移量，确保所有占空比在0-1之间
    float offset = (Ta + Tb + Tc) / 3.0f; // 计算平均偏移量

    // 计算最终的占空比
    float dutyA = (Ta - offset) / Ts + 0.5f; // A相占空比，0-1之间
    float dutyB = (Tb - offset) / Ts + 0.5f; // B相占空比，0-1之间
    float dutyC = (Tc - offset) / Ts + 0.5f; // C相占空比，0-1之间

    // 限幅处理，确保占空比在0-1范围内
    dutyA = clampf_val(dutyA, 0.0f, 1.0f); // A相占空比限幅
    dutyB = clampf_val(dutyB, 0.0f, 1.0f); // B相占空比限幅
    dutyC = clampf_val(dutyC, 0.0f, 1.0f); // C相占空比限幅

    // 计算PWM比较值（同时设置A和B比较器，用于互补输出）
    handle->CMPA1 = handle->CMPB1 = (uint16_t)(dutyA * (float)TBPRD_VAL + 0.5f); // A相PWM比较值
    handle->CMPA2 = handle->CMPB2 = (uint16_t)(dutyB * (float)TBPRD_VAL + 0.5f); // B相PWM比较值
    handle->CMPA3 = handle->CMPB3 = (uint16_t)(dutyC * (float)TBPRD_VAL + 0.5f); // C相PWM比较值

    // 记录三相电压值
    handle->Va = dutyA * handle->Vdc; // A相电压，单位：V
    handle->Vb = dutyB * handle->Vdc; // B相电压，单位：V
    handle->Vc = dutyC * handle->Vdc; // C相电压，单位：V
}
