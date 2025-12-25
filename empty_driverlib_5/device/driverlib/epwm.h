//#############################################################################
//
// FILE:   epwm.h
//
// TITLE:   C28x EPWM驱动程序
//
//#############################################################################
// 
// C2000Ware v6.00.01.00
//
// Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com
//
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

#ifndef EPWM_H
#define EPWM_H

//*****************************************************************************
//
// 如果使用C++编译器构建，请使此头文件中的所有定义具有C绑定。
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
//! \addtogroup epwm_api ePWM
//! @{
//
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "inc/hw_epwm.h"
#include "cpu.h"
#include "debug.h"
#include "sysctl.h"


//
// 时间基准模块
//
//*****************************************************************************
//
//! 可作为\e emulationMode参数传递给EPWM_setEmulationMode()的值。
//
//*****************************************************************************
typedef enum
{
   //! 在下一次时间基准计数器递增或递减后停止
   EPWM_EMULATION_STOP_AFTER_NEXT_TB = 0,
   //! 当计数器完成整个周期时停止
   EPWM_EMULATION_STOP_AFTER_FULL_CYCLE = 1,
   //! 自由运行
   EPWM_EMULATION_FREE_RUN = 2
} EPWM_EmulationMode;

//*****************************************************************************
//
//! 可作为\e mode参数传递给EPWM_setCountModeAfterSync()的值。
//
//*****************************************************************************
typedef enum
{
   EPWM_COUNT_MODE_DOWN_AFTER_SYNC = 0, //!< 同步事件后向下计数
   EPWM_COUNT_MODE_UP_AFTER_SYNC = 1    //!< 同步事件后向上计数
} EPWM_SyncCountMode;

//*****************************************************************************
//
//! 可作为\e prescaler参数传递给EPWM_setClockPrescaler()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_CLOCK_DIVIDER_1 = 0,     //!< 时钟频率除1
    EPWM_CLOCK_DIVIDER_2 = 1,     //!< 时钟频率除2
    EPWM_CLOCK_DIVIDER_4 = 2,     //!< 时钟频率除4
    EPWM_CLOCK_DIVIDER_8 = 3,     //!< 时钟频率除8
    EPWM_CLOCK_DIVIDER_16 = 4,    //!< 时钟频率除16
    EPWM_CLOCK_DIVIDER_32 = 5,    //!< 时钟频率除32
    EPWM_CLOCK_DIVIDER_64 = 6,    //!< 时钟频率除64
    EPWM_CLOCK_DIVIDER_128 = 7    //!< 时钟频率除128
} EPWM_ClockDivider;

//*****************************************************************************
//
//! 可作为\e highSpeedPrescaler参数传递给EPWM_setClockPrescaler()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_HSCLOCK_DIVIDER_1 = 0,     //!< 时钟频率除1
    EPWM_HSCLOCK_DIVIDER_2 = 1,     //!< 时钟频率除2
    EPWM_HSCLOCK_DIVIDER_4 = 2,     //!< 时钟频率除4
    EPWM_HSCLOCK_DIVIDER_6 = 3,     //!< 时钟频率除6
    EPWM_HSCLOCK_DIVIDER_8 = 4,     //!< 时钟频率除8
    EPWM_HSCLOCK_DIVIDER_10 = 5,    //!< 时钟频率除10
    EPWM_HSCLOCK_DIVIDER_12 = 6,    //!< 时钟频率除12
    EPWM_HSCLOCK_DIVIDER_14 = 7     //!< 时钟频率除14
} EPWM_HSClockDivider;

//*****************************************************************************
//
//! 可作为\e mode参数传递给EPWM_setSyncOutPulseMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 同步脉冲由软件生成
    EPWM_SYNC_OUT_PULSE_ON_SOFTWARE  = 0,
    //! 同步脉冲从EPWMxSYNCIN信号传递
    EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN = 0,
    //! 当时基计数器等于零时生成同步脉冲
    EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO = 1,
    //! 当时基计数器等于比较B值时生成同步脉冲
    EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B = 2,
    //! 禁用同步脉冲
    EPWM_SYNC_OUT_PULSE_DISABLED = 4,
    //! 当时基计数器等于比较C值时生成同步脉冲
    EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C = 5,
    //! 当时基计数器等于比较D值时生成同步脉冲
    EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D = 6
} EPWM_SyncOutPulseMode;

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setPeriodLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! PWM周期寄存器通过影子寄存器访问
    EPWM_PERIOD_SHADOW_LOAD = 0,
    //! PWM周期寄存器直接访问
    EPWM_PERIOD_DIRECT_LOAD = 1
} EPWM_PeriodLoadMode;

//*****************************************************************************
//
//! 可作为\e counterMode参数传递给EPWM_setTimeBaseCounterMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_COUNTER_MODE_UP = 0,         //!< 向上计数模式
    EPWM_COUNTER_MODE_DOWN = 1,       //!< 向下计数模式
    EPWM_COUNTER_MODE_UP_DOWN = 2,    //!< 向上-向下计数模式
    EPWM_COUNTER_MODE_STOP_FREEZE = 3 //!< 停止-冻结计数器
} EPWM_TimeBaseCountMode;

//*****************************************************************************
//
//! 可作为\e shadowLoadMode参数传递给EPWM_selectPeriodLoadEvent()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当时基计数器到达0时,影子寄存器加载到活动寄存器
    EPWM_SHADOW_LOAD_MODE_COUNTER_ZERO = 0,
    //! 当时基计数器到达0且发生SYNC时,影子寄存器加载到活动寄存器
    EPWM_SHADOW_LOAD_MODE_COUNTER_SYNC = 1,
    //! 仅当发生SYNC时,影子寄存器加载到活动寄存器
    EPWM_SHADOW_LOAD_MODE_SYNC         = 2
} EPWM_PeriodShadowLoadMode;

//*****************************************************************************
//
// 可由EPWM_getTimeBaseCounterDirection()返回的值
//
//*****************************************************************************
//! 时基计数器正在向上计数
//!
#define EPWM_TIME_BASE_STATUS_COUNT_UP                1U
//! 时基计数器正在向下计数
//!
#define EPWM_TIME_BASE_STATUS_COUNT_DOWN              0U

//*****************************************************************************
//
//! 可作为\e epwmLink参数传递给EPWM_setupEPWMLinks()的值。
//
//*****************************************************************************
typedef enum
{
     EPWM_LINK_WITH_EPWM_1 = 0,   //!< 将当前ePWM与ePWM1链接
     EPWM_LINK_WITH_EPWM_2 = 1,   //!< 将当前ePWM与ePWM2链接
     EPWM_LINK_WITH_EPWM_3 = 2,   //!< 将当前ePWM与ePWM3链接
     EPWM_LINK_WITH_EPWM_4 = 3,   //!< 将当前ePWM与ePWM4链接
     EPWM_LINK_WITH_EPWM_5 = 4,   //!< 将当前ePWM与ePWM5链接
     EPWM_LINK_WITH_EPWM_6 = 5,   //!< 将当前ePWM与ePWM6链接
     EPWM_LINK_WITH_EPWM_7 = 6,   //!< 将当前ePWM与ePWM7链接
     EPWM_LINK_WITH_EPWM_8 = 7,   //!< 将当前ePWM与ePWM8链接
     EPWM_LINK_WITH_EPWM_9 = 8,   //!< 将当前ePWM与ePWM9链接
     EPWM_LINK_WITH_EPWM_10 = 9,   //!< 将当前ePWM与ePWM10链接
     EPWM_LINK_WITH_EPWM_11 = 10,   //!< 将当前ePWM与ePWM11链接
     EPWM_LINK_WITH_EPWM_12 = 11    //!< 将当前ePWM与ePWM12链接
} EPWM_CurrentLink;

//*****************************************************************************
//
//! 可作为\e linkComp参数传递给EPWM_setupEPWMLinks()的值。
//
//*****************************************************************************
typedef enum
{
     EPWM_LINK_TBPRD = 0U,   //!< 链接TBPRD寄存器
     EPWM_LINK_COMP_A = 4U,   //!< 链接COMPA寄存器
     EPWM_LINK_COMP_B = 8U,   //!< 链接COMPB寄存器
     EPWM_LINK_COMP_C = 12U,   //!< 链接COMPC寄存器
     EPWM_LINK_COMP_D = 16U,   //!< 链接COMPD寄存器
     EPWM_LINK_GLDCTL2 = 28U    //!< 链接GLDCTL2寄存器
} EPWM_LinkComponent;

//
// 计数器比较模块
//
//*****************************************************************************
//
//! 可作为\e compModule参数传递给EPWM_getCounterCompareShadowStatus(),
//! EPWM_setCounterCompareValue(), EPWM_setCounterCompareShadowLoadMode(),
//! EPWM_disableCounterCompareShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_COUNTER_COMPARE_A = 0, //!< 计数器比较A
    EPWM_COUNTER_COMPARE_B = 2, //!< 计数器比较B
    EPWM_COUNTER_COMPARE_C = 5, //!< 计数器比较C
    EPWM_COUNTER_COMPARE_D = 7  //!< 计数器比较D
} EPWM_CounterCompareModule;

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setCounterCompareShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_COMP_LOAD_ON_CNTR_ZERO = 0,
    //! 当计数器等于周期时加载
    EPWM_COMP_LOAD_ON_CNTR_PERIOD = 1,
    //! 当计数器等于零或周期时加载
    EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 冻结影子寄存器到活动寄存器的加载
    EPWM_COMP_LOAD_FREEZE = 3,
    //! 在同步事件或计数器等于零时加载
    EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO = 4,
    //! 在同步事件或计数器等于周期时加载
    EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD = 5,
    //! 在同步事件或计数器等于零或周期时加载
    EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD = 6,
    //! 仅在同步事件时加载
    EPWM_COMP_LOAD_ON_SYNC_ONLY = 8
} EPWM_CounterCompareLoadMode;

//
// 动作限定器模块
//
//*****************************************************************************
//
//! 可作为\e aqModule参数传递给EPWM_setActionQualifierShadowLoadMode()和
//! EPWM_disableActionQualifierShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_ACTION_QUALIFIER_A = 0, //!< 动作限定器A
    EPWM_ACTION_QUALIFIER_B = 2  //!< 动作限定器B
} EPWM_ActionQualifierModule;

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setActionQualifierShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_AQ_LOAD_ON_CNTR_ZERO = 0,
    //! 当计数器等于周期时加载
    EPWM_AQ_LOAD_ON_CNTR_PERIOD = 1,
    //! 当计数器等于零或周期时加载
    EPWM_AQ_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 冻结影子寄存器到活动寄存器的加载
    EPWM_AQ_LOAD_FREEZE = 3,
    //! 在同步事件或计数器等于零时加载
    EPWM_AQ_LOAD_ON_SYNC_CNTR_ZERO = 4,
    //! 在同步事件或计数器等于周期时加载
    EPWM_AQ_LOAD_ON_SYNC_CNTR_PERIOD = 5,
    //! 在同步事件或计数器等于零或周期时加载
    EPWM_AQ_LOAD_ON_SYNC_CNTR_ZERO_PERIOD = 6,
    //! 仅在同步事件时加载
    EPWM_AQ_LOAD_ON_SYNC_ONLY = 8
} EPWM_ActionQualifierLoadMode;

//*****************************************************************************
//
//! 可作为\e trigger参数传递给EPWM_setActionQualifierT1TriggerSource()和
//! EPWM_setActionQualifierT2TriggerSource()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_1 = 0,      //!< 数字比较事件A 1
    EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_2 = 1,      //!< 数字比较事件A 2
    EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_1 = 2,      //!< 数字比较事件B 1
    EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_2 = 3,      //!< 数字比较事件B 2
    EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_1  = 4,      //!< 故障区 1
    EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_2  = 5,      //!< 故障区 2
    EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_3  = 6,      //!< 故障区 3
    EPWM_AQ_TRIGGER_EVENT_TRIG_EPWM_SYNCIN = 7 //!< ePWM同步
} EPWM_ActionQualifierTriggerSource;

//*****************************************************************************
//
//! 可作为\e event参数传递给EPWM_setActionQualifierAction()的值。
//
//*****************************************************************************
typedef enum
{
    //! 时基计数器等于零
    EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO       = 0,
    //! 时基计数器等于周期
    EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD     = 2,
    //! 时基计数器向上计数等于COMPA
    EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA    = 4,
    //! 时基计数器向下计数等于COMPA
    EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA  = 6,
    //! 时基计数器向上计数等于COMPB
    EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB    = 8,
    //! 时基计数器向下计数等于COMPB
    EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB  = 10,
    //! T1事件在向上计数时
    EPWM_AQ_OUTPUT_ON_T1_COUNT_UP         = 1,
    //! T1事件在向下计数时
    EPWM_AQ_OUTPUT_ON_T1_COUNT_DOWN       = 3,
    //! T2事件在向上计数时
    EPWM_AQ_OUTPUT_ON_T2_COUNT_UP         = 5,
    //! T2事件在向下计数时
    EPWM_AQ_OUTPUT_ON_T2_COUNT_DOWN       = 7
} EPWM_ActionQualifierOutputEvent;

//*****************************************************************************
//
//! 可作为\e outPut参数传递给EPWM_setActionQualifierSWAction(),
//! EPWM_setActionQualifierAction()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_AQ_OUTPUT_NO_CHANGE = 0,  //!< 输出引脚不变
    EPWM_AQ_OUTPUT_LOW       = 1,  //!< 输出引脚设置为低
    EPWM_AQ_OUTPUT_HIGH      = 2,  //!< 输出引脚设置为高
    EPWM_AQ_OUTPUT_TOGGLE    = 3   //!< 翻转输出引脚
} EPWM_ActionQualifierOutput;

//*****************************************************************************
//
//! 可作为\e outPut参数传递给EPWM_setActionQualifierContSWForceAction()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_AQ_SW_DISABLED         = 0,  //!< 禁用软件强制
    EPWM_AQ_SW_OUTPUT_LOW       = 1,  //!< 输出引脚设置为低
    EPWM_AQ_SW_OUTPUT_HIGH      = 2   //!< 输出引脚设置为高
} EPWM_ActionQualifierSWOutput;

//*****************************************************************************
//
//! Values that can be passed to EPWM_setActionQualifierActionComplete()
//! as the \e action parameter.
//
//*****************************************************************************
typedef enum
{
    //! Time base counter equals zero and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_ZERO = 0x0,
    //! Time base counter equals zero and set output pins to low
    EPWM_AQ_OUTPUT_LOW_ZERO = 0x1,
    //! Time base counter equals zero and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_ZERO = 0x2,
    //! Time base counter equals zero and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_ZERO = 0x3,
    //! Time base counter equals period and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_PERIOD = 0x0,
    //! Time base counter equals period and set output pins to low
    EPWM_AQ_OUTPUT_LOW_PERIOD = 0x4,
    //! Time base counter equals period and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_PERIOD = 0x8,
    //! Time base counter equals period and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_PERIOD = 0xC,
    //! Time base counter up equals COMPA and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_UP_CMPA = 0x00,
    //! Time base counter up equals COMPA and set output pins to low
    EPWM_AQ_OUTPUT_LOW_UP_CMPA = 0x10,
    //! Time base counter up equals COMPA and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_UP_CMPA = 0x20,
    //! Time base counter up equals COMPA and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_UP_CMPA = 0x30,
    //! Time base counter down equals COMPA and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_CMPA = 0x00,
    //! Time base counter down equals COMPA and set output pins to low
    EPWM_AQ_OUTPUT_LOW_DOWN_CMPA = 0x40,
    //! Time base counter down equals COMPA and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA = 0x80,
    //! Time base counter down equals COMPA and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_DOWN_CMPA = 0xC0,
    //! Time base counter up equals COMPB and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_UP_CMPB = 0x000,
    //! Time base counter up equals COMPB and set output pins to low
    EPWM_AQ_OUTPUT_LOW_UP_CMPB = 0x100,
    //! Time base counter up equals COMPB and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_UP_CMPB = 0x200,
    //! Time base counter up equals COMPB and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_UP_CMPB = 0x300,
    //! Time base counter down equals COMPB and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_CMPB = 0x000,
    //! Time base counter down equals COMPB and set output pins to low
    EPWM_AQ_OUTPUT_LOW_DOWN_CMPB = 0x400,
    //! Time base counter down equals COMPB and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_DOWN_CMPB = 0x800,
    //! Time base counter down equals COMPB and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_DOWN_CMPB = 0xC00
} EPWM_ActionQualifierEventAction;

//*****************************************************************************
//
//! Values that can be passed to
//! EPWM_setAdditionalActionQualifierActionComplete()  as the \e action
//! parameter.
//
//*****************************************************************************
typedef enum
{
    //! T1 event on count up and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_UP_T1 = 0x0,
    //! T1 event on count up and set output pins to low
    EPWM_AQ_OUTPUT_LOW_UP_T1 = 0x1,
    //! T1 event on count up and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_UP_T1 = 0x2,
    //! T1 event on count up and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_UP_T1 = 0x3,
    //! T1 event on count down and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_T1 = 0x0,
    //! T1 event on count down and set output pins to low
    EPWM_AQ_OUTPUT_LOW_DOWN_T1 = 0x4,
    //! T1 event on count down and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_DOWN_T1 = 0x8,
    //! T1 event on count down and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_DOWN_T1 = 0xC,
    //! T2 event on count up and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_UP_T2 = 0x00,
    //! T2 event on count up and set output pins to low
    EPWM_AQ_OUTPUT_LOW_UP_T2 = 0x10,
    //! T2 event on count up and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_UP_T2 = 0x20,
    //! T2 event on count up and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_UP_T2 = 0x30,
    //! T2 event on count down and no change in the output pins
    EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_T2 = 0x00,
    //! T2 event on count down and set output pins to low
    EPWM_AQ_OUTPUT_LOW_DOWN_T2 = 0x40,
    //! T2 event on count down and set output pins to high
    EPWM_AQ_OUTPUT_HIGH_DOWN_T2 = 0x80,
    //! T2 event on count down and toggle the output pins
    EPWM_AQ_OUTPUT_TOGGLE_DOWN_T2 = 0xC0
} EPWM_AdditionalActionQualifierEventAction;

//*****************************************************************************
//
//! Values that can be passed to EPWM_forceActionQualifierSWAction(),
//! EPWM_setActionQualifierSWAction(), EPWM_setActionQualifierAction()
//! EPWM_setActionQualifierContSWForceAction() as the \e epwmOutput parameter.
//
//*****************************************************************************
typedef enum
{
    EPWM_AQ_OUTPUT_A = 0, //!< ePWMxA output
    EPWM_AQ_OUTPUT_B = 2  //!< ePWMxB output
} EPWM_ActionQualifierOutputModule;

//*****************************************************************************
//
//! 可作为\e mode参数传递给EPWM_setActionQualifierContSWForceShadowMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载影子模式
    EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO        = 0,
    //! 当计数器等于周期时加载影子模式
    EPWM_AQ_SW_SH_LOAD_ON_CNTR_PERIOD      = 1,
    //! 当计数器等于零或周期时加载影子模式
    EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 无影子加载模式,仅立即模式
    EPWM_AQ_SW_IMMEDIATE_LOAD   = 3
} EPWM_ActionQualifierContForce;

//*****************************************************************************
//
//! 可作为\e output参数传递给EPWM_setDeadBandOutputSwapMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DB_OUTPUT_A = 1, //!< 死区输出为ePWMA
    EPWM_DB_OUTPUT_B = 0  //!< 死区输出为ePWMB
} EPWM_DeadBandOutput;

//*****************************************************************************
//
//! 可作为\e delayMode参数传递给EPWM_setDeadBandDelayPolarity(),
//! EPWM_setDeadBandDelayMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DB_RED = 1, //!< 死区上升沿延迟(Rising Edge Delay)模式
    EPWM_DB_FED = 0  //!< 死区下降沿延迟(Falling Edge Delay)模式
} EPWM_DeadBandDelayMode;

//*****************************************************************************
//
//! 可作为\e polarity参数传递给EPWM_setDeadBandDelayPolarity()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DB_POLARITY_ACTIVE_HIGH = 0, //!< 死区极性不反转
    EPWM_DB_POLARITY_ACTIVE_LOW  = 1  //!< 死区极性反转
} EPWM_DeadBandPolarity;

//*****************************************************************************
//
// 可作为input参数传递给EPWM_setRisingEdgeDeadBandDelayInput(),
// EPWM_setFallingEdgeDeadBandDelayInput()的值。
//
//*****************************************************************************
//! 输入信号为ePWMA
//!
#define EPWM_DB_INPUT_EPWMA       0U
//! 输入信号为ePWMB
//!
#define EPWM_DB_INPUT_EPWMB       1U
//! 输入信号为上升沿延迟输出
//!
#define EPWM_DB_INPUT_DB_RED      2U

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setDeadBandControlShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_DB_LOAD_ON_CNTR_ZERO        = 0,
    //! 当计数器等于周期时加载
    EPWM_DB_LOAD_ON_CNTR_PERIOD      = 1,
    //! 当计数器等于零或周期时加载
    EPWM_DB_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 冻结影子寄存器到活动寄存器的加载
    EPWM_DB_LOAD_FREEZE = 3
} EPWM_DeadBandControlLoadMode;

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setRisingEdgeDelayCountShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_RED_LOAD_ON_CNTR_ZERO        = 0,
    //! 当计数器等于周期时加载
    EPWM_RED_LOAD_ON_CNTR_PERIOD      = 1,
    //! 当计数器等于零或周期时加载
    EPWM_RED_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 冻结影子寄存器到活动寄存器的加载
    EPWM_RED_LOAD_FREEZE = 3
} EPWM_RisingEdgeDelayLoadMode;

//*****************************************************************************
//
//! 可作为\e loadMode参数传递给EPWM_setFallingEdgeDelayCountShadowLoadMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_FED_LOAD_ON_CNTR_ZERO        = 0,
    //! 当计数器等于周期时加载
    EPWM_FED_LOAD_ON_CNTR_PERIOD      = 1,
    //! 当计数器等于零或周期时加载
    EPWM_FED_LOAD_ON_CNTR_ZERO_PERIOD = 2,
    //! 冻结影子寄存器到活动寄存器的加载
    EPWM_FED_LOAD_FREEZE = 3
} EPWM_FallingEdgeDelayLoadMode;

//*****************************************************************************
//
//! 可作为\e clockMode参数传递给EPWM_setDeadBandCounterClock()的值。
//
//*****************************************************************************
typedef enum
{
    //! 死区计数器以TBCLK速率运行
    EPWM_DB_COUNTER_CLOCK_FULL_CYCLE = 0,
    //! 死区计数器以2*TBCLK速率运行
    EPWM_DB_COUNTER_CLOCK_HALF_CYCLE = 1
} EPWM_DeadBandClockMode;

//
// 故障区
//
//*****************************************************************************
//
// 可作为tzSignal参数传递给EPWM_enableTripZoneSignals()和
// EPWM_disableTripZoneSignals()的值。
//
//*****************************************************************************
//! TZ1逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC1          0x1U
//! TZ2逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC2          0x2U
//! TZ3逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC3          0x4U
//! TZ4逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC4          0x8U
//! TZ5逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC5          0x10U
//! TZ6逐周期模式
//!
#define EPWM_TZ_SIGNAL_CBC6          0x20U
//! DCAEVT2逐周期模式
//!
#define EPWM_TZ_SIGNAL_DCAEVT2       0x40U
//! DCBEVT2逐周期模式
//!
#define EPWM_TZ_SIGNAL_DCBEVT2       0x80U
//! 单次TZ1
//!
#define EPWM_TZ_SIGNAL_OSHT1         0x100U
//! 单次TZ2
//!
#define EPWM_TZ_SIGNAL_OSHT2         0x200U
//! 单次TZ3
//!
#define EPWM_TZ_SIGNAL_OSHT3         0x400U
//! 单次TZ4
//!
#define EPWM_TZ_SIGNAL_OSHT4         0x800U
//! 单次TZ5
//!
#define EPWM_TZ_SIGNAL_OSHT5         0x1000U
//! 单次TZ6
//!
#define EPWM_TZ_SIGNAL_OSHT6         0x2000U
//! 单次DCAEVT1
//!
#define EPWM_TZ_SIGNAL_DCAEVT1       0x4000U
//! 单次DCBEVT1
//!
#define EPWM_TZ_SIGNAL_DCBEVT1       0x8000U

//*****************************************************************************
//
//! 可作为\e dcType参数传递给EPWM_setTripZoneDigitalCompareEventCondition()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_TZ_DC_OUTPUT_A1 = 0, //!< 数字比较输出1 A
    EPWM_TZ_DC_OUTPUT_A2 = 3, //!< 数字比较输出2 A
    EPWM_TZ_DC_OUTPUT_B1 = 6, //!< 数字比较输出1 B
    EPWM_TZ_DC_OUTPUT_B2 = 9  //!< 数字比较输出2 B
} EPWM_TripZoneDigitalCompareOutput;

//*****************************************************************************
//
//! 可作为\e dcEvent参数传递给EPWM_setTripZoneDigitalCompareEventCondition()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_TZ_EVENT_DC_DISABLED = 0,       //!< 事件禁用
    EPWM_TZ_EVENT_DCXH_LOW    = 1,       //!< 当DCxH为低时产生事件
    EPWM_TZ_EVENT_DCXH_HIGH   = 2,       //!< 当DCxH为高时产生事件
    EPWM_TZ_EVENT_DCXL_LOW    = 3,       //!< 当DCxL为低时产生事件
    EPWM_TZ_EVENT_DCXL_HIGH   = 4,       //!< 当DCxL为高时产生事件
    EPWM_TZ_EVENT_DCXL_HIGH_DCXH_LOW = 5 //!< 当DCxL高DCxH低时产生事件
} EPWM_TripZoneDigitalCompareOutputEvent;

