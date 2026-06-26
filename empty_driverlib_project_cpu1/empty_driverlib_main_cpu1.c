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
#include "gpio.h"

static void configureCpu2PinMuxAndPad(void)
{
	// Migrated pin mux/pad ownership from CPU2 side:
	// - source_cpu2/dual_axis_servo_drive_hal_cpu2.c : HAL_setupGPIOs()
	// - source_cpu2/motorboard_cpu2.c : PinMux_init()
	// - source_cpu2/sfra_gui_scicomms_driverlib_cpu2.c : SFRA GUI SCI/LED pin mux
	GPIO_setPinConfig(GPIO_0_EPWM1A);
	GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_1_EPWM1B);
	GPIO_setPadConfig(1, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_2_EPWM2A);
	GPIO_setPadConfig(2, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_3_EPWM2B);
	GPIO_setPadConfig(3, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_4_EPWM3A);
	GPIO_setPadConfig(4, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_5_EPWM3B);
	GPIO_setPadConfig(5, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_6_EPWM4A);
	GPIO_setPadConfig(6, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_7_EPWM4B);
	GPIO_setPadConfig(7, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_8_EPWM5A);
	GPIO_setPadConfig(8, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_9_EPWM5B);
	GPIO_setPadConfig(9, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_10_EPWM6A);
	GPIO_setPadConfig(10, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_11_EPWM6B);
	GPIO_setPadConfig(11, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_12_CANTXB);
	GPIO_setPadConfig(12, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_14_GPIO14);
	GPIO_setPadConfig(14, GPIO_PIN_TYPE_INVERT);
	GPIO_setPinConfig(GPIO_15_GPIO15);
	GPIO_setPadConfig(15, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_16_GPIO16);
	GPIO_setPadConfig(16, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_17_GPIO17);
	GPIO_setPadConfig(17, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_18_GPIO18);
	GPIO_setPadConfig(18, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_19_GPIO19);
	GPIO_setPadConfig(19, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_20_EQEP1A);
	GPIO_setPadConfig(20, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_21_EQEP1B);
	GPIO_setPadConfig(21, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_23_EQEP1I);
	GPIO_setPadConfig(23, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_24_EQEP2A);
	GPIO_setPadConfig(24, GPIO_PIN_TYPE_INVERT);
	GPIO_setPinConfig(GPIO_25_EQEP2B);
	GPIO_setPadConfig(25, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_26_EQEP2I);
	GPIO_setPadConfig(26, GPIO_PIN_TYPE_PULLUP);
	GPIO_setPinConfig(GPIO_27_GPIO27);
	GPIO_setPadConfig(27, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_31_GPIO31);
	GPIO_setPadConfig(31, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_34_GPIO34);
	GPIO_setPadConfig(34, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_40_SDAB);
	GPIO_setPadConfig(40, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_41_SCLB);
	GPIO_setPadConfig(41, GPIO_PIN_TYPE_STD);
	// Migrated from source_cpu2/sfra_gui_scicomms_driverlib_cpu2.c (SFRA SCI pin mux)
	GPIO_setPinConfig(GPIO_42_SCITXDA);
	GPIO_setPadConfig(42, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_43_SCIRXDA);
	GPIO_setPadConfig(43, GPIO_PIN_TYPE_STD);
	// Migrated from source_cpu2/motorboard_cpu2.c PinMux_init() (SCIB pin mux/pad)
	GPIO_setPinConfig(GPIO_54_SCITXDB);
	GPIO_setPadConfig(54, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setPinConfig(GPIO_55_SCIRXDB);
	GPIO_setPadConfig(55, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setPinConfig(GPIO_56_SCITXDC);
	GPIO_setPadConfig(56, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_57_GPIO57);
	GPIO_setPadConfig(57, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_58_SPISIMOA);
	GPIO_setPadConfig(58, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_59_SPISOMIA);
	GPIO_setPadConfig(59, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_60_SPICLKA);
	GPIO_setPadConfig(60, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_61_SPISTEA);
	GPIO_setPadConfig(61, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_63_SPISIMOB);
	GPIO_setPadConfig(63, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_64_SPISOMIB);
	GPIO_setPadConfig(64, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_65_SPICLKB);
	GPIO_setPadConfig(65, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_66_SPISTEB);
	GPIO_setPadConfig(66, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_94_GPIO94);
	GPIO_setPadConfig(94, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_23_EQEP1I);
	GPIO_setPadConfig(23, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_111_GPIO111);
	GPIO_setPadConfig(111, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_124_GPIO124);
	GPIO_setPadConfig(124, GPIO_PIN_TYPE_PULLUP);
	GPIO_setPinConfig(GPIO_125_GPIO125);
	GPIO_setPadConfig(125, GPIO_PIN_TYPE_STD);
	// Migrated from source_cpu2/sfra_gui_scicomms_driverlib_cpu2.c (SFRA LED pin mux)
	GPIO_setPinConfig(GPIO_139_GPIO139);
	GPIO_setPadConfig(139, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_153_GPIO153);
	GPIO_setPadConfig(153, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_154_GPIO154);
	GPIO_setPadConfig(154, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_155_GPIO155);
	GPIO_setPadConfig(155, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_156_GPIO156);
	GPIO_setPadConfig(156, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_157_EPWM7A);
	GPIO_setPadConfig(157, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_158_EPWM7B);
	GPIO_setPadConfig(158, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_159_EPWM8A);
	GPIO_setPadConfig(159, GPIO_PIN_TYPE_STD);
	GPIO_setPinConfig(GPIO_160_EPWM8B);
	GPIO_setPadConfig(160, GPIO_PIN_TYPE_STD);
}

static void transferPeripheralsToCPU2(void)
{
	const uint16_t cpu2Pins[] = {
		0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U,
		10U, 11U, 12U, 14U, 15U, 16U, 17U, 18U, 19U, 20U,
		21U, 23U, 24U, 25U, 26U, 27U, 31U, 34U, 40U, 41U,
		42U, 43U, 54U, 55U, 56U, 57U, 58U, 59U, 60U, 61U,
		63U, 64U, 65U, 66U, 94U, 111U, 124U, 125U, 139U, 153U,
		154U, 155U, 156U, 157U, 158U, 159U, 160U
	};
	uint16_t i;

	// Route CPU-selectable peripherals to CPU2 for the CPU2 application.
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM1,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM2,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM3,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM4,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM5,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM6,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM7,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM8,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM9,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM10, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM11, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EPWM12, SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP1,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP2,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP3,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP4,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP5,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ECAP6,  SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EQEP1,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EQEP2,  SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_EQEP3,  SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SCIA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SCIB,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SCIC,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SCID,   SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SPIA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SPIB,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_SPIC,   SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_I2CA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_I2CB,   SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CANA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CANB,   SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ADCA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ADCB,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ADCC,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_ADCD,   SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS1, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS2, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS3, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS4, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS5, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS6, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS7, SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_CMPSS8, SYSCTL_CPUSEL_CPU2);

	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_DACA,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_DACB,   SYSCTL_CPUSEL_CPU2);
	SysCtl_selectCPUForPeripheralInstance(SYSCTL_CPUSEL_DACC,   SYSCTL_CPUSEL_CPU2);

	for(i = 0U; i < (uint16_t)(sizeof(cpu2Pins) / sizeof(cpu2Pins[0])); i++)
	{
		GPIO_setControllerCore(cpu2Pins[i], GPIO_CORE_CPU2);
	}
}

//
// Main
//
void main(void)
{
	Device_init();
	Device_initGPIO();

	DINT;
	Interrupt_initModule();
	Interrupt_initVectorTable();

	IPC_init(IPC_CPU1_L_CPU2_R);
	// Do not clear IPC_FLAG_ALL here; it may erase CPU2 early FLAG0 request.

	// Hand over GS6-GS10 to CPU2 for CPU2 .text and .TI.ramfunc sections.
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS6, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS7, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS8, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS9, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS10, MEMCFG_GSRAMMASTER_CPU2);

	// Hand over GS11-GS14 to CPU2 for large global data sections.
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS11, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS12, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS13, MEMCFG_GSRAMMASTER_CPU2);
	MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS14, MEMCFG_GSRAMMASTER_CPU2);

// #ifdef _FLASH
// 	Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
// #else
// 	Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_RAM);
// #endif

	configureCpu2PinMuxAndPad();

	EALLOW;
	transferPeripheralsToCPU2();
	EDIS;

	// Use official IPC synchronization on FLAG30 to avoid race with boot FLAG31.
	IPC_sync(IPC_CPU1_L_CPU2_R, IPC_FLAG30);

	EINT;
	ERTM;

	for(;;)
	{
		NOP;
	}

}

//
// End of File
//
