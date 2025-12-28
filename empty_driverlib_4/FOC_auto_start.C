// FOC (Field Oriented Control)电机控制程序
// 功能：集成了传感器测试、启动序列和上电自启动功能

#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "driverlib.h"
#include "device.h"

// 包含FOC系统头文件
#include "model/foc.h"

// 全局变量定义
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

void InitPeripherals(void);
interrupt void adc_isr(void);
// 主函数
int main(void)
{
    // 1. 初始化系统控制（频率、看门狗）
    Device_init();
    Device_initGPIO();
    
    // 2. 配置PLL，设置系统时钟为200MHz
    // 使用正确的时钟配置常量和参数格式
    SysCtl_setClock(DEVICE_SETCLOCK_CFG);
    
    // 3. 清除所有中断并初始化 PIE 向量表
    DINT;
    Interrupt_initModule();
    IER = 0x0000;
    IFR = 0x0000;
    Interrupt_initVectorTable();
    
    // 直接设置闭环运行的电流参考值
    Id_ref = 0.0f; // 无弱磁控制，专注于转矩控制
    Iq_ref = 5.0f; // 与模拟电流幅值匹配，减少电流误差

    
    // 4. 初始化外设
    InitPeripherals();
        
    // 7. 使能全局中断
    EINT;
    ERTM;
    

    // 10. 主循环
    while(1)
    {
        // 模拟编码器角度变化：每1000微秒转动3°（π/60弧度）
        float angle_increment = M_PI_F / 60.0f; // 3°对应的弧度值，降低转速
        motor_angle_mech_rad += angle_increment;
        if (motor_angle_mech_rad >= 2.0f * M_PI_F) {
            motor_angle_mech_rad -= 2.0f * M_PI_F;
        }
        
        // 更新电机电角度
        motor_angle_elec_rad = motor_angle_mech_rad * MOTOR_POLE_PAIRS;
        if (motor_angle_elec_rad >= 2.0f * M_PI_F) {
            motor_angle_elec_rad -= 2.0f * M_PI_F;
        }
        
        // 模拟三相电流变化值（基于电机角度的正弦波）
        // 假设电流幅值为3.0，三相电流相位差为120°
        float current_amplitude = 5.0f;
        Ia_meas = current_amplitude * sinf(motor_angle_elec_rad);
        Ib_meas = current_amplitude * sinf(motor_angle_elec_rad - 2.0f * M_PI_F / 3.0f);
        Ic_meas = current_amplitude * sinf(motor_angle_elec_rad + 2.0f * M_PI_F / 3.0f);
        
        // 添加延时以控制电机转动速度（每1000微秒转动一次）
        DEVICE_DELAY_US(1000); // 1秒延时，控制转动速度
        
 
    }
}

// 电气角度校准 - 执行电机的电气角度校准过程，确保编码器的机械角度与电机的电气角度对应正确

// 初始化所有外设 - 初始化EPWM、ADC、编码器等外设，并注册中断
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

// ADC中断服务程序 - 处理ADC转换完成中断，读取电流值，执行FOC算法，计算SVPWM占空比，并更新PWM输出
interrupt void adc_isr(void)
{  
        // 处理电流并执行FOC算法
        // 1. Clarke变换 - 将三相电流转换为αβ坐标系
        float alpha, beta;
        clarke_transform(Ia_meas, Ib_meas, Ic_meas, &alpha, &beta);
        
        // 2. Park变换 - 将αβ坐标系电流转换为dq坐标系
        float d, q;
        park_transform(alpha, beta, motor_angle_elec_rad, &d, &q);
        
        // 3. D/Q轴电流PI控制
        float vd = pi_id(Id_ref - d);  // D轴电流误差PI控制
        float vq = pi_iq(Iq_ref - q);  // Q轴电流误差PI控制
        
        // 4. 逆Park变换 - 将dq坐标系电压指令转换为αβ坐标系
        float valpha, vbeta;
        inv_park_transform(vd, vq, motor_angle_elec_rad, &valpha, &vbeta);
        
        // 5. SVPWM计算 - 计算PWM占空比
        svpwm_compute(&svpwm_handle, valpha, vbeta);
        
        // 6. 设置PWM比较值（直接使用SVPWM计算的比较值）
        EPWM_SetCompareValues(
            svpwm_handle.CMPA1, 
            svpwm_handle.CMPA2,
            svpwm_handle.CMPA3
        );
    
    
    // 清除ADC中断标志
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

















