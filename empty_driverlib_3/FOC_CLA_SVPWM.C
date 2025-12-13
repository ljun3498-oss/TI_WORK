/* foc_cla_svpwm.c
   使用CLA的完整SVPWM实现 (F2837xD driverlib)
   - CLA: Clarke变换/Park变换, d/q轴PI控制, 反Park变换, SVPWM (扇区/T1/T2/T0计算 + 居中序列)
   - CPU: ADC采样, 编码器读取, 将CLA程序复制到CLA RAM, CLA向量映射, EPWM更新
   注意: 需要在.cmd文件和DriverLib版本中验证链接器符号名称
*/

#include "driverlib.h"
#include "device.h"
#include "cla.h"
#include "memcfg.h"
#include "interrupt.h"
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <string.h>

/* =========================
   配置 - 根据您的平台进行调整
   ========================= */
// 系统时钟频率(Hz)
#define SYSCLK_HZ           200000000.0f
// PWM频率(Hz)
#define PWM_FREQ_HZ         10000.0f
// 计数周期值计算 (用于PWM计数器)
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))

// 死区时间(ns)
#define DEADTIME_NS         1000U
// 死区时间(时钟周期数)
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f))

// 母线电压(V)
#define BUS_VOLTAGE         48.0f
// 控制频率(Hz)
#define CONTROL_HZ          PWM_FREQ_HZ
// 控制周期(s)
#define DT                  (1.0f/CONTROL_HZ)

// d轴电流PI控制器初始比例增益
#define KP_ID_INIT  0.5f
// d轴电流PI控制器初始积分增益
#define KI_ID_INIT  200.0f
// q轴电流PI控制器初始比例增益
#define KP_IQ_INIT  0.5f
// q轴电流PI控制器初始积分增益
#define KI_IQ_INIT  200.0f

// ADC计数值转电流值的比例因子
#define ADC_COUNTS_TO_AMP   (1.0f/100.0f)

/* CLA触发/任务标志 */
#define CLA_TASK1_FLAG CLA_TASKFLAG_1

/* 链接器提供的用于CLA代码复制的符号
   使用TI通用命名约定带下划线前缀
   这些符号在链接命令(.cmd)文件中定义
*/
extern uint32_t Cla1funcsLoadStart;  // CLA函数加载起始地址
extern uint32_t Cla1funcsLoadSize;   // CLA函数加载大小
extern uint32_t Cla1funcsRunStart;   // CLA函数运行起始地址

/* 全局参数 */
static uint16_t TBPRD = TBPRD_VAL;  // PWM计数周期值

/* CPU侧测量变量 */
volatile float Ia_meas=0.0f, Ib_meas=0.0f, Ic_meas=0.0f;  // 三相电流测量值
volatile float Id_ref=0.0f, Iq_ref=0.0f;                  // d/q轴电流参考值

/* CPU侧PI积分器镜像 (用于初始化/安全保护) */
// static float Id_int = 0.0f, Iq_int = 0.0f;  // 由CLA处理，此处未使用
static float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT;      // d轴PI参数
static float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT;      // q轴PI参数

/* CLA共享变量 (放置到CLA数据RAM中) */
#pragma DATA_SECTION(CLA_Ia_meas, "Cla1DataRam");  // 将变量放入CLA数据RAM段
float CLA_Ia_meas;                                    // A相电流测量值
#pragma DATA_SECTION(CLA_Ib_meas, "Cla1DataRam");
float CLA_Ib_meas;                                    // B相电流测量值
#pragma DATA_SECTION(CLA_Ic_meas, "Cla1DataRam");
float CLA_Ic_meas;                                    // C相电流测量值

#pragma DATA_SECTION(CLA_theta, "Cla1DataRam");
float CLA_theta;       // 电角度

#pragma DATA_SECTION(CLA_Id_ref, "Cla1DataRam");
float CLA_Id_ref;      // d轴电流参考值
#pragma DATA_SECTION(CLA_Iq_ref, "Cla1DataRam");
float CLA_Iq_ref;      // q轴电流参考值

#pragma DATA_SECTION(CLA_KP_ID, "Cla1DataRam");
float CLA_KP_ID;       // d轴PI比例增益
#pragma DATA_SECTION(CLA_KI_ID, "Cla1DataRam");
float CLA_KI_ID;       // d轴PI积分增益
#pragma DATA_SECTION(CLA_KP_IQ, "Cla1DataRam");
float CLA_KP_IQ;       // q轴PI比例增益
#pragma DATA_SECTION(CLA_KI_IQ, "Cla1DataRam");
float CLA_KI_IQ;       // q轴PI积分增益

