//###########################################################################
//
// FILE:   spi.c
//
// TITLE:  C28x SPI驱动程序。
//
//###########################################################################
// 
// C2000Ware v6.00.01.00
//
// Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com
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
//###########################################################################

#include "spi.h"

//*****************************************************************************
//
//! SPI配置函数
//!
//! \param base 指定SPI模块基地址。
//! \param lspclkHz 是提供给SPI模块的时钟（LSPCLK）的速率，单位为Hz。
//! \param protocol 指定数据传输协议。
//! \param mode 指定操作模式。
//! \param bitRate 指定时钟速率，单位为Hz。
//! \param dataWidth 指定每帧传输的位数。
//!
//! 此函数配置串行外设接口，设置SPI协议、操作模式、位速率和数据宽度。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_setConfig(uint32_t base, uint32_t lspclkHz, SPI_TransferProtocol protocol,
              SPI_Mode mode, uint32_t bitRate, uint16_t dataWidth)
{
    uint16_t regValue;
    uint32_t baud;

    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));
    ASSERT(bitRate <= (lspclkHz / 4U));
    ASSERT((lspclkHz / bitRate) <= 128U);
    ASSERT((dataWidth >= 1U) && (dataWidth <= 16U));
    ASSERT((HWREGH(base + SPI_O_CCR) & SPI_CCR_SPISWRESET) == 0U);

    //
    // 设置极性和数据宽度。
    //
    regValue = (((uint16_t)protocol << 6U) & SPI_CCR_CLKPOLARITY) |
               (dataWidth - 1U);

    HWREGH(base + SPI_O_CCR) = (HWREGH(base + SPI_O_CCR) &
                                ~(SPI_CCR_CLKPOLARITY | SPI_CCR_SPICHAR_M)) |
                               regValue;

    //
    // 设置模式和相位。
    //
    regValue = (uint16_t)mode | (((uint16_t)protocol << 2U) &
                                 SPI_CTL_CLK_PHASE);

    HWREGH(base + SPI_O_CTL) = (HWREGH(base + SPI_O_CTL) &
                                ~(SPI_CTL_TALK | SPI_CTL_CONTROLLER_PERIPHERAL |
                                  SPI_CTL_CLK_PHASE)) | regValue;

    //
    // 设置时钟。
    //
    baud = (lspclkHz / bitRate) - 1U;
    HWREGH(base + SPI_O_BRR) = (uint16_t)baud;
}

//*****************************************************************************
//
//! SPI波特率设置函数
//!
//! \param base 指定SPI模块基地址。
//! \param lspclkHz 是提供给SPI模块的时钟（LSPCLK）的速率，单位为Hz。
//! \param bitRate 指定时钟速率，单位为Hz。
//!
//! 此函数配置SPI波特率。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_setBaudRate(uint32_t base, uint32_t lspclkHz, uint32_t bitRate)
{
    uint32_t baud;

    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));
    ASSERT(bitRate <= (lspclkHz / 4U));
    ASSERT((lspclkHz / bitRate) <= 128U);

    //
    // 设置时钟。
    //
    baud = (lspclkHz / bitRate) - 1U;
    HWREGH(base + SPI_O_BRR) = (uint16_t)baud;
}

//*****************************************************************************
//
//! SPI中断使能函数
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要启用的中断源的位掩码。
//!
//! 此函数启用指定的SPI中断源。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_enableInterrupt(uint32_t base, uint32_t intFlags)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 启用指定的非FIFO中断。
    //
    if((intFlags & SPI_INT_RX_DATA_TX_EMPTY) != 0U)
    {
        HWREGH(base + SPI_O_CTL) |= SPI_CTL_SPIINTENA;
    }

    if((intFlags & SPI_INT_RX_OVERRUN) != 0U)
    {
        HWREGH(base + SPI_O_CTL) |= SPI_CTL_OVERRUNINTENA;
    }

    //
    // 启用指定的FIFO模式中断。
    //
    if((intFlags & SPI_INT_TXFF) != 0U)
    {
        HWREGH(base + SPI_O_FFTX) |= SPI_FFTX_TXFFIENA;
    }

    if((intFlags & (SPI_INT_RXFF | SPI_INT_RXFF_OVERFLOW)) != 0U)
    {
        HWREGH(base + SPI_O_FFRX) |= SPI_FFRX_RXFFIENA;
    }
}

