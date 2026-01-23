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
#define ADC_COUNTS_TO_AMP   (20.0f / 4096.0f) // ADC计数到安培的转换系数
#define ADC_OFFSET          2048.0f          // ADC中点偏置

// PI控制器参数
#define KP_ID_INIT  1.0f                    // D轴电流环比例增益
#define KI_ID_INIT  5.0f                   // D轴电流环积分增益
#define KP_IQ_INIT  1.0f                    // Q轴电流环比例增益
#define KI_IQ_INIT  5.0f                   // Q轴电流环积分增益

// 状态机定义
typedef enum {
    STATE_ALIGNMENT = 0,   // 对齐状态
    STATE_OPEN_LOOP,       // 开环状态
    STATE_VIRTUAL_ENCODER, // 角度同步状态
    STATE_CLOSED_LOOP,     // 完全闭环状态
} ControlState;

// 对齐参数
#define ALIGNMENT_DURATION 5000  // 对齐持续时间（0.5秒，基于20kHz中断频率）

// 开环参数
#define OPEN_LOOP_TIMEOUT_COUNT (20000 * 3)  // 3秒超时对应的中断次数

// 闭环启动参数
#define CL_STARTUP_DURATION 1000 // 闭环启动持续时间（拍数）

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
float angle_offset_rad_final = 0.0f;             // 冻结的角度偏移值（用于闭环控制）

// 电流参考值抬升变量
float Iq_ref_target = 0.0f;                      // Iq参考值目标
float Iq_ref_step = 0.05f;                       // Iq参考值抬升步长（每拍增加的量）

// 闭环启动时间跟踪
uint16_t cl_startup_cnt = 0;                     // 闭环启动计数器

// 调试计数器
uint32_t g_debug_cnt = 0;                        // 用于确认ISR是否真正运行

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
    *Valpha = Ia;
    *Vbeta = (Ia + 2.0f * Ib) / sqrtf(3.0f);
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

    // 计算过流保护的ADC阈值
    uint16_t overcurrent_adc_threshold = (uint16_t)(2048 + I_OVERCURRENT_TRIP / ADC_COUNTS_TO_AMP + 0.5f);
    if (overcurrent_adc_threshold > 4095) overcurrent_adc_threshold = 4095;

    // 配置PPB进行过流保护
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, overcurrent_adc_threshold, 4095 - overcurrent_adc_threshold);
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI | ADC_EVT_TRIPLO);

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

