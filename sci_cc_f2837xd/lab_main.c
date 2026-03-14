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
uint16_t sciRxBuffer[64];    // SCI receive buffer
uint16_t sciRxIndex = 0;     // Receive buffer index
uint16_t sciRxFlag = 0;      // Receive complete flag

// SCI transmit buffer and state
uint16_t sciTxBuffer[64];    // SCI transmit buffer
uint16_t sciTxIndex = 0;     // Current transmit index
uint16_t sciTxCount = 0;     // Total bytes to transmit
uint16_t sciTxBusy = 0;      // Transmit busy flag

//
// Function Prototypes
//
__interrupt void INT_mySCIB_RX_ISR(void);
__interrupt void INT_mySCIB_TX_ISR(void);
void generateWaveforms(float *ch0, float *ch1, float *ch2, float *ch3);
void sendWaveformData(void);
void processSerialCommand(void);
void sciStartTransmit(uint16_t *data, uint16_t count);

//*****************************************************************************
// sciWriteInt16 - 将有符号16位整数通过SCI输出（避免sprintf %f）
//*****************************************************************************
static void sciWriteInt16(int16_t val)
{
    char buf[8];
    uint16_t pos = 7u;
    uint16_t neg = 0u;
    buf[pos] = '\0';
    if(val < 0) { neg = 1u; val = -val; }
    if(val == 0) { buf[--pos] = '0'; }
    else { while(val > 0) { buf[--pos] = '0' + (val % 10); val /= 10; } }
    if(neg) buf[--pos] = '-';
    SCI_writeCharArray(mySCIB_BASE, (uint16_t*)&buf[pos], 7u - pos);
}

