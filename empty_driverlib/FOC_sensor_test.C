#include "driverlib.h"                                  // 包含TI DriverLib库头文件
#include "device.h"                                     // 包含设备特定的头文件
#include <stdint.h>                                     // 包含标准整数类型定义
#include <stdbool.h>                                    // 包含布尔类型定义
#include <math.h>                                       // 包含数学函数库
#include <string.h>                                     // 包含字符串处理函数
#include <stdlib.h>                                     // 包含标准库函数
#include <stdio.h>                                      // 包含标准输入输出函数

/* 链接器提供的ramfunc段符号 */                         // 注释说明：此处用于声明链接器定义的符号

/* =========================
   系统/硬件参数
   ========================= */
#define SYSCLK_HZ           200000000.0f            // 系统时钟频率：200MHz
#define PWM_FREQ_HZ         10000.0f                // PWM频率：10kHz
#define TBPRD_VAL           ((uint16_t)(SYSCLK_HZ / (2.0f * PWM_FREQ_HZ) + 0.5f))  // 计算PWM周期值，用于ePWM模块配置

#define DEADTIME_NS         1000U                   // 死区时间：1000纳秒（1微秒），可根据需要调整
#define DEADTIME_TICKS      ((uint16_t)((DEADTIME_NS * 1e-9f) * SYSCLK_HZ + 0.5f)) // 死区时间计数值，根据系统时钟计算得出
#define DEADTIME_COMP_VOLTAGE 0.0f                  // 死区补偿电压：0.0V，表示不进行死区补偿

/* 编码器/电机参数 */
#define ENCODER_LINES       5000U                   // 编码器线数：5000线
#define QUADRATURE_MULT     4U                      // 正交倍频：4倍频
#define ENCODER_CPR         (ENCODER_LINES * QUADRATURE_MULT) // 每转计数：编码器线数乘以倍频数
#define MOTOR_POLE_PAIRS    2U                      // 电机极对数：2对极

/* ADC通道定义 */
#define ADC_PHASE_A_CHANNEL ADC_CH_ADCIN0           // A相电流ADC通道：ADCIN0
#define ADC_PHASE_B_CHANNEL ADC_CH_ADCIN1           // B相电流ADC通道：ADCIN1
#define ADC_PHASE_C_CHANNEL ADC_CH_ADCIN2           // C相电流ADC通道：ADCIN2

/* 安全参数 */
#define BUS_VOLTAGE         48.0f                   // 母线电压：48V
#define MAX_PHASE_CURRENT_A 50.0f                   // 最大相电流：50A
#define I_OVERCURRENT_TRIP  (MAX_PHASE_CURRENT_A * 1.05f) // 过流保护阈值：最大相电流的1.05倍

/* 控制环路参数 */
#define CONTROL_HZ          PWM_FREQ_HZ             // 控制频率：与PWM频率相同，10kHz
#define DT                  (1.0f/CONTROL_HZ)       // 控制周期：控制频率的倒数，0.0001秒

#define KP_ID_INIT  0.5f                            // D轴电流环比例增益初始值：0.5
#define KI_ID_INIT  200.0f                          // D轴电流环积分增益初始值：200.0
#define KP_IQ_INIT  0.5f                            // Q轴电流环比例增益初始值：0.5
#define KI_IQ_INIT  200.0f                          // Q轴电流环积分增益初始值：200.0

/* ADC到电流的转换系数 */
/* CC6903-20A传感器特性:
   - 测量范围: -20A~20A
   - 供电电压: 3.3V
   - 灵敏度: 66mV/A
   - 静态输出电压: 1.65V (50% VCC)
   - ADC参考电压: 3.3V
   - ADC分辨率: 12位 (4096个计数)
   - 每个计数代表的电压: 3.3V / 4096 = 0.805664mV
   - 每个计数代表的电流: 0.805664mV / 66mV/A = 0.0122A
*/
#define ADC_COUNTS_TO_AMP   0.0122f                 // ADC计数到安培的转换系数：根据CC6903-20A传感器特性计算得出
#define ADC_COUNTS_OVERCURRENT  ((uint16_t)((MAX_PHASE_CURRENT_A * 1.05f) / ADC_COUNTS_TO_AMP)) // 过流保护计数值：根据过流保护阈值计算得出
#define USE_SIMULATED_ADC 0                         // 0=使用真实ADC，1=使用模拟ADC
/* 全局变量 */
static uint16_t TBPRD = TBPRD_VAL;                  // PWM周期值：存储计算得到的PWM周期值
volatile int32_t encoder_raw_pos = 0;               // 编码器原始位置：存储编码器的原始位置值
volatile bool index_detected = false;               // 索引信号检测标志：指示是否检测到编码器索引信号
volatile bool encoder_calibrated = false;           // 编码器校准标志：指示编码器是否已完成校准
volatile float motor_angle_mech_rad = 0.0f;         // 电机机械角度(弧度)：存储电机转子的机械角度值
volatile float motor_angle_elec_rad = 0.0f;         // 电机电角度(弧度)：存储电机转子的电角度值
volatile float motor_rpm = 0.0f;                    // 电机转速：存储电机的转速值

