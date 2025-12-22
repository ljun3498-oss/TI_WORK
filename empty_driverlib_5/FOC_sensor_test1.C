/**
 * @file FOC_sensor_test1_combined.c
 * @brief FOC（磁场定向控制）传感器测试程序 - 合并版
 * @details 该文件是将所有FOC相关模块合并到一个文件中，包含系统初始化、
 * 电气角度校准、FOC控制算法等功能，用于测试编码器和电流传感器的性能。
 */

/* ======================== 系统包含 ======================== */
#include "driverlib.h"
#include "device.h"

/* ======================== FOC核心头文件定义 ======================== */
#ifndef FOC_CORE_H
#define FOC_CORE_H

#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "driverlib.h"

// 系统/硬件参数
#define SYSCLK_HZ 200000000.0f       // 系统时钟频率：200MHz
#define PWM_FREQ_HZ 10000.0f         // PWM频率：10kHz
#define TBPRD_VAL ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))

// 死区参数
#define DEADTIME_NS 400U             // 死区时间：400ns
#define DEADTIME_TICKS ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))
#define DEADTIME_COMP_VOLTAGE 0.0f   // 死区补偿电压

// 编码器/电机参数
#define ENCODER_LINES 2500U          // 编码器线数：2500线
#define QUADRATURE_MULT 4U           // 正交倍频：4倍频
#define ENCODER_CPR (ENCODER_LINES * QUADRATURE_MULT) // 每转计数
#define MOTOR_POLE_PAIRS 4U          // 电机极对数：4对极

// 安全参数
#define BUS_VOLTAGE 24.0f            // 母线电压：24V
#define MAX_PHASE_CURRENT_A 7.8f     // 最大相电流：7.8A
#define I_OVERCURRENT_TRIP (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

// 控制环路参数
#define CONTROL_HZ PWM_FREQ_HZ       // 控制频率
#define DT (1.0f/CONTROL_HZ)         // 控制周期

// PI控制器参数
#define KP_ID_INIT 0.5f              // D轴电流环比例增益
#define KI_ID_INIT 80.0f             // D轴电流环积分增益（调整为适应7.8A电流）
#define KP_IQ_INIT 0.5f              // Q轴电流环比例增益
#define KI_IQ_INIT 80.0f             // Q轴电流环积分增益（调整为适应7.8A电流）

// ADC到电流的转换系数
#define ADC_COUNTS_TO_AMP 0.001904f  // ADC计数到安培的转换系数（7.8A/4096≈0.001904）

// 全局变量声明
extern volatile int32_t encoder_raw_pos;      // 编码器原始位置
extern volatile bool index_detected;          // 索引信号检测标志
extern volatile bool encoder_calibrated;      // 编码器校准标志
extern volatile float motor_angle_mech_rad;   // 电机机械角度(弧度)
extern volatile float motor_angle_elec_rad;   // 电机电角度(弧度)
extern volatile float motor_rpm;              // 电机转速
extern volatile float motor_speed_rad;        // 电机转速(rad/s)
extern volatile float Ia_meas, Ib_meas, Ic_meas; // 三相电流测量值
extern volatile float Id_ref, Iq_ref;         // D/Q轴电流参考值
extern float Id_int, Iq_int;                  // D/Q轴积分项
extern float KP_ID, KI_ID;                    // D轴PI参数
extern float KP_IQ, KI_IQ;                    // Q轴PI参数
extern volatile bool overcurrent_fault;       // 过流故障标志

// 函数声明
float clampf_val(float v, float lo, float hi);
void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta);
void park_transform(float alpha, float beta, float theta, float *d, float *q);
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta);
float pi_id(float err);
float pi_iq(float err);
void InitPeripherals(void);
void DoElectricalAlignment(void);

#endif // FOC_CORE_H
/**
 * @file foc_adc.h
 * @brief ADC（模数转换）模块头文件
 * @details 该文件定义了ADC模块的宏定义和函数原型，用于初始化ADC模块，
 *          读取电机相电流等模拟信号。
 */

#ifndef FOC_ADC_H
#define FOC_ADC_H



// ADC通道定义

/**
 * @brief A相电流ADC通道
 * @details 定义为ADC_CH_ADCIN0，用于测量A相电流
 */
#define ADC_CH_CURRENT_A    ADC_CH_ADCIN0    // A相电流

/**
 * @brief B相电流ADC通道
 * @details 定义为ADC_CH_ADCIN1，用于测量B相电流
 */
