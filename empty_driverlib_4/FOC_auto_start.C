// FOC (Field Oriented Control)电机控制程序
// 功能：集成了传感器测试、启动序列和上电自启动功能

#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "driverlib.h"
#include "device.h"

// 数学常量定义

#define M_PI_F 3.14159265358979323846f  // PI常量的float版本


// 系统参数
#define SYSCLK_HZ            200000000.0f    // 200MHz
#define PWM_FREQ_HZ          20000.0f        // 20kHz
#define TBPRD_VAL            5000U          // 时基周期

// 控制参数
#define CONTROL_HZ          PWM_FREQ_HZ     // 控制频率
#define DT                  (1.0f/CONTROL_HZ) // 控制周期

// 编码器/电机参数
#define ENCODER_LINES       2500U           // 编码器线数
#define QUADRATURE_MULT     4U              // 正交倍频
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数
#define MOTOR_POLE_PAIRS    4U              // 电机极对数

// 硬件参数
#define BUS_VOLTAGE         24.0f           // 母线电压
#define DEADTIME_NS         400U           // 死区时间：400ns
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))

// 安全参数
#define MAX_PHASE_CURRENT_A 7.8f            // 最大相电流：7.8A
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

// ADC到电流的转换系数
#define ADC_COUNTS_TO_AMP   (0.0111f) // ADC计数到安培的转换系数 (基于霍尔传感器参数：-20到+20A，1.65V零点)
#define ADC_OFFSET          2253.0f          // ADC中点偏置 (1.65V对应的值)

// PI控制器参数（保守值）
#define KP_ID_INIT  0.1f                    // D轴电流环比例增益（大幅降低）
#define KI_ID_INIT  0.5f                   // D轴电流环积分增益（大幅降低）
#define KP_IQ_INIT  0.1f                    // Q轴电流环比例增益（大幅降低）
#define KI_IQ_INIT  0.5f                   // Q轴电流环积分增益（大幅降低）

// 状态机定义
typedef enum {
    STATE_ALIGNMENT = 0,   // 对齐状态
    STATE_OPEN_LOOP,       // 开环状态
    STATE_CLOSED_LOOP,     // 完全闭环状态
} ControlState;

// 对齐参数
#define ALIGNMENT_DURATION 5000  // 对齐持续时间（0.5秒，基于20kHz中断频率）

// 开环参数
#define OPEN_LOOP_TIMEOUT_COUNT (20000 * 3)  // 3秒超时对应的中断次数

// 闭环启动参数
#define CL_STARTUP_DURATION 1000 // 闭环启动持续时间（拍数）

// 统一控制参数（开环、虚拟、闭环三环统一）
#define TARGET_ANGLE_INCREMENT (M_PI_F / 10000.0f)  // 目标角速度增量 (提高5倍)
#define TARGET_IQ_REF 1.0f                           // 目标Q轴电流参考值（稍大扭矩）
#define TARGET_ID_REF 0.0f                           // 目标D轴电流参考值
#define TARGET_VMAX (BUS_VOLTAGE * 0.6f)            // 目标电压限幅值
#define ANGLE_ERROR_GAIN 0.01f                      // 角度误差比例系数

// SVPWM常量定义
#define SQRT3_OVER_2 0.86602540378f  // √3/2 的值

// 编码器每转计数
#define COUNTS_PER_REV (ENCODER_LINES * QUADRATURE_MULT)

// 全局变量声明

// 编码器变量
volatile int32_t encoder_raw_pos = 0;            // 编码器原始位置
volatile float motor_angle_mech_rad = 0.0f;      // 电机机械角度(弧度)
volatile float motor_angle_elec_rad = 0.0f;      // 电机电角度(弧度)
volatile float motor_speed_rad = 0.0f;           // 电机转速(rad/s)
volatile float motor_rpm = 0.0f;                 // 电机转速
int32_t encoder_continuous_pos = 0;              // 连续编码器位置（无重置）
float encoder_angle_elec_continuous = 0.0f;      // 连续电气角度（弧度）
static int32_t last_encoder_raw_pos = 0;         // 上一次原始编码器位置
static int32_t last_encoder_continuous_pos = 0;  // 上一次连续编码器位置

