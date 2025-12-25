// FOC (Field Oriented Control)编码器模块源文件
#include "foc_encoder.h"

// 全局变量定义
// 注意：这里只定义foc_encoder.c特有的变量，其他变量已在foc_core.h中声明
int32_t curr_pos_latch = 0;
int32_t last_pos_latch = 0;
int32_t pos_diff = 0;

// 初始化编码器
void Encoder_init(void)
{
    // 重置编码器状态
    encoder_calibrated = false;
}

// 编码器校准
void Encoder_calibrate(void)
{
    // 校准完成标志
    encoder_calibrated = true;
}

// 更新编码器数据
void Encoder_update(void)
{
    int32_t encoder_raw_pos;
    
    encoder_raw_pos = (int32_t)EQEP_getPosition(EQEP1_BASE); // 读取eQEP1的位置计数器值
    
    // 如果已完成校准，计算电机角度和速度
    if (encoder_calibrated)
    {
        // 计算机械角度(弧度)
        motor_angle_mech_rad = ((float)encoder_raw_pos / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI_F;
        // 机械角度计算公式：(当前位置 / 总分辨率) * 2π
        
        // 计算电角度(弧度)
        motor_angle_elec_rad = motor_angle_mech_rad * (float)MOTOR_POLE_PAIRS;
        // 电角度计算公式：机械角度 * 极对数
        
        // 角度归一化到0~2π范围
        while (motor_angle_elec_rad >= 2.0f * M_PI_F) motor_angle_elec_rad -= 2.0f * M_PI_F;
        while (motor_angle_elec_rad < 0.0f) motor_angle_elec_rad += 2.0f * M_PI_F;
        
        // 读取位置锁存值
        curr_pos_latch = EQEP_getPositionLatch(EQEP1_BASE);
        
        // 计算位置变化量（处理溢出）
        pos_diff = curr_pos_latch - last_pos_latch;
        if (pos_diff > (int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
        {
            pos_diff -= (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
        }
        else if (pos_diff < -(int32_t)(ENCODER_LINES * QUADRATURE_MULT / 2))
        {
            pos_diff += (int32_t)(ENCODER_LINES * QUADRATURE_MULT);
        }
        
        // 计算电机速度(弧度/秒)
        motor_speed_rad = ((float)pos_diff / (float)(ENCODER_LINES * QUADRATURE_MULT)) * 2.0f * M_PI_F / DT;
        // 速度计算公式：(位置变化 / 总分辨率) * 2π / 采样时间
        
        // 计算电机转速(转/分钟)
        motor_rpm = motor_speed_rad * 60.0f / (2.0f * M_PI_F);
        
        // 更新上一次位置锁存值
        last_pos_latch = curr_pos_latch;
    }
}

// 检查编码器是否已校准
bool Encoder_isCalibrated(void)
{
    return encoder_calibrated;
}

// 获取电机机械角度(弧度)
float Encoder_getMechAngle(void)
{
    return motor_angle_mech_rad;
}

// 获取电机电角度(弧度)
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