//*****************************************************************************
//
//! 可作为\e tzEvent参数传递给EPWM_setTripZoneAction()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_TZ_ACTION_EVENT_TZA = 0,     //!< TZ1 - TZ6, DCAEVT2, DCAEVT1
    EPWM_TZ_ACTION_EVENT_TZB = 2,     //!< TZ1 - TZ6, DCBEVT2, DCBEVT1
    EPWM_TZ_ACTION_EVENT_DCAEVT1 = 4, //!< DCAEVT1 (数字比较A事件 1)
    EPWM_TZ_ACTION_EVENT_DCAEVT2 = 6, //!< DCAEVT2 (数字比较A事件 2)
    EPWM_TZ_ACTION_EVENT_DCBEVT1 = 8, //!< DCBEVT1 (数字比较B事件 1)
    EPWM_TZ_ACTION_EVENT_DCBEVT2 = 10 //!< DCBEVT2 (数字比较B事件 2)
} EPWM_TripZoneEvent;

//*****************************************************************************
//
//! 可作为\e tzAction参数传递给EPWM_setTripZoneAction()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_TZ_ACTION_HIGH_Z  = 0, //!< 高阻抗输出
    EPWM_TZ_ACTION_HIGH    = 1, //!< 高电平状态
    EPWM_TZ_ACTION_LOW     = 2, //!< 低电平状态
    EPWM_TZ_ACTION_DISABLE = 3  //!< 禁用动作
} EPWM_TripZoneAction;

//*****************************************************************************
//
//! 可作为\e tzAdvEvent参数传递给EPWM_setTripZoneAdvAction()的值。
//
//*****************************************************************************
typedef enum
{
    //! TZ1 - TZ6, DCBEVT2, DCBEVT1 向下计数时
    EPWM_TZ_ADV_ACTION_EVENT_TZB_D = 9,
    //! TZ1 - TZ6, DCBEVT2, DCBEVT1 向上计数时
    EPWM_TZ_ADV_ACTION_EVENT_TZB_U = 6,
    //! TZ1 - TZ6, DCAEVT2, DCAEVT1 向下计数时
    EPWM_TZ_ADV_ACTION_EVENT_TZA_D = 3,
    //! TZ1 - TZ6, DCAEVT2, DCAEVT1 向上计数时
    EPWM_TZ_ADV_ACTION_EVENT_TZA_U = 0
} EPWM_TripZoneAdvancedEvent;

//*****************************************************************************
//
//! 可作为\e tzAdvDCAction参数传递给EPWM_setTripZoneAdvDigitalCompareActionA(),
//! EPWM_setTripZoneAdvDigitalCompareActionB(),EPWM_setTripZoneAdvAction()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_TZ_ADV_ACTION_HIGH_Z  = 0, //!< 高阻抗输出
    EPWM_TZ_ADV_ACTION_HIGH    = 1, //!< 高电平状态
    EPWM_TZ_ADV_ACTION_LOW     = 2, //!< 低电平状态
    EPWM_TZ_ADV_ACTION_TOGGLE  = 3, //!< 翻转输出
    EPWM_TZ_ADV_ACTION_DISABLE = 7  //!< 禁用动作
} EPWM_TripZoneAdvancedAction;

//*****************************************************************************
//
//! 可作为\e tzAdvDCEvent参数传递给EPWM_setTripZoneAdvDigitalCompareActionA()和
//! EPWM_setTripZoneAdvDigitalCompareActionB()的值。
//
//*****************************************************************************
typedef enum
{
    //! 数字比较事件A/B 1 向上计数时
    EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_U = 0,
    //! 数字比较事件A/B 1 向下计数时
    EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_D = 3,
    //! 数字比较事件A/B 2 向上计数时
    EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_U = 6,
    //! 数字比较事件A/B 2 向下计数时
    EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_D =  9
} EPWM_TripZoneAdvDigitalCompareEvent;


//*****************************************************************************
//
// 可作为tzInterrupt参数传递给EPWM_enableTripZoneInterrupt()和
// EPWM_disableTripZoneInterrupt()的值。
//
//*****************************************************************************
//! 故障区逐周期中断
//!
#define EPWM_TZ_INTERRUPT_CBC      0x2U
//! 故障区单次中断
//!
#define EPWM_TZ_INTERRUPT_OST      0x4U
//! 数字比较A事件 1中断
//!
#define EPWM_TZ_INTERRUPT_DCAEVT1  0x8U
//! 数字比较A事件 2中断
//!
#define EPWM_TZ_INTERRUPT_DCAEVT2  0x10U
//! 数字比较B事件 1中断
//!
#define EPWM_TZ_INTERRUPT_DCBEVT1  0x20U
//! 数字比较B事件 2中断
//!
#define EPWM_TZ_INTERRUPT_DCBEVT2  0x40U

//*****************************************************************************
//
// 可由EPWM_getTripZoneFlagStatus()返回的值。
//
//*****************************************************************************
//! 故障区逐周期标志
//!
#define EPWM_TZ_FLAG_CBC      0x2U
//! 故障区单次标志
//!
#define EPWM_TZ_FLAG_OST      0x4U
//! 数字比较A事件 1标志
//!
#define EPWM_TZ_FLAG_DCAEVT1  0x8U
//! 数字比较A事件 2标志
//!
#define EPWM_TZ_FLAG_DCAEVT2  0x10U
//! 数字比较B事件 1标志
//!
#define EPWM_TZ_FLAG_DCBEVT1  0x20U
//! 数字比较B事件 2标志
//!
#define EPWM_TZ_FLAG_DCBEVT2  0x40U

//*****************************************************************************
//
// 可作为tzInterrupt参数传递给EPWM_clearTripZoneFlag()并由
// EPWM_getTripZoneFlagStatus()返回的值。
//
//*****************************************************************************
//! 故障区中断
//!
#define EPWM_TZ_INTERRUPT     0x1U

//*****************************************************************************
//
// Values that can be passed to EPWM_clearCycleByCycleTripZoneFlag()
// as the tzCbcFlag parameter and returned by
// EPWM_getCycleByCycleTripZoneFlagStatus().
//
//*****************************************************************************
//! CBC flag 1
//!
#define EPWM_TZ_CBC_FLAG_1  0x1U
//! CBC flag 2
//!
#define EPWM_TZ_CBC_FLAG_2  0x2U
//! CBC flag 3
//!
#define EPWM_TZ_CBC_FLAG_3  0x4U
//! CBC flag 4
//!
#define EPWM_TZ_CBC_FLAG_4  0x8U
//! CBC flag 5
//!
#define EPWM_TZ_CBC_FLAG_5  0x10U
//! CBC flag 6
//!
#define EPWM_TZ_CBC_FLAG_6   0x20U
//! CBC flag Digital compare event A2
//!
#define EPWM_TZ_CBC_FLAG_DCAEVT2  0x40U
//! CBC flag Digital compare event B2
//!
#define EPWM_TZ_CBC_FLAG_DCBEVT2  0x80U

//*****************************************************************************
//
// Values that can be passed to EPWM_clearOneShotTripZoneFlag() as
// the tzCbcFlag parameter and returned by the
// EPWM_getOneShotTripZoneFlagStatus() .
//
//*****************************************************************************
//! OST flag OST1
//!
#define EPWM_TZ_OST_FLAG_OST1  0x1U
//! OST flag OST2
//!
#define EPWM_TZ_OST_FLAG_OST2  0x2U
//! OST flag OST3
//!
#define EPWM_TZ_OST_FLAG_OST3  0x4U
//! OST flag OST4
//!
#define EPWM_TZ_OST_FLAG_OST4  0x8U
//! OST flag OST5
//!
#define EPWM_TZ_OST_FLAG_OST5  0x10U
//! OST flag OST6
//!
#define EPWM_TZ_OST_FLAG_OST6  0x20U
//! OST flag Digital compare event A1
//!
#define EPWM_TZ_OST_FLAG_DCAEVT1   0x40U
//! OST flag Digital compare event B1
//!
#define EPWM_TZ_OST_FLAG_DCBEVT1   0x80U

//*****************************************************************************
//
//! 可作为\e clearMode参数传递给EPWM_selectCycleByCycleTripZoneClearEvent()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时清除CBC脉冲
    EPWM_TZ_CBC_PULSE_CLR_CNTR_ZERO = 0,
    //! 当计数器等于周期时清除CBC脉冲
    EPWM_TZ_CBC_PULSE_CLR_CNTR_PERIOD = 1,
    //! 当计数器等于零或周期时清除CBC脉冲
    EPWM_TZ_CBC_PULSE_CLR_CNTR_ZERO_PERIOD = 2
} EPWM_CycleByCycleTripZoneClearMode;

//*****************************************************************************
//
// 可作为tzForceEvent参数传递给EPWM_forceTripZoneEvent()的值。
//
//*****************************************************************************
//! 强制逐周期故障事件
//!
#define EPWM_TZ_FORCE_EVENT_CBC  0x2U
//! 强制单次故障事件
//!
#define EPWM_TZ_FORCE_EVENT_OST  0x4U
//! 强制数字比较输出A事件 1
//!
#define EPWM_TZ_FORCE_EVENT_DCAEVT1  0x8U
//! 强制数字比较输出A事件 2
//!
#define EPWM_TZ_FORCE_EVENT_DCAEVT2  0x10U
//! 强制数字比较输出B事件 1
//!
#define EPWM_TZ_FORCE_EVENT_DCBEVT1  0x20U
//! 强制数字比较输出B事件 2
//!
#define EPWM_TZ_FORCE_EVENT_DCBEVT2  0x40U

//*****************************************************************************
//
// 可作为interruptSource参数传递给EPWM_setInterruptSource()的值。
//
//*****************************************************************************
//! 时基计数器禁用
//!
#define EPWM_INT_TBCTR_DISABLED 0U
//! 时基计数器等于零
//!
#define EPWM_INT_TBCTR_ZERO  1U
//! 时基计数器等于周期
//!
#define EPWM_INT_TBCTR_PERIOD  2U
//! 时基计数器等于零或周期
//!
#define EPWM_INT_TBCTR_ZERO_OR_PERIOD  3U
//! 时基计数器在递增时等于CMPA
//!
#define EPWM_INT_TBCTR_U_CMPA  4U
//! 时基计数器在递增时等于CMPC
//!
#define EPWM_INT_TBCTR_U_CMPC  8U
//! 时基计数器在递减时等于CMPA
//!
#define EPWM_INT_TBCTR_D_CMPA  5U
//! 时基计数器在递减时等于CMPC
//!
#define EPWM_INT_TBCTR_D_CMPC  10U
//! 时基计数器在递增时等于CMPB
//!
#define EPWM_INT_TBCTR_U_CMPB  6U
//! 时基计数器在递增时等于CMPD
//!
#define EPWM_INT_TBCTR_U_CMPD  12U
//! 时基计数器在递减时等于CMPB
//!
#define EPWM_INT_TBCTR_D_CMPB  7U
//! 时基计数器在递减时等于CMPD
//!
#define EPWM_INT_TBCTR_D_CMPD  14U

//*****************************************************************************
//
//! 可作为\e adcSOCType参数传递给EPWM_enableADCTrigger(),
//! EPWM_disableADCTrigger(),EPWM_setADCTriggerSource(),
//! EPWM_setADCTriggerEventPrescale(),EPWM_getADCTriggerFlagStatus(),
//! EPWM_clearADCTriggerFlag(),EPWM_enableADCTriggerEventCountInit(),
//! EPWM_disableADCTriggerEventCountInit(),EPWM_forceADCTriggerEventCountInit(),
//! EPWM_setADCTriggerEventCountInitValue(),EPWM_getADCTriggerEventCount(),
//! EPWM_forceADCTrigger()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_SOC_A = 0,  //!< SOC A
    EPWM_SOC_B = 1   //!< SOC B
} EPWM_ADCStartOfConversionType;

//*****************************************************************************
//
//! 可作为\e socSource参数传递给EPWM_setADCTriggerSource()的值。
//
//*****************************************************************************
typedef enum
{
    //! 事件基于DCxEVT1
    EPWM_SOC_DCxEVT1 = 0,
    //! 时基计数器等于零
    EPWM_SOC_TBCTR_ZERO = 1,
    //! 时基计数器等于周期
    EPWM_SOC_TBCTR_PERIOD = 2,
    //! 时基计数器等于零或周期
    EPWM_SOC_TBCTR_ZERO_OR_PERIOD = 3,
    //! 时基计数器在递增时等于CMPA
    EPWM_SOC_TBCTR_U_CMPA = 4,
    //! 时基计数器在递增时等于CMPC
    EPWM_SOC_TBCTR_U_CMPC = 8,
    //! 时基计数器在递减时等于CMPA
    EPWM_SOC_TBCTR_D_CMPA = 5,
    //! 时基计数器在递减时等于CMPC
    EPWM_SOC_TBCTR_D_CMPC = 10,
    //! 时基计数器在递增时等于CMPB
    EPWM_SOC_TBCTR_U_CMPB = 6,
    //! 时基计数器在递增时等于CMPD
    EPWM_SOC_TBCTR_U_CMPD = 12,
    //! 时基计数器在递减时等于CMPB
    EPWM_SOC_TBCTR_D_CMPB = 7,
    //! 时基计数器在递减时等于CMPD
    EPWM_SOC_TBCTR_D_CMPD = 14
} EPWM_ADCStartOfConversionSource;

//
// 数字比较模块
//
//*****************************************************************************
//
//! 可作为\e dcType参数传递给EPWM_selectDigitalCompareTripInput(),
//! EPWM_enableDigitalCompareTripCombinationInput(),
//! EPWM_disableDigitalCompareTripCombinationInput()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_TYPE_DCAH = 0,  //!< 数字比较A高电平
    EPWM_DC_TYPE_DCAL = 1,  //!< 数字比较A低电平
    EPWM_DC_TYPE_DCBH = 2,  //!< 数字比较B高电平
    EPWM_DC_TYPE_DCBL = 3   //!< 数字比较B低电平
} EPWM_DigitalCompareType;

//*****************************************************************************
//
//! 可作为\e tripSource参数传递给EPWM_selectDigitalCompareTripInput()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_TRIP_TRIPIN1 = 0,   //!< 故障 1
    EPWM_DC_TRIP_TRIPIN2 = 1,   //!< 故障 2
    EPWM_DC_TRIP_TRIPIN3 = 2,   //!< 故障 3
    EPWM_DC_TRIP_TRIPIN4 = 3,   //!< 故障 4
    EPWM_DC_TRIP_TRIPIN5 = 4,   //!< 故障 5
    EPWM_DC_TRIP_TRIPIN6 = 5,   //!< 故障 6
    EPWM_DC_TRIP_TRIPIN7 = 6,   //!< 故障 7
    EPWM_DC_TRIP_TRIPIN8 = 7,   //!< 故障 8
    EPWM_DC_TRIP_TRIPIN9 = 8,   //!< 故障 9
    EPWM_DC_TRIP_TRIPIN10 = 9,  //!< 故障 10
    EPWM_DC_TRIP_TRIPIN11 = 10, //!< 故障 11
    EPWM_DC_TRIP_TRIPIN12 = 11, //!< 故障 12
    EPWM_DC_TRIP_TRIPIN14 = 13, //!< 故障 14
    EPWM_DC_TRIP_TRIPIN15 = 14, //!< 故障 15
    EPWM_DC_TRIP_COMBINATION = 15 //!< 所有故障 (Trip1 - Trip 15) 被选中
} EPWM_DigitalCompareTripInput;

//*****************************************************************************
//
// Values that can be passed to EPWM_enableDigitalCompareTripCombinationInput(),
// EPWM_disableDigitalCompareTripCombinationInput() as the tripInput
// parameter.
//
//*****************************************************************************
//! Combinational Trip 1 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN1   0x1U
//! Combinational Trip 2 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN2   0x2U
//! Combinational Trip 3 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN3   0x4U
//! Combinational Trip 4 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN4   0x8U
//! Combinational Trip 5 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN5   0x10U
//! Combinational Trip 6 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN6   0x20U
//! Combinational Trip 7 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN7   0x40U
//! Combinational Trip 8 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN8   0x80U
//! Combinational Trip 9 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN9   0x100U
//! Combinational Trip 10 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN10  0x200U
//! Combinational Trip 11 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN11  0x400U
//! Combinational Trip 12 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN12  0x800U
//! Combinational Trip 14 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN14  0x2000U
//! Combinational Trip 15 input
//!
#define EPWM_DC_COMBINATIONAL_TRIPIN15  0x4000U

//*****************************************************************************
//
//! 可作为\e blankingPulse参数传递给EPWM_setDigitalCompareBlankingEvent()的值。
//
//*****************************************************************************
typedef enum
{
    //! 时基计数器等于周期
    EPWM_DC_WINDOW_START_TBCTR_PERIOD = 0,
    //! 时基计数器等于零
    EPWM_DC_WINDOW_START_TBCTR_ZERO   = 1,
    //! 时基计数器等于零或周期
    EPWM_DC_WINDOW_START_TBCTR_ZERO_PERIOD  = 2
} EPWM_DigitalCompareBlankingPulse;

//*****************************************************************************
//
//! 可作为\e filterInput参数传递给EPWM_setDigitalCompareFilterInput()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_WINDOW_SOURCE_DCAEVT1 = 0, //!< 数字比较滤波器信号源为DCAEVT1
    EPWM_DC_WINDOW_SOURCE_DCAEVT2 = 1, //!< 数字比较滤波器信号源为DCAEVT2
    EPWM_DC_WINDOW_SOURCE_DCBEVT1 = 2, //!< 数字比较滤波器信号源为DCBEVT1
    EPWM_DC_WINDOW_SOURCE_DCBEVT2 = 3  //!< 数字比较滤波器信号源为DCBEVT2
} EPWM_DigitalCompareFilterInput;

//*****************************************************************************
//
//! 可作为\e dcModule参数传递给EPWM_setDigitalCompareEventSource(),
//! EPWM_setDigitalCompareEventSyncMode(),EPWM_enableDigitalCompareSyncEvent()
//! EPWM_enableDigitalCompareADCTrigger(),EPWM_disableDigitalCompareSyncEvent()
//! EPWM_disableDigitalCompareADCTrigger()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_MODULE_A = 0, //!< 数字比较模块A
    EPWM_DC_MODULE_B = 1  //!< 数字比较模块B
} EPWM_DigitalCompareModule;

//*****************************************************************************
//
//! 可作为\e dcEvent参数传递给EPWM_setDigitalCompareEventSource(),
//! EPWM_setDigitalCompareEventSyncMode()的值。
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_EVENT_1 = 0, //!< 数字比较事件编号 1
    EPWM_DC_EVENT_2 = 1  //!< 数字比较事件编号 2
} EPWM_DigitalCompareEvent;

//*****************************************************************************
//
//! 可作为\e dcEventSource参数传递给EPWM_setDigitalCompareEventSource()的值。
//
//*****************************************************************************
typedef enum
{
    //! 信号源为未滤波 (DCAEVT1/2)
    EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL = 0,
    //! 信号源为滤波后 (DCEVTFILT)
    EPWM_DC_EVENT_SOURCE_FILT_SIGNAL = 1
} EPWM_DigitalCompareEventSource;

//*****************************************************************************
//
//! 可作为\e syncMode参数传递给EPWM_setDigitalCompareEventSyncMode()的值。
//
//*****************************************************************************
typedef enum
{
    //! 数字比较输入信号与TBCLK同步
    EPWM_DC_EVENT_INPUT_SYNCED = 0,
    //! 数字比较输入信号与TBCLK不同步
    EPWM_DC_EVENT_INPUT_NOT_SYNCED = 1
} EPWM_DigitalCompareSyncMode;

//*****************************************************************************
//
//! 可作为\e loadTrigger参数传递给EPWM_setGlobalLoadTrigger()的值。
//
//*****************************************************************************
typedef enum
{
    //! 当计数器等于零时加载
    EPWM_GL_LOAD_PULSE_CNTR_ZERO = 0x0,
    //! 当计数器等于周期时加载
    EPWM_GL_LOAD_PULSE_CNTR_PERIOD = 0x1,
    //! 当计数器等于零或周期时加载
    EPWM_GL_LOAD_PULSE_CNTR_ZERO_PERIOD = 0x2,
    //! 在同步事件时加载
    EPWM_GL_LOAD_PULSE_SYNC = 0x3,
    //! 在同步事件或计数器等于零时加载
    EPWM_GL_LOAD_PULSE_SYNC_OR_CNTR_ZERO = 0x4,
    //! 在同步事件或计数器等于周期时加载
    EPWM_GL_LOAD_PULSE_SYNC_OR_CNTR_PERIOD = 0x5,
    //! 在同步事件或计数器等于周期或零时加载
    EPWM_GL_LOAD_PULSE_SYNC_CNTR_ZERO_PERIOD = 0x6,
    //! 在全局强制时加载
    EPWM_GL_LOAD_PULSE_GLOBAL_FORCE = 0xF
} EPWM_GlobalLoadTrigger;

//*****************************************************************************
//
// Values that can be passed to EPWM_enableGlobalLoadRegisters(),
// EPWM_disableGlobalLoadRegisters() as theloadRegister parameter.
//
//*****************************************************************************
//! Global load TBPRD:TBPRDHR
//!
#define EPWM_GL_REGISTER_TBPRD_TBPRDHR   0x1U
//! Global load CMPA:CMPAHR
//!
#define EPWM_GL_REGISTER_CMPA_CMPAHR     0x2U
//! Global load CMPB:CMPBHR
//!
#define EPWM_GL_REGISTER_CMPB_CMPBHR     0x4U
//! Global load CMPC
//!
#define EPWM_GL_REGISTER_CMPC            0x8U
//! Global load CMPD
//!
#define EPWM_GL_REGISTER_CMPD            0x10U
//! Global load DBRED:DBREDHR
//!
#define EPWM_GL_REGISTER_DBRED_DBREDHR   0x20U
//! Global load DBFED:DBFEDHR
//!
#define EPWM_GL_REGISTER_DBFED_DBFEDHR   0x40U
//! Global load DBCTL
//!
#define EPWM_GL_REGISTER_DBCTL           0x80U
//! Global load AQCTLA/A2
//!
#define EPWM_GL_REGISTER_AQCTLA_AQCTLA2  0x100U
//! Global load AQCTLB/B2
//!
#define EPWM_GL_REGISTER_AQCTLB_AQCTLB2  0x200U
//! Global load AQCSFRC
//!
#define EPWM_GL_REGISTER_AQCSFRC         0x400U

//*****************************************************************************
//
//! Values that can be passed to EPWM_setValleyTriggerSource() as the \e
//! trigger parameter.
//
//*****************************************************************************
typedef enum
{
    //! Valley capture trigged by software
    EPWM_VALLEY_TRIGGER_EVENT_SOFTWARE = 0U,
    //! Valley capture trigged by when counter is equal to zero
    EPWM_VALLEY_TRIGGER_EVENT_CNTR_ZERO = 1U,
    //! Valley capture trigged by when counter is equal period
    EPWM_VALLEY_TRIGGER_EVENT_CNTR_PERIOD = 2U,
    //! Valley capture trigged when counter is equal to zero or period
    EPWM_VALLEY_TRIGGER_EVENT_CNTR_ZERO_PERIOD = 3U,
    //! Valley capture trigged by DCAEVT1 (Digital Compare A event 1)
    EPWM_VALLEY_TRIGGER_EVENT_DCAEVT1 = 4U,
    //! Valley capture trigged by DCAEVT2 (Digital Compare A event 2)
    EPWM_VALLEY_TRIGGER_EVENT_DCAEVT2 = 5U,
    //! Valley capture trigged by DCBEVT1 (Digital Compare B event 1)
    EPWM_VALLEY_TRIGGER_EVENT_DCBEVT1 = 6U,
    //! Valley capture trigged by DCBEVT2 (Digital Compare B event 2)
    EPWM_VALLEY_TRIGGER_EVENT_DCBEVT2 = 7U
} EPWM_ValleyTriggerSource;

//*****************************************************************************
//
//! Values that can be passed to EPWM_getValleyCountEdgeStatus() as the \e edge
//! parameter.
//
//*****************************************************************************
typedef enum
{
    EPWM_VALLEY_COUNT_START_EDGE = 0, //!< Valley count start edge
    EPWM_VALLEY_COUNT_STOP_EDGE  = 1  //!< Valley count stop edge
} EPWM_ValleyCounterEdge;

//*****************************************************************************
//
//! Values that can be passed to EPWM_setValleyDelayValue() as the \e delayMode
//! parameter.
//
//*****************************************************************************
typedef enum
{
    //! Delay value equals the offset value defines by software
    EPWM_VALLEY_DELAY_MODE_SW_DELAY   = 0U,
    //! Delay value equals the sum of the Hardware counter value and the offset
    //! value defines by software
    EPWM_VALLEY_DELAY_MODE_VCNT_DELAY_SW_DELAY = 1U,
    //! Delay value equals the the Hardware counter shifted by
    //! (1 + the offset value defines by software)
    EPWM_VALLEY_DELAY_MODE_VCNT_DELAY_SHIFT_1_SW_DELAY = 2U,
    //! Delay value equals the the Hardware counter shifted by
    //! (2 + the offset value defines by software)
    EPWM_VALLEY_DELAY_MODE_VCNT_DELAY_SHIFT_2_SW_DELAY = 3U,
    //! Delay value equals the the Hardware counter shifted by
    //! (4 + the offset value defines by software)
    EPWM_VALLEY_DELAY_MODE_VCNT_DELAY_SHIFT_4_SW_DELAY = 4U
} EPWM_ValleyDelayMode;