// 开环变量
volatile float open_loop_angle_mech_rad = 0.0f;  // 开环虚拟机械角度(弧度)
volatile float open_loop_angle_elec_rad = 0.0f;  // 开环虚拟电角度(弧度)
volatile float angle_offset_rad = 0.0f;          // 开环虚拟角度与编码器角度的差值(弧度)
float open_loop_angle_acc = 0.0f;                // 开环累计角度，用于正确计算圈数
float g_open_loop_turns = 0.0f;                  // 开环累计转圈圈数
float g_previous_open_loop_angle = 0.0f;         // 上一次开环角度，用于计算圈数变化
uint32_t g_open_loop_timeout_counter = 0;        // 开环模式下的中断次数计数器

// 电流变量
volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f; // 三相电流测量值
volatile float Id_ref = 0.0f, Iq_ref = 0.0f;     // D/Q轴电流参考值
float Id_int = 0.0f, Iq_int = 0.0f;              // D/Q轴积分项
float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT;    // D轴PI参数
float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT;    // Q轴PI参数
volatile bool overcurrent_fault = false;         // 过流故障标志
static uint16_t adcResult[3];                    // ADC采样结果数组

// 状态机变量
ControlState g_control_state = STATE_ALIGNMENT; // 默认对齐状态
uint32_t g_alignment_counter = 0;                // 对齐阶段的中断次数计数器
bool g_encoder_aligned = false;                  // 编码器对齐标志

// 监控变量
float g_current_motor_angle_elec_rad = 0.0f;     // 当前电机电气角度（用于监控）
float g_current_encoder_angle_mech_rad = 0.0f;   // 当前编码器机械角度（用于监控）
float g_current_id = 0.0f;                       // 当前D轴电流（用于监控）
float g_current_iq = 0.0f;                       // 当前Q轴电流（用于监控）
float g_current_vd = 0.0f;                       // 当前D轴电压（用于监控）
float g_current_vq = 0.0f;                       // 当前Q轴电压（用于监控）
float angle_offset_rad_final = 0.0f;             // 冻结的角度偏移值（用于闭环控制）
float theta_offset =  -M_PI_F / 2.0f;                       // 电角度偏置（用于调试）
float g_current_angle_fusion_weight = 0.0f;       // 当前角度融合权重（用于监控）

// 闭环角度融合相关变量
float closed_loop_turns = 0.0f;                 // 闭环累计转圈圈数
float closed_loop_start_turns = 0.0f;            // 闭环开始时的圈数
float angle_fusion_weight = 0.2f;               // 角度融合权重（初始20%）

// 角度融合调试变量
float g_current_encoder_turns = 0.0f;            // 当前编码器圈数（用于监控）
float g_turns_since_start = 0.0f;             // 自闭环开始以来转的圈数（用于监控）
float g_target_weight = 0.0f;                   // 目标权重（用于监控）

// 电流参考值抬升变量
float Iq_ref_target = 0.0f;                      // Iq参考值目标
float Iq_ref_step = 0.05f;                       // Iq参考值抬升步长（每拍增加的量）

// 闭环启动时间跟踪
uint16_t cl_startup_cnt = 0;                     // 闭环启动计数器

// 调试计数器
uint32_t g_debug_cnt = 0;                        // 用于确认ISR是否真正运行

// 闭环切换定时器
volatile uint32_t closed_loop_timer = 0U;
#define CLOSED_LOOP_DELAY (20000U * 6U)  // 5秒对应的中断次数（20kHz中断频率）

// SVPWM结构体定义
typedef struct {
    float Vdc;
    float Va;
    float Vb;
    float Vc;
    uint16_t CMPA1;
    uint16_t CMPB1;
    uint16_t CMPA2;
    uint16_t CMPB2;
    uint16_t CMPA3;
    uint16_t CMPB3;
    uint16_t sector;
} SVPWM_Handle;

