// FOC (Field Oriented Control)编码器模块头文件
#ifndef FOC_ENCODER_H
#define FOC_ENCODER_H

// 包含标准C库头文件
#include <stdint.h>     // 包含标准整数类型定义
#include <stdbool.h>    // 包含布尔类型定义

// 包含TI DriverLib头文件
#include "driverlib.h"   // 提供对TI C2000系列处理器外设的访问函数

// 函数声明

// 编码器初始化函数 - 配置eQEP模块以读取编码器信号
void Encoder_Init(void);

// 编码器读取函数 - 读取编码器位置并计算电机角度和转速
void Encoder_Read(void);

// 编码器复位函数 - 复位编码器位置计数器
void Encoder_Reset(void);

#endif // FOC_ENCODER_H