//
// DC Edge Filter
//
//*****************************************************************************
//
//! Values that can be passed to EPWM_setDigitalCompareEdgeFilterMode()
//! as the \e edgeMode parameter.
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_EDGEFILT_MODE_RISING  = 0, //!< Digital Compare Edge filter low
                                       //!< to high edge mode
    EPWM_DC_EDGEFILT_MODE_FALLING = 1, //!< Digital Compare Edge filter high
                                       //!< to low edge mode
    EPWM_DC_EDGEFILT_MODE_BOTH    = 2  //!< Digital Compare Edge filter both
                                       //!< edges mode
} EPWM_DigitalCompareEdgeFilterMode;

//*****************************************************************************
//
//! Values that can be passed to EPWM_setDigitalCompareEdgeFilterEdgeCount()
//! as the \e edgeCount parameter.
//
//*****************************************************************************
typedef enum
{
    EPWM_DC_EDGEFILT_EDGECNT_0  = 0, //!< Digital Compare Edge filter edge
                                     //!< count = 0
    EPWM_DC_EDGEFILT_EDGECNT_1  = 1, //!< Digital Compare Edge filter edge
                                     //!< count = 1
    EPWM_DC_EDGEFILT_EDGECNT_2  = 2, //!< Digital Compare Edge filter edge
                                     //!< count = 2
    EPWM_DC_EDGEFILT_EDGECNT_3  = 3, //!< Digital Compare Edge filter edge
                                     //!< count = 3
    EPWM_DC_EDGEFILT_EDGECNT_4  = 4, //!< Digital Compare Edge filter edge
                                     //!< count = 4
    EPWM_DC_EDGEFILT_EDGECNT_5  = 5, //!< Digital Compare Edge filter edge
                                     //!< count = 5
    EPWM_DC_EDGEFILT_EDGECNT_6  = 6, //!< Digital Compare Edge filter edge
                                     //!< count = 6
    EPWM_DC_EDGEFILT_EDGECNT_7  = 7  //!< Digital Compare Edge filter edge
                                     //!< count = 7
} EPWM_DigitalCompareEdgeFilterEdgeCount;

//*****************************************************************************
//
//! Values that can be passed to EPWM_configureSignal() as the
//! \e signalParams parameter.
//
//*****************************************************************************
typedef struct
{
    float32_t              freqInHz;    //!< Desired Signal Frequency(in Hz)
    float32_t              dutyValA;    //!< Desired ePWMxA Signal Duty
    float32_t              dutyValB;    //!< Desired ePWMxB Signal Duty
    bool                   invertSignalB; //!< Invert ePWMxB Signal if true
    float32_t              sysClkInHz;  //!< SYSCLK Frequency(in Hz)
    SysCtl_EPWMCLKDivider  epwmClkDiv;  //!< EPWM Clock Divider
    EPWM_TimeBaseCountMode tbCtrMode;   //!< Time Base Counter Mode
    EPWM_ClockDivider      tbClkDiv;    //!< Time Base Counter Clock Divider
    EPWM_HSClockDivider    tbHSClkDiv;  //!< Time Base Counter HS Clock Divider
} EPWM_SignalParams;

//*****************************************************************************
//
// Functions APIs shared with HRPWM module
//
//*****************************************************************************

//
// Period Control related API
//
#define EPWM_setSyncPulseSource                 HRPWM_setSyncPulseSource

//*****************************************************************************
//
// Prototypes for the API.
//
//*****************************************************************************

//*****************************************************************************
//
//! \internal
//! Checks ePWM base address.
//!
//! \param base specifies the ePWM module base address.
//!
//! This function determines if an ePWM module base address is valid.
//!
//! \return Returns \b true if the base address is valid and \b false
//! otherwise.
//
//*****************************************************************************
#ifdef DEBUG
static inline bool EPWM_isBaseValid(uint32_t base)
{
    return(
           (base == EPWM1_BASE) ||
           (base == EPWM2_BASE) ||
           (base == EPWM3_BASE) ||
           (base == EPWM4_BASE) ||
           (base == EPWM5_BASE) ||
           (base == EPWM6_BASE) ||
           (base == EPWM7_BASE) ||
           (base == EPWM8_BASE) ||
           (base == EPWM9_BASE) ||
           (base == EPWM10_BASE) ||
           (base == EPWM11_BASE) ||
           (base == EPWM12_BASE)
          );
}
#endif

//
// 时基子模块相关API
//
//*****************************************************************************
//
//! 设置时基计数值
//!
//! \param base 是EPWM模块的基地址。
//! \param count 是时基计数值。
//!
//! 此函数设置时基计数器的16位计数值。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTimeBaseCounter(uint32_t base, uint16_t count)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入TBCTR寄存器
    //
    HWREGH(base + EPWM_O_TBCTR) = count;
}

//*****************************************************************************
//
//! 设置相位同步后的计数模式
//!
//! \param base 是EPWM模块的基地址。
//! \param mode 是计数模式。
//!
//! 此函数设置通过EPWM_setPhaseShift()设置新相位值后,时基计数器向上或向下计数。
//! 计数方向由变量mode确定。mode的有效输入值为:
//!  - EPWM_COUNT_MODE_UP_AFTER_SYNC      - 同步后向上计数
//!  - EPWM_COUNT_MODE_DOWN_AFTER_SYNC    - 同步后向下计数
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setCountModeAfterSync(uint32_t base, EPWM_SyncCountMode mode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    if(mode == EPWM_COUNT_MODE_UP_AFTER_SYNC)
    {
        //
        // 设置PHSDIR位
        //
        HWREGH(base + EPWM_O_TBCTL) |= EPWM_TBCTL_PHSDIR;
    }
    else
    {
        //
        // 清除PHSDIR位
        //
        HWREGH(base + EPWM_O_TBCTL) &= ~EPWM_TBCTL_PHSDIR;
    }
}

//*****************************************************************************
//
//! 设置时基时钟和高速时基时钟计数预分频器
//!
//! \param base 是EPWM模块的基地址。
//! \param prescaler 是时基计数预分频值。
//! \param highSpeedPrescaler 是高速时基计数预分频值。
//!
//! 此函数设置时基时钟计数器和高速时基时钟计数器的预分频(除法器)值。
//! prescaler和highSpeedPrescaler的有效值为EPWM_CLOCK_DIVIDER_X,
//! 其中X为1,2,4,8,16,32,64或128。
//! 这些宏的实际数值代表0,1...7。
//! 输出时钟的计算公式为:
//!   TBCLK = EPWMCLK/(highSpeedPrescaler * prescaler)
//!
//! \b 注意: EPWMCLK是SYSCLK的缩放版本。复位时EPWMCLK为SYSCLK的一半。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setClockPrescaler(uint32_t base, EPWM_ClockDivider prescaler,
                       EPWM_HSClockDivider highSpeedPrescaler)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入CLKDIV和HSPCLKDIV位
    //
    HWREGH(base + EPWM_O_TBCTL) =
                ((HWREGH(base + EPWM_O_TBCTL)  &
                ~(EPWM_TBCTL_CLKDIV_M | EPWM_TBCTL_HSPCLKDIV_M)) |
                (((uint16_t)prescaler << EPWM_TBCTL_CLKDIV_S) |
                ((uint16_t)highSpeedPrescaler << EPWM_TBCTL_HSPCLKDIV_S)));
}

//*****************************************************************************
//
//! 强制产生软件同步脉冲
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数产生单个软件触发的同步脉冲。使用此函数前,请确保已使用
//! EPWM_setupSyncOutputMode()选择了适当的模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_forceSyncPulse(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置SWFSYNC位
    //
    HWREGH(base + EPWM_O_TBCTL) |= EPWM_TBCTL_SWFSYNC;
}

//*****************************************************************************
//
//! 设置同步输出脉冲事件
//!
//! \param base 是EPWM模块的基地址。
//! \param mode 是同步输出模式。
//!
//! 此函数设置同步输出脉冲模式。
//! mode的有效值为:
//!  - EPWM_SYNC_OUT_PULSE_ON_SOFTWARE   - 当调用EPWM_forceSyncPulse()
//!                                        函数或通过EPWMxSYNCI信号时,
//!                                        由软件生成同步脉冲。
//!  - EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO - 当时基计数器等于零时生成同步脉冲。
//!  - EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B - 当时基计数器等于比较B值时
//!                                           生成同步脉冲。
//!  - EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C - 当时基计数器等于比较C值时
//!                                           生成同步脉冲。
//!  - EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D - 当时基计数器等于比较D值时
//!                                           生成同步脉冲。
//!  - EPWM_SYNC_OUT_PULSE_DISABLED          - 禁用同步脉冲。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setSyncOutPulseMode(uint32_t base, EPWM_SyncOutPulseMode mode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 不支持扩展模式
    //
    if(mode < EPWM_SYNC_OUT_PULSE_DISABLED)
    {
        //
        // 写入SYNCOSEL位
        //
        HWREGH(base + EPWM_O_TBCTL) =
                ((HWREGH(base + EPWM_O_TBCTL) & ~(EPWM_TBCTL_SYNCOSEL_M)) |
                 ((uint16_t)mode << EPWM_TBCTL_SYNCOSEL_S));
    }
    //
    // 扩展模式和同步输出禁用模式
    //
    else
    {
        //
        // 将0x3写入SYNCOSEL以启用从SYNCOSELX选择
        //
        HWREGH(base + EPWM_O_TBCTL) = HWREGH(base + EPWM_O_TBCTL) |
                                      EPWM_TBCTL_SYNCOSEL_M;

        //
        // Write to SYNCOSELX bit
        //
        HWREGH(base + EPWM_O_TBCTL2) =
               ((HWREGH(base + EPWM_O_TBCTL2) & ~(EPWM_TBCTL2_SYNCOSELX_M)) |
                (((uint16_t)mode & 0x3U) << EPWM_TBCTL2_SYNCOSELX_S));
    }
}

//*****************************************************************************
//
//! 设置PWM周期加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param loadMode 是PWM周期加载模式。
//!
//! 此函数设置PWM周期的加载模式。如果loadMode设置为EPWM_PERIOD_SHADOW_LOAD,
//! 对TBPRD(PWM周期计数寄存器)的读写将访问影子寄存器。如果loadMode设置为
//! EPWM_PERIOD_DIRECT_LOAD,对TBPRD寄存器的读写将直接访问寄存器。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setPeriodLoadMode(uint32_t base, EPWM_PeriodLoadMode loadMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    if(loadMode == EPWM_PERIOD_SHADOW_LOAD)
    {
        //
        // 清除PRDLD位
        //
        HWREGH(base + EPWM_O_TBCTL) &= ~EPWM_TBCTL_PRDLD;
    }
    else
    {
        //
        // 设置PRDLD位
        //
        HWREGH(base + EPWM_O_TBCTL) |= EPWM_TBCTL_PRDLD;
    }
}

//*****************************************************************************
//
//! 使能相位偏移加载
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数使能在适当的同步事件发生时加载相位偏移。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enablePhaseShiftLoad(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置PHSEN位
    //
    HWREGH(base + EPWM_O_TBCTL) |= EPWM_TBCTL_PHSEN;
}

//*****************************************************************************
//
//! 禁用相位偏移加载
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用相位偏移加载。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disablePhaseShiftLoad(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 清除PHSEN位
    //
    HWREGH(base + EPWM_O_TBCTL) &= ~EPWM_TBCTL_PHSEN;
}

//*****************************************************************************
//
//! 设置时基计数器模式
//!
//! \param base 是EPWM模块的基地址。
//! \param counterMode 是时基计数器模式。
//!
//! 此函数设置时基计数器模式。
//! counterMode的有效值为:
//!  - EPWM_COUNTER_MODE_UP          - 向上计数模式。
//!  - EPWM_COUNTER_MODE_DOWN        - 向下计数模式。
//!  - EPWM_COUNTER_MODE_UP_DOWN     - 向上-向下计数模式。
//!  - EPWM_COUNTER_MODE_STOP_FREEZE - 停止-冻结计数器。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTimeBaseCounterMode(uint32_t base, EPWM_TimeBaseCountMode counterMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入CTRMODE位
    //
    HWREGH(base + EPWM_O_TBCTL) =
            ((HWREGH(base + EPWM_O_TBCTL) & ~(EPWM_TBCTL_CTRMODE_M)) |
             ((uint16_t)counterMode));
}

//*****************************************************************************
//
//! 设置影子到激活周期在同步时的加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param shadowLoadMode 是影子到激活加载模式。
//!
//! 此函数设置影子到激活周期寄存器在同步事件时的加载模式。
//! shadowLoadMode的有效值为:
//!  - EPWM_SHADOW_LOAD_MODE_COUNTER_ZERO - 当时基计数器到达0时发生影子到激活加载。
//!  - EPWM_SHADOW_LOAD_MODE_COUNTER_SYNC - 当时基计数器到达0且发生SYNC时
//!                                         发生影子到激活加载。
//!  - EPWM_SHADOW_LOAD_MODE_SYNC         - 仅当发生SYNC时发生影子到激活加载。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_selectPeriodLoadEvent(uint32_t base,
                           EPWM_PeriodShadowLoadMode shadowLoadMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入PRDLDSYNC位
    //
    HWREGH(base + EPWM_O_TBCTL2) =
                ((HWREGH(base + EPWM_O_TBCTL2) & ~(EPWM_TBCTL2_PRDLDSYNC_M)) |
                 ((uint16_t)shadowLoadMode << EPWM_TBCTL2_PRDLDSYNC_S));
}
//*****************************************************************************
//
//! 使能单次同步模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数使能单次同步模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableOneShotSync(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置OSHTSYNCMODE位
    //
    HWREGH(base + EPWM_O_TBCTL2) |= EPWM_TBCTL2_OSHTSYNCMODE;
}

//*****************************************************************************
//
//! 禁用单次同步模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用单次同步模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableOneShotSync(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 清除OSHTSYNCMODE位
    //
    HWREGH(base + EPWM_O_TBCTL2) &= ~EPWM_TBCTL2_OSHTSYNCMODE;
}

//*****************************************************************************
//
//! 启动单次同步模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数传播单次同步脉冲。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_startOneShotSync(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置OSHTSYNC位
    //
    HWREGH(base + EPWM_O_TBCTL2) |= EPWM_TBCTL2_OSHTSYNC;
}

//*****************************************************************************
//
//! 返回时基计数器值
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回时基计数器的当前值。
//!
//! \return 返回时基计数器值
//
//*****************************************************************************
static inline uint16_t
EPWM_getTimeBaseCounterValue(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回TBCTR值
    //
    return(HWREGH(base + EPWM_O_TBCTR));
}

//*****************************************************************************
//
//! 返回时基计数器最大值状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回时基最大计数器的状态。
//!
//! \return 如果计数器已达到0xFFFF则返回true。
//!         如果计数器未达到0xFFFF则返回false。
//
//*****************************************************************************
static inline bool
EPWM_getTimeBaseCounterOverflowStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 如果CTRMAX位被设置则返回true,否则返回false
    //
    return(((HWREGH(base + EPWM_O_TBSTS) & EPWM_TBSTS_CTRMAX) ==
            EPWM_TBSTS_CTRMAX) ? true : false);
}

//*****************************************************************************
//
//! 清除最大时基计数器事件
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数清除最大时基计数器锁存事件。该锁存事件在时基计数器
//! 达到其最大值0xFFFF时发生。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_clearTimeBaseCounterOverflowEvent(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置CTRMAX位
    //
    HWREGH(base + EPWM_O_TBSTS) = EPWM_TBSTS_CTRMAX;
}

//*****************************************************************************
//
//! 返回外部同步信号状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回外部同步信号状态。
//!
//! \return 如果有外部同步信号事件则返回true
//!         如果没有事件则返回false。
//
//*****************************************************************************
static inline bool
EPWM_getSyncStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 如果SYNCI位被设置则返回true,否则返回false
    //
    return(((HWREGH(base + EPWM_O_TBSTS) & EPWM_TBSTS_SYNCI) ==
            EPWM_TBSTS_SYNCI) ? true : false);
}

//*****************************************************************************
//
//! 清除外部同步信号事件
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数清除外部同步信号锁存事件。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_clearSyncEvent(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置SYNCI位
    //
    HWREGH(base + EPWM_O_TBSTS) = EPWM_TBSTS_SYNCI;
}

//*****************************************************************************
//
//! 返回时基计数器方向
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回时基计数器的方向。
//!
//! \return 如果计数器向上计数则返回EPWM_TIME_BASE_STATUS_COUNT_UP,
//!         如果计数器向下计数则返回EPWM_TIME_BASE_STATUS_COUNT_DOWN。
//
//*****************************************************************************
static inline uint16_t
EPWM_getTimeBaseCounterDirection(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回CTRDIR位
    //
    return(HWREGH(base + EPWM_O_TBSTS) & EPWM_TBSTS_CTRDIR);
}

//*****************************************************************************
//
//! 设置相位偏移计数器值
//!
//! \param base 是EPWM模块的基地址。
//! \param phaseCount 是相位偏移计数值。
//!
//! 此函数设置ePWM相16位时基计数器相位,相对于提供同步输入信号的时基。
//! 调用EPWM_enablePhaseShiftLoad()函数以在同步事件发生时启用
//! 加载phaseCount相位偏移值。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setPhaseShift(uint32_t base, uint16_t phaseCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入TBPHS位
    //
    HWREG(base + EPWM_O_TBPHS) =
                   ((HWREG(base + EPWM_O_TBPHS) &
                    ~((uint32_t)EPWM_TBPHS_TBPHS_M)) |
                    ((uint32_t)phaseCount << EPWM_TBPHS_TBPHS_S));
}

//*****************************************************************************
//
//! 设置PWM周期计数
//!
//! \param base 是EPWM模块的基地址。
//! \param periodCount 是周期计数值。
//!
//! 此函数设置PWM计数的周期。periodCount的值就是写入寄存器的值。
//! 用户应将波形的所需周期或频率映射到正确的periodCount。
//! 调用EPWM_selectPeriodLoadEvent()函数并使用适当的参数来设置
//! 周期计数的加载模式。periodCount的最大有效值为0xFFFF。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTimeBasePeriod(uint32_t base, uint16_t periodCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 写入TBPRD位
    //
    HWREGH(base + EPWM_O_TBPRD) = periodCount;
}

//*****************************************************************************
//
//! 获取PWM周期计数
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数获取PWM计数的周期。
//!
//! \return 周期计数值。
//
//*****************************************************************************
static inline uint16_t
EPWM_getTimeBasePeriod(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 从TBPRD位读取
    //
    return(HWREGH(base + EPWM_O_TBPRD));
}

//*****************************************************************************
//
//! 设置EPWM链接
//!
//! \param base 是EPWM模块的基地址。
//! \param epwmLink 是要链接的ePWM实例。
//! \param linkComp 是要链接的ePWM组件。
//!
//! 此函数将当前ePWM实例中的linkComp组件与epwmLink定义的ePWM实例的
//! linkComp组件链接起来。对epwmLink实例的linkComp组件值的更改(写入),
//! 会导致当前ePWM的linkComp组件发生相应更改。
//! 例如,如果当前ePWM是ePWM3,epwmLink和linkComp的值分别为
//! EPWM_LINK_WITH_EPWM_1和EPWM_LINK_COMP_C,那么对ePWM1中的COMPC寄存器的写入,
//! 将导致同时写入ePWM3的COMPC寄存器。
//! epwmLink的有效值为:
//!   - EPWM_LINK_WITH_EPWM_1  - 将当前ePWM与ePWM1链接
//!   - EPWM_LINK_WITH_EPWM_2  - 将当前ePWM与ePWM2链接
//!   - EPWM_LINK_WITH_EPWM_3  - 将当前ePWM与ePWM3链接
//!   - EPWM_LINK_WITH_EPWM_4  - 将当前ePWM与ePWM4链接
//!   - EPWM_LINK_WITH_EPWM_5  - 将当前ePWM与ePWM5链接
//!   - EPWM_LINK_WITH_EPWM_6  - 将当前ePWM与ePWM6链接
//!   - EPWM_LINK_WITH_EPWM_7  - 将当前ePWM与ePWM7链接
//!   - EPWM_LINK_WITH_EPWM_8  - 将当前ePWM与ePWM8链接
//!   - EPWM_LINK_WITH_EPWM_9  - 将当前ePWM与ePWM9链接
//!   - EPWM_LINK_WITH_EPWM_10  - 将当前ePWM与ePWM10链接
//!   - EPWM_LINK_WITH_EPWM_11  - 将当前ePWM与ePWM11链接
//!   - EPWM_LINK_WITH_EPWM_12  - 将当前ePWM与ePWM12链接
//!
//! linkComp的有效值为:
//!   - EPWM_LINK_TBPRD   - 链接TBPRD:TBPRDHR寄存器
//!   - EPWM_LINK_COMP_A   - 链接COMPA寄存器
//!   - EPWM_LINK_COMP_B   - 链接COMPB寄存器
//!   - EPWM_LINK_COMP_C   - 链接COMPC寄存器
//!   - EPWM_LINK_COMP_D   - 链接COMPD寄存器
//!   - EPWM_LINK_GLDCTL2  - 链接GLDCTL2寄存器
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setupEPWMLinks(uint32_t base, EPWM_CurrentLink epwmLink,
                    EPWM_LinkComponent linkComp)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    uint32_t registerOffset;
    registerOffset = base + EPWM_O_XLINK;

    //
    // 配置EPWM链接
    //
    HWREG(registerOffset) =
        ((HWREG(registerOffset) & ~((uint32_t)EPWM_XLINK_TBPRDLINK_M << (uint32_t)linkComp)) |
        ((uint32_t)epwmLink << (uint32_t)linkComp));
}


//*****************************************************************************
//
//! 设置计数器比较影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param compModule 是计数器比较模块。
//! \param loadMode 是影子到激活加载模式。
//!
//! 此函数启用并设置计数器比较影子加载模式。
//! 变量的有效值为:
//!  - compModule
//!      - EPWM_COUNTER_COMPARE_A - 计数器比较A。
//!      - EPWM_COUNTER_COMPARE_B - 计数器比较B。
//!      - EPWM_COUNTER_COMPARE_C - 计数器比较C。
//!      - EPWM_COUNTER_COMPARE_D - 计数器比较D。
//!  - loadMode
//!      - EPWM_COMP_LOAD_ON_CNTR_ZERO - 当计数器等于零时加载
//!      - EPWM_COMP_LOAD_ON_CNTR_PERIOD - 当计数器等于周期时加载
//!      - EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD - 当计数器等于零或周期时加载
//!      - EPWM_COMP_LOAD_FREEZE  - 冻结影子到激活加载
//!      - EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO - 当计数器等于零时加载
//!      - EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD -当计数器等于周期时加载
//!      - EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD - 当计数器等于零或周期时加载
//!      - EPWM_COMP_LOAD_ON_SYNC_ONLY - 仅在同步时加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setCounterCompareShadowLoadMode(uint32_t base,
                                     EPWM_CounterCompareModule compModule,
                                     EPWM_CounterCompareLoadMode loadMode)
{
    uint16_t syncModeOffset;
    uint16_t loadModeOffset;
    uint16_t shadowModeOffset;
    uint32_t registerOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    if((compModule == EPWM_COUNTER_COMPARE_A) ||
       (compModule == EPWM_COUNTER_COMPARE_C))
    {
        syncModeOffset = 10U;
        loadModeOffset = 0U;
        shadowModeOffset = 4U;
    }
    else
    {
        syncModeOffset = 12U;
        loadModeOffset = 2U;
        shadowModeOffset = 6U;
    }

    //
    // 获取寄存器偏移量。A&B使用EPWM_O_CMPCTL,C&D使用EPWM_O_CMPCTL2
    //
    registerOffset = base + EPWM_O_CMPCTL + ((uint32_t)compModule & 0x1U);

    //
    // 设置适当的同步和加载模式位,并启用影子加载模式。
    // 影子到激活加载也可以被冻结。
    //
    HWREGH(registerOffset) = ((HWREGH(registerOffset) &
                         ~((0x3U << syncModeOffset) | // 清除同步模式
                           (0x3U << loadModeOffset) | // 清除加载模式
                           (0x1U << shadowModeOffset))) | // 影子模式
                         ((((uint16_t)loadMode >> 2U) << syncModeOffset) |
                         (((uint16_t)loadMode & 0x3U) << loadModeOffset)));
}

//*****************************************************************************
//
//! 禁用计数器比较影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param compModule 是计数器比较模块。
//!
//! 此函数禁用计数器比较影子加载模式。
//! 变量的有效值为:
//!  - compModule
//!      - EPWM_COUNTER_COMPARE_A - 计数器比较A。
//!      - EPWM_COUNTER_COMPARE_B - 计数器比较B。
//!      - EPWM_COUNTER_COMPARE_C - 计数器比较C。
//!      - EPWM_COUNTER_COMPARE_D - 计数器比较D。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableCounterCompareShadowLoadMode(uint32_t base,
                                         EPWM_CounterCompareModule compModule)
{
    uint16_t shadowModeOffset;
    uint32_t registerOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    if((compModule == EPWM_COUNTER_COMPARE_A) ||
       (compModule == EPWM_COUNTER_COMPARE_C))
    {
        shadowModeOffset = 4U;
    }
    else
    {
        shadowModeOffset = 6U;
    }

    //
    // 获取寄存器偏移量。A&B使用EPWM_O_CMPCTL,C&D使用EPWM_O_CMPCTL2
    //
    registerOffset = base + EPWM_O_CMPCTL + ((uint32_t)compModule & 0x1U);

    //
    // 禁用影子加载模式
    //
    HWREGH(registerOffset) = (HWREGH(registerOffset) |
                             (0x1U << shadowModeOffset));
}

