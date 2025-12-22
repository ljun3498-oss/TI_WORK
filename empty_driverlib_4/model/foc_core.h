/**
 * @file foc_core.h
 * @brief FOC (Field Oriented Control)核心控制模块头文件
 * @details 该文件定义了FOC控制系统的核心参数、变量和函数原型，
 *          是整个FOC系统的基础。
 */

#ifndef FOC_CORE_H
#define FOC_CORE_H

/**
 * @brief 包含标准C库头文件
 */
#include <stdint.h>     // 包含标准整数类型定义
#include <stdbool.h>    // 包含布尔类型定义
#include <math.h>       // 包含数学函数库

/**
 * @brief 包含TI DriverLib头文件
 * @details 提供对TI C2000系列处理器外设的访问函数
 */
#include "driverlib.h"

// 系统/硬件参数
/**
 * @brief 系统时钟频率
 * @details 定义为200MHz，用于计算其他时钟相关参数
 */
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率：200MHz

/**
 * @brief PWM输出频率
 * @details 定义为10kHz，这是FOC控制的基础频率
 */
#define PWM_FREQ_HZ         10000.0f                // PWM频率：10kHz

/**
 * @brief PWM时基周期值
 * @details 根据系统时钟和PWM频率计算得出，用于设置PWM模块的周期寄存器
 */
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))

// 死区参数
/**
 * @brief 死区时间
 * @details 定义为400ns，用于防止上下桥臂同时导通导致的短路
 */
#define DEADTIME_NS         400U                   // 死区时间：400ns

/**
 * @brief 死区时间对应的时钟周期数
 * @details 根据死区时间和系统时钟计算得出，用于设置PWM模块的死区寄存器
 */
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))

/**
 * @brief 死区补偿电压
 * @details 用于补偿死区时间对输出电压的影响，当前设置为0.0f
 */
#define DEADTIME_COMP_VOLTAGE 0.0f                  // 死区补偿电压

// 编码器/电机参数
/**
 * @brief 编码器线数
 * @details 定义为2500线，用于计算电机转速和位置
 */
#define ENCODER_LINES       2500U                   // 编码器线数：2500线

/**
 * @brief 正交倍频系数
 * @details 定义为4倍频，用于提高编码器分辨率
 */
#define QUADRATURE_MULT     4U                      // 正交倍频：4倍频

/**
 * @brief 编码器每转计数
 * @details 编码器线数乘以正交倍频系数，得到每转的计数值
 */
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数

/**
 * @brief 电机极对数
 * @details 定义为4对极，用于将机械角度转换为电角度
 */
#define MOTOR_POLE_PAIRS    4U                      // 电机极对数：4对极

// 安全参数
/**
 * @brief 母线电压
 * @details 定义为24V，用于电压相关的计算和保护
 */
#define BUS_VOLTAGE         24.0f                   // 母线电压：24V

/**
 * @brief 最大相电流
 * @details 定义为7.8A，用于电流限幅和保护
 */
#define MAX_PHASE_CURRENT_A 7.8f                    // 最大相电流：7.8A

/**
 * @brief 过流保护阈值
 * @details 最大相电流的1.05倍，用于过流检测和保护
 */
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

// 控制环路参数
/**
 * @brief 控制频率
 * @details 设置为与PWM频率相同，即10kHz
 */
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率

/**
 * @brief 控制周期
 * @details 控制频率的倒数，单位为秒
 */
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期

// PI控制器参数
/**
 * @brief D轴电流环比例增益初始值
 */
#define KP_ID_INIT  0.5f                            // D轴电流环比例增益

/**
 * @brief D轴电流环积分增益初始值
 * @details 已调整为适应7.8A电流
 */
#define KI_ID_INIT  80.0f                           // D轴电流环积分增益（调整为适应7.8A电流）

/**
 * @brief Q轴电流环比例增益初始值
 */
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益

/**
 * @brief Q轴电流环积分增益初始值
 * @details 已调整为适应7.8A电流
 */
#define KI_IQ_INIT  80.0f                           // Q轴电流环积分增益（调整为适应7.8A电流）

// ADC到电流的转换系数
/**
 * @brief ADC计数到安培的转换系数
 * @details 计算方法：最大相电流(7.8A)除以ADC最大值(4096)，约等于0.001904
 */
