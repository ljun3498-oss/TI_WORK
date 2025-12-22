/**
 * @file FOC_sensor_test1.C
 * @brief FOC（磁场定向控制）传感器测试程序
 * @details 该文件实现了基于FOC算法的电机控制测试程序，
 *          包含了系统初始化、电气角度校准、FOC控制算法等功能，
 *          用于测试编码器和电流传感器的性能。
 */

#include "driverlib.h"
#include "device.h"
#include "model/foc.h"

// 全局变量定义

/**
 * @brief SVPWM结构体实例
 * @details 包含SVPWM计算所需的参数和结果，用于生成三相PWM信号
 */
SVPWM_Handle svpwm_handle = {
    .Vdc = BUS_VOLTAGE,       // 母线电压，单位：V
    .Va = 0.0f,               // A相电压，单位：V
    .Vb = 0.0f,               // B相电压，单位：V
    .Vc = 0.0f,               // C相电压，单位：V
    .CMPA1 = TBPRD_VAL / 2,   // EPWM1比较器A的值
    .CMPB1 = TBPRD_VAL / 2,   // EPWM1比较器B的值
    .CMPA2 = TBPRD_VAL / 2,   // EPWM2比较器A的值
    .CMPB2 = TBPRD_VAL / 2,   // EPWM2比较器B的值
    .CMPA3 = TBPRD_VAL / 2,   // EPWM3比较器A的值
    .CMPB3 = TBPRD_VAL / 2,   // EPWM3比较器B的值
    .sector = 0               // 当前扇区，0-5
};

// 函数声明
void InitPeripherals(void);
void DoElectricalAlignment(void);
void calibrate_electrical_angle(void);
__interrupt void adc_isr(void);
__interrupt void eqep_index_isr(void);

/**
 * @brief 主函数
 * @details 程序的入口点，负责初始化系统、外设，执行电气角度校准，
 *          并进入主循环。
 * @return 程序执行状态（通常不返回）
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
    Interrupt_register(INT_ADCA1, &adc_isr);
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
 * @brief ADC中断服务程序
 * @details 处理ADC转换完成中断，读取电流值，执行FOC算法，
 *          计算SVPWM占空比，并更新PWM输出。
 */
__interrupt void adc_isr(void)
{
    // 读取电流
    ADC_Read_Current();

    // 读取编码器
    Encoder_Read();

    // 执行FOC算法
    float Valpha, Vbeta;     // αβ坐标系下的电压指令
    float Id_meas, Iq_meas;  // dq坐标系下的测量电流
    float Vd, Vq;            // dq坐标系下的电压指令

    // Clarke变换 - 将三相电流转换为αβ坐标系
    clarke_transform(Ia_meas, Ib_meas, Ic_meas, &Valpha, &Vbeta);

    // Park变换 - 将αβ坐标系下的电流转换为dq坐标系
    park_transform(Valpha, Vbeta, motor_angle_elec_rad, &Id_meas, &Iq_meas);

    // 电流PI控制 - 计算dq坐标系下的电压指令
    Vd = pi_id(Id_ref - Id_meas);  // d轴电流控制
    Vq = pi_iq(Iq_ref - Iq_meas);  // q轴电流控制

    // 逆Park变换 - 将dq坐标系下的电压指令转换为αβ坐标系
    inv_park_transform(Vd, Vq, motor_angle_elec_rad, &Valpha, &Vbeta);

    // SVPWM计算 - 生成PWM比较值
    svpwm_compute(&svpwm_handle, Valpha, Vbeta);

    // 设置PWM占空比（同时设置比较器A和B，用于互补输出）
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA1);
    EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB1);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA2);
    EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB2);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, svpwm_handle.CMPA3);
    EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_B, svpwm_handle.CMPB3);

    // 清除中断标志
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
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

    // 计算电气角度（考虑极对数）
    motor_angle_elec_rad = motor_angle_mech_rad * MOTOR_POLE_PAIRS;
}