// SVPWM句柄
SVPWM_Handle svpwm_handle = {
    .Vdc = BUS_VOLTAGE,
    .Va = 0.0f,
    .Vb = 0.0f,
    .Vc = 0.0f,
    .CMPA1 = TBPRD_VAL / 2,
    .CMPB1 = TBPRD_VAL / 2,
    .CMPA2 = TBPRD_VAL / 2,
    .CMPB2 = TBPRD_VAL / 2,
    .CMPA3 = TBPRD_VAL / 2,
    .CMPB3 = TBPRD_VAL / 2,
    .sector = 0
};



// 浮点数饱和限制函数
float clampf_val(float v, float lo, float hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

// Clarke变换
void clarke_transform(float Ia, float Ib, float Ic, float* Valpha, float* Vbeta)
{
    // 标准三相Clarke变换
    *Valpha = (2.0f/3.0f) * (Ia - 0.5f*Ib - 0.5f*Ic);
    *Vbeta  = (2.0f/3.0f) * (0.8660254f * (Ic - Ib));
}

// Park变换
void park_transform(float alpha, float beta, float theta, float *d, float *q)
{
    float cos_theta = cosf(theta);
    float sin_theta = sinf(theta);

    *d = alpha * cos_theta + beta * sin_theta;
    *q = -alpha * sin_theta + beta * cos_theta;
}

// 逆Park变换
void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta)
{
    float cos_theta = cosf(theta);
    float sin_theta = sinf(theta);

    *alpha = vd * cos_theta - vq * sin_theta;
    *beta = vd * sin_theta + vq * cos_theta;
}

// D轴电流PI控制器
float pi_id(float err)
{
    // 积分限幅用安全电流对应电压（0.4倍电压）
    float Imax = BUS_VOLTAGE * 0.4f;

    Id_int += KI_ID * err * DT;
    Id_int = clampf_val(Id_int, -Imax, Imax);

    float output = KP_ID * err + Id_int;
    output = clampf_val(output, -Imax, Imax);

    return output;
}

// Q轴电流PI控制器
float pi_iq(float err)
{
    // 积分限幅用安全电流对应电压（0.4倍电压）
    float Imax = BUS_VOLTAGE * 0.4f;

    Iq_int += KI_IQ * err * DT;
    Iq_int = clampf_val(Iq_int, -Imax, Imax);

    float output = KP_IQ * err + Iq_int;
    output = clampf_val(output, -Imax, Imax);

    return output;
}

// SVPWM计算函数
void svpwm_compute(SVPWM_Handle *h, float Valpha, float Vbeta)
{
    // 1. αβ → 三相（逆 Clarke）
    float Va = Valpha;
    float Vb = -0.5f * Valpha + 0.866025403784f * Vbeta;
    float Vc = -0.5f * Valpha - 0.866025403784f * Vbeta;

    // 2. 零序电压注入（SVPWM 核心）
    float Vmax = Va;
    if (Vb > Vmax) Vmax = Vb;
    if (Vc > Vmax) Vmax = Vc;

    float Vmin = Va;
    if (Vb < Vmin) Vmin = Vb;
    if (Vc < Vmin) Vmin = Vc;

    float Voffset = -0.5f * (Vmax + Vmin);

    Va += Voffset;
    Vb += Voffset;
    Vc += Voffset;

    // 3. 电压 → PWM 占空比（中心对齐）
    float k = (float)TBPRD_VAL / h->Vdc;

    float Ta = 0.5f * TBPRD_VAL + Va * k;
    float Tb = 0.5f * TBPRD_VAL + Vb * k;
    float Tc = 0.5f * TBPRD_VAL + Vc * k;

    // 4. 安全限幅（防止边界毛刺）
    if (Ta < 0.0f) Ta = 0.0f;
    if (Tb < 0.0f) Tb = 0.0f;
    if (Tc < 0.0f) Tc = 0.0f;

    if (Ta > TBPRD_VAL) Ta = TBPRD_VAL;
    if (Tb > TBPRD_VAL) Tb = TBPRD_VAL;
    if (Tc > TBPRD_VAL) Tc = TBPRD_VAL;

    // 5. 输出到 PWM 比较寄存器
    h->CMPA1 = (uint16_t)Ta;
    h->CMPA2 = (uint16_t)Tb;
    h->CMPA3 = (uint16_t)Tc;
}

