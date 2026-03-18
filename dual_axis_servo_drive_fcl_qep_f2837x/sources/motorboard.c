/*
 * Copyright (c) 2020 Texas Instruments Incorporated - http://www.ti.com
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include "motorboard.h"

//*****************************************************************************
//
// Board Configurations
// Initializes the rest of the modules. 
// Call this function in your application if you wish to do all module 
// initialization.
// If you wish to not use some of the initializations, instead of the 
// Board_init use the individual Module_inits
//
//*****************************************************************************
void Board_init()
{
	EALLOW;

	PinMux_init();
	// CPUTimer_init(); // 注释掉CPUTimer初始化，避免与电机控制的任务调度器冲突
	// GPIO_init();
	SCI_init();
	// INTERRUPT_init();  // 初始化SCI中断

	EDIS;
}

//*****************************************************************************
//
// PINMUX Configurations
//
//*****************************************************************************
void PinMux_init()
{
	//
	// PinMux for modules assigned to CPU1
	//
	
	// GPIO0 -> myBoardLED0_GPIO Pinmux
	// GPIO_setPinConfig(GPIO_0_GPIO0);  // 注释掉LED0的Pinmux配置
	//
	// SCIB -> mySCIB Pinmux
	//
	GPIO_setPinConfig(mySCIB_SCIRX_PIN_CONFIG);
	GPIO_setPadConfig(mySCIB_SCIRX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setQualificationMode(mySCIB_SCIRX_GPIO, GPIO_QUAL_ASYNC);

	GPIO_setPinConfig(mySCIB_SCITX_PIN_CONFIG);
	GPIO_setPadConfig(mySCIB_SCITX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setQualificationMode(mySCIB_SCITX_GPIO, GPIO_QUAL_ASYNC);


}


//*****************************************************************************
//
// CPUTIMER Configurations
//
//*****************************************************************************
// void CPUTIMER_init(){
// 	myCPUTIMER0_init();
// }
//
// void myCPUTIMER0_init(){
// 	CPUTimer_setEmulationMode(myCPUTIMER0_BASE, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
// 	CPUTimer_setPreScaler(myCPUTIMER0_BASE, 1U);
// 	CPUTimer_setPeriod(myCPUTIMER0_BASE, 200000000U);
// 	CPUTimer_enableInterrupt(myCPUTIMER0_BASE);
// 	CPUTimer_stopTimer(myCPUTIMER0_BASE);
//
// 	CPUTimer_reloadTimerCounter(myCPUTIMER0_BASE);
// }

//*****************************************************************************
//
// GPIO Configurations
//
//*****************************************************************************
void GPIO_init(){
	// myBoardLED0_GPIO_init();  // 注释掉LED0初始化
}

// void myBoardLED0_GPIO_init(){
// 	GPIO_setPadConfig(myBoardLED0_GPIO, GPIO_PIN_TYPE_STD);
// 	GPIO_setQualificationMode(myBoardLED0_GPIO, GPIO_QUAL_SYNC);
// 	GPIO_setDirectionMode(myBoardLED0_GPIO, GPIO_DIR_MODE_OUT);
// 	GPIO_setControllerCore(myBoardLED0_GPIO, GPIO_CORE_CPU1);
// }

//*****************************************************************************
//
// INTERRUPT Configurations
//
//*****************************************************************************
void INTERRUPT_init(){

}
//*****************************************************************************
//
// SCI Configurations
//
//*****************************************************************************
void SCI_init(){
	mySCIB_init();
}

void mySCIB_init(){
	SCI_clearInterruptStatus(mySCIB_BASE, SCI_INT_RXFF | SCI_INT_TXFF | SCI_INT_FE | SCI_INT_OE | SCI_INT_PE | SCI_INT_RXERR | SCI_INT_RXRDY_BRKDT | SCI_INT_TXRDY);
	SCI_clearOverflowStatus(mySCIB_BASE);

	SCI_resetTxFIFO(mySCIB_BASE);
	SCI_resetRxFIFO(mySCIB_BASE);
	SCI_resetChannels(mySCIB_BASE);

	SCI_setConfig(mySCIB_BASE, DEVICE_LSPCLK_FREQ, mySCIB_BAUDRATE, (SCI_CONFIG_WLEN_8|SCI_CONFIG_STOP_ONE|SCI_CONFIG_PAR_NONE));
	SCI_disableLoopback(mySCIB_BASE);

	SCI_performSoftwareReset(mySCIB_BASE);

	uint32_t k;
	for(k= 0; k < 10000; k++) {
		NOP;
	}

    SCI_setFIFOInterruptLevel(mySCIB_BASE, SCI_FIFO_TX0, SCI_FIFO_RX1);

	SCI_enableFIFO(mySCIB_BASE);
	SCI_enableModule(mySCIB_BASE);

	for(k= 0; k < 5000; k++) {
		NOP;
	}

	// Disable SCIB RX interrupt during SCI TX debug to avoid ISR side effects.
	// SCI_enableInterrupt(mySCIB_BASE, SCI_INT_RXFF);

	for(k= 0; k < 5000; k++) {
		NOP;
	}
}
