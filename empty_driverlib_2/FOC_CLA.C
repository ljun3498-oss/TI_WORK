#include "driverlib.h"
#include "device.h"
#include "cla.h"
#include "memcfg.h"
#include "interrupt.h" // 确保中断管理头文件被包含
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

/* 链接器提供的ramfunc段符号 */

/* =========================
   系统/硬件参数
   ========================= */
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率
#define PWM_FREQ_HZ         10000.0f                // PWM频率
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))  // 计算周期值

#define DEADTIME_NS         1000U                   // 死区时间1微秒，可根据需要调整
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f)) // 死区时间计数值
#define DEADTIME_COMP_VOLTAGE 0.0f                  // 死区补偿电压

/* 编码器/电机参数 */
#define ENCODER_LINES       5000U                   // 编码器线数
#define QUADRATURE_MULT     4U                      // 正交倍频
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数
#define MOTOR_POLE_PAIRS    2U                      // 电机极对数

/* ADC通道定义 */
#define ADC_PHASE_A_CHANNEL ADC_CH_ADCIN0           // A相电流ADC通道
#define ADC_PHASE_B_CHANNEL ADC_CH_ADCIN1           // B相电流ADC通道
#define ADC_PHASE_C_CHANNEL ADC_CH_ADCIN2           // C相电流ADC通道

/* 安全参数 */
#define BUS_VOLTAGE         48.0f                   // 母线电压
#define MAX_PHASE_CURRENT_A 50.0f                   // 最大相电流
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值

/* 控制环路参数 */
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期

#define KP_ID_INIT  0.5f                            // D轴电流环比例增益初始值
#define KI_ID_INIT  200.0f                          // D轴电流环积分增益初始值
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益初始值
#define KI_IQ_INIT  200.0f                          // Q轴电流环积分增益初始值

/* ADC到电流的转换系数 */
#define ADC_COUNTS_TO_AMP   (1.0f/100.0f)           // 示例：100个计数等于1A电流，实际使用时需校准
#define ADC_COUNTS_OVERCURRENT  (uint16_t)(I_OVERCURRENT_TRIP / ADC_COUNTS_TO_AMP) // 过流保护计数值

//CLA相关定义
#define CLA_TASK1_ENABLE    0x01U                   //CLA任务1使能

/* 全局变量 */
static uint16_t TBPRD = TBPRD_VAL;                  // PWM周期值
volatile int32_t encoder_raw_pos = 0;               // 编码器原始位置
volatile bool encoder_calibrated = false;            // 编码器校准标志
volatile bool index_detected = false;                // 索引脉冲检测标志
volatile float motor_angle_mech_rad = 0.0f;         // 机械角度（弧度）
volatile float motor_angle_elec_rad = 0.0f;         // 电气角度（弧度）
float Id_ref = 0.0f;                                // D轴电流参考值
float Iq_ref = 0.0f;                                // Q轴电流参考值
float Id_int = 0.0f, Iq_int = 0.0f;                 // D/Q轴积分项 (由CLA处理)
static float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT; // D轴PI参数
static float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT; // Q轴PI参数

volatile bool overcurrent_fault = false;            // 过流故障标志

//CLA共享变量
#pragma DATA_SECTION(CLA_Id, "Cla1DataRam");
float CLA_Id;     // d轴电流实际值

#pragma DATA_SECTION(CLA_Iq, "Cla1DataRam");
float CLA_Iq;     // q轴电流实际값

#pragma DATA_SECTION(CLA_vd, "Cla1DataRam");
float CLA_vd;     // d轴电压给定值

#pragma DATA_SECTION(CLA_vq, "Cla1DataRam");
float CLA_vq;     // q轴电压给定值

#pragma DATA_SECTION(CLA_v_alpha, "Cla1DataRam");
float CLA_v_alpha; // α轴电压值

#pragma DATA_SECTION(CLA_v_beta, "Cla1DataRam");
float CLA_v_beta;  // β轴电压值

#pragma DATA_SECTION(CLA_theta, "Cla1DataRam");
float CLA_theta;   // 转子电角度

#pragma DATA_SECTION(CLA_ialpha, "Cla1DataRam");
float CLA_ialpha;  // α轴电流值

#pragma DATA_SECTION(CLA_ibeta, "Cla1DataRam");
float CLA_ibeta;   // β轴电流值

#pragma DATA_SECTION(CLA_errId, "Cla1DataRam");
float CLA_errId;   // d轴电流误差值