// ADC初始化函数
void ADC_Init(void)
{
    // 禁用ADC模块，准备进行配置
    ADC_disableConverter(ADCA_BASE);

    // 配置ADC时钟，设置为系统时钟的1/4
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_4_0);

    // 配置ADC分辨率为12位，单端输入模式
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);

    // 配置SOC0 - A相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN0, 15);

    // 配置SOC1 - B相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN1, 15);

    // 配置SOC2 - C相电流采样
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCB, ADC_CH_ADCIN2, 15);

    // 配置SOC优先级，设置所有SOC为高优先级
    ADC_setSOCPriority(ADCA_BASE, ADC_PRI_ALL_HIPRI);

    // 配置ADC中断，使用SOC2作为中断源
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2);
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    // 配置ADC采样模式，设置为转换结束时产生中断脉冲
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);

    // 暂时禁用过流保护配置，等电流标定完成后再启用
    // 计算过流保护的ADC阈值
    // uint16_t overcurrent_adc_threshold = (uint16_t)(2048 + I_OVERCURRENT_TRIP / ADC_COUNTS_TO_AMP + 0.5f);
    // if (overcurrent_adc_threshold > 4095) overcurrent_adc_threshold = 4095;

    // 配置PPB进行过流保护
    // ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    // ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, overcurrent_adc_threshold, 4095 - overcurrent_adc_threshold);
    // ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI | ADC_EVT_TRIPLO);

    // 启用ADC模块，开始工作
    ADC_enableConverter(ADCA_BASE);

    // 等待ADC准备就绪
    DEVICE_DELAY_US(100);

    // 清除所有可能的残留中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER2);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER3);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER4);
}

// ADC offset 变量
float Ia_offset = 2254.0f;  // 基于用户实测值：1.5V对应2044，1.65V对应约2254
float Ib_offset = 2249.0f;  // 基于用户实测值
float Ic_offset = 2253.0f;  // 基于用户实测值

// 处理ADC转换结果
void ADC_Read_Current(void)
{
    // 读取转换结果（三相都测）
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);
    adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);

    // 使用正确的电流转换公式（带offset标定）
    float Ia = ((float)adcResult[0] - Ia_offset) * ADC_COUNTS_TO_AMP;
    float Ib = ((float)adcResult[1] - Ib_offset) * ADC_COUNTS_TO_AMP;
    float Ic = ((float)adcResult[2] - Ic_offset) * ADC_COUNTS_TO_AMP;

    // 添加滑动平均滤波，减少噪声影响
    static float Ia_prev = 0.0f, Ib_prev = 0.0f, Ic_prev = 0.0f;
    float alpha = 0.9f; // 滤波系数，0-1之间，越大滤波效果越强
    
    // 应用滤波
    Ia = alpha * Ia_prev + (1 - alpha) * Ia;
    Ib = alpha * Ib_prev + (1 - alpha) * Ib;
    Ic = alpha * Ic_prev + (1 - alpha) * Ic;
    
    // 更新历史值
    Ia_prev = Ia;
    Ib_prev = Ib;
    Ic_prev = Ic;
    
    // 零点补偿，确保无电流时读数接近0
    // 根据用户反馈，ia的零点电流在0.1A左右，需要进行补偿
    float zero_threshold = 0.15f; // 零点阈值
    if (fabsf(Ia) < zero_threshold) {
        Ia = 0.0f;
    }
    if (fabsf(Ib) < zero_threshold) {
        Ib = 0.0f;
    }
    if (fabsf(Ic) < zero_threshold) {
        Ic = 0.0f;
    }

    // 直接使用读取的三相电流
    Ia_meas =Ia;
    Ib_meas =Ib;
    Ic_meas =Ic;

    // 电流值合理性检查
    // if (isnan(Ia_meas) || isinf(Ia_meas)) Ia_meas = 0.0f;
    // if (isnan(Ib_meas) || isinf(Ib_meas)) Ib_meas = 0.0f;
    // if (isnan(Ic_meas) || isinf(Ic_meas)) Ic_meas = 0.0f;

    // 暂时禁用过流保护检查，等电流标定完成后再启用
    // if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP || 
    //    fabsf(Ib_meas) > I_OVERCURRENT_TRIP || 
    //    fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    // {
    //     overcurrent_fault = true;
    // }
}

