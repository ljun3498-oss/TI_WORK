//#############################################################################
//
// FILE:    dual_axis_servo_drive_hal.c
//
// TITLE:   define initialize the handle functions of device
//
// Group:   C2000
//
// Target Family: F2837x
//
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

//
// includes
//
#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_drive_hal.h"

// CMPSS数字滤波参数来自主控制文件，便于在线调参
extern uint16_t clkPrescale;
extern uint16_t sampWin;
extern uint16_t thresh;

#include "dual_axis_servo_drive.h"

#include "uvw.h"    // 定义 uvw_u/uvw_v/uvw_w

#include "stdbool.h"
#include "stdint.h"


//
// SD Trip Level - 范围用于额外工作
//
uint16_t hlt = 0x7FFF;    // 高电平阈值
uint16_t llt = 0x0;        // 低电平阈值

// UVW 调试输入定义（在 uvw.h 中声明为 extern）
volatile uint8_t uvw_u = 0U; // U 相调试输入（GPIO16）
volatile uint8_t uvw_v = 0U; // V 相调试输入（GPIO17）
volatile uint8_t uvw_w = 0U; // W 相调试输入（GPIO18）

//
// 这些由链接器文件定义
//
extern uint32_t Cla1funcsRunStart;    // CLA1函数运行起始地址
extern uint32_t Cla1funcsLoadStart;    // CLA1函数加载起始地址
extern uint32_t Cla1funcsLoadSize;     // CLA1函数加载大小

extern uint32_t Cla1ConstRunStart;     // CLA1常量运行起始地址
extern uint32_t Cla1ConstLoadStart;    // CLA1常量加载起始地址
extern uint32_t Cla1ConstLoadSize;     // CLA1常量加载大小

//
// CPU中断例程
//
extern __interrupt void motor1ControlISR(void);    // 电机1控制中断服务函数
extern __interrupt void motor2ControlISR(void);    // 电机2控制中断服务函数

//
// 任务1-4由电机1的FCL拥有
//
extern __interrupt void Cla1Task1(void);    // CLA1任务1（电机1）
extern __interrupt void Cla1Task2(void);    // CLA1任务2（电机1）
extern __interrupt void Cla1Task3(void);    // CLA1任务3（电机1）
extern __interrupt void Cla1Task4(void);    // CLA1任务4（电机1）

//
// 任务5-8由电机2的FCL拥有
//
extern __interrupt void Cla1Task5(void);    // CLA1任务5（电机2）
extern __interrupt void Cla1Task6(void);    // CLA1任务6（电机2）
extern __interrupt void Cla1Task7(void);    // CLA1任务7（电机2）
extern __interrupt void Cla1Task8(void);    // CLA1任务8（电机2）

/**
 * @brief 启用中断
 * @details 根据电机句柄启用相应的PWM中断和CPU中断组
 * @param handle HAL电机句柄，指定要启用中断的电机
 * @return 无
 */
void HAL_enableInterrupts(HAL_MTR_Handle handle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    //
    // 清除待处理的中断事件
    //
    EPWM_clearEventTriggerInterruptFlag(obj->pwmHandle[0]);    // 清除PWM事件触发中断标志

    // 根据电机索引启用相应的PWM中断
    if(handle == &halMtr[MTR_1])
    {
        //
        // 在PIE组3中启用PWM1INT
        //
        Interrupt_enable(M1_INT_PWM);    // 启用电机1的PWM中断
    }
    else if(handle == &halMtr[MTR_2])
    {
        //
        // 在PIE组3中启用PWM4INT
        //
        Interrupt_enable(M2_INT_PWM);    // 启用电机2的PWM中断
    }

    //
    // 启用组3中断 - EPWM1位于此组
    //
    Interrupt_enableInCPU(INTERRUPT_CPU_INT3);    // 在CPU中启用组3中断

    return;
}

/**
 * @brief 初始化HAL对象
 * @details 分配HAL句柄，禁用看门狗，初始化各种硬件模块的句柄
 * @param pMemory 指向内存的指针，用于存储HAL对象
 * @param numBytes 可用内存大小
 * @return 成功时返回HAL句柄，失败时返回NULL
 */
HAL_Handle HAL_init(void *pMemory, const size_t numBytes)
{
    HAL_Handle handle;    // HAL句柄
    HAL_Obj *obj;         // HAL对象指针

    // 检查内存大小是否足够容纳HAL对象
    if(numBytes < sizeof(HAL_Obj))
    {
        return((HAL_Handle)NULL);    // 内存不足，返回NULL
    }

    //
    // 分配句柄
    //
    handle = (HAL_Handle)pMemory;    // 将内存指针转换为HAL句柄

    //
    // 分配对象
    //
    obj = (HAL_Obj *)handle;    // 将HAL句柄转换为具体对象指针

    //
    // 禁用看门狗
    //
    SysCtl_disableWatchdog();    // 禁用系统看门狗定时器

    //
    // 初始化DAC句柄
    //
    obj->dacHandle[0] = DACA_BASE;    // DAC A基地址
    obj->dacHandle[1] = DACB_BASE;    // DAC B基地址
    obj->dacHandle[2] = DACC_BASE;    // DAC C基地址

    //
    // 初始化CLA句柄
    //
    obj->claHandle = CLA1_BASE;    // CLA1基地址

    //
    // 初始化SCI句柄
    //
    obj->sciHandle[0] = SCIA_BASE;    // SCI A基地址
    obj->sciHandle[1] = SCIB_BASE;    // SCI B基地址

    //
    // 初始化定时器句柄
    //
    obj->timerHandle[0] = CPUTIMER0_BASE;    // CPU定时器0基地址
    obj->timerHandle[1] = CPUTIMER1_BASE;    // CPU定时器1基地址
    obj->timerHandle[2] = CPUTIMER2_BASE;    // CPU定时器2基地址

    //
    // 初始化ADC句柄
    //
    obj->adcHandle[0] = ADCA_BASE;    // ADC A基地址
    obj->adcHandle[1] = ADCB_BASE;    // ADC B基地址
    obj->adcHandle[2] = ADCC_BASE;    // ADC C基地址
    obj->adcHandle[3] = ADCD_BASE;    // ADC D基地址

    //
    // 初始化ADC结果基地址
    //
    obj->adcResult[0] = ADCARESULT_BASE;    // ADC A结果基地址
    obj->adcResult[1] = ADCBRESULT_BASE;    // ADC B结果基地址
    obj->adcResult[2] = ADCCRESULT_BASE;    // ADC C结果基地址
    obj->adcResult[3] = ADCDRESULT_BASE;    // ADC D结果基地址

    return(handle);    // 返回初始化后的HAL句柄
} // end of HAL_init() function

/**
 * @brief 初始化电机的硬件抽象层(HAL)对象
 * @details 分配HAL电机句柄，根据电机索引初始化相应的SPI、PWM、CMPSS和QEP句柄
 * @param pMemory 指向内存的指针，用于存储HAL电机对象
 * @param numBytes 可用内存大小
 * @return 成功时返回HAL电机句柄，失败时返回NULL
 */
HAL_MTR_Handle HAL_MTR_init(void *pMemory, const size_t numBytes)
{
    HAL_MTR_Handle handle;    // HAL电机句柄
    HAL_MTR_Obj *obj;         // HAL电机对象指针

    // 检查内存大小是否足够容纳HAL电机对象
    if(numBytes < sizeof(HAL_MTR_Obj))
    {
        return((HAL_MTR_Handle)NULL);    // 内存不足，返回NULL
    }

    //
    // 分配句柄
    //
    handle = (HAL_MTR_Handle)pMemory;    // 将内存指针转换为HAL电机句柄

    //
    // 分配对象
    //
    obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    // 根据电机索引初始化相应的硬件句柄
    if(handle == &halMtr[MTR_1])
    {
        //
        // 初始化SPI句柄
        //
        obj->spiHandle = M1_SPI_BASE;    // 电机1的SPI基地址

        //
        // 初始化电机1的PWM句柄
        //
        obj->pwmHandle[0] = M1_U_PWM_BASE;    // 电机1的U相PWM基地址
        obj->pwmHandle[1] = M1_V_PWM_BASE;    // 电机1的V相PWM基地址
        obj->pwmHandle[2] = M1_W_PWM_BASE;    // 电机1的W相PWM基地址

        //
        // 初始化CMPSS句柄
        //
        obj->cmpssHandle[0] = M1_U_CMPSS_BASE;    // 电机1的U相CMPSS基地址
        obj->cmpssHandle[1] = M1_V_CMPSS_BASE;    // 电机1的V相CMPSS基地址
        obj->cmpssHandle[2] = M1_W_CMPSS_BASE;    // 电机1的W相CMPSS基地址

        //
        // 初始化QEP驱动
        //
        obj->qepHandle = M1_QEP_BASE;    // 电机1的QEP基地址
    }
    else if(handle == &halMtr[MTR_2])
    {
        //
        // 初始化SPI句柄
        //
        obj->spiHandle = M2_SPI_BASE;    // 电机2的SPI基地址

        //
        // 初始化电机2的PWM句柄
        //
        obj->pwmHandle[0] = M2_U_PWM_BASE;    // 电机2的U相PWM基地址
        obj->pwmHandle[1] = M2_V_PWM_BASE;    // 电机2的V相PWM基地址
        obj->pwmHandle[2] = M2_W_PWM_BASE;    // 电机2的W相PWM基地址

        //
        // 初始化电机2的CMPSS句柄
        //
        obj->cmpssHandle[0] = M2_U_CMPSS_BASE;    // 电机2的U相CMPSS基地址
        obj->cmpssHandle[1] = M2_V_CMPSS_BASE;    // 电机2的V相CMPSS基地址
        obj->cmpssHandle[2] = M2_W_CMPSS_BASE;    // 电机2的W相CMPSS基地址

        //
        // 初始化QEP驱动
        //
        obj->qepHandle = M2_QEP_BASE;    // 电机2的QEP基地址
    }

     return(handle);    // 返回初始化后的HAL电机句柄
} // end of HAL_MTR_init() function

/**
 * @brief 设置电机的HAL参数
 * @details 调用相关函数设置电机的PWM、CMPSS和QEP参数
 * @param handle HAL电机句柄，指定要设置参数的电机
 * @return 无
 */