//*****************************************************************************
//
//! SPI中断禁用函数
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要禁用的中断源的位掩码。
//!
//! 此函数禁用指定的SPI中断源。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_disableInterrupt(uint32_t base, uint32_t intFlags)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 禁用指定的非FIFO中断。
    //
    if((intFlags & SPI_INT_RX_DATA_TX_EMPTY) != 0U)
    {
        HWREGH(base + SPI_O_CTL) &= ~(SPI_CTL_SPIINTENA);
    }

    if((intFlags & SPI_INT_RX_OVERRUN) != 0U)
    {
        HWREGH(base + SPI_O_CTL) &= ~(SPI_CTL_OVERRUNINTENA);
    }

    //
    // 禁用指定的FIFO模式中断。
    //
    if((intFlags & SPI_INT_TXFF) != 0U)
    {
        HWREGH(base + SPI_O_FFTX) &= ~(SPI_FFTX_TXFFIENA);
    }

    if((intFlags & (SPI_INT_RXFF | SPI_INT_RXFF_OVERFLOW)) != 0U)
    {
        HWREGH(base + SPI_O_FFRX) &= ~(SPI_FFRX_RXFFIENA);
    }
}

//*****************************************************************************
//
//! SPI中断状态获取函数
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数返回SPI模块的中断状态。
//!
//! \return 当前中断状态的位字段。
//
//*****************************************************************************
uint32_t
SPI_getInterruptStatus(uint32_t base)
{
    uint32_t temp = 0;

    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    if((HWREGH(base + SPI_O_STS) & SPI_STS_INT_FLAG) != 0U)
    {
        temp |= SPI_INT_RX_DATA_TX_EMPTY;
    }

    if((HWREGH(base + SPI_O_STS) & SPI_STS_OVERRUN_FLAG) != 0U)
    {
        temp |= SPI_INT_RX_OVERRUN;
    }

    if((HWREGH(base + SPI_O_FFTX) & SPI_FFTX_TXFFINT) != 0U)
    {
        temp |= SPI_INT_TXFF;
    }

    if((HWREGH(base + SPI_O_FFRX) & SPI_FFRX_RXFFINT) != 0U)
    {
        temp |= SPI_INT_RXFF;
    }

    if((HWREGH(base + SPI_O_FFRX) & SPI_FFRX_RXFFOVF) != 0U)
    {
        temp |= SPI_INT_RXFF_OVERFLOW;
    }

    return(temp);
}