volatile float Ia_meas = 0.0f, Ib_meas = 0.0f, Ic_meas = 0.0f; // 三相电流测量值：存储A、B、C三相电流的测量值

volatile uint16_t adc_values[3] = {0, 0, 0};       // 模拟ADC值数组：用于存储三相电流的ADC采样值(U,V,W相)

volatile float Id_ref = 0.0f;                       // D轴电流参考值：D轴电流的目标值，默认为0以保证安全
volatile float Iq_ref = 0.0f;                       // Q轴电流参考值：Q轴电流的目标值，默认为0以保证安全



volatile float simulated_elec_angle = 0.0f;
const float ANGLE_SPEED_RAD_PER_SEC = 10.0f; // 模拟转速 10 rad/s
#define ANGLE_INCREMENT (ANGLE_SPEED_RAD_PER_SEC * DT) // 每周期角度增量






static float Id_int = 0.0f, Iq_int = 0.0f;          // D/Q轴积分项：PI控制器的积分部分
static float KP_ID = KP_ID_INIT, KI_ID = KI_ID_INIT; // D轴PI参数：比例和积分增益值
static float KP_IQ = KP_IQ_INIT, KI_IQ = KI_IQ_INIT; // Q轴PI参数：比例和积分增益值

volatile bool overcurrent_fault = false;            // 过流故障标志：指示是否发生过流故障

/* 函数声明 */
static void InitPeripherals(void);                  // 外设初始化函数声明
static void InitEPWM_SVPWM(void);                   // PWM初始化函数声明
static void InitADC_Current(void);                  // 电流ADC初始化函数声明

static void InitEQEP1(void);                        // 编码器初始化函数声明
static void DoElectricalAlignment(void);            // 电机电气角度校准函数声明
static void svpwm_compute(float v_alpha, float v_beta, float Vdc, uint16_t *Ta, uint16_t *Tb, uint16_t *Tc); // SVPWM计算函数声明

// CPU定时器0中断服务程序声明
__interrupt void cpu_timer0_isr(void);

// 模拟ADC值获取函数声明
uint16_t get_simulated_adc_value(uint8_t channel);

// 模拟ADC值更新函数声明
void update_simulated_adc_values(void);

/**
 * @brief 限制浮点数值在指定范围内
 * 
 * 该函数用于实现浮点数的饱和运算，确保输出值不会超出指定的上下限。
 * 在电机控制中常用于限制PI控制器积分项、电压指令等物理量，防止积分饱和。
 * 
 * @param v 输入值
 * @param lo 输出值的下限
 * @param hi 输出值的上限
 * @return 返回限制后的值，保证 lo <= return_value <= hi
 * 
 * @note 该函数被声明为inline以提高执行效率，适用于频繁调用的控制循环中
 */
static inline float clampf_val(float v, float lo, float hi)
{
    if(v > hi) return hi;
    if(v < lo) return lo;
    return v;
}

/**
 * @brief 执行Clarke变换（三相静止坐标系到两相静止坐标系）
 * 
 * 将三相定子电流(ia, ib, ic)转换为两相正交坐标系下的分量(α, β)。
 * 假设三相系统平衡且无零序分量(ia + ib + ic = 0)，因此可仅用两相电流计算。
 * 此变换是FOC算法的第一步，为后续的Park变换做准备。
 * 
 * @param ia A相电流测量值
 * @param ib B相电流测量值
 * @param ic C相电流测量值（在计算中使用，但因假设ic = -ia-ib而被优化）
 * @param alpha 指向α轴分量的指针
 * @param beta  指向β轴分量的指针
 * 
 * @note 变换矩阵系数: √(2/3) ≈ 0.8165, 但常用简化形式。此处采用标准变换:
 *       alpha = ia
 *       beta  = (1/√3) * (ib - ic) = (ib - ic) / 1.7320508075688772
 */