void HAL_setMotorParams(HAL_MTR_Handle handle)
{
    //
    // 设置PWM
    //
    HAL_setupMotorPWMs(handle);    // 调用函数设置电机的PWM参数

    //
    // 设置CMPSS
    //
    HAL_setupCMPSS(handle);    // 调用函数设置电机的CMPSS参数

    //
    // 设置QEP
    //
    HAL_setupQEP(handle);    // 调用函数设置电机的QEP参数

    return;
}

/**
 * @brief 设置HAL参数
 * @details 配置系统时钟、GPIO、CLA、中断、定时器、ADC等硬件模块
 * @param handle HAL句柄，指定要设置参数的HAL对象
 * @return 无
 */
void HAL_setParams(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;    // 将HAL句柄转换为具体对象指针

    //
    // 确保LSPCLK分频器设置为4分频
    //
    SysCtl_setLowSpeedClock(SYSCTL_LSPCLK_PRESCALE_4); // 为SFRA设置50MHz低速时钟

    //
    // 禁用引脚锁定并启用内部上拉电阻
    //
    Device_initGPIO();    // 初始化GPIO设备

    //
    // 启用CLA1时钟
    //
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1);    // 启用CLA1时钟

    //
    // 设置CLA
    //
    HAL_setupCLA(handle);    // 调用函数设置CLA（控制律加速器）

    //
    // 初始化PIE控制寄存器到默认状态
    // 默认状态是所有PIE中断禁用，标志清除
    //
    Interrupt_initModule();    // 初始化中断模块

    //
    // 清除所有中断并初始化PIE向量表
    // 用指向shell中断服务例程(ISR)的指针初始化PIE向量表
    // 这将填充整个表，即使本示例中未使用该中断
    // 这对调试很有用
    //
    Interrupt_initVectorTable();    // 初始化中断向量表

    //
    // 后台循环的定时同步
    //
    HAL_setupCpuTimer(obj->timerHandle[0], MICROSEC_50);    // 设置CPU定时器0为50微秒（A任务）
    HAL_setupCpuTimer(obj->timerHandle[1], MICROSEC_100);   // 设置CPU定时器1为100微秒（B任务）
    HAL_setupCpuTimer(obj->timerHandle[2], MICROSEC_150);   // 设置CPU定时器2为150微秒（C任务）

    //
    // 设置GPIO（通用输入/输出）引脚
    //
    HAL_setupGPIOs(handle);    // 调用函数设置GPIO引脚

#ifdef DACOUT_EN
    //
    // 设置DAC
    //
    HAL_setupDACs(handle);    // 调用函数设置DAC（数模转换器）
#endif  //DACOUT_EN

    //
    // 设置ADC
    //
    HAL_setupADCs(handle);    // 调用函数设置ADC（模数转换器）

    return;
}


/**
 * @brief 配置ADC
 * @details 初始化ADC模块，配置SOC和PPB，设置电机电流和电压采样
 * @param handle HAL句柄，指定要配置的HAL对象
 * @return 无
 */
void HAL_setupADCs(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;    // 将HAL句柄转换为具体对象指针

    uint16_t cnt;    // 循环计数器

    //
    // 配置ADC模块A, B, C, D
    //
    for(cnt = 0; cnt < 4; cnt++)
    {
        //
        // 设置12位单端转换模式
        //
        ADC_setMode(obj->adcHandle[cnt],
                    ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);

        // 设置主时钟缩放因子（ADC模块最大时钟为100MHz）
        // 将ADC时钟设置为50MHz
        ADC_setPrescaler(obj->adcHandle[cnt], ADC_CLK_DIV_4_0);

        // 将ADC中断脉冲生成设置为转换结束
        ADC_setInterruptPulseMode(obj->adcHandle[cnt], ADC_PULSE_END_OF_CONV);

        // 启用ADC
        ADC_enableConverter(obj->adcHandle[cnt]);

        // 设置SOC的优先级
        ADC_setSOCPriority(obj->adcHandle[cnt], ADC_PRI_ALL_HIPRI);
    }

    // 延迟以允许ADC上电
    DEVICE_DELAY_US(1500U);

    //-------------------------------------------------------------------------
    // 电机1配置
    //-------------------------------------------------------------------------
    // 分流电机电流 (M1-Iu) @ C2
    // SOC0将转换引脚C2，采样窗口为SYSCLK周期
    // 由ePWM1 SOCA/C触发
    ADC_setupSOC(M1_IU_ADC_BASE, M1_IU_ADC_SOC_NUM,
                 M1_ADC_TRIGGER_SOC, M1_IU_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC0关联
    ADC_setupPPB(M1_IU_ADC_BASE, M1_IU_ADC_PPB_NUM, M1_IU_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M1_IU_ADC_BASE, M1_IU_ADC_PPB_NUM, 0);

    // 分流电机电流 (M1-Iv) @ B2
    // SOC0将转换引脚B2，采样窗口为SYSCLK周期
    // 由ePWM1 SOCA/C触发
    ADC_setupSOC(M1_IV_ADC_BASE, M1_IV_ADC_SOC_NUM,
                 M1_ADC_TRIGGER_SOC, M1_IV_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC0关联
    ADC_setupPPB(M1_IV_ADC_BASE, M1_IV_ADC_PPB_NUM, M1_IV_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M1_IV_ADC_BASE, M1_IV_ADC_PPB_NUM, 0);

    // 分流电机电流 (M1-Iw) @ A2
    // SOC0将转换引脚A2，采样窗口为SYSCLK周期
    // 由ePWM1 SOCA/C触发
    ADC_setupSOC(M1_IW_ADC_BASE, M1_IW_ADC_SOC_NUM,
                 M1_ADC_TRIGGER_SOC, M1_IW_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC0关联
    ADC_setupPPB(M1_IW_ADC_BASE, M1_IW_ADC_PPB_NUM, M1_IW_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M1_IW_ADC_BASE, M1_IW_ADC_PPB_NUM, 0);

    // 相电压 (M1-Vfb-dc) @ D14
    // SOC1将转换引脚D14，采样窗口为SYSCLK周期
    // 由ePWM1 SOCA/C触发
    ADC_setupSOC(M1_VDC_ADC_BASE, M1_VDC_ADC_SOC_NUM,
                 M1_ADC_TRIGGER_SOC, M1_VDC_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC0关联
    ADC_setupPPB(M1_VDC_ADC_BASE, M1_VDC_ADC_PPB_NUM, M1_VDC_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M1_VDC_ADC_BASE, M1_VDC_ADC_PPB_NUM, 0);

    //-------------------------------------------------------------------------
    // 电机2配置
    //-------------------------------------------------------------------------
    // 分流电机电流 (M2-Iu) @ C4
    // SOC2将转换引脚C2，采样窗口为SYSCLK周期
    // 由ePWM4 SOCA/C触发
    ADC_setupSOC(M2_IU_ADC_BASE, M2_IU_ADC_SOC_NUM,
                 M2_ADC_TRIGGER_SOC, M2_IU_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC2关联
    ADC_setupPPB(M2_IU_ADC_BASE, M2_IU_ADC_PPB_NUM, M2_IU_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M2_IU_ADC_BASE, M2_IU_ADC_PPB_NUM, 0);

    // 分流电机电流 (M2-Iv) @ B4
    // SOC2将转换引脚B2，采样窗口为SYSCLK周期
    // 由ePWM4 SOCA/C触发
    ADC_setupSOC(M2_IV_ADC_BASE, M2_IV_ADC_SOC_NUM,
                 M2_ADC_TRIGGER_SOC, M2_IV_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC2关联
    ADC_setupPPB(M2_IV_ADC_BASE, M2_IV_ADC_PPB_NUM, M2_IV_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M2_IV_ADC_BASE, M2_IV_ADC_PPB_NUM, 0);

    // 分流电机电流 (M2-Iw) @ A4
    // SOC2将转换引脚A2，采样窗口为SYSCLK周期
    // 由ePWM4 SOCA/C触发
    ADC_setupSOC(M2_IW_ADC_BASE, M2_IW_ADC_SOC_NUM,
                 M2_ADC_TRIGGER_SOC, M2_IW_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC2关联
    ADC_setupPPB(M2_IW_ADC_BASE, M2_IW_ADC_PPB_NUM, M2_IW_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M2_IW_ADC_BASE, M2_IW_ADC_PPB_NUM, 0);

    // 相电压 (M2-Vfb-dc) @ D15
    // SOC3将转换引脚D15，采样窗口为SYSCLK周期
    // 由ePWM4 SOCA/C触发
    ADC_setupSOC(M2_VDC_ADC_BASE, M2_VDC_ADC_SOC_NUM,
                 M2_ADC_TRIGGER_SOC, M2_VDC_ADC_CH_NUM, 14);

    // 配置PPB以消除减法相关计算
    // PPB与SOC3关联
    ADC_setupPPB(M2_VDC_ADC_BASE, M2_VDC_ADC_PPB_NUM, M2_VDC_ADC_SOC_NUM);

    // 暂时写入零，直到运行偏移ISR
    ADC_setPPBCalibrationOffset(M2_VDC_ADC_BASE, M2_VDC_ADC_PPB_NUM, 0);

    return;
}

/**
 * @brief 设置CLA
 * @details 配置CLA（控制律加速器），包括代码复制、内存配置、任务映射和触发源设置
 * @param handle HAL句柄，指定要配置的HAL对象
 * @return 无
 */
void HAL_setupCLA(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;    // 将HAL句柄转换为具体对象指针

    EALLOW;    // 允许修改受保护的寄存器

#ifdef _FLASH
    //
    // 从加载地址（FLASH）复制CLA代码到CLA程序RAM
    //
    // 注意：在调试期间，加载和运行地址可以相同，因为Code Composer Studio可以直接加载CLA程序RAM
    //
    // ClafuncsLoadStart、ClafuncsLoadEnd和ClafuncsRunStart符号由链接器创建
    //
    memcpy((uint32_t *)&Cla1funcsRunStart, (uint32_t *)&Cla1funcsLoadStart,
            (uint32_t)&Cla1funcsLoadSize);    // 复制CLA函数代码

    memcpy((uint32_t *)&Cla1ConstRunStart, (uint32_t *)&Cla1ConstLoadStart,
            (uint32_t)&Cla1ConstLoadSize);    // 复制CLA常量数据
#endif //_FLASH

    // 确保QEP访问权限被授予作为次要主设备的CLA
    SysCtl_selectSecMaster(SYSCTL_SEC_MASTER_CLA, SYSCTL_SEC_MASTER_CLA);

    // 初始化并等待CLA1ToCPUMsgRAM
    MemCfg_initSections(MEMCFG_SECT_MSGCLA1TOCPU);    // 初始化CLA到CPU的消息RAM
    while(MemCfg_getInitStatus(MEMCFG_SECT_MSGCLA1TOCPU) != 1);    // 等待初始化完成

    // 初始化并等待CPUToCLA1MsgRAM
    MemCfg_initSections(MEMCFG_SECT_MSGCPUTOCLA1);    // 初始化CPU到CLA的消息RAM
    while(MemCfg_getInitStatus(MEMCFG_SECT_MSGCPUTOCLA1) != 1);    // 等待初始化完成

    // 选择LS5RAM作为CLA的编程空间
    // 首先配置CLA作为LS5的主设备，然后将空间设置为程序块
    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS4, MEMCFG_LSRAMMASTER_CPU_CLA1);    // 设置LS4RAM的主设备为CPU和CLA1
    MemCfg_setCLAMemType(MEMCFG_SECT_LS4, MEMCFG_CLA_MEM_PROGRAM);    // 将LS4RAM设置为CLA程序内存

    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS5, MEMCFG_LSRAMMASTER_CPU_CLA1);    // 设置LS5RAM的主设备为CPU和CLA1
    MemCfg_setCLAMemType(MEMCFG_SECT_LS5, MEMCFG_CLA_MEM_PROGRAM);    // 将LS5RAM设置为CLA程序内存

    // 接下来配置LS2RAM和LS3RAM作为CLA的数据空间
    // 首先配置CLA作为主设备，然后将空间设置为代码块
    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS2, MEMCFG_LSRAMMASTER_CPU_CLA1);    // 设置LS2RAM的主设备为CPU和CLA1
    MemCfg_setCLAMemType(MEMCFG_SECT_LS2, MEMCFG_CLA_MEM_DATA);    // 将LS2RAM设置为CLA数据内存

    MemCfg_setLSRAMMasterSel(MEMCFG_SECT_LS3, MEMCFG_LSRAMMASTER_CPU_CLA1);    // 设置LS3RAM的主设备为CPU和CLA1
    MemCfg_setCLAMemType(MEMCFG_SECT_LS3, MEMCFG_CLA_MEM_DATA);    // 将LS3RAM设置为CLA数据内存

    // 计算所有CLA任务向量
    // 在Type-1 CLA上，MVECT寄存器接受完整的16位任务地址，而不是旧版Type-0 CLA使用的偏移量
#pragma diag_suppress = 770
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_1, (uint16_t)(&Cla1Task1));    // 映射CLA任务1向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_2, (uint16_t)(&Cla1Task2));    // 映射CLA任务2向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_3, (uint16_t)(&Cla1Task3));    // 映射CLA任务3向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_4, (uint16_t)(&Cla1Task4));    // 映射CLA任务4向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_5, (uint16_t)(&Cla1Task5));    // 映射CLA任务5向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_6, (uint16_t)(&Cla1Task6));    // 映射CLA任务6向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_7, (uint16_t)(&Cla1Task7));    // 映射CLA任务7向量
    CLA_mapTaskVector(obj->claHandle, CLA_MVECT_8, (uint16_t)(&Cla1Task8));    // 映射CLA任务8向量
#pragma diag_suppress = 770

    // 启用IACK指令以在软件中启动CLA上的任务
    // 对于所有8个CLA任务，还通过写入MIER寄存器中各自的位来全局启用所有8个任务（或任务子集）
    CLA_enableIACK(obj->claHandle);    // 启用CLA的IACK指令
    CLA_enableTasks(obj->claHandle, CLA_TASKFLAG_ALL);    // 启用所有CLA任务

    // 为CLA TASK1启用EPWM1 INT触发
    CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_EPWM1INT);    // 设置CLA任务1的触发源为EPWM1中断

    // 为CLA TASK5启用EPWM4 INT触发
    CLA_setTriggerSource(CLA_TASK_5, CLA_TRIGGER_EPWM4INT);    // 设置CLA任务5的触发源为EPWM4中断

    return;
}

/**
 * @brief 配置CMPSS
 * @details 初始化比较器子系统，设置高/低比较器、输出配置、迟滞和DAC
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @return 无
 */
void HAL_setupCMPSS(HAL_MTR_Handle handle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    uint16_t cnt;    // 循环计数器

    for(cnt = 0; cnt < 3; cnt++)
    {
        // 设置COMPCTL寄存器
        // COMP-H的NEG信号来自DAC
        CMPSS_configHighComparator(obj->cmpssHandle[cnt], CMPSS_INSRC_DAC);

        // COMP-L的NEG信号来自DAC，COMP-L输出反转
        CMPSS_configLowComparator(obj->cmpssHandle[cnt],
                                  (CMPSS_INSRC_DAC | CMPSS_INV_INVERTED)) ;

        // 数字滤波器输出 ==> CTRIPH，数字滤波器输出 ==> CTRIPOUTH
        CMPSS_configOutputsHigh(obj->cmpssHandle[cnt],
                                (CMPSS_TRIP_FILTER | CMPSS_TRIPOUT_FILTER));

        // 数字滤波器输出 ==> CTRIPL，数字滤波器输出 ==> CTRIPOUTL
        CMPSS_configOutputsLow(obj->cmpssHandle[cnt],
                               (CMPSS_TRIP_FILTER | CMPSS_TRIPOUT_FILTER));

        // 设置COMPHYSCTL寄存器
        // COMP迟滞设置为典型值的2倍
        CMPSS_setHysteresis(obj->cmpssHandle[cnt], 2);

        // 设置COMPDACCTL寄存器
        // VDDA作为CMPSS DAC的参考，DAC在系统时钟上更新，绕过斜坡
        CMPSS_configDAC(obj->cmpssHandle[cnt],
                (CMPSS_DACREF_VDDA | CMPSS_DACVAL_SYSCLK | CMPSS_DACSRC_SHDW));

        // 加载DAC - 高和低
        // 将DAC-H设置为允许的最大正向电流
        CMPSS_setDACValueHigh(obj->cmpssHandle[cnt], 1024);

        // 将DAC-L设置为允许的最大负向电流
        CMPSS_setDACValueLow(obj->cmpssHandle[cnt], 1024);

        // 数字滤波器设置 - 高侧
        // 设置采样之间的时间，最大值：1023，窗口中的采样数，
        // 最大值：31，推荐值：阈值 > 采样窗口/2
        // 初始化采样为滤波器输入值
        CMPSS_configFilterHigh(obj->cmpssHandle[cnt],
                       clkPrescale, sampWin, thresh);
        CMPSS_initFilterHigh(obj->cmpssHandle[cnt]);

        // 数字滤波器设置 - 低侧
        // 设置采样之间的时间，最大值：1023，窗口中的采样数，
        // 最大值：31，推荐值：阈值 > 采样窗口/2
        // 初始化采样为滤波器输入值
        CMPSS_configFilterLow(obj->cmpssHandle[cnt],
                      clkPrescale, sampWin, thresh);
        CMPSS_initFilterLow(obj->cmpssHandle[cnt]);

        // 清除锁存比较器事件的状态寄存器
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[cnt]);
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[cnt]);

        // 启用CMPSS
        CMPSS_enableModule(obj->cmpssHandle[cnt]);
    }

    DEVICE_DELAY_US(500);    // 延迟以允许CMPSS稳定

    return;
}

