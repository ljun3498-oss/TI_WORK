#include "driverlib.h"
#include "device.h"
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

/* 系统参数 */
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率200MHz
#define PWM_FREQ_HZ         10000.0f                // PWM频率10kHz
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))  // PWM周期值

#define DEADTIME_NS         20000U                  // 死区时间20000纳秒
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f)) // 死区时间计数值
#define DEADTIME_COMP_VOLTAGE 0.5f                  // 死区补偿电压

/* 电机参数 */
#define MOTOR_POLE_PAIRS    2U                      // 电机极对数

/* 安全参数 */
#define BUS_VOLTAGE         48.0f                   // 母线电压48V
#define MAX_PHASE_CURRENT_A 50.0f                   // 最大相电流50A

/* 控制参数 */
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期

#define KP_ID_INIT  0.5f                            // D轴电流环比例增益初始值
#define KI_ID_INIT  200.0f                          // D轴电流环积分增益初始值
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益初始值
#define KI_IQ_INIT  200.0f                          // Q轴电流环积分增益初始值

/* ADC转换系数 */
#define ADC_COUNTS_TO_AMP   (1.0f/100.0f)           // ADC计数到安培的转换系数
#define USE_SIMULATED_ADC   1                       // 使用模拟ADC

/* 全局变量 */
static uint16_t TBPRD = TBPRD_VAL;                  // PWM周期值
volatile float motor_angle_elec_rad = 0.0f;         // 电机电角度(弧度)
volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f; // 三相电流测量值
volatile float Id_ref = 0.0f;                       // D轴电流参考值
volatile float Iq_ref = 0.0f;                       // Q轴电流参考值
volatile float simulated_elec_angle = 0.0f;         // 模拟电机电角度

const float ANGLE_SPEED_RAD_PER_SEC = 10.0f;        // 模拟转速10 rad/s
#define ANGLE_INCREMENT (ANGLE_SPEED_RAD_PER_SEC * DT) // 每周期角度增量

static float Id_int = 0.0f, Iq_int = 0.0f;          // D/Q轴积分项
static float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT; // D轴PI参数
static float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT; // Q轴PI参数

/* 函数声明 */
static void InitPeripherals(void);                  // 外设初始化
static void InitEPWM_SVPWM(void);                   // PWM初始化
static void svpwm_compute(float v_alpha, float v_beta, float Vdc, uint16_t *Ta, uint16_t *Tb, uint16_t *Tc); // SVPWM计算

// 限制浮点数值在指定范围内
static inline float clampf_val(float v, float lo, float hi)
{
    if(v > hi) return hi;
    if(v < lo) return lo;
    return v;
}

// Clarke变换：三相静止坐标系到两相静止坐标系
static void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta)
{
    (void)ic;
    *alpha = ia;
    *beta  = (1.0f/1.7320508075688772f) * (ib - ic);
}

// Park变换：两相静止坐标系到两相旋转坐标系
static void park_transform(float alpha, float beta, float theta, float *d, float *q)
{
    float c = cosf(theta);
    float s = sinf(theta);
    *d = alpha*c + beta*s;
    *q = -alpha*s + beta*c;
}

// 反Park变换：两相旋转坐标系到两相静止坐标系
static void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta)
{
    float c = cosf(theta);
    float s = sinf(theta);
    *alpha = vd*c - vq*s;
    *beta  = vd*s + vq*c;
}

// D轴电流PI控制器
static float pi_id(float err)
{
    float P = KP_ID * err;
    Id_int += KI_ID * err * DT;
    Id_int = clampf_val(Id_int, -BUS_VOLTAGE, BUS_VOLTAGE);
    return P + Id_int;
}

// Q轴电流PI控制器
static float pi_iq(float err)
{
    float P = KP_IQ * err;
    Iq_int += KI_IQ * err * DT;
    Iq_int = clampf_val(Iq_int, -BUS_VOLTAGE, BUS_VOLTAGE);
    return P + Iq_int;
}

// 空间矢量PWM(SVPWM)算法实现
static void svpwm_compute(float v_alpha, float v_beta, float Vdc, uint16_t *Ta, uint16_t *Tb, uint16_t *Tc)
{
    float Va = v_alpha;
    float Vb = -0.5f * v_alpha + 0.8660254037844386f * v_beta;
    float Vc = -0.5f * v_alpha - 0.8660254037844386f * v_beta;

    float dutyA = (Va / Vdc) + 0.5f;
    float dutyB = (Vb / Vdc) + 0.5f;
    float dutyC = (Vc / Vdc) + 0.5f;

    dutyA = clampf_val(dutyA, 0.0f, 1.0f);
    dutyB = clampf_val(dutyB, 0.0f, 1.0f);
    dutyC = clampf_val(dutyC, 0.0f, 1.0f);

    *Ta = (uint16_t)(dutyA * (float)TBPRD + 0.5f);
    *Tb = (uint16_t)(dutyB * (float)TBPRD + 0.5f);
    *Tc = (uint16_t)(dutyC * (float)TBPRD + 0.5f);
}