static void clarke_transform(float ia, float ib, float ic, float *alpha, float *beta)
{
    (void)ic; // 利用编译器特性避免"未使用参数"警告，实际计算中通过ib-ic体现ic的影响
    *alpha = ia;
    *beta  = (1.0f/1.7320508075688772f) * (ib - ic);
}

/**
 * @brief 执行Park变换（两相静止坐标系到两相旋转坐标系）
 * 
 * 将静止坐标系(α-β)下的电流分量转换为随转子同步旋转的坐标系(d-q)下的分量。
 * 这是FOC的核心变换，使得交流量变为直流量，便于使用PI控制器进行调节。
 * 变换角度theta为转子电角度，需由编码器实时提供。
 * 
 * @param alpha α轴电流分量
 * @param beta  β轴电流分量
 * @param theta 转子电角度(弧度)，必须是最新采样的位置信息
 * @param d     指向d轴电流分量的指针
 * @param q     指向q轴电流分量的指针
 * 
 * @note 变换公式:
 *       Id = Iα*cosθ + Iβ*sinθ
 *       Iq = -Iα*sinθ + Iβ*cosθ
 *       其中d轴定向于转子磁通方向，q轴超前d轴90度
 */
static void park_transform(float alpha, float beta, float theta, float *d, float *q)
{
    float c = cosf(theta);
    float s = sinf(theta);
    *d = alpha*c + beta*s;
    *q = -alpha*s + beta*c;
}

/**
 * @brief 执行反Park变换（两相旋转坐标系到两相静止坐标系）
 * 
 * 将PI控制器输出的d-q轴电压指令转换回静止坐标系(α-β)下的电压分量。
 * 这是Park变换的逆过程，为后续的空间矢量PWM(SVPWM)生成做准备。
 * 使用与Park变换相同的转子电角度，保证坐标系变换的一致性。
 * 
 * @param vd      d轴电压指令
 * @param vq      q轴电压指令  
 * @param theta   转子电角度(弧度)
 * @param alpha   指向α轴电压分量的指针
 * @param beta    指向β轴电压分量的指针
 * 
 * @note 变换公式(逆变换):
 *       Vα = Vd*cosθ - Vq*sinθ
 *       Vβ = Vd*sinθ + Vq*cosθ
 *       注意与Park变换的区别在于sin项的符号
 */
static void inv_park_transform(float vd, float vq, float theta, float *alpha, float *beta)
{
    float c = cosf(theta);
    float s = sinf(theta);
    *alpha = vd*c - vq*s;
    *beta  = vd*s + vq*c;
}

/**
 * @brief D轴电流PI控制器
 * 
 * 实现D轴电流环的PI控制算法。D轴通常控制磁场分量，在表贴式永磁同步电机中
 * 通常设定Id_ref=0以实现单位功率因数控制或弱磁控制。
 * 控制器包含比例项和积分项，并对积分项进行抗饱和处理。
 * 
 * @param err D轴电流误差 = Id_reference - Id_measured
 * @return 计算得到的D轴电压指令
 * 
 * @note 控制器输出代表所需的电压矢量在d轴上的投影
 *       积分项被限制在[-Vbus, Vbus]范围内，防止积分饱和导致的响应延迟
 */
static float pi_id(float err)
{
    float P = KP_ID * err;
    Id_int += KI_ID * err * DT;
    Id_int = clampf_val(Id_int, -BUS_VOLTAGE, BUS_VOLTAGE);
    return P + Id_int;
}

/**
 * @brief Q轴电流PI控制器
 * 
 * 实现Q轴电流环的PI控制算法。Q轴控制转矩分量，通过调节Iq_ref可以精确控制
 * 电机输出转矩。这是实现高性能转矩控制的关键环节。
 * 与D轴控制器类似，包含比例、积分项及抗饱和保护。
 * 
 * @param err Q轴电流误差 = Iq_reference - Iq_measured
 * @return 计算得到的Q轴电压指令
 * 
 * @note 控制器输出代表所需的电压矢量在q轴上的投影
 *       积分项同样被限制在[-Vbus, Vbus]范围内，确保系统稳定性
 */