/**
 * @brief 设置CMPSS的OCP限制和数字滤波器参数
 * @details 配置CMPSS的DAC值，设置过流保护限制
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @param curHi 高侧电流限制值
 * @param curLo 低侧电流限制值
 * @return 无
 */
void HAL_setupCMPSS_DACValue(HAL_MTR_Handle handle,
                             uint16_t curHi, uint16_t curLo)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    uint16_t cnt;    // 循环计数器

    for(cnt = 0; cnt < 3; cnt++)
    {
        // 比较器参考
        // 将DAC-H设置为允许的最大正向电流
        CMPSS_setDACValueHigh(obj->cmpssHandle[cnt], curHi);

        // 将DAC-L设置为允许的最大负向电流
        CMPSS_setDACValueLow(obj->cmpssHandle[cnt], curLo);
    }

    return;
}

/**
 * @brief 配置中断
 * @details 设置EPWM中断源、注册中断处理函数、配置ADC中断
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @return 无
 */
void HAL_setupInterrupts(HAL_MTR_Handle handle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    // 启用EPWM1 INT以生成MotorControlISR
    #if(SAMPLING_METHOD == SINGLE_SAMPLING)
    // 选择在计数器为0时触发中断
    EPWM_setInterruptSource(obj->pwmHandle[0],
                            EPWM_INT_TBCTR_ZERO);
    #elif(SAMPLING_METHOD == DOUBLE_SAMPLING)
    // 选择在计数器为0或周期时触发中断
    EPWM_setInterruptSource(obj->pwmHandle[0],
                            EPWM_INT_TBCTR_ZERO_OR_PERIOD);
    #endif

    // 启用来自PWM模块的中断生成
    EPWM_enableInterrupt(obj->pwmHandle[0]);

    // 这需要设置为1以使INTFRC工作
    EPWM_setInterruptEventCount(obj->pwmHandle[0], 1);

    // 清除ePWM中断标志
    EPWM_clearEventTriggerInterruptFlag(obj->pwmHandle[0]);

    if(handle == &halMtr[MTR_1])
    {
        Interrupt_register(M1_INT_PWM, &motor1ControlISR);    // 注册电机1的PWM中断处理函数

        // 启用AdcA-ADCINT1-以帮助在读取结果数据之前验证转换完成
        ADC_setInterruptSource(M1_IW_ADC_BASE,
                               ADC_INT_NUMBER1, M1_IW_ADC_SOC_NUM);
        ADC_enableContinuousMode(M1_IW_ADC_BASE, ADC_INT_NUMBER1);
        ADC_enableInterrupt(M1_IW_ADC_BASE, ADC_INT_NUMBER1);
    }
    else if(handle == &halMtr[MTR_2])
    {
        Interrupt_register(M2_INT_PWM, &motor2ControlISR);    // 注册电机2的PWM中断处理函数

        // 启用AdcA-ADCINT1-以帮助在读取结果数据之前验证转换完成
        ADC_setInterruptSource(M2_IW_ADC_BASE,
                               ADC_INT_NUMBER2, M2_IW_ADC_SOC_NUM);
        ADC_enableContinuousMode(M2_IW_ADC_BASE, ADC_INT_NUMBER2);
        ADC_enableInterrupt(M2_IW_ADC_BASE, ADC_INT_NUMBER2);
    }

    return;
}