// // 标定ADC offset
// void CalibrateADCOffset(void)
// {
//     uint32_t i;
//     int32_t sum_a = 0, sum_b = 0, sum_c = 0;
    
//     // 标定前准备：确保三相0电压
//     // 将PWM占空比设为0，实现三相0电压
//     EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, 0);
//     EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, 0);
//     EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, 0);
    
//     // 短暂延时，确保电路稳定
//     DEVICE_DELAY_US(1000);
    
//     // 连续采样2000次，计算平均值
//     for (i = 0; i < 2000; i++)
//     {
//         // 软件触发ADC转换，避免SOC触发的时序问题
//         ADC_forceSOC(ADCA_BASE, ADC_SOC_NUMBER0);
//         ADC_forceSOC(ADCA_BASE, ADC_SOC_NUMBER1);
//         ADC_forceSOC(ADCA_BASE, ADC_SOC_NUMBER2);
        
//         // 等待转换完成
//         while(!ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1));
//         ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
        
//         // 读取转换结果
//         adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
//         adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);
//         adcResult[2] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);
//         sum_a += adcResult[0];
//         sum_b += adcResult[1];
//         sum_c += adcResult[2];
//     }
    
//     // 计算平均offset
//     Ia_offset = (float)sum_a / 2000.0f;
//     Ib_offset = (float)sum_b / 2000.0f;
//     Ic_offset = (float)sum_c / 2000.0f;
    
//     // 恢复PWM占空比到初始状态
//     EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2);
//     EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2);
//     EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD_VAL / 2);
// }

// 初始化编码器
void Encoder_init(void)
{
    // 禁用eQEP模块进行配置
    EQEP_disableModule(EQEP1_BASE);
    
    // 配置eQEP引脚
    GPIO_setPinConfig(GPIO_20_EQEP1A);
    GPIO_setPinConfig(GPIO_21_EQEP1B);
    GPIO_setPinConfig(GPIO_23_EQEP1I);
    GPIO_setPadConfig(20, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPadConfig(21, GPIO_PIN_TYPE_PULLUP);
    GPIO_setPadConfig(23, GPIO_PIN_TYPE_PULLUP);
    GPIO_setDirectionMode(20, GPIO_DIR_MODE_IN);
    GPIO_setDirectionMode(21, GPIO_DIR_MODE_IN);
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_IN);

    // 配置eQEP解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP | EQEP_CONFIG_IGATE_DISABLE));
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, COUNTS_PER_REV - 1);

    // 配置单位定时器 (1ms周期，用于速度计算)
    uint32_t unit_period = (uint32_t)((float)SYSCLK_HZ / 1000.0f) - 1;
    EQEP_loadUnitTimer(EQEP1_BASE, unit_period);
    EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT);

    // 禁用位置初始化模式
    EQEP_setPositionInitMode(EQEP1_BASE, EQEP_INIT_DO_NOTHING);

    // 使能eQEP模块
    EQEP_enableModule(EQEP1_BASE);
    
    // 初始化编码器位置
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE);
    last_encoder_raw_pos = encoder_raw_pos;
    encoder_continuous_pos = 0;
    last_encoder_continuous_pos = 0;
}