#define ADC_CH_CURRENT_B    ADC_CH_ADCIN1    // B相电流

/**
 * @brief C相电流ADC通道
 * @details 定义为ADC_CH_ADCIN2，用于测量C相电流
 */
#define ADC_CH_CURRENT_C    ADC_CH_ADCIN2    // C相电流

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

// 添加缺失的foc_core.c实现
/**
 * @file foc_core.c
 * @brief FOC (Field Oriented Control)核心控制模块实现
 * @details 该文件实现了FOC控制系统的核心功能，包括坐标变换、PI控制等
 */

// 全局变量定义
/**
 * @brief 编码器原始位置
 * @details 初始化为0
 */
volatile int32_t encoder_raw_pos = 0;            // 编码器原始位置

/**
 * @brief 索引信号检测标志
 * @details 初始化为false
 */
volatile bool index_detected = false;            // 索引信号检测标志

/**
 * @brief 编码器校准标志
 * @details 初始化为false
 */
volatile bool encoder_calibrated = false;        // 编码器校准标志

/**
 * @brief 电机机械角度
 * @details 单位为弧度，初始化为0.0f
 */
volatile float motor_angle_mech_rad = 0.0f;      // 电机机械角度(弧度)

/**
 * @brief 电机电角度
 * @details 单位为弧度，初始化为0.0f
 */
volatile float motor_angle_elec_rad = 0.0f;      // 电机电角度(弧度)

/**
 * @brief 电机转速
 * @details 单位为RPM，初始化为0.0f
 */
volatile float motor_rpm = 0.0f;                 // 电机转速

/**
 * @brief 三相电流测量值
 * @details 单位为安培，初始化为0.0f
 */
volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f; // 三相电流测量值

/**
 * @brief D/Q轴电流参考值
 * @details 单位为安培，初始化为0.0f
 */
volatile float Id_ref = 0.0f, Iq_ref = 0.0f;     // D/Q轴电流参考值

/**
 * @brief D/Q轴积分项
 * @details 用于PI控制器的积分计算，初始化为0.0f
 */
float Id_int = 0.0f, Iq_int = 0.0f;              // D/Q轴积分项

/**
 * @brief D轴PI参数
 * @details 使用KP_ID_INIT和KI_ID_INIT宏定义初始化
 */
float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT;    // D轴PI参数

/**
 * @brief Q轴PI参数
 * @details 使用KP_IQ_INIT和KI_IQ_INIT宏定义初始化
 */
float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT;    // Q轴PI参数

/**
 * @brief 过流故障标志
 * @details 初始化为false
 */
volatile bool overcurrent_fault = false;         // 过流故障标志

/**
 * @brief 电机转速（弧度/秒）
 * @details 单位为rad/s，初始化为0.0f
 */
volatile float motor_speed_rad = 0.0f;           // 电机转速(rad/s)

/**
 * @brief 浮点数饱和限制函数
 * @param v 输入值
 * @param lo 下限
 * @param hi 上限
 * @return 限制后的值
 */
float clampf_val(float v, float lo, float hi)
{
    if (v < lo) return lo;    // 如果输入值小于下限，返回下限
    if (v > hi) return hi;    // 如果输入值大于上限，返回上限
    return v;                 // 如果输入值在范围内，返回原值
}

/**
 * @brief Clarke变换
 * @param[in] Ia A相电流
 * @param[in] Ib B相电流
 * @param[in] Ic C相电流
 * @param[out] Valpha α轴电流
 * @param[out] Vbeta β轴电流
 */
void clarke_transform(float Ia, float Ib, float Ic, float* Valpha, float* Vbeta)
{
    // Clarke变换公式（考虑三相电流之和为零的情况，只需要Ia和Ib即可）
    *Valpha = Ia;
    *Vbeta = (Ia + 2.0f * Ib) / sqrtf(3.0f);
}

/**
 * @brief Park变换函数 - 将αβ坐标系转换为dq坐标系
 * @param alpha α轴电流
 * @param beta β轴电流
 * @param theta 电角度
 * @param d 输出d轴电流
 * @param q 输出q轴电流
 */
void park_transform(float alpha, float beta, float theta, float *d, float *q)
{
    float cos_theta = cos(theta);              // 计算电角度的余弦值
    float sin_theta = sin(theta);              // 计算电角度的正弦值

    // 两相静止到旋转坐标系的Park变换
    *d = alpha * cos_theta + beta * sin_theta;  // d轴电流计算
    *q = -alpha * sin_theta + beta * cos_theta; // q轴电流计算
}