/**
 * @brief 配置CPU定时器
 * @details 设置CPU定时器的预分频器、周期、仿真模式等
 * @param base 定时器基地址
 * @param periodCount 定时器周期计数
 * @return 无
 */
void HAL_setupCpuTimer(uint32_t base, uint32_t periodCount)
{
    CPUTimer_setPreScaler(CPUTIMER0_BASE, 0);  // 分频比为1（SYSCLKOUT）
    CPUTimer_setPeriod(base, periodCount);    // 设置定时器周期
    CPUTimer_stopTimer(base);                // 停止定时器/重载/重启
    CPUTimer_setEmulationMode(base,
                              CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);    // 设置仿真模式
    CPUTimer_reloadTimerCounter(base);       // 用周期值重载计数器
    CPUTimer_resumeTimer(base);              // 恢复定时器运行

    return;
}

#ifdef DACOUT_EN
/**
 * @brief 配置DAC
 * @details 初始化DAC模块，设置参考电压、阴影值和输出模式
 * @param handle HAL句柄，指定要配置的HAL对象
 * @return 无
 */
void HAL_setupDACs(HAL_Handle handle)
{
    HAL_Obj *obj = (HAL_Obj *)handle;    // 将HAL句柄转换为具体对象指针

    //
    // DAC-A  ---> 旋转变压器载波激励
    // DAC-B  ---> 通用显示
    // DAC-C  ---> 通用显示
    //

    uint16_t cnt;    // 循环计数器

    for(cnt = 0; cnt < 3; cnt++)
    {
        // 设置DAC电压参考为VRefHi
        DAC_setReferenceVoltage(obj->dacHandle[cnt], DAC_REF_ADC_VREFHI);

        // 设置DAC阴影值寄存器
        DAC_setShadowValue(obj->dacHandle[cnt], 1024);

        //启用DAC输出
        DAC_enableOutput(obj->dacHandle[cnt]);
    }

    DAC_enableOutput(obj->dacHandle[0]);   // 启用DACA
    DAC_enableOutput(obj->dacHandle[1]);   // 启用DACB

    //
    // 旋转变压器载波激励信号附加初始化
    //

    // 仅在同步信号上启用值更改
    DAC_setLoadMode(obj->dacHandle[0], DAC_LOAD_PWMSYNC);

    // sync sel 5表示来自pwm 6的同步
    DAC_setPWMSyncSignal(obj->dacHandle[0], 5);

    return;
}
#endif // DACOUT_EN

/**
 * @brief 配置GPIO（通用输入/输出）引脚
 * @details 设置所有GPIO引脚的功能、方向、模式和属性，包括PWM、QEP、CAN、SPI、SCI等功能引脚
 * @param handle HAL句柄，指定要配置的HAL对象
 * @return 无
 */
