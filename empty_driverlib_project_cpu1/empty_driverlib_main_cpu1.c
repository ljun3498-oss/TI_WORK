//#############################################################################
//
// FILE:   empty_driverlib_main_cpu1.c
//
// TITLE:  Empty Project
//
// CPU1 Empty Project Example
//
// This example is an empty project setup for Driverlib development for CPU1.
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

	// 手动拉低 GPIO2，避免硬件浮空或未经配置的状态
	GPIO_setPadConfig(2, GPIO_PIN_TYPE_STD);
	GPIO_setDirectionMode(2, GPIO_DIR_MODE_OUT);
	GPIO_writePin(2, 0);

	// 初始将 GPIO0/GPIO1 的主控核设置为 CPU1（CPU1 初始持有 GPIO1）
	GPIO_setMasterCore(0, GPIO_CORE_CPU1);
	GPIO_setMasterCore(1, GPIO_CORE_CPU1);

	// 配置 GPIO0 和 GPIO1 初始为输出（CPU1 初始持有 GPIO1）
	GPIO_setDirectionMode(0, GPIO_DIR_MODE_OUT);
	GPIO_setDirectionMode(1, GPIO_DIR_MODE_OUT);

	// 初始化 IPC（本核为 CPU1 local）
	IPC_init(IPC_CPU1_L_CPU2_R);

	// 双核调试同步：等待 CPU2 也完成初始化后再继续
	IPC_sync(IPC_CPU1_L_CPU2_R, IPC_FLAG31);

	// 简单忙等延时计数（根据 CPU 频率可适当调整）
	volatile uint32_t delayCount0 = 10000000U; // 近似 5 秒，用于 GPIO0
	volatile uint32_t delayCount1 = 2000000U;  // 近似 1 秒，用于 GPIO1（初始由 CPU1 驱动）

	bool gpio1_released = false;
	volatile uint32_t i;
	for(;;)
	{
		// 检查是否有来自 CPU2 的请求（Remote->Local flag）
		if(IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG0))
		{
			// 释放 GPIO1：先清零再设为输入（高阻）
			GPIO_writePin(1, 0);
			GPIO_setDirectionMode(1, GPIO_DIR_MODE_OUT); // 先设为输出以确保输出低电平

			// 将 GPIO1 的主控核切换到 CPU2 以便对方能完全接管
			GPIO_setMasterCore(1, GPIO_CORE_CPU2);

			// 通知 CPU2 已释放（Local->Remote flag）
			IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG1);

			// 清除请求标志
			IPC_clearFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);

			gpio1_released = true;
		}

		// GPIO0 闪烁（CPU1 始终控制 GPIO0）
		GPIO_writePin(0, 1);
		for(i = 0; i < delayCount0; ++i) { __asm(" nop"); }
		GPIO_writePin(0, 0);
		for(i = 0; i < delayCount0; ++i) { __asm(" nop"); }
	}
}