#pragma DATA_SECTION(CLA_DT, "Cla1DataRam");
float CLA_DT;          // 控制周期

#pragma DATA_SECTION(CLA_BUS_V, "Cla1DataRam");
float CLA_BUS_V;       // 母线电压

#pragma DATA_SECTION(CLA_Ta, "Cla1DataRam");
uint16_t CLA_Ta;       // A相PWM比较值
#pragma DATA_SECTION(CLA_Tb, "Cla1DataRam");
uint16_t CLA_Tb;       // B相PWM比较值
#pragma DATA_SECTION(CLA_Tc, "Cla1DataRam");
uint16_t CLA_Tc;       // C相PWM比较值

/* CLA内部工作变量 (如果需要也放在CLA数据RAM中) */
#pragma DATA_SECTION(CLA_v_alpha, "Cla1DataRam");
float CLA_v_alpha;     // α轴电压
#pragma DATA_SECTION(CLA_v_beta, "Cla1DataRam");
float CLA_v_beta;      // β轴电压

// 编码器参数
#define ENCODER_LINES       5000U     // 编码器线数
#define QUADRATURE_MULT     4U        // 正交倍频系数
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT)  // 编码器每转计数脉冲数

/* 函数声明 */
static void InitPeripherals(void);        // 初始化外设
static void InitEPWM(void);               // 初始化EPWM
static void InitADC_Current(void);        // 初始化电流ADC
static void InitCLA_CPU_Copy(void);       // 初始化CLA并复制代码
static void DoMemoryCopyForCLA(void);     // 执行CLA内存复制
static void svpwm_calc(float Valpha, float Vbeta, float Vdc, uint16_t tbprd, uint16_t *Ta, uint16_t *Tb, uint16_t *Tc);  // SVPWM计算

// 中断服务函数声明
__interrupt void adc_isr(void);           // ADC中断服务函数
__interrupt void cla1_done_isr(void);     // CLA任务完成中断服务函数
__interrupt void adc_ppb_isr(void);       // ADC过流保护中断服务函数

/* 简单的限幅函数 */
static inline float clampf(float v, float lo, float hi) {
    if(v>hi) return hi;     // 如果值大于上限，则返回上限
    if(v<lo) return lo;     // 如果值小于下限，则返回下限
    return v;               // 否则返回原值
}

/* =========================
   ADC ISR - CPU: 读取ADC结果，提供CLA输入，触发CLA
   ========================= */
__interrupt void adc_isr(void)
{
    /* 读取ADC结果 (如果不同请替换ADCARESULT_BASE/ SOC编号) */
    uint16_t r0 = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);  // 读取SOC0结果
    uint16_t r1 = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1);  // 读取SOC1结果
    uint16_t r2 = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2);  // 读取SOC2结果

    // 将ADC计数值转换为实际电流值
    Ia_meas = (float)((int32_t)r0) * ADC_COUNTS_TO_AMP;
    Ib_meas = (float)((int32_t)r1) * ADC_COUNTS_TO_AMP;
    Ic_meas = (float)((int32_t)r2) * ADC_COUNTS_TO_AMP;

    /* 复制到CLA共享变量 */
    CLA_Ia_meas = Ia_meas;
    CLA_Ib_meas = Ib_meas;
    CLA_Ic_meas = Ic_meas;

    CLA_Id_ref = Id_ref;
    CLA_Iq_ref = Iq_ref;

    CLA_KP_ID = KP_ID;
    CLA_KI_ID = KI_ID;
    CLA_KP_IQ = KP_IQ;
    CLA_KI_IQ = KI_IQ;

    CLA_DT = DT;
    CLA_BUS_V = BUS_VOLTAGE;

    /* CLA_theta必须由CPU提供 (来自编码器/观测器) */
    /* 示例: CLA_theta = 机械角度 * 极对数; 在其他地方设置 */
    /* 触发CLA任务1 */
    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_1);

    /* 清除ADC中断状态并确认中断 */
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

/* CLA task1完成ISR - CPU读取CLA输出并写入EPWM CMP寄存器 */
__interrupt void cla1_done_isr(void)
{
    /* 读取CLA产生的比较值 */
    uint16_t Ta = CLA_Ta;
    uint16_t Tb = CLA_Tb;
    uint16_t Tc = CLA_Tc;

    /* 写入EPWM (影子更新) */
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, Ta);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, Tb);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, Tc);

    /* 清除CLA标志并确认PIE组中断 */
    CLA_clearTaskFlags(CLA1_BASE, CLA_TASKFLAG_1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP11);
}