void HAL_setupGPIOs(HAL_Handle handle)
{
    // 电机1的PWM引脚配置
    // GPIO0->EPWM1A->UH_M1（电机1的U相上桥臂）
    GPIO_setMasterCore(0, GPIO_CORE_CPU1);    // 设置GPIO0的主核为CPU1
    GPIO_setPinConfig(GPIO_0_EPWM1A);    // 配置GPIO0为EPWM1A功能
    GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);    // 设置GPIO0的引脚类型为标准类型

    // GPIO1->EPWM1B->UL_M1（电机1的U相下桥臂）
    GPIO_setMasterCore(1, GPIO_CORE_CPU1);    // 设置GPIO1的主核为CPU1
    GPIO_setPinConfig(GPIO_1_EPWM1B);    // 配置GPIO1为EPWM1B功能
    GPIO_setPadConfig(1, GPIO_PIN_TYPE_STD);    // 设置GPIO1的引脚类型为标准类型

    // GPIO2->EPWM2A->VH_M1（电机1的V相上桥臂）
    GPIO_setMasterCore(2, GPIO_CORE_CPU1);    // 设置GPIO2的主核为CPU1
    GPIO_setPinConfig(GPIO_2_EPWM2A);    // 配置GPIO2为EPWM2A功能
    GPIO_setPadConfig(2, GPIO_PIN_TYPE_STD);    // 设置GPIO2的引脚类型为标准类型

    // GPIO3->EPWM2B->VL_M1（电机1的V相下桥臂）
    GPIO_setMasterCore(3, GPIO_CORE_CPU1);    // 设置GPIO3的主核为CPU1
    GPIO_setPinConfig(GPIO_3_EPWM2B);    // 配置GPIO3为EPWM2B功能
    GPIO_setPadConfig(3, GPIO_PIN_TYPE_STD);    // 设置GPIO3的引脚类型为标准类型

    // GPIO4->EPWM3A->WH_M1（电机1的W相上桥臂）
    GPIO_setMasterCore(4, GPIO_CORE_CPU1);    // 设置GPIO4的主核为CPU1
    GPIO_setPinConfig(GPIO_4_EPWM3A);    // 配置GPIO4为EPWM3A功能
    GPIO_setPadConfig(4, GPIO_PIN_TYPE_STD);    // 设置GPIO4的引脚类型为标准类型

    // GPIO5->EPWM3B->WL_M1（电机1的W相下桥臂）
    GPIO_setMasterCore(5, GPIO_CORE_CPU1);    // 设置GPIO5的主核为CPU1
    GPIO_setPinConfig(GPIO_5_EPWM3B);    // 配置GPIO5为EPWM3B功能
    GPIO_setPadConfig(5, GPIO_PIN_TYPE_STD);    // 设置GPIO5的引脚类型为标准类型

    // 电机2的PWM引脚配置
    // GPIO6->EPWM4A->UH_M2（电机2的U相上桥臂）
    GPIO_setMasterCore(6, GPIO_CORE_CPU1);    // 设置GPIO6的主核为CPU1
    GPIO_setPinConfig(GPIO_6_EPWM4A);    // 配置GPIO6为EPWM4A功能
    GPIO_setPadConfig(6, GPIO_PIN_TYPE_STD);    // 设置GPIO6的引脚类型为标准类型

    // GPIO7->EPWM4B->UL_M2（电机2的U相下桥臂）
    GPIO_setMasterCore(7, GPIO_CORE_CPU1);    // 设置GPIO7的主核为CPU1
    GPIO_setPinConfig(GPIO_7_EPWM4B);    // 配置GPIO7为EPWM4B功能
    GPIO_setPadConfig(7, GPIO_PIN_TYPE_STD);    // 设置GPIO7的引脚类型为标准类型

    // GPIO8->EPWM5A->VH_M2（电机2的V相上桥臂）
    GPIO_setMasterCore(8, GPIO_CORE_CPU1);    // 设置GPIO8的主核为CPU1
    GPIO_setPinConfig(GPIO_8_EPWM5A);    // 配置GPIO8为EPWM5A功能
    GPIO_setPadConfig(8, GPIO_PIN_TYPE_STD);    // 设置GPIO8的引脚类型为标准类型

    // GPIO9->EPWM5B->VL_M2（电机2的V相下桥臂）
    GPIO_setMasterCore(9, GPIO_CORE_CPU1);    // 设置GPIO9的主核为CPU1
    GPIO_setPinConfig(GPIO_9_EPWM5B);    // 配置GPIO9为EPWM5B功能
    GPIO_setPadConfig(9, GPIO_PIN_TYPE_STD);    // 设置GPIO9的引脚类型为标准类型

    // GPIO10->EPWM6A->WH_M2（电机2的W相上桥臂）
    GPIO_setMasterCore(10, GPIO_CORE_CPU1);    // 设置GPIO10的主核为CPU1
    GPIO_setPinConfig(GPIO_10_EPWM6A);    // 配置GPIO10为EPWM6A功能
    GPIO_setPadConfig(10, GPIO_PIN_TYPE_STD);    // 设置GPIO10的引脚类型为标准类型

    // GPIO11->EPWM6B->WL_M2（电机2的W相下桥臂）
    GPIO_setMasterCore(11, GPIO_CORE_CPU1);    // 设置GPIO11的主核为CPU1
    GPIO_setPinConfig(GPIO_11_EPWM6B);    // 配置GPIO11为EPWM6B功能
    GPIO_setPadConfig(11, GPIO_PIN_TYPE_STD);    // 设置GPIO11的引脚类型为标准类型

    // CAN总线引脚配置
    // GPIO12 - CANTXB（CAN总线发送引脚）
    GPIO_setMasterCore(12, GPIO_CORE_CPU1);    // 设置GPIO12的主核为CPU1
    GPIO_setPinConfig(GPIO_12_CANTXB);    // 配置GPIO12为CANTXB功能
    GPIO_setDirectionMode(12, GPIO_DIR_MODE_IN);    // 设置GPIO12为输入模式
    GPIO_setPadConfig(12, GPIO_PIN_TYPE_STD);    // 设置GPIO12的引脚类型为标准类型

    // 故障检测引脚配置
    // GPIO14 - OT_M2（电机2的过热检测引脚）
    GPIO_setMasterCore(14, GPIO_CORE_CPU1);    // 设置GPIO14的主核为CPU1
    GPIO_setPinConfig(GPIO_14_GPIO14);    // 配置GPIO14为GPIO功能
    GPIO_setDirectionMode(14, GPIO_DIR_MODE_IN);    // 设置GPIO14为输入模式
    GPIO_setPadConfig(14, GPIO_PIN_TYPE_INVERT);    // 设置GPIO14的引脚类型为反相输入

    // 调试预留引脚
    // GPIO15 - Reserve for debug（预留用于调试）
    GPIO_setMasterCore(15, GPIO_CORE_CPU1);    // 设置GPIO15的主核为CPU1
    GPIO_setPinConfig(GPIO_15_GPIO15);    // 配置GPIO15为GPIO功能
    GPIO_setDirectionMode(15, GPIO_DIR_MODE_IN);    // 设置GPIO15为输入模式
    GPIO_setPadConfig(15, GPIO_PIN_TYPE_STD);    // 设置GPIO15的引脚类型为标准类型

    // // GPIO16 - Reserve for debug（预留用于调试）
    // GPIO_setMasterCore(16, GPIO_CORE_CPU1);    // 设置GPIO16的主核为CPU1
    // GPIO_setPinConfig(GPIO_16_GPIO16);    // 配置GPIO16为GPIO功能
    // GPIO_setDirectionMode(16, GPIO_DIR_MODE_IN);    // 设置GPIO16为输入模式
    // GPIO_setPadConfig(16, GPIO_PIN_TYPE_STD);    // 设置GPIO16的引脚类型为标准类型

    // // CAN总线引脚配置
    // // GPIO17 - CANRXB（CAN总线接收引脚）
    // GPIO_setMasterCore(17, GPIO_CORE_CPU1);    // 设置GPIO17的主核为CPU1
    // GPIO_setPinConfig(GPIO_17_CANRXB);    // 配置GPIO17为CANRXB功能
    // GPIO_setDirectionMode(17, GPIO_DIR_MODE_IN);    // 设置GPIO17为输入模式
    // GPIO_setPadConfig(17, GPIO_PIN_TYPE_STD);    // 设置GPIO17的引脚类型为标准类型

    // // 调试预留引脚
    // // GPIO18 reserve for debug（预留用于调试）
    // GPIO_setMasterCore(18, GPIO_CORE_CPU1);    // 设置GPIO18的主核为CPU1
    // GPIO_setPinConfig(GPIO_18_GPIO18);    // 配置GPIO18为GPIO功能
    // GPIO_setPadConfig(18, GPIO_PIN_TYPE_STD);    // 设置GPIO18的引脚类型为标准类型
    // GPIO_setDirectionMode(18, GPIO_DIR_MODE_OUT);    // 设置GPIO18为输出模式

        // GPIO16 - Reserve for debug（预留用于调试）
    GPIO_setMasterCore(16, GPIO_CORE_CPU1);    // 设置GPIO16的主核为CPU1
    GPIO_setPinConfig(GPIO_16_GPIO16);    // 配置GPIO16为GPIO功能
    GPIO_setDirectionMode(16, GPIO_DIR_MODE_IN);    // 设置GPIO16为输入模式（UVW_U）
    GPIO_setPadConfig(16, GPIO_PIN_TYPE_STD);    // 设置GPIO16的引脚类型为标准类型




    
    // GPIO17 - Reserve for debug / UVW_V（原示例为 CANRXB，已改为 GPIO）
    GPIO_setMasterCore(17, GPIO_CORE_CPU1);    // 设置GPIO17的主核为CPU1
    GPIO_setPinConfig(GPIO_17_GPIO17);    // 配置GPIO17为GPIO功能（用于 UVW_V）
    GPIO_setDirectionMode(17, GPIO_DIR_MODE_IN);    // 设置GPIO17为输入模式（UVW_V）
    GPIO_setPadConfig(17, GPIO_PIN_TYPE_STD);    // 设置GPIO17的引脚类型为标准类型

    // GPIO18 - Reserve for debug（用于 UVW_W）
    GPIO_setMasterCore(18, GPIO_CORE_CPU1);    // 设置GPIO18的主核为CPU1
    GPIO_setPinConfig(GPIO_18_GPIO18);    // 配置GPIO18为GPIO功能（用于 UVW_W）
    GPIO_setPadConfig(18, GPIO_PIN_TYPE_STD);    // 设置GPIO18的引脚类型为标准类型
    GPIO_setDirectionMode(18, GPIO_DIR_MODE_IN);    // 设置GPIO18为输入模式（UVW_W）

    // 故障检测引脚配置
    // GPIO19 - Input->nFault_M1（电机1的故障输入引脚）
    GPIO_setMasterCore(19, GPIO_CORE_CPU1);    // 设置GPIO19的主核为CPU1
    GPIO_setPinConfig(GPIO_19_GPIO19);    // 配置GPIO19为GPIO功能
    GPIO_setDirectionMode(19, GPIO_DIR_MODE_IN);    // 设置GPIO19为输入模式
    GPIO_setPadConfig(19, GPIO_PIN_TYPE_STD);    // 设置GPIO19的引脚类型为标准类型

    // QEP（正交编码器）引脚配置
    // GPIO20->QEP1A_M1（电机1的编码器A相）
    GPIO_setMasterCore(20, GPIO_CORE_CPU1);    // 设置GPIO20的主核为CPU1
    GPIO_setPinConfig(GPIO_20_EQEP1A);    // 配置GPIO20为EQEP1A功能
    GPIO_setDirectionMode(20, GPIO_DIR_MODE_IN);    // 设置GPIO20为输入模式
    GPIO_setPadConfig(20, GPIO_PIN_TYPE_STD);    // 设置GPIO20的引脚类型为标准类型
    GPIO_setQualificationMode(20, GPIO_QUAL_3SAMPLE);    // 设置GPIO20的资格模式为3采样

    // GPIO21->QEP1B_M1（电机1的编码器B相）
    GPIO_setMasterCore(21, GPIO_CORE_CPU1);    // 设置GPIO21的主核为CPU1
    GPIO_setPinConfig(GPIO_21_EQEP1B);    // 配置GPIO21为EQEP1B功能
    GPIO_setDirectionMode(21, GPIO_DIR_MODE_IN);    // 设置GPIO21为输入模式
    GPIO_setPadConfig(21, GPIO_PIN_TYPE_STD);    // 设置GPIO21的引脚类型为标准类型
    GPIO_setQualificationMode(21, GPIO_QUAL_3SAMPLE);    // 设置GPIO21的资格模式为3采样

    // 故障检测引脚配置
    // GPIO24 - OT_M1（电机1的过热检测引脚）
    GPIO_setMasterCore(24, GPIO_CORE_CPU1);    // 设置GPIO24的主核为CPU1
    GPIO_setPinConfig(GPIO_24_GPIO24);    // 配置GPIO24为GPIO功能
    GPIO_setDirectionMode(24, GPIO_DIR_MODE_IN);    // 设置GPIO24为输入模式
    GPIO_setPadConfig(24, GPIO_PIN_TYPE_INVERT);    // 设置GPIO24的引脚类型为反相输入

    // 调试预留引脚
    // GPIO25 - Reserve for debug（预留用于调试）
    GPIO_setMasterCore(25, GPIO_CORE_CPU1);    // 设置GPIO25的主核为CPU1
    GPIO_setPinConfig(GPIO_25_GPIO25);    // 配置GPIO25为GPIO功能
    GPIO_setDirectionMode(25, GPIO_DIR_MODE_IN);    // 设置GPIO25为输入模式
    GPIO_setPadConfig(25, GPIO_PIN_TYPE_STD);    // 设置GPIO25的引脚类型为标准类型

    // 电机控制引脚配置
    // GPIO26 - EN_GATE_M2（电机2的栅极使能引脚）
    GPIO_setMasterCore(26, GPIO_CORE_CPU1);    // 设置GPIO26的主核为CPU1
    GPIO_setPinConfig(GPIO_26_GPIO26);    // 配置GPIO26为GPIO功能
    GPIO_writePin(26, 1);    // 设置GPIO26的输出为高电平（启用栅极）
    GPIO_setDirectionMode(26, GPIO_DIR_MODE_OUT);    // 设置GPIO26为输出模式
    GPIO_setPadConfig(26, GPIO_PIN_TYPE_PULLUP);    // 设置GPIO26的引脚类型为上拉类型

    // GPIO27 - WAKE_M2（电机2的唤醒引脚）
    GPIO_setMasterCore(27, GPIO_CORE_CPU1);    // 设置GPIO27的主核为CPU1
    GPIO_setPinConfig(GPIO_27_GPIO27);    // 配置GPIO27为GPIO功能
    GPIO_setDirectionMode(27, GPIO_DIR_MODE_IN);    // 设置GPIO27为输入模式
    GPIO_setPadConfig(27, GPIO_PIN_TYPE_STD);    // 设置GPIO27的引脚类型为标准类型

    // LED指示灯引脚配置
    // GPIO31->LED（LED指示灯）
    GPIO_setMasterCore(31, GPIO_CORE_CPU1);    // 设置GPIO31的主核为CPU1
    GPIO_setPinConfig(GPIO_31_GPIO31);    // 配置GPIO31为GPIO功能
    GPIO_writePin(31, 1);    // 设置GPIO31的输出为高电平（关闭LED）
    GPIO_setDirectionMode(31, GPIO_DIR_MODE_OUT);    // 设置GPIO31为输出模式
    GPIO_setPadConfig(31, GPIO_PIN_TYPE_STD);    // 设置GPIO31的引脚类型为标准类型

    // GPIO34->LED（LED指示灯）
    GPIO_setMasterCore(34, GPIO_CORE_CPU1);    // 设置GPIO34的主核为CPU1
    GPIO_setPinConfig(GPIO_34_GPIO34);    // 配置GPIO34为GPIO功能
    GPIO_writePin(34, 1);    // 设置GPIO34的输出为高电平（关闭LED）
    GPIO_setDirectionMode(34, GPIO_DIR_MODE_OUT);    // 设置GPIO34为输出模式
    GPIO_setPadConfig(34, GPIO_PIN_TYPE_STD);    // 设置GPIO34的引脚类型为标准类型

    // I2C总线引脚配置
    // GPIO40->SDAB（I2C总线数据引脚）
    GPIO_setMasterCore(40, GPIO_CORE_CPU1);    // 设置GPIO40的主核为CPU1
    GPIO_setPinConfig(GPIO_40_SDAB);    // 配置GPIO40为SDAB功能
    GPIO_setDirectionMode(40, GPIO_DIR_MODE_IN);    // 设置GPIO40为输入模式
    GPIO_setPadConfig(40, GPIO_PIN_TYPE_STD);    // 设置GPIO40的引脚类型为标准类型

    // GPIO41->SCLB（I2C总线时钟引脚）
    GPIO_setMasterCore(41, GPIO_CORE_CPU1);    // 设置GPIO41的主核为CPU1
    GPIO_setPinConfig(GPIO_41_SCLB);    // 配置GPIO41为SCLB功能
    GPIO_setDirectionMode(41, GPIO_DIR_MODE_IN);    // 设置GPIO41为输入模式
    GPIO_setPadConfig(41, GPIO_PIN_TYPE_STD);    // 设置GPIO41的引脚类型为标准类型

    // SCI（串口）引脚配置
    // GPIO42->SCITXDA（SCI A发送引脚）
    GPIO_setMasterCore(42, GPIO_CORE_CPU1);    // 设置GPIO42的主核为CPU1
    GPIO_setPinConfig(GPIO_42_SCITXDA);    // 配置GPIO42为SCITXDA功能
    GPIO_setDirectionMode(42, GPIO_DIR_MODE_IN);    // 设置GPIO42为输入模式
    GPIO_setPadConfig(42, GPIO_PIN_TYPE_STD);    // 设置GPIO42的引脚类型为标准类型

    // GPIO43->SCIRXDA（SCI A接收引脚）
    GPIO_setMasterCore(43, GPIO_CORE_CPU1);    // 设置GPIO43的主核为CPU1
    GPIO_setPinConfig(GPIO_43_SCIRXDA);    // 配置GPIO43为SCIRXDA功能
    GPIO_setDirectionMode(43, GPIO_DIR_MODE_IN);    // 设置GPIO43为输入模式
    GPIO_setPadConfig(43, GPIO_PIN_TYPE_STD);    // 设置GPIO43的引脚类型为标准类型

    // GPIO54/GPIO55 的 SCIB 复用与初始化由 motorboard 模块统一管理
    // 这里不再重复配置，避免双处初始化带来的歧义

    // SCI（串口）引脚配置
    // GPIO56->SCITXDC（SCI C发送引脚）
    GPIO_setMasterCore(56, GPIO_CORE_CPU1);    // 设置GPIO56的主核为CPU1
    GPIO_setPinConfig(GPIO_56_SCITXDC);    // 配置GPIO56为SCITXDC功能
    GPIO_setDirectionMode(56, GPIO_DIR_MODE_OUT);    // 设置GPIO56为输出模式
    GPIO_setPadConfig(56, GPIO_PIN_TYPE_STD);    // 设置GPIO56的引脚类型为标准类型

    // 电机2的QEP（正交编码器）索引引脚配置
    // GPIO57->EQEP2I_M2（电机2的编码器索引相）
    GPIO_setMasterCore(57, GPIO_CORE_CPU1);    // 设置GPIO57的主核为CPU1
    GPIO_setPinConfig(GPIO_57_EQEP2I);    // 配置GPIO57为EQEP2I功能
    GPIO_setDirectionMode(57, GPIO_DIR_MODE_IN);    // 设置GPIO57为输入模式
    GPIO_setPadConfig(57, GPIO_PIN_TYPE_STD);    // 设置GPIO57的引脚类型为标准类型
    GPIO_setQualificationMode(57, GPIO_QUAL_3SAMPLE);    // 设置GPIO57的资格模式为3采样

    // 电机1的SPI引脚配置
    // GPIO58->SPISIMOA_M1（电机1的SPI发送引脚）
    GPIO_setMasterCore(58, GPIO_CORE_CPU1);    // 设置GPIO58的主核为CPU1
    GPIO_setPinConfig(GPIO_58_SPISIMOA);    // 配置GPIO58为SPISIMOA功能
    GPIO_setDirectionMode(58, GPIO_DIR_MODE_OUT);    // 设置GPIO58为输出模式
    GPIO_setPadConfig(58, GPIO_PIN_TYPE_STD);    // 设置GPIO58的引脚类型为标准类型

    // GPIO59->SPISOMIA_M1（电机1的SPI接收引脚）
    GPIO_setMasterCore(59, GPIO_CORE_CPU1);    // 设置GPIO59的主核为CPU1
    GPIO_setPinConfig(GPIO_59_SPISOMIA);    // 配置GPIO59为SPISOMIA功能
    GPIO_setDirectionMode(59, GPIO_DIR_MODE_IN);    // 设置GPIO59为输入模式
    GPIO_setPadConfig(59, GPIO_PIN_TYPE_STD);    // 设置GPIO59的引脚类型为标准类型

    // GPIO60->SPICLKA_M1（电机1的SPI时钟引脚）
    GPIO_setMasterCore(60, GPIO_CORE_CPU1);    // 设置GPIO60的主核为CPU1
    GPIO_setPinConfig(GPIO_60_SPICLKA);    // 配置GPIO60为SPICLKA功能
    GPIO_setDirectionMode(60, GPIO_DIR_MODE_OUT);    // 设置GPIO60为输出模式
    GPIO_setPadConfig(60, GPIO_PIN_TYPE_STD);    // 设置GPIO60的引脚类型为标准类型

    // GPIO61->SPISTEA_M1（电机1的SPI片选引脚）
    GPIO_setMasterCore(61, GPIO_CORE_CPU1);    // 设置GPIO61的主核为CPU1
    GPIO_setPinConfig(GPIO_61_SPISTEA);    // 配置GPIO61为SPISTEA功能
    GPIO_setDirectionMode(61, GPIO_DIR_MODE_OUT);    // 设置GPIO61为输出模式
    GPIO_setPadConfig(61, GPIO_PIN_TYPE_STD);    // 设置GPIO61的引脚类型为标准类型

    // 电机2的SPI引脚配置
    // GPIO63->SPISIMOB_M2（电机2的SPI发送引脚）
    GPIO_setMasterCore(63, GPIO_CORE_CPU1);    // 设置GPIO63的主核为CPU1
    GPIO_setPinConfig(GPIO_63_SPISIMOB);    // 配置GPIO63为SPISIMOB功能
    GPIO_setDirectionMode(63, GPIO_DIR_MODE_OUT);    // 设置GPIO63为输出模式
    GPIO_setPadConfig(63, GPIO_PIN_TYPE_STD);    // 设置GPIO63的引脚类型为标准类型

    // GPIO64->SPISOMIB_M2（电机2的SPI接收引脚）
    GPIO_setMasterCore(64, GPIO_CORE_CPU1);    // 设置GPIO64的主核为CPU1
    GPIO_setPinConfig(GPIO_64_SPISOMIB);    // 配置GPIO64为SPISOMIB功能
    GPIO_setDirectionMode(64, GPIO_DIR_MODE_IN);    // 设置GPIO64为输入模式
    GPIO_setPadConfig(64, GPIO_PIN_TYPE_STD);    // 设置GPIO64的引脚类型为标准类型

    // GPIO65->SPICLKB_M2（电机2的SPI时钟引脚）
    GPIO_setMasterCore(65, GPIO_CORE_CPU1);    // 设置GPIO65的主核为CPU1
    GPIO_setPinConfig(GPIO_65_SPICLKB);    // 配置GPIO65为SPICLKB功能
    GPIO_setDirectionMode(65, GPIO_DIR_MODE_OUT);    // 设置GPIO65为输出模式
    GPIO_setPadConfig(65, GPIO_PIN_TYPE_STD);    // 设置GPIO65的引脚类型为标准类型

    // GPIO66->SPISTEB（SPI片选引脚）
    GPIO_setMasterCore(66, GPIO_CORE_CPU1);    // 设置GPIO66的主核为CPU1
    GPIO_setPinConfig(GPIO_66_SPISTEB);    // 配置GPIO66为SPISTEB功能
    GPIO_setDirectionMode(66, GPIO_DIR_MODE_OUT);    // 设置GPIO66为输出模式
    GPIO_setPadConfig(66, GPIO_PIN_TYPE_STD);    // 设置GPIO66的引脚类型为标准类型

    // 参考电压引脚配置
    // GPIO94->Vref（参考电压输入）
    GPIO_setMasterCore(94, GPIO_CORE_CPU1);    // 设置GPIO94的主核为CPU1
    GPIO_setPinConfig(GPIO_94_GPIO94);    // 配置GPIO94为GPIO功能
    GPIO_setDirectionMode(94, GPIO_DIR_MODE_IN);    // 设置GPIO94为输入模式
    GPIO_setPadConfig(94, GPIO_PIN_TYPE_STD);    // 设置GPIO94的引脚类型为标准类型

    // 电机1的QEP（正交编码器）索引引脚配置
    // GPIO23->QEP1I（电机1的编码器索引相）
    GPIO_setMasterCore(23, GPIO_CORE_CPU1);    // 设置GPIO23的主核为CPU1
    GPIO_setPinConfig(GPIO_23_EQEP1I);    // 配置GPIO23为EQEP1I功能
    GPIO_setDirectionMode(23, GPIO_DIR_MODE_IN);    // 设置GPIO23为输入模式
    GPIO_setPadConfig(23, GPIO_PIN_TYPE_STD);    // 设置GPIO23的引脚类型为标准类型
    GPIO_setQualificationMode(23, GPIO_QUAL_3SAMPLE);    // 设置GPIO23的资格模式为3采样

    // 参考电压引脚配置
    // GPIO111->Vref（参考电压输入）
    GPIO_setMasterCore(111, GPIO_CORE_CPU1);    // 设置GPIO111的主核为CPU1
    GPIO_setPinConfig(GPIO_111_GPIO111);    // 配置GPIO111为GPIO功能
    GPIO_setDirectionMode(111, GPIO_DIR_MODE_IN);    // 设置GPIO111为输入模式
    GPIO_setPadConfig(111, GPIO_PIN_TYPE_STD);    // 设置GPIO111的引脚类型为标准类型

    // 电机1的控制引脚配置
    // GPIO124->EN_GATE_M1（电机1的栅极使能引脚）
    GPIO_setMasterCore(124, GPIO_CORE_CPU1);    // 设置GPIO124的主核为CPU1
    GPIO_setPinConfig(GPIO_124_GPIO124);    // 配置GPIO124为GPIO功能
    GPIO_writePin(124, 1);    // 设置GPIO124的输出为高电平（启用栅极）
    GPIO_setDirectionMode(124, GPIO_DIR_MODE_OUT);    // 设置GPIO124为输出模式
    GPIO_setPadConfig(124, GPIO_PIN_TYPE_PULLUP);    // 设置GPIO124的引脚类型为上拉类型

    // GPIO125->WAKE_M1（电机1的唤醒引脚）
    GPIO_setMasterCore(125, GPIO_CORE_CPU1);    // 设置GPIO125的主核为CPU1
    GPIO_setPinConfig(GPIO_125_GPIO125);    // 配置GPIO125为GPIO功能
    GPIO_setDirectionMode(125, GPIO_DIR_MODE_IN);    // 设置GPIO125为输入模式
    GPIO_setPadConfig(125, GPIO_PIN_TYPE_STD);    // 设置GPIO125的引脚类型为标准类型

    // 故障检测引脚配置
    // GPIO139->nFault_M2（电机2的故障输入引脚）
    GPIO_setMasterCore(139, GPIO_CORE_CPU1);    // 设置GPIO139的主核为CPU1
    GPIO_setPinConfig(GPIO_139_GPIO139);    // 配置GPIO139为GPIO功能
    GPIO_setDirectionMode(139, GPIO_DIR_MODE_IN);    // 设置GPIO139为输入模式
    GPIO_setPadConfig(139, GPIO_PIN_TYPE_STD);    // 设置GPIO139的引脚类型为标准类型

    // 通用GPIO引脚配置
    // GPIO153->GPIO（通用GPIO输入）
    GPIO_setMasterCore(153, GPIO_CORE_CPU1);    // 设置GPIO153的主核为CPU1
    GPIO_setPinConfig(GPIO_153_GPIO153);    // 配置GPIO153为GPIO功能
    GPIO_setDirectionMode(153, GPIO_DIR_MODE_IN);    // 设置GPIO153为输入模式
    GPIO_setPadConfig(153, GPIO_PIN_TYPE_STD);    // 设置GPIO153的引脚类型为标准类型

    // GPIO154->GPIO（通用GPIO输入）
    GPIO_setMasterCore(154, GPIO_CORE_CPU1);    // 设置GPIO154的主核为CPU1
    GPIO_setPinConfig(GPIO_154_GPIO154);    // 配置GPIO154为GPIO功能
    GPIO_setDirectionMode(154, GPIO_DIR_MODE_IN);    // 设置GPIO154为输入模式
    GPIO_setPadConfig(154, GPIO_PIN_TYPE_STD);    // 设置GPIO154的引脚类型为标准类型

    // GPIO155->GPIO（通用GPIO输入）
    GPIO_setMasterCore(155, GPIO_CORE_CPU1);    // 设置GPIO155的主核为CPU1
    GPIO_setPinConfig(GPIO_155_GPIO155);    // 配置GPIO155为GPIO功能
    GPIO_setDirectionMode(155, GPIO_DIR_MODE_IN);    // 设置GPIO155为输入模式
    GPIO_setPadConfig(155, GPIO_PIN_TYPE_STD);    // 设置GPIO155的引脚类型为标准类型

    // GPIO156->GPIO（通用GPIO输入）
    GPIO_setMasterCore(156, GPIO_CORE_CPU1);    // 设置GPIO156的主核为CPU1
    GPIO_setPinConfig(GPIO_156_GPIO156);    // 配置GPIO156为GPIO功能
    GPIO_setDirectionMode(156, GPIO_DIR_MODE_IN);    // 设置GPIO156为输入模式
    GPIO_setPadConfig(156, GPIO_PIN_TYPE_STD);    // 设置GPIO156的引脚类型为标准类型

    // DAC相关的PWM引脚配置
    // GPIO157->EPWM7A-DAC1（DAC1的EPWM7A功能）
    GPIO_setMasterCore(157, GPIO_CORE_CPU1);    // 设置GPIO157的主核为CPU1
    GPIO_setPinConfig(GPIO_157_EPWM7A);    // 配置GPIO157为EPWM7A功能
    GPIO_setDirectionMode(157, GPIO_DIR_MODE_OUT);    // 设置GPIO157为输出模式
    GPIO_setPadConfig(157, GPIO_PIN_TYPE_STD);    // 设置GPIO157的引脚类型为标准类型

    // GPIO158->EPWM7B-DAC2（DAC2的EPWM7B功能）
    GPIO_setMasterCore(158, GPIO_CORE_CPU1);    // 设置GPIO158的主核为CPU1
    GPIO_setPinConfig(GPIO_158_EPWM7B);    // 配置GPIO158为EPWM7B功能
    GPIO_setDirectionMode(158, GPIO_DIR_MODE_OUT);    // 设置GPIO158为输出模式
    GPIO_setPadConfig(158, GPIO_PIN_TYPE_STD);    // 设置GPIO158的引脚类型为标准类型

    // GPIO159->EPWM8A-DAC3（DAC3的EPWM8A功能）
    GPIO_setMasterCore(159, GPIO_CORE_CPU1);    // 设置GPIO159的主核为CPU1
    GPIO_setPinConfig(GPIO_159_EPWM8A);    // 配置GPIO159为EPWM8A功能
    GPIO_setDirectionMode(159, GPIO_DIR_MODE_OUT);    // 设置GPIO159为输出模式
    GPIO_setPadConfig(159, GPIO_PIN_TYPE_STD);    // 设置GPIO159的引脚类型为标准类型

    // GPIO160->EPWM8B-DAC4（DAC4的EPWM8B功能）
    GPIO_setMasterCore(160, GPIO_CORE_CPU1);    // 设置GPIO160的主核为CPU1
    GPIO_setPinConfig(GPIO_160_EPWM8B);    // 配置GPIO160为EPWM8B功能
    GPIO_setDirectionMode(160, GPIO_DIR_MODE_OUT);    // 设置GPIO160为输出模式
    GPIO_setPadConfig(160, GPIO_PIN_TYPE_STD);    // 设置GPIO160的引脚类型为标准类型

    return;
}