// EPWM模块初始化
static void InitEPWM_SVPWM(void)
{
    // EPWM1配置
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2);

    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO_OR_PERIOD);
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);

    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_FED, true);
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA);
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA);

    // EPWM2配置
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD);
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setClockPrescaler(EPWM2_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2);

    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_RED, true);
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_FED, true);
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM2_BASE, EPWM_DB_INPUT_EPWMA);
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM2_BASE, EPWM_DB_INPUT_EPWMA);

    // EPWM3配置
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD);
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN);
    EPWM_setClockPrescaler(EPWM3_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2);

    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_RED, true);
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_FED, true);
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM3_BASE, EPWM_DB_INPUT_EPWMA);
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM3_BASE, EPWM_DB_INPUT_EPWMA);

    // GPIO映射
    GPIO_setPinConfig(GPIO_0_EPWM1A);
    GPIO_setPinConfig(GPIO_1_EPWM1B);
    GPIO_setPinConfig(GPIO_2_EPWM2A);
    GPIO_setPinConfig(GPIO_3_EPWM2B);
    GPIO_setPinConfig(GPIO_4_EPWM3A);
    GPIO_setPinConfig(GPIO_5_EPWM3B);

    // TripZone配置
    EPWM_setTripZoneAction(EPWM1_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM2_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM3_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
}

// 外设初始化
static void InitPeripherals(void)
{
    Device_init();
    Device_initGPIO();
    SysCtl_disableWatchdog();

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);

    InitEPWM_SVPWM();
}

// 获取模拟ADC值
#if USE_SIMULATED_ADC
uint16_t get_simulated_adc_value(uint8_t channel)
{
    if (channel < 3) {
        // 基于电角度生成正弦变化的三相电流
        float phase_shift = channel * 2.0f * M_PI / 3.0f;
        float current = 0.5f * sinf(simulated_elec_angle - phase_shift);
        
        // 转换为ADC值 (2048为12位ADC中点)
        return (uint16_t)(2048 + current / ADC_COUNTS_TO_AMP);
    }
    return 2048;
}
#endif

// 主函数
int main(void)
{
    InitPeripherals();

    // 设置默认的D/Q轴电流参考值
    Iq_ref = 0.9f;  
    Id_ref = 0.3f; 
    
    // 主循环
    while (1)
    {
        // 更新模拟电角度
        simulated_elec_angle += ANGLE_INCREMENT;
        if (simulated_elec_angle >= 2.0f * M_PI) {
            simulated_elec_angle -= 2.0f * M_PI;
        }
        motor_angle_elec_rad = simulated_elec_angle;

        // 获取模拟ADC值并转换为电流值
        uint16_t rawA = get_simulated_adc_value(0);
        uint16_t rawB = get_simulated_adc_value(1);
        uint16_t rawC = get_simulated_adc_value(2);
        
        Ia_meas = ((int32_t)rawA - 2048) * ADC_COUNTS_TO_AMP;
        Ib_meas = ((int32_t)rawB - 2048) * ADC_COUNTS_TO_AMP;
        Ic_meas = ((int32_t)rawC - 2048) * ADC_COUNTS_TO_AMP;

        // Clarke变换
        float ialpha, ibeta;
        clarke_transform(Ia_meas, Ib_meas, Ic_meas, &ialpha, &ibeta);

        // Park变换
        float Id, Iq;
        park_transform(ialpha, ibeta, motor_angle_elec_rad, &Id, &Iq);

        // 计算电流误差
        float errId = Id_ref - Id;
        float errIq = Iq_ref - Iq;

        // PI控制器计算电压指令
        float vd = pi_id(errId);
        float vq = pi_iq(errIq);

        // 死区补偿
        vd += DEADTIME_COMP_VOLTAGE;
        vq += DEADTIME_COMP_VOLTAGE;

        // 反Park变换
        float v_alpha, v_beta;
        inv_park_transform(vd, vq, motor_angle_elec_rad, &v_alpha, &v_beta);

        // SVPWM计算
        uint16_t Ta, Tb, Tc;
        svpwm_compute(v_alpha, v_beta, BUS_VOLTAGE, &Ta, &Tb, &Tc);

        // 更新PWM比较寄存器
        EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, Ta);
        EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, Tb);
        EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, Tc);

        // 软件延时
        uint32_t delay_count;
        for(delay_count = 0; delay_count < 5000; delay_count++)
        {
            __asm(" NOP");
        }
    }
}