// 更新编码器数据
void Encoder_update(void)
{
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE);
    
    // 计算连续编码器位置（处理溢出）
    int32_t raw_pos_diff = encoder_raw_pos - last_encoder_raw_pos;
    if (raw_pos_diff > (int32_t)(COUNTS_PER_REV / 2))
    {
        raw_pos_diff -= (int32_t)COUNTS_PER_REV;
    }
    else if (raw_pos_diff < -(int32_t)(COUNTS_PER_REV / 2))
    {
        raw_pos_diff += (int32_t)COUNTS_PER_REV;
    }
    encoder_continuous_pos += raw_pos_diff;
    
    // 计算连续电气角度
    encoder_angle_elec_continuous = ((float)encoder_continuous_pos / (float)COUNTS_PER_REV) * 2.0f * M_PI_F * (float)MOTOR_POLE_PAIRS;
    
    // 计算归一化电角度（0~2π）
    motor_angle_elec_rad = fmodf(encoder_angle_elec_continuous, 2.0f * M_PI_F);
    if (motor_angle_elec_rad < 0.0f)
    {
        motor_angle_elec_rad += 2.0f * M_PI_F;
    }
    
    // 计算机械角度(弧度)
    motor_angle_mech_rad = ((float)encoder_continuous_pos / (float)COUNTS_PER_REV) * 2.0f * M_PI_F;
    motor_angle_mech_rad = fmodf(motor_angle_mech_rad, 2.0f * M_PI_F);
    if (motor_angle_mech_rad < 0.0f)
    {
        motor_angle_mech_rad += 2.0f * M_PI_F;
    }
    
    // 计算电机速度(弧度/秒)
    int32_t continuous_pos_diff = encoder_continuous_pos - last_encoder_continuous_pos;
    motor_speed_rad = ((float)continuous_pos_diff / (float)COUNTS_PER_REV) * 2.0f * M_PI_F / DT;
    
    // 计算电机转速(转/分钟)
    motor_rpm = motor_speed_rad * 60.0f / (2.0f * M_PI_F);
    
    // 更新上一次连续编码器位置
    last_encoder_continuous_pos = encoder_continuous_pos;
    
    // 更新上一次原始编码器位置
    last_encoder_raw_pos = encoder_raw_pos;
}

// 获取电机机械角度
float Encoder_getMechAngle(void)
{
    return motor_angle_mech_rad;
}

// 获取电机电角度
float Encoder_getElecAngle(void)
{
    return motor_angle_elec_rad;
}

// 获取编码器圈数
float Encoder_getTurns(void)
{
    return ((float)encoder_continuous_pos / (float)COUNTS_PER_REV);
}

// 获取电机速度(弧度/秒)
float Encoder_getSpeedRad(void)
{
    return motor_speed_rad;
}

// 获取电机转速(转/分钟)
float Encoder_getSpeedRPM(void)
{
    return motor_rpm;
}

// EPWM初始化函数
void EPWM_Init(void)
{
    // 配置EPWM1 - A相
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setPinConfig(GPIO_1_EPWM1B);

    // 配置EPWM2 - B相
    GPIO_setPinConfig(GPIO_2_EPWM2A);
    GPIO_setPinConfig(GPIO_3_EPWM2B);

    // 配置EPWM3 - C相
    GPIO_setPinConfig(GPIO_4_EPWM3A);
    GPIO_setPinConfig(GPIO_5_EPWM3B);

    // 启用EPWM时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    
    // 设置EPWM时钟分频
    SysCtl_setEPWMClockDivider(SYSCTL_EPWMCLK_DIV_1);
    
    // 配置EPWM1
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD_VAL);
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounter(EPWM1_BASE, 0);
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);

    // 配置EPWM2
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD_VAL);
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounter(EPWM2_BASE, 0);
    EPWM_setClockPrescaler(EPWM2_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);

    // 配置EPWM3
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD_VAL);
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setTimeBaseCounter(EPWM3_BASE, 0);
    EPWM_setClockPrescaler(EPWM3_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);

    // 配置PWM动作限定器
    // EPWM1 - A相
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    
    // EPWM2 - B相
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    
    // EPWM3 - C相
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);

    // 配置SOC触发：在PWM中点（向上计数的CMPA）采样
    // 这样可以确保采在电流平顶，避免换相尖峰和死区瞬间
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_U_CMPA);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);
    
    // 添加SOCB触发配置：同样在PWM中点采样
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_B, EPWM_SOC_TBCTR_U_CMPA);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_B, 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_B);
}

// 设置PWM比较值
void EPWM_SetCompareValues(uint16_t cmpA1, uint16_t cmpA2, uint16_t cmpA3)
{
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, cmpA1);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, cmpA2);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, cmpA3);
}