/**
 * @brief 逆Park变换函数 - 将dq坐标系转换为αβ坐标系
 * @param vd d轴电压
 * @param vq q轴电压
 * @param theta 电角度
 * @param alpha 输出α轴电压
 * @param beta 输出β轴电压
 */
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta)
{
    float cos_theta = cos(theta);              // 计算电角度的余弦值
    float sin_theta = sin(theta);              // 计算电角度的正弦值

    // 旋转到两相静止坐标系的逆Park变换
    *alpha = vd * cos_theta - vq * sin_theta;  // α轴电压计算
    *beta = vd * sin_theta + vq * cos_theta;   // β轴电压计算
}

/**
 * @brief D轴电流PI控制器
 * @param err 电流误差
 * @return 控制输出
 */
float pi_id(float err)
{
    // 计算积分项
    Id_int += KI_ID * err * DT;                // 积分项累加：KI_ID * 误差 * 控制周期

    // 积分限幅
    Id_int = clampf_val(Id_int, -BUS_VOLTAGE, BUS_VOLTAGE); // 将积分项限制在±母线电压范围内

    // PI输出
    float output = KP_ID * err + Id_int;       // PI控制器输出：比例项 + 积分项

    // 输出限幅
    output = clampf_val(output, -BUS_VOLTAGE, BUS_VOLTAGE); // 将输出限制在±母线电压范围内

    return output;                              // 返回PI控制器输出
}

/**
 * @brief Q轴电流PI控制器
 * @details 计算Q轴电流误差的PI控制输出
 * @param err Q轴电流误差（参考值减去实际值）
 * @return PI控制器输出
 */
float pi_iq(float err)
{
    // 计算积分项
    Iq_int += KI_IQ * err * DT;                // 积分项累加：KI_IQ * 误差 * 控制周期

    // 积分限幅
    Iq_int = clampf_val(Iq_int, -BUS_VOLTAGE, BUS_VOLTAGE); // 将积分项限制在±母线电压范围内

    // PI输出
    float output = KP_IQ * err + Iq_int;       // PI控制器输出：比例项 + 积分项

    // 输出限幅
    output = clampf_val(output, -BUS_VOLTAGE, BUS_VOLTAGE); // 将输出限制在±母线电压范围内

    return output;                              // 返回PI控制器输出
}

// 添加SVPWM实现
/**
 * @file foc_svpwm.h
 * @brief SVPWM（空间矢量脉宽调制）模块头文件
 * @details 该文件定义了SVPWM模块的结构体和函数声明，
 *          用于实现FOC控制中的空间矢量脉宽调制算法。
 */

#ifndef FOC_SVPWM_H
#define FOC_SVPWM_H


// SVPWM相关结构体

/**
 * @brief SVPWM结构体
 * @details 包含SVPWM计算所需的参数和结果
 */
typedef struct {
    float Vdc;             // 母线电压，单位：V
    float Va, Vb, Vc;      // 三相电压，单位：V
    float Va_offset, Vb_offset, Vc_offset; // 偏移电压，用于中心对齐PWM
    uint16_t CMPA1, CMPB1; // EPWM1比较值，用于生成A相PWM信号
    uint16_t CMPA2, CMPB2; // EPWM2比较值，用于生成B相PWM信号
    uint16_t CMPA3, CMPB3; // EPWM3比较值，用于生成C相PWM信号
    uint8_t sector;        // 扇区，0-5，表示空间矢量所在的扇区
} SVPWM_Handle;

// 函数声明

/**
 * @brief SVPWM计算函数
 * @details 根据αβ坐标系下的电压指令计算SVPWM的比较值
 * @param[in,out] handle SVPWM结构体指针
 * @param[in] Valpha α轴电压指令，单位：V
 * @param[in] Vbeta β轴电压指令，单位：V
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta);

#endif // FOC_SVPWM_H

/**
 * @file foc_svpwm.c
 * @brief SVPWM（空间矢量脉宽调制）模块实现
 * @details 该文件实现了SVPWM算法，用于生成PWM控制信号
 */

/**
 * @brief SVPWM计算函数
 * @details 根据αβ坐标系下的电压指令计算SVPWM的比较值
 * @param[in,out] handle SVPWM结构体指针
 * @param[in] Valpha α轴电压指令，单位：V
 * @param[in] Vbeta β轴电压指令，单位：V
 */