#define ADC_COUNTS_TO_AMP   0.001904f               // ADC计数到安培的转换系数（7.8A/4096≈0.001904）

// 全局变量声明
// 删除了错误的TBPRD声明，使用TBPRD_VAL宏定义代替

/**
 * @brief 编码器原始位置
 * @details 存储编码器的原始计数值
 */
extern volatile int32_t encoder_raw_pos;             // 编码器原始位置

/**
 * @brief 索引信号检测标志
 * @details 当检测到编码器索引信号时设置为true
 */
extern volatile bool index_detected;                 // 索引信号检测标志

/**
 * @brief 编码器校准标志
 * @details 当编码器完成校准后设置为true
 */
extern volatile bool encoder_calibrated;             // 编码器校准标志

/**
 * @brief 电机机械角度
 * @details 单位为弧度，范围为0到2π
 */
extern volatile float motor_angle_mech_rad;          // 电机机械角度(弧度)

/**
 * @brief 电机电角度
 * @details 单位为弧度，范围为0到2π，机械角度乘以极对数
 */
extern volatile float motor_angle_elec_rad;          // 电机电角度(弧度)

/**
 * @brief 电机转速
 * @details 单位为RPM（转/分钟）
 */
extern volatile float motor_rpm;                     // 电机转速

/**
 * @brief 三相电流测量值
 * @details 单位为安培
 */
extern volatile float Ia_meas, Ib_meas, Ic_meas;     // 三相电流测量值

/**
 * @brief D/Q轴电流参考值
 * @details 单位为安培，由上层控制算法设置
 */
extern volatile float Id_ref, Iq_ref;                // D/Q轴电流参考值

/**
 * @brief D/Q轴积分项
 * @details 用于PI控制器的积分计算
 */
extern float Id_int, Iq_int;                  // D/Q轴积分项

/**
 * @brief D轴PI参数
 * @details KP_ID为比例增益，KI_ID为积分增益
 */
extern float KP_ID, KI_ID;                    // D轴PI参数

/**
 * @brief Q轴PI参数
 * @details KP_IQ为比例增益，KI_IQ为积分增益
 */
extern float KP_IQ, KI_IQ;                    // Q轴PI参数

/**
 * @brief 过流故障标志
 * @details 当检测到过流时设置为true
 */
extern volatile bool overcurrent_fault;              // 过流故障标志

// 函数声明

/**
 * @brief 浮点数值限幅函数
 * @details 将输入值限制在指定的上下限范围内
 * @param v 输入值
 * @param lo 下限值
 * @param hi 上限值
 * @return 限幅后的值
 */
float clampf_val(float v, float lo, float hi);

/**
 * @brief Clarke变换函数
 * @details 将三相电流(ia, ib, ic)转换为两相静止坐标系(alpha, beta)
 * @param ia A相电流
 * @param ib B相电流
 * @param ic C相电流
 * @param alpha 输出alpha轴电流
 * @param beta 输出beta轴电流
 */
void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta);

/**
 * @brief Park变换函数
 * @details 将两相静止坐标系(alpha, beta)转换为两相旋转坐标系(d, q)
 * @param alpha alpha轴电流
 * @param beta beta轴电流
 * @param theta 转子电角度
 * @param d 输出d轴电流
 * @param q 输出q轴电流
 */
void park_transform(float alpha, float beta, float theta, float *d, float *q);

/**
 * @brief 逆Park变换函数
 * @details 将两相旋转坐标系(d, q)转换为两相静止坐标系(alpha, beta)
 * @param vd d轴电压
 * @param vq q轴电压
 * @param theta 转子电角度
 * @param alpha 输出alpha轴电压
 * @param beta 输出beta轴电压
 */
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta);

/**
 * @brief D轴电流PI控制器
 * @details 计算D轴电流误差的PI控制输出
 * @param err D轴电流误差（参考值减去实际值）
 * @return PI控制器输出
 */
float pi_id(float err);

/**
 * @brief Q轴电流PI控制器
 * @details 计算Q轴电流误差的PI控制输出
 * @param err Q轴电流误差（参考值减去实际值）
 * @return PI控制器输出
 */
float pi_iq(float err);

#endif // FOC_CORE_H