//*****************************************************************************
//
//! SPI中断状态清除函数
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要清除的中断源的位掩码。
//!
//! 此函数清除指定的SPI中断源。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_clearInterruptStatus(uint32_t base, uint32_t intFlags)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 清除指定的非FIFO中断源。
    //
    if((intFlags & SPI_INT_RX_DATA_TX_EMPTY) != 0U)
    {
        HWREGH(base + SPI_O_CCR) &= ~(SPI_CCR_SPISWRESET);
        HWREGH(base + SPI_O_CCR) |= SPI_CCR_SPISWRESET;
    }

    if((intFlags & SPI_INT_RX_OVERRUN) != 0U)
    {
        HWREGH(base + SPI_O_STS) |= SPI_STS_OVERRUN_FLAG;
    }

    //
    // 清除指定的FIFO模式中断源。
    //
    if((intFlags & SPI_INT_TXFF) != 0U)
    {
        HWREGH(base + SPI_O_FFTX) |= SPI_FFTX_TXFFINTCLR;
    }

    if((intFlags & SPI_INT_RXFF) != 0U)
    {
        HWREGH(base + SPI_O_FFRX) |= SPI_FFRX_RXFFINTCLR;
    }

    if((intFlags & SPI_INT_RXFF_OVERFLOW) != 0U)
    {
        HWREGH(base + SPI_O_FFRX) |= SPI_FFRX_RXFFOVFCLR;
    }
}
//*****************************************************************************
//
//! SPI非FIFO模式轮询事务函数
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的字符长度。
//! \param data 指定要传输的数据。
//!
//! 此函数用于启动指定字符长度的SPI事务（非FIFO模式）。
//!
//! \return 接收到的数据。
//
//*****************************************************************************
uint16_t
SPI_pollingNonFIFOTransaction(uint32_t base, uint16_t charLength, uint16_t data)
{
    uint16_t rxData;

    ASSERT(((HWREGH(base + SPI_O_CCR) & SPI_CCR_SPICHAR_M) + 1U) == charLength);
    ASSERT(data < ((uint32_t)1U << charLength));

    //
    // 写入SPI发送缓冲区
    //
    SPI_writeDataBlockingNonFIFO(base, data << (16U - charLength));

    //
    // 读取SPI接收缓冲区
    //
    rxData = SPI_readDataBlockingNonFIFO(base);

    return(rxData);
}
//*****************************************************************************
//
//! SPIFIFO模式轮询事务函数
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的字符长度。
//! \param pTxBuffer 指定发送缓冲区的指针。
//! \param pRxBuffer 指定接收缓冲区的指针。
//! \param numOfWords 指定要传输/接收的数据数量。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于启动指定字符长度和'N'个字事务的SPI事务（FIFO模式）。
//!
//! \return 无。
//
//*****************************************************************************

void
SPI_pollingFIFOTransaction(uint32_t base, uint16_t charLength,
                           uint16_t *pTxBuffer, uint16_t *pRxBuffer,
                           uint16_t numOfWords, uint16_t txDelay)
{
    ASSERT(((HWREGH(base + SPI_O_CCR) & SPI_CCR_SPICHAR_M) + 1U) == charLength);

    //
    // 将TX / RX FIFO缓冲区重置为默认状态
    //
    SPI_disableFIFO(base); // 禁用FIFO寄存器
    SPI_enableFIFO(base);  // 启用FIFO寄存器

    //
    // 配置FIFO发送延迟
    //
    SPI_setTxFifoTransmitDelay(base, txDelay);

    //
    // 根据要传输/接收的字数确定16级字的数量
    //
    uint16_t numOfSixteenWords = numOfWords / (uint16_t)SPI_FIFO_TXFULL;

    //
    // 根据要传输/接收的字数确定剩余字数
    //
    uint16_t remainingWords = numOfWords % (uint16_t)SPI_FIFO_TXFULL;

    uint16_t count = 0;
    uint16_t i = 0;
    uint16_t txBuffer_pos = 0;
    uint16_t rxBuffer_pos = 0;

    //
    // 事务数量基于numOfSixteenWords
    // 每个事务将传输和接敶16个字。
    //
    while(count < numOfSixteenWords)
    {
        //
        // 填充SPI发送FIFO缓冲区
        //
        for(i = 1; i <= (uint16_t)SPI_FIFO_TXFULL; i++)
        {
            SPI_writeDataBlockingFIFO(base, pTxBuffer[txBuffer_pos] <<
                                            (16U - charLength));
            txBuffer_pos++;
        }

        //
        // 等待直到SPI接收FIFO缓冲区满
        //
        while(SPI_getRxFIFOStatus(base) < SPI_FIFO_RXFULL)
        {
        }

        //
        // 读取SPI接收FIFO缓冲区
        //
        for(i = 1U; i <= (uint16_t)SPI_FIFO_RXFULL; i++)
        {
            if(pRxBuffer == NULL)
            {
                SPI_readDataBlockingFIFO(base);
            }
            else
            {
                pRxBuffer[rxBuffer_pos] = SPI_readDataBlockingFIFO(base);
                rxBuffer_pos++;
            }
        }

        count++;
    }

    //
    // 事务数量基于remainingWords
    //
    for(i = 0U; i < remainingWords; i++)
    {
        SPI_writeDataBlockingFIFO(base, pTxBuffer[txBuffer_pos] <<
                                        (16U - charLength));
        txBuffer_pos++;
    }

    //
    // 等待直到SPI接收FIFO缓冲区剩余字
    //
    while((uint16_t)SPI_getRxFIFOStatus(base) < remainingWords)
    {
    }

    //
    // 读取SPI接收FIFO缓冲区
    //
    for(i = 0; i < remainingWords; i++)
    {
        if(pRxBuffer == NULL)
        {
            SPI_readDataBlockingFIFO(base);
        }
        else
        {
            pRxBuffer[rxBuffer_pos] = SPI_readDataBlockingFIFO(base);
            rxBuffer_pos++;
        }
    }

    //
    // 禁用SPI FIFO
    //
    SPI_disableFIFO(base);
}