/* =========================
   CLA Task1 - 实际控制 + SVPWM (此代码必须放置到CLA程序RAM中)
   用CODE_SECTION标记放入链接器中的Cla1Prog段
   ========================= */
#pragma CODE_SECTION(Cla1Task1, "Cla1Prog");
void Cla1Task1(void)
{
    /* 1) Clarke变换 */
    float ialpha = CLA_Ia_meas;
    float ibeta  = (1.0f/1.7320508075688772f) * (CLA_Ib_meas - CLA_Ic_meas);

    /* 2) Park变换 */
    float c = cosf(CLA_theta);
    float s = sinf(CLA_theta);
    float Id = ialpha*c + ibeta*s;
    float Iq = -ialpha*s + ibeta*c;

    /* 3) 计算误差 */
    float errId = CLA_Id_ref - Id;
    float errIq = CLA_Iq_ref - Iq;

    /* 4) PI控制器 (通过钳位积分器实现简单的抗积分饱和) */
    static float id_int = 0.0f;
    static float iq_int = 0.0f;

    float P = CLA_KP_ID * errId;
    id_int += CLA_KI_ID * errId * CLA_DT;
    id_int = clampf(id_int, -CLA_BUS_V, CLA_BUS_V);
    float vd = P + id_int;

    P = CLA_KP_IQ * errIq;
    iq_int += CLA_KI_IQ * errIq * CLA_DT;
    iq_int = clampf(iq_int, -CLA_BUS_V, CLA_BUS_V);
    float vq = P + iq_int;

    /* 5) 反Park变换 -> αβ坐标系 */
    c = cosf(CLA_theta);
    s = sinf(CLA_theta);
    CLA_v_alpha = vd*c - vq*s;
    CLA_v_beta  = vd*s + vq*c;

    /* 6) SVPWM计算 -> 产生Ta,Tb,Tc (计数值) */
    uint16_t Ta_counts=0, Tb_counts=0, Tc_counts=0;
    svpwm_calc(CLA_v_alpha, CLA_v_beta, CLA_BUS_V, TBPRD, &Ta_counts, &Tb_counts, &Tc_counts);

    CLA_Ta = Ta_counts;
    CLA_Tb = Tb_counts;
    CLA_Tc = Tc_counts;

    /* CLA任务结束 */
}

/* =========================
   SVPWM核心 (CPU或CLA安全代码)
   输入:
     Valpha, Vbeta : αβ电压 (V)
     Vdc : 直流母线电压 (V)
     tbprd : TBPRD (上下计数模式的半周期计数值)
   输出: Ta/Tb/Tc 比较计数值
   ========================= */
