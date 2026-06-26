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
 *    notice, this list of conditions and the following disclaimer in
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
 * CONTRIBUTORS BE LIABLE FOR THE DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#ifndef HAL_SCI_INIT_H
#define HAL_SCI_INIT_H

//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
#ifdef __cplusplus
extern "C"
{
#endif

//
// Included Files
//

#include "driverlib.h"
#include "device.h"

//*****************************************************************************
//
// PinMux Configurations
//
//*****************************************************************************
//
// SCIB -> mySCIB Pinmux
//
// SCIRXDB - GPIO Settings
//
#define GPIO_PIN_SCIRXDB 55
#define HAL_SCI_SCIRX_GPIO 55
#define HAL_SCI_SCIRX_PIN_CONFIG GPIO_55_SCIRXDB
//
// SCITXDB - GPIO Settings
//
#define GPIO_PIN_SCITXDB 54
#define HAL_SCI_SCITX_GPIO 54
#define HAL_SCI_SCITX_PIN_CONFIG GPIO_54_SCITXDB

//*****************************************************************************
//
// SCI Configurations
//
//*****************************************************************************
#define HAL_SCI_BASE SCIB_BASE
#define HAL_SCI_BAUDRATE 115200
#define HAL_SCI_CONFIG_WLEN SCI_CONFIG_WLEN_8
#define HAL_SCI_CONFIG_STOP SCI_CONFIG_STOP_ONE
#define HAL_SCI_CONFIG_PAR SCI_CONFIG_PAR_NONE
#define HAL_SCI_FIFO_TX_LVL SCI_FIFO_TX0
#define HAL_SCI_FIFO_RX_LVL SCI_FIFO_RX1

#define SCI_TX_EMPTY SCI_FIFO_TX0

void HAL_SCI_init(void);
void HAL_SCI_PinMux_init(void);
void HAL_SCI_mySCIB_init(void);

void SCI_sendData(uint32_t base, uint16_t data);
uint16_t SCI_getTxStatus(uint32_t base);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif  // end of HAL_SCI_INIT_H definition
