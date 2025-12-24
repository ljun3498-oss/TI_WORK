// FOC (Field Oriented Control)编码器模块头文件
#ifndef FOC_ENCODER_H
#define FOC_ENCODER_H

// 包含标准C库头文件
#include <stdint.h>     // 包含标准整数类型定义
#include <stdbool.h>    // 包含布尔类型定义

// 包含TI DriverLib头文件
#include "driverlib.h"   // 提供对TI C2000系列处理器外设的访问函数

// 包含FOC核心头文件
#include "foc_core.h"    // 提供FOC控制相关的定义和函数

// 编码器配置常量 - 注意：这些值与foc_core.h中的定义保持一致
#define ENCODER_LINES       2500U    // 编码器每转脉冲数
#define QUADRATURE_MULT     4U       // 正交解码倍数
#define MOTOR_POLE_PAIRS    4U       // 电机极对数

// 全局变量声明
// 注意：这里只声明foc_encoder.c特有的变量，其他变量已在foc_core.h中声明
extern int32_t curr_pos_latch;      // 当前位置锁存值
extern int32_t last_pos_latch;      // 上一次位置锁存值
extern int32_t pos_diff;            // 位置变化量

// 函数声明

// 编码器初始化函数 - 初始化编码器模块
void Encoder_init(void);

// 编码器校准函数 - 校准编码器
void Encoder_calibrate(void);

// 编码器数据更新函数 - 更新编码器数据并计算角度和速度
void Encoder_update(void);

// 检查编码器是否已校准
bool Encoder_isCalibrated(void);

// 获取电机机械角度(弧度)
float Encoder_getMechAngle(void);

// 获取电机电角度(弧度)
float Encoder_getElecAngle(void);

// 获取电机速度(弧度/秒)
float Encoder_getSpeedRad(void);

// 获取电机转速(转/分钟)
float Encoder_getSpeedRPM(void);

#endif // FOC_ENCODER_H