static float pi_iq(float err)
{
    float P = KP_IQ * err;
    Iq_int += KI_IQ * err * DT;
    Iq_int = clampf_val(Iq_int, -BUS_VOLTAGE, BUS_VOLTAGE);
    return P + Iq_int;
}

/**
 * @brief 空间矢量PWM(SVPWM)算法实现
 * 
 * 将两相静止坐标系(α-β)下的电压指令转换为三相逆变器的PWM占空比信号。
 * SVPWM通过基本电压矢量的组合来逼近参考电压矢量，相比传统的SPWM具有
 * 更高的直流母线电压利用率(提高约15%)和更低的谐波失真。
 * 
 * @param v_alpha α轴电压指令
 * @param v_beta  β轴电压指令
 * @param Vdc     直流母线电压
 * @param Ta      指向A相PWM比较值的指针
 * @param Tb      指向B相PWM比较值的指针
 * @param Tc      指向C相PWM比较值的指针
 * 
 * @note 算法步骤:
 *       1. 将α-β电压转换为三相相电压(Va, Vb, Vc)
 *       2. 计算各相占空比 = (相电压/Vdc) + 0.5
 *       3. 对占空比进行边界限制[0,1]
 *       4. 转换为PWM计数器比较值
 *       本实现采用简化算法，未进行扇区判断和矢量作用时间计算
 */
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

/* =========================
   中断服务程序
   ========================= */

/* ADC转换完成中断服务程序 (ADCA INT1映射到SOC2) */
__interrupt void adc_isr(void)
{

    // 读取ADC转换结果
    uint16_t rawA = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0); // 读取A相电流ADC结果
    uint16_t rawB = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1); // 读取B相电流ADC结果
    uint16_t rawC = ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER2); // 读取C相电流ADC结果

    // 将ADC结果转换为实际电流值
    // CC6903-20A传感器输出电压与电流的关系:
    // 电流(A) = (ADC电压 - 1.65V) / 66mV/A
    // ADC计数值与电压的关系:
    // 电压(V) = ADC计数值 * (3.3V / 4096)
    // 综合公式:
    // 电流(A) = (ADC计数值 * (3.3V / 4096) - 1.65V) / 0.066V/A
    //         = (ADC计数值 * 0.000805664V - 1.65V) / 0.066V/A
    //         = ADC计数值 * 0.0122 - 25A
    Ia_meas = (float)((int32_t)rawA) * ADC_COUNTS_TO_AMP - 25.0f; // A相电流测量值计算
    Ib_meas = (float)((int32_t)rawB) * ADC_COUNTS_TO_AMP - 25.0f; // B相电流测量值计算
    Ic_meas = (float)((int32_t)rawC) * ADC_COUNTS_TO_AMP - 25.0f; // C相电流测量值计算

    // 软件过流保护
    if(fabsf(Ia_meas) > I_OVERCURRENT_TRIP || fabsf(Ib_meas) > I_OVERCURRENT_TRIP || fabsf(Ic_meas) > I_OVERCURRENT_TRIP)
    {
        // 如果任意一相电流超过阈值，则触发过流保护
        overcurrent_fault = true;                       // 设置过流故障标志
        EPWM_forceTripZoneEvent(EPWM1_BASE, EPWM_TZ_FORCE_EVENT_OST); // 强制EPWM1触发事件
        EPWM_forceTripZoneEvent(EPWM2_BASE, EPWM_TZ_FORCE_EVENT_OST); // 强制EPWM2触发事件
        EPWM_forceTripZoneEvent(EPWM3_BASE, EPWM_TZ_FORCE_EVENT_OST); // 强制EPWM3触发事件
    }

    // Clarke变换：将三相电流转换为α-β坐标系
    float ialpha, ibeta;
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &ialpha, &ibeta);

    // 读取编码器位置并计算角度
    uint32_t pos = EQEP_getPosition(EQEP1_BASE);    // 获取编码器位置
    encoder_raw_pos = pos;                          // 保存编码器原始位置
    motor_angle_mech_rad = ((float)pos / (float)ENCODER_CPR) * 2.0f * M_PI; // 计算电机机械角度(弧度)
    float theta = motor_angle_elec_rad; // 明确角度变量
    

    // Park变换：将α-β坐标系电流转换为d-q坐标系
    float Id, Iq;
    park_transform(ialpha, ibeta, motor_angle_elec_rad, &Id, &Iq);

    // 计算电流误差
    float errId = Id_ref - Id;                      // D轴电流误差计算
    float errIq = Iq_ref - Iq;                      // Q轴电流误差计算

    // PI控制器计算电压指令
    float vd = pi_id(errId);                        // D轴电压指令计算
    float vq = pi_iq(errIq);                        // Q轴电压指令计算

    // 死区补偿(无补偿)
    vd += DEADTIME_COMP_VOLTAGE;                    // D轴电压增加死区补偿
    vq += DEADTIME_COMP_VOLTAGE;                    // Q轴电压增加死区补偿

    // 反Park变换：将d-q坐标系电压转换为α-β坐标系
    float v_alpha, v_beta;
    inv_park_transform(vd, vq, motor_angle_elec_rad, &v_alpha, &v_beta);

    // SVPWM计算：将α-β电压转换为三相PWM比较值
    uint16_t Ta, Tb, Tc;
    svpwm_compute(v_alpha, v_beta, BUS_VOLTAGE, &Ta, &Tb, &Tc);

    // 写入CMPA寄存器(影子)
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, Ta); // 设置EPWM1比较值
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, Tb); // 设置EPWM2比较值
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, Tc); // 设置EPWM3比较值

    // 清除ADC中断
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1); // 清除ADCA中断状态
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);       // 清除中断确认组1
}

