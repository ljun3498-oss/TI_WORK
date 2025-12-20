#ifndef FOC_ADC_H
#define FOC_ADC_H

#include "foc_core.h"

// ADC通道定义
#define ADC_CH_CURRENT_A    ADC_ADCSOC00_CHANNEL_0    // A相电流
#define ADC_CH_CURRENT_B    ADC_ADCSOC01_CHANNEL_1    // B相电流
#define ADC_CH_CURRENT_C    ADC_ADCSOC02_CHANNEL_2    // C相电流

// 函数声明
void ADC_Init(void);
void ADC_Read_Current(void);
void ADC_Isr(void);

#endif // FOC_ADC_H

