// ADC（模数转换）模块头文件
#ifndef FOC_ADC_H
#define FOC_ADC_H

// 包含FOC核心控制模块头文件 - 提供ADC模块所需的系统参数和全局变量
#include "foc_core.h"

// 函数声明

// ADC模块初始化函数 - 配置ADC模块的时钟、分辨率、通道、触发源等参数，为电流测量做准备
void ADC_Init(void);

// 读取电流值函数 - 触发ADC转换并读取三相电流值，将ADC计数转换为实际电流值
void ADC_Read_Current(void);

// 注意：ADC_Isr函数声明已移除，因为在FOC_auto_start.C中已定义了更完整的adc_isr中断服务程序

#endif // FOC_ADC_H
