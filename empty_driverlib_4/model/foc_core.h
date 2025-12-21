#ifndef FOC_CORE_H
#define FOC_CORE_H

#include <stdint.h>
#include <stdbool.h>
#include <math.h>

// 包含TI DriverLib头文件
#include "driverlib.h"

// 系统/硬件参数
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率：200MHz
#define PWM_FREQ_HZ         10000.0f                // PWM频率：10kHz
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))

// 死区参数
#define DEADTIME_NS         400U                   // 死区时间：400ns
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))
#define DEADTIME_COMP_VOLTAGE 0.0f                  // 死区补偿电压

// 编码器/电机参数
#define ENCODER_LINES       2500U                   // 编码器线数：2500线
#define QUADRATURE_MULT     4U                      // 正交倍频：4倍频
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数
#define MOTOR_POLE_PAIRS    4U                      // 电机极对数：4对极

// 安全参数
#define BUS_VOLTAGE         48.0f                   // 母线电压：48V
#define MAX_PHASE_CURRENT_A 50.0f                   // 最大相电流：50A
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

// 控制环路参数
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期

// PI控制器参数
#define KP_ID_INIT  0.5f                            // D轴电流环比例增益
#define KI_ID_INIT  200.0f                          // D轴电流环积分增益
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益
#define KI_IQ_INIT  200.0f                          // Q轴电流环积分增益

// ADC到电流的转换系数
#define ADC_COUNTS_TO_AMP   0.0122f                 // ADC计数到安培的转换系数

// 全局变量声明
// 删除了错误的TBPRD声明，使用TBPRD_VAL宏定义代替
extern volatile int32_t encoder_raw_pos;             // 编码器原始位置
extern volatile bool index_detected;                 // 索引信号检测标志
extern volatile bool encoder_calibrated;             // 编码器校准标志
extern volatile float motor_angle_mech_rad;          // 电机机械角度(弧度)
extern volatile float motor_angle_elec_rad;          // 电机电角度(弧度)
extern volatile float motor_rpm;                     // 电机转速
extern volatile float Ia_meas, Ib_meas, Ic_meas;     // 三相电流测量值
extern volatile float Id_ref, Iq_ref;                // D/Q轴电流参考值
extern float Id_int, Iq_int;                  // D/Q轴积分项
extern float KP_ID, KI_ID;                    // D轴PI参数
extern float KP_IQ, KI_IQ;                    // Q轴PI参数
extern volatile bool overcurrent_fault;              // 过流故障标志

// 函数声明
float clampf_val(float v, float lo, float hi);
void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta);
void park_transform(float alpha, float beta, float theta, float *d, float *q);
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta);
float pi_id(float err);
float pi_iq(float err);

#endif // FOC_CORE_H
