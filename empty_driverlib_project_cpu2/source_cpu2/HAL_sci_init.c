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
 *    notice, the list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the   
 *    distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include "HAL_sci_init.h"

//*****************************************************************************
//
// HAL SCI初始化
// 初始化SCI模块和相关的GPIO配置
//
//*****************************************************************************
void HAL_SCI_init(void)
{
    EALLOW;

    // 配置SCI引脚
    HAL_SCI_PinMux_init();
    
    // 初始化SCI模块
    HAL_SCI_mySCIB_init();

    EDIS;
}

//*****************************************************************************
//
// PINMUX Configurations
//
//*****************************************************************************
void HAL_SCI_PinMux_init(void)
{
    //
    // PinMux for modules assigned to CPU1
    //
    
    // SCIB -> mySCIB Pinmux
    //
    GPIO_setPinConfig(HAL_SCI_SCIRX_PIN_CONFIG);
    GPIO_setPadConfig(HAL_SCI_SCIRX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(HAL_SCI_SCIRX_GPIO, GPIO_QUAL_ASYNC);

    GPIO_setPinConfig(HAL_SCI_SCITX_PIN_CONFIG);
    GPIO_setPadConfig(HAL_SCI_SCITX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(HAL_SCI_SCITX_GPIO, GPIO_QUAL_ASYNC);
}

//*****************************************************************************
//
// SCI Configurations
//
//*****************************************************************************
void HAL_SCI_mySCIB_init(void)
{
    SCI_clearInterruptStatus(HAL_SCI_BASE, SCI_INT_RXFF | SCI_INT_TXFF | SCI_INT_FE | SCI_INT_OE | SCI_INT_PE | SCI_INT_RXERR | SCI_INT_RXRDY_BRKDT | SCI_INT_TXRDY);
    SCI_clearOverflowStatus(HAL_SCI_BASE);

    SCI_resetTxFIFO(HAL_SCI_BASE);
    SCI_resetRxFIFO(HAL_SCI_BASE);
    SCI_resetChannels(HAL_SCI_BASE);

    SCI_setConfig(HAL_SCI_BASE, DEVICE_LSPCLK_FREQ, HAL_SCI_BAUDRATE, (SCI_CONFIG_WLEN_8|SCI_CONFIG_STOP_ONE|SCI_CONFIG_PAR_NONE));
    SCI_disableLoopback(HAL_SCI_BASE);

    SCI_performSoftwareReset(HAL_SCI_BASE);

    uint32_t k;
    for(k= 0; k < 10000; k++) {
        NOP;
    }

    SCI_setFIFOInterruptLevel(HAL_SCI_BASE, SCI_FIFO_TX0, SCI_FIFO_RX1);

    SCI_enableFIFO(HAL_SCI_BASE);
    SCI_enableModule(HAL_SCI_BASE);

    for(k= 0; k < 5000; k++) {
        NOP;
    }

    // Disable SCIB RX interrupt during SCI TX debug to avoid ISR side effects.
    // SCI_enableInterrupt(HAL_SCI_BASE, SCI_INT_RXFF);

    for(k= 0; k < 5000; k++) {
        NOP;
    }
}

//*****************************************************************************
//
// SCI_sendData - Send data through SCI
//
//*****************************************************************************
void SCI_sendData(uint32_t base, uint16_t data)
{
    SCI_writeCharNonBlocking(base, data);
}

//*****************************************************************************
//
// SCI_getTxStatus - Get TX FIFO status
//
//*****************************************************************************
uint16_t SCI_getTxStatus(uint32_t base)
{
    return SCI_getTxFIFOStatus(base);
}