//*****************************************************************************
//
//! 设置计数器比较值
//!
//! \param base 是EPWM模块的基地址。
//! \param compModule 是计数器比较值模块。
//! \param compCount 是计数器比较计数值。
//!
//! 此函数设置计数器比较寄存器的计数器比较值。
//! compCount的最大值为0xFFFF。
//! compModule的有效值为:
//!   - EPWM_COUNTER_COMPARE_A - 计数器比较A。
//!   - EPWM_COUNTER_COMPARE_B - 计数器比较B。
//!   - EPWM_COUNTER_COMPARE_C - 计数器比较C。
//!   - EPWM_COUNTER_COMPARE_D - 计数器比较D。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setCounterCompareValue(uint32_t base, EPWM_CounterCompareModule compModule,
                            uint16_t compCount)
{
    uint32_t registerOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 获取计数器比较的寄存器偏移量
    //
    registerOffset = EPWM_O_CMPA + (uint32_t)compModule;

    //
    // 写入计数器比较寄存器
    //
    if((compModule == EPWM_COUNTER_COMPARE_A) ||
        (compModule == EPWM_COUNTER_COMPARE_B))
    {
        //
        // 写入COMPA或COMPB位
        //
        HWREGH(base + registerOffset + 0x1U) = compCount;
    }
    else
    {
        //
        // 写入COMPC或COMPD位
        //
        HWREGH(base + registerOffset) = compCount;
    }
}

//*****************************************************************************
//
//! 获取计数器比较值
//!
//! \param base 是EPWM模块的基地址。
//! \param compModule 是计数器比较值模块。
//!
//! 此函数获取计数器比较寄存器的计数器比较值。
//! compModule的有效值为:
//!   - EPWM_COUNTER_COMPARE_A - 计数器比较A。
//!   - EPWM_COUNTER_COMPARE_B - 计数器比较B。
//!   - EPWM_COUNTER_COMPARE_C - 计数器比较C。
//!   - EPWM_COUNTER_COMPARE_D - 计数器比较D。
//!
//! \return 计数器比较计数值。
//
//*****************************************************************************
static inline uint16_t
EPWM_getCounterCompareValue(uint32_t base, EPWM_CounterCompareModule compModule)
{
    uint32_t registerOffset;
    uint16_t compCount;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 获取计数器比较的寄存器偏移量
    //
    registerOffset = EPWM_O_CMPA + (uint32_t)compModule;

    //
    // 从计数器比较寄存器读取
    //
    if((compModule == EPWM_COUNTER_COMPARE_A) ||
        (compModule == EPWM_COUNTER_COMPARE_B))
    {
        //
        // 读取COMPA或COMPB位
        //
        compCount = (uint16_t)((HWREG(base + registerOffset) &
                     0xFFFF0000UL) >> 16U);
    }
    else
    {
        //
        // 读取COMPC或COMPD位
        //
        compCount = HWREGH(base + registerOffset);
    }
    return(compCount);
}

//*****************************************************************************
//
//! 返回计数器比较影子寄存器充满状态
//!
//! \param base 是EPWM模块的基地址。
//! \param compModule 是计数器比较值模块。
//!
//! 此函数返回计数器比较影子寄存器充满状态标志。
//! compModule的有效值为:
//!   - EPWM_COUNTER_COMPARE_A - 计数器比较A。
//!   - EPWM_COUNTER_COMPARE_B - 计数器比较B。
//!
//! \return 如果影子寄存器充满则返回true。
//!         如果影子寄存器未充满则返回false。
//
//*****************************************************************************
static inline bool
EPWM_getCounterCompareShadowStatus(uint32_t base,
                                   EPWM_CounterCompareModule compModule)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 检查输入的有效性
    // COMPA和COMPB是有效的输入参数
    //
    ASSERT((compModule == EPWM_COUNTER_COMPARE_A) ||
            (compModule == EPWM_COUNTER_COMPARE_B));

    //
    // 读取SHDWAFULL或SHDWBFULL位的值
    //
    return((((HWREG(base + EPWM_O_CMPCTL) >>
              ((((uint16_t)compModule >> 1U) & 0x1U) + 8U)) &
              0x1U) == 0x1U) ? true:false);
}

//
// 动作限定器模块相关API
//
//*****************************************************************************
//
//! 设置动作限定器影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param aqModule 是动作限定器模块值。
//! \param loadMode 是影子到激活加载模式。
//!
//! 此函数启用并设置动作限定器影子加载模式。
//! 变量的有效值为:
//!  - aqModule
//!      - EPWM_ACTION_QUALIFIER_A - 动作限定器A。
//!      - EPWM_ACTION_QUALIFIER_B - 动作限定器B。
//!  - loadMode
//!      - EPWM_AQ_LOAD_ON_CNTR_ZERO - 当计数器等于零时加载
//!      - EPWM_AQ_LOAD_ON_CNTR_PERIOD - 当计数器等于周期时加载
//!      - EPWM_AQ_LOAD_ON_CNTR_ZERO_PERIOD - 当计数器等于零或周期时加载
//!      - EPWM_AQ_LOAD_FREEZE  - 冻结影子到激活加载
//!      - EPWM_AQ_LOAD_ON_SYNC_CNTR_ZERO - 在同步或计数器等于零时加载
//!      - EPWM_AQ_LOAD_ON_SYNC_CNTR_PERIOD - 在同步或计数器等于周期时加载
//!      - EPWM_AQ_LOAD_ON_SYNC_CNTR_ZERO_PERIOD - 在同步或计数器等于零或周期时加载
//!      - EPWM_AQ_LOAD_ON_SYNC_ONLY - 仅在同步时加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierShadowLoadMode(uint32_t base,
                                      EPWM_ActionQualifierModule aqModule,
                                      EPWM_ActionQualifierLoadMode loadMode)
{
    uint16_t syncModeOffset;
    uint16_t shadowModeOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    syncModeOffset = 8U + (uint16_t)aqModule;
    shadowModeOffset = 4U + (uint16_t)aqModule;

    //
    // 设置适当的同步和加载模式位,并启用影子加载模式。
    // 影子到激活加载也可以被冻结。
    //
    HWREGH(base + EPWM_O_AQCTL) = ((HWREGH(base + EPWM_O_AQCTL) &
                                   (~((0x3U << (uint16_t)aqModule) |
                                   (0x3U << (uint16_t)syncModeOffset))) |
                                   (0x1U << shadowModeOffset)) |
                                   ((((uint16_t)loadMode >> 2U) <<
                                     syncModeOffset) | (((uint16_t)loadMode &
                                    0x3U) << (uint16_t)aqModule)));
}

//*****************************************************************************
//
//! 禁用动作限定器影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param aqModule 是动作限定器模块值。
//!
//! 此函数禁用动作限定器影子加载模式。
//! 变量的有效值为:
//!  - aqModule
//!      - EPWM_ACTION_QUALIFIER_A - 动作限定器A。
//!      - EPWM_ACTION_QUALIFIER_B - 动作限定器B。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableActionQualifierShadowLoadMode(uint32_t base,
                                          EPWM_ActionQualifierModule aqModule)
{
    uint16_t shadowModeOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    shadowModeOffset = 4U + (uint16_t)aqModule;

    //
    // 禁用影子加载模式。动作限定器仅在立即模式下加载。
    //
    HWREGH(base + EPWM_O_AQCTL) &= ~(1U << shadowModeOffset);
}

//*****************************************************************************
//
//! 设置动作限定器事件T1的触发源
//!
//! \param base 是EPWM模块的基地址。
//! \param trigger 动作限定器触发的触发源。
//!
//! 此函数设置动作限定器事件T1的触发源。
//! trigger的有效值为:
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_1       - 数字比较事件A 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_2       - 数字比较事件A 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_1       - 数字比较事件B 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_2       - 数字比较事件B 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_1        - 故障区 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_2        - 故障区 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_3        - 故障区 3
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_EPWM_SYNCIN - ePWM同步
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierT1TriggerSource(uint32_t base,
                                     EPWM_ActionQualifierTriggerSource trigger)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置T1触发源
    //
    HWREGH(base + EPWM_O_AQTSRCSEL) =
         ((HWREGH(base + EPWM_O_AQTSRCSEL) & (~EPWM_AQTSRCSEL_T1SEL_M)) |
          ((uint16_t)trigger));
}

//*****************************************************************************
//
//! 设置动作限定器事件T2的触发源
//!
//! \param base 是EPWM模块的基地址。
//! \param trigger 动作限定器触发的触发源。
//!
//! 此函数设置动作限定器事件T2的触发源。
//! trigger的有效值为:
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_1       - 数字比较事件A 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCA_2       - 数字比较事件A 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_1       - 数字比较事件B 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_DCB_2       - 数字比较事件B 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_1        - 故障区 1
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_2        - 故障区 2
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_TZ_3        - 故障区 3
//!   - EPWM_AQ_TRIGGER_EVENT_TRIG_EPWM_SYNCIN - ePWM同步
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierT2TriggerSource(uint32_t base,
                                      EPWM_ActionQualifierTriggerSource trigger)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置T2触发源
    //
    HWREGH(base + EPWM_O_AQTSRCSEL) =
          ((HWREGH(base + EPWM_O_AQTSRCSEL) & (~EPWM_AQTSRCSEL_T2SEL_M)) |
           ((uint16_t)trigger << EPWM_AQTSRCSEL_T2SEL_S));
}

//*****************************************************************************
//
//! Set up Action qualifier outputs
//!
//! \param base is the base address of the EPWM module.
//! \param epwmOutput is the ePWM pin type.
//! \param output is the Action Qualifier output.
//! \param event is the event that causes a change in output.
//!
//! This function sets up the Action Qualifier output on ePWM A or ePWMB,
//! depending on the value of epwmOutput, to a value specified by outPut based
//! on the input events - specified by event.
//! The following are valid values for the parameters.
//!   - epwmOutput
//!       - EPWM_AQ_OUTPUT_A          - ePWMxA output
//!       - EPWM_AQ_OUTPUT_B          - ePWMxB output
//!   - output
//!       - EPWM_AQ_OUTPUT_NO_CHANGE  - No change in the output pins
//!       - EPWM_AQ_OUTPUT_LOW        - Set output pins to low
//!       - EPWM_AQ_OUTPUT_HIGH       - Set output pins to High
//!       - EPWM_AQ_OUTPUT_TOGGLE     - Toggle the output pins
//!   - event
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO       - Time base counter equals
//!                                                 zero
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD     - Time base counter equals
//!                                                 period
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA    - Time base counter up equals
//!                                                 COMPA
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA  - Time base counter down
//!                                                 equals COMPA
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB    - Time base counter up equals
//!                                                 COMPB
//!       - EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB  - Time base counter down
//!                                                 equals COMPB
//!       - EPWM_AQ_OUTPUT_ON_T1_COUNT_UP         - T1 event on count up
//!       - EPWM_AQ_OUTPUT_ON_T1_COUNT_DOWN       - T1 event on count down
//!       - EPWM_AQ_OUTPUT_ON_T2_COUNT_UP         - T2 event on count up
//!       - EPWM_AQ_OUTPUT_ON_T2_COUNT_DOWN       - T2 event on count down
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierAction(uint32_t base,
                              EPWM_ActionQualifierOutputModule epwmOutput,
                              EPWM_ActionQualifierOutput output,
                              EPWM_ActionQualifierOutputEvent event)
{
    uint32_t registerOffset;
    uint32_t registerTOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 获取寄存器偏移量
    //
    registerOffset = EPWM_O_AQCTLA + (uint32_t)epwmOutput;
    registerTOffset = EPWM_O_AQCTLA2 + (uint32_t)epwmOutput;

    //
    // 如果事件发生在T1或T2事件上
    //
    if(((uint16_t)event & 0x1U) == 1U)
    {
        //
        // 写入AQCTLA2寄存器的T1U,T1D,T2U或T2D位
        //
        HWREGH(base + registerTOffset) =
         ((HWREGH(base + registerTOffset) & ~(3U << ((uint16_t)event - 1U))) |
          ((uint16_t)output << ((uint16_t)event - 1U)));
    }
    else
    {
        //
        // 写入AQCTLA寄存器的ZRO,PRD,CAU,CAD,CBU或CBD位
        //
        HWREGH(base + registerOffset) =
                ((HWREGH(base + registerOffset) & ~(3U << (uint16_t)event)) |
                 ((uint16_t)output << (uint16_t)event));
    }
}

//*****************************************************************************
//
//! Set up Action qualifier event outputs
//!
//! \param base is the base address of the EPWM module.
//! \param epwmOutput is the ePWM pin type.
//! \param action is the desired action when the specified event occurs
//!
//! This function sets up the Action Qualifier output on ePWMA or ePWMB,
//! depending on the value of epwmOutput, to a value specified by action.
//! Valid action param values from different time base counter scenarios
//! should be OR'd together to configure complete action for a pwm output.
//! The following are valid values for the parameters.
//!   - epwmOutput
//!       - EPWM_AQ_OUTPUT_A          - ePWMxA output
//!       - EPWM_AQ_OUTPUT_B          - ePWMxB output
//!
//!   - action
//!       - When time base counter equals zero
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_ZERO   - Time base counter equals zero
//!                                             and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_ZERO         - Time base counter equals zero
//!                                             and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_ZERO        - Time base counter equals zero
//!                                             and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_ZERO      - Time base counter equals zero
//!                                             and toggle the output pins
//!       - When time base counter equals period
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_PERIOD - Time base counter equals period
//!                                             and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_PERIOD       - Time base counter equals period
//!                                             and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_PERIOD      - Time base counter equals period
//!                                             and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_PERIOD    - Time base counter equals period
//!                                             and toggle the output pins
//!       - When time base counter equals CMPA during up-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_UP_CMPA  - Time base counter up equals
//!                                               COMPA and no change in the
//!                                               output pins
//!         - EPWM_AQ_OUTPUT_LOW_UP_CMPA        - Time base counter up equals
//!                                               COMPA and set output pins low
//!         - EPWM_AQ_OUTPUT_HIGH_UP_CMPA       - Time base counter up equals
//!                                               COMPA and set output pins high
//!         - EPWM_AQ_OUTPUT_TOGGLE_UP_CMPA     - Time base counter up equals
//!                                               COMPA and toggle output pins
//!       - When time base counter equals CMPA during down-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_CMPA - Time base counter down equals
//!                                                COMPA and no change in the
//!                                                output pins
//!         - EPWM_AQ_OUTPUT_LOW_DOWN_CMPA      - Time base counter down equals
//!                                               COMPA and set output pins low
//!         - EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA     - Time base counter down equals
//!                                               COMPA and set output pins high
//!         - EPWM_AQ_OUTPUT_TOGGLE_DOWN_CMPA   - Time base counter down equals
//!                                               COMPA and toggle output pins
//!       - When time base counter equals CMPB during up-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_UP_CMPB  - Time base counter up equals
//!                                               COMPB and no change in the
//!                                               output pins
//!         - EPWM_AQ_OUTPUT_LOW_UP_CMPB        - Time base counter up equals
//!                                               COMPB and set output pins low
//!         - EPWM_AQ_OUTPUT_HIGH_UP_CMPB       - Time base counter up equals
//!                                               COMPB and set output pins high
//!         - EPWM_AQ_OUTPUT_TOGGLE_UP_CMPB     - Time base counter up equals
//!                                               COMPB and toggle output pins
//!       - When time base counter equals CMPB during down-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_CMPB- Time base counter down equals
//!                                               COMPB and no change in the
//!                                               output pins
//!         - EPWM_AQ_OUTPUT_LOW_DOWN_CMPB      - Time base counter down equals
//!                                               COMPB and set output pins low
//!         - EPWM_AQ_OUTPUT_HIGH_DOWN_CMPB     - Time base counter down equals
//!                                               COMPB and set output pins high
//!         - EPWM_AQ_OUTPUT_TOGGLE_DOWN_CMPB   - Time base counter down equals
//!                                               COMPB and toggle output pins
//!
//! \b note:  A logical OR of the valid values should be passed as the action
//!           parameter. Single action should be configured for each time base
//!           counter scenario.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierActionComplete(uint32_t base,
                                   EPWM_ActionQualifierOutputModule epwmOutput,
                                   uint16_t action)
{
    uint32_t registerOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 获取寄存器偏移量
    //
    registerOffset = EPWM_O_AQCTLA + (uint32_t)epwmOutput;

    //
    // 写入AQCTLA寄存器的ZRO,PRD,CAU,CAD,CBU或CBD位
    //
    HWREGH(base + registerOffset) = (uint16_t)action;
}

//*****************************************************************************
//
//! Set up Additional action qualifier event outputs
//!
//! \param base is the base address of the EPWM module.
//! \param epwmOutput is the ePWM pin type.
//! \param action is the desired action when the specified event occurs
//!
//! This function sets up the Additional Action Qualifier output on ePWMA or
//! ePWMB depending on the value of epwmOutput, to a value specified by action.
//! Valid action param values from different event scenarios should be OR'd
//! together to configure complete action for a pwm output.
//! The following are valid values for the parameters.
//!   - epwmOutput
//!       - EPWM_AQ_OUTPUT_A          - ePWMxA output
//!       - EPWM_AQ_OUTPUT_B          - ePWMxB output
//!   - action
//!       - When T1 event occurs during up-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_UP_T1  - T1 event on count up
//!                                             and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_UP_T1        - T1 event on count up
//!                                           and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_UP_T1       - T1 event on count up
//!                                           and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_UP_T1     - T1 event on count up
//!                                           and toggle the output pins
//!       - When T1 event occurs during down-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_T1- T1 event on count down
//!                                           and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_DOWN_T1      - T1 event on count down
//!                                           and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_DOWN_T1     - T1 event on count down
//!                                           and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_DOWN_T1   - T1 event on count down
//!                                           and toggle the output pins
//!       - When T2 event occurs during up-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_UP_T2  - T2 event on count up
//!                                             and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_UP_T2        - T2 event on count up
//!                                             and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_UP_T2       - T2 event on count up
//!                                             and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_UP_T2     - T2 event on count up
//!                                             and toggle the output pins
//!       - When T2 event occurs during down-count
//!         - EPWM_AQ_OUTPUT_NO_CHANGE_DOWN_T2 - T2 event on count down
//!                                              and no change in output pins
//!         - EPWM_AQ_OUTPUT_LOW_DOWN_T2       - T2 event on count down
//!                                              and set output pins to low
//!         - EPWM_AQ_OUTPUT_HIGH_DOWN_T2      - T2 event on count down
//!                                              and set output pins to high
//!         - EPWM_AQ_OUTPUT_TOGGLE_DOWN_T2    - T2 event on count down
//!                                              and toggle the output pins
//!
//! \b note:  A logical OR of the valid values should be passed as the action
//!           parameter. Single action should be configured for each event
//!           scenario.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setAdditionalActionQualifierActionComplete(uint32_t base,
                               EPWM_ActionQualifierOutputModule epwmOutput,
                               uint16_t action)
{
    uint32_t registerTOffset;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 获取寄存器偏移量
    //
    registerTOffset = EPWM_O_AQCTLA2 + (uint32_t)epwmOutput;

    //
    // 写入AQCTLA2寄存器的T1U,T1D,T2U或T2D位
    //
    HWREGH(base + registerTOffset) = (uint16_t)action;
}

//*****************************************************************************
//
//! 设置动作限定器连续软件强制影子模式
//!
//! \param base 是EPWM模块的基地址。
//! \param mode 是影子到激活加载模式。
//!
//! 此函数设置AQCFRSC寄存器的加载模式为连续软件强制重新加载模式。
//! 软件强制动作由EPWM_setActionQualifierContSWForceAction()函数确定。
//! mode的有效值为:
//!   - EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO        - 当计数器等于零时影子模式加载
//!   - EPWM_AQ_SW_SH_LOAD_ON_CNTR_PERIOD      - 当计数器等于周期时影子模式加载
//!   - EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO_PERIOD - 当计数器等于零或周期时影子模式加载
//!   - EPWM_AQ_SW_IMMEDIATE_LOAD               - 仅立即模式加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierContSWForceShadowMode(uint32_t base,
                                             EPWM_ActionQualifierContForce mode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置动作限定器软件动作重新加载模式
    // 写入RLDCSF位
    //
    HWREGH(base + EPWM_O_AQSFRC) =
            ((HWREGH(base + EPWM_O_AQSFRC) & ~EPWM_AQSFRC_RLDCSF_M) |
             ((uint16_t)mode << EPWM_AQSFRC_RLDCSF_S));
}

//*****************************************************************************
//
//! 触发连续软件强制事件
//!
//! \param base 是EPWM模块的基地址。
//! \param epwmOutput 是ePWM引脚类型。
//! \param output 是动作限定器输出。
//!
//! 此函数基于epwmOutput的值在ePWM A或B上触发连续软件强制的
//! 动作限定器输出。
//! 参数的有效值为:
//!   - epwmOutput
//!       - EPWM_AQ_OUTPUT_A          - ePWMxA输出
//!       - EPWM_AQ_OUTPUT_B          - ePWMxB输出
//!   - output
//!       - EPWM_AQ_SW_DISABLED       - 禁用软件强制
//!       - EPWM_AQ_SW_OUTPUT_LOW     - 设置输出引脚为低
//!       - EPWM_AQ_SW_OUTPUT_HIGH    - 设置输出引脚为高
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierContSWForceAction(uint32_t base,
                                    EPWM_ActionQualifierOutputModule epwmOutput,
                                    EPWM_ActionQualifierSWOutput output)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启动连续软件强制输出
    //
    if(epwmOutput == EPWM_AQ_OUTPUT_A)
    {
        HWREGH(base + EPWM_O_AQCSFRC) =
                ((HWREGH(base + EPWM_O_AQCSFRC) & ~EPWM_AQCSFRC_CSFA_M) |
                 ((uint16_t)output));
    }
    else
    {
        HWREGH(base + EPWM_O_AQCSFRC) =
                ((HWREGH(base + EPWM_O_AQCSFRC) & ~EPWM_AQCSFRC_CSFB_M) |
                 ((uint16_t)output << EPWM_AQCSFRC_CSFB_S)) ;
    }
}

//*****************************************************************************
//
//! 设置单次软件强制的动作限定器输出
//!
//! \param base 是EPWM模块的基地址。
//! \param epwmOutput 是ePWM引脚类型。
//! \param output 是动作限定器输出。
//!
//! 此函数根据epwmOutput的值在ePWM A或ePWMB上设置单次软件强制的
//! 动作限定器输出为output指定的值。
//! 参数的有效值为:
//!   - epwmOutput
//!       - EPWM_AQ_OUTPUT_A          - ePWMxA输出
//!       - EPWM_AQ_OUTPUT_B          - ePWMxB输出
//!   - output
//!       - EPWM_AQ_OUTPUT_NO_CHANGE  - 输出引脚不变
//!       - EPWM_AQ_OUTPUT_LOW        - 设置输出引脚为低
//!       - EPWM_AQ_OUTPUT_HIGH       - 设置输出引脚为高
//!       - EPWM_AQ_OUTPUT_TOGGLE     - 翻转输出引脚
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setActionQualifierSWAction(uint32_t base,
                                EPWM_ActionQualifierOutputModule epwmOutput,
                                EPWM_ActionQualifierOutput output)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置单次软件强制动作
    //
    if(epwmOutput == EPWM_AQ_OUTPUT_A)
    {
        HWREGH(base + EPWM_O_AQSFRC) =
                    ((HWREGH(base + EPWM_O_AQSFRC) & ~EPWM_AQSFRC_ACTSFA_M) |
                     ((uint16_t)output));
    }
    else
    {
        HWREGH(base + EPWM_O_AQSFRC) =
                    ((HWREGH(base + EPWM_O_AQSFRC) & ~EPWM_AQSFRC_ACTSFB_M) |
                     ((uint16_t)output << EPWM_AQSFRC_ACTSFB_S));
    }
}

//*****************************************************************************
//
//! 触发动作限定器的单次软件强制事件
//!
//! \param base 是EPWM模块的基地址。
//! \param epwmOutput 是ePWM引脚类型。
//!
//! 此函数基于epwmOutput的值在ePWM A或B上触发单次软件强制的
//! 动作限定器事件。
//! epwmOutput的有效值为:
//!   - EPWM_AQ_OUTPUT_A          - ePWMxA输出
//!   - EPWM_AQ_OUTPUT_B          - ePWMxB输出
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_forceActionQualifierSWAction(uint32_t base,
                                  EPWM_ActionQualifierOutputModule epwmOutput)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启动软件强制事件
    //
    if(epwmOutput == EPWM_AQ_OUTPUT_A)
    {
        HWREGH(base + EPWM_O_AQSFRC) |= EPWM_AQSFRC_OTSFA;
    }
    else
    {
        HWREGH(base + EPWM_O_AQSFRC) |= EPWM_AQSFRC_OTSFB;
    }
}