/* eQEP索引中断 */
__interrupt void eqep_index_isr(void)
{
    // 编码器索引脉冲中断处理
    if(EQEP_getInterruptStatus(EQEP1_BASE) & EQEP_INT_INDEX_EVNT_LATCH)
    {
        // 如果检测到索引事件锁存
        index_detected = true;                          // 设置索引信号检测标志
        encoder_calibrated = true;                      // 设置编码器校准标志
        EQEP_setPosition(EQEP1_BASE, 0);                // 将编码器位置清零
        EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH); // 清除索引事件中断状态
    }
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP5);       // 清除中断确认组5
}

/* =========================
   初始化函数
   ========================= */

static void InitEPWM_SVPWM(void)
{
    // EPWM1配置
    EPWM_setTimeBasePeriod(EPWM1_BASE, TBPRD);          // 设置EPWM1周期值
    EPWM_setTimeBaseCounterMode(EPWM1_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置EPWM1计数模式为上下计数
    EPWM_setClockPrescaler(EPWM1_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1); // 设置EPWM1时钟预分频器
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 设置动作限定器：计数器为0时EPWM1A输出高电平
    EPWM_setActionQualifierAction(EPWM1_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 设置动作限定器：计数器等于CMPA值时EPWM1A输出低电平
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2); // 设置EPWM1比较值为周期值的一半

    EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO_OR_PERIOD); // 设置ADC触发源：计数器为0或周期值时触发
    EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1); // 设置ADC触发事件预分频为1
    EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);              // 使能ADC触发

    EPWM_setRisingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);   // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM1_BASE, DEADTIME_TICKS);  // 设置下降沿延迟计数
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_RED, true);   // 使能上升沿死区延迟模式
    EPWM_setDeadBandDelayMode(EPWM1_BASE, EPWM_DB_FED, true);   // 使能下降沿死区延迟模式
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA); // 设置上升沿死区延迟输入源
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM1_BASE, EPWM_DB_INPUT_EPWMA); // 设置下降沿死区延迟输入源

    // EPWM2配置
    EPWM_setTimeBasePeriod(EPWM2_BASE, TBPRD);          // 设置EPWM2周期值
    EPWM_setTimeBaseCounterMode(EPWM2_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置EPWM2计数模式为上下计数
    EPWM_setClockPrescaler(EPWM2_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1); // 设置EPWM2时钟预分频器
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 设置动作限定器：计数器为0时EPWM2A输出高电平
    EPWM_setActionQualifierAction(EPWM2_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 设置动作限定器：计数器等于CMPA值时EPWM2A输出低电平
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2); // 设置EPWM2比较值为周期值的一半

    EPWM_setRisingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);   // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM2_BASE, DEADTIME_TICKS);  // 设置下降沿延迟计数
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_RED, true);   // 使能上升沿死区延迟模式
    EPWM_setDeadBandDelayMode(EPWM2_BASE, EPWM_DB_FED, true);   // 使能下降沿死区延迟模式
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM2_BASE, EPWM_DB_INPUT_EPWMA); // 设置上升沿死区延迟输入源
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM2_BASE, EPWM_DB_INPUT_EPWMA); // 设置下降沿死区延迟输入源

    // EPWM3配置
    EPWM_setTimeBasePeriod(EPWM3_BASE, TBPRD);          // 设置EPWM3周期值
    EPWM_setTimeBaseCounterMode(EPWM3_BASE, EPWM_COUNTER_MODE_UP_DOWN); // 设置EPWM3计数模式为上下计数
    EPWM_setClockPrescaler(EPWM3_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1); // 设置EPWM3时钟预分频器
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO); // 设置动作限定器：计数器为0时EPWM3A输出高电平
    EPWM_setActionQualifierAction(EPWM3_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA); // 设置动作限定器：计数器等于CMPA值时EPWM3A输出低电平
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, TBPRD/2); // 设置EPWM3比较值为周期值的一半

    EPWM_setRisingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);   // 设置上升沿延迟计数
    EPWM_setFallingEdgeDelayCount(EPWM3_BASE, DEADTIME_TICKS);  // 设置下降沿延迟计数
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_RED, true);   // 使能上升沿死区延迟模式
    EPWM_setDeadBandDelayMode(EPWM3_BASE, EPWM_DB_FED, true);   // 使能下降沿死区延迟模式
    EPWM_setRisingEdgeDeadBandDelayInput(EPWM3_BASE, EPWM_DB_INPUT_EPWMA); // 设置上升沿死区延迟输入源
    EPWM_setFallingEdgeDeadBandDelayInput(EPWM3_BASE, EPWM_DB_INPUT_EPWMA); // 设置下降沿死区延迟输入源

    // GPIO映射
    GPIO_setPinConfig(GPIO_0_EPWM1A);                   // 配置GPIO0为EPWM1A输出
    GPIO_setPinConfig(GPIO_1_EPWM1B);                   // 配置GPIO1为EPWM1B输出
    GPIO_setPinConfig(GPIO_2_EPWM2A);                   // 配置GPIO2为EPWM2A输出
    GPIO_setPinConfig(GPIO_3_EPWM2B);                   // 配置GPIO3为EPWM2B输出
    GPIO_setPinConfig(GPIO_4_EPWM3A);                   // 配置GPIO4为EPWM3A输出
    GPIO_setPinConfig(GPIO_5_EPWM3B);                   // 配置GPIO5为EPWM3B输出


}

