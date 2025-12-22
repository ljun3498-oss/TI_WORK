// FOC (Field Oriented Control)核心控制模块实现
#include "foc_core.h"

// 全局变量定义
// PWM时基周期值 - 使用TBPRD_VAL宏定义初始化
uint16_t TBPRD = TBPRD_VAL;                      // PWM时基周期值
// 编码器原始位置 - 初始化为0
volatile int32_t encoder_raw_pos = 0;            // 编码器原始位置
// 索引信号检测标志 - 初始化为false
volatile bool index_detected = false;            // 索引信号检测标志
// 编码器校准标志 - 初始化为false
volatile bool encoder_calibrated = false;        // 编码器校准标志
// 电机机械角度 - 单位为弧度，初始化为0.0f
volatile float motor_angle_mech_rad = 0.0f;      // 电机机械角度(弧度)
// 电机电角度 - 单位为弧度，初始化为0.0f
volatile float motor_angle_elec_rad = 0.0f;      // 电机电角度(弧度)
// 电机转速 - 单位为RPM，初始化为0.0f
volatile float motor_rpm = 0.0f;                 // 电机转速
// 三相电流测量值 - 单位为安培，初始化为0.0f
volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f; // 三相电流测量值
// D/Q轴电流参考值 - 单位为安培，初始化为0.0f
volatile float Id_ref = 0.0f, Iq_ref = 0.0f;     // D/Q轴电流参考值
// D/Q轴积分项 - 用于PI控制器的积分计算，初始化为0.0f
float Id_int = 0.0f, Iq_int = 0.0f;              // D/Q轴积分项
// D轴PI参数 - 使用KP_ID_INIT和KI_ID_INIT宏定义初始化
float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT;    // D轴PI参数
// Q轴PI参数 - 使用KP_IQ_INIT和KI_IQ_INIT宏定义初始化
float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT;    // Q轴PI参数
// 过流故障标志 - 初始化为false
volatile bool overcurrent_fault = false;         // 过流故障标志
// 电机转速（弧度/秒） - 单位为rad/s，初始化为0.0f
volatile float motor_speed_rad = 0.0f;           // 电机转速(rad/s)

// 浮点数饱和限制函数 - 将输入值限制在指定的上下限范围内
float clampf_val(float v, float lo, float hi)
{
    if (v < lo) return lo;    // 如果输入值小于下限，返回下限
    if (v > hi) return hi;    // 如果输入值大于上限，返回上限
    return v;                 // 如果输入值在范围内，返回原值
}

// Clarke变换 - 将三相电流转换为αβ坐标系
void clarke_transform(float Ia, float Ib, float Ic, float* Valpha, float* Vbeta)
{
    // Clarke变换公式（考虑三相电流之和为零的情况，只需要Ia和Ib即可）
    *Valpha = Ia;
    *Vbeta = (Ia + 2.0f * Ib) / sqrtf(3.0f);
}

// Park变换函数 - 将αβ坐标系转换为dq坐标系
void park_transform(float alpha, float beta, float theta, float *d, float *q)
{
    float cos_theta = cos(theta);              // 计算电角度的余弦值
    float sin_theta = sin(theta);              // 计算电角度的正弦值

    // 两相静止到旋转坐标系的Park变换
    *d = alpha * cos_theta + beta * sin_theta;  // d轴电流计算
    *q = -alpha * sin_theta + beta * cos_theta; // q轴电流计算
}

// 逆Park变换函数 - 将dq坐标系转换为αβ坐标系
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta)
{
    float cos_theta = cos(theta);              // 计算电角度的余弦值
    float sin_theta = sin(theta);              // 计算电角度的正弦值

    // 旋转到两相静止坐标系的逆Park变换
    *alpha = vd * cos_theta - vq * sin_theta;  // α轴电压计算
    *beta = vd * sin_theta + vq * cos_theta;   // β轴电压计算
}

// D轴电流PI控制器 - 计算D轴电流误差的PI控制输出
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

// Q轴电流PI控制器 - 计算Q轴电流误差的PI控制输出
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