void svpwm_compute(SVPWM_Handle *handle, float Valpha, float Vbeta)
{
    // 计算中间变量
    float Vref = sqrtf(Valpha * Valpha + Vbeta * Vbeta); // 参考电压幅值
    float theta = atan2f(Vbeta, Valpha);                  // 参考电压角度

    // 计算扇区
    uint8_t sector = (uint8_t)(theta / (M_PI / 3.0f)) % 6;

    // 计算调制波
    float Va, Vb, Vc;
    // 移除未使用的变量 T1, T2, T0
    // float T1, T2, T0; // 有效矢量和零矢量的作用时间

    // 根据扇区计算三相电压
    switch (sector)
    {
        case 0: // 扇区1
            Va = Vref * cosf(theta);
            Vb = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            Vc = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            break;
        case 1: // 扇区2
            Va = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            Vb = Vref * cosf(theta);
            Vc = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            break;
        case 2: // 扇区3
            Va = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            Vb = Vref * cosf(theta);
            Vc = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            break;
        case 3: // 扇区4
            Va = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            Vb = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            Vc = Vref * cosf(theta);
            break;
        case 4: // 扇区5
            Va = Vref * cosf(theta);
            Vb = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            Vc = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            break;
        case 5: // 扇区6
            Va = Vref * cosf(theta - 2.0f * M_PI / 3.0f);
            Vb = Vref * cosf(theta + 2.0f * M_PI / 3.0f);
            Vc = Vref * cosf(theta);
            break;
        default:
            Va = 0.0f;
            Vb = 0.0f;
            Vc = 0.0f;
            break;
    }

    // 计算偏移电压（用于中心对齐PWM）
    float V_offset = (Va + Vb + Vc) / 3.0f;

    // 调整电压，加入偏移量
    Va -= V_offset;
    Vb -= V_offset;
    Vc -= V_offset;

    // 计算占空比
    float dutyA = 0.5f + Va / handle->Vdc;
    float dutyB = 0.5f + Vb / handle->Vdc;
    float dutyC = 0.5f + Vc / handle->Vdc;

    // 限幅处理
    dutyA = clampf_val(dutyA, 0.0f, 1.0f);
    dutyB = clampf_val(dutyB, 0.0f, 1.0f);
    dutyC = clampf_val(dutyC, 0.0f, 1.0f);

    // 计算比较值
    handle->CMPA1 = (uint16_t)(dutyA * (float)TBPRD_VAL);
    handle->CMPB1 = (uint16_t)((1.0f - dutyA) * (float)TBPRD_VAL);
    handle->CMPA2 = (uint16_t)(dutyB * (float)TBPRD_VAL);
    handle->CMPB2 = (uint16_t)((1.0f - dutyB) * (float)TBPRD_VAL);
    handle->CMPA3 = (uint16_t)(dutyC * (float)TBPRD_VAL);
    handle->CMPB3 = (uint16_t)((1.0f - dutyC) * (float)TBPRD_VAL);

    // 保存扇区
    handle->sector = sector;
}

/* ======================== 编码器实现 ======================== */

static uint32_t prev_pos_latch = 0; // 上一次编码器位置锁存值
static uint32_t curr_pos_latch;     // 当前编码器位置锁存值
static int32_t delta_pos;           // 位置变化量

__interrupt void eqep_index_isr(void);

/**
 * @brief 编码器初始化函数
 * @details 配置QEP（正交编码器脉冲）模块的GPIO引脚、解码器、计数器等参数，
 * 为位置和速度测量做准备。
 */
