//#############################################################################
//
// FILE:    dual_axis_servo_ctrl_main_cpu1.c
//
// TITLE:   Main file for dual-axis servo control on CPU1
//
// Group:   C2000
//
// Target Family: F2837x
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
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
// includes
//
#include "dual_axis_servo_ctrl_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"

#include "device.h"
#include "driverlib.h"
#include "ipc.h"

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
    // Disable pin locks and enable internal pullups
    //
    Device_initGPIO();

    //
    // Initialize PIE and clear PIE registers
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell ISRs
    //
    Interrupt_initVectorTable();

    //
    // Synchronize with CPU2
    //
#ifdef _DUAL_HEADERS
    //
    // Send IPC flag to notify CPU2 that CPU1 is ready
    //
    IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);

    //
    // Wait for CPU2 to be ready
    //
    while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1))
    {
    }
    IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1);
#endif

    //
    // Boot CPU2 core
    //
#ifdef _STANDALONE
#ifdef _FLASH
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
#else
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_RAM);
#endif
#endif

    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;

    //
    // Main loop - CPU1 handles high-level control tasks
    //
    for(;;)
    {
        //
        // Background tasks will be added here
        // CPU1 handles:
        // - Speed loop control
        // - Position loop control
        // - Communication with host
        // - User interface
        // - Data logging
        //
    }
}

//
// End of File
//

