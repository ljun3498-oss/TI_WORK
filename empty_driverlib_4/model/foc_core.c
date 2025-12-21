#include "foc_core.h"

// 全局变量定义
uint16_t TBPRD = TBPRD_VAL;
volatile int32_t encoder_raw_pos = 0;
volatile bool index_detected = false;
volatile bool encoder_calibrated = false;
volatile float motor_angle_mech_rad = 0.0f;
volatile float motor_angle_elec_rad = 0.0f;
volatile float motor_rpm = 0.0f;
volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f;
volatile float Id_ref = 0.0f, Iq_ref = 0.0f;
float Id_int = 0.0f, Iq_int = 0.0f;
 float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT;
float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT;
volatile bool overcurrent_fault = false;

/**
 * @brief 浮点数饱和限制函数
 * @param v 输入值
 * @param lo 下限
 * @param hi 上限
 * @return 限制后的值
 */
float clampf_val(float v, float lo, float hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

/**
 * @brief Clarke变换函数 - 将三相电流转换为αβ坐标系
 * @param ia A相电流
 * @param ib B相电流
 * @param ic C相电流
 * @param alpha 输出α轴电流
 * @param beta 输出β轴电流
 */
void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta)
{
    // 三相到两相静止坐标系的Clarke变换
    *alpha = ia;
    *beta = (ia + 2.0f * ib) / 1.7320508075688772f; // 1.7320508075688772 = √3
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
    float cos_theta = cos(theta);
    float sin_theta = sin(theta);

    // 两相静止到旋转坐标系的Park变换
    *d = alpha * cos_theta + beta * sin_theta;
    *q = -alpha * sin_theta + beta * cos_theta;
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
    float cos_theta = cos(theta);
    float sin_theta = sin(theta);

    // 旋转到两相静止坐标系的逆Park变换
    *alpha = vd * cos_theta - vq * sin_theta;
    *beta = vd * sin_theta + vq * cos_theta;
}

/**
 * @brief D轴电流PI控制器
 * @param err 电流误差
 * @return 控制输出
 */
float pi_id(float err)
{
    // 计算积分项
    Id_int += KI_ID * err * DT;

    // 积分限幅
    Id_int = clampf_val(Id_int, -BUS_VOLTAGE, BUS_VOLTAGE);

    // PI输出
    float output = KP_ID * err + Id_int;

    // 输出限幅
    output = clampf_val(output, -BUS_VOLTAGE, BUS_VOLTAGE);

    return output;
}

/**
 * @brief Q轴电流PI控制器
 * @param err 电流误差
 * @return 控制输出
 */
float pi_iq(float err)
{
    // 计算积分项
    Iq_int += KI_IQ * err * DT;

    // 积分限幅
    Iq_int = clampf_val(Iq_int, -BUS_VOLTAGE, BUS_VOLTAGE);

    // PI输出
    float output = KP_IQ * err + Iq_int;

    // 输出限幅
    output = clampf_val(output, -BUS_VOLTAGE, BUS_VOLTAGE);

    return output;
}