/**
 * @brief 配置电机的PWM（脉宽调制器）
 * @details 设置PWM时基、计数器比较、动作限定器、死区等参数
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @return 无
 */
void HAL_setupMotorPWMs(HAL_MTR_Handle handle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    uint16_t  cnt;    // 循环计数器
    uint16_t  halfPeriod = 0;    // 半周期计数

    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);    // 禁用TBCLKSYNC外设时钟

    // *****************************************
    // 逆变器PWM配置 - PWM 1, 2, 3
    // *****************************************
    for(cnt = 0; cnt < 3; cnt++)
    {
        // 时基子模块寄存器
        // 设置立即加载
        EPWM_setPeriodLoadMode(obj->pwmHandle[cnt], EPWM_PERIOD_DIRECT_LOAD);
        EPWM_setTimeBasePeriod(obj->pwmHandle[cnt], 0);
        EPWM_setPhaseShift(obj->pwmHandle[cnt], 0);
        EPWM_setTimeBaseCounter(obj->pwmHandle[cnt], 0);
        EPWM_setTimeBaseCounterMode(obj->pwmHandle[cnt],
                                    EPWM_COUNTER_MODE_UP_DOWN);    // 设置为上下计数模式

        EPWM_setClockPrescaler(obj->pwmHandle[cnt], EPWM_CLOCK_DIVIDER_1,
                               EPWM_HSCLOCK_DIVIDER_1);    // 设置时钟预分频器

        // 计数器比较子模块寄存器
        // 初始占空比设为0%
        EPWM_setCounterCompareValue(obj->pwmHandle[cnt],
                                    EPWM_COUNTER_COMPARE_A, 0);
        EPWM_setCounterCompareShadowLoadMode(obj->pwmHandle[cnt],
                                             EPWM_COUNTER_COMPARE_A,
                                             EPWM_COMP_LOAD_ON_CNTR_ZERO);    // 在计数器为零时加载

        // 动作限定器子模块寄存器
        EPWM_setActionQualifierActionComplete(obj->pwmHandle[cnt],
                                              EPWM_AQ_OUTPUT_A,
                (EPWM_ActionQualifierEventAction)(EPWM_AQ_OUTPUT_LOW_UP_CMPA |
                                                EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA));    // 设置动作限定器动作

        // 高电平互补PWM - 设置死区
        EPWM_setRisingEdgeDeadBandDelayInput(obj->pwmHandle[cnt],
                                             EPWM_DB_INPUT_EPWMA);
        EPWM_setFallingEdgeDeadBandDelayInput(obj->pwmHandle[cnt],
                                              EPWM_DB_INPUT_EPWMA);

        EPWM_setDeadBandDelayMode(obj->pwmHandle[cnt], EPWM_DB_RED, true);
        EPWM_setDeadBandDelayMode(obj->pwmHandle[cnt], EPWM_DB_FED, true);
        EPWM_setDeadBandDelayPolarity(obj->pwmHandle[cnt], EPWM_DB_RED,
                                      EPWM_DB_POLARITY_ACTIVE_HIGH);
        EPWM_setDeadBandDelayPolarity(obj->pwmHandle[cnt],
                                      EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW);

        EPWM_setRisingEdgeDelayCount(obj->pwmHandle[cnt], EPWM_DB_DELAY_RISE);
        EPWM_setFallingEdgeDelayCount(obj->pwmHandle[cnt], EPWM_DB_DELAY_FALL);

        EPWM_enablePhaseShiftLoad(obj->pwmHandle[cnt]);

        EPWM_setCountModeAfterSync(obj->pwmHandle[cnt],
                                   EPWM_COUNT_MODE_UP_AFTER_SYNC);    // 同步后的计数模式
        // 配置同步
        EPWM_setSyncOutPulseMode(obj->pwmHandle[cnt],
                                 EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN);
    }

    //EPWM1->EWPM4
    SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_EPWM4,
                              SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);    // 设置EPWM4的同步输入源为EPWM1的同步输出

    if(handle == &halMtr[MTR_1])
    {
        halfPeriod = M1_INV_PWM_TICKS / 2;     // 100MHz EPWMCLK

        EPWM_disablePhaseShiftLoad(obj->pwmHandle[0]);

        // 同步"下游"
        EPWM_setSyncOutPulseMode(obj->pwmHandle[0],
                                      EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO);

        EPWM_setPhaseShift(obj->pwmHandle[0], 0);
        EPWM_setPhaseShift(obj->pwmHandle[1], 2);
        EPWM_setPhaseShift(obj->pwmHandle[2], 4);

        EPWM_setTimeBasePeriod(obj->pwmHandle[0], halfPeriod);
        EPWM_setTimeBasePeriod(obj->pwmHandle[1], halfPeriod);
        EPWM_setTimeBasePeriod(obj->pwmHandle[2], halfPeriod);
    }
    else if(handle == &halMtr[MTR_2])
    {
        halfPeriod = M2_INV_PWM_TICKS/2;     // 100MHz EPWMCLK

        EPWM_setPhaseShift(obj->pwmHandle[0], ((halfPeriod>>1) + 0));
        EPWM_setPhaseShift(obj->pwmHandle[1], ((halfPeriod>>1) + 2));
        EPWM_setPhaseShift(obj->pwmHandle[2], ((halfPeriod>>1) + 4));

        EPWM_setTimeBasePeriod(obj->pwmHandle[0], halfPeriod);
        EPWM_setTimeBasePeriod(obj->pwmHandle[1], halfPeriod);
        EPWM_setTimeBasePeriod(obj->pwmHandle[2], halfPeriod);
    }

    // 设置EPWM到ADC的链接
    // EPWM1/EPWM4 - 逆变器电流以采样频率
    //               (@ PRD 或 @ (PRD&ZRO) )