//
// 死区模块相关API
//
//*****************************************************************************
//
//! 设置死区信号输出交换模式
//!
//! \param base 是EPWM模块的基地址。
//! \param output 是ePWM死区输出。
//! \param enableSwapMode 是输出交换模式。
//!
//! 此函数设置输出信号交换模式。例如,如果output变量设置为EPWM_DB_OUTPUT_A
//! 并且enableSwapMode为true,则ePWM A输出从介ePWM B信号路径获取其信号。
//! 输入变量的有效值为:
//!  - output
//!      - EPWM_DB_OUTPUT_A   - ePWM输出A
//!      - EPWM_DB_OUTPUT_B   - ePWM输出B
//!  - enableSwapMode
//!      - true     - 输出被交换
//!      - false    - 输出和信号路径相同
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setDeadBandOutputSwapMode(uint32_t base, EPWM_DeadBandOutput output,
                               bool enableSwapMode)
{
    uint16_t mask;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    mask = (uint16_t)1U << ((uint16_t)output + EPWM_DBCTL_OUTSWAP_S);

    if(enableSwapMode)
    {
        //
        // 设置适当的outswap位以交换输出
        //
        HWREGH(base + EPWM_O_DBCTL) = (HWREGH(base + EPWM_O_DBCTL) | mask);
    }
    else
    {
        //
        // 清除适当的outswap位以禁用输出交换
        //
        HWREGH(base + EPWM_O_DBCTL) = (HWREGH(base + EPWM_O_DBCTL) & ~mask);
    }
}

//*****************************************************************************
//
//! 设置死区信号输出模式
//!
//! \param base 是EPWM模块的基地址。
//! \param delayMode 是死区延迟类型。
//! \param enableDelayMode 是死区延迟模式。
//!
//! 此函数设置死区延迟模式。delayMode变量确定应用的延迟是上升沿还是下降沿。
//! enableDelayMode确定是否应该应用死区延迟。
//! 变量的有效值为:
//!  - delayMode
//!      - EPWM_DB_RED   - 上升沿延迟
//!      - EPWM_DB_FED   - 下降沿延迟
//!  - enableDelayMode
//!      - true     - 应用下降沿或上升沿延迟
//!      - false    - 绕过死区延迟
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setDeadBandDelayMode(uint32_t base, EPWM_DeadBandDelayMode delayMode,
                          bool enableDelayMode)
{
    uint16_t mask;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    mask = (uint16_t)1U << ((uint16_t)delayMode + EPWM_DBCTL_OUT_MODE_S);

    if(enableDelayMode)
    {
         //
         // 设置适当的outmode位以启用死区延迟
         //
         HWREGH(base + EPWM_O_DBCTL) = (HWREGH(base + EPWM_O_DBCTL) | mask);
    }
    else
    {
        //
        // 清除适当的outswap位以禁用输出交换
        //
        HWREGH(base + EPWM_O_DBCTL) = (HWREGH(base + EPWM_O_DBCTL) & ~ mask);
    }
}

//*****************************************************************************
//
//! 设置死区延迟极性
//!
//! \param base 是EPWM模块的基地址。
//! \param delayMode 是死区延迟类型。
//! \param polarity 是延迟信号的极性。
//!
//! 此函数根据polarity变量确定的极性,设置下降沿或上升沿延迟的极性,
//! 具体取决于delayMode的值。变量的有效值为:
//!   - delayMode
//!       - EPWM_DB_RED   - 上升沿延迟
//!       - EPWM_DB_FED   - 下降沿延迟
//!   - polarity
//!       - EPWM_DB_POLARITY_ACTIVE_HIGH   - 极性不反相
//!       - EPWM_DB_POLARITY_ACTIVE_LOW    - 极性反相
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setDeadBandDelayPolarity(uint32_t base,
                              EPWM_DeadBandDelayMode delayMode,
                              EPWM_DeadBandPolarity polarity)
{
    uint16_t shift;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    shift = (((uint16_t)delayMode ^ 0x1U) + EPWM_DBCTL_POLSEL_S);

    //
    // 设置适当的polsel位以设置死区极性
    //
    HWREGH(base + EPWM_O_DBCTL) =
                       ((HWREGH(base + EPWM_O_DBCTL) & ~ (1U << shift)) |
                        ((uint16_t)polarity << shift));
}

//*****************************************************************************
//
//! 设置上升沿死区延迟输入
//!
//! \param base 是EPWM模块的基地址。
//! \param input 是死区的输入信号。
//!
//! 此函数设置上升沿延迟输入信号。
//! input的有效值为:
//!     - EPWM_DB_INPUT_EPWMA   - 输入信号为ePWMA(对下降沿和上升沿都有效)
//!     - EPWM_DB_INPUT_EPWMB   - 输入信号为ePWMB(对下降沿和上升沿都有效)
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setRisingEdgeDeadBandDelayInput(uint32_t base, uint16_t input)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((input == EPWM_DB_INPUT_EPWMA) ||
           (input == EPWM_DB_INPUT_EPWMB));

    //
    // 设置上升沿延迟输入
    //
    HWREGH(base + EPWM_O_DBCTL) =
            ((HWREGH(base + EPWM_O_DBCTL) & ~(1U << (EPWM_DBCTL_IN_MODE_S))) |
             (input << EPWM_DBCTL_IN_MODE_S));
}

//*****************************************************************************
//
//! 设置下降沿死区延迟输入
//!
//! \param base 是EPWM模块的基地址。
//! \param input 是死区的输入信号。
//!
//! 此函数设置上升沿延迟输入信号。
//! input的有效值为:
//!   - EPWM_DB_INPUT_EPWMA   - 输入信号为ePWMA(对下降沿和上升沿都有效)
//!   - EPWM_DB_INPUT_EPWMB   - 输入信号为ePWMB(对下降沿和上升沿都有效)
//!   - EPWM_DB_INPUT_DB_RED  - 输入信号为上升沿延迟的输出
//!                               (仅对下降沿延迟有效)
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setFallingEdgeDeadBandDelayInput(uint32_t base, uint16_t input)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((input == EPWM_DB_INPUT_EPWMA) ||
           (input == EPWM_DB_INPUT_EPWMB) ||
           (input == EPWM_DB_INPUT_DB_RED));

    if(input == EPWM_DB_INPUT_DB_RED)
    {
        //
        // 设置下降沿延迟输入
        //
        HWREGH(base + EPWM_O_DBCTL) |= EPWM_DBCTL_DEDB_MODE;
    }
    else
    {
        //
        // 设置下降沿延迟输入
        //
        HWREGH(base + EPWM_O_DBCTL) &= ~EPWM_DBCTL_DEDB_MODE;

        //
        // 设置上升沿延迟输入
        //
        HWREGH(base + EPWM_O_DBCTL) =
        ((HWREGH(base + EPWM_O_DBCTL) & ~(1U << (EPWM_DBCTL_IN_MODE_S + 1U))) |
         (input << (EPWM_DBCTL_IN_MODE_S + 1U)));
    }
}

//*****************************************************************************
//
//! 设置死区控制影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param loadMode 是影子到激活加载模式。
//!
//! 此函数启用并设置死区控制寄存器影子加载模式。
//! \e loadMode参数的有效值为:
//!     - EPWM_DB_LOAD_ON_CNTR_ZERO         - 当计数器等于零时加载
//!     - EPWM_DB_LOAD_ON_CNTR_PERIOD       - 当计数器等于周期时加载
//!     - EPWM_DB_LOAD_ON_CNTR_ZERO_PERIOD  - 当计数器等于零或周期时加载
//!     - EPWM_DB_LOAD_FREEZE                - 冻结影子到激活加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setDeadBandControlShadowLoadMode(uint32_t base,
                                      EPWM_DeadBandControlLoadMode loadMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用影子模式并设置加载事件
    //
    HWREGH(base + EPWM_O_DBCTL2) =
          ((HWREGH(base + EPWM_O_DBCTL2) & ~EPWM_DBCTL2_LOADDBCTLMODE_M) |
           (EPWM_DBCTL2_SHDWDBCTLMODE | (uint16_t)loadMode));
}

//*****************************************************************************
//
//! 禁用死区控制影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用死区控制寄存器影子加载模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableDeadBandControlShadowLoadMode(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用影子加载模式。仅立即加载模式。
    //
    HWREGH(base + EPWM_O_DBCTL2) =
                 (HWREGH(base + EPWM_O_DBCTL2) & ~EPWM_DBCTL2_SHDWDBCTLMODE);
}

//*****************************************************************************
//
//! 设置RED(上升沿延迟)影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param loadMode 是影子到激活加载事件。
//!
//! 此函数设置上升沿延迟寄存器影子加载模式。
//! \e loadMode参数的有效值为:
//!     - EPWM_RED_LOAD_ON_CNTR_ZERO        - 当计数器等于零时加载
//!     - EPWM_RED_LOAD_ON_CNTR_PERIOD      - 当计数器等于周期时加载
//!     - EPWM_RED_LOAD_ON_CNTR_ZERO_PERIOD - 当计数器等于零或周期时加载
//!     - EPWM_RED_LOAD_FREEZE               - 冻结影子到激活加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setRisingEdgeDelayCountShadowLoadMode(uint32_t base,
                                         EPWM_RisingEdgeDelayLoadMode loadMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用影子模式。设置加载模式
    //
    HWREGH(base + EPWM_O_DBCTL) =
               ((HWREGH(base + EPWM_O_DBCTL) & ~EPWM_DBCTL_LOADREDMODE_M) |
                ((uint16_t)EPWM_DBCTL_SHDWDBREDMODE |
                ((uint16_t)loadMode << EPWM_DBCTL_LOADREDMODE_S)));

}

//*****************************************************************************
//
//! 禁用RED(上升沿延迟)影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用上升沿延迟寄存器影子加载模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableRisingEdgeDelayCountShadowLoadMode(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用影子模式
    //
    HWREGH(base + EPWM_O_DBCTL) =
                   (HWREGH(base + EPWM_O_DBCTL) & ~EPWM_DBCTL_SHDWDBREDMODE);

}

//*****************************************************************************
//
//! 设置FED(下降沿延迟)影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//! \param loadMode 是影子到激活加载事件。
//!
//! 此函数启用并设置下降沿延迟寄存器影子加载模式。
//! \e loadMode参数的有效值为:
//!     - EPWM_FED_LOAD_ON_CNTR_ZERO        - 当计数器等于零时加载
//!     - EPWM_FED_LOAD_ON_CNTR_PERIOD      - 当计数器等于周期时加载
//!     - EPWM_FED_LOAD_ON_CNTR_ZERO_PERIOD - 当计数器等于零或周期时加载
//!     - EPWM_FED_LOAD_FREEZE               - 冻结影子到激活加载
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setFallingEdgeDelayCountShadowLoadMode(uint32_t base,
                                        EPWM_FallingEdgeDelayLoadMode loadMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用影子模式。设置加载模式。
    //
    HWREGH(base + EPWM_O_DBCTL) =
            ((HWREGH(base + EPWM_O_DBCTL) & ~EPWM_DBCTL_LOADFEDMODE_M) |
                (EPWM_DBCTL_SHDWDBFEDMODE |
                ((uint16_t)loadMode << EPWM_DBCTL_LOADFEDMODE_S)));

}

//*****************************************************************************
//
//! 禁用FED(下降沿延迟)影子加载模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用下降沿延迟寄存器影子加载模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableFallingEdgeDelayCountShadowLoadMode(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用影子模式
    //
    HWREGH(base + EPWM_O_DBCTL) =
              (HWREGH(base + EPWM_O_DBCTL) & ~EPWM_DBCTL_SHDWDBFEDMODE);
}

//*****************************************************************************
//
//! 设置死区计数器时钟速率
//!
//! \param base 是EPWM模块的基地址。
//! \param clockMode 是死区计数器时钟模式。
//!
//! 此函数设置相对于TBCLK(ePWM时基计数器)的死区计数器时钟速率。
//! clockMode的有效值为:
//!   - EPWM_DB_COUNTER_CLOCK_FULL_CYCLE  - 死区计数器以TBCLK(ePWM时基计数器)速率运行
//!   - EPWM_DB_COUNTER_CLOCK_HALF_CYCLE  - 死区计数器以2*TBCLK(2倍于ePWM时基计数器)速率运行
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setDeadBandCounterClock(uint32_t base,
                             EPWM_DeadBandClockMode clockMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置死区时钟模式
    //
    HWREGH(base + EPWM_O_DBCTL) =
                ((HWREGH(base + EPWM_O_DBCTL) & ~EPWM_DBCTL_HALFCYCLE) |
                 ((uint16_t)clockMode << 15U));
}

//*****************************************************************************
//
//! 设置ePWM RED计数值
//!
//! \param base 是EPWM模块的基地址。
//! \param redCount 是RED(上升沿延迟)计数值。
//!
//! 此函数设置RED(上升沿延迟)计数值。
//! redCount的值应小于0x4000U。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setRisingEdgeDelayCount(uint32_t base, uint16_t redCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(redCount < 0x4000U);

    //
    // 设置RED(上升沿延迟)计数值
    //
    HWREGH(base + EPWM_O_DBRED) = redCount;
}

//*****************************************************************************
//
//! 设置ePWM FED计数值
//!
//! \param base 是EPWM模块的基地址。
//! \param fedCount 是FED(下降沿延迟)计数值。
//!
//! 此函数设置FED(下降沿延迟)计数值。
//! fedCount的值应小于0x4000U。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setFallingEdgeDelayCount(uint32_t base, uint16_t fedCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(fedCount < 0x4000U);

    //
    // 设置FED(下降沿延迟)计数值
    //
    HWREGH(base + EPWM_O_DBFED) = fedCount;
}

//
// Chopper模块相关API
//
//*****************************************************************************
//
//! 启用chopper模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用ePWM chopper模块。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableChopper(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置CHPEN位。启用Chopper
    //
    HWREGH(base + EPWM_O_PCCTL) |= EPWM_PCCTL_CHPEN;
}

//*****************************************************************************
//
//! 禁用chopper模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用ePWM chopper模块。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableChopper(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 清除CHPEN位。禁用Chopper
    //
    HWREGH(base + EPWM_O_PCCTL) &= ~EPWM_PCCTL_CHPEN;
}

//*****************************************************************************
//
//! 设置chopper占空比
//!
//! \param base 是EPWM模块的基地址。
//! \param dutyCycleCount 是chopping时钟占空比计数值。
//!
//! 此函数设置chopping时钟占空比。dutyCycleCount的值应小于7。
//! dutyCycleCount值根据以下公式转换为实际的chopper占空比值:
//!   chopper占空比 = (dutyCycleCount + 1) / 8
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setChopperDutyCycle(uint32_t base, uint16_t dutyCycleCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(dutyCycleCount < 7U);

    //
    // 设置chopper占空比
    //
    HWREGH(base + EPWM_O_PCCTL) =
               ((HWREGH(base + EPWM_O_PCCTL) & ~EPWM_PCCTL_CHPDUTY_M) |
                (dutyCycleCount << EPWM_PCCTL_CHPDUTY_S));
}

//*****************************************************************************
//
//! 设置chopper时钟频率分频器
//!
//! \param base 是EPWM模块的基地址。
//! \param freqDiv 是chopping时钟频率分频器。
//!
//! 此函数设置chopping时钟频率的分频器。freqDiv的值应小于8。
//! chopping时钟频率根据以下公式改变:
//!   chopper时钟频率 = SYSCLKOUT / (1 + freqDiv)
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setChopperFreq(uint32_t base, uint16_t freqDiv)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(freqDiv < 8U);

    //
    // 设置chopper时钟
    //
    HWREGH(base + EPWM_O_PCCTL) =
                    ((HWREGH(base + EPWM_O_PCCTL) &
                      ~(uint16_t)EPWM_PCCTL_CHPFREQ_M) |
                       (freqDiv << EPWM_PCCTL_CHPFREQ_S));
}

//*****************************************************************************
//
//! 设置chopper第一个脉冲宽度
//!
//! \param base 是EPWM模块的基地址。
//! \param firstPulseWidth 是第一个脉冲的宽度。
//!
//! 此函数设置chopper输出波形的第一个脉冲宽度。firstPulseWidth的值应小于0x10。
//! 第一个脉冲宽度的秒数值由以下公式给出:
//!     第一个脉冲宽度 = 1 / (((firstPulseWidth + 1) * SYSCLKOUT)/8)
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setChopperFirstPulseWidth(uint32_t base, uint16_t firstPulseWidth)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(firstPulseWidth < 16U);

    //
    // 设置chopper时钟
    //
    HWREGH(base + EPWM_O_PCCTL) =
              ((HWREGH(base + EPWM_O_PCCTL) &
               ~(uint16_t)EPWM_PCCTL_OSHTWTH_M) |
               (firstPulseWidth << EPWM_PCCTL_OSHTWTH_S));
}

//
// Trip Zone模块相关API
//
//*****************************************************************************
//
//! 启用故障区信号
//!
//! \param base 是EPWM模块的基地址。
//! \param tzSignal 是故障区信号。
//!
//! 此函数将tzSignal指定的故障区信号启用为故障区模块的源。
//! tzSignal的有效值为:
//!   - EPWM_TZ_SIGNAL_CBC1       - TZ1逐周期
//!   - EPWM_TZ_SIGNAL_CBC2       - TZ2逐周期
//!   - EPWM_TZ_SIGNAL_CBC3       - TZ3逐周期
//!   - EPWM_TZ_SIGNAL_CBC4       - TZ4逐周期
//!   - EPWM_TZ_SIGNAL_CBC5       - TZ5逐周期
//!   - EPWM_TZ_SIGNAL_CBC6       - TZ6逐周期
//!   - EPWM_TZ_SIGNAL_DCAEVT2    - DCAEVT2逐周期
//!   - EPWM_TZ_SIGNAL_DCBEVT2    - DCBEVT2逐周期
//!   - EPWM_TZ_SIGNAL_OSHT1      - 单次TZ1
//!   - EPWM_TZ_SIGNAL_OSHT2      - 单次TZ2
//!   - EPWM_TZ_SIGNAL_OSHT3      - 单次TZ3
//!   - EPWM_TZ_SIGNAL_OSHT4      - 单次TZ4
//!   - EPWM_TZ_SIGNAL_OSHT5      - 单次TZ5
//!   - EPWM_TZ_SIGNAL_OSHT6      - 单次TZ6
//!   - EPWM_TZ_SIGNAL_DCAEVT1    - 单次DCAEVT1
//!   - EPWM_TZ_SIGNAL_DCBEVT1    - 单次DCBEVT1
//!
//! \b 注意:  可以将有效值的逻辑OR作为tzSignal参数传递。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableTripZoneSignals(uint32_t base, uint16_t tzSignal)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置故障区位
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZSEL) |= tzSignal;
    EDIS;
}

//*****************************************************************************
//
//! 禁用故障区信号
//!
//! \param base 是EPWM模块的基地址。
//! \param tzSignal 是故障区信号。
//!
//! 此函数将tzSignal指定的故障区信号禁用作为故障区模块的源。
//! tzSignal的有效值为:
//!   - EPWM_TZ_SIGNAL_CBC1       - TZ1逐周期
//!   - EPWM_TZ_SIGNAL_CBC2       - TZ2逐周期
//!   - EPWM_TZ_SIGNAL_CBC3       - TZ3逐周期
//!   - EPWM_TZ_SIGNAL_CBC4       - TZ4逐周期
//!   - EPWM_TZ_SIGNAL_CBC5       - TZ5逐周期
//!   - EPWM_TZ_SIGNAL_CBC6       - TZ6逐周期
//!   - EPWM_TZ_SIGNAL_DCAEVT2    - DCAEVT2逐周期
//!   - EPWM_TZ_SIGNAL_DCBEVT2    - DCBEVT2逐周期
//!   - EPWM_TZ_SIGNAL_OSHT1      - 单次TZ1
//!   - EPWM_TZ_SIGNAL_OSHT2      - 单次TZ2
//!   - EPWM_TZ_SIGNAL_OSHT3      - 单次TZ3
//!   - EPWM_TZ_SIGNAL_OSHT4      - 单次TZ4
//!   - EPWM_TZ_SIGNAL_OSHT5      - 单次TZ5
//!   - EPWM_TZ_SIGNAL_OSHT6      - 单次TZ6
//!   - EPWM_TZ_SIGNAL_DCAEVT1    - 单次DCAEVT1
//!   - EPWM_TZ_SIGNAL_DCBEVT1    - 单次DCBEVT1
//!
//! \b 注意:  可以将有效值的逻辑OR作为tzSignal参数传递。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableTripZoneSignals(uint32_t base, uint16_t tzSignal)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 清除故障区位
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZSEL) &= ~tzSignal;
    EDIS;
}

//*****************************************************************************
//
//! 设置引起故障区事件的数字比较条件
//!
//! \param base 是EPWM模块的基地址。
//! \param dcType 是数字比较输出类型。
//! \param dcEvent 是数字比较输出事件。
//!
//! 此函数设置数字比较输出故障区事件源。dcType变量指定事件源是
//! 数字比较输出A还是数字比较输出B。dcEvent参数指定引起故障区的事件。
//! 参数的有效值为:
//!  - dcType
//!      - EPWM_TZ_DC_OUTPUT_A1     - 数字比较输出1 A
//!      - EPWM_TZ_DC_OUTPUT_A2     - 数字比较输出2 A
//!      - EPWM_TZ_DC_OUTPUT_B1     - 数字比较输出1 B
//!      - EPWM_TZ_DC_OUTPUT_B2     - 数字比较输出2 B
//!  - dcEvent
//!      - EPWM_TZ_EVENT_DC_DISABLED         - 禁用事件触发
//!      - EPWM_TZ_EVENT_DCXH_LOW            - 当DCxH为低时触发事件
//!      - EPWM_TZ_EVENT_DCXH_HIGH           - 当DCxH为高时触发事件
//!      - EPWM_TZ_EVENT_DCXL_LOW            - 当DCxL为低时触发事件
//!      - EPWM_TZ_EVENT_DCXL_HIGH           - 当DCxL为高时触发事件
//!      - EPWM_TZ_EVENT_DCXL_HIGH_DCXH_LOW  - 当DCxL为高DCxH为低时触发事件
//!
//!  \note DCxH/DCxL中的x代表DCAH/DCAL或DCBH/DCBL
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTripZoneDigitalCompareEventCondition(uint32_t base,
                                 EPWM_TripZoneDigitalCompareOutput dcType,
                                 EPWM_TripZoneDigitalCompareOutputEvent dcEvent)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置引起数字比较故障的数字比较事件条件
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZDCSEL) =
           ((HWREGH(base + EPWM_O_TZDCSEL) & ~(0x7U << (uint16_t)dcType)) |
            ((uint16_t)dcEvent << (uint16_t)dcType));
    EDIS;
}

//*****************************************************************************
//
//! 启用高级故障区事件动作
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用故障区事件的高级动作。高级功能将故障区事件与
//! 计数器的方向结合。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableTripZoneAdvAction(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用高级功能。设置ETZE位
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTL2) |= EPWM_TZCTL2_ETZE;
    EDIS;
}

//*****************************************************************************
//
//! 禁用高级故障区事件动作
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用故障区事件的高级动作。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableTripZoneAdvAction(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用高级功能。清除ETZE位
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTL2) &= ~EPWM_TZCTL2_ETZE;
    EDIS;
}

//*****************************************************************************
//
//! 设置故障区动作
//!
//! \param base 是EPWM模块的基地址。
//! \param tzEvent 是故障区事件类型。
//! \param tzAction 是故障区动作。
//!
//! 此函数设置当故障区事件发生时要执行的故障区动作。
//! 参数的有效值为:
//!  - tzEvent
//!      - EPWM_TZ_ACTION_EVENT_DCBEVT2  - DCBEVT2(数字比较B事件2)
//!      - EPWM_TZ_ACTION_EVENT_DCBEVT1  - DCBEVT1(数字比较B事件1)
//!      - EPWM_TZ_ACTION_EVENT_DCAEVT2  - DCAEVT2(数字比较A事件2)
//!      - EPWM_TZ_ACTION_EVENT_DCAEVT1  - DCAEVT1(数字比较A事件1)
//!      - EPWM_TZ_ACTION_EVENT_TZB      - TZ1 - TZ6, DCBEVT2, DCBEVT1
//!      - EPWM_TZ_ACTION_EVENT_TZA      - TZ1 - TZ6, DCAEVT2, DCAEVT1
//!  - tzAction
//!      - EPWM_TZ_ACTION_HIGH_Z         - 高阻抗输出
//!      - EPWM_TZ_ACTION_HIGH           - 高电平输出
//!      - EPWM_TZ_ACTION_LOW            - 低电平输出
//!      - EPWM_TZ_ACTION_DISABLE        - 禁用动作
//!
//! \note 在调用此函数之前,使用EPWM_disableTripZoneAdvAction()禁用高级故障区事件。
//! \note 此函数根据tzEvent参数同时操作ePWMA和ePWMB。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTripZoneAction(uint32_t base, EPWM_TripZoneEvent tzEvent,
                       EPWM_TripZoneAction tzAction)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置故障区事件的动作
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTL) =
         ((HWREGH(base + EPWM_O_TZCTL) & ~(0x3U << (uint16_t)tzEvent)) |
          ((uint16_t)tzAction << (uint16_t)tzEvent)) ;
    EDIS;
}

