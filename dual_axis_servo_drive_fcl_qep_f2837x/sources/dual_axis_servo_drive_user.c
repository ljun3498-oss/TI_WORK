//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
//
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//#############################################################################

//------------------------------------------------------------------------------
//  Software:       Motor Control SDK
//
// FILE:    dual_axis_servo_drive_user.c
//
// TITLE:   Initialize the parameter variables for motor
//
//
// Group:   C2000
//
// Target Family: F2837x/F28004x/F28P55x/F28P65x
//
//-----------------------------------------------------------------------------

//
// includes
//
#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_drive_user.h"
#include "dual_axis_servo_drive_hal.h"
#include "dual_axis_servo_drive.h"

#include "sfra_settings.h"

/**
 * @brief 电流反馈偏移计算相关变量
 * @details 用于电流传感器偏移量的低通滤波计算
 */
float32_t K1 = 0.998;         // 偏移滤波器系数K1: 0.05/(T+0.05)，其中T为采样时间
float32_t K2 = 0.001999;      // 偏移滤波器系数K2: T/(T+0.05)，其中T为采样时间

/**
 * @brief 偏移校准计数器
 * @details 用于记录偏移量计算的采样次数
 */
uint16_t offsetCalCounter = 0;

/**
 * @brief 初始化电机参数
 * @details 根据电机索引初始化电机控制所需的所有参数，包括采样时间、电压电流限制、FCL参数、编码器参数等
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 * @param mtrHandle HAL电机句柄，用于获取硬件相关信息
 * @return 无
 */
