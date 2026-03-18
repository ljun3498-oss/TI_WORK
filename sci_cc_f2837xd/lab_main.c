//############################################################################
//
// FILE: lab_main.c
//
// TITLE: SCI Academy Lab
//
// C2K ACADEMY URL: https://dev.ti.com/tirex/local?id=source_c2000_academy_labs_communications_lab_c2000_lab_sci&packageId=C2000-ACADEMY
//
//! \addtogroup academy_lab_list
//! <h1> SCI Academy Lab - Sysconfig </h1>
//!
//! The objective of this lab is to become familiar with the on-board SCI
//! (Serial Communication Interface) by sending and receiving data between a
//! C2000 device and a computer. We will use the computer to change the
//! frequency of the blinking LED and then the board will echo this value back
//! to the computer. This will allow us to demonstrate both means of
//! communication. Additionally, Code Composer Studio's terminal feature will
//! be explored and will be used to interact with the device.
//!
//! \b External \b Connections \n
//!  - None.
//!
//! \b Watch \b Variables \n
//!  - None.
//!
//############################################################################
// $Copyright:
// Copyright (C) 2022 Texas Instruments Incorporated - http://www.ti.com
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
//############################################################################

//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include <math.h>

//
// Globals
//

// Waveform parameters
float t = 0.0;              // Time variable
float amplitude = 9.0;      // Waveform amplitude
float period = 1.0;         // Waveform period (seconds)
float samplingRate = 100.0;  // Sampling rate (Hz)
float dt;                   // Time step

// Serial communication
// Double buffer for SCI transmission
uint16_t sciTxBuffer[64];    // SCI transmit buffer (for sending)
uint16_t sciPrepBuffer[64]; // Preparation buffer (for preparing next frame)
uint16_t sciTxIndex = 0;    // Current transmit index
uint16_t sciTxCount = 0;    // Total bytes to transmit
uint16_t sciPrepCount = 0;  // Prepared data count
uint16_t sciTxBusy = 0;     // Transmit busy flag
uint16_t sciDataReady = 0;  // Data prepared flag (for double buffering)






//*****************************************************************************
//
// generateWaveforms - Generate 3-phase waveforms with 120 degree phase shift
//
//*****************************************************************************
void generateWaveforms(float *ch0, float *ch1, float *ch2)
{
    float omega = 2.0f * 3.14159265f / period;

    *ch0 = amplitude * sinf(omega * t);
    *ch1 = amplitude * sinf(omega * t + 2.0f * 3.14159265f / 3.0f);  // 120 degrees
    *ch2 = amplitude * sinf(omega * t + 4.0f * 3.14159265f / 3.0f);  // 240 degrees

    t += dt;
    if(t >= period) { t = 0.0f; }
}

//*****************************************************************************
//
// sendWaveformData - JustFloat协议发送3通道波形数据
// 帧格式: [float ch0][float ch1][float ch2][00 00 80 7F]
// 使用双缓冲区：当 SCI 忙时在 prepBuffer 中准备数据
//
//*****************************************************************************
void sendWaveformData(void)
{
    float ch0, ch1, ch2;
    // 帧尾: IEEE 754 +Inf = 0x7F800000 (小端: 00 00 80 7F)
    uint16_t tail[4] = {0x00u, 0x00u, 0x80u, 0x7Fu};

    generateWaveforms(&ch0, &ch1, &ch2);

    // Prepare data in prep buffer (double buffering)
    union { float f; uint16_t u[2]; } c;
    uint16_t pos = 0;

    // Convert ch0
    c.f = ch0;
    sciPrepBuffer[pos++] = c.u[0] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    sciPrepBuffer[pos++] = c.u[1] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Convert ch1
    c.f = ch1;
    sciPrepBuffer[pos++] = c.u[0] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    sciPrepBuffer[pos++] = c.u[1] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Convert ch2
    c.f = ch2;
    sciPrepBuffer[pos++] = c.u[0] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    sciPrepBuffer[pos++] = c.u[1] & 0x00FFu;
    sciPrepBuffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Add tail
    sciPrepBuffer[pos++] = tail[0];
    sciPrepBuffer[pos++] = tail[1];
    sciPrepBuffer[pos++] = tail[2];
    sciPrepBuffer[pos++] = tail[3];

    // Mark data as ready
    sciPrepCount = pos;
    sciDataReady = 1;
}

//
// Main
//
void main(void)
{
    //
    // CPU Initialization
    //
    Device_init();
    // Interrupt_initModule();
    // Interrupt_initVectorTable();

    //
    // Configure GPIO pins
    //
    Device_initGPIO();

    //
    // Initialize the SCI and Timer Modules
    //
    Bard_init();

    //
    // Enable global interrupts and real-time debug
    //
    EINT;
    ERTM;

    //
    // Calculate time step
    //
    dt = 1.0 / samplingRate;

    //
    // Add much longer delay to ensure SCI is fully initialized
    //
    uint32_t j;
    for(j = 0; j < 500000; j++) {
        NOP;
    }

    // Test: Send data immediately after init
    for(j = 0; j < 16; j++) {
        uint16_t testData[16] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
                                  0x99, 0xAA, 0xBB, 0xCC, 0x00, 0x00, 0x80, 0x7F};
        SCI_writeCharNonBlocking(mySCIB_BASE, testData[j]);
    }

    for(;;)
        {
            //
            // When SCI is not busy, either prepare data or send data
            //
        //     if(!sciTxBusy)
        //     {
        //         //
        //         // If no data prepared, prepare waveform data
        //         //
        //         if(!sciDataReady)
        //         {
        //             sendWaveformData();
        //         }
        //         //
        //         // If data is ready, check if TX is idle and start transmission
        //         //
        //         else if(!SCI_isTransmitterBusy(mySCIB_BASE))
        //         {
        //             //
        //             // Copy prepared data to txBuffer and start transmission
        //             //
        //             uint16_t i;
        //             for(i = 0; i < sciPrepCount; i++)
        //             {
        //                 sciTxBuffer[i] = sciPrepBuffer[i];
        //             }
        //             sciTxIndex = 0;
        //             sciTxCount = sciPrepCount;
        //             sciTxBusy = 1;
        //             sciDataReady = 0;
        //         }
        //     }

        //     //
        //     // Poll for transmission - write data when TX shift register is empty
        //     //
        //     if(sciTxBusy)
        //     {
        //         //
        //         // Check if TX shift register is empty
        //         //
        //         if(!SCI_isTransmitterBusy(mySCIB_BASE))
        //         {
        //             //
        //             // TX is empty, write up to 16 bytes (FIFO depth)
        //             //
        //             while(sciTxIndex < sciTxCount && SCI_getTxFIFOStatus(mySCIB_BASE) < SCI_FIFO_TX16)
        //             {
        //                 SCI_writeCharNonBlocking(mySCIB_BASE, sciTxBuffer[sciTxIndex++]);
        //             }

        //             //
        //             // Check if all data sent
        //             //
        //             if(sciTxIndex >= sciTxCount)
        //             {
        //                 sciTxBusy = 0;
        //             }
        //         }
        //     }
        }
}

//
// End of File
//
