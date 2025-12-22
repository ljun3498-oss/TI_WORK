/**
 * @file foc_adc.h
 * @brief ADC（模数转换）模块头文件
 * @details 该文件定义了ADC模块的宏定义和函数原型，用于初始化ADC模块，
 *          读取电机相电流等模拟信号。
 */

#ifndef FOC_ADC_H
#define FOC_ADC_H

/**
 * @brief 包含FOC核心控制模块头文件
 * @details 提供ADC模块所需的系统参数和全局变量
 */
#include "foc_core.h"

// ADC通道定义

/**
 * @brief A相电流ADC通道
 * @details 定义为ADC_ADCSOC00_CHANNEL_0，用于测量A相电流
 */
#define ADC_CH_CURRENT_A    ADC_ADCSOC00_CHANNEL_0    // A相电流

/**
 * @brief B相电流ADC通道
 * @details 定义为ADC_ADCSOC01_CHANNEL_1，用于测量B相电流
 */
#define ADC_CH_CURRENT_B    ADC_ADCSOC01_CHANNEL_1    // B相电流

/**
 * @brief C相电流ADC通道
 * @details 定义为ADC_ADCSOC02_CHANNEL_2，用于测量C相电流
 */
#define ADC_CH_CURRENT_C    ADC_ADCSOC02_CHANNEL_2    // C相电流

// 函数声明

/**
 * @brief ADC模块初始化函数
 * @details 配置ADC模块的时钟、分辨率、通道、触发源等参数，
 *          为电流测量做准备。
 */
void ADC_Init(void);

/**
 * @brief 读取电流值函数
 * @details 触发ADC转换并读取三相电流值，
 *          将ADC计数转换为实际电流值。
 */
void ADC_Read_Current(void);

/**
 * @brief ADC中断服务函数
 * @details 处理ADC转换完成中断，读取转换结果，
 *          计算电流值并进行过流检查。
 */
void ADC_Isr(void);

#endif // FOC_ADC_H