//*****************************************************************************
//
//! 设置高级故障区动作
//!
//! \param base 是EPWM模块的基地址。
//! \param tzAdvEvent 是故障区事件类型。
//! \param tzAdvAction 是故障区动作。
//!
//! 此函数设置当高级故障区事件发生时要执行的高级故障区动作。
//!
//! 参数的有效值为:
//!  - tzAdvEvent
//!      - EPWM_TZ_ADV_ACTION_EVENT_TZB_D  - TZ1-TZ6,DCBEVT2,DCBEVT1在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_TZB_U  - TZ1-TZ6,DCBEVT2,DCBEVT1在向上计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_TZA_D  - TZ1-TZ6,DCAEVT2,DCAEVT1在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_TZA_U  - TZ1-TZ6,DCAEVT2,DCAEVT1在向上计数时
//!  - tzAdvAction
//!      - EPWM_TZ_ADV_ACTION_HIGH_Z    - 高阻抗输出
//!      - EPWM_TZ_ADV_ACTION_HIGH      - 高电平状态
//!      - EPWM_TZ_ADV_ACTION_LOW       - 低电平状态
//!      - EPWM_TZ_ADV_ACTION_TOGGLE    - 翻转输出
//!      - EPWM_TZ_ADV_ACTION_DISABLE   - 禁用动作
//!
//! \note 此函数启用高级故障区事件。
//!
//! \note 此函数根据tzAdvEvent参数同时操作ePWMA和ePWMB。
//! \note 高级故障区事件除了故障区事件外,还考虑计数器的方向。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTripZoneAdvAction(uint32_t base, EPWM_TripZoneAdvancedEvent tzAdvEvent,
                          EPWM_TripZoneAdvancedAction tzAdvAction)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置故障区事件的高级动作
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTL2) =
       ((HWREGH(base + EPWM_O_TZCTL2) & ~(0x7U << (uint16_t)tzAdvEvent)) |
        ((uint16_t)tzAdvAction << (uint16_t)tzAdvEvent));

    HWREGH(base + EPWM_O_TZCTL2) |= EPWM_TZCTL2_ETZE;
    EDIS;
}

//*****************************************************************************
//
//! 在ePWMA上设置高级数字比较故障区动作
//!
//! \param base 是EPWM模块的基地址。
//! \param tzAdvDCEvent 是数字比较故障区事件类型。
//! \param tzAdvDCAction 是数字比较故障区动作。
//!
//! 此函数设置当高级数字比较故障区A事件发生时,在ePWMA上
//! 要执行的数字比较(DC)高级故障区动作。
//! 参数的有效值为:
//!  - tzAdvDCEvent
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_D  - 数字比较事件A2在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_U  - 数字比较事件A2在向上计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_D  - 数字比较事件A1在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_U  - 数字比较事件A1在向上计数时
//!  - tzAdvDCAction
//!      - EPWM_TZ_ADV_ACTION_HIGH_Z    - 高阻抗输出
//!      - EPWM_TZ_ADV_ACTION_HIGH      - 高电平状态
//!      - EPWM_TZ_ADV_ACTION_LOW       - 低电平状态
//!      - EPWM_TZ_ADV_ACTION_TOGGLE    - 翻转输出
//!      - EPWM_TZ_ADV_ACTION_DISABLE   - 禁用动作
//!
//! \note 此函数启用高级故障区事件。
//!
//! \note 高级故障区事件除了数字比较故障区事件外,还考虑计数器的方向。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setTripZoneAdvDigitalCompareActionA(uint32_t base,
                              EPWM_TripZoneAdvDigitalCompareEvent tzAdvDCEvent,
                              EPWM_TripZoneAdvancedAction tzAdvDCAction)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置故障区事件的高级动作
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTLDCA) =
      ((HWREGH(base + EPWM_O_TZCTLDCA) & ~(0x7U << (uint16_t)tzAdvDCEvent)) |
       ((uint16_t)tzAdvDCAction << (uint16_t)tzAdvDCEvent));

    HWREGH(base + EPWM_O_TZCTL2) |= EPWM_TZCTL2_ETZE;
    EDIS;
}

//*****************************************************************************
//
//! 在ePWMB上设置高级数字比较故障区动作
//!
//! \param base 是EPWM模块的基地址。
//! \param tzAdvDCEvent 是数字比较故障区事件类型。
//! \param tzAdvDCAction 是数字比较故障区动作。
//!
//! 此函数设置当高级数字比较故障区B事件发生时,在ePWMB上
//! 要执行的数字比较(DC)高级故障区动作。
//! 参数的有效值为:
//!  - tzAdvDCEvent
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_D  - 数字比较事件B2在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT2_U  - 数字比较事件B2在向上计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_D  - 数字比较事件B1在向下计数时
//!      - EPWM_TZ_ADV_ACTION_EVENT_DCxEVT1_U  - 数字比较事件B1在向上计数时
//!  - tzAdvDCAction
//!      - EPWM_TZ_ADV_ACTION_HIGH_Z    - 高阻抗输出
//!      - EPWM_TZ_ADV_ACTION_HIGH      - 高电平状态
//!      - EPWM_TZ_ADV_ACTION_LOW       - 低电平状态
//!      - EPWM_TZ_ADV_ACTION_TOGGLE    - 翻转输出
//!      - EPWM_TZ_ADV_ACTION_DISABLE   - 禁用动作
//!
//! \note 此函数启用高级故障区事件。
//!
//! \note 高级故障区事件除了数字比较故障区事件外,还考虑计数器的方向。
//!
//! \return 无。
//
//*****************************************************************************
static inline void EPWM_setTripZoneAdvDigitalCompareActionB(uint32_t base,
                              EPWM_TripZoneAdvDigitalCompareEvent tzAdvDCEvent,
                              EPWM_TripZoneAdvancedAction tzAdvDCAction)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置故障区事件的高级动作
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCTLDCB) =
     ((HWREGH(base + EPWM_O_TZCTLDCB) & ~(0x7U << (uint16_t)tzAdvDCEvent)) |
      ((uint16_t)tzAdvDCAction << (uint16_t)tzAdvDCEvent));

    HWREGH(base + EPWM_O_TZCTL2) |= EPWM_TZCTL2_ETZE;
    EDIS;
}

//*****************************************************************************
//
//! 启用故障区中断
//!
//! \param base 是EPWM模块的基地址。
//! \param tzInterrupt 是故障区中断。
//!
//! 此函数启用故障区中断。
//! tzInterrupt的有效值为:
//!   - EPWM_TZ_INTERRUPT_CBC     - 故障区逐周期中断
//!   - EPWM_TZ_INTERRUPT_OST     - 故障区单次中断
//!   - EPWM_TZ_INTERRUPT_DCAEVT1 - 数字比较A事件1中断
//!   - EPWM_TZ_INTERRUPT_DCAEVT2 - 数字比较A事件2中断
//!   - EPWM_TZ_INTERRUPT_DCBEVT1 - 数字比较B事件1中断
//!   - EPWM_TZ_INTERRUPT_DCBEVT2 - 数字比较B事件2中断
//!
//! \b 注意:  可以将有效值的逻辑OR作为tzInterrupt参数传递。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableTripZoneInterrupt(uint32_t base, uint16_t tzInterrupt)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((tzInterrupt > 0U) && (tzInterrupt <= 0x80U));

    //
    // 启用故障区中断
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZEINT) |= tzInterrupt;
    EDIS;
}

//*****************************************************************************
//
//! 禁用故障区中断
//!
//! \param base 是EPWM模块的基地址。
//! \param tzInterrupt 是故障区中断。
//!
//! 此函数禁用故障区中断。
//! tzInterrupt的有效值为:
//!   - EPWM_TZ_INTERRUPT_CBC     - 故障区逐周期中断
//!   - EPWM_TZ_INTERRUPT_OST    - 故障区单次中断
//!   - EPWM_TZ_INTERRUPT_DCAEVT1 - 数字比较A事件1中断
//!   - EPWM_TZ_INTERRUPT_DCAEVT2 - 数字比较A事件2中断
//!   - EPWM_TZ_INTERRUPT_DCBEVT1 - 数字比較B事件1中断
//!   - EPWM_TZ_INTERRUPT_DCBEVT2 - 数字比较B事件2中断
//!
//! \b 注意:  可以将有效值的逻辑OR作为tzInterrupt参数传递。
//!
//! \return 无。
//
//***************************************************************************
static inline void
EPWM_disableTripZoneInterrupt(uint32_t base, uint16_t tzInterrupt)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((tzInterrupt > 0U) && (tzInterrupt <= 0x80U));

    //
    // 禁用故障区中断
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZEINT) &= ~tzInterrupt;
    EDIS;
}

//*****************************************************************************
//
//! Gets the Trip Zone status flag
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the Trip Zone status flag.
//!
//! \return The function returns the following or the bitwise OR value
//!         of the following values.
//!         - EPWM_TZ_INTERRUPT    - Trip Zone interrupt was generated
//!                                  due to the following TZ events.
//!         - EPWM_TZ_FLAG_CBC     - Trip Zones Cycle By Cycle event status flag
//!         - EPWM_TZ_FLAG_OST     - Trip Zones One Shot event status flag
//!         - EPWM_TZ_FLAG_DCAEVT1 - Digital Compare A Event 1 status flag
//!         - EPWM_TZ_FLAG_DCAEVT2 - Digital Compare A Event 2 status flag
//!         - EPWM_TZ_FLAG_DCBEVT1 - Digital Compare B Event 1 status flag
//!         - EPWM_TZ_FLAG_DCBEVT2 - Digital Compare B Event 2 status flag
//
//***************************************************************************
static inline uint16_t
EPWM_getTripZoneFlagStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回故障区标志状态
    //
    return(HWREGH(base + EPWM_O_TZFLG) & 0x7FU);
}

//*****************************************************************************
//
//! 获取故障区逐周期标志状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回特定的逐周期故障区标志状态。
//!
//! \return 函数返回以下值:
//!           - EPWM_TZ_CBC_FLAG_1     - CBC 1状态标志
//!           - EPWM_TZ_CBC_FLAG_2     - CBC 2状态标志
//!           - EPWM_TZ_CBC_FLAG_3     - CBC 3状态标志
//!           - EPWM_TZ_CBC_FLAG_4     - CBC 4状态标志
//!           - EPWM_TZ_CBC_FLAG_5     - CBC 5状态标志
//!           - EPWM_TZ_CBC_FLAG_6     - CBC 6状态标志
//!           - EPWM_TZ_CBC_FLAG_DCAEVT2  - 数字比较事件A2的CBC状态标志
//!           - EPWM_TZ_CBC_FLAG_DCBEVT2  - 数字比较事件B2的CBC状态标志
//
//***************************************************************************
static inline uint16_t
EPWM_getCycleByCycleTripZoneFlagStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回逐周期故障区标志状态
    //
    return(HWREGH(base + EPWM_O_TZCBCFLG) & 0xFFU);
}

//*****************************************************************************
//
//! 获取故障区单次标志状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回特定的单次故障区标志状态。
//!
//! \return 函数返回以下标志的按位或:
//!           - EPWM_TZ_OST_FLAG_OST1     - OST1的OST状态标志
//!           - EPWM_TZ_OST_FLAG_OST2     - OST2的OST状态标志
//!           - EPWM_TZ_OST_FLAG_OST3     - OST3的OST状态标志
//!           - EPWM_TZ_OST_FLAG_OST4     - OST4的OST状态标志
//!           - EPWM_TZ_OST_FLAG_OST5     - OST5的OST状态标志
//!           - EPWM_TZ_OST_FLAG_OST6     - OST6的OST状态标志
//!           - EPWM_TZ_OST_FLAG_DCAEVT1  - 数字比较事件A1的OST状态标志
//!           - EPWM_TZ_OST_FLAG_DCBEVT1  - 数字比较事件B1的OST状态标志
//
//***************************************************************************
static inline uint16_t
EPWM_getOneShotTripZoneFlagStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回单次故障区标志状态
    //
    return(HWREGH(base + EPWM_O_TZOSTFLG) & 0xFFU);
}

//*****************************************************************************
//
//! 设置故障区CBC脉冲清除事件
//!
//! \param base 是EPWM模块的基地址。
//! \param clearEvent 是CBC故障区清除事件。
//!
//! 此函数设置自动清除CBC(逐周期)锁存的事件。
//! clearEvent的有效值为:
//!   - EPWM_TZ_CBC_PULSE_CLR_CNTR_ZERO         - 当计数器等于零时清除CBC脉冲
//!   - EPWM_TZ_CBC_PULSE_CLR_CNTR_PERIOD       - 当计数器等于周期时清除CBC脉冲
//!   - EPWM_TZ_CBC_PULSE_CLR_CNTR_ZERO_PERIOD  - 当计数器等于零或周期时清除CBC脉冲
//!
//!  \return 无。
//
//**************************************************************************
static inline void
EPWM_selectCycleByCycleTripZoneClearEvent(uint32_t base,
                                 EPWM_CycleByCycleTripZoneClearMode clearEvent)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置逐周期故障区锁存模式
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCLR) =
                 ((HWREGH(base + EPWM_O_TZCLR) & ~EPWM_TZCLR_CBCPULSE_M) |
                  ((uint16_t)clearEvent << EPWM_TZCLR_CBCPULSE_S));
    EDIS;
}

//*****************************************************************************
//
//! 清除故障区标志
//!
//! \param base 是EPWM模块的基地址。
//! \param tzFlags 是故障区标志。
//!
//! 此函数清除故障区标志
//! tzFlags的有效值为:
//!   - EPWM_TZ_INTERRUPT    - 全局故障区中断标志
//!   - EPWM_TZ_FLAG_CBC     - 故障区逐周期标志
//!   - EPWM_TZ_FLAG_OST     - 故障区单次标志
//!   - EPWM_TZ_FLAG_DCAEVT1 - 数字比较A事件1标志
//!   - EPWM_TZ_FLAG_DCAEVT2 - 数字比较A事件2标志
//!   - EPWM_TZ_FLAG_DCBEVT1 - 数字比较B事件1标志
//!   - EPWM_TZ_FLAG_DCBEVT2 - 数字比较B事件2标志
//!
//! \b 注意: 可以将有效值的按位或作为tzFlags参数传递。
//!
//! \return 无。
//
//***************************************************************************
static inline void
EPWM_clearTripZoneFlag(uint32_t base, uint16_t tzFlags)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(tzFlags <= 0x80U);

    //
    // 清除故障区事件标志
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCLR) |= tzFlags;
    EDIS;
}

//*****************************************************************************
//
//! Clear the Trip Zone Cycle by Cycle flag.
//!
//! \param base is the base address of the EPWM module.
//! \param tzCBCFlags is the CBC flag to be cleared.
//!
//! This function clears the specific Cycle by Cycle Trip Zone flag.
//! The following are valid values for tzCBCFlags.
//!   - EPWM_TZ_CBC_FLAG_1     - CBC 1 flag
//!   - EPWM_TZ_CBC_FLAG_2     - CBC 2 flag
//!   - EPWM_TZ_CBC_FLAG_3     - CBC 3 flag
//!   - EPWM_TZ_CBC_FLAG_4     - CBC 4 flag
//!   - EPWM_TZ_CBC_FLAG_5     - CBC 5 flag
//!   - EPWM_TZ_CBC_FLAG_6     - CBC 6 flag
//!   - EPWM_TZ_CBC_FLAG_DCAEVT2  - CBC flag Digital compare
//!                                         event A2
//!   - EPWM_TZ_CBC_FLAG_DCBEVT2  - CBC flag Digital compare
//!                                         event B2
//!
//! \return None.
//
//***************************************************************************
static inline void
EPWM_clearCycleByCycleTripZoneFlag(uint32_t base, uint16_t tzCBCFlags)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(tzCBCFlags < 0x800U);

    //
    // 清除逐周期故障区标志
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZCBCCLR) |= tzCBCFlags;
    EDIS;
}

//*****************************************************************************
//
//! 清除故障区单次标志
//!
//! \param base 是EPWM模块的基地址。
//! \param tzOSTFlags 是要清除的单次标志。
//!
//! 此函数清除特定的单次(OST)故障区标志。
//! tzOSTFlags的有效值为:
//!  - EPWM_TZ_OST_FLAG_OST1      - OST1的OST标志
//!  - EPWM_TZ_OST_FLAG_OST2      - OST2的OST标志
//!  - EPWM_TZ_OST_FLAG_OST3      - OST3的OST标志
//!  - EPWM_TZ_OST_FLAG_OST4      - OST4的OST标志
//!  - EPWM_TZ_OST_FLAG_OST5      - OST5的OST标志
//!  - EPWM_TZ_OST_FLAG_OST6      - OST6的OST标志
//!  - EPWM_TZ_OST_FLAG_DCAEVT1   - 数字比较事件A1的OST标志
//!  - EPWM_TZ_OST_FLAG_DCBEVT1   - 数字比较事件B1的OST标志
//!
//! \return 无。
//
//***************************************************************************
static inline void
EPWM_clearOneShotTripZoneFlag(uint32_t base, uint16_t tzOSTFlags)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(tzOSTFlags < 0x800U);

    //
    // 清除逐周期故障区标志
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZOSTCLR) |= tzOSTFlags;
    EDIS;
}

//*****************************************************************************
//
//! 强制故障区事件
//!
//! \param base 是EPWM模块的基地址。
//! \param tzForceEvent 是强制的故障区事件。
//!
//! 此函数强制一个故障区事件。
//! tzForceEvent的有效值为:
//!   - EPWM_TZ_FORCE_EVENT_CBC     - 强制故障区逐周期事件
//!   - EPWM_TZ_FORCE_EVENT_OST     - 强制故障区单次事件
//!   - EPWM_TZ_FORCE_EVENT_DCAEVT1 - 强制数字比较A事件1
//!   - EPWM_TZ_FORCE_EVENT_DCAEVT2 - 强制数字比较A事件2
//!   - EPWM_TZ_FORCE_EVENT_DCBEVT1 - 强制数字比较B事件1
//!   - EPWM_TZ_FORCE_EVENT_DCBEVT2 - 强制数字比较B事件2
//!
//! \return 无。
//
//***************************************************************************
static inline void
EPWM_forceTripZoneEvent(uint32_t base, uint16_t tzForceEvent)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((tzForceEvent & 0xFF81U)== 0U);

    //
    // 强制一个故障区事件
    //
    EALLOW;
    HWREGH(base + EPWM_O_TZFRC) |= tzForceEvent;
    EDIS;
}

//
// Event Trigger related APIs
//
//*****************************************************************************
//
//! Enable ePWM interrupt.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables the ePWM interrupt.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableInterrupt(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Enable ePWM interrupt
    //
    HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_INTEN;
}

//*****************************************************************************
//
//! disable ePWM interrupt.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function disables the ePWM interrupt.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableInterrupt(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Disable ePWM interrupt
    //
    HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_INTEN;
}

//*****************************************************************************
//
//! Sets the ePWM interrupt source.
//!
//! \param base is the base address of the EPWM module.
//! \param interruptSource is the ePWM interrupt source.
//!
//! This function sets the ePWM interrupt source.
//! Valid values for interruptSource are:
//!   - EPWM_INT_TBCTR_DISABLED       - Time-base counter is disabled
//!   - EPWM_INT_TBCTR_ZERO           - Time-base counter equal to zero
//!   - EPWM_INT_TBCTR_PERIOD         - Time-base counter equal to period
//!   - EPWM_INT_TBCTR_ZERO_OR_PERIOD - Time-base counter equal to zero or
//!                                     period
//!   - EPWM_INT_TBCTR_ZERO_OR_PERIOD - Time-base counter equal to zero or
//!                                     period
//!   - EPWM_INT_TBCTR_U_CMPx         - Where x is A,B,C or D
//!                                     Time-base counter equal to CMPA, CMPB,
//!                                     CMPC or CMPD (depending the value of x)
//!                                     when the timer is incrementing
//!   - EPWM_INT_TBCTR_D_CMPx         - Where x is A,B,C or D
//!                                     Time-base counter equal to CMPA, CMPB,
//!                                     CMPC or CMPD (depending the value of x)
//!                                     when the timer is decrementing
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setInterruptSource(uint32_t base, uint16_t interruptSource)
{
    uint16_t intSource;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(((interruptSource > 0U) && (interruptSource < 9U)) ||
           (interruptSource == 10U) || (interruptSource == 12U) ||
           (interruptSource == 14U));

    if((interruptSource == EPWM_INT_TBCTR_U_CMPC) ||
       (interruptSource == EPWM_INT_TBCTR_U_CMPD) ||
       (interruptSource == EPWM_INT_TBCTR_D_CMPC) ||
       (interruptSource == EPWM_INT_TBCTR_D_CMPD))
    {
          //
          // Shift the interrupt source by 1
          //
          intSource = interruptSource >> 1U;

          //
          // Enable events based on comp C or comp D
          //
          HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_INTSELCMP;
    }
    else if((interruptSource == EPWM_INT_TBCTR_U_CMPA) ||
            (interruptSource == EPWM_INT_TBCTR_U_CMPB) ||
            (interruptSource == EPWM_INT_TBCTR_D_CMPA) ||
            (interruptSource == EPWM_INT_TBCTR_D_CMPB))
    {
        intSource = interruptSource;

        //
        // Enable events based on comp A or comp B
        //
        HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_INTSELCMP;
    }
    else
    {
        intSource = interruptSource;
    }

    //
    // Set the interrupt source
    //
    HWREGH(base + EPWM_O_ETSEL) =
            ((HWREGH(base + EPWM_O_ETSEL) & ~EPWM_ETSEL_INTSEL_M) | intSource);
}

//*****************************************************************************
//
//! 设置ePWM中断事件计数
//!
//! \param base 是EPWM模块的基地址。
//! \param eventCount 是中断比例的事件计数
//!
//! 此函数设置中断事件计数,该计数确定在发出中断之前必须发生的事件数量。
//! eventCount的最大值为15。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setInterruptEventCount(uint32_t base, uint16_t eventCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(eventCount < 16U);

    //
    // 启用高级功能:中断每多达15个事件
    //
    HWREGH(base + EPWM_O_ETPS) |= EPWM_ETPS_INTPSSEL;
    HWREGH(base + EPWM_O_ETINTPS) =
         ((HWREGH(base + EPWM_O_ETINTPS) & ~EPWM_ETINTPS_INTPRD2_M) |
           eventCount);
}

//*****************************************************************************
//
//! 返回中断状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回ePWM中断状态。
//! \b 注意 此函数不返回故障区状态。
//!
//! \return 如果生成了ePWM中断,则返回true。
//!         如果没有生成中断,则返回false
//
//*****************************************************************************
static inline bool
EPWM_getEventTriggerInterruptStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回ETFLG寄存器的INT位
    //
    return(((HWREGH(base + EPWM_O_ETFLG) & 0x1U) == 0x1U) ? true : false);
}

//*****************************************************************************
//
//! 清除中断标志
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数清除ePWM中断标志。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_clearEventTriggerInterruptFlag(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 清除ETCLR寄存器的INT位
    //
    HWREGH(base + EPWM_O_ETCLR) |= EPWM_ETCLR_INT;
}

//*****************************************************************************
//
//! 启用预中断计数加载
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用ePWM中断计数器以预中断计数值进行加载。
//!
//! \note 仅对高级/扩展中断模式有效
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableInterruptEventCountInit(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用中断事件计数初始化/加载
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) |= EPWM_ETCNTINITCTL_INTINITEN;
}

//*****************************************************************************
//
//! 禁用中断计数加载
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用ePWM中断计数器被预中断计数值加载。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableInterruptEventCountInit(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用中断事件计数初始化/加载
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) &= ~EPWM_ETCNTINITCTL_INTINITEN;
}

//*****************************************************************************
//
//! 强制软件预中断事件计数器加载
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数强制ePWM中断计数器被EPWM_setPreInterruptEventCount()设置的内容加载。
//!
//! \note 确保在调用此函数之前调用EPWM_enablePreInterruptEventCountLoad()函数。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_forceInterruptEventCountInit(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 加载中断事件计数器值
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) |= EPWM_ETCNTINITCTL_INTINITFRC;
}

//*****************************************************************************
//
//! 设置中断计数
//!
//! \param base 是EPWM模块的基地址。
//! \param eventCount 是ePWM中断计数值。
//!
//! 此函数设置ePWM中断计数。eventCount是要加载的预中断值。eventCount的最大值为15。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setInterruptEventCountInitValue(uint32_t base, uint16_t eventCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(eventCount < 16U);

    //
    // 设置预中断事件计数
    //
    HWREGH(base + EPWM_O_ETCNTINIT) =
         ((HWREGH(base + EPWM_O_ETCNTINIT) & ~EPWM_ETCNTINIT_INTINIT_M) |
          (uint16_t)(eventCount & 0xFU));
}

//*****************************************************************************
//
//! 获取中断计数
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回ePWM中断事件计数。
//!
//! \return 已发生的中断事件计数。
//
//*****************************************************************************
static inline uint16_t
EPWM_getInterruptEventCount(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回中断事件计数
    //
    return(((HWREGH(base + EPWM_O_ETINTPS) & EPWM_ETINTPS_INTCNT2_M) >>
             EPWM_ETINTPS_INTCNT2_S));
}

//*****************************************************************************
//
//! 强制ePWM中断
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数强制一个ePWM中断。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_forceEventTriggerInterrupt(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置ETFRC寄存器的INT位
    //
    HWREGH(base + EPWM_O_ETFRC) |= EPWM_ETFRC_INT;
}

//
// ADC SOC配置相关API
//
//*****************************************************************************
//
//! 启用ADC SOC事件
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数启用ePWM模块以触发ADC SOC事件。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableADCTrigger(uint32_t base, EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用SOC
    //
    if(adcSOCType == EPWM_SOC_A)
    {
         HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_SOCAEN;
    }
    else
    {
         HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_SOCBEN;
    }
}

//*****************************************************************************
//
//! 禁用ADC SOC事件
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数禁用ePWM模块触发ADC SOC事件。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableADCTrigger(uint32_t base, EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用SOC
    //
    if(adcSOCType == EPWM_SOC_A)
    {
         HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_SOCAEN;
    }
    else
    {
         HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_SOCBEN;
    }
}

