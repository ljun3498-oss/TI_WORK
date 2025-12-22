/**
 * @file foc_svpwm.h
 * @brief SVPWM（空间矢量脉宽调制）模块头文件
 * @details 该文件定义了SVPWM模块的结构体和函数声明，
 *          用于实现FOC控制中的空间矢量脉宽调制算法。
 */

#ifndef FOC_SVPWM_H
#define FOC_SVPWM_H

#include "foc_core.h"  // 包含FOC核心模块头文件，提供系统参数和全局变量

// SVPWM相关结构体

/**
 * @brief SVPWM结构体
 * @details 包含SVPWM计算所需的参数和结果
 */
typedef struct {
    float Vdc;             // 母线电压，单位：V
    float Va, Vb, Vc;      // 三相电压，单位：V
    float Va_offset, Vb_offset, Vc_offset; // 偏移电压，用于中心对齐PWM
    uint16_t CMPA1, CMPB1; // EPWM1比较值，用于生成A相PWM信号
    uint16_t CMPA2, CMPB2; // EPWM2比较值，用于生成B相PWM信号
    uint16_t CMPA3, CMPB3; // EPWM3比较值，用于生成C相PWM信号
    uint8_t sector;        // 扇区，0-5，表示空间矢量所在的扇区
} SVPWM_Handle;

// 函数声明

/**
 * @brief SVPWM计算函数
 * @details 根据αβ坐标系下的电压指令计算SVPWM的比较值
 * @param[in,out] handle SVPWM结构体指针
 * @param[in] Valpha α轴电压指令，单位：V
 * @param[in] Vbeta β轴电压指令，单位：V
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta);

#endif // FOC_SVPWM_H