// 状态切换函数
void SwitchControlState(ControlState new_state)
{
    if (new_state != g_control_state) {
        g_control_state = new_state;
        
        if (new_state == STATE_OPEN_LOOP) {
            // 重置闭环切换定时器
            closed_loop_timer = 0U;
            // 进入开环模式前的准备
            g_encoder_aligned = false;
            Encoder_init();
            Encoder_update();
        } else if (new_state == STATE_CLOSED_LOOP) {
            // 捕获开环结束时的电角度差值，作为闭环的校准基准
            Encoder_update();
            float real_encoder_angle_elec_rad = Encoder_getElecAngle();
            
            // 计算角度偏移量（开环角度 - 编码器角度）
            angle_offset_rad_final = open_loop_angle_elec_rad - real_encoder_angle_elec_rad;
            
            // 包装角度误差到 [-π, π]，避免大角度跳变
            angle_offset_rad_final = fmodf(angle_offset_rad_final + M_PI_F, 2.0f * M_PI_F) - M_PI_F;
            
            // 获取开环末端的实际D/Q电流（使用编码器角度）
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            float d_curr, q_curr;
            park_transform(alpha, beta, real_encoder_angle_elec_rad, &d_curr, &q_curr);
            
            // 切换闭环时强制PI积分值为0（新增：确保状态清理）
            Id_int = 0.0f;
            Iq_int = 0.0f;
            
            // 用开环电流初始化参考值，避免阶跃
            Id_ref = d_curr;
            Iq_ref = 0.0f; // 新增：强制从0开始，避免阶跃
            
            // 设置Iq参考值目标
            Iq_ref_target = TARGET_IQ_REF;
            
            // 重置闭环启动计数器
            cl_startup_cnt = 0;
            
            // 初始化角度融合相关变量（使用编码器实际圈数）
            float current_encoder_turns = Encoder_getTurns();
            closed_loop_start_turns = current_encoder_turns;
            angle_fusion_weight = 0.2f; // 从20%开始
        }
    }
}

// 中断服务程序声明
interrupt void adc_isr(void);

// 初始化所有外设
void InitPeripherals(void)
{
    // 初始化EPWM
    EPWM_Init();

    // 初始化ADC
    ADC_Init();

    // 初始化编码器
    Encoder_init();

    // 注册ADC中断
    Interrupt_register(INT_ADCA1, &adc_isr);
    Interrupt_enable(INT_ADCA1);
}