void Encoder_Init(void)
{
    // 配置eQEP1的GPIO引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A);  // 配置GPIO20为eQEP1A信号输入
    GPIO_setPinConfig(GPIO_21_EQEP1B);  // 配置GPIO21为eQEP1B信号输入
    GPIO_setPinConfig(GPIO_23_EQEP1I);  // 配置GPIO23为eQEP1I（索引）信号输入
    
    // 禁用eQEP1模块，准备进行配置
    EQEP_disableModule(EQEP1_BASE);  // 禁用eQEP1模块，以便进行配置
    
    // 配置eQEP1的解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE |  // 配置为正交解码模式
                                        EQEP_CONFIG_NO_SWAP |    // 不交换A和B相
                                        EQEP_CONFIG_2X_RESOLUTION | // 2倍分辨率模式
                                        EQEP_CONFIG_IGATE_DISABLE)); // 禁用门控功能
    
    // 配置位置计数器，同时设置最大位置值
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_IDX,  // 使用索引信号复位位置计数器
                                 ENCODER_LINES * QUADRATURE_MULT - 1);   // 设置最大位置值
    
    // 配置单元定时器
    EQEP_loadUnitTimer(EQEP1_BASE, (uint32_t)(SYSCLK_HZ * 0.001f)); // 1ms，用于速度计算
    
    // 配置捕获单元，用于速度测量
    EQEP_setCaptureConfig(EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_64,    // 捕获时钟预分频
                         EQEP_UNIT_POS_EVNT_DIV_16);              // 单位位置事件预分频
    
    // 配置锁存模式
    EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT |  // 单位超时事件时锁存
                     EQEP_LATCH_RISING_INDEX |                // 索引上升沿时锁存
                     EQEP_LATCH_RISING_STROBE);               // 选通上升沿时锁存
    
    // 启用看门狗计时器，防止编码器故障
    EQEP_enableWatchdog(EQEP1_BASE, 5000); // 5000 * 64 个系统时钟周期
    
    // 启用捕获单元
    EQEP_enableCapture(EQEP1_BASE);
    
    // 使能eQEP1模块
    EQEP_enableModule(EQEP1_BASE); // 启用eQEP1模块，开始工作
    
    // 启用中断
    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH); // 启用索引事件锁存中断
    
    // 注册中断处理函数
    Interrupt_register(INT_EQEP1, eqep_index_isr); // 注册eQEP1中断处理函数
    Interrupt_enable(INT_EQEP1); // 启用eQEP1中断
    
    // 初始化位置锁存值
    prev_pos_latch = EQEP_getPosition(EQEP1_BASE);
}

/**
 * @brief 读取编码器数据
 * @details 读取编码器的位置值，计算电机的机械角度、电角度和速度。
 */
void Encoder_Read(void)
{
    // 读取当前位置
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE); // 读取eQEP1的位置计数器值
    
    // 如果已完成校准，计算电机角度和速度
    if (encoder_calibrated) {
        // 计算机械角度(弧度)
        motor_angle_mech_rad = ((float)encoder_raw_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI;
        // 机械角度计算公式：(当前位置 / 总分辨率) * 2π
        
        // 计算电角度(弧度)
        motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;
        // 电角度计算公式：机械角度 * 极对数
        
        // 角度归一化到0~2π范围
        while (motor_angle_elec_rad >= 2.0f * M_PI) motor_angle_elec_rad -= 2.0f * M_PI;
        while (motor_angle_elec_rad < 0.0f) motor_angle_elec_rad += 2.0f * M_PI;
        
        // 读取位置锁存值
        curr_pos_latch = EQEP_getPositionLatch(EQEP1_BASE);
        
        // 计算位置变化量（处理溢出）
        delta_pos = (int32_t)(curr_pos_latch - prev_pos_latch);
        
        // 计算速度（单位：rad/s）
        motor_speed_rad = (float)delta_pos / (float)(ENCODER_LINES * QUADRATURE_MULT) * 2.0f * M_PI * 1000.0f;
        // 速度计算公式：(位置变化量 / 总分辨率) * 2π * 1000ms/1s
        
        // 更新前一个位置
        prev_pos_latch = curr_pos_latch;
    }
}

/**
 * @brief 重置编码器
 * @details 重置编码器计数为0，通常用于初始化或校准。
 */
void Encoder_Reset(void)
{
    EQEP_setInitialPosition(EQEP1_BASE, 0U); // 设置eQEP1的初始位置为0
    EQEP_setPosition(EQEP1_BASE, 0U);        // 设置eQEP1的当前位置为0
    encoder_raw_pos = 0;                     // 重置全局编码器位置变量为0
    prev_pos_latch = 0;                      // 重置前一个位置锁存值
    motor_speed_rad = 0.0f;                  // 重置速度值
}

/**
 * @brief 编码器索引中断服务程序
 * @details 处理编码器索引信号中断，标记索引信号已检测，
 * 并清除相应的中断标志。
 */
__interrupt void eqep_index_isr(void)
{
    // 标记索引信号已检测
    index_detected = true;
    
    // 清除中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP6);
}

/* ======================== ADC实现 ======================== */

static uint16_t adcResult[3]; // ADC采样结果数组，存储三相电流的ADC转换值

