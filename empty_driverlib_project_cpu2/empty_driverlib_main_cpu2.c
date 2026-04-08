//#############################################################################
//
// FILE:   empty_driverlib_main_cpu2.c
//
// TITLE:  Empty Project
//
// CPU2 Empty Project Example
//
// This example is an empty project setup for Driverlib development for CPU2.
//
//#############################################################################
//
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
#include "ipc.h"
#include "gpio.h"

//
// Main
//
void main(void)
{
	// 初始化设备与 GPIO
	Device_init();
	Device_initGPIO();



	// 初始化 IPC（本核为 CPU2 local）
	IPC_init(IPC_CPU2_L_CPU1_R);

	// 双核调试同步：先等待 CPU1 完成初始化并进入同步点
	IPC_sync(IPC_CPU2_L_CPU1_R, IPC_FLAG31);

	// 向 CPU1 请求释放 GPIO1
	IPC_setFlagLtoR(IPC_CPU2_L_CPU1_R, IPC_FLAG0);

	// 等待 CPU1 确认释放（Remote->Local 标志 IPC_FLAG1）
	while(!IPC_isFlagBusyRtoL(IPC_CPU2_L_CPU1_R, IPC_FLAG1)) { __asm(" nop"); }

	// 确认并清除来自 CPU1 的 Remote->Local 标志
	IPC_ackFlagRtoL(IPC_CPU2_L_CPU1_R, IPC_FLAG1);

	// 将 GPIO1 的主控核切换到 CPU2 并设为输出
	GPIO_setMasterCore(1, GPIO_CORE_CPU2);
	GPIO_setDirectionMode(1, GPIO_DIR_MODE_OUT);

	// 简单忙等延时计数（根据 CPU 频率可适当调整）
	volatile uint32_t delayCount = 2000000U; // 近似 1 秒，可视平台调整
	volatile uint32_t i;
	while(1)
	{
		// 置位输出
		GPIO_writePin(1, 1);
		for(i = 0; i < delayCount; ++i) { __asm(" nop"); }
		// 清位输出
		GPIO_writePin(1, 0);
		for(i = 0; i < delayCount; ++i) { __asm(" nop"); }
	}
}

//
// End of File
//
