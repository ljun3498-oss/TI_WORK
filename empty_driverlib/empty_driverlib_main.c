//#############################################################################
//
// 文件名:   empty_driverlib_main.c
//
// 标题:  空项目
//
// 空项目示例
//
// 此示例是一个用于Driverlib开发的空项目设置。
//
//#############################################################################
//
//
// $Copyright:
// Copyright (C) 2013-2025 Texas Instruments Incorporated - http://www.ti.com/
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

//
// 包含的文件
//
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include "c2000ware_libraries.h"
#include "shared.h"

// C2000Ware示例使用的Message RAM段名称
#pragma DATA_SECTION(CpuToCla1Msg, "CpuToCla1MsgRam")
#pragma DATA_SECTION(ClaToCpuMsg, "ClaToCpu1MsgRam")

// CPU -> CLA消息结构体 (在CPU的.c文件中定义/分配)
volatile struct {
    float Ia;           /* A相电流 (A) */
    float Ib;           /* B相电流 (A) */
    float Ic;           /* C相电流 (A) */
    float theta_elec;   /* 电角度 (弧度) */
    float Vdc;          /* 直流母线电压 */
    float Id_ref;       /* D轴电流参考值 */
    float Iq_ref;       /* Q轴电流参考值 */
} CpuToCla1Msg;

// CLA -> CPU消息结构体 (在CPU的.c文件中定义/分配)
volatile struct {
    uint16_t Ta;
    uint16_t Tb;
    uint16_t Tc;
    uint16_t reserved;
    uint16_t done_flag; /* CLA在任务完成时设置为1 */
} ClaToCpuMsg;

//
// 主函数
//
void main(void)
{

    //
    // 初始化设备时钟和外设
    //
    Device_init();

    //
    // 禁用引脚锁定并启用内部上拉电阻
    //
    Device_initGPIO();

    //
    // 初始化PIE并清除PIE寄存器。禁用CPU中断。
    //
    Interrupt_initModule();

    //
    // 用指向外壳中断服务例程(ISR)的指针初始化PIE向量表。
    //
    Interrupt_initVectorTable();

    //
    // 引脚复用和外设初始化
    //
    Board_init();

    //
    // C2000Ware库初始化
    //
    C2000Ware_libraries_init();

    //
    // 启用全局中断(INTM)和实时中断(DBGM)
    //
    EINT;
    ERTM;

    while(1)
    {
        
    }
}

//
// 文件结束
//