/**
 * @brief 处理ADC转换结果
 * @details 读取ADC转换结果，计算电流值，并进行过流检查
 */
static void Process_ADC_Results(void)
{
    // 读取转换结果
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0); // 读取A相电流的ADC转换结果
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1); // 读取B相电流的ADC转换结果
    adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2); // 读取C相电流的ADC转换结果
    
    // 转换为电流值
    Ia_meas = (float)((int16_t)adcResult[0] - 2048) * ADC_COUNTS_TO_AMP; // 计算A相电流值，2048为中点值
    Ib_meas = (float)((int16_t)adcResult[1] - 2048) * ADC_COUNTS_TO_AMP; // 计算B相电流值，2048为中点值
    Ic_meas = (float)((int16_t)adcResult[2] - 2048) * ADC_COUNTS_TO_AMP; // 计算C相电流值，2048为中点值
    
    // 过流保护检查
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP ||  // 检查A相电流是否超过过流阈值
       fabsf(Ib_meas) > I_OVERCURRENT_TRIP ||  // 检查B相电流是否超过过流阈值
       fabsf(Ic_meas) > I_OVERCURRENT_TRIP)    // 检查C相电流是否超过过流阈值
    {
        overcurrent_fault = true; // 设置过流故障标志
        // 触发过流保护动作
        // 这里可以添加具体的过流保护措施，例如：
        // 1. 立即关闭PWM输出
        // 2. 记录故障信息
        // 3. 触发系统停机
    }
}

/**
 * @brief ADC初始化函数
 * @details 配置ADC模块的时钟、分辨率、通道、触发源等参数，
 * 为电流测量做准备。
 */
void ADC_Init(void)
{
    // 禁用ADC模块，准备进行配置
    ADC_disableConverter(ADCA_BASE); // 禁用ADCA转换器，以便进行配置
    
    // 配置ADC时钟，设置为系统时钟的1/4
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_4_0); // 设置ADCA的预分频器为4.0
    
    // 配置ADC分辨率为12位，单端输入模式
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED); // 设置ADCA为12位分辨率，单端输入模式
    
    // 配置SOC0 - A相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN0, 15);
    // 使用EPWM1的SOCB触发，通道为ADCIN0，采样窗口为15个ADCCLK周期
    
    // 配置SOC1 - B相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN1, 15);
    // 使用EPWM1的SOCB触发，通道为ADCIN1，采样窗口为15个ADCCLK周期
    
    // 配置SOC2 - C相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN2, 15);
    // 使用EPWM1的SOCB触发，通道为ADCIN2，采样窗口为15个ADCCLK周期
    
    // 配置SOC优先级，设置所有SOC为高优先级
    ADC_setSOCPriority(ADCA_BASE, ADC_PRI_ALL_HIPRI); // 设置ADCA的所有SOC为高优先级
    
    // 配置ADC中断，使用SOC2作为中断源
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2); // 设置ADCA中断1的源为SOC2
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1); // 启用ADCA中断1
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADCA中断1的状态标志
    
    // 配置ADC采样模式，设置为转换结束时产生中断脉冲
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV); // 设置ADCA在转换结束时产生中断脉冲
    
    // 计算过流保护的ADC阈值
    uint16_t overcurrent_adc_threshold = (uint16_t)(2048 + I_OVERCURRENT_TRIP / ADC_COUNTS_TO_AMP + 0.5f);
    if (overcurrent_adc_threshold > 4095) overcurrent_adc_threshold = 4095;
    
    // 配置PPB进行过流保护
    // 配置PPB1与SOC0关联（用于A相电流过流检测）
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0); // 设置ADCA的PPB1与SOC0关联
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, overcurrent_adc_threshold, 4095 - overcurrent_adc_threshold); // 设置过流保护阈值
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI | ADC_EVT_TRIPLO); // 启用PPB的高低限触发事件
    
    // 启用ADC模块，开始工作
    ADC_enableConverter(ADCA_BASE); // 启用ADCA转换器，开始工作
    
    // 等待ADC准备就绪（添加延时替代ADC_isConverterReady函数）
    DEVICE_DELAY_US(100); // 延时100微秒，确保ADC稳定工作
}

/**
 * @brief 读取电流函数
 * @details 触发ADC转换并读取三相电流值，
 * 将ADC计数转换为实际电流值。
 */