//*****************************************************************************
//
//! SPI发送24位数据函数
//!
//! \param base 指定SPI模块基地址。
//! \param data 要通过SPI传输的24位数据。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于发送24位字的数据，24位数据被分为三个字节。
//!
//! \return 无。
//
//*****************************************************************************
void
SPI_transmit24Bits(uint32_t base, uint32_t data, uint16_t txDelay)
{
    uint16_t i;
    uint16_t rxBuffer[3];
    uint16_t txBuffer[3];

    ASSERT(data < ((uint32_t)1U << 24U));

    //
    // 清空接收缓冲区
    //
    for(i = 0U; i < 3U; i++)
    {
        rxBuffer[i] = 0U;
    }

    //
    // 用适当的数据填充发送缓冲区
    //
    txBuffer[0] = (uint16_t)(data >> 16U);   // data[23:16]
    txBuffer[1] = (uint16_t)(data) >> 8U;    // data[15:8]
    txBuffer[2] = (uint16_t)(data) & 0x00FFU; // data[7:0]

    //
    // 三个8位构成24位
    // 字符长度 = 8
    // 字节数 = 3
    //
    SPI_pollingFIFOTransaction(base, 8U, txBuffer, rxBuffer, 3U, txDelay);
}
//*****************************************************************************
//
//! SPI接敶16位数据函数
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序。
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于接敶16位字的数据。
//!
//! \return 接收到的16位数据。
//
//*****************************************************************************

uint16_t
SPI_receive16Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                  uint16_t txDelay)
{
    uint16_t i;
    uint16_t txBuffer[2];
    uint16_t rxBuffer[2];
    uint16_t rxData = 0U;

    ASSERT(dummyData <= 0xFFU);

    //
    // 清空发送缓冲区
    //
    for(i = 0U; i < 2U; i++)
    {
        txBuffer[i] = dummyData;
        rxBuffer[i] = 0U;
    }

    //
    // 发送虚拟字以从外设接收数据
    //
    SPI_pollingFIFOTransaction(base, 8U, txBuffer, rxBuffer, 2U, txDelay);

    if(endianness == SPI_DATA_LITTLE_ENDIAN)
    {
        //
        // 小端序
        //
        rxData = (rxBuffer[1] << 8) | rxBuffer[0];
    }
    else
    {
        //
        // 大端序
        //
        rxData = (rxBuffer[0] << 8) | rxBuffer[1];
    }

    return(rxData);
}
//*****************************************************************************
//
//! SPI接敶24位数据函数
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序。
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于接敶24位字的数据。
//!
//! \return 接收到的24位数据。
//
//*****************************************************************************

