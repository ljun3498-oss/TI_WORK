/**
 * @file foc_encoder.h
 * @brief 编码器模块头文件
 * @details 该文件定义了编码器模块的函数声明，
 *          用于获取电机转子位置和速度信息。
 */

#ifndef FOC_ENCODER_H
#define FOC_ENCODER_H

#include "foc_core.h"  // 包含FOC核心模块头文件，提供系统参数和全局变量

// 函数声明

/**
 * @brief 编码器初始化函数
 * @details 配置QEP（正交编码器脉冲）模块的参数，
 *          为位置和速度测量做准备。
 */
void Encoder_Init(void);

/**
 * @brief 编码器读取函数
 * @details 读取编码器的位置值，计算电机角度和速度。
 */
void Encoder_Read(void);

/**
 * @brief 编码器复位函数
 * @details 重置编码器计数，通常用于初始化或校准。
 */
void Encoder_Reset(void);

#endif // FOC_ENCODER_H