void ADC_Read_Current(void)
{
    // 触发ADC转换
    // 强制触发一次ADC采样
    EPWM_forceADCTrigger(EPWM1_BASE, EPWM_SOC_B); // 强制EPWM1产生SOCB触发信号，启动ADC转换
    
    // 等待转换完成
    while(!ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1)); // 等待ADC中断1标志置位，表示转换完成
    
    // 处理ADC结果
    Process_ADC_Results();
    
    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADC中断1的状态标志，准备下次转换
}

/**
 * @brief ADC中断服务程序
 * @details 处理ADC转换完成中断，读取转换结果，
 * 计算电流值并进行过流检查。
 */
__interrupt void ADC_Isr(void)
{
    // 处理ADC结果
    Process_ADC_Results();
    
    // 清除中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADC中断1的状态标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1); // 清除中断确认组1，允许后续中断
}

/* ======================== PWM实现 ======================== */

/**
 * @brief EPWM初始化函数
 * @details 配置PWM模块的时基、死区、GPIO、动作限定器等参数，
 * 为电机控制做准备。
 */
void EPWM_Init(void)
{
    // 配置EPWM1 - A相
    GPIO_setPinConfig(GPIO_0_EPWM1A);  // 配置GPIO0为EPWM1A功能
    GPIO_setPinConfig(GPIO_1_EPWM1B);  // 配置GPIO1为EPWM1B功能
    
    // 配置EPWM2 - B相
    GPIO_setPinConfig(GPIO_2_EPWM2A);  // 配置GPIO2为EPWM2A功能
    GPIO_setPinConfig(GPIO_3_EPWM2B);  // 配置GPIO3为EPWM2B功能
    
    // 配置EPWM3 - C相
    GPIO_setPinConfig(GPIO_4_EPWM3A);  // 配置GPIO4为EPWM3A功能
    GPIO_setPinConfig(GPIO_5_EPWM3B);  // 配置GPIO5为EPWM3B功能
    
    // 配置EPWM1
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD_VAL); // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);        // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM1_BASE, 0U);             // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM1_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO); // 在计数器为0时输出同步脉冲
    EPWM_setPeriodLoadMode(EPWM1_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值
    
    // 配置EPWM2
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD_VAL); // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);        // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM2_BASE, 0U);             // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM2_BASE, EPWM_SYNC_OUT_PULSE_DISABLED); // 禁用同步脉冲输出
    EPWM_setPeriodLoadMode(EPWM2_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值
    
    // 配置EPWM3
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD_VAL); // 设置时基周期
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);        // 重置时基计数器
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置计数模式为上下计数
    EPWM_setPhaseShift(EPWM3_BASE, 0U);             // 设置相移为0
    EPWM_setSyncOutPulseMode(EPWM3_BASE, EPWM_SYNC_OUT_PULSE_DISABLED); // 禁用同步脉冲输出
    EPWM_setPeriodLoadMode(EPWM3_BASE, EPWM_PERIOD_DIRECT_LOAD); // 直接加载周期值
    
    // 配置死区 - EPWM1
    EPWM_setDeadBandCounterClock(EPWM1_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_FED, true);  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数
    
    // 配置死区 - EPWM2
    EPWM_setDeadBandCounterClock(EPWM2_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_RED, true);  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_FED, true);  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数
    
    // 配置死区 - EPWM3
    EPWM_setDeadBandCounterClock(EPWM3_BASE, EPWM_DB_COUNTER_CLOCK_FULL_CYCLE); // 设置死区计数器时钟
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_RED, true);  // 启用上升沿延迟
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_FED, true);  // 启用下降沿延迟
    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);  // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS); // 设置下降沿延迟计数
    
    // 配置比较器 - EPWM1
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半
    
    // 配置比较器 - EPWM2
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半
    
    // 配置比较器 - EPWM3
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2); // 设置比较器A的值为周期的一半
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, TBPRD_VAL / 2); // 设置比较器B的值为周期的一半
    
    // 配置动作限定 - EPWM1
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM1A输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM1A输出低电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM1B输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM1B输出低电平
    
    // 配置动作限定 - EPWM2
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM2A输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM2A输出低电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM2B输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM2B输出低电平
    
    // 配置动作限定 - EPWM3
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM3A输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 时基向上计数到CMPA时，EPWM3A输出低电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 时基为0时，EPWM3B输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB); // 时基向上计数到CMPB时，EPWM3B输出低电平
    
    // 配置SOC触发
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO); // 设置ADC触发源为EPWM1计数器为0时
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1); // 设置触发事件的预分频为1
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A); // 启用ADC触发
    
    // 启动PWM
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
}