#pragma DATA_SECTION(CLA_errIq, "Cla1DataRam");
float CLA_errIq;   // q轴电流误差值

#pragma DATA_SECTION(CLA_Ta, "Cla1DataRam");
uint16_t CLA_Ta;   // A相 PWM 周期计数值

#pragma DATA_SECTION(CLA_Tb, "Cla1DataRam");
uint16_t CLA_Tb;   // B相 PWM 周期计数值

#pragma DATA_SECTION(CLA_Tc, "Cla1DataRam");
uint16_t CLA_Tc;   // C相 PWM 周期计数值

#pragma DATA_SECTION(CLA_Id_ref, "Cla1DataRam");
float CLA_Id_ref;  // d轴电流参考值

#pragma DATA_SECTION(CLA_Iq_ref, "Cla1DataRam");
float CLA_Iq_ref;  // q轴电流参考值

#pragma DATA_SECTION(CLA_Ia_meas, "Cla1DataRam");
float CLA_Ia_meas; // A相电流测量值

#pragma DATA_SECTION(CLA_Ib_meas, "Cla1DataRam");
float CLA_Ib_meas; // B相电流测量值

#pragma DATA_SECTION(CLA_Ic_meas, "Cla1DataRam");
float CLA_Ic_meas; // C相电流测量값

#pragma DATA_SECTION(CLA_KP_ID, "Cla1DataRam");
float CLA_KP_ID;   // d轴电流环比例增益

#pragma DATA_SECTION(CLA_KI_ID, "Cla1DataRam");
float CLA_KI_ID;   // d轴电流环积分增益

#pragma DATA_SECTION(CLA_KP_IQ, "Cla1DataRam");
float CLA_KP_IQ;   // q轴电流环比例增益

#pragma DATA_SECTION(CLA_KI_IQ, "Cla1DataRam");
float CLA_KI_IQ;   // q轴电流环积分增益

#pragma DATA_SECTION(CLA_DT, "Cla1DataRam");
float CLA_DT;      // 控制周期

#pragma DATA_SECTION(CLA_BUS_VOLTAGE, "Cla1DataRam");
float CLA_BUS_VOLTAGE; // 母线电压值

#pragma DATA_SECTION(CLA_Id_int, "Cla1DataRam");
float CLA_Id_int;      // d轴电流积分项

#pragma DATA_SECTION(CLA_Iq_int, "Cla1DataRam");
float CLA_Iq_int;      // q轴电流积分项

/* 函数声明 */
static void InitPeripherals(void);                  // 外设初始化
static void InitEPWM_SVPWM(void);                   // PWM初始化
static void InitADC_Current(void);                  // 电流ADC初始化
static void InitADC_PPBTrips(void);                 // ADC过流保护初始化
static void InitEQEP1(void);                        // 编码器初始化
static void DoElectricalAlignment(void);            // 电机电气角度校准
static void InitCLA(void);                          // CLA初始化

/* 工具函数防止饱满 */
static inline float clampf_val(float v, float lo, float hi)
{
    if(v > hi) return hi;
    if(v < lo) return lo;
    return v;
}


__interrupt void cla_task1_isr(void);

/* =========================
   中断服务程序
   ========================= */