// 处理ADC转换结果
void ADC_Read_Current(void)
{
    // 读取转换结果（只测两相）
    adcResult[0] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
    adcResult[1] = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);

    // 转换为电流值
    float Ia = (float)((int16_t)adcResult[0] - 2048) * ADC_COUNTS_TO_AMP;
    float Ib = (float)((int16_t)adcResult[1] - 2048) * ADC_COUNTS_TO_AMP;

    // 第三相由Kirchhoff定律计算（Ia + Ib + Ic = 0）
    Ia_meas = Ia;
    Ib_meas = Ib;
    Ic_meas = -(Ia + Ib);

    // 电流值合理性检查
    if (isnan(Ia_meas) || isinf(Ia_meas)) Ia_meas = 0.0f;
    if (isnan(Ib_meas) || isinf(Ib_meas)) Ib_meas = 0.0f;
    if (isnan(Ic_meas) || isinf(Ic_meas)) Ic_meas = 0.0f;

    // 过流保护检查
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP || 
       fabsf(Ib_meas) > I_OVERCURRENT_TRIP || 
       fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    {
        overcurrent_fault = true;
    }
}

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

    // 禁用索引事件中断
    EQEP_disableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);

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

    // 配置SOC触发
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);
    
    // 添加SOCB触发配置
    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_B, EPWM_SOC_TBCTR_ZERO);
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
            // 进入开环模式前的准备
            g_encoder_aligned = false;
            Encoder_init();
            Encoder_update();
        } else if (new_state == STATE_VIRTUAL_ENCODER) {
            // 从虚拟电流切换到虚拟编码器时，重置PI积分项
            Id_int = 0.0f;
            Iq_int = 0.0f;
        } else if (new_state == STATE_CLOSED_LOOP) {
            // 进入闭环模式时，重置PI积分项
            Id_int = 0.0f;
            Iq_int = 0.0f;
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
    
    // 状态机控制
    switch(g_control_state) {
        case STATE_ALIGNMENT: {
            // 递增对齐计数器
            g_alignment_counter++;
            
            // 设置固定的电角度（0度）
            float align_angle = 0.0f;
            
            // 电压模式：固定vd，vq=0
            float vd = 0.5f * BUS_VOLTAGE; // 固定对齐电压
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
                
                SwitchControlState(STATE_OPEN_LOOP);
            }
            
            break;
        }
        
        case STATE_OPEN_LOOP: {
            // 使用固定角速度
            float angle_increment = M_PI_F / 10000.0f;
            
            // 更新开环角度
            open_loop_angle_acc += angle_increment;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 计算累计圈数
            g_open_loop_turns = open_loop_angle_acc / (2.0f * M_PI_F);
            
            // 更新电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 电压模式：固定vq，vd=0
            float vd = 0.0f;
            float vq = 0.1f * BUS_VOLTAGE; // 小常数电压
            
            // 电压限幅
            float Vmax = BUS_VOLTAGE * 0.3f;
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
            
            // 更新编码器数据
            Encoder_update();
            g_current_encoder_angle_mech_rad = Encoder_getMechAngle();
            
            // 运行10圈后切换到角度同步状态
            if (g_open_loop_turns > 5.0f) {
                SwitchControlState(STATE_VIRTUAL_ENCODER);
            }
            
            break;
        }
        
        case STATE_VIRTUAL_ENCODER: {
            // 强制冻结PI积分项，避免积分漂移
            Id_int = 0.0f;
            Iq_int = 0.0f;
            
            // 获取编码器角度
            Encoder_update();
            float encoder_angle_elec_rad = Encoder_getElecAngle();
            
            // 角度同步：误差混合（工程正确的角度混合方法）
            float alpha = 0.9f; // 开环角度权重
            float angle_err = encoder_angle_elec_rad - open_loop_angle_elec_rad;
            // 包装角度误差到 [-π, π]
            angle_err = fmodf(angle_err + M_PI_F, 2.0f * M_PI_F) - M_PI_F;
            
            // 动态调整角速度：根据角度误差方向和大小调整
            float base_angle_increment = M_PI_F / 10000.0f;
            float angle_error_gain = 0.01f; // 角度误差比例系数
            
            // 计算调整后的角速度增量
            float angle_increment = base_angle_increment + angle_error_gain * angle_err;
            
            // 限制角速度范围，避免过度调整
            float max_angle_increment = M_PI_F / 5000.0f;  // 最大角速度
            float min_angle_increment = M_PI_F / 20000.0f; // 最小角速度
            angle_increment = fmaxf(fminf(angle_increment, max_angle_increment), min_angle_increment);
            
            // 更新开环角度
            open_loop_angle_acc += angle_increment;
            open_loop_angle_mech_rad = fmodf(open_loop_angle_acc, 2.0f * M_PI_F);
            if (open_loop_angle_mech_rad < 0.0f) {
                open_loop_angle_mech_rad += 2.0f * M_PI_F;
            }
            
            // 计算累计圈数
            g_open_loop_turns = open_loop_angle_acc / (2.0f * M_PI_F);
            
            // 更新电角度
            open_loop_angle_elec_rad = open_loop_angle_mech_rad * MOTOR_POLE_PAIRS;
            open_loop_angle_elec_rad = fmodf(open_loop_angle_elec_rad, 2.0f * M_PI_F);
            if (open_loop_angle_elec_rad < 0.0f) {
                open_loop_angle_elec_rad += 2.0f * M_PI_F;
            }
            
            // 以开环角度为基准，只引入编码器相对误差
            float angle_used = open_loop_angle_elec_rad + (1.0f - alpha) * angle_err;
            angle_used = fmodf(angle_used, 2.0f * M_PI_F);
            if (angle_used < 0.0f) {
                angle_used += 2.0f * M_PI_F;
            }
            
            // 电压模式：固定vq，vd=0
            float vd = 0.0f;
            float vq = 0.1f * BUS_VOLTAGE; // 小常数电压
            
            // 电压限幅
            float Vmax = BUS_VOLTAGE * 0.3f;
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, angle_used, &valpha, &vbeta);
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 使用角度误差作为切闭环条件
            static uint32_t sync_cnt = 0;
            float angle_threshold = 5.0f * (M_PI_F / 180.0f); // 5度阈值
            if (fabsf(angle_err) < angle_threshold) {
                sync_cnt++;
                if (sync_cnt > 500) { // 持续500个控制周期
                    // 清零PI积分项
                    Id_int = 0.0f;
                    Iq_int = 0.0f;
                    // 重置Iq_ref为0，准备软启动
                    Iq_ref = 0.0f;
                    // 重置同步计数器
                    sync_cnt = 0;
                    SwitchControlState(STATE_CLOSED_LOOP);
                }
            } else {
                // 角度误差超过阈值，重置同步计数器
                sync_cnt = 0;
            }
            
            break;
        }
        
        case STATE_CLOSED_LOOP: {
            // 读取真实ADC电流值
            ADC_Read_Current();
            
            // 更新编码器数据
            Encoder_update();
            float real_encoder_angle_elec_rad = Encoder_getElecAngle();
            
            // 使用带偏移的编码器角度
            float angle_with_offset = real_encoder_angle_elec_rad + angle_offset_rad_final;
            angle_with_offset = fmodf(angle_with_offset, 2.0f * M_PI_F);
            if (angle_with_offset < 0.0f) {
                angle_with_offset += 2.0f * M_PI_F;
            }
            
            // 执行FOC算法
            float alpha, beta;
            clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
            
            float d, q;
            park_transform(alpha, beta, angle_with_offset, &d, &q);
            
            // 监控D/Q轴电流
            g_current_id = d;
            g_current_iq = q;
            
            // 电流环PI控制
            float vd = pi_id(Id_ref - d);
            float vq = pi_iq(Iq_ref - q);
            
            // 电压限幅
            float Vmax = BUS_VOLTAGE * 0.5f;
            vd = clampf_val(vd, -Vmax, Vmax);
            vq = clampf_val(vq, -Vmax, Vmax);
            
            // 逆Park变换
            float valpha, vbeta;
            inv_park_transform(vd, vq, angle_with_offset, &valpha, &vbeta);
            
            // SVPWM计算
            svpwm_compute(&svpwm_handle, valpha, vbeta);
            
            // 设置PWM比较值
            EPWM_SetCompareValues(
                svpwm_handle.CMPA1, 
                svpwm_handle.CMPA2,
                svpwm_handle.CMPA3
            );
            
            // 软启动：Iq_ref从0平滑上升到目标值
            if (Iq_ref < Iq_ref_target) {
                Iq_ref += Iq_ref_step;
                if (Iq_ref > Iq_ref_target) {
                    Iq_ref = Iq_ref_target;
                }
            }
            
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
    Iq_ref_target = 1.0f;

    // 5. 初始化外设
    InitPeripherals();  
        
    // 6. 使能全局中断
    EINT;
    ERTM;
    
    // 7. 主循环
    while(1)
    {
        // 主循环为空，所有控制逻辑在ADC中断中执行
    }
}