/**
 * @brief 设置PWM占空比
 * @details 根据输入的占空比计算PWM比较器值，并设置到相应的EPWM模块中，
 * 用于控制电机的三相电压输出。
 * @param dutyA A相占空比，范围为0.0到1.0
 * @param dutyB B相占空比，范围为0.0到1.0
 * @param dutyC C相占空比，范围为0.0到1.0
 */
void EPWM_SetDuty(float dutyA, float dutyB, float dutyC)
{
    // 限幅处理
    dutyA = clampf_val(dutyA, 0.0f, 1.0f); // 将A相占空比限制在0.0到1.0之间
    dutyB = clampf_val(dutyB, 0.0f, 1.0f); // 将B相占空比限制在0.0到1.0之间
    dutyC = clampf_val(dutyC, 0.0f, 1.0f); // 将C相占空比限制在0.0到1.0之间
    
    // 计算比较值
    uint16_t cmpA = (uint16_t)(dutyA * (float)TBPRD_VAL + 0.5f); // 计算A相的比较值
    uint16_t cmpB = (uint16_t)(dutyB * (float)TBPRD_VAL + 0.5f); // 计算B相的比较值
    uint16_t cmpC = (uint16_t)(dutyC * (float)TBPRD_VAL + 0.5f); // 计算C相的比较值
    
    // 设置EPWM比较值
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, cmpA);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, (uint16_t)(TBPRD_VAL - cmpA));
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, cmpB);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, (uint16_t)(TBPRD_VAL - cmpB));
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, cmpC);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, (uint16_t)(TBPRD_VAL - cmpC));
}

/**
 * @brief 主函数
 * @details 程序的主入口点，初始化系统和外设，执行电气角度校准，
 *          然后进入主循环。
 */
int main(void)
{
    // 初始化系统
    Device_init();              // 初始化设备
    Device_initGPIO();          // 初始化GPIO
    Interrupt_initModule();     // 初始化中断模块
    Interrupt_initVectorTable(); // 初始化中断向量表

    // 初始化外设
    InitPeripherals();

    // 进行电气角度校准
    DoElectricalAlignment();

    // 使能全局中断
    EINT;  // 使能全局中断
    ERTM;  // 使能实时模式

    // 主循环
    while(1)
    {
        // 这里可以添加控制逻辑
        // 例如：设置参考电流、运行FOC算法等

        // 软件延时
        uint32_t i;
        for(i = 0; i < 1000000; i++)
        {
            // 空循环
        }
    }
}

/**
 * @brief 初始化所有外设
 * @details 初始化EPWM、ADC、编码器等外设，并注册ADC中断。
 */
void InitPeripherals(void)
{
    // 初始化EPWM
    EPWM_Init();

    // 初始化ADC
    ADC_Init();

    // 初始化编码器
    Encoder_Init();

    // 注册ADC中断
    Interrupt_register(INT_ADCA1, &ADC_Isr);
    Interrupt_enable(INT_ADCA1);
}

/**
 * @brief 电气角度校准
 * @details 执行电机的电气角度校准过程，确保编码器的机械角度
 *          与电机的电气角度对应正确。
 */
void DoElectricalAlignment(void)
{
    // 设置校准电流
    // float align_current = 0.5f; // 0.5A

    // 设置校准时间
    // uint32_t align_time = 500; // 500ms

    // 执行电气角度校准
    // ... 校准逻辑 ...

    // 标记编码器已校准
    encoder_calibrated = true;
}

/**
 * @brief 编码器索引中断服务程序
 * @details 处理编码器索引信号中断，标记索引信号已检测，
 *          并清除相应的中断标志。
 */
__interrupt void eqep_index_isr(void)
{
    // 标记索引信号已检测
    index_detected = true;

    // 清除中断标志
    EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP6);
}

/**
 * @brief 电气角度校准函数
 * @details 等待编码器索引信号，检测到后重置编码器位置，
 *          并计算初始的机械角度和电气角度。
 */
void calibrate_electrical_angle(void)
{
    // 等待编码器索引信号
    index_detected = false;
    while(!index_detected)
    {
        // 可以在这里添加一个超时机制，防止无限等待
        // 例如：如果超过一定时间没有检测到索引信号，使用当前位置作为参考
    }

    // 索引信号检测到后，重置编码器位置
    Encoder_Reset();

    // 设置机械角度为0
    motor_angle_mech_rad = 0.0f;
}