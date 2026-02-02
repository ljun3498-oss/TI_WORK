//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

//
// FILE:    dual_axis_servo_ctrl_cpu1.c
// TITLE:   Control algorithms for CPU1 - Speed and Position Loops
//

#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include "dual_axis_servo_drive_ipc.h"

// External control variables
extern IPC_DataFromCPU1_t *ipcDataFromCPU1;
extern IPC_DataToCPU1_t   *ipcDataToCPU1;

//
// ramper() - Slew programmable ramper
//
float32_t ramper(float32_t in, float32_t out, float32_t rampDelta)
{
    float32_t err;

    err = in - out;

    if(err > rampDelta)
    {
        return(out + rampDelta);
    }
    else if(err < -rampDelta)
    {
        return(out - rampDelta);
    }
    else
    {
        return(in);
    }
}

//
// ramper_sine() - Generates sinusoidal ramp output (S-curve acceleration)
//  使用正弦函数实现平滑的S曲线加减速
//
float32_t ramper_sine(float32_t in, float32_t out, float32_t rampDelta)
{
    float32_t err;
    float32_t rampStep;
    
    err = in - out;
    
    // 使用正弦函数实现平滑加减速（S曲线）
    // rampStep从0平滑增加到rampDelta，再平滑减小到0
    if(err > rampDelta)
    {
        // 加速阶段：使用正弦曲线平滑启动
        rampStep = rampDelta * (1.0f - cosf(3.14159f * out / (in + 0.001f))) * 0.5f;
        return(out + rampStep);
    }
    else if(err < -rampDelta)
    {
        // 减速阶段：使用正弦曲线平滑停止
        rampStep = rampDelta * (1.0f - cosf(3.14159f * out / (in - 0.001f))) * 0.5f;
        return(out - rampStep);
    }
    else
    {
        return(in);
    }
}

// 注意：上面的ramper_sine实现是一个简化版本。
// 对于更复杂的S曲线规划，建议使用motion_control.c中的TrapezoidalProfile
// 该模块支持完整的七段S曲线规划（jerk受限）

//
// refPosGen() - Position reference generator for trapezoidal position profile
//
float32_t refPosGen(float32_t out)
{
    float32_t in = out;

    out = ramper_sine(in, out, 0.001);

    if(out < in)
    {
        return(in);
    }
    else
    {
        return(out);
    }
}

//
// PI_POS_run() - Position PI controller
//
float32_t PI_POS_run(float32_t Kp, float32_t Ki, float32_t *ui, 
                     float32_t ref, float32_t fbk, float32_t outMax, float32_t outMin)
{
    float32_t error, up, out;
    
    error = ref - fbk;
    
    // Proportional term
    up = Kp * error;
    
    // Integral term
    *ui += Ki * error;
    
    // Anti-windup
    if(*ui > outMax)
        *ui = outMax;
    else if(*ui < outMin)
        *ui = outMin;
    
    // PI output
    out = up + *ui;
    
    // Output saturation
    if(out > outMax)
        out = outMax;
    else if(out < outMin)
        out = outMin;
    
    return out;
}

//
// PID_run_legacy() - Position PID controller (legacy function)
//
float32_t PID_run_legacy(float32_t Kp, float32_t Ki, float32_t Kd,
                         float32_t *ui, float32_t *error_prev,
                         float32_t ref, float32_t fbk, 
                         float32_t outMax, float32_t outMin)
{
    float32_t error, up, ud, out;
    
    error = ref - fbk;
    
    // Proportional term
    up = Kp * error;
    
    // Integral term
    *ui += Ki * error;
    
    // Derivative term
    ud = Kd * (error - *error_prev);
    *error_prev = error;
    
    // Anti-windup for integral
    if(*ui > outMax)
        *ui = outMax;
    else if(*ui < outMin)
        *ui = outMin;
    
    // PID output
    out = up + *ui + ud;
    
    // Output saturation
    if(out > outMax)
        out = outMax;
    else if(out < outMin)
        out = outMin;
    
    return out;
}

//
// End of File
//