#if(SAMPLING_METHOD == SINGLE_SAMPLING)
    // 选择在计数器为prd时触发SOC
    EPWM_setADCTriggerSource(obj->pwmHandle[0],
                             EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO);
#elif(SAMPLING_METHOD == DOUBLE_SAMPLING)
    // 选择在计数器为0或prd时触发SOC
    EPWM_setADCTriggerSource(obj->pwmHandle[0], EPWM_SOC_A,
                             EPWM_SOC_TBCTR_ZERO_OR_PERIOD);
#endif

    // 在第一个事件时生成脉冲
    EPWM_setADCTriggerEventPrescale(obj->pwmHandle[0], EPWM_SOC_A, 1);

    // 启用A组的SOC
    EPWM_enableADCTrigger(obj->pwmHandle[0], EPWM_SOC_A);

    return;
}

/**
 * @brief 配置电机过流保护
 * @details 设置电流限制、配置比较器、设置故障保护逻辑
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @param currentLimit 电流限制值
 * @return 无
 */
void HAL_setupMotorFaultProtection(HAL_MTR_Handle handle,
                                   const float32_t currentLimit)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    uint16_t  cnt;    // 循环计数器

    EPWM_DigitalCompareTripInput tripInSet = EPWM_DC_TRIP_TRIPIN4;

    // 高和低比较事件触发
    uint16_t curHi = 0;
    uint16_t curLo = 0;

    if(handle == &halMtr[MTR_1])
    {
        tripInSet = EPWM_DC_TRIP_TRIPIN4;

        curHi = 2048 + M1_CURRENT_SCALE(currentLimit);
        curLo = 2048 - M1_CURRENT_SCALE(currentLimit);

        //选择GPIO24作为INPUTXBAR1
        XBAR_setInputPin(M1_XBAR_INPUT_NUM, M1_XBAR_INPUT_GPIO);

        // 配置TRIP 4以OR来自比较器1和3的高和低触发，先清除所有内容
        EALLOW;
        HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP4MUX0TO15CFG) = 0;
        HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP4MUX16TO31CFG) = 0;
        EDIS;

        // 启用Muxes用于CMPSS1H和1L的或输入，Mux0x的mux
        //cmpss1 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L);

        //cmpss3 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L);

        //cmpss6 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L);

        // 首先禁用所有muxes
        XBAR_disableEPWMMux(XBAR_TRIP4, 0xFFFF);

        // 仅使用CMPSS作为TRIP4源，避免外部INPUTXBAR悬空引起误触发
        XBAR_enableEPWMMux(XBAR_TRIP4, XBAR_MUX00 | XBAR_MUX04 | XBAR_MUX10 |
                           0);
    }
    else if(handle == &halMtr[MTR_2])
    {
        curHi = 2048 + M2_CURRENT_SCALE(currentLimit);
        curLo = 2048 - M2_CURRENT_SCALE(currentLimit);

        tripInSet = EPWM_DC_TRIP_TRIPIN5;

        //Select GPIO14 as INPUTXBAR3
        XBAR_setInputPin(M2_XBAR_INPUT_NUM, M2_XBAR_INPUT_GPIO);

        // 配置TRIP 5以OR来自比较器5、5和2的高和低触发，先清除所有内容
        EALLOW;
        HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP5MUX0TO15CFG) = 0;
        HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP5MUX16TO31CFG) = 0;
        EDIS;

        // 启用Muxes用于CMPSS1H和1L的或输入，Mux0x的mux
        //cmpss5 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP5, XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L);

        //cmpss5 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP5, XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L);

        //cmpss2 - tripH或tripL
        XBAR_setEPWMMuxConfig(XBAR_TRIP5, XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L);

        // 首先禁用所有muxes
        XBAR_disableEPWMMux(XBAR_TRIP5, 0xFFFF);

        // 仅使用CMPSS作为TRIP5源，避免外部INPUTXBAR悬空引起误触发
        XBAR_enableEPWMMux(XBAR_TRIP5, XBAR_MUX08 | XBAR_MUX08 | XBAR_MUX02 |
                           0);
    }

    //
    // 配置电机逆变器相的TRIP
    //
    for(cnt = 0; cnt < 3; cnt++)
    {
        // 比较器参考
        // 将DAC-H设置为允许的最大正向电流
        CMPSS_setDACValueHigh(obj->cmpssHandle[cnt], curHi);

        // 将DAC-L设置为允许的最大负向电流
        CMPSS_setDACValueLow(obj->cmpssHandle[cnt], curLo);

        //Trip 4是DCAHCOMPSEL的输入
        EPWM_selectDigitalCompareTripInput(obj->pwmHandle[cnt],
                                           tripInSet,
                                           EPWM_DC_TYPE_DCAH);

        EPWM_setTripZoneDigitalCompareEventCondition(obj->pwmHandle[cnt],
                                                     EPWM_TZ_DC_OUTPUT_A1,
                                                     EPWM_TZ_EVENT_DCXH_HIGH);

        EPWM_setDigitalCompareEventSource(obj->pwmHandle[cnt], EPWM_DC_MODULE_A,
                                          EPWM_DC_EVENT_1,
                                          EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL);

        EPWM_setDigitalCompareEventSyncMode(obj->pwmHandle[cnt],
                                            EPWM_DC_MODULE_A,
                                            EPWM_DC_EVENT_1,
                                            EPWM_DC_EVENT_INPUT_NOT_SYNCED);

        EPWM_enableTripZoneSignals(obj->pwmHandle[cnt], EPWM_TZ_SIGNAL_DCAEVT1);

        // 仿真器停止
        EPWM_enableTripZoneSignals(obj->pwmHandle[cnt], EPWM_TZ_SIGNAL_CBC6);

        // 我们希望OST/CBC事件做什么？
        // TZA事件可以强制EPWMxA
        // TZB事件可以强制EPWMxB

#if((BUILDLEVEL == FCL_LEVEL1) || (BUILDLEVEL == FCL_LEVEL2) || (BUILDLEVEL == FCL_LEVEL3) || (BUILDLEVEL == FCL_LEVEL4))
        // LEVEL1~LEVEL4 调试：设置为 DISABLE，TZ事件不影响PWM输出
        // LEVEL4 的 CMPSS 阈值基于偏移校准前的 ADC 值，此时误触发 OST 会将
        // EPWM1A(GPIO0,U相上桥臂) 锁低，导致 "闪一下就没输出" 的现象
        // 通过禁用 TZ 动作（不是禁用信号源），确保即使 OST 锁存置位也不强制输出
        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_TZA,
                               EPWM_TZ_ACTION_DISABLE);

        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_TZB,
                               EPWM_TZ_ACTION_DISABLE);

        // DCAEVT1/DCAEVT2 动作也设为 DISABLE
        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_DCAEVT1,
                               EPWM_TZ_ACTION_DISABLE);

        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_DCAEVT2,
                               EPWM_TZ_ACTION_DISABLE);