//*****************************************************************************
// parseFloat - 简易浮点解析，替代atof，不支持科学计数法
//*****************************************************************************
static float parseFloat(const char *s)
{
    float val  = 0.0f;
    float frac = 1.0f;
    uint16_t hasDot = 0u;
    while(*s && *s != '\r' && *s != '\n')
    {
        if(*s == '.') { hasDot = 1u; }
        else if(*s >= '0' && *s <= '9')
        {
            if(hasDot) { frac *= 0.1f; val += (*s - '0') * frac; }
            else        { val  = val * 10.0f + (*s - '0'); }
        }
        s++;
    }
    return val;
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
    Interrupt_initModule();
    Interrupt_initVectorTable();

    //
    // Configure GPIO pins
    //
    Device_initGPIO();

    //
    // Initialize the SCI and Timer Modules
    //
    Board_init();

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

    //
    // Define local variables
    //
    char* msg;                // Message sent through terminal window

    //
    // Send starting message with small delays between each message
    //
    msg = "SCI Waveform Generator\r\n";
    for(j = 0; j < 22; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Small delay between messages
    for(j = 0; j < 10000; j++) {
        NOP;
    }
    
    msg = "Sending 3-phase waveforms with 120 degree phase shift\r\n";
    for(j = 0; j < 49; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Small delay between messages
    for(j = 0; j < 10000; j++) {
        NOP;
    }
    
    msg = "Commands:\r\n";
    for(j = 0; j < 12; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Small delay between messages
    for(j = 0; j < 10000; j++) {
        NOP;
    }
    
    msg = "  A<value>: Set amplitude (default: 1.0)\r\n";
    for(j = 0; j < 36; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Small delay between messages
    for(j = 0; j < 10000; j++) {
        NOP;
    }
    
    msg = "  P<value>: Set period (default: 1.0s)\r\n";
    for(j = 0; j < 34; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Small delay between messages
    for(j = 0; j < 10000; j++) {
        NOP;
    }
    
    msg = "  R<value>: Set sampling rate (default: 100Hz)\r\n";
    for(j = 0; j < 39; j++) {
        SCI_writeCharBlockingFIFO(mySCIB_BASE, msg[j]);
    }
    
    // Final delay before entering main loop
    for(j = 0; j < 50000; j++) {
        NOP;
    }
    
    // Additional delay to ensure all data is sent
    for(j = 0; j < 50000; j++) {
        NOP;
    }

    for(;;)
        {
            //
            // Check for serial commands
            //
            if(sciRxFlag)
            {
                processSerialCommand();
                sciRxFlag = 0;
            }

            //
            // Generate and send waveform data
            //
            sendWaveformData();

            //
            // Delay to achieve desired sampling rate
            //
            DEVICE_DELAY_US((uint32_t)(dt * 1000000.0));
        }
}



//*****************************************************************************
//
// ISR for SCIB RX interrupt
//
//*****************************************************************************
__interrupt void INT_mySCIB_RX_ISR(void)
{
    uint16_t status = SCI_getInterruptStatus(mySCIB_BASE);
    uint32_t rxStatus = SCI_getRxStatus(mySCIB_BASE);

    if((rxStatus & SCI_RXSTATUS_ERROR) != 0U)
    {
        SCI_clearOverflowStatus(mySCIB_BASE);
        SCI_performSoftwareReset(mySCIB_BASE);
    }
    
    if(status & SCI_INT_RXFF)
    {
        //
        // Read all available characters from the FIFO
        //
        while(SCI_getRxFIFOStatus(mySCIB_BASE) > 0)
        {
            uint16_t data = SCI_readCharNonBlocking(mySCIB_BASE);
            
            //
            // Store in buffer
            //
            if(sciRxIndex < 63)
            {
                sciRxBuffer[sciRxIndex++] = data;
                
                //
                // Check for end of command (newline or carriage return)
                //
                if(data == '\r' || data == '\n')
                {
                    sciRxFlag = 1;
                }
                else if((sciRxIndex == 1U) && (data >= '0') && (data <= '9'))
                {
                    sciRxFlag = 1;
                }
            }
            else
            {
                //
                // Buffer full, reset
                //
                sciRxIndex = 0;
                break;
            }
        }
    }
    
    //
    // Clear interrupt flag
    //
    SCI_clearInterruptStatus(mySCIB_BASE, SCI_INT_RXFF | SCI_INT_RXERR | SCI_INT_OE);
    Interrupt_clearACKGroup(INT_mySCIB_RX_INTERRUPT_ACK_GROUP);
}

//*****************************************************************************
//
// ISR for SCIB TX interrupt - Triggered when TX FIFO is empty
//
//*****************************************************************************
__interrupt void INT_mySCIB_TX_ISR(void)
{
    uint16_t status = SCI_getInterruptStatus(mySCIB_BASE);
    
    if(status & SCI_INT_TXFF)
    {
        // Continue sending remaining data
        while(sciTxIndex < sciTxCount)
        {
            // Check if TX FIFO has space
            if(SCI_getTxFIFOStatus(mySCIB_BASE) < SCI_FIFO_TX16)
            {
                SCI_writeCharNonBlocking(mySCIB_BASE, sciTxBuffer[sciTxIndex++]);
            }
            else
            {
                break;  // FIFO is full, wait for next interrupt
            }
        }
        
        // Check if all data sent
        if(sciTxIndex >= sciTxCount)
        {
            sciTxBusy = 0;
            // Disable TX FIFO interrupt until next transmission
            SCI_disableInterrupt(mySCIB_BASE, SCI_INT_TXFF);
        }
    }
    
    // Clear interrupt flag
    SCI_clearInterruptStatus(mySCIB_BASE, SCI_INT_TXFF);
    Interrupt_clearACKGroup(INT_mySCIB_TX_INTERRUPT_ACK_GROUP);
}

//*****************************************************************************
//
// sciStartTransmit - Start SCI transmission using FIFO
//
//*****************************************************************************
void sciStartTransmit(uint16_t *data, uint16_t count)
{
    if(sciTxBusy)
        return;  // Already transmitting
    
    // Copy data to transmit buffer
    uint32_t j;
    for(j = 0; j < count; j++)
    {
        if(j < 64)  // Buffer size limit
            sciTxBuffer[j] = data[j];
    }
    
    sciTxIndex = 0;
    sciTxCount = count;
    sciTxBusy = 1;
    
    // Start sending data
    while(sciTxIndex < sciTxCount)
    {
        // Check if TX FIFO is full
        if(SCI_getTxFIFOStatus(mySCIB_BASE) < SCI_FIFO_TX16)
        {
            SCI_writeCharNonBlocking(mySCIB_BASE, sciTxBuffer[sciTxIndex++]);
        }
        else
        {
            break;  // FIFO is full, wait for interrupt
        }
    }
    
    // Enable TX FIFO interrupt to continue sending
    SCI_enableInterrupt(mySCIB_BASE, SCI_INT_TXFF);
}

//*****************************************************************************
//
// generateWaveforms - Generate 3-phase waveforms with 120 degree phase shift
//
//*****************************************************************************
void generateWaveforms(float *ch0, float *ch1, float *ch2, float *ch3)
{
    float omega = 2.0f * 3.14159265f / period;

    *ch0 = amplitude * sinf(omega * t);
    *ch1 = amplitude * sinf(omega * t + 2.0f * 3.14159265f / 3.0f);  // 120 degrees
    *ch2 = amplitude * sinf(omega * t + 4.0f * 3.14159265f / 3.0f);  // 240 degrees
    *ch3 = amplitude * sinf(omega * t + 3.14159265f);                // 180 degrees

    t += dt;
    if(t >= period) { t = 0.0f; }
}

//*****************************************************************************
//
// justFloatSendFloat - JustFloat协议：将一个float拆成4字节通过SCI发送
// C28x SCI 8位模式：每个uint16_t只发低8位
//
//*****************************************************************************
static void justFloatSendFloat(float val)
{
    union { float f; uint16_t u[2]; } c;
    uint16_t b[4];
    c.f  = val;
    b[0] =  c.u[0]        & 0x00FFu;  // 字节0：低字低8位
    b[1] = (c.u[0] >> 8u) & 0x00FFu;  // 字节1：低字高8位
    b[2] =  c.u[1]        & 0x00FFu;  // 字节2：高字低8位
    b[3] = (c.u[1] >> 8u) & 0x00FFu;  // 字节3：高字高8位
    SCI_writeCharArray(mySCIB_BASE, b, 4u);
}

//*****************************************************************************
//
// sendWaveformData - JustFloat协议发送4通道波形数据
// 帧格式: [float ch0][float ch1][float ch2][float ch3][00 00 80 7F]
//
//*****************************************************************************
void sendWaveformData(void)
{
    float ch0, ch1, ch2, ch3;
    // 帧尾: IEEE 754 +Inf = 0x7F800000 (小端: 00 00 80 7F)
    uint16_t tail[4] = {0x00u, 0x00u, 0x80u, 0x7Fu};

    generateWaveforms(&ch0, &ch1, &ch2, &ch3);

    // 使用非阻塞式发送
    union { float f; uint16_t u[2]; } c;
    uint16_t waveformData[20]; // 4 channels * 4 bytes + 4 byte tail
    uint16_t pos = 0;

    // Convert ch0
    c.f = ch0;
    waveformData[pos++] = c.u[0] & 0x00FFu;
    waveformData[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    waveformData[pos++] = c.u[1] & 0x00FFu;
    waveformData[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Convert ch1
    c.f = ch1;
    waveformData[pos++] = c.u[0] & 0x00FFu;
    waveformData[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    waveformData[pos++] = c.u[1] & 0x00FFu;
    waveformData[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Convert ch2
    c.f = ch2;
    waveformData[pos++] = c.u[0] & 0x00FFu;
    waveformData[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    waveformData[pos++] = c.u[1] & 0x00FFu;
    waveformData[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Convert ch3
    c.f = ch3;
    waveformData[pos++] = c.u[0] & 0x00FFu;
    waveformData[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    waveformData[pos++] = c.u[1] & 0x00FFu;
    waveformData[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    // Add tail
    waveformData[pos++] = tail[0];
    waveformData[pos++] = tail[1];
    waveformData[pos++] = tail[2];
    waveformData[pos++] = tail[3];

    // Send all data at once
    sciStartTransmit(waveformData, pos);
}

//*****************************************************************************
//
// processSerialCommand - Process serial commands to change waveform parameters
//
//*****************************************************************************
void processSerialCommand(void)
{
    char cmdBuffer[64];
    uint16_t i;

    for(i = 0; i < sciRxIndex && i < 63u; i++)
        cmdBuffer[i] = (char)sciRxBuffer[i];
    cmdBuffer[i] = '\0';

    // Debug: check what's received
    if(cmdBuffer[0] == 'A')         // 设置幅值
    {
        float value = parseFloat(&cmdBuffer[1]);
        if(value > 0.0f)
        {
            amplitude = value;
        }
    }
    else if(cmdBuffer[0] == 'P')    // 设置周期
    {
        float value = parseFloat(&cmdBuffer[1]);
        if(value > 0.0f)
        {
            period = value;
        }
    }
    else if(cmdBuffer[0] == 'R')    // 设置采样率
    {
        float value = parseFloat(&cmdBuffer[1]);
        if(value > 0.0f)
        {
            samplingRate = value;
            dt = 1.0f / samplingRate;
        }
    }
    else if(cmdBuffer[0] >= '0' && cmdBuffer[0] <= '9')    // 直接输入数字，设置幅值
    {
        float value = parseFloat(cmdBuffer);
        if(value > 0.0f)
        {
            amplitude = value;
        }
    }

    sciRxIndex = 0;
}

//
// End of File
//