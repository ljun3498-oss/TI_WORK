//###########################################################################
//
// FILE:   ipc_ex2_sysconfig_cpu1.c
//
// TITLE: IPC Waveform Transmitter for F2837xD CPU1.
//
//! This CPU1 reads 3-phase waveform data from shared memory (written by CPU2)
//! and sends it to the upper computer via SCI using JustFloat protocol.
//! 帧格式: [float ch0][float ch1][float ch2][00 00 80 7F]
//!
//! \b Watch \b Pins
//!   - GPIO31 - LED output on CPU1 (heartbeat)
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
#include <stdint.h>


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
    // Initialize GPIO and configure the GPIO pin as a push-pull output
    //
    Device_initGPIO();

    //
    // Initialize settings from SysConfig
    //
    Board_init();

    //
    // Clear all interrupts and initialize PIE vector table:
    // Disable CPU interrupts
    //
    DINT;

    //
    // Initialize PIE and clear PIE registers. Disables CPU interrupts
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
    // Sync the CPUs
    //
    // IPC_sync(IPC_CPU1_L_CPU2_R, IPC_FLAG31);

    //
    // Configure GPIO0 as output
    //
    GPIO_setPadConfig(0, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(0, GPIO_QUAL_SYNC);
    GPIO_setDirectionMode(0, GPIO_DIR_MODE_OUT);

    //
    // 手动拉低GPIO2，排查硬件浮空问题
    //
    GPIO_setPadConfig(2, GPIO_PIN_TYPE_STD);
    GPIO_setDirectionMode(2, GPIO_DIR_MODE_OUT);
    GPIO_writePin(2, 0);

    //
    // 把 GPIO1 的控制权交给 CPU2（只有 CPU1 能做这个操作）
    //
    GPIO_setPadConfig(1, GPIO_PIN_TYPE_STD);
    GPIO_setDirectionMode(1, GPIO_DIR_MODE_OUT);
    GPIO_setControllerCore(1, GPIO_CORE_CPU2);

    // SCI and shared-memory waveform transmit setup
    // CPU2->CPU1 shared RAM base (from linker): 0x03F800
    volatile uint32_t *shBase = (volatile uint32_t *)0x03F800U;

    // SCI init (basic) - use SCIB (matching dual project)
    // Configure SCIB pins (if pinmux available)
    GPIO_setPinConfig(GPIO_54_SCITXDB);
    GPIO_setPinConfig(GPIO_55_SCIRXDB);

    // Clear and init SCIB
    SCI_clearInterruptStatus(SCIB_BASE, SCI_INT_RXFF | SCI_INT_TXFF | SCI_INT_FE |
                             SCI_INT_OE | SCI_INT_PE | SCI_INT_RXERR |
                             SCI_INT_RXRDY_BRKDT | SCI_INT_TXRDY);
    SCI_clearOverflowStatus(SCIB_BASE);
    SCI_resetTxFIFO(SCIB_BASE);
    SCI_resetRxFIFO(SCIB_BASE);
    SCI_resetChannels(SCIB_BASE);
    SCI_setConfig(SCIB_BASE, DEVICE_LSPCLK_FREQ, 9600,
                  (SCI_CONFIG_WLEN_8|SCI_CONFIG_STOP_ONE|SCI_CONFIG_PAR_NONE));
    SCI_disableLoopback(SCIB_BASE);
    SCI_performSoftwareReset(SCIB_BASE);
    SCI_setFIFOInterruptLevel(SCIB_BASE, SCI_FIFO_TX0, SCI_FIFO_RX0);
    SCI_enableFIFO(SCIB_BASE);
    SCI_enableModule(SCIB_BASE);

    // frame buffer
    uint16_t txBuf[16];

    while(1)
    {
        // Read 3 floats from shared RAM (little-endian 32-bit per float)
        uint32_t w0 = shBase[0]; // ch0
        uint32_t w1 = shBase[1]; // ch1
        uint32_t w2 = shBase[2]; // ch2
        uint32_t tail = shBase[3];

        // Send 12 bytes (3 floats) + 4 tail bytes = 16 bytes
        txBuf[0] = (uint16_t)(w0 & 0x00FFu);
        txBuf[1] = (uint16_t)((w0 >> 8) & 0x00FFu);
        txBuf[2] = (uint16_t)((w0 >> 16) & 0x00FFu);
        txBuf[3] = (uint16_t)((w0 >> 24) & 0x00FFu);

        txBuf[4] = (uint16_t)(w1 & 0x00FFu);
        txBuf[5] = (uint16_t)((w1 >> 8) & 0x00FFu);
        txBuf[6] = (uint16_t)((w1 >> 16) & 0x00FFu);
        txBuf[7] = (uint16_t)((w1 >> 24) & 0x00FFu);

        txBuf[8] = (uint16_t)(w2 & 0x00FFu);
        txBuf[9] = (uint16_t)((w2 >> 8) & 0x00FFu);
        txBuf[10] = (uint16_t)((w2 >> 16) & 0x00FFu);
        txBuf[11] = (uint16_t)((w2 >> 24) & 0x00FFu);

        txBuf[12] = (uint16_t)(tail & 0x00FFu);
        txBuf[13] = (uint16_t)((tail >> 8) & 0x00FFu);
        txBuf[14] = (uint16_t)((tail >> 16) & 0x00FFu);
        txBuf[15] = (uint16_t)((tail >> 24) & 0x00FFu);

        // Write bytes non-blocking when transmitter not busy
        uint16_t i;
        for(i = 0; i < 16; i++)
        {
            while(SCI_isTransmitterBusy(SCIB_BASE));
            SCI_writeCharNonBlocking(SCIB_BASE, txBuf[i]);
        }

        // Heartbeat LED
        GPIO_togglePin(0);

        // Delay to match sampling (10ms)
        DEVICE_DELAY_US(10000);
    }
}

//
// End of file
//