// ADC中断服务程序
interrupt void adc_isr(void)
{
    // 调试计数器自增
    g_debug_cnt++;
    
    // 读取ADC电流值
    ADC_Read_Current();
    
    // 状态机控制
    switch(g_control_state) {
        case STATE_ALIGNMENT: {
            // 递增对齐计数器
            g_alignment_counter++;
            
            // 设置固定的电角度（0度）
            float align_angle = 0.0f;
            
            // 电压模式：固定vd，vq=0
            float vd = 0.05f * BUS_VOLTAGE; // 极小对齐电压，避免过大电流
            float vq = 0.0f;
            
            // 电压限幅
            float Vmax = BUS_VOLTAGE * 0.3f;
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            float valpha, vbeta;
            inv_park_transform(vd, vq, align_angle, &valpha, &vbeta);
            
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 更新编码器数据
            Encoder_update();
            
            // 对齐完成后切换到开环模式
            if (g_alignment_counter >= ALIGNMENT_DURATION) {
                open_loop_angle_acc = 0.0f;
                open_loop_angle_mech_rad = 0.0f;
                open_loop_angle_elec_rad = 0.0f;
                g_previous_open_loop_angle = 0.0f;
                g_open_loop_turns = 0.0f;

                SwitchControlState(STATE_OPEN_LOOP);
            }
            
            break;
        }
        
        case STATE_OPEN_LOOP: {
            // 更新编码器数据
            Encoder_update();
            g_current_encoder_angle_mech_rad = Encoder_getMechAngle();
            
            // 开环角度主动前进（工业标准同步方式）
            // 1. 角度主动旋转
            open_loop_angle_acc += TARGET_ANGLE_INCREMENT;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 计算累计圈数
            g_open_loop_turns = open_loop_angle_acc / (2.0f * M_PI_F);
            
            // 开环1圈后切换到闭环
            if (g_open_loop_turns >= 5.0f) {
                SwitchControlState(STATE_CLOSED_LOOP);
            }
            
            // 2. 更新电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 电压模式：固定vq，vd=0
            float vd = 0.0f;
            float vq = 0.05f * BUS_VOLTAGE;
            
            // 电压限幅
            float Vmax = TARGET_VMAX;
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, open_loop_angle_elec_rad, &valpha, &vbeta);
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            break;
        }
        
        case STATE_CLOSED_LOOP: {
            // 更新编码器数据
            Encoder_update();
            float real_encoder_angle_elec_rad = -Encoder_getElecAngle();
            real_encoder_angle_elec_rad += theta_offset;   // 新增：添加电角度偏置
            
            // 获取编码器实际圈数
            float current_encoder_turns = Encoder_getTurns();
            
            // 更新调试变量
            g_current_encoder_turns = current_encoder_turns;
            g_turns_since_start = fabsf(current_encoder_turns - closed_loop_start_turns);
            
            // 直接使用带偏移的编码器角度（真实角度）
            float fused_angle = real_encoder_angle_elec_rad + angle_offset_rad_final;
            // 包装角度到 [0, 2π]
            while (fused_angle < 0.0f) fused_angle += 2.0f * M_PI_F;
            while (fused_angle >= 2.0f * M_PI_F) fused_angle -= 2.0f * M_PI_F;
            
            // 弱磁控制
            float Vmax = TARGET_VMAX;
            
            // 初始D轴电流为0
            Id_ref = 0.0f;
            
            // 闭环Iq抬升
            if (Iq_ref_target > 0.0f) {
                // 正向目标值
                if (Iq_ref < Iq_ref_target) {
                    Iq_ref += Iq_ref_step;
                    if (Iq_ref > Iq_ref_target) {
                        Iq_ref = Iq_ref_target;
                    }
                }
            } else {
                // 负向目标值
                if (Iq_ref > Iq_ref_target) {
                    Iq_ref -= Iq_ref_step;
                    if (Iq_ref < Iq_ref_target) {
                        Iq_ref = Iq_ref_target;
                    }
                }
            }
            
            // 执行FOC算法
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            
            float d, q;
            park_transform(alpha, beta, fused_angle, &d, &q);
            
            // 监控D/Q轴电流
            g_current_id = d;
            g_current_iq = q;
            
            // 电流环PI控制
            float vd = pi_id(Id_ref - d);
            float vq = pi_iq(Iq_ref - q);
            
            // 计算电压矢量幅值
            float Vmag = sqrtf(vd * vd + vq * vq);
            
            // 监控D/Q轴电压
            g_current_vd = vd;
            g_current_vq = vq;
            
            // 电压限幅（圆形限幅）
            float Vmag_new = sqrtf(vd * vd + vq * vq);
            if (Vmag_new > Vmax) {
                float scale = Vmax / Vmag_new;
                vd *= scale;
                vq *= scale;
            }
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, fused_angle, &valpha, &vbeta);
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            break;
        }
    }
    
    // 清除ADC中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

// 主函数
int main(void)
{
    // 1. 初始化系统控制（频率、看门狗）
    Device_init();
    Device_initGPIO();
    
    // 2. 配置PLL，设置系统时钟为200MHz
    SysCtl_setClock(DEVICE_SETCLOCK_CFG);
    
    // 3. 清除所有中断并初始化 PIE 向量表
    DINT;
    Interrupt_initModule();
    IER = 0x0000;
    IFR = 0x0000;
    Interrupt_initVectorTable();
    
    // 4. 设置电流参考值
    Id_ref = 0.0f;
    Iq_ref = 0.0f;
    Iq_ref_target = 1.5f;  // 稍大扭矩电流

    // 5. 初始化外设
    InitPeripherals();  
    

        
    // 7. 使能全局中断
    EINT;
    ERTM;
    
    // 7. 主循环
    while(1)
    {
        // 主循环为空，所有控制逻辑在ADC中断中执行
    }
}