//*****************************************************************************
//
//! 设置ePWM SOC源
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//! \param socSource 是SOC源。
//!
//! 此函数设置ePWM ADC SOC源。
//! socSource的有效值为:
//!  - adcSOCType
//!     - EPWM_SOC_A  - SOC A
//!     - EPWM_SOC_B  - SOC B
//!  - socSource
//!     - EPWM_SOC_DCxEVT1              - 事件基于DCxEVT1
//!     - EPWM_SOC_TBCTR_ZERO           - 时基计数器等于零
//!     - EPWM_SOC_TBCTR_PERIOD         - 时基计数器等于周期
//!     - EPWM_SOC_TBCTR_ZERO_OR_PERIOD - 时基计数器等于零或周期
//!     - EPWM_SOC_TBCTR_U_CMPx         - 其中x是A,B,C或D
//!                                       时基计数器等于CMPA,CMPB,
//!                                       CMPC或CMPD(取决于x的值)
//!                                       当定时器递增时
//!     - EPWM_SOC_TBCTR_D_CMPx         - 其中x是A,B,C或D
//!                                       时基计数器等于CMPA,CMPB,
//!                                       CMPC或CMPD(取决于x的值)
//!                                       当定时器递减时
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setADCTriggerSource(uint32_t base,
                         EPWM_ADCStartOfConversionType adcSOCType,
                         EPWM_ADCStartOfConversionSource socSource)
{
    uint16_t source;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    if((socSource == EPWM_SOC_TBCTR_U_CMPC) ||
       (socSource == EPWM_SOC_TBCTR_U_CMPD) ||
       (socSource == EPWM_SOC_TBCTR_D_CMPC) ||
       (socSource == EPWM_SOC_TBCTR_D_CMPD))
    {
        source = (uint16_t)socSource >> 1U;
    }
    else
    {
        source = (uint16_t)socSource;
    }

    if(adcSOCType == EPWM_SOC_A)
    {
        //
        // 设置SOC源
        //
        HWREGH(base + EPWM_O_ETSEL) =
                ((HWREGH(base + EPWM_O_ETSEL) & ~EPWM_ETSEL_SOCASEL_M) |
                 (source << EPWM_ETSEL_SOCASEL_S));

        //
        // 启用比较器选择
        //
        if((socSource == EPWM_SOC_TBCTR_U_CMPA) ||
           (socSource == EPWM_SOC_TBCTR_U_CMPB) ||
           (socSource == EPWM_SOC_TBCTR_D_CMPA) ||
           (socSource == EPWM_SOC_TBCTR_D_CMPB))
        {
            //
            // 启用基于比较器A或比较器B的事件
            //
            HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_SOCASELCMP;
        }
        else if((socSource == EPWM_SOC_TBCTR_U_CMPC) ||
                (socSource == EPWM_SOC_TBCTR_U_CMPD) ||
                (socSource == EPWM_SOC_TBCTR_D_CMPC) ||
                (socSource == EPWM_SOC_TBCTR_D_CMPD))
        {
            //
            // Enable events based on comp C or comp D
            //
            HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_SOCASELCMP;
        }
        else
        {
            //
            // No action required for the other socSource options
            //
        }
    }
    else
    {
        //
        // Enable the comparator selection
        //
        HWREGH(base + EPWM_O_ETSEL) =
                ((HWREGH(base + EPWM_O_ETSEL) & ~EPWM_ETSEL_SOCBSEL_M) |
                 (source << EPWM_ETSEL_SOCBSEL_S));

        //
        // Enable the comparator selection
        //
        if((socSource == EPWM_SOC_TBCTR_U_CMPA) ||
           (socSource == EPWM_SOC_TBCTR_U_CMPB) ||
           (socSource == EPWM_SOC_TBCTR_D_CMPA) ||
           (socSource == EPWM_SOC_TBCTR_D_CMPB))
        {
            //
            // Enable events based on comp A or comp B
            //
            HWREGH(base + EPWM_O_ETSEL) &= ~EPWM_ETSEL_SOCBSELCMP;
        }
        else if((socSource == EPWM_SOC_TBCTR_U_CMPC) ||
                (socSource == EPWM_SOC_TBCTR_U_CMPD) ||
                (socSource == EPWM_SOC_TBCTR_D_CMPC) ||
                (socSource == EPWM_SOC_TBCTR_D_CMPD))
        {
            //
            // Enable events based on comp C or comp D
            //
            HWREGH(base + EPWM_O_ETSEL) |= EPWM_ETSEL_SOCBSELCMP;
        }
        else
        {
            //
            // No action required for the other socSource options
            //
        }
    }
}

//*****************************************************************************
//
//! 设置ePWM SOC事件计数
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//! \param preScaleCount 是事件计数数量。
//!
//! 此函数设置SOC事件计数,该计数确定在发出SOC之前必须发生的事件数量。
//! 参数的有效值为:
//!   - adcSOCType
//!       - EPWM_SOC_A  - SOC A
//!       - EPWM_SOC_B  - SOC B
//!   - preScaleCount
//!        - [1 - 15]  -  每preScaleCount生成SOC脉冲,最多15个事件。
//!
//! \note preScaleCount值为0时禁用预分频。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setADCTriggerEventPrescale(uint32_t base,
                                EPWM_ADCStartOfConversionType adcSOCType,
                                uint16_t preScaleCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(preScaleCount < 16U);

    //
    // 启用高级功能:每最多15个事件的SOC
    //
    HWREGH(base + EPWM_O_ETPS) |= EPWM_ETPS_SOCPSSEL;
    if(adcSOCType == EPWM_SOC_A)
    {
        //
        // 设置SOC A的计数
        //
        HWREGH(base + EPWM_O_ETSOCPS) =
           ((HWREGH(base + EPWM_O_ETSOCPS) & ~EPWM_ETSOCPS_SOCAPRD2_M) |
             preScaleCount);
    }
    else
    {
        //
        // 设置SOC B的计数
        //
        HWREGH(base + EPWM_O_ETSOCPS) =
             ((HWREGH(base + EPWM_O_ETSOCPS) & ~EPWM_ETSOCPS_SOCBPRD2_M) |
              (preScaleCount << EPWM_ETSOCPS_SOCBPRD2_S));
    }
}

//*****************************************************************************
//
//! Return the SOC event status.
//!
//! \param base is the base address of the EPWM module.
//! \param adcSOCType is the ADC SOC type.
//!
//! This function returns the ePWM SOC status.
//! Valid values for adcSOCType are:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return Returns true if the selected adcSOCType SOC was generated.
//!         Returns false if the selected adcSOCType SOC was not generated.
//
//*****************************************************************************
static inline bool
EPWM_getADCTriggerFlagStatus(uint32_t base,
                             EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the SOC A/ B status
    //
    return((((HWREGH(base + EPWM_O_ETFLG) >>
              ((uint16_t)adcSOCType + 2U)) & 0x1U) == 0x1U) ? true : false);
}

//*****************************************************************************
//
//! Clear SOC flag.
//!
//! \param base is the base address of the EPWM module.
//! \param adcSOCType is the ADC SOC type.
//!
//! This function clears the ePWM SOC flag.
//! Valid values for adcSOCType are:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_clearADCTriggerFlag(uint32_t base,
                         EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Clear SOC A/B bit of ETCLR register
    //
    HWREGH(base + EPWM_O_ETCLR) |= 1U << ((uint16_t)adcSOCType + 2U);
}

//*****************************************************************************
//
//! 启用预SOC事件计数加载
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数启用由EPWM_setADCTriggerEventCountInitValue()函数设置的ePWM SOC事件计数器
//! 在SOC事件之前进行加载。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \note 仅对高级/扩展SOC模式有效
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_enableADCTriggerEventCountInit(uint32_t base,
                                    EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用SOC事件计数初始化/加载
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) |= 1U << ((uint16_t)adcSOCType + 14U);
}

//*****************************************************************************
//
//! 禁用预SOC事件计数加载
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数禁用ePWM SOC事件计数器在SOC事件之前进行加载
//! (仅SOC事件导致计数器值增加)。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \note 仅对高级/扩展SOC模式有效
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_disableADCTriggerEventCountInit(uint32_t base,
                                     EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用SOC事件计数初始化/加载
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) &=
                                  ~(1U << ((uint16_t)adcSOCType + 14U));
}

//*****************************************************************************
//
//! 强制软件预SOC事件计数器加载
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型
//!
//! 此函数强制ePWM SOC计数器被EPWM_setPreADCStartOfConversionEventCount()设置的内容加载。
//!
//! \note 确保在调用此函数之前调用EPWM_enableADCTriggerEventCountInit()
//!       函数。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_forceADCTriggerEventCountInit(uint32_t base,
                                   EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 加载中断事件计数器值
    //
    HWREGH(base + EPWM_O_ETCNTINITCTL) |= 1U << ((uint16_t)adcSOCType + 11U);
}

//*****************************************************************************
//
//! 设置ADC触发计数值
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//! \param eventCount 是ePWM中断计数值。
//!
//! 此函数设置ePWM ADC触发计数值。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//! eventCount的最大值为15。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
EPWM_setADCTriggerEventCountInitValue(uint32_t base,
                                      EPWM_ADCStartOfConversionType adcSOCType,
                                      uint16_t eventCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(eventCount < 16U);

    //
    // 设置ADC触发事件计数
    //
    if(adcSOCType == EPWM_SOC_A)
    {
        HWREGH(base + EPWM_O_ETCNTINIT) =
            ((HWREGH(base + EPWM_O_ETCNTINIT) & ~EPWM_ETCNTINIT_SOCAINIT_M) |
             (uint16_t)(eventCount << EPWM_ETCNTINIT_SOCAINIT_S));
    }
    else
    {
        HWREGH(base + EPWM_O_ETCNTINIT) =
             ((HWREGH(base + EPWM_O_ETCNTINIT) & ~EPWM_ETCNTINIT_SOCBINIT_M) |
              (eventCount << EPWM_ETCNTINIT_SOCBINIT_S));
    }
}

//*****************************************************************************
//
//! 获取SOC事件计数
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数返回ePWM SOC事件计数。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return 已发生的SOC事件计数。
//
//*****************************************************************************
static inline uint16_t
EPWM_getADCTriggerEventCount(uint32_t base,
                             EPWM_ADCStartOfConversionType adcSOCType)
{
    uint16_t eventCount;

    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回SOC事件计数
    //
    if(adcSOCType == EPWM_SOC_A)
    {
        eventCount = (HWREGH(base + EPWM_O_ETSOCPS) >>
                                         EPWM_ETSOCPS_SOCACNT2_S) & 0xFU;
    }
    else
    {
        eventCount = (HWREGH(base + EPWM_O_ETSOCPS) >>
                                        EPWM_ETSOCPS_SOCBCNT2_S) & 0xFU;
    }
    return(eventCount);
}

//*****************************************************************************
//
//! 强制SOC事件
//!
//! \param base 是EPWM模块的基地址。
//! \param adcSOCType 是ADC SOC类型。
//!
//! 此函数强制一个ePWM SOC事件。
//! adcSOCType的有效值为:
//!   - EPWM_SOC_A  - SOC A
//!   - EPWM_SOC_B  - SOC B
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_forceADCTrigger(uint32_t base, EPWM_ADCStartOfConversionType adcSOCType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置ETFRC寄存器的SOC A/B位
    //
    HWREGH(base + EPWM_O_ETFRC) |= 1U << ((uint16_t)adcSOCType + 2U);
}

//
// Digital Compare模块相关API
//
//*****************************************************************************
//
//! 设置DC故障输入
//!
//! \param base 是EPWM模块的基地址。
//! \param tripSource 是故障源。
//! \param dcType 是数字比较类型。
//!
//! 此函数设置数字比较(DC)的故障输入。对于给定的dcType,此函数设置tripSource
//! 作为DC的输入。
//! 参数的有效值为:
//!  - tripSource
//!     - EPWM_DC_TRIP_TRIPINx - 故障x,其中x范围为1到15,不包括13
//!     - EPWM_DC_TRIP_COMBINATION - 选择所有由以下函数启用输入的故障信号
//!                              EPWM_enableDigitalCompareTripCombinationInput()
//!  - dcType
//!     - EPWM_DC_TYPE_DCAH  - 数字比较A高
//!     - EPWM_DC_TYPE_DCAL  - 数字比较A低
//!     - EPWM_DC_TYPE_DCBH  - 数字比较B高
//!     - EPWM_DC_TYPE_DCBL  - 数字比较B低
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_selectDigitalCompareTripInput(uint32_t base,
                                   EPWM_DigitalCompareTripInput tripSource,
                                   EPWM_DigitalCompareType dcType)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置DC故障输入
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCTRIPSEL) =
     ((HWREGH(base + EPWM_O_DCTRIPSEL) & ~(0xFU << ((uint16_t)dcType << 2U))) |
      ((uint16_t)tripSource << ((uint16_t)dcType << 2U)));
    EDIS;
}

//
// DCFILT
//
//*****************************************************************************
//
//! 启用DC滤波器空白窗口
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用DC滤波器空白窗口。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareBlankingWindow(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用DC滤波器空白窗口
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) |= EPWM_DCFCTL_BLANKE;
    EDIS;
}

//*****************************************************************************
//
//! 禁用DC滤波器空白窗口
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用DC滤波器空白窗口。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareBlankingWindow(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用DC滤波器空白窗口
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) &= ~EPWM_DCFCTL_BLANKE;
    EDIS;
}

//*****************************************************************************
//
//! 启用数字比较窗口反相模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用数字比较窗口反相模式。这将反相空白窗口。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareWindowInverseMode(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用DC窗口反相模式
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) |= EPWM_DCFCTL_BLANKINV;
    EDIS;
}

//*****************************************************************************
//
//! 禁用数字比较窗口反相模式
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用数字比较窗口反相模式。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareWindowInverseMode(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用DC窗口反相模式
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) &= ~EPWM_DCFCTL_BLANKINV;
    EDIS;
}

//*****************************************************************************
//
//! 设置数字比较滤波器空白脉冲
//!
//! \param base 是EPWM模块的基地址。
//! \param blankingPulse 是开始空白窗口的脉冲。
//!
//! 此函数设置开始数字比较空白窗口的输入脉冲。
//! blankingPulse的有效值为:
//!   - EPWM_DC_WINDOW_START_TBCTR_PERIOD - 时基计数器等于周期
//!   - EPWM_DC_WINDOW_START_TBCTR_ZERO   - 时基计数器等于零
//!   - EPWM_DC_WINDOW_START_TBCTR_ZERO_PERIOD - 时基计数器等于零或周期。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareBlankingEvent(uint32_t base,
                                EPWM_DigitalCompareBlankingPulse blankingPulse)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置DC空白事件
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) =
            ((HWREGH(base + EPWM_O_DCFCTL) & ~EPWM_DCFCTL_PULSESEL_M) |
             ((uint16_t)((uint32_t)blankingPulse << EPWM_DCFCTL_PULSESEL_S)));
    EDIS;
}

//*****************************************************************************
//
//! 设置数字比较滤波器输入
//!
//! \param base 是EPWM模块的基地址。
//! \param filterInput 是数字比较信号源。
//!
//! 此函数设置将由数字比较模块滤波的信号输入源。
//! filterInput的有效值为:
//!   - EPWM_DC_WINDOW_SOURCE_DCAEVT1  - DC滤波器信号源是DCAEVT1
//!   - EPWM_DC_WINDOW_SOURCE_DCAEVT2  - DC滤波器信号源是DCAEVT2
//!   - EPWM_DC_WINDOW_SOURCE_DCBEVT1  - DC滤波器信号源是DCBEVT1
//!   - EPWM_DC_WINDOW_SOURCE_DCBEVT2  - DC滤波器信号源是DCBEVT2
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareFilterInput(uint32_t base,
                                  EPWM_DigitalCompareFilterInput filterInput)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set the signal source that will be filtered
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) =
                  ((HWREGH(base + EPWM_O_DCFCTL) & ~EPWM_DCFCTL_SRCSEL_M) |
                   ((uint16_t)filterInput));
    EDIS;
}

//
// DC Edge Filter
//
//*****************************************************************************
//
//! 启用数字比较边沿滤波器
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数启用数字比较边沿滤波器以在配置的边沿数后生成事件。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareEdgeFilter(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 启用DC边沿滤波器
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) |= EPWM_DCFCTL_EDGEFILTSEL;
    EDIS;
}

//*****************************************************************************
//
//! 禁用数字比较边沿滤波器
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数禁用数字比较边沿滤波器。
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareEdgeFilter(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 禁用DC边沿滤波器
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) &= ~EPWM_DCFCTL_EDGEFILTSEL;
    EDIS;
}

//*****************************************************************************
//
//! 设置数字比较边沿滤波器模式
//!
//! \param base 是EPWM模块的基地址。
//! \param edgeMode 是数字比较边沿滤波器模式。
//!
//! 此函数设置数字比较事件滤波器模式。edgeMode的有效值为:
//!   - EPWM_DC_EDGEFILT_MODE_RISING  - DC边沿滤波器模式是上升沿
//!   - EPWM_DC_EDGEFILT_MODE_FALLING - DC边沿滤波器模式是下降沿
//!   - EPWM_DC_EDGEFILT_MODE_BOTH    - DC边沿滤波器模式是双边沿
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareEdgeFilterMode(uint32_t base,
                                     EPWM_DigitalCompareEdgeFilterMode edgeMode)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置DC边沿滤波器模式
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) =
        (HWREGH(base + EPWM_O_DCFCTL) & ~EPWM_DCFCTL_EDGEMODE_M) |
         ((uint16_t)edgeMode << EPWM_DCFCTL_EDGEMODE_S);
    EDIS;
}

//*****************************************************************************
//
//! 设置数字比较边沿滤波器边沿计数
//!
//! \param base 是EPWM模块的基地址。
//! \param edgeCount 是数字比较事件滤波器计数
//!
//! 此函数设置数字比较事件滤波器边沿计数以生成事件。edgeCount的有效值为:
//!  - EPWM_DC_EDGEFILT_EDGECNT_0 - 生成事件不需要边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_1 - 生成事件需要1个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_2 - 生成事件需要2个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_3 - 生成事件需要3个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_4 - 生成事件需要4个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_5 - 生成事件需要5个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_6 - 生成事件需要6个边沿
//!  - EPWM_DC_EDGEFILT_EDGECNT_7 - 生成事件需要7个边沿
//!
//! \return 无
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareEdgeFilterEdgeCount(uint32_t base, uint16_t edgeCount)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 设置DC边沿滤波器边沿计数
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCFCTL) = (HWREGH(base + EPWM_O_DCFCTL) &
                                    ~EPWM_DCFCTL_EDGECOUNT_M) |
                                   (edgeCount << EPWM_DCFCTL_EDGECOUNT_S);
    EDIS;
}

//*****************************************************************************
//
//! 返回数字比较边沿滤波器边沿计数
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回生成事件所需的配置数字比较边沿滤波器边沿计数。它可返回0-7的值。
//!
//! \return 返回配置的数字比较边沿滤波器边沿计数。
//
//*****************************************************************************
static inline uint16_t
EPWM_getDigitalCompareEdgeFilterEdgeCount(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回配置的DC边沿滤波器边沿计数
    //
    return((HWREGH(base + EPWM_O_DCFCTL) & EPWM_DCFCTL_EDGECOUNT_M) >>
           EPWM_DCFCTL_EDGECOUNT_S);
}

//*****************************************************************************
//
//! 返回数字比较边沿滤波器捕获的边沿计数状态
//!
//! \param base 是EPWM模块的基地址。
//!
//! 此函数返回数字比较边沿滤波器捕获的边沿数。它可返回0-7的值。
//!
//! \return 返回捕获的边沿数
//
//*****************************************************************************
static inline uint16_t
EPWM_getDigitalCompareEdgeFilterEdgeStatus(uint32_t base)
{
    //
    // 检查参数
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // 返回DC边沿滤波器捕获的边沿数
    //
    return((HWREGH(base + EPWM_O_DCFCTL) & EPWM_DCFCTL_EDGESTATUS_M) >>
           EPWM_DCFCTL_EDGESTATUS_S);
}

//*****************************************************************************
//
//! Set up the Digital Compare filter window offset
//!
//! \param base is the base address of the EPWM module.
//! \param windowOffsetCount is blanking window offset length.
//!
//! This function sets the offset between window start pulse and blanking
//! window in TBCLK count.
//! The function take a 16bit count value for the offset value.
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareWindowOffset(uint32_t base, uint16_t windowOffsetCount)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set the blanking window offset in TBCLK counts
    //
    HWREGH(base + EPWM_O_DCFOFFSET) = windowOffsetCount;
}

//*****************************************************************************
//
//! Set up the Digital Compare filter window length
//!
//! \param base is the base address of the EPWM module.
//! \param windowLengthCount is blanking window length.
//!
//! This function sets up the Digital Compare filter blanking window length in
//! TBCLK count.The function takes a 16bit count value for the window length.
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareWindowLength(uint32_t base, uint16_t windowLengthCount)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set the blanking window length in TBCLK counts
    //
    HWREGH(base + EPWM_O_DCFWINDOW) = windowLengthCount;
}

//*****************************************************************************
//
//! Return DC filter blanking window offset count.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns DC filter blanking window offset count.
//!
//! \return None
//
//*****************************************************************************
static inline uint16_t
EPWM_getDigitalCompareBlankingWindowOffsetCount(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the Blanking Window Offset count
    //
    return(HWREGH(base + EPWM_O_DCFOFFSETCNT));
}

//*****************************************************************************
//
//! Return DC filter blanking window length count.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns DC filter blanking window length count.
//!
//! \return None
//
//*****************************************************************************
static inline uint16_t
EPWM_getDigitalCompareBlankingWindowLengthCount(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the Blanking Window Length count
    //
    return(HWREGH(base + EPWM_O_DCFWINDOWCNT));
}

//*****************************************************************************
//
//! Set up the Digital Compare Event source.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//! \param dcEvent is the Digital Compare Event number.
//! \param dcEventSource is the - Digital Compare Event source.
//!
//! This function sets up the Digital Compare module Event sources.
//! The following are valid values for the parameters.
//!  - dcModule
//!      - EPWM_DC_MODULE_A  - Digital Compare Module A
//!      - EPWM_DC_MODULE_B  - Digital Compare Module B
//!  - dcEvent
//!      - EPWM_DC_EVENT_1   - Digital Compare Event number 1
//!      - EPWM_DC_EVENT_2   - Digital Compare Event number 2
//!  - dcEventSource
//!      - EPWM_DC_EVENT_SOURCE_FILT_SIGNAL  - signal source is filtered
//!            \note The signal source for this option is DCxEVTy, where the
//!                  value of x is dependent on dcModule and the value of y is
//!                  dependent on dcEvent. Possible signal sources are DCAEVT1,
//!                  DCBEVT1, DCAEVT2 or DCBEVT2 depending on the value of both
//!                  dcModule and dcEvent.
//!      - EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL  - signal source is unfiltered
//!                   The signal source for this option is DCxEVTy.
//! \return None
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareEventSource(uint32_t base,
                                  EPWM_DigitalCompareModule dcModule,
                                  EPWM_DigitalCompareEvent dcEvent,
                                  EPWM_DigitalCompareEventSource dcEventSource)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Set the DC event 1 source source
    //
    EALLOW;
    if(dcEvent == EPWM_DC_EVENT_1)
    {
        HWREGH(base + registerOffset) =
                ((HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT1SRCSEL) |
                 (uint16_t)dcEventSource);
    }
    else
    {
        HWREGH(base + registerOffset) =
                 ((HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT2SRCSEL) |
                  ((uint16_t)dcEventSource << 8U));
    }
    EDIS;
}

//*****************************************************************************
//
//! Set up the Digital Compare input sync mode.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//! \param dcEvent is the Digital Compare Event number.
//! \param syncMode is the Digital Compare Event sync mode.
//!
//! This function sets up the Digital Compare module Event sources.
//! The following are valid values for the parameters.
//!  - dcModule
//!      - EPWM_DC_MODULE_A  - Digital Compare Module A
//!      - EPWM_DC_MODULE_B  - Digital Compare Module B
//!  - dcEvent
//!      - EPWM_DC_EVENT_1   - Digital Compare Event number 1
//!      - EPWM_DC_EVENT_2   - Digital Compare Event number 2
//!  - syncMode
//!      - EPWM_DC_EVENT_INPUT_SYNCED      - DC input signal is synced with
//!                                          TBCLK
//!      - EPWM_DC_EVENT_INPUT_NOT SYNCED  - DC input signal is not synced with
//!                                          TBCLK
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareEventSyncMode(uint32_t base,
                                    EPWM_DigitalCompareModule dcModule,
                                    EPWM_DigitalCompareEvent dcEvent,
                                    EPWM_DigitalCompareSyncMode syncMode)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Set the DC event sync mode
    //
    EALLOW;
    if(dcEvent == EPWM_DC_EVENT_1)
    {
        HWREGH(base + registerOffset) =
           ((HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT1FRCSYNCSEL) |
            ((uint16_t)syncMode << 1U));
    }
    else
    {
        HWREGH(base + registerOffset) =
            ((HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT2FRCSYNCSEL) |
             ((uint16_t)syncMode << 9U));
    }
    EDIS;
}

//*****************************************************************************
//
//! Enable Digital Compare to generate Start of Conversion.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//!
//! This function enables the Digital Compare Event 1 to generate Start of
//! Conversion.
//! The following are valid values for the \e dcModule parameter.
//!     - EPWM_DC_MODULE_A  - Digital Compare Module A
//!     - EPWM_DC_MODULE_B  - Digital Compare Module B
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareADCTrigger(uint32_t base,
                                    EPWM_DigitalCompareModule dcModule)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Enable Digital Compare start of conversion generation
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                       (HWREGH(base + registerOffset) | EPWM_DCACTL_EVT1SOCE);
    EDIS;
}