/* ADC初始化 */
static void InitADC_Current(void)
{
    // ADC模块初始化配置
    ADC_disableConverter(ADCA_BASE);                    // 禁用ADCA转换器
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_2_0);       // 设置ADCA预分频器
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED); // 设置ADCA为12位单端模式
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV); // 设置ADCA中断脉冲模式为转换结束时触发

    // 配置ADC采样通道
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_A_CHANNEL, 64); // 配置SOC0：由EPWM1_SOCA触发，采样A相电流通道，采样窗口64个时钟周期
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_B_CHANNEL, 64); // 配置SOC1：由EPWM1_SOCA触发，采样B相电流通道，采样窗口64个时钟周期
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCA, ADC_PHASE_C_CHANNEL, 64); // 配置SOC2：由EPWM1_SOCA触发，采样C相电流通道，采样窗口64个时钟周期



    // 配置ADC中断
    ADC_setInterruptSource(ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER2); // 设置ADCA中断1源为SOC2
    ADC_enableInterrupt(ADCA_BASE, ADC_INT_NUMBER1);                    // 使能ADCA中断1
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);               // 清除ADCA中断1状态

    ADC_enableConverter(ADCA_BASE);                                     // 使能ADCA转换器
}

/* eQEP初始化 */
static void InitEQEP1(void)
{
    // 配置eQEP引脚
    GPIO_setPinConfig(GPIO_10_EQEP1A);                  // 配置GPIO10为EQEP1A输入
    GPIO_setPinConfig(GPIO_11_EQEP1B);                  // 配置GPIO11为EQEP1B输入
    GPIO_setPinConfig(GPIO_13_EQEP1I);                  // 配置GPIO13为EQEP1I输入
    GPIO_setDirectionMode(10, GPIO_DIR_MODE_IN);        // 设置GPIO10为输入模式
    GPIO_setDirectionMode(11, GPIO_DIR_MODE_IN);        // 设置GPIO11为输入模式
    GPIO_setDirectionMode(13, GPIO_DIR_MODE_IN);        // 设置GPIO13为输入模式

    // 配置eQEP解码器
    EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP | EQEP_CONFIG_IGATE_DISABLE)); // 设置解码器配置：正交模式、不交换、禁用门控
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, ENCODER_CPR - 1); // 设置位置计数器配置：最大位置时复位，最大位置值为编码器每转计数减1
    EQEP_setPositionInitMode(EQEP1_BASE, EQEP_INIT_RISING_INDEX); // 设置位置初始化模式：上升沿索引信号初始化

    uint32_t unit_period = (uint32_t)((float)SYSCLK_HZ / 1000.0f) - 1; // 计算单元定时器周期值：1ms锁存
    EQEP_loadUnitTimer(EQEP1_BASE, unit_period);        // 加载单元定时器
    EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT); // 设置锁存模式：单元定时器超时时锁存
    EQEP_enableModule(EQEP1_BASE);                      // 使能eQEP1模块

    EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH); // 使能索引事件锁存中断
    Interrupt_register(INT_EQEP1, eqep_index_isr);      // 注册eQEP1中断服务程序
    Interrupt_enable(INT_EQEP1);                        // 使能eQEP1中断
}