uint32_t
SPI_receive24Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                           uint16_t txDelay)
{
    uint16_t i;
    uint16_t txBuffer[3];
    uint16_t rxBuffer[3];
    uint32_t rxData = 0;

    ASSERT(dummyData <= 0xFFU);

    //
    // 清空发送缓冲区
    //
    for(i = 0U; i < 3U; i++)
    {
        txBuffer[i] = dummyData;
        rxBuffer[i] = 0U;
    }

    //
    // 发送虚拟字以从外设接收数据
    // 两个8位构成16位
    // 字符长度 = 8
    // 字节数 = 2
    //
    SPI_pollingFIFOTransaction(base, 8U, txBuffer, rxBuffer, 3U, txDelay);

    if(endianness == SPI_DATA_LITTLE_ENDIAN)
    {
        //
        // 小端序
        //
        rxData = ((uint32_t)rxBuffer[2] << 16) |
                 ((uint32_t)rxBuffer[1] << 8)  |
                 (uint32_t)rxBuffer[0];
    }
    else
    {
        //
        // 大端序
        //
        rxData = ((uint32_t)rxBuffer[0] << 16) |
                 ((uint32_t)rxBuffer[1] << 8)  |
                 (uint32_t)rxBuffer[2];
    }

    return(rxData);
}
//*****************************************************************************
//
//! SPI发送32位数据函数
//!
//! \param base 指定SPI模块基地址。
//! \param data 要通过SPI传输的32位数据。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于发送32位字的数据，32位数据被分为两个16位字。
//!
//! \return 无。
//
//*****************************************************************************

void
SPI_transmit32Bits(uint32_t base, uint32_t data, uint16_t txDelay)
{
    uint16_t i;
    uint16_t txBuffer[2];
    uint16_t rxBuffer[2];

    //
    // 清空接收缓冲区
    //
    for(i = 0U; i < 2U; i++)
    {
        rxBuffer[i] = 0U;
    }

    //
    // 用适当的数据填充发送缓冲区
    //
    txBuffer[0] = (uint16_t)(data >> 16U);  // data[31:16]
    txBuffer[1] = (uint16_t)(data);         // data[15:0]

    //
    // 两个16位构成32位
    // 字符长度 = 16
    // 字节数 = 2
    //
    SPI_pollingFIFOTransaction(base, 16U, txBuffer, rxBuffer, 2U, txDelay);
}
//*****************************************************************************
//
//! SPI接敶32位数据函数
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序。
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据。
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数。
//!
//! 此函数用于接敶32位字的数据。
//!
//! \return 接收到的32位数据。
//
//*****************************************************************************

uint32_t
SPI_receive32Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                  uint16_t txDelay)
{
    uint16_t i;
    uint16_t txBuffer[4];
    uint16_t rxBuffer[4];
    uint32_t rxData = 0U;

    ASSERT(dummyData <= 0xFFU);

    //
    // 清空发送缓冲区
    //
    for(i = 0U; i < 4U; i++)
    {
        txBuffer[i] = dummyData;
        rxBuffer[i] = 0U;
    }

    //
    // 发送虚拟字以从外设接收数据
    // 四个8位构成32位
    // 字符长度 = 8
    // 字节数 = 4
    //
    SPI_pollingFIFOTransaction(base, 8U, txBuffer, rxBuffer, 4U, txDelay);

    if(endianness == SPI_DATA_LITTLE_ENDIAN)
    {
        //
        // 小端序
        //
        rxData = ((uint32_t)rxBuffer[3] << 24U) |
                 ((uint32_t)rxBuffer[2] << 16U) |
                 ((uint32_t)rxBuffer[1] << 8U)  |
                 (uint32_t)rxBuffer[0];
    }
    else
    {
        //
        // 大端序
        //
        rxData = ((uint32_t)rxBuffer[0] << 24U) |
                 ((uint32_t)rxBuffer[1] << 16U) |
                 ((uint32_t)rxBuffer[2] << 8U)  |
                 (uint32_t)rxBuffer[3];
    }

    return(rxData);
}