//*****************************************************************************
//
//! Disable Digital Compare from generating Start of Conversion.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//!
//! This function disables the Digital Compare Event 1 from generating Start of
//! Conversion.
//! The following are valid values for the \e dcModule parameter.
//!     - EPWM_DC_MODULE_A  - Digital Compare Module A
//!     - EPWM_DC_MODULE_B  - Digital Compare Module B
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareADCTrigger(uint32_t base,
                                     EPWM_DigitalCompareModule dcModule)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Disable Digital Compare start of conversion generation
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                      (HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT1SOCE);
    EDIS;
}

//*****************************************************************************
//
//! Enable Digital Compare to generate sync out pulse.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//!
//! This function enables the Digital Compare Event 1 to generate sync out
//! pulse
//! The following are valid values for the \e dcModule parameter.
//!     - EPWM_DC_MODULE_A  - Digital Compare Module A
//!     - EPWM_DC_MODULE_B  - Digital Compare Module B
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareSyncEvent(uint32_t base,
                                   EPWM_DigitalCompareModule dcModule)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Enable Digital Compare sync out pulse generation
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                     (HWREGH(base + registerOffset) | EPWM_DCACTL_EVT1SYNCE);
    EDIS;
}

//*****************************************************************************
//
//! Disable Digital Compare from generating Start of Conversion.
//!
//! \param base is the base address of the EPWM module.
//! \param dcModule is the Digital Compare module.
//!
//! This function disables the Digital Compare Event 1 from generating synch
//! out pulse.
//! The following are valid values for the \e dcModule parameters.
//!     - EPWM_DC_MODULE_A  - Digital Compare Module A
//!     - EPWM_DC_MODULE_B  - Digital Compare Module B
//!
//! \return None
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareSyncEvent(uint32_t base,
                                    EPWM_DigitalCompareModule dcModule)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    registerOffset = EPWM_O_DCACTL + (uint32_t)dcModule;

    //
    // Disable Digital Compare sync out pulse generation
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                      (HWREGH(base + registerOffset) & ~EPWM_DCACTL_EVT1SYNCE);
    EDIS;
}

//
// DC capture mode
//
//*****************************************************************************
//
//! Enables the Time Base Counter Capture controller.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables the time Base Counter Capture.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareCounterCapture(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Enable Time base counter capture
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCCAPCTL) |= EPWM_DCCAPCTL_CAPE;
    EDIS;
}

//*****************************************************************************
//
//! Disables the Time Base Counter Capture controller.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function disable the time Base Counter Capture.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareCounterCapture(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Disable Time base counter capture
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCCAPCTL) &= ~EPWM_DCCAPCTL_CAPE;
    EDIS;
}

//*****************************************************************************
//
//! Set the Time Base Counter Capture mode.
//!
//! \param base is the base address of the EPWM module.
//! \param enableShadowMode is the shadow read mode flag.
//!
//! This function sets the mode the Time Base Counter value is read from. If
//! enableShadowMode is true, CPU reads of the DCCAP register will return the
//! shadow register contents.If enableShadowMode is false, CPU reads of the
//! DCCAP register will return the active register contents.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setDigitalCompareCounterShadowMode(uint32_t base, bool enableShadowMode)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    EALLOW;
    if(enableShadowMode)
    {
        //
        // Enable DC counter shadow mode
        //
        HWREGH(base + EPWM_O_DCCAPCTL) &= ~EPWM_DCCAPCTL_SHDWMODE;
    }
    else
    {
       //
       // Disable DC counter shadow mode
       //
       HWREGH(base + EPWM_O_DCCAPCTL) |= EPWM_DCCAPCTL_SHDWMODE;
    }
    EDIS;
}

//*****************************************************************************
//
//! Return the DC Capture event status.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the DC capture event status.
//!
//! \return Returns true if a DC capture event has occurs.
//!         Returns false if no DC Capture event has occurred.
//!
//! \return None.
//
//*****************************************************************************
static inline bool
EPWM_getDigitalCompareCaptureStatus(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the DC compare status
    //
    return((HWREGH(base + EPWM_O_DCCAPCTL) & EPWM_DCCAPCTL_CAPSTS) ==
                                                        EPWM_DCCAPCTL_CAPSTS);
}

//*****************************************************************************
//
//! Clears DC capture latched status flag
//!
//! \param base is the base address of the EPWM module.
//! This function is used to clear the CAPSTS (set) condition.
//!
//! \return None.
//*****************************************************************************
static inline void
EPWM_clearDigitalCompareCaptureStatusFlag(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Clear digital compare capture status flag
    //
    EALLOW;
    HWREGH(base + EPWM_O_DCCAPCTL) &= ~EPWM_DCCAPCTL_CAPCLR;
    EDIS;
}

//*****************************************************************************
//
//! Configures DC capture operating mode
//!
//! \param base is the base address of the EPWM module.
//! \param disableClearMode is the clear mode bit.
//!
//! This function is used to configure the DC capture operating mode. If
//! \e disableClearMode is false, the TBCNT value is captured in active register
//! on occurance of DCEVTFILT event. The trip events are ignored until next
//! PRD or ZRO event re-triggers the capture mechanism.
//! If \e disableClearMode is true, the TBCNT value is captured, CAPSTS flag is
//! set and further trips are ignored until CAPSTS bit is cleared.
//!
//! \return None.
//*****************************************************************************
static inline void
EPWM_configureDigitalCompareCounterCaptureMode(uint32_t base,
                                               bool disableClearMode)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    EALLOW;
    if(disableClearMode)
    {
        //
        // Disable DC counter auto-clear on PULSESEL event
        //
        HWREGH(base + EPWM_O_DCCAPCTL) |= EPWM_DCCAPCTL_CAPMODE;
    }
    else
    {
       //
       // Enable DC counter clear on PULSESEL events
       //
       HWREGH(base + EPWM_O_DCCAPCTL) &= ~EPWM_DCCAPCTL_CAPMODE;
    }
    EDIS;
}

//*****************************************************************************
//
//! Return the DC Time Base Counter capture value.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the DC Time Base Counter capture value. The value
//! read is determined by the mode as set in the
//! EPWM_setTimeBaseCounterReadMode() function.
//!
//! \return Returns the DC Time Base Counter Capture count value.
//
//*****************************************************************************
static inline uint16_t
EPWM_getDigitalCompareCaptureCount(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the DC Time Base Counter Capture count value
    //
    return(HWREGH(base + EPWM_O_DCCAP));
}

//*****************************************************************************
//
//! Enable DC TRIP combinational input.
//!
//! \param base is the base address of the EPWM module.
//! \param tripInput is the Trip number.
//! \param dcType is the Digital Compare module.
//!
//! This function enables the specified Trip input.
//! Valid values for the parameters are:
//!  - tripInput
//!      - EPWM_DC_COMBINATIONAL_TRIPINx, where x is 1,2,...12,14,15
//!  - dcType
//!      - EPWM_DC_TYPE_DCAH  - Digital Compare A High
//!      - EPWM_DC_TYPE_DCAL  - Digital Compare A Low
//!      - EPWM_DC_TYPE_DCBH  - Digital Compare B High
//!      - EPWM_DC_TYPE_DCBL  - Digital Compare B Low
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableDigitalCompareTripCombinationInput(uint32_t base,
                                              uint16_t tripInput,
                                              EPWM_DigitalCompareType dcType)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Get the DCAHTRIPSEL, DCALTRIPSEL, DCBHTRIPSEL, DCBLTRIPSEL register
    // offset with respect to DCAHTRIPSEL
    //
    registerOffset = EPWM_O_DCAHTRIPSEL + (uint32_t)dcType;

    //
    // Set the DC trip input
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                           (HWREGH(base + registerOffset) | tripInput);

    //
    // Enable the combination input
    //
    HWREGH(base + EPWM_O_DCTRIPSEL) =
      (HWREGH(base + EPWM_O_DCTRIPSEL) | (0xFU << ((uint16_t)dcType << 2U)));
    EDIS;
}

//*****************************************************************************
//
//! Disable DC TRIP combinational input.
//!
//! \param base is the base address of the EPWM module.
//! \param tripInput is the Trip number.
//! \param dcType is the Digital Compare module.
//!
//! This function disables the specified Trip input.
//! Valid values for the parameters are:
//!  - tripInput
//!      - EPWM_DC_COMBINATIONAL_TRIPINx, where x is 1,2,...12,14,15
//!  - dcType
//!      - EPWM_DC_TYPE_DCAH  - Digital Compare A High
//!      - EPWM_DC_TYPE_DCAL  - Digital Compare A Low
//!      - EPWM_DC_TYPE_DCBH  - Digital Compare B High
//!      - EPWM_DC_TYPE_DCBL  - Digital Compare B Low
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableDigitalCompareTripCombinationInput(uint32_t base,
                                               uint16_t tripInput,
                                               EPWM_DigitalCompareType dcType)
{
    uint32_t registerOffset;

    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Get the DCAHTRIPSEL, DCALTRIPSEL, DCBHTRIPSEL, DCBLTRIPSEL register
    // offset with respect to DCAHTRIPSEL
    //
    registerOffset = EPWM_O_DCAHTRIPSEL + (uint32_t)dcType;

    //
    // Set the DC trip input
    //
    EALLOW;
    HWREGH(base + registerOffset) =
                           (HWREGH(base + registerOffset) & ~tripInput);
    EDIS;
}

//
// Valley switching
//
//*****************************************************************************
//
//! Enable valley capture mode.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables Valley Capture mode.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableValleyCapture(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set VCAPE bit
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) |= EPWM_VCAPCTL_VCAPE;
    EDIS;
}

//*****************************************************************************
//
//! Disable valley capture mode.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function disables Valley Capture mode.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableValleyCapture(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Clear VCAPE bit
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) &= ~EPWM_VCAPCTL_VCAPE;
    EDIS;
}

//*****************************************************************************
//
//! Start valley capture mode.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function starts Valley Capture sequence.
//!
//! \b Make sure you invoke EPWM_setValleyTriggerSource with the trigger
//!    variable set to EPWM_VALLEY_TRIGGER_EVENT_SOFTWARE before calling this
//!    function.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_startValleyCapture(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set VCAPSTART bit
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) |= EPWM_VCAPCTL_VCAPSTART;
    EDIS;
}

//*****************************************************************************
//
//! Set valley capture trigger.
//!
//! \param base is the base address of the EPWM module.
//! \param trigger is the Valley counter trigger.
//!
//! This function sets the trigger value that initiates Valley Capture sequence
//!
//! \b Set the number of Trigger source events for starting and stopping the
//!    valley capture using EPWM_setValleyTriggerEdgeCounts().
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setValleyTriggerSource(uint32_t base, EPWM_ValleyTriggerSource trigger)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Write to TRIGSEL bits
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) =
             ((HWREGH(base + EPWM_O_VCAPCTL) & ~EPWM_VCAPCTL_TRIGSEL_M) |
              ((uint16_t)trigger << 2U));
    EDIS;
}

//*****************************************************************************
//
//! Set valley capture trigger source count.
//!
//! \param base is the base address of the EPWM module.
//! \param startCount
//! \param stopCount
//!
//! This function sets the number of trigger events required to start and stop
//! the valley capture count.
//! Maximum values for both startCount and stopCount is 15 corresponding to the
//! 15th edge of the trigger event.
//!
//! \b Note:
//!    A startCount value of 0 prevents starting the valley counter.
//!    A stopCount value of 0 prevents the valley counter from stopping.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setValleyTriggerEdgeCounts(uint32_t base, uint16_t startCount,
                                uint16_t stopCount)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((startCount < 16U) && (stopCount < 16U));

    //
    // Write to STARTEDGE and STOPEDGE bits
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCNTCFG) =
                    ((HWREGH(base + EPWM_O_VCNTCFG) &
                      ~(EPWM_VCNTCFG_STARTEDGE_M | EPWM_VCNTCFG_STOPEDGE_M)) |
                      (startCount | (stopCount << 8U)));
    EDIS;
}

//*****************************************************************************
//
//! Enable valley switching delay.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables Valley switching delay.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableValleyHWDelay(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set EDGEFILTDLYSEL bit
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) |= EPWM_VCAPCTL_EDGEFILTDLYSEL;
    EDIS;
}

//*****************************************************************************
//
//! Disable valley switching delay.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function disables Valley switching delay.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableValleyHWDelay(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Clear EDGEFILTDLYSEL bit
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) &= ~EPWM_VCAPCTL_EDGEFILTDLYSEL;
    EDIS;
}

//*****************************************************************************
//
//! Set Valley delay values.
//!
//! \param base is the base address of the EPWM module.
//! \param delayOffsetValue is the software defined delay offset value.
//!
//! This function sets the Valley delay value.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setValleySWDelayValue(uint32_t base, uint16_t delayOffsetValue)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Write to SWVDELVAL bits
    //
    HWREGH(base + EPWM_O_SWVDELVAL) = delayOffsetValue;
}

//*****************************************************************************
//
//! Set Valley delay mode.
//!
//! \param base is the base address of the EPWM module.
//! \param delayMode is the Valley delay mode.
//!
//! This function sets the Valley delay mode values.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setValleyDelayDivider(uint32_t base, EPWM_ValleyDelayMode delayMode)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Write to VDELAYDIV bits
    //
    EALLOW;
    HWREGH(base + EPWM_O_VCAPCTL) =
         ((HWREGH(base + EPWM_O_VCAPCTL) & ~EPWM_VCAPCTL_VDELAYDIV_M) |
          ((uint16_t)delayMode << 7U));
    EDIS;
}

//*****************************************************************************
//
//! Get the valley edge status bit.
//!
//! \param base is the base address of the EPWM module.
//! \param edge is the start or stop edge.
//!
//! This function returns the status of the start or stop valley status
//! depending on the value of edge.
//! If a start or stop edge has occurred, the function returns true, if not it
//! returns false.
//!
//! \return Returns true if the specified edge has occurred,
//!         Returns false if the specified edge has not occurred.
//
//*****************************************************************************
static inline bool
EPWM_getValleyEdgeStatus(uint32_t base, EPWM_ValleyCounterEdge edge)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    if(edge == EPWM_VALLEY_COUNT_START_EDGE)
    {
        //
        // Returns STARTEDGESTS status
        //
        return(((HWREGH(base + EPWM_O_VCNTCFG) & EPWM_VCNTCFG_STARTEDGESTS) ==
                   EPWM_VCNTCFG_STARTEDGESTS ) ? true : false);
    }
    else
    {
        //
        // Returns STOPEDGESTS status
        //
        return(((HWREGH(base + EPWM_O_VCNTCFG) & EPWM_VCNTCFG_STOPEDGESTS) ==
                EPWM_VCNTCFG_STOPEDGESTS) ? true : false);
    }
}

//*****************************************************************************
//
//! Get the Valley Counter value.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the valley time base count value which is captured
//! upon occurrence of the stop edge condition selected by
//! EPWM_setValleyTriggerSource() and by the stopCount variable of the
//! EPWM_setValleyTriggerEdgeCounts() function.
//!
//! \return Returns the valley base time count.
//
//*****************************************************************************
static inline uint16_t
EPWM_getValleyCount(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Read VCNTVAL register
    //
    return(HWREGH(base + EPWM_O_VCNTVAL));
}

//*****************************************************************************
//
//! Get the Valley delay value.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the hardware valley delay count.
//!
//! \return Returns the valley delay count.
//
//*****************************************************************************
static inline uint16_t
EPWM_getValleyHWDelay(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Read HWVDELVAL  register
    //
    return(HWREGH(base + EPWM_O_HWVDELVAL));
}

//*****************************************************************************
//
//! Enable Global shadow load mode.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables Global shadow to active load mode of registers.
//! The trigger source for loading shadow to active is determined by
//! EPWM_setGlobalLoadTrigger() function.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableGlobalLoad(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Shadow to active load is controlled globally
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) |= EPWM_GLDCTL_GLD;
    EDIS;
}

//*****************************************************************************
//
//! Disable Global shadow load mode.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function disables Global shadow to active load mode of registers.
//! Loading shadow to active is determined individually.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableGlobalLoad(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Shadow to active load is controlled individually
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) &= ~EPWM_GLDCTL_GLD;
    EDIS;
}

//*****************************************************************************
//
//! Set the Global shadow load pulse.
//!
//! \param base is the base address of the EPWM module.
//! \param loadTrigger is the pulse that causes global shadow load.
//!
//! This function sets the pulse that causes Global shadow to active load.
//! Valid values for the loadTrigger parameter are:
//!
//!   - EPWM_GL_LOAD_PULSE_CNTR_ZERO              - load when counter is equal
//!                                                 to zero
//!   - EPWM_GL_LOAD_PULSE_CNTR_PERIOD            - load when counter is equal
//!                                                 to period
//!   - EPWM_GL_LOAD_PULSE_CNTR_ZERO_PERIOD       - load when counter is equal
//!                                                 to zero or period
//!   - EPWM_GL_LOAD_PULSE_SYNC                    - load on sync event
//!   - EPWM_GL_LOAD_PULSE_SYNC_OR_CNTR_ZERO      - load on sync event or when
//!                                                 counter is equal to zero
//!   - EPWM_GL_LOAD_PULSE_SYNC_OR_CNTR_PERIOD    - load on sync event or when
//!                                                 counter is equal to period
//!   - EPWM_GL_LOAD_PULSE_SYNC_CNTR_ZERO_PERIOD  - load on sync event or when
//!                                                 counter is equal to period
//!                                                 or zero
//!   - EPWM_GL_LOAD_PULSE_GLOBAL_FORCE            - load on global force
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setGlobalLoadTrigger(uint32_t base, EPWM_GlobalLoadTrigger loadTrigger)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set the Global shadow to active load pulse
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) =
               ((HWREGH(base + EPWM_O_GLDCTL) & ~EPWM_GLDCTL_GLDMODE_M) |
                ((uint16_t)loadTrigger << EPWM_GLDCTL_GLDMODE_S));
    EDIS;
}

//*****************************************************************************
//
//! Set the number of Global load pulse event counts
//!
//! \param base is the base address of the EPWM module.
//! \param prescalePulseCount is the pulse event counts.
//!
//! This function sets the number of Global Load pulse events that have to
//! occurred before a global load pulse is issued. Valid values for
//! prescaleCount range from 0 to 7. 0 being no event (disables counter), and 7
//! representing 7 events.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setGlobalLoadEventPrescale(uint32_t base, uint16_t prescalePulseCount)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT(prescalePulseCount < 8U);

    //
    // Set the number of counts that have to occur before
    // a load strobe is issued
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) =
                ((HWREGH(base + EPWM_O_GLDCTL) & ~EPWM_GLDCTL_GLDPRD_M) |
                 (prescalePulseCount << EPWM_GLDCTL_GLDPRD_S));
    EDIS;
}

//*****************************************************************************
//
//! Return the number of Global load pulse event counts
//!
//! \param base is the base address of the EPWM module.
//!
//! This function returns the number of Global Load pulse events that have
//! occurred. These pulse events are set by the EPWM_setGlobalLoadTrigger()
//! function.
//!
//! \return None.
//
//*****************************************************************************
static inline uint16_t
EPWM_getGlobalLoadEventCount(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Return the number of events that have occurred
    //
    return((HWREGH(base + EPWM_O_GLDCTL) >> EPWM_GLDCTL_GLDCNT_S) & 0x7U);
}

//*****************************************************************************
//
//! Enable continuous global shadow to active load.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables global continuous shadow to active load. Register
//! load happens every time the event set by the
//! EPWM_setGlobalLoadTrigger() occurs.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableGlobalLoadOneShotMode(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Enable global continuous shadow to active load
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) &= ~EPWM_GLDCTL_OSHTMODE;
    EDIS;
}

//*****************************************************************************
//
//! Enable One shot global shadow to active load.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function enables a one time global shadow to active load. Register
//! load happens every time the event set by the
//! EPWM_setGlobalLoadTrigger() occurs.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableGlobalLoadOneShotMode(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Enable global continuous shadow to active load
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL) |= EPWM_GLDCTL_OSHTMODE;
    EDIS;
}

//*****************************************************************************
//
//! Set One shot global shadow to active load pulse.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function sets a one time global shadow to active load pulse. The pulse
//! propagates to generate a load signal if any of the events set by
//! EPWM_setGlobalLoadTrigger() occur.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_setGlobalLoadOneShotLatch(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Set a one shot Global shadow load pulse.
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL2) |= EPWM_GLDCTL2_OSHTLD;
    EDIS;
}

//*****************************************************************************
//
//! Force a software One shot global shadow to active load pulse.
//!
//! \param base is the base address of the EPWM module.
//!
//! This function forces a software a one time global shadow to active load
//! pulse.
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_forceGlobalLoadOneShotEvent(uint32_t base)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));

    //
    // Force a Software Global shadow load pulse
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCTL2) |= EPWM_GLDCTL2_GFRCLD;
    EDIS;
}

//*****************************************************************************
//
//! Enable a register to be loaded Globally.
//!
//! \param base is the base address of the EPWM module.
//! \param loadRegister is the register.
//!
//! This function enables the register specified by loadRegister to be globally
//! loaded.
//! Valid values for loadRegister are:
//!  - EPWM_GL_REGISTER_TBPRD_TBPRDHR  - Register TBPRD:TBPRDHR
//!  - EPWM_GL_REGISTER_CMPA_CMPAHR    - Register CMPA:CMPAHR
//!  - EPWM_GL_REGISTER_CMPB_CMPBHR    - Register CMPB:CMPBHR
//!  - EPWM_GL_REGISTER_CMPC           - Register CMPC
//!  - EPWM_GL_REGISTER_CMPD           - Register CMPD
//!  - EPWM_GL_REGISTER_DBRED_DBREDHR  - Register DBRED:DBREDHR
//!  - EPWM_GL_REGISTER_DBFED_DBFEDHR  - Register DBFED:DBFEDHR
//!  - EPWM_GL_REGISTER_DBCTL          - Register DBCTL
//!  - EPWM_GL_REGISTER_AQCTLA_AQCTLA2 - Register AQCTLA/A2
//!  - EPWM_GL_REGISTER_AQCTLB_AQCTLB2 - Register AQCTLB/B2
//!  - EPWM_GL_REGISTER_AQCSFRC        - Register AQCSFRC
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_enableGlobalLoadRegisters(uint32_t base, uint16_t loadRegister)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((loadRegister > 0x0000U) && (loadRegister < 0x0800U));

    //
    // The register specified by loadRegister is loaded globally
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCFG) |= loadRegister;
    EDIS;
}

//*****************************************************************************
//
//! Disable a register to be loaded Globally.
//!
//! \param base is the base address of the EPWM module.
//! \param loadRegister is the register.
//!
//! This function disables the register specified by loadRegister from being
//! loaded globally. The shadow to active load happens as specified by the
//! register control
//! Valid values for loadRegister are:
//!  - EPWM_GL_REGISTER_TBPRD_TBPRDHR  - Register TBPRD:TBPRDHR
//!  - EPWM_GL_REGISTER_CMPA_CMPAHR    - Register CMPA:CMPAHR
//!  - EPWM_GL_REGISTER_CMPB_CMPBHR    - Register CMPB:CMPBHR
//!  - EPWM_GL_REGISTER_CMPC           - Register CMPC
//!  - EPWM_GL_REGISTER_CMPD           - Register CMPD
//!  - EPWM_GL_REGISTER_DBRED_DBREDHR  - Register DBRED:DBREDHR
//!  - EPWM_GL_REGISTER_DBFED_DBFEDHR  - Register DBFED:DBFEDHR
//!  - EPWM_GL_REGISTER_DBCTL          - Register DBCTL
//!  - EPWM_GL_REGISTER_AQCTLA_AQCTLA2 - Register AQCTLA/A2
//!  - EPWM_GL_REGISTER_AQCTLB_AQCTLB2 - Register AQCTLB/B2
//!  - EPWM_GL_REGISTER_AQCSFRC        - Register AQCSFRC
//!
//! \return None.
//
//*****************************************************************************
static inline void
EPWM_disableGlobalLoadRegisters(uint32_t base, uint16_t loadRegister)
{
    //
    // Check the arguments
    //
    ASSERT(EPWM_isBaseValid(base));
    ASSERT((loadRegister > 0x0000U) && (loadRegister < 0x0800U));

    //
    // The register specified by loadRegister is loaded by individual
    // register configuration setting
    //
    EALLOW;
    HWREGH(base + EPWM_O_GLDCFG) &= ~loadRegister;
    EDIS;
}

//*****************************************************************************
//
//! Set emulation mode
//!
//! \param base is the base address of the EPWM module.
//! \param emulationMode is the emulation mode.
//!
//! This function sets the emulation behaviours of the time base counter. Valid
//! values for emulationMode are:
//!  - EPWM_EMULATION_STOP_AFTER_NEXT_TB    - Stop after next Time Base counter
//!                                           increment or decrement.
//!  - EPWM_EMULATION_STOP_AFTER_FULL_CYCLE - Stop when counter completes whole
//!                                           cycle.
//!  - EPWM_EMULATION_FREE_RUN               - Free run.
//!
//! \return None.
//
//*****************************************************************************
extern void
EPWM_setEmulationMode(uint32_t base, EPWM_EmulationMode emulationMode);

//*****************************************************************************
//
//! Configures ePWM signal with desired frequency & duty
//!
//! \param base is the base address of the EPWM module.
//! \param signalParams is the desired signal parameters.
//!
//! This function configures the ePWM module to generate a signal with
//! desired frequency & duty.
//!
//! \return None.
//
//*****************************************************************************
extern void
EPWM_configureSignal(uint32_t base, const EPWM_SignalParams *signalParams);

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // EPWM_H