/* ADC转换完成中断服务程序 (ADCA INT1映射到SOC2) */
__interrupt void adc_isr(void)
{
    // 读取三相电流ADC转换结果
    uint16_t rawA = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
    uint16_t rawB = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);
    uint16_t rawC = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);

    // 将ADC计数值转换为实际电流值(A)
    float Ia_meas = (float)((int32_t)rawA) * ADC_COUNTS_TO_AMP;
    float Ib_meas = (float)((int32_t)rawB) * ADC_COUNTS_TO_AMP;
    float Ic_meas = (float)((int32_t)rawC) * ADC_COUNTS_TO_AMP;

    // 软件过流保护
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP || fabsf(Ib_meas) > I_OVERCURRENT_TRIP || fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    {
        overcurrent_fault = true;
        EPWM_forceTripZoneEvent(EPWM1_BASE, EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(EPWM2_BASE, EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(EPWM3_BASE, EPWM_TZ_FORCE_EVENT_OST);
    }

    // 读取编码器位置
    uint32_t pos = EQEP_getPosition(EQEP1_BASE);
    encoder_raw_pos = pos;
    motor_angle_mech_rad = ((float)pos / (float)ENCODER_CPR) * 2.0f * M_PI;
    motor_angle_elec_rad = fmodf(motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS, 2.0f * M_PI);
    
    // 将数据传递给CLA
    CLA_Ia_meas = Ia_meas;
    CLA_Ib_meas = Ib_meas;
    CLA_Ic_meas = Ic_meas;
    CLA_theta = motor_angle_elec_rad;
    CLA_Id_ref = Id_ref;
    CLA_Iq_ref = Iq_ref;
    CLA_KP_ID = KP_ID;
    CLA_KI_ID = KI_ID;
    CLA_KP_IQ = KP_IQ;
    CLA_KI_IQ = KI_IQ;
    CLA_DT = DT;
    CLA_BUS_VOLTAGE = BUS_VOLTAGE;
    CLA_Id_int = Id_int;
    CLA_Iq_int = Iq_int;

    // 触发CLA任务1
    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_1);

    // 清除ADC中断
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

//CLA任务函数声明
#pragma CODE_SECTION(Cla1Task1,"Cla1Prog");
void Cla1Task1(void);

/* CLA任务1完成中断 */
__interrupt void cla_task1_isr(void)
{
    // 获取CLA计算结果
    Id_int = CLA_Id_int;
    Iq_int = CLA_Iq_int;
    
    // 写入CMPA寄存器(影子)
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, CLA_Ta);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, CLA_Tb);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, CLA_Tc);

    // 清除CLA中断标志
    CLA_clearTaskFlags(CLA1_BASE, CLA_TASKFLAG_1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP11);
}

// ADC PPB触发中断 - 硬件过流事件

__interrupt void adc_ppb_isr(void)
{
    overcurrent_fault = true;
    EPWM_forceTripZoneEvent(EPWM1_BASE, EPWM_TZ_FORCE_EVENT_OST);
    EPWM_forceTripZoneEvent(EPWM2_BASE, EPWM_TZ_FORCE_EVENT_OST);
    EPWM_forceTripZoneEvent(EPWM3_BASE, EPWM_TZ_FORCE_EVENT_OST);

    ADC_disableConverter(ADCA_BASE);
    GPIO_writePin(25, 1); // 故障LED

    // 清除PPB状态
#ifdef ADC_clearPPBEventStatus
    ADC_clearPPBEventStatus(ADCA_BASE, ADC_PPB_NUMBER1);
    ADC_clearPPBEventStatus(ADCA_BASE, ADC_PPB_NUMBER2);
    ADC_clearPPBEventStatus(ADCA_BASE, ADC_PPB_NUMBER3);
#else
    // 回退方案: 清除ADC中断
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
#endif

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

/* eQEP索引中断 */
__interrupt void eqep_index_isr(void)
{
    if(EQEP_getInterruptStatus(EQEP1_BASE) & EQEP_INT_INDEX_EVNT_LATCH)
    {
        index_detected = true;
        encoder_calibrated = true;
        EQEP_setPosition(EQEP1_BASE, 0);
        EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    }
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);
}

/* =========================
   CLA任务函数
   ========================= */