void initMotorParameters(MOTOR_Vars_t *pMotor, HAL_MTR_Handle mtrHandle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)mtrHandle;    // 将HAL电机句柄转换为具体对象指针

    // 电机1参数初始化
    if(pMotor == &motorVars[0])
    {
        pMotor->ptrFCL = &fclVars[0];    // 设置FCL变量指针

        pMotor->Ts = 0.001/M1_ISR_FREQUENCY;    // 计算采样时间

        pMotor->voltageLimit = (float32_t)(M1_MAXIMUM_VOLTAGE);             // 电压限制 (V)
        pMotor->currentLimit = (float32_t)(M1_MAXIMUM_CURRENT);             // 电流限制 (A)

        // 根据采样方法计算最大调制指数和载波中点
        #if(SAMPLING_METHOD == SINGLE_SAMPLING)
        pMotor->maxModIndex = (M1_TPWM_CARRIER -
                (2 * M1_FCL_COMPUTATION_TIME)) / M1_TPWM_CARRIER;
        pMotor->FCL_params.carrierMid = pMotor->maxModIndex *
                M1_INV_PWM_HALF_TBPRD * 0x10000L;
        #elif(SAMPLING_METHOD == DOUBLE_SAMPLING)
        pMotor->maxModIndex = (M1_TPWM_CARRIER -
                (4 * M1_FCL_COMPUTATION_TIME)) / M1_TPWM_CARRIER;
        pMotor->FCL_params.carrierMid = M1_INV_PWM_HALF_TBPRD * 0x10000L;
        #endif

        pMotor->FCL_params.adcScale = -M1_ADC_PU_PPB_SCALE_FACTOR;    // ADC缩放因子（负值表示电流方向）

        pMotor->FCL_params.cmidsqrt3 =
                pMotor->FCL_params.carrierMid * sqrtf(3.0);    // 计算载波中点乘以sqrt(3)，用于SVPWM

        // 设置FCL相关参数
        pMotor->FCL_params.tSamp = (1.0F / M1_SAMPLING_FREQ);    // 采样时间
        pMotor->FCL_params.Rd    = M1_RS;                      // d轴电阻
        pMotor->FCL_params.Rq    = M1_RS;                      // q轴电阻
        pMotor->FCL_params.Ld    = M1_LD;                      // d轴电感
        pMotor->FCL_params.Lq    = M1_LQ;                      // q轴电感
        pMotor->FCL_params.BemfK = M1_KB;                      // 反电动势常数
        pMotor->FCL_params.Ibase = M1_BASE_CURRENT;            // 基极电流
        pMotor->FCL_params.Wbase = 2.0 * PI * M1_BASE_FREQ;    // 基极角频率
        pMotor->FCL_params.wccD  = M1_CUR_LOOP_BANDWIDTH;      // d轴电流环带宽
        pMotor->FCL_params.wccQ  = M1_CUR_LOOP_BANDWIDTH;      // q轴电流环带宽

        // 设置编码器参数
        pMotor->ptrFCL->qep.LineEncoder = M1_ENCODER_LINES;                 // 编码器线数
        pMotor->ptrFCL->qep.MechScaler = 0.25 / pMotor->ptrFCL->qep.LineEncoder;    // 机械角度缩放因子

        // 设置电机极对数
        pMotor->ptrFCL->qep.PolePairs = M1_POLES / 2;        // 极对数 = 极数 / 2
        pMotor->ptrFCL->qep.CalibratedAngle = 0;             // 校准角度初始化为0
        
        // 设置基频和极数（用于速度计算）
        pMotor->baseFreq = M1_BASE_FREQ;
        pMotor->poles = M1_POLES;

        // 初始化速度计算模块
        pMotor->speed.K1 = 1 / (M1_BASE_FREQ * pMotor->Ts);    // 速度计算系数K1

        // 低通滤波器截止频率设置
        pMotor->speed.K2 = 1 / (1 + (2 * PI * pMotor->Ts * 5));    // 低通滤波系数K2
        pMotor->speed.K3 = 1 - pMotor->speed.K2;                   // 低通滤波系数K3
        pMotor->speed.BaseRpm = 120 * (M1_BASE_FREQ / M1_POLES);    // 基速 (RPM)

        // 设置电流和电压缩放系数
        pMotor->currentScale = M1_CURRENT_SF;          // 电流缩放因子
        pMotor->voltageScale = M1_VOLTAGE_SF;          // 电压缩放因子
        pMotor->adcScale = M1_ADC_PU_SCALE_FACTOR;     // ADC标幺值缩放因子
        pMotor->currentInvSF = M1_CURRENT_INV_SF;      // 电流逆缩放因子
        pMotor->voltageInvSF = M1_VOLTAGE_INV_SF;      // 电压逆缩放因子

        // 设置直流母线电压参数
        pMotor->Vdcbus = M1_VDCBUS_MIN;      // 当前直流母线电压
        pMotor->VdcbusMax = M1_VDCBUS_MAX;   // 最大直流母线电压
        pMotor->VdcbusMin = M1_VDCBUS_MIN;   // 最小直流母线电压

        // 设置驱动相关GPIO
        pMotor->drvEnableGateGPIO = M1_EN_GATE_GPIO;    // 驱动使能GPIO
        pMotor->drvFaultTripGPIO = M1_nFAULT_GPIO;      // 驱动故障GPIO
        pMotor->drvClearFaultGPIO = M1_CLR_FAULT_GPIO;  // 驱动清除故障GPIO

        // 计算电流阈值
        pMotor->currentThreshHi = 2048 +
                       scaleCurrentValue(M1_MAXIMUM_CURRENT, M1_CURRENT_INV_SF);    // 电流上限阈值

        pMotor->currentThreshLo = 2048 -
                       scaleCurrentValue(M1_MAXIMUM_CURRENT, M1_CURRENT_INV_SF);    // 电流下限阈值

        // 初始化FCL库 - ADC模块
        // 初始化ADC PPB结果基址和用于采样W相的ADC模块
        FCL_initADC_3I(pMotor, M1_IW_ADC_BASE,
                       M1_IV_ADCRESULT_BASE, M1_IV_ADC_PPB_NUM,
                       M1_IW_ADCRESULT_BASE, M1_IW_ADC_PPB_NUM,
                       M1_IU_ADCRESULT_BASE, M1_IU_ADC_PPB_NUM);

        // 设置直流母线电压ADC结果地址
        pMotor->volDC_PPBRESULT = M1_VDC_ADCRESULT_BASE +
                ADC_PPBxRESULT_OFFSET_BASE + M1_VDC_ADC_PPB_NUM * 2;

    }
    // 电机2参数初始化
    else if(pMotor == &motorVars[1])
    {
        pMotor->ptrFCL = &fclVars[1];    // 设置FCL变量指针

        pMotor->Ts = 0.001 / M2_ISR_FREQUENCY;    // 计算采样时间

        pMotor->voltageLimit = (float32_t)(M2_MAXIMUM_VOLTAGE);             // 电压限制 (V)
        pMotor->currentLimit = (float32_t)(M2_MAXIMUM_CURRENT);             // 电流限制 (A)

        // 根据采样方法计算最大调制指数和载波中点
        #if(SAMPLING_METHOD == SINGLE_SAMPLING)
        pMotor->maxModIndex = (M2_TPWM_CARRIER -
                (2 * M2_FCL_COMPUTATION_TIME)) / M2_TPWM_CARRIER;
        pMotor->FCL_params.carrierMid = pMotor->maxModIndex *
                M2_INV_PWM_HALF_TBPRD * 0x10000L;
        #elif(SAMPLING_METHOD == DOUBLE_SAMPLING)
        pMotor->maxModIndex = (M2_TPWM_CARRIER -
                (4 * M2_FCL_COMPUTATION_TIME)) / M2_TPWM_CARRIER;
        pMotor->FCL_params.carrierMid = M2_INV_PWM_HALF_TBPRD * 0x10000L;
        #endif

        pMotor->FCL_params.adcScale = -M2_ADC_PU_PPB_SCALE_FACTOR;    // ADC缩放因子（负值表示电流方向）

        pMotor->FCL_params.cmidsqrt3 =
                pMotor->FCL_params.carrierMid * sqrtf(3.0);    // 计算载波中点乘以sqrt(3)，用于SVPWM

        // 设置FCL相关参数
        pMotor->FCL_params.tSamp = (1.0F / M2_SAMPLING_FREQ);    // 采样时间
        pMotor->FCL_params.Rd    = M2_RS;                      // d轴电阻
        pMotor->FCL_params.Rq    = M2_RS;                      // q轴电阻
        pMotor->FCL_params.Ld    = M2_LD;                      // d轴电感
        pMotor->FCL_params.Lq    = M2_LQ;                      // q轴电感
        pMotor->FCL_params.BemfK = M2_KB;                      // 反电动势常数
        pMotor->FCL_params.Ibase = M2_BASE_CURRENT;            // 基极电流
        pMotor->FCL_params.Wbase = 2.0 * PI * M2_BASE_FREQ;    // 基极角频率
        pMotor->FCL_params.wccD  = M2_CUR_LOOP_BANDWIDTH;      // d轴电流环带宽
        pMotor->FCL_params.wccQ  = M2_CUR_LOOP_BANDWIDTH;      // q轴电流环带宽

        // 设置编码器参数
        pMotor->ptrFCL->qep.LineEncoder = M2_ENCODER_LINES;                 // 编码器线数
        pMotor->ptrFCL->qep.MechScaler = 0.25 / pMotor->ptrFCL->qep.LineEncoder;    // 机械角度缩放因子

        // 设置电机极对数
        pMotor->ptrFCL->qep.PolePairs = M2_POLES / 2;        // 极对数 = 极数 / 2
        pMotor->ptrFCL->qep.CalibratedAngle = 0;             // 校准角度初始化为0
        
        // 设置基频和极数（用于速度计算）
        pMotor->baseFreq = M2_BASE_FREQ;
        pMotor->poles = M2_POLES;

        // 初始化速度计算模块
        pMotor->speed.K1 = 1 / (M2_BASE_FREQ * pMotor->Ts);    // 速度计算系数K1

        // 低通滤波器截止频率设置
        pMotor->speed.K2 = 1 / (1 + (2 * PI * pMotor->Ts * 5));    // 低通滤波系数K2
        pMotor->speed.K3 = 1 - pMotor->speed.K2;                   // 低通滤波系数K3
        pMotor->speed.BaseRpm = 120 * (M2_BASE_FREQ / M2_POLES);    // 基速 (RPM)

        // 设置电流和电压缩放系数
        pMotor->currentScale = M2_CURRENT_SF;          // 电流缩放因子
        pMotor->voltageScale = M2_VOLTAGE_SF;          // 电压缩放因子
        pMotor->adcScale = M2_ADC_PU_SCALE_FACTOR;     // ADC标幺值缩放因子
        pMotor->currentInvSF = M2_CURRENT_INV_SF;      // 电流逆缩放因子
        pMotor->voltageInvSF = M2_VOLTAGE_INV_SF;      // 电压逆缩放因子

        // 设置直流母线电压参数
        pMotor->Vdcbus = M2_VDCBUS_MIN;      // 当前直流母线电压
        pMotor->VdcbusMax = M2_VDCBUS_MAX;   // 最大直流母线电压
        pMotor->VdcbusMin = M2_VDCBUS_MIN;   // 最小直流母线电压

        // 设置驱动相关GPIO
        pMotor->drvEnableGateGPIO = M2_EN_GATE_GPIO;    // 驱动使能GPIO
        pMotor->drvFaultTripGPIO = M2_nFAULT_GPIO;      // 驱动故障GPIO
        pMotor->drvClearFaultGPIO = M2_CLR_FAULT_GPIO;  // 驱动清除故障GPIO

        // 计算电流阈值
        pMotor->currentThreshHi = 2048 +
                       scaleCurrentValue(M2_MAXIMUM_CURRENT, M2_CURRENT_INV_SF);    // 电流上限阈值

        pMotor->currentThreshLo = 2048 -
                       scaleCurrentValue(M2_MAXIMUM_CURRENT, M2_CURRENT_INV_SF);    // 电流下限阈值

        // 初始化FCL库 - ADC模块
        // 初始化ADC PPB结果基址和用于采样W相的ADC模块
        FCL_initADC_3I(pMotor, M2_IW_ADC_BASE,
                       M2_IV_ADCRESULT_BASE, M2_IV_ADC_PPB_NUM,
                       M2_IW_ADCRESULT_BASE, M2_IW_ADC_PPB_NUM,
                       M2_IU_ADCRESULT_BASE, M2_IU_ADC_PPB_NUM );

        // 设置直流母线电压ADC结果地址
        pMotor->volDC_PPBRESULT = M2_VDC_ADCRESULT_BASE +
                ADC_PPBxRESULT_OFFSET_BASE + M2_VDC_ADC_PPB_NUM *2;
    }

    // 初始化FCL库 - PWM模块
    // 确保传递正确的PWM基地址，pwmHandle[0:2]应对应硬件中的逆变器U/V/W相
    FCL_initPWM(pMotor,
                obj->pwmHandle[0], obj->pwmHandle[1], obj->pwmHandle[2]);

    // 初始化FCL库 - QEP模块
    // 确保传递正确的QEP基地址
    FCL_initQEP(pMotor, obj->qepHandle);

    // 初始化任务计数器
    pMotor->ptrFCL->taskCount[0] = 0;
    pMotor->ptrFCL->taskCount[1] = 0;
    pMotor->ptrFCL->taskCount[2] = 0;
    pMotor->ptrFCL->taskCount[3] = 0;

    return;
}