/* 电气角度校准: 注入Id电流使转子对齐到已知电角度 */
/* 该函数保持Id_ref非零并强制开环PWM实现对齐 */
static void DoElectricalAlignment(void)
{
    const float ALIGN_ID = 0.5f;                        // 校准电流(A)，可调整
    const uint32_t ALIGN_MS = 500;                      // 校准时间500ms

    // 临时设置参考值
    float prevId = Id_ref;                              // 保存之前的D轴电流参考值
    float prevIq = Iq_ref;                              // 保存之前的Q轴电流参考值
    Id_ref = ALIGN_ID;                                  // 设置D轴电流参考值为校准电流
    Iq_ref = 0.0f;                                      // 设置Q轴电流参考值为0

    // 等待ADC ISR/PI控制器驱动Id达到ALIGN_ID
    uint32_t loops = (ALIGN_MS * 1000U);                // 计算近似延时循环次数
    uint32_t i;
    for(i=0;i<loops;i++) asm(" NOP");                   // 空循环延时

    // 校准完成后读取编码器位置并设置零位
    EQEP_setPosition(EQEP1_BASE, 0);                    // 将编码器位置清零
    encoder_calibrated = true;                          // 设置编码器校准标志

    // 恢复参考值
    Id_ref = prevId;                                    // 恢复之前的D轴电流参考值
    Iq_ref = prevIq;                                    // 恢复之前的Q轴电流参考值
}

/* 外设综合初始化 */
static void InitPeripherals(void)
{
    // 初始化设备和GPIO
    Device_init();                                      // 设备初始化
    Device_initGPIO();                                  // GPIO初始化
    SysCtl_disableWatchdog();                           // 禁用看门狗定时器

    // 使能外设时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM1);   // 使能EPWM1时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM2);   // 使能EPWM2时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EPWM3);   // 使能EPWM3时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_EQEP1);   // 使能eQEP1时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_ADCA);    // 使能ADCA时钟

    // 初始化各个外设模块
    InitEPWM_SVPWM();                                   // 初始化EPWM模块
    InitADC_Current();                                  // 初始化ADC电流采样
    InitEQEP1();                                        // 初始化eQEP编码器

    // 注册ADC中断映射到ADCA1
    Interrupt_register(INT_ADCA1, adc_isr);             // 注册ADCA1中断服务程序
    Interrupt_enable(INT_ADCA1);                        // 使能ADCA1中断
}




/* 在InitPeripherals()函数中添加定时器初始化 */
int main(void)
{
    DINT;                                               // 禁用CPU中断

    InitPeripherals();                                  // 初始化外设
    DoElectricalAlignment();                            // 执行电机电气角度校准

    EINT;                                               // 使能CPU中断
    ERTM;                                               // 使能全局实时中断屏蔽

        Iq_ref = 0.5f;  
        Id_ref = 0.3f; 
   while (1)
    {
        // 软件延时，降低CPU负载
        uint32_t delay_count;
        for(delay_count = 0; delay_count < 100000; delay_count++)
        {
            __asm(" NOP");
        }
         }
    }