#pragma CODE_SECTION(Cla1Task1, "Cla1Prog");
void Cla1Task1(void)
{
    // Clarke变换
    CLA_ialpha = CLA_Ia_meas;
    CLA_ibeta  = (1.0f/1.7320508075688772f) * (CLA_Ib_meas - CLA_Ic_meas);

    // Park变换
    float c = cosf(CLA_theta);
    float s = sinf(CLA_theta);
    CLA_Id = CLA_ialpha*c + CLA_ibeta*s;
    CLA_Iq = -CLA_ialpha*s + CLA_ibeta*c;

    // 计算误差
    CLA_errId = CLA_Id_ref - CLA_Id;
    CLA_errIq = CLA_Iq_ref - CLA_Iq;

    // PI控制器->vd, vq
    float P = CLA_KP_ID * CLA_errId;
    CLA_Id_int += CLA_KI_ID * CLA_errId * CLA_DT;
    CLA_Id_int = clampf_val(CLA_Id_int, -CLA_BUS_VOLTAGE, CLA_BUS_VOLTAGE);
    CLA_vd = P + CLA_Id_int;

    P = CLA_KP_IQ * CLA_errIq;
    CLA_Iq_int += CLA_KI_IQ * CLA_errIq * CLA_DT;
    CLA_Iq_int = clampf_val(CLA_Iq_int, -CLA_BUS_VOLTAGE, CLA_BUS_VOLTAGE);
    CLA_vq = P + CLA_Iq_int;

    // 死区补偿(无补偿)
    CLA_vd += DEADTIME_COMP_VOLTAGE;
    CLA_vq += DEADTIME_COMP_VOLTAGE;

    // 反Park变换
    c = cosf(CLA_theta);
    s = sinf(CLA_theta);
    CLA_v_alpha = CLA_vd*c - CLA_vq*s;
    CLA_v_beta  = CLA_vd*s + CLA_vq*c;

    // SVPWM->Ta,Tb,Tc
    // 将alpha-beta映射到相电压(近似)
    float Va = CLA_v_alpha;
    float Vb = -0.5f * CLA_v_alpha + 0.8660254037844386f * CLA_v_beta;
    float Vc = -0.5f * CLA_v_alpha - 0.8660254037844386f * CLA_v_beta;

    float dutyA = (Va / CLA_BUS_VOLTAGE) + 0.5f;
    float dutyB = (Vb / CLA_BUS_VOLTAGE) + 0.5f;
    float dutyC = (Vc / CLA_BUS_VOLTAGE) + 0.5f;

    dutyA = clampf_val(dutyA, 0.0f, 1.0f);
    dutyB = clampf_val(dutyB, 0.0f, 1.0f);
    dutyC = clampf_val(dutyC, 0.0f, 1.0f);

    CLA_Ta = (uint16_t)(dutyA * (float)TBPRD + 0.5f);
    CLA_Tb = (uint16_t)(dutyB * (float)TBPRD + 0.5f);
    CLA_Tc = (uint16_t)(dutyC * (float)TBPRD + 0.5f);
}

/* =========================
   初始化函数
   ========================= */

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

    // TripZone配置: OST->输出低电平
    EPWM_setTripZoneAction(EPWM1_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM2_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM3_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
}

/* ADC初始化 */
static void InitADC_Current(void)
{
    ADC_disableConverter(ADCA_BASE);
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_2_0);
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);

    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_A_CHANNEL, 64);
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_B_CHANNEL, 64);
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_C_CHANNEL, 64);

    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER2, ADC_SOC_NUMBER1);
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER3, ADC_SOC_NUMBER2);

    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2);
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1);
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    ADC_enableConverter(ADCA_BASE);
}

/* ADC PPB触发配置 - 硬件过流保护 */
static void InitADC_PPBTrips(void)
{
    uint16_t hi = ADC_COUNTS_OVERCURRENT;
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER1, hi, 0);
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER2, hi, 0);
    ADC_setPPBTripLimits(ADCA_BASE, ADC_PPB_NUMBER3, hi, 0);

    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI);
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER2, ADC_EVT_TRIPHI);
    ADC_enablePPBEvent(ADCA_BASE, ADC_PPB_NUMBER3, ADC_EVT_TRIPHI);

    ADC_enablePPBEventInterrupt(ADCA_BASE, ADC_PPB_NUMBER1, ADC_EVT_TRIPHI);
    ADC_enablePPBEventInterrupt(ADCA_BASE, ADC_PPB_NUMBER2, ADC_EVT_TRIPHI);
    ADC_enablePPBEventInterrupt(ADCA_BASE, ADC_PPB_NUMBER3, ADC_EVT_TRIPHI);

    Interrupt_register(INT_ADCA2, adc_ppb_isr); // 根据设备定义调整中断向量
    Interrupt_enable(INT_ADCA2);
}

/* eQEP初始化 */
static void InitEQEP1(void)
{
    GPIO_setPinConfig(GPIO_10_EQEP1A);
    GPIO_setPinConfig(GPIO_11_EQEP1B);
    GPIO_setPinConfig(GPIO_13_EQEP1I);
    GPIO_setDirectionMode(10, GPIO_DIR_MODE_IN);
    GPIO_setDirectionMode(11, GPIO_DIR_MODE_IN);
    GPIO_setDirectionMode(13, GPIO_DIR_MODE_IN);

    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP | EQEP_CONFIG_IGATE_DISABLE));
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, ENCODER_CPR - 1);
    EQEP_setPositionInitMode(EQEP1_BASE, EQEP_INIT_RISING_INDEX);

    uint32_t unit_period = (uint32_t)((float)SYSCLK_HZ / 1000.0f) - 1; // 1ms锁存
    EQEP_loadUnitTimer(EQEP1_BASE, unit_period);
    EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT);
    EQEP_enableModule(EQEP1_BASE);

    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
    Interrupt_register(INT_EQEP1, eqep_index_isr);
    Interrupt_enable(INT_EQEP1);
}