/**
 * @brief 初始化控制变量
 * @details 初始化电机控制所需的各种控制变量，包括斜坡控制、PI控制器配置、速度计算模块等
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 * @return 无
 */
void initControlVars(MOTOR_Vars_t *pMotor)
{
    // 设置斜坡控制的最大延迟率
    pMotor->rc.RampDelayMax = 2;    // 斜坡控制最大延迟

    // PI控制器配置
    // 初始化位置PI控制器
    pMotor->pi_pos.Kp = 0.87;              // 比例增益（增大以提高响应速度）
    pMotor->pi_pos.Ki = 0.0006;           // 积分增益（添加积分以消除静差）
    pMotor->pi_pos.Umax = 1.0;           // 输出上限（增大以允许更高速度）
    pMotor->pi_pos.Umin = -1.0;          // 输出下限

    // 初始化速度PID控制器
    // 速度环低速PI参数（低速参数：Kp=0.6, Ki=0.03）
    pMotor->pid_spd.param.Kp   = 0.05;    // 比例增益 (低速阶段)
    pMotor->pid_spd.param.Ki   = 0.02;  // 积分增益
    pMotor->pid_spd.param.Kd   = 0.0;     // 微分增益
    pMotor->pid_spd.param.Kr   = 1.0f;     // 参考增益
    pMotor->pid_spd.param.Umax = 1.0;    // 输出上限
    pMotor->pid_spd.param.Umin = -1.0;   // 输出下限

    // 初始化Id电流PI控制器
    pMotor->pi_id.Kp = 1.0;         // 比例增益 (LS * CUR_LOOP_BW)
    pMotor->pi_id.Ki = pMotor->Ts / 0.04;      // 积分增益 ((RS * T) * CUR_LOOP_BW)
    pMotor->pi_id.Kerr = (pMotor->pi_id.Ki * 0.5) + pMotor->pi_id.Kp;    // 误差增益
    pMotor->pi_id.KerrOld = (pMotor->pi_id.Ki * 0.5) - pMotor->pi_id.Kp; // 旧误差增益
    pMotor->pi_id.Umax = 1.0;    // 输出上限
    pMotor->pi_id.Umin = -1.0;   // 输出下限
    pMotor->pi_id.ref = 0;    // 参考值
    pMotor->pi_id.err = 0;    // 误差值
    pMotor->pi_id.out = 0;    // 输出值

    // 初始化速度计算模块（从QEP/RESOLVER计算速度）
    pMotor->speed.K1 = 1 / (pMotor->baseFreq * pMotor->Ts);    // 速度计算系数K1

    // 低通滤波器截止频率设置
    pMotor->speed.K2 = 1 / (1 + (2 * PI * pMotor->Ts * 5));    // 低通滤波系数K2
    pMotor->speed.K3 = 1 - pMotor->speed.K2;                   // 低通滤波系数K3
    pMotor->speed.BaseRpm = 120 * (pMotor->baseFreq / pMotor->poles);    // 基速 (RPM)

    // 初始化Iq回路PI控制器
    pMotor->ptrFCL->pi_iq.Kp = pMotor->pi_id.Kp;    // 比例增益（与Id相同）
    pMotor->ptrFCL->pi_iq.Ki = pMotor->pi_id.Ki;    // 积分增益（与Id相同）
    pMotor->ptrFCL->pi_iq.Kerr = 
            (pMotor->ptrFCL->pi_iq.Ki * 0.5) + pMotor->ptrFCL->pi_iq.Kp;    // 误差增益

    pMotor->ptrFCL->pi_iq.KerrOld = 
            (pMotor->ptrFCL->pi_iq.Ki * 0.5) - pMotor->ptrFCL->pi_iq.Kp;    // 旧误差增益

        pMotor->ptrFCL->pi_iq.Umax = 2*pMotor->maxModIndex;    // 输出上限
        pMotor->ptrFCL->pi_iq.Umin = -2*pMotor->maxModIndex;   // 输出下限
    pMotor->ptrFCL->pi_iq.ref = 0;    // 参考值
    pMotor->ptrFCL->pi_iq.err = 0;    // 误差值
    pMotor->ptrFCL->pi_iq.out = 0;    // 输出值

    // 初始化斜坡生成模块
    pMotor->ptrFCL->rg.StepAngleMax = pMotor->baseFreq * pMotor->Ts;    // 最大步长角度
    pMotor->ptrFCL->rg.Angle = 0;    // 角度初始值
    pMotor->ptrFCL->rg.Out = 0;      // 输出初始值
    pMotor->ptrFCL->rg.Gain = 1.0;   // 增益
    pMotor->ptrFCL->rg.Offset = 1.0; // 偏移量

    // 设置速度和电流环的模拟参考值
    pMotor->speedRef  = 0.1;    // 速度参考值
    pMotor->IdRef     = 0;      // Id电流参考值

    // 根据构建级别设置Iq电流参考值
#if(BUILDLEVEL == FCL_LEVEL5)
    pMotor->IqRef = 0.05;    // FCL_LEVEL5级别下的Iq参考值
#else
    pMotor->IqRef = 0.03;    // 其他级别下的Iq参考值
#endif

    return;
}

