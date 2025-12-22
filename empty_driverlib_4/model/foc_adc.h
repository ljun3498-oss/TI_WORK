// ADC（模数转换）模块头文件
#ifndef FOC_ADC_H
#define FOC_ADC_H

// 包含FOC核心控制模块头文件 - 提供ADC模块所需的系统参数和全局变量
#include "foc_core.h"

// ADC通道定义
#define ADC_CH_CURRENT_A    ADC_CH_ADCIN0    // A相电流
#define ADC_CH_CURRENT_B    ADC_CH_ADCIN1    // B相电流
#define ADC_CH_CURRENT_C    ADC_CH_ADCIN2    // C相电流

// 函数声明

// ADC模块初始化函数 - 配置ADC模块的时钟、分辨率、通道、触发源等参数，为电流测量做准备
void ADC_Init(void);

// 读取电流值函数 - 触发ADC转换并读取三相电流值，将ADC计数转换为实际电流值
void ADC_Read_Current(void);

// ADC中断服务函数 - 处理ADC转换完成中断，读取转换结果，计算电流值并进行过流检查
void ADC_Isr(void);

#endif // FOC_ADC_H