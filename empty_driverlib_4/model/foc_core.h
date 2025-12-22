// FOC (Field Oriented Control)核心控制模块头文件
#ifndef FOC_CORE_H
#define FOC_CORE_H

// 包含标准C库头文件
#include <stdint.h>     // 包含标准整数类型定义
#include <stdbool.h>    // 包含布尔类型定义
#include <math.h>       // 包含数学函数库

// 包含TI DriverLib头文件 - 提供对TI C2000系列处理器外设的访问函数
#include "driverlib.h"

// 系统/硬件参数
// 系统时钟频率 - 定义为200MHz，用于计算其他时钟相关参数
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率：200MHz

// PWM输出频率 - 定义为10kHz，这是FOC控制的基础频率
#define PWM_FREQ_HZ         10000.0f                // PWM频率：10kHz

// PWM时基周期值 - 根据系统时钟和PWM频率计算得出，用于设置PWM模块的周期寄存器
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))

// 死区参数
// 死区时间 - 定义为400ns，用于防止上下桥臂同时导通导致的短路
#define DEADTIME_NS         400U                   // 死区时间：400ns

// 死区时间对应的时钟周期数 - 根据死区时间和系统时钟计算得出，用于设置PWM模块的死区寄存器
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))

// 死区补偿电压 - 用于补偿死区时间对输出电压的影响，当前设置为0.0f
#define DEADTIME_COMP_VOLTAGE 0.0f                  // 死区补偿电压

// 编码器/电机参数
// 编码器线数 - 定义为2500线，用于计算电机转速和位置
#define ENCODER_LINES       2500U                   // 编码器线数：2500线

// 正交倍频系数 - 定义为4倍频，用于提高编码器分辨率
#define QUADRATURE_MULT     4U                      // 正交倍频：4倍频

// 编码器每转计数 - 编码器线数乘以正交倍频系数，得到每转的计数值
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数

// 电机极对数 - 定义为4对极，用于将机械角度转换为电角度
#define MOTOR_POLE_PAIRS    4U                      // 电机极对数：4对极

// 安全参数
// 母线电压 - 定义为24V，用于电压相关的计算和保护
#define BUS_VOLTAGE         24.0f                   // 母线电压：24V

// 最大相电流 - 定义为7.8A，用于电流限幅和保护
#define MAX_PHASE_CURRENT_A 7.8f                    // 最大相电流：7.8A

// 过流保护阈值 - 最大相电流的1.05倍，用于过流检测和保护
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

// 控制环路参数
// 控制频率 - 设置为与PWM频率相同，即10kHz
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率

// 控制周期 - 控制频率的倒数，单位为秒
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期

// PI控制器参数
// D轴电流环比例增益初始值
#define KP_ID_INIT  0.5f                            // D轴电流环比例增益

// D轴电流环积分增益初始值 - 已调整为适应7.8A电流
#define KI_ID_INIT  80.0f                           // D轴电流环积分增益（调整为适应7.8A电流）

// Q轴电流环比例增益初始值
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益

// Q轴电流环积分增益初始值 - 已调整为适应7.8A电流
#define KI_IQ_INIT  80.0f                           // Q轴电流环积分增益（调整为适应7.8A电流）

// ADC到电流的转换系数
// ADC计数到安培的转换系数 - 计算方法：最大相电流(7.8A)除以ADC最大值(4096)，约等于0.001904
#define ADC_COUNTS_TO_AMP   0.001904f               // ADC计数到安培的转换系数（7.8A/4096≈0.001904）

// 全局变量声明
// 删除了错误的TBPRD声明，使用TBPRD_VAL宏定义代替

// 编码器原始位置 - 存储编码器的原始计数值
extern volatile int32_t encoder_raw_pos;             // 编码器原始位置

// 索引信号检测标志 - 当检测到编码器索引信号时设置为true
extern volatile bool index_detected;                 // 索引信号检测标志

// 编码器校准标志 - 当编码器完成校准后设置为true
extern volatile bool encoder_calibrated;             // 编码器校准标志

// 电机机械角度 - 单位为弧度，范围为0到2π
extern volatile float motor_angle_mech_rad;          // 电机机械角度(弧度)

// 电机电角度 - 单位为弧度，范围为0到2π，机械角度乘以极对数
extern volatile float motor_angle_elec_rad;          // 电机电角度(弧度)

// 电机转速 - 单位为RPM（转/分钟）
extern volatile float motor_rpm;                     // 电机转速

// 电机转速 - 单位为rad/s（弧度/秒）
extern volatile float motor_speed_rad;               // 电机转速(rad/s)

// 三相电流测量值 - 单位为安培
extern volatile float Ia_meas, Ib_meas, Ic_meas;     // 三相电流测量值

// D/Q轴电流参考值 - 单位为安培，由上层控制算法设置
extern volatile float Id_ref, Iq_ref;                // D/Q轴电流参考值

// D/Q轴积分项 - 用于PI控制器的积分计算
extern float Id_int, Iq_int;                  // D/Q轴积分项

// D轴PI参数 - KP_ID为比例增益，KI_ID为积分增益
extern float KP_ID, KI_ID;                    // D轴PI参数

// Q轴PI参数 - KP_IQ为比例增益，KI_IQ为积分增益
extern float KP_IQ, KI_IQ;                    // Q轴PI参数

// 过流故障标志 - 当检测到过流时设置为true
extern volatile bool overcurrent_fault;              // 过流故障标志

// 函数声明

// 浮点数值限幅函数 - 将输入值限制在指定的上下限范围内
float clampf_val(float v, float lo, float hi);

// Clarke变换函数 - 将三相电流(ia, ib, ic)转换为两相静止坐标系(alpha, beta)
void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta);

// Park变换函数 - 将两相静止坐标系(alpha, beta)转换为两相旋转坐标系(d, q)
void park_transform(float alpha, float beta, float theta, float *d, float *q);

// 逆Park变换函数 - 将两相旋转坐标系(d, q)转换为两相静止坐标系(alpha, beta)
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta);

// D轴电流PI控制器 - 计算D轴电流误差的PI控制输出
float pi_id(float err);

// Q轴电流PI控制器 - 计算Q轴电流误差的PI控制输出
float pi_iq(float err);

#endif // FOC_CORE_H