/**
 * @brief 重置控制变量
 * @details 重置FCL变量，用于电机停止和重启时的状态初始化
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 * @return 无
 */
void resetControlVars(MOTOR_Vars_t *pMotor)
{
    pMotor->runMotor = MOTOR_STOP;    // 停止电机运行

    // 重置Id电流环PI控制器变量
    pMotor->pi_id.carryOver = 0.0;    // 进位值清零
    pMotor->pi_id.out = 0.0;          // 输出值清零

    // 重置D_cpu变量
    pMotor->D_cpu.carryOver = 0.0;    // 进位值清零
    pMotor->D_cpu.idErr = 0.0;        // d轴电流误差清零
    pMotor->D_cpu.iqErr = 0.0;        // q轴电流误差清零

    // 设置FCL状态机为编码器对齐状态
    pMotor->ptrFCL->lsw = ENC_ALIGNMENT;

    // 重置Iq电流环PI控制器变量
    pMotor->ptrFCL->pi_iq.carryOver = 0.0;    // 进位值清零
    pMotor->ptrFCL->pi_iq.out = 0.0;          // 输出值清零

    // 重置Q_cla变量
    pMotor->ptrFCL->Q_cla.carryOver = 0.0;    // 进位值清零
    pMotor->ptrFCL->Q_cla.idErr = 0.0;        // d轴电流误差清零
    pMotor->ptrFCL->Q_cla.iqErr = 0.0;        // q轴电流误差清零

    // 重置速度前值
    pMotor->ptrFCL->speedWePrev = 0.0;

    return;
}

