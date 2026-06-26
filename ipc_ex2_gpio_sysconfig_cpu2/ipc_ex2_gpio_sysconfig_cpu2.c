//###########################################################################
//
// FILE:   ipc_ex2_sysconfig_cpu2.c
//
// TITLE: IPC Waveform Generator for F2837xD CPU2.
//
// This CPU2 generates 3-phase sine waveforms and writes them to shared
// memory (CPU2TOCPU1RAM). CPU1 reads from shared memory and sends via SCI.
//
// \b Watch \b Pins
//   - GPIO34 - LED output on CPU2 (heartbeat)
//
//#############################################################################
// $TI Release: $
// 
// $Copyright:
// Copyright (C) 2013-2026 Texas Instruments Incorporated - http://www.ti.com/
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
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include <math.h>
#include <stdint.h>
#include "device/driverlib/inc/hw_memmap.h"

//
// 共享内存结构体 (放在 CPU2TOCPU1RAM 段)
// 帧格式遵循 JustFloat 协议:
// [float ch0][float ch1][float ch2][00 00 80 7F]
// 共 16 字节 (4 channels × 4 bytes)
//
#pragma DATA_SECTION(sharedWaveform, "MSGRAM_CPU2_TO_CPU1")
volatile struct {
    float ch0;
    float ch1;
    float ch2;
    uint32_t tail;  // 帧尾 0x7F800000 (JustFloat +Inf)
} sharedWaveform;

//
// 波形参数
//
float t = 0.0f;             // 时间变量
float amplitude = 9.0f;     // 波形幅值
float period = 1.0f;        // 波形周期 (秒)
float samplingRate = 100.0f; // 采样率 (Hz)
float dt;                    // 时间步长
// previous raw words from CPU1->CPU2 MSGRAM for change detection
static uint32_t prev_cpu1_u0 = 0u;
static uint32_t prev_cpu1_u1 = 0u;

//**************************************************************************
//
// generateWaveforms - 生成三相正弦波，相位差120度
//
//**************************************************************************
void generateWaveforms(void)
{

    // Read amplitude and period from CPU1->CPU2 MSGRAM and detect changes
    volatile uint32_t *cpu1to2 = (volatile uint32_t *)CPU1_TO_CPU2_MSG_RAM_BASE;
    union { uint32_t u; float f; } conv;

    uint32_t cpu_u0 = cpu1to2[0];
    uint32_t cpu_u1 = cpu1to2[1];

    // If amplitude changed, update and reset phase (so change is visible immediately)
    if(cpu_u0 != prev_cpu1_u0)
    {
        prev_cpu1_u0 = cpu_u0;
        conv.u = cpu_u0; // allow zero value
        amplitude = conv.f;
        // reset phase/time so new waveform starts immediately
        t = 0.0f;
    }

    // If period changed, update and reset phase as well
    if(cpu_u1 != prev_cpu1_u1)
    {
        prev_cpu1_u1 = cpu_u1;
        conv.u = cpu_u1; // allow zero value
        period = conv.f;
        t = 0.0f;
    }

    float omega = 2.0f * 3.14159265f / period;

    sharedWaveform.ch0 = amplitude * sinf(omega * t);
    sharedWaveform.ch1 = amplitude * sinf(omega * t + 2.0f * 3.14159265f / 3.0f);  // 120度
    sharedWaveform.ch2 = amplitude * sinf(omega * t + 4.0f * 3.14159265f / 3.0f);  // 240度

    t += dt;
    if(t >= period) { t = 0.0f; }
}

//
// Main
//
void main(void)
{

    //
    // Initialize device clock and peripherals
    //
    Device_init();

    //
    // Initialize SysConfig Settings
    //
    Board_init();

    //
    // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;

    //
    // 初始化共享内存中的帧尾 (JustFloat +Inf = 0x7F800000)
    //
    sharedWaveform.tail = 0x7F800000UL;

    //
    // 计算时间步长
    //
    dt = 1.0f / samplingRate;

    //
    // GPIO1 控制权已由 CPU1 转交，直接使用
    //
    while(1)
    {
        //
        // 生成三相波形并写入共享内存
        //
        generateWaveforms();

        //
        // LED 心跳闪烁 (GPIO1)
        //
        GPIO_togglePin(1);

        //
        // 延时控制采样率 (100Hz = 10ms)
        //
        DEVICE_DELAY_US(10000);  // 10ms
    }
}

//
// End of file
//