static void svpwm_calc(float Valpha, float Vbeta, float Vdc, uint16_t tbprd, uint16_t *Ta, uint16_t *Tb, uint16_t *Tc)
{
    /* 使用Ts归一化 = 1 来归一化到 [0..1] */
    float Vref = sqrtf(Valpha*Valpha + Vbeta*Vbeta);
    if(Vref < 1e-8f) {
        /* 零矢量 */
        float duty = 0.5f;
        uint16_t cmp = (uint16_t)(duty * (float)tbprd + 0.5f);
        *Ta = *Tb = *Tc = cmp;
        return;
    }

    float angle = atan2f(Vbeta, Valpha);
    if(angle < 0) angle += 2.0f*M_PI;

    /* 使用几何方法计算T1, T2 (归一化到Ts=1):
       T1 = k * sin(pi/3 - alpha)
       T2 = k * sin(alpha)
       其中 k = (sqrt(3) * Vref) / Vdc
    */
    const float PI_3 = M_PI / 3.0f;
    float sector_f = angle / PI_3;
    int sector = (int)floorf(sector_f) + 1;
    if(sector < 1) sector = 1;
    if(sector > 6) sector = 6;

    float alpha = angle - (float)(sector-1) * PI_3; /* 0..pi/3 */

    float k = (1.7320508075688772f * Vref) / Vdc; /* sqrt(3) * Vref / Vdc */
    float T1 = k * sinf(PI_3 - alpha);
    float T2 = k * sinf(alpha);
    /* 限制T1/T2避免负值/溢出 */
    if(T1 < 0.0f) T1 = 0.0f;
    if(T2 < 0.0f) T2 = 0.0f;

    float T0 = 1.0f - T1 - T2;
    if(T0 < 0.0f) T0 = 0.0f;

    /* 对于对称序列，根据扇区计算各相的归一化占空比 */
    float dutyA=0.5f, dutyB=0.5f, dutyC=0.5f;
    float halfT0 = T0 * 0.5f;

    switch(sector)
    {
        case 1:
            dutyA = T1 + T2 + halfT0;
            dutyB = T2 + halfT0;
            dutyC = halfT0;
            break;
        case 2:
            dutyA = T1 + halfT0;
            dutyB = T1 + T2 + halfT0;
            dutyC = halfT0;
            break;
        case 3:
            dutyA = halfT0;
            dutyB = T1 + T2 + halfT0;
            dutyC = T2 + halfT0;
            break;
        case 4:
            dutyA = halfT0;
            dutyB = T1 + halfT0;
            dutyC = T1 + T2 + halfT0;
            break;
        case 5:
            dutyA = T2 + halfT0;
            dutyB = halfT0;
            dutyC = T1 + T2 + halfT0;
            break;
        case 6:
            dutyA = T1 + T2 + halfT0;
            dutyB = halfT0;
            dutyC = T1 + halfT0;
            break;
        default:
            dutyA = dutyB = dutyC = 0.5f;
            break;
    }

    /* 占空比现在是以归一化的Ts单位 (0..1)。转换为TBPRD计数值。
       注意: 这里我们遵循代码中使用的相同映射:
         CMP = duty * TBPRD
       这与之前的方法匹配 (CLA_Ta = duty * TBPRD)。
       如果您的EPWM动作限定器期望其他映射，请相应调整。
    */
    float Ta_f = clampf(dutyA, 0.0f, 1.0f);
    float Tb_f = clampf(dutyB, 0.0f, 1.0f);
    float Tc_f = clampf(dutyC, 0.0f, 1.0f);

    *Ta = (uint16_t)(Ta_f * (float)tbprd + 0.5f);
    *Tb = (uint16_t)(Tb_f * (float)tbprd + 0.5f);
    *Tc = (uint16_t)(Tc_f * (float)tbprd + 0.5f);
}

/* =========================
   外设初始化
   ========================= */
static void InitEPWM(void)
{
    /* 在调用此前应使能EPWM时钟 */
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);                    // 设置EPWM1周期
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN);  // 设置为上下计数模式
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1);  // 设置时钟分频
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);  // 计数器为0时置高
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 计数器等于CMPA时置低
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2);  // 设置比较值为周期的一半
    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);     // 设置上升沿死区时间
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);    // 设置下降沿死区时间
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);     // 使能上升沿死区
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_FED, true);     // 使能下降沿死区
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA);   // 设置上升沿死区输入源
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA);  // 设置下降沿死区输入源

    /* EPWM2 */
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

    /* EPWM3 */
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

    /* GPIO映射 (示例引脚) */
    GPIO_setPinConfig(GPIO_0_EPWM1A);  // 配置GPIO0为EPWM1A
    GPIO_setPinConfig(GPIO_1_EPWM1B);  // 配置GPIO1为EPWM1B
    GPIO_setPinConfig(GPIO_2_EPWM2A);  // 配置GPIO2为EPWM2A
    GPIO_setPinConfig(GPIO_3_EPWM2B);  // 配置GPIO3为EPWM2B
    GPIO_setPinConfig(GPIO_4_EPWM3A);  // 配置GPIO4为EPWM3A
    GPIO_setPinConfig(GPIO_5_EPWM3B);  // 配置GPIO5为EPWM3B

    /* 保护区域: 配置OST -> 在触发时将输出置低 */
    EPWM_setTripZoneAction(EPWM1_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM2_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(EPWM3_BASE, EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW);
}

/* ADC & PPB配置: 最小示例 - 适配SOC编号和通道 */
static void InitADC_Current(void)
{
    ADC_disableConverter(ADCA_BASE);                           // 禁用ADC转换器
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_2_0);              // 设置ADC预分频
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);  // 设置ADC为12位单端模式
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);          // 设置中断脉冲模式

    // 配置ADC_SOC转换 (触发源, 通道, 采样窗口)
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN0, 64);
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN1, 64);
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 64);

    // 配置后处理块PPB
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER2, ADC_SOC_NUMBER1);
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER3, ADC_SOC_NUMBER2);

    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2);  // 设置中断源
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1);                      // 使能中断
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);                 // 清除中断状态

    ADC_enableConverter(ADCA_BASE);                                       // 使能ADC转换器
}

/* 顶层CLA初始化 */
static void InitCLA_CPU_Copy(void)
{
    /* 使能CLA时钟 */
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1);
    
    /* 复制CLA代码 */
    DoMemoryCopyForCLA();
    
    /* 初始化CLA内存空间 */
    EALLOW;
    MemCfg_setCLAMemType(MEMCFG_SECT_LS0, MEMCFG_CLA_MEM_PROGRAM);  // 设置LS0段为CLA程序内存
    MemCfg_setCLAMemType(MEMCFG_SECT_LS1, MEMCFG_CLA_MEM_DATA);     // 设置LS1段为CLA数据内存
    EDIS;
    
    /* 映射CLA任务向量:
       注意: 根据您的工具链/链接器，您可能需要以不同方式写入高/低字。
       如果driverlib提供了CLA_mapTaskVector，它通常期望地址的低16位。
       如果失败，请参考TI的示例项目和您的.cmd文件映射。
    */
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_1, (uint16_t)((uint32_t)&Cla1Task1 & 0xFFFFU));

    /* 配置触发: ADCA INT1触发CLA任务1 (如果在您的driverlib中不同请调整) */
    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_ADCA1);

    /* 使能CLA任务1并清除标志 */
    CLA_enableTasks(CLA1_BASE, CLA_TASKFLAG_1);
    CLA_clearTaskFlags(CLA1_BASE, CLA_TASKFLAG_ALL);

    /* 注册中断用于CLA任务完成 */
    Interrupt_register(INT_CLA1_1, cla1_done_isr);
    Interrupt_enable(INT_CLA1_1);
}

/* 内存复制助手 - 将Cla1funcs从加载地址复制到运行地址 */
static void DoMemoryCopyForCLA(void)
{
    /* 将CLA代码从flash复制到RAM */
    memcpy((uint32_t *)&Cla1funcsRunStart,
           (uint32_t *)&Cla1funcsLoadStart,
           (uint32_t)&Cla1funcsLoadSize);
}

/* 顶层外设初始化 */
static void InitPeripherals(void)
{
    Device_init();           // 设备初始化
    Device_initGPIO();       // GPIO初始化
    SysCtl_disableWatchdog(); // 禁用看门狗

    // 使能外设时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);

    InitEPWM();              // 初始化EPWM
    InitADC_Current();       // 初始化电流ADC

    /* ADC中断向量注册 */
    Interrupt_register(INT_ADCA1, adc_isr);
    Interrupt_enable(INT_ADCA1);

    /* PPB触发/中断 (可选) - 如果需要则注册 */
    /* Interrupt_register(INT_ADCA2, adc_ppb_isr); Interrupt_enable(INT_ADCA2); */

    /* CLA设置和复制 */
    InitCLA_CPU_Copy();

    /* 其他: 设置EQEP, 索引, 编码器, 在主循环或中断中更新theta */
}

/* =========================
   主函数
   ========================= */
int main(void)
{
    DINT;                   // 禁用CPU中断
    InitPeripherals();      // 初始化外设

    /* 全局使能 */
    EINT;                   // 使能CPU中断
    ERTM;                   // 使能全局实时中断屏蔽位

    /* 主循环: 从编码器/估算器更新电角度 (CLA_theta)。
       示例伪代码:
         float mech_angle = (float)EQEP_getPosition(EQEP1_BASE) / (float)ENCODER_CPR * 2*PI;
         CLA_theta = fmodf(mech_angle * POLE_PAIRS, 2*PI);
       确保CLA_theta在CLA_data_ram共享区域中。
    */
    for(;;) {
        /* 从CPU更新CLA_theta (示例: 读取eqep并转换) */
        uint32_t pos = EQEP_getPosition(EQEP1_BASE);                     // 获取编码器位置
        float mech = ((float)pos / (float)ENCODER_CPR) * 2.0f * M_PI;    // 计算机械角度
        CLA_theta = fmodf(mech * (float)2 /* 极对数, 设置实际值 */, 2.0f*M_PI);  // 计算电角度

        asm(" NOP");         // 空操作指令
    }
}

/* 可选: ADC PPB触发ISR (硬件过流保护) */
__interrupt void adc_ppb_isr(void)
{
    /* 触发处理: 强制TZ, 禁用ADC, 指示LED */
    EPWM_forceTripZoneEvent(EPWM1_BASE, EPWM_TZ_FORCE_EVENT_OST);
    EPWM_forceTripZoneEvent(EPWM2_BASE, EPWM_TZ_FORCE_EVENT_OST);
    EPWM_forceTripZoneEvent(EPWM3_BASE, EPWM_TZ_FORCE_EVENT_OST);
    ADC_disableConverter(ADCA_BASE);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}
//github测试第二次更新手机