#else
        // LEVEL5+ 正常运行：TZ事件强制PWM输出低电平，提供硬件过流保护
        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_TZA,
                               EPWM_TZ_ACTION_LOW);

        EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                               EPWM_TZ_ACTION_EVENT_TZB,
                               EPWM_TZ_ACTION_LOW);
#endif
    }

    // 清除EPWM触发标志
    DEVICE_DELAY_US(1L);

    for(cnt = 0; cnt < 3; cnt++)
    {
        // 清除任何虚假的OST和DCAEVT1标志
        EPWM_clearTripZoneFlag(obj->pwmHandle[cnt], (EPWM_TZ_FLAG_OST |
                                                     EPWM_TZ_FLAG_DCAEVT1 |
                                                     EPWM_TZ_FLAG_CBC ));

        // 清除任何虚假的HLATCH - (不在TRIP生成路径中)
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[cnt]);

        // 清除任何虚假的LLATCH - (不在TRIP生成路径中)
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[cnt]);
    }

    DEVICE_DELAY_US(1L);

    return;
}

/**
 * @brief 配置QEP（正交编码器接口）
 * @details 设置编码器解码器、位置计数器、单位定时器等
 * @param handle HAL电机句柄，指定要配置的电机HAL对象
 * @return 无
 */
void HAL_setupQEP(HAL_MTR_Handle handle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)handle;    // 将HAL电机句柄转换为具体对象指针

    // 只为电机1初始化QEP模块，电机2的QEP模块不初始化（避免与SCI冲突）
    if(handle == &halMtr[MTR_1])
    {
        // 配置解码器为正交计数模式，计数上升和下降沿。
        // 注意：与 EQEP_CONFIG_QUADRATURE 一起使用时，
        // 上/下沿计数等效于每脉冲 4 个边沿（即 4× 分辨率），与 QPOSMAX = (4*lines)-1 一致。
        EQEP_setDecoderConfig(obj->qepHandle, (EQEP_CONFIG_2X_RESOLUTION |
                                               EQEP_CONFIG_QUADRATURE |
                                               EQEP_CONFIG_NO_SWAP) );

        EQEP_setEmulationMode(obj->qepHandle, EQEP_EMULATIONMODE_RUNFREE);    // 设置仿真模式为自由运行

        // 配置位置计数器在单位超时和索引脉冲上升沿时锁存
        EQEP_setLatchMode(obj->qepHandle, (EQEP_LATCH_RISING_INDEX |
                                           EQEP_LATCH_UNIT_TIME_OUT) );

        // 配置位置计数器在最大位置时重置
        EQEP_setPositionCounterConfig(obj->qepHandle,
                                      EQEP_POSITION_RESET_MAX_POS,
                                      ((4 * M1_ENCODER_LINES) - 1) );

        // 启用单位定时器，设置频率为10KHz
        EQEP_enableUnitTimer(obj->qepHandle, M1_QEP_UNIT_TIMER_TICKS - 1);

        // 禁用eQEP模块位置比较单元
        EQEP_disableCompare(obj->qepHandle);

        // 配置并启用边缘捕获单元。捕获时钟分频器为SYSCLKOUT/128。单位位置事件分频器为QCLK/32。
        EQEP_setCaptureConfig(obj->qepHandle, EQEP_CAPTURE_CLK_DIV_128,
                                              EQEP_UNIT_POS_EVNT_DIV_32);

        // 启用QEP边缘捕获单元
        EQEP_enableCapture(obj->qepHandle);

        // 在QEP上启用UTO
        EQEP_enableInterrupt(obj->qepHandle, EQEP_INT_UNIT_TIME_OUT);

        // 启用eQEP模块
        EQEP_enableModule(obj->qepHandle);
    }
    // 电机2的QEP模块不初始化，避免与SCI冲突

    return;
}

// end of the file