/* CLA初始化 */
static void InitCLA(void)
{
    // 使能CLA模块时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1);
    
    // 复位CLA
    CLA_performHardReset(CLA1_BASE);
    
    // 分配CLA存储器
    // 数据RAM
    MemCfg_setCLAMemType(MEMCFG_SECT_D0, MEMCFG_CLA_MEM_DATA);
    MemCfg_setCLAMemType(MEMCFG_SECT_D1, MEMCFG_CLA_MEM_DATA);
    
    // 程序RAM
    MemCfg_setCLAMemType(MEMCFG_SECT_LS0, MEMCFG_CLA_MEM_PROGRAM);
    MemCfg_setCLAMemType(MEMCFG_SECT_LS1, MEMCFG_CLA_MEM_PROGRAM);
    
    // 保护CLA程序和数据RAM免受CPU访问冲突
    MemCfg_setProtection(MEMCFG_SECT_LS0, MEMCFG_PROT_ALLOWCPUFETCH | MEMCFG_PROT_ALLOWCPUWRITE);
    MemCfg_setProtection(MEMCFG_SECT_LS1, MEMCFG_PROT_ALLOWCPUFETCH | MEMCFG_PROT_ALLOWCPUWRITE);
    MemCfg_setProtection(MEMCFG_SECT_D0, MEMCFG_PROT_ALLOWCPUFETCH | MEMCFG_PROT_ALLOWCPUWRITE);
    MemCfg_setProtection(MEMCFG_SECT_D1, MEMCFG_PROT_ALLOWCPUFETCH | MEMCFG_PROT_ALLOWCPUWRITE);

    // 初始化CLA向量
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_1, (uint16_t)((uint32_t)&Cla1Task1 & 0xFFFFU));
    
    // 配置触发源: ADC INT1 触发 CLA Task 1
    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_ADCA1);
    
    // 使能CLA任务1
    CLA_enableTasks(CLA1_BASE, CLA_TASKFLAG_1);
    
    // 清除所有任务中断标志
    CLA_clearTaskFlags(CLA1_BASE, CLA_TASKFLAG_ALL);
    
    // 注册CLA任务1完成中断
    Interrupt_register(INT_CLA1_1, cla_task1_isr);
    Interrupt_enable(INT_CLA1_1);
}

/* 电气角度校准: 注入Id电流使转子对齐到已知电角度 */
/* 该函数保持Id_ref非零并强制开环PWM实现对齐 */
static void DoElectricalAlignment(void)
{
    const float ALIGN_ID = 0.5f; // 校准电流(A)，可调整
    const uint32_t ALIGN_MS = 500; // 校准时间500ms

    // 临时设置参考值
    float prevId = CLA_Id_ref;
    float prevIq = CLA_Iq_ref;
    CLA_Id_ref = ALIGN_ID;
    CLA_Iq_ref = 0.0f;

    // 等待ADC ISR/PI控制器驱动Id达到ALIGN_ID
    uint32_t loops = (ALIGN_MS * 1000U); // 近似延时循环
    uint32_t i;
    for(i=0;i<loops;i++) asm(" NOP");

    // 校准完成后读取编码器位置并设置零位
    EQEP_setPosition(EQEP1_BASE, 0);
    encoder_calibrated = true;

    // 恢复参考值
    CLA_Id_ref = prevId;
    CLA_Iq_ref = prevIq;
}

/* 外设综合初始化 */
static void InitPeripherals(void)
{
    Device_init();
    Device_initGPIO();
    SysCtl_disableWatchdog();

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);

    InitEPWM_SVPWM();
    InitADC_Current();
    InitADC_PPBTrips();
    InitEQEP1();
    InitCLA(); // 初始化CLA

    // 注册并立即启用ADC中断，确保校准期间闭环控制有效
    Interrupt_register(INT_ADCA1, adc_isr);
    Interrupt_enable(INT_ADCA1);
    
    // 现在可以安全地执行电气对齐，因为ADC和CLA中断已就绪
    DoElectricalAlignment();
}

/* =========================
   主函数
   ========================= */

/* 在main启动早期调用 */
int main(void)
{
    DINT;

    InitPeripherals();

    EINT;
    ERTM;

    for(;;) { asm(" NOP"); }
}