/**
 * @brief 执行偏移量计算
 * @details 计算电流反馈的偏移量，用于校准电流传感器，并更新DC母线电压
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 * @return 无
 */
void runOffsetsCalculation(MOTOR_Vars_t *pMotor)
{
    // 初始化电流偏移量为0
    pMotor->offset_currentAs = 0;    // A相电流偏移量
    pMotor->offset_currentBs = 0;    // B相电流偏移量
    pMotor->offset_currentCs = 0;    // C相电流偏移量

    // 处理电机1的偏移量计算
    if(pMotor == &motorVars[0])
    {
        // 进行20000次采样，前1000次为稳定期，后19000次用于计算
        for(offsetCalCounter = 0; offsetCalCounter < 20000; offsetCalCounter++)
        {
            // 清除EPWM事件触发中断标志
            EPWM_clearEventTriggerInterruptFlag(halMtr[0].pwmHandle[0]);

            // 等待EPWM事件触发中断（添加超时保护）
            uint32_t timeout = 0x1000000;
            while((EPWM_getEventTriggerInterruptStatus(halMtr[0].pwmHandle[0]) == false) && (--timeout > 0));
            if(timeout == 0) break;  // 超时退出，防止死循环

            // 稳定期后开始计算偏移量
            if(offsetCalCounter > 1000)
            {
                // 计算A相电流偏移量（低通滤波）
                pMotor->offset_currentAs  = (K1 * pMotor->offset_currentAs) +
                        (K2 * (M1_IFB_U) * pMotor->adcScale);

                // 计算B相电流偏移量（低通滤波）
                pMotor->offset_currentBs  = (K1 * pMotor->offset_currentBs) +
                        (K2 * (M1_IFB_V) * pMotor->adcScale);

                // 计算C相电流偏移量（低通滤波）
                pMotor->offset_currentCs  = (K1 * pMotor->offset_currentCs) +
                        (K2 * (M1_IFB_W) * pMotor->adcScale);
            }
        }

        // 读取并更新DC母线电压，供FCL使用
        pMotor->FCL_params.Vdcbus = getVdc(pMotor);

        // 使用识别的值初始化偏移寄存器
        // 设置A相电流偏移
        ADC_setPPBReferenceOffset(M1_IU_ADC_BASE, M1_IU_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentAs * 4096.0));
        // 设置B相电流偏移
        ADC_setPPBReferenceOffset(M1_IV_ADC_BASE, M1_IV_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentBs * 4096.0));

        // 设置C相电流偏移
        ADC_setPPBReferenceOffset(M1_IW_ADC_BASE, M1_IW_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentCs * 4096.0));

        // 设置DC母线电压偏移为0
        ADC_setPPBReferenceOffset(M1_VDC_ADC_BASE, M1_VDC_ADC_PPB_NUM, 0);
    }
    else if(pMotor == &motorVars[1])
    {
        // 进行20000次采样，前1000次为稳定期，后19000次用于计算
        for(offsetCalCounter = 0; offsetCalCounter < 20000; offsetCalCounter++)
        {
            // 清除EPWM事件触发中断标志
            EPWM_clearEventTriggerInterruptFlag(halMtr[1].pwmHandle[0]);

            // 等待EPWM事件触发中断（添加超时保护）
            uint32_t timeout = 0x1000000;
            while((EPWM_getEventTriggerInterruptStatus(halMtr[1].pwmHandle[0]) == false) && (--timeout > 0));
            if(timeout == 0) break;  // 超时退出，防止死循环

            // 稳定期后开始计算偏移量
            if(offsetCalCounter > 1000)
            {
                // 计算A相电流偏移量（低通滤波）
                pMotor->offset_currentAs  = (K1 * pMotor->offset_currentAs) +
                        (K2 * (M2_IFB_U) * pMotor->adcScale);

                // 计算B相电流偏移量（低通滤波）
                pMotor->offset_currentBs  = (K1 * pMotor->offset_currentBs) +
                        (K2 * (M2_IFB_V) * pMotor->adcScale);

                // 计算C相电流偏移量（低通滤波）
                pMotor->offset_currentCs  = (K1 * pMotor->offset_currentCs) +
                        (K2 * (M2_IFB_W) * pMotor->adcScale);
            }
        }

        // 读取并更新DC母线电压，供FCL使用
        pMotor->FCL_params.Vdcbus = getVdc(pMotor);

        // 使用识别的值初始化偏移寄存器
        // 设置A相电流偏移
        ADC_setPPBReferenceOffset(M2_IU_ADC_BASE, M2_IU_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentAs * 4096.0));
        // 设置B相电流偏移
        ADC_setPPBReferenceOffset(M2_IV_ADC_BASE, M2_IV_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentBs * 4096.0));

        // 设置C相电流偏移
        ADC_setPPBReferenceOffset(M2_IW_ADC_BASE, M2_IW_ADC_PPB_NUM,
                                 (uint16_t)(pMotor->offset_currentCs * 4096.0));

        // 设置DC母线电压偏移为0
        ADC_setPPBReferenceOffset(M2_VDC_ADC_BASE, M2_VDC_ADC_PPB_NUM, 0);
    }

    // 设置偏移量计算完成标志
    pMotor->offsetDoneFlag = 1;

    return;
}

//
// End of Code
//
