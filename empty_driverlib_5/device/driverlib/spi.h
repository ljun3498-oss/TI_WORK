//###########################################################################
//
// FILE:   spi.h
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

#ifndef SPI_H
#define SPI_H

//*****************************************************************************
//
// 如果使用C++编译器构建，请使此头文件中的所有定义具有C绑定。
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
//! \addtogroup spi_api SPI
//! \brief 此模块用于SPI配置。
//! @{
//
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "inc/hw_spi.h"
#include "debug.h"
#include "hw_reg_inclusive_terminology.h"

#ifndef DOXYGEN_PDF_IGNORE
//*****************************************************************************
//
// 可传递给SPI_enableInterrupt()、SPI_disableInterrupt()和SPI_clearInterruptStatus()
// 作为intFlags参数的值，以及由SPI_getInterruptStatus()返回的值。
//
//*****************************************************************************
#define SPI_INT_RX_OVERRUN        0x0001U //!< 接收溢出中断
#define SPI_INT_RX_DATA_TX_EMPTY  0x0002U //!< 数据接收，发送空
#define SPI_INT_RXFF              0x0004U //!< RX FIFO级别中断
#define SPI_INT_TXFF              0x0008U //!< TX FIFO级别中断
#define SPI_INT_RXFF_OVERFLOW     0x0010U //!< RX FIFO溢出
#endif


//*****************************************************************************
//
//! 此宏定义用于发送一个字节的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txData 要通过SPI传输的数据
//!
//! 此宏定义用于发送一个字节的数据。
//! 此宏使用SPI_pollingNonFIFOTransaction函数
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_transmitByte(base, txData)                                         \
                                SPI_pollingNonFIFOTransaction(base, 8U,  txData)

//*****************************************************************************
//
//! 此宏定义用于发送一个16位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txData 要通过SPI传输的数据
//!
//! 此宏定义用于发送一个16位字的数据。
//! 此宏使用SPI_pollingNonFIFOTransaction函数
//! 在调用此函数之前，SPI字符长度必须配置为16位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_transmit16Bits(base, txData)                                       \
                                SPI_pollingNonFIFOTransaction(base, 16U, txData)

//*****************************************************************************
//
//! 此宏定义可用于发送'N'个字节的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txBuffer 要通过SPI传输的发送缓冲区
//! \param numOfWords 要传输的字节数
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此宏定义可用于发送'N'个字节的数据。
//! 此宏定义使用SPI_pollingFIFOTransaction函数。
//!
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_transmitNBytes(base, txBuffer, numOfWords, txDelay)                \
      SPI_pollingFIFOTransaction(base, 8U,  txBuffer, NULL, numOfWords, txDelay)

//*****************************************************************************
//
//! 此宏定义可用于发送'N'个16位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txBuffer 要通过SPI传输的发送缓冲区
//! \param numOfWords 要传输的16位字的数量
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数可用于发送'N'个16位字的数据。
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为16位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_transmitN16BitWord(base, txBuffer, numOfWords, txDelay)            \
      SPI_pollingFIFOTransaction(base, 16U, txBuffer, NULL, numOfWords, txDelay)

//*****************************************************************************
//
//! 此宏定义可用于使用先前配置的SPI字符长度发送'N'个数据
//!
//! \param base 指定SPI模块基地址
//! \param charLength 指定SPI字符长度
//! \param txBuffer 要通过SPI传输的发送缓冲区
//! \param numOfWords 要传输的16位字的数量
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此宏定义可用于发送具有可配置SPI字符长度的'N'个数据。
//!
//! 此宏使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为所需值，并作为charLength参数传递。
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_transmitNWordsWithCharLength(base, charLength, txBuffer,           \
                                         numOfWords, txDelay)                  \
              SPI_pollingFIFOTransaction(base, charLength, txBuffer, NULL,     \
                                         numOfWords, txDelay)

//*****************************************************************************
//
//! 此宏定义用于接收一个字节的数据
//!
//! \param base 指定SPI模块基地址。
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据
//!
//! 此宏定义用于接收一个字节的数据。
//! 此宏使用SPI_pollingNonFIFOTransaction函数
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 接收到的字节。
//
//*****************************************************************************
#define SPI_receiveByte(base, dummyData)                                       \
                            SPI_pollingNonFIFOTransaction(base, 8U, dummyData)

//*****************************************************************************
//
//! 此宏用于接收'N'个字节的数据
//!
//! \param base 指定SPI模块基地址。
//! \param rxBuffer 指定将存储接收到的字节的接收缓冲区
//! \param numOfWords 指定要接收的字节数
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收'N'个字节的数据
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_receiveNBytes(base, rxBuffer, numOfWords, txDelay)                 \
      SPI_pollingFIFOTransaction(base, 8U,  NULL, rxBuffer, numOfWords, txDelay)

//*****************************************************************************
//
//! 此宏用于接收'N'个16位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param rxBuffer 指定将存储接收到的字节的接收缓冲区
//! \param numOfWords 指定要接收的16位字的数量
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收'N'个16位字的数据
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为16位
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_receiveN16BitWord(base, rxBuffer, numOfWords, txDelay)             \
      SPI_pollingFIFOTransaction(base, 16U, NULL, rxBuffer, numOfWords, txDelay)

//*****************************************************************************
//
//! 此宏用于接收具有先前配置的字符长度的'N'个数据
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的SPI字符长度
//! \param rxBuffer 指定将存储接收到的字节的接收缓冲区
//! \param numOfWords 指定具有指定字符长度的字的数量
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收具有指定字符长度的'N'个数据
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为所需值，并作为charLength参数传递。
//!
//! \return 无。
//
//*****************************************************************************
#define SPI_receiveNWordsWithcharLength(base, charLength, rxBuffer,            \
                                        numOfWords, txDelay)                   \
            SPI_pollingFIFOTransaction(base, charLength, NULL, rxBuffer,       \
                                       numOfWords, txDelay)

//*****************************************************************************
//
//! 可传递给SPI_setConfig()作为\e protocol参数的值。
//
//*****************************************************************************
typedef enum
{
    //! 模式0。极性0，相位0。上升沿无延迟。
    SPI_PROT_POL0PHA0   = 0x0000U,
    //! 模式1。极性0，相位1。上升沿有延迟。
    SPI_PROT_POL0PHA1   = 0x0002U,
    //! 模式2。极性1，相位0。下降沿无延迟。
    SPI_PROT_POL1PHA0   = 0x0001U,
    //! 模式3。极性1，相位1。下降沿有延迟。
    SPI_PROT_POL1PHA1   = 0x0003U
} SPI_TransferProtocol;

//*****************************************************************************
//
//! 可传递给SPI_setConfig()作为\e mode参数的值。
//
//*****************************************************************************
typedef enum
{
    SPI_MODE_PERIPHERAL     = 0x0002U,   //!< SPI外设
    SPI_MODE_CONTROLLER     = 0x0006U,   //!< SPI控制器
    SPI_MODE_PERIPHERAL_OD  = 0x0000U,   //!< SPI外设（输出禁用）
    SPI_MODE_CONTROLLER_OD  = 0x0004U    //!< SPI控制器（输出禁用）
} SPI_Mode;

//*****************************************************************************
//
//! 可传递给SPI_setFIFOInterruptLevel()作为\e txLevel参数的值，
//! 由SPI_getFIFOInterruptLevel()在\e txLevel参数中返回，
//! 并由SPI_getTxFIFOStatus()返回。
//
//*****************************************************************************
typedef enum
{
    SPI_FIFO_TXEMPTY    = 0x0000U,      //!< 发送FIFO为空
    SPI_FIFO_TX0        = 0x0000U,      //!< 发送FIFO为空
    SPI_FIFO_TX1        = 0x0001U,      //!< 发送FIFO 1/16满
    SPI_FIFO_TX2        = 0x0002U,      //!< 发送FIFO 2/16满
    SPI_FIFO_TX3        = 0x0003U,      //!< 发送FIFO 3/16满
    SPI_FIFO_TX4        = 0x0004U,      //!< 发送FIFO 4/16满
    SPI_FIFO_TX5        = 0x0005U,      //!< 发送FIFO 5/16满
    SPI_FIFO_TX6        = 0x0006U,      //!< 发送FIFO 6/16满
    SPI_FIFO_TX7        = 0x0007U,      //!< 发送FIFO 7/16满
    SPI_FIFO_TX8        = 0x0008U,      //!< 发送FIFO 8/16满
    SPI_FIFO_TX9        = 0x0009U,      //!< 发送FIFO 9/16满
    SPI_FIFO_TX10       = 0x000AU,      //!< 发送FIFO 10/16满
    SPI_FIFO_TX11       = 0x000BU,      //!< 发送FIFO 11/16满
    SPI_FIFO_TX12       = 0x000CU,      //!< 发送FIFO 12/16满
    SPI_FIFO_TX13       = 0x000DU,      //!< 发送FIFO 13/16满
    SPI_FIFO_TX14       = 0x000EU,      //!< 发送FIFO 14/16满
    SPI_FIFO_TX15       = 0x000FU,      //!< 发送FIFO 15/16满
    SPI_FIFO_TX16       = 0x0010U,      //!< 发送FIFO满
    SPI_FIFO_TXFULL     = 0x0010U       //!< 发送FIFO满
} SPI_TxFIFOLevel;

//*****************************************************************************
//
//! 可传递给SPI_setFIFOInterruptLevel()作为\e rxLevel参数的值，
//! 由SPI_getFIFOInterruptLevel()在\e rxLevel参数中返回，
//! 并由SPI_getRxFIFOStatus()返回。
//
//*****************************************************************************
typedef enum
{
    SPI_FIFO_RXEMPTY    = 0x0000U,      //!< 接收FIFO为空
    SPI_FIFO_RX0        = 0x0000U,      //!< 接收FIFO为空
    SPI_FIFO_RX1        = 0x0001U,      //!< 接收FIFO 1/16满
    SPI_FIFO_RX2        = 0x0002U,      //!< 接收FIFO 2/16满
    SPI_FIFO_RX3        = 0x0003U,      //!< 接收FIFO 3/16满
    SPI_FIFO_RX4        = 0x0004U,      //!< 接收FIFO 4/16满
    SPI_FIFO_RX5        = 0x0005U,      //!< 接收FIFO 5/16满
    SPI_FIFO_RX6        = 0x0006U,      //!< 接收FIFO 6/16满
    SPI_FIFO_RX7        = 0x0007U,      //!< 接收FIFO 7/16满
    SPI_FIFO_RX8        = 0x0008U,      //!< 接收FIFO 8/16满
    SPI_FIFO_RX9        = 0x0009U,      //!< 接收FIFO 9/16满
    SPI_FIFO_RX10       = 0x000AU,      //!< 接收FIFO 10/16满
    SPI_FIFO_RX11       = 0x000BU,      //!< 接收FIFO 11/16满
    SPI_FIFO_RX12       = 0x000CU,      //!< 接收FIFO 12/16满
    SPI_FIFO_RX13       = 0x000DU,      //!< 接收FIFO 13/16满
    SPI_FIFO_RX14       = 0x000EU,      //!< 接收FIFO 14/16满
    SPI_FIFO_RX15       = 0x000FU,      //!< 接收FIFO 15/16满
    SPI_FIFO_RX16       = 0x0010U,      //!< 接收FIFO满
    SPI_FIFO_RXFULL     = 0x0010U,      //!< 接收FIFO满
    SPI_FIFO_RXDEFAULT  = 0x001FU       //!< 防止复位时中断
} SPI_RxFIFOLevel;

//*****************************************************************************
//
//! 可传递给SPI_setEmulationMode()作为\e mode参数的值。
//
//*****************************************************************************
typedef enum
{
    //! 传输在位流中途停止
    SPI_EMULATION_STOP_MIDWAY         = 0x0000U,
    //! 无论如何继续SPI操作
    SPI_EMULATION_FREE_RUN            = 0x0010U,
    //! 传输将在已启动的传输完成后停止
    SPI_EMULATION_STOP_AFTER_TRANSMIT = 0x0020U
} SPI_EmulationMode;

//*****************************************************************************
//
//! 可传递给SPI_setPTESignalPolarity()作为\e polarity参数的值。
//
//*****************************************************************************
typedef enum
{
    SPI_PTE_ACTIVE_LOW  = 0x0000U,        //!< SPIPTE为低电平有效（正常）
    SPI_PTE_ACTIVE_HIGH = SPI_PRI_PTEINV  //!< SPIPTE为高电平有效（反相）
} SPI_PTEPolarity;

//*****************************************************************************
//
//! 可传递给SPI_receive16Bits()、SPI_receive24Bits()、SPI_receive32Bits()的值
//
//*****************************************************************************
typedef enum
{
    SPI_DATA_LITTLE_ENDIAN   = 0U, //!< 小端序
    SPI_DATA_BIG_ENDIAN   = 1U,    //!< 大端序
} SPI_endianess;

//*****************************************************************************
//
// API的原型。
//
//*****************************************************************************
//*****************************************************************************
//
//! \internal
//! 检查SPI基地址。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数确定SPI模块基地址是否有效。
//!
//! \return 如果基地址有效则返回\b true，否则返回\b false。
//
//*****************************************************************************
#ifdef DEBUG
static inline bool
SPI_isBaseValid(uint32_t base)
{
    return(
           (base == SPIA_BASE) ||
           (base == SPIB_BASE) ||
           (base == SPIC_BASE)
          );
}
#endif

//*****************************************************************************
//
//! 启用串行外设接口。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数启用串行外设接口的操作。在启用之前，串行外设接口必须已配置。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_enableModule(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    HWREGH(base + SPI_O_CCR) |= SPI_CCR_SPISWRESET;
}

//*****************************************************************************
//
//! 禁用串行外设接口。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数禁用串行外设接口的操作。在进行任何配置之前调用此函数。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_disableModule(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    HWREGH(base + SPI_O_CCR) &= ~(SPI_CCR_SPISWRESET);
}

//*****************************************************************************
//
//! 设置SPI事务的字符长度
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的字符长度
//!
//! 此函数配置SPI事务的字符长度。
//! SPI字符长度可以在1位字到16位字之间的任何长度
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_setcharLength(uint32_t base, uint16_t charLength)
{
    //
    // 检查参数。
    //
    ASSERT((charLength >= 1U) && (charLength <= 16U));

    bool originalStatus = ((HWREGH(base + SPI_O_CCR) & (SPI_CCR_SPISWRESET))
                                                    == SPI_CCR_SPISWRESET );

    SPI_disableModule(base);
    HWREGH(base + SPI_O_CCR) = (HWREGH(base + SPI_O_CCR) & ~SPI_CCR_SPICHAR_M) |
                               (charLength - 1U);
    //
    // 恢复原始状态
    //
    if(originalStatus){
        SPI_enableModule(base);
    }
}


//*****************************************************************************
//
//! 启用发送和接收FIFO。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数启用SPI中的发送和接收FIFO。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_enableFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 启用FIFO。
    //
    HWREGH(base + SPI_O_FFTX) |= SPI_FFTX_SPIFFENA | SPI_FFTX_TXFIFO;
    HWREGH(base + SPI_O_FFRX) |= SPI_FFRX_RXFIFORESET;
}

//*****************************************************************************
//
//! 禁用发送和接收FIFO。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数禁用SPI中的发送和接收FIFO。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_disableFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 禁用FIFO。
    //
    HWREGH(base + SPI_O_FFTX) &= ~(SPI_FFTX_SPIFFENA | SPI_FFTX_TXFIFO);
    HWREGH(base + SPI_O_FFRX) &= ~SPI_FFRX_RXFIFORESET;
}

//*****************************************************************************
//
//! 重置发送FIFO。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数重置发送FIFO，将FIFO指针设置回零。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_resetTxFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 重置TX FIFO。
    //
    HWREGH(base + SPI_O_FFTX) &= ~SPI_FFTX_TXFIFO;
    HWREGH(base + SPI_O_FFTX) |= SPI_FFTX_TXFIFO;
}

//*****************************************************************************
//
//! 重置接收FIFO。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数重置接收FIFO，将FIFO指针设置回零。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_resetRxFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 重置RX FIFO。
    //
    HWREGH(base + SPI_O_FFRX) &= ~SPI_FFRX_RXFIFORESET;
    HWREGH(base + SPI_O_FFRX) |= SPI_FFRX_RXFIFORESET;
}

//*****************************************************************************
//
//! 设置生成中断的FIFO级别。
//!
//! \param base 是SPI端口的基地址。
//! \param txLevel 是发送FIFO中断级别，指定为
//! \b SPI_FIFO_TX0、\b SPI_FIFO_TX1、\b SPI_FIFO_TX2、... 或
//! \b SPI_FIFO_TX16。
//! \param rxLevel 是接收FIFO中断级别，指定为
//! \b SPI_FIFO_RX0、\b SPI_FIFO_RX1、\b SPI_FIFO_RX2、... 或
//! \b SPI_FIFO_RX16。
//!
//! 此函数设置生成发送和接收中断的FIFO级别。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_setFIFOInterruptLevel(uint32_t base, SPI_TxFIFOLevel txLevel,
                          SPI_RxFIFOLevel rxLevel)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置FIFO中断级别。
    //
    HWREGH(base + SPI_O_FFTX) = (HWREGH(base + SPI_O_FFTX) &
                                 (~SPI_FFTX_TXFFIL_M)) | (uint16_t)txLevel;
    HWREGH(base + SPI_O_FFRX) = (HWREGH(base + SPI_O_FFRX) &
                                 (~SPI_FFRX_RXFFIL_M)) | (uint16_t)rxLevel;
}

//*****************************************************************************
//
//! 获取生成中断的FIFO级别。
//!
//! \param base 是SPI端口的基地址。
//! \param txLevel 是指向存储发送FIFO级别的指针，
//! 返回为\b SPI_FIFO_TX0、\b SPI_FIFO_TX1、
//! \b SPI_FIFO_TX2、... 或 \b SPI_FIFO_TX16之一。
//! \param rxLevel 是指向存储接收FIFO级别的指针，
//! 返回为\b SPI_FIFO_RX0、\b SPI_FIFO_RX1、
//! \b SPI_FIFO_RX2、... 或 \b SPI_FIFO_RX16之一。
//!
//! 此函数获取生成发送和接收中断的FIFO级别。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_getFIFOInterruptLevel(uint32_t base, SPI_TxFIFOLevel *txLevel,
                          SPI_RxFIFOLevel *rxLevel)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 提取发送和接收FIFO级别。
    //
    *txLevel = (SPI_TxFIFOLevel)((uint16_t)(HWREGH(base + SPI_O_FFTX) &
                                            SPI_FFTX_TXFFIL_M));
    *rxLevel = (SPI_RxFIFOLevel)((uint16_t)(HWREGH(base + SPI_O_FFRX) &
                                            SPI_FFRX_RXFFIL_M));
}

//*****************************************************************************
//
//! 获取发送FIFO状态
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数获取发送FIFO中的当前字数。
//!
//! \return 返回发送FIFO中的当前字数，指定为以下之一：
//! \b SPI_FIFO_TX0、\b SPI_FIFO_TX1、\b SPI_FIFO_TX2、\b SPI_FIFO_TX3、
//! ... 或 \b SPI_FIFO_TX16
//
//*****************************************************************************
static inline SPI_TxFIFOLevel
SPI_getTxFIFOStatus(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 获取当前FIFO状态
    //
    return((SPI_TxFIFOLevel)((uint16_t)((HWREGH(base + SPI_O_FFTX) & SPI_FFTX_TXFFST_M) >>
                                        SPI_FFTX_TXFFST_S)));
}

//*****************************************************************************
//
//! 获取接收FIFO状态
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数获取接收FIFO中的当前字数。
//!
//! \return 返回接收FIFO中的当前字数，指定为以下之一：
//! \b SPI_FIFO_RX0、\b SPI_FIFO_RX1、\b SPI_FIFO_RX2、\b SPI_FIFO_RX3、
//! ... 或 \b SPI_FIFO_RX16
//
//*****************************************************************************
static inline SPI_RxFIFOLevel
SPI_getRxFIFOStatus(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 获取当前FIFO状态
    //
    return((SPI_RxFIFOLevel)((uint16_t)((HWREGH(base + SPI_O_FFRX) & SPI_FFRX_RXFFST_M) >>
                                        SPI_FFRX_RXFFST_S)));
}

//*****************************************************************************
//
//! 确定SPI发送器是否忙碌。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数允许调用者确定所有发送的字节是否已清除发送器硬件。
//! 如果返回\b false，则发送FIFO为空，并且最后发送的字的所有位都已离开
//! 硬件移位寄存器。此函数仅在FIFO模式下操作时有效。
//!
//! \return 如果SPI正在发送则返回\b true，如果所有传输完成则返回\b false。
//
//*****************************************************************************
static inline bool
SPI_isBusy(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 确定SPI是否忙碌。
    //
    return((HWREGH(base + SPI_O_FFTX) & SPI_FFTX_TXFFST_M) != 0U);
}

//*****************************************************************************
//
//! 将数据元素放入SPI发送缓冲区。
//!
//! \param base 指定SPI模块基地址。
//! \param data 是要通过SPI传输的左对齐数据。
//!
//! 此函数将提供的数据放入指定SPI模块的发送缓冲区。
//!
//! \note 发送的数据必须在\e data中左对齐。较低的16 - N位将被丢弃，其中N是
//! 在SPI_setConfig()中选择的数据宽度。例如，如果配置为6位数据宽度，
//! 则数据的低10位将被丢弃。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_writeDataNonBlocking(uint32_t base, uint16_t data)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 将数据写入发送缓冲区。
    //
    HWREGH(base + SPI_O_TXBUF) = data;
}

//*****************************************************************************
//
//! 从SPI接收缓冲区获取数据元素。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数从指定SPI模块的接收缓冲区获取接收的数据并返回。
//!
//! \note 写入\e data的值的仅低N位包含有效数据，其中N是
//! 由SPI_setConfig()配置的数据宽度。例如，如果接口配置为8位数据宽度，
//! 则写入\e data的值的仅低8位包含有效数据。
//!
//! \return 返回从SPI接收缓冲区读取的数据字。
//
//*****************************************************************************
static inline uint16_t
SPI_readDataNonBlocking(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 检查是否有数据可读。
    //
    return(HWREGH(base + SPI_O_RXBUF));
}

//*****************************************************************************
//
//! 等待FIFO中的空间，然后将数据放入发送缓冲区。
//!
//! \param base 指定SPI模块基地址。
//! \param data 是要通过SPI传输的左对齐数据。
//!
//! 此函数一旦发送FIFO中有可用空间，就将提供的数据放入指定SPI模块的发送缓冲区。
//! 此函数仅应在启用FIFO时使用。
//!
//! \note 发送的数据必须在\e data中左对齐。较低的16 - N位将被丢弃，其中N是
//! 在SPI_setConfig()中选择的数据宽度。例如，如果配置为6位数据宽度，
//! 则数据的低10位将被丢弃。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_writeDataBlockingFIFO(uint32_t base, uint16_t data)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 等待直到接收FIFO中有可用空间。
    //
    while(SPI_getTxFIFOStatus(base) == SPI_FIFO_TXFULL)
    {
    }

    //
    // 将数据写入发送缓冲区。
    //
    HWREGH(base + SPI_O_TXBUF) = data;
}

//*****************************************************************************
//
//! 等待FIFO中的数据，然后从接收缓冲区读取。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数等待直到接收FIFO中有数据，然后从接收缓冲区读取接收的数据。
//! 此函数仅应在启用FIFO模式时使用。
//!
//! \note 写入\e data的值的仅低N位包含有效数据，其中N是
//! 由SPI_setConfig()配置的数据宽度。例如，如果接口配置为8位数据宽度，
//! 则写入\e data的值的仅低8位包含有效数据。
//!
//! \return 返回从SPI接收缓冲区读取的数据字。
//
//*****************************************************************************
static inline uint16_t
SPI_readDataBlockingFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 等待直到接收FIFO中有数据。
    //
    while(SPI_getRxFIFOStatus(base) == SPI_FIFO_RXEMPTY)
    {
    }

    //
    // 检查是否有数据可读。
    //
    return(HWREGH(base + SPI_O_RXBUF));
}

//*****************************************************************************
//
//! 等待发送缓冲区为空，然后向其中写入数据。
//!
//! \param base 指定SPI模块基地址。
//! \param data 是要通过SPI传输的左对齐数据。
//!
//! 此函数一旦发送缓冲区为空，就将提供的数据放入指定SPI模块的发送缓冲区。
//! 此函数不应在启用FIFO模式时使用。
//!
//! \note 发送的数据必须在\e data中左对齐。较低的16 - N位将被丢弃，其中N是
//! 在SPI_setConfig()中选择的数据宽度。例如，如果配置为6位数据宽度，
//! 则数据的低10位将被丢弃。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_writeDataBlockingNonFIFO(uint32_t base, uint16_t data)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 等待直到发送缓冲区不满。
    //
    while((HWREGH(base + SPI_O_STS) & SPI_STS_BUFFULL_FLAG) != 0U)
    {
    }

    //
    // 将数据写入发送缓冲区。
    //
    HWREGH(base + SPI_O_TXBUF) = data;
}

//*****************************************************************************
//
//! 等待数据被接收，然后从缓冲区读取。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数等待数据被接收，然后从指定SPI模块的接收缓冲区读取。
//! 此函数不应在启用FIFO模式时使用。
//!
//! \note 写入\e data的值的仅低N位包含有效数据，其中N是
//! 由SPI_setConfig()配置的数据宽度。例如，如果接口配置为8位数据宽度，
//! 则写入\e data的值的仅低8位包含有效数据。
//!
//! \return 返回从SPI接收缓冲区读取的数据字。
//
//*****************************************************************************
static inline uint16_t
SPI_readDataBlockingNonFIFO(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 等待直到数据被接收。
    //
    while((HWREGH(base + SPI_O_STS) & SPI_STS_INT_FLAG) == 0U)
    {
    }

    //
    // 检查是否有数据可读。
    //
    return(HWREGH(base + SPI_O_RXBUF));
}

//*****************************************************************************
//
//! 启用SPI 3线模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数启用3线模式。在控制器模式下，这允许SPIPICO成为SPICOCI，
//! 而SPIPOCI变为可用于非SPI用途。在外设模式下，SPIPOCI成为SPIPIPO引脚，
//! 而SPIPICO变为可用于非SPI用途。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_enableTriWire(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置三线位以启用3线模式。
    //
    HWREGH(base + SPI_O_PRI) |= SPI_PRI_TRIWIRE;
}

//*****************************************************************************
//
//! 禁用SPI 3线模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数禁用3线模式。SPI将以正常的4线模式运行。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_disableTriWire(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 清除三线位以禁用3线模式。
    //
    HWREGH(base + SPI_O_PRI) &= ~SPI_PRI_TRIWIRE;
}

//*****************************************************************************
//
//! 启用SPI回环模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数启用回环模式。此模式仅在控制器模式下有效，
//! 在设备测试期间很有帮助，因为它内部连接PICO和POCI。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_enableLoopback(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置启用回环模式的位。
    //
    HWREGH(base + SPI_O_CCR) |= SPI_CCR_SPILBK;
}

//*****************************************************************************
//
//! 禁用SPI回环模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数禁用回环模式。复位后默认禁用回环模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_disableLoopback(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 清除启用回环模式的位。
    //
    HWREGH(base + SPI_O_CCR) &= ~SPI_CCR_SPILBK;
}

//*****************************************************************************
//
//! 设置外设选择（SPIPTE）信号极性。
//!
//! \param base 是SPI端口的基地址。
//! \param polarity 是SPIPTE信号极性。
//!
//! 此函数设置外设选择（SPIPTE）信号的极性。
//! \e polarity参数的两种选择模式是
//! \b SPI_PTE_ACTIVE_LOW用于低电平有效极性（典型）和
//! \b SPI_PTE_ACTIVE_HIGH用于高电平有效极性（被视为反相）。
//!
//! \note 在控制器模式下，这对PTE信号没有影响。它仅适用于外设模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_setPTESignalPolarity(uint32_t base, SPI_PTEPolarity polarity)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 将SPIPTE信号的极性写入寄存器。
    //
    HWREGH(base + SPI_O_PRI) = (HWREGH(base + SPI_O_PRI) & ~SPI_PRI_PTEINV) |
                               (uint16_t)polarity;
}

//*****************************************************************************
//
//! 启用SPI高速模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数启用高速模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_enableHighSpeedMode(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置启用高速模式的位。
    //
    HWREGH(base + SPI_O_CCR) |= SPI_CCR_HS_MODE;
}

//*****************************************************************************
//
//! 禁用SPI高速模式。
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数禁用高速模式。复位后默认禁用高速模式。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_disableHighSpeedMode(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 清除启用高速模式的位。
    //
    HWREGH(base + SPI_O_CCR) &= ~SPI_CCR_HS_MODE;
}

//*****************************************************************************
//
//! 设置SPI仿真模式。
//!
//! \param base 是SPI端口的基地址。
//! \param mode 是仿真模式。
//!
//! 此函数设置发生仿真挂起时SPI操作的行为。\e mode参数可以是以下之一：
//!
//! - \b SPI_EMULATION_STOP_MIDWAY - 传输在位流中途停止。
//!   其余位将在挂起被解除断言后传输。
//! - \b SPI_EMULATION_STOP_AFTER_TRANSMIT - 如果挂起发生在
//!   第一个SPICLK脉冲之前，传输将不会开始。如果稍后发生，
//!   传输将完成。
//! - \b SPI_EMULATION_FREE_RUN - SPI操作继续，无论是否有挂起。
//!
//! \return 无。
//
//*****************************************************************************
static inline void
SPI_setEmulationMode(uint32_t base, SPI_EmulationMode mode)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 将所需的仿真模式写入寄存器。
    //
    HWREGH(base + SPI_O_PRI) = (HWREGH(base + SPI_O_PRI) &
                                ~(SPI_PRI_FREE | SPI_PRI_SOFT)) |
                               (uint16_t)mode;
}

//*****************************************************************************
//
//! 配置FIFO传输延迟
//!
//! \param base 是SPI端口的基地址。
//! \param delay 要配置的Tx FIFO延迟（以周期为单位）（0..0xFF）
//!
//! 此函数设置从FIFO发送缓冲区到发送移位寄存器的每次传输之间的延迟。
//! 延迟以SPI串行时钟周期数定义。
//!
//! \return 无
//
//*****************************************************************************
static inline void
SPI_setTxFifoTransmitDelay(uint32_t base, uint16_t delay)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));
    ASSERT(delay <= 0xFFU);

    //
    // 配置FIFO传输延迟位
    //
    HWREGH(base + SPI_O_FFCT) = delay;
}

//*****************************************************************************
//
//! 返回仿真缓冲区接收的数据
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数返回仿真缓冲区接收的数据
//!
//! \return Rx仿真缓冲区数据
//
//*****************************************************************************
static inline uint16_t
SPI_readRxEmulationBuffer(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 返回仿真缓冲区接收的数据
    //
    return(HWREGH(base + SPI_O_RXEMU));
}

//*****************************************************************************
//
//! 启用传输
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数设置TALK位以启用数据传输。
//! 如果参数\e mode选择为SPI_MODE_PERIPHERAL或SPI_MODE_CONTROLLER，
//! 此位由SPI_setConfig启用。
//!
//! \return 无
//
//*****************************************************************************
static inline void
SPI_enableTalk(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置TALK位
    //
    HWREGH(base + SPI_O_CTL) |= SPI_CTL_TALK;
}

//*****************************************************************************
//
//! 禁用传输
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数清除TALK位以禁用数据传输。输出引脚将被置于高阻抗状态。
//! 如果参数\e mode选择为SPI_MODE_PERIPHERAL或SPI_MODE_CONTROLLER，
//! 此位由SPI_setConfig启用。
//!
//! \return 无
//
//*****************************************************************************
static inline void
SPI_disableTalk(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 设置TALK位
    //
    HWREGH(base + SPI_O_CTL) &= ~SPI_CTL_TALK;
}

//*****************************************************************************
//
//! 重置SPI发送和接收通道
//!
//! \param base 是SPI端口的基地址。
//!
//! 此函数重置SPI发送和接收通道。
//!
//! \return 无
//
//*****************************************************************************
static inline void
SPI_reset(uint32_t base)
{
    //
    // 检查参数。
    //
    ASSERT(SPI_isBaseValid(base));

    //
    // 写入SPRST位到TX FIFO。
    //
    HWREGH(base + SPI_O_FFTX) &= ~SPI_FFTX_SPIRST;
    HWREGH(base + SPI_O_FFTX) |= SPI_FFTX_SPIRST;
}

//*****************************************************************************
//
//! 配置串行外设接口。
//!
//! \param base 指定SPI模块基地址。
//! \param lspclkHz 是提供给SPI模块的时钟（LSPCLK）的速率，单位为Hz。
//! \param protocol 指定数据传输协议。
//! \param mode 指定操作模式。
//! \param bitRate 指定时钟速率，单位为Hz。
//! \param dataWidth 指定每帧传输的位数。
//!
//! 此函数配置串行外设接口。它设置SPI协议、操作模式、位速率和数据宽度。
//!
//! \e protocol参数定义数据帧格式。\e protocol参数可以是以下值之一：
//! \b SPI_PROT_POL0PHA0、\b SPI_PROT_POL0PHA1、\b SPI_PROT_POL1PHA0或
//! \b SPI_PROT_POL1PHA1。这些帧格式编码以下极性和相位配置：
//!
//! <pre>
//! 极性 相位       模式
//!   0       0   SPI_PROT_POL0PHA0
//!   0       1   SPI_PROT_POL0PHA1
//!   1       0   SPI_PROT_POL1PHA0
//!   1       1   SPI_PROT_POL1PHA1
//! </pre>
//!
//! \e mode参数定义SPI模块的操作模式。SPI模块可以作为控制器或外设运行；
//! SPI也可以配置为在其串行输出线上禁用输出。\e mode参数可以是以下值之一：
//! \b SPI_MODE_CONTROLLER、\b SPI_MODE_PERIPHERAL、\b SPI_MODE_CONTROLLER_OD或
//! \b SPI_MODE_PERIPHERAL_OD（"OD"表示"输出禁用"）。
//!
//! \e bitRate参数定义SPI的位速率。此位速率必须满足以下时钟比率标准：
//!
//! - \e bitRate不能大于lspclkHz除以4。
//! - \e lspclkHz / \e bitRate不能大于128。
//!
//! \e dataWidth参数定义数据传输的宽度，可以是1到16之间的值（含1和16）。
//!
//! 外设时钟是低速外设时钟。此值由SysCtl_getLowSpeedClock()返回，
//! 或者如果它是恒定且已知的，则可以显式硬编码（以节省调用
//! SysCtl_getLowSpeedClock()的代码/执行开销）。
//!
//! \note 在对其配置进行任何更改之前，应通过SPI_disableModule()禁用SPI操作。
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_setConfig(uint32_t base, uint32_t lspclkHz, SPI_TransferProtocol protocol,
              SPI_Mode mode, uint32_t bitRate, uint16_t dataWidth);

//*****************************************************************************
//
//! 配置串行外设接口的波特率。
//!
//! \param base 指定SPI模块基地址。
//! \param lspclkHz 是提供给SPI模块的时钟（LSPCLK）的速率，单位为Hz。
//! \param bitRate 指定时钟速率，单位为Hz。
//!
//! 此函数配置SPI波特率。\e bitRate参数定义SPI的位速率。
//! 此位速率必须满足以下时钟比率标准：
//!
//! - \e bitRate不能大于\e lspclkHz除以4。
//! - \e lspclkHz / \e bitRate不能大于128。
//!
//! 外设时钟是低速外设时钟。此值由SysCtl_getLowSpeedClock()返回，
//! 或者如果它是恒定且已知的，则可以显式硬编码（以节省调用
//! SysCtl_getLowSpeedClock()的代码/执行开销）。
//!
//! \note SPI_setConfig()也设置波特率。如果您希望将其与协议和模式分开配置，
//! 请使用SPI_setBaudRate()。
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_setBaudRate(uint32_t base, uint32_t lspclkHz, uint32_t bitRate);

//*****************************************************************************
//
//! 启用单个SPI中断源。
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要启用的中断源的位掩码。
//!
//! 此函数启用指定的SPI中断源。只有启用的源才能反映到处理器中断；
//! 禁用的源对处理器没有影响。\e intFlags参数可以是以下值的任意组合：
//! - \b SPI_INT_RX_OVERRUN - 接收溢出中断
//! - \b SPI_INT_RX_DATA_TX_EMPTY - 数据接收，发送空
//! - \b SPI_INT_RXFF（也启用\b SPI_INT_RXFF_OVERFLOW）- RX FIFO级别中断（和RX FIFO溢出）
//! - \b SPI_INT_TXFF - TX FIFO级别中断
//!
//! \note \b SPI_INT_RX_OVERRUN、\b SPI_INT_RX_DATA_TX_EMPTY、
//! \b SPI_INT_RXFF_OVERFLOW和\b SPI_INT_RXFF与\b SPIRXINT关联；
//! \b SPI_INT_TXFF与\b SPITXINT关联。
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_enableInterrupt(uint32_t base, uint32_t intFlags);

//*****************************************************************************
//
//! 禁用单个SPI中断源。
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要禁用的中断源的位掩码。
//!
//! 此函数禁用指定的SPI中断源。\e intFlags参数可以是以下值的任意组合：
//! - \b SPI_INT_RX_OVERRUN
//! - \b SPI_INT_RX_DATA_TX_EMPTY
//! - \b SPI_INT_RXFF（也禁用\b SPI_INT_RXFF_OVERFLOW）
//! - \b SPI_INT_TXFF
//!
//! \note \b SPI_INT_RX_OVERRUN、\b SPI_INT_RX_DATA_TX_EMPTY、
//! \b SPI_INT_RXFF_OVERFLOW和\b SPI_INT_RXFF与\b SPIRXINT关联；
//! \b SPI_INT_TXFF与\b SPITXINT关联。
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_disableInterrupt(uint32_t base, uint32_t intFlags);

//*****************************************************************************
//
//! 获取当前中断状态。
//!
//! \param base 指定SPI模块基地址。
//!
//! 此函数返回SPI模块的中断状态。
//!
//! \return 当前中断状态，枚举为以下值的位字段：
//! - \b SPI_INT_RX_OVERRUN - 接收溢出中断
//! - \b SPI_INT_RX_DATA_TX_EMPTY - 数据接收，发送空
//! - \b SPI_INT_RXFF - RX FIFO级别中断
//! - \b SPI_INT_RXFF_OVERFLOW - RX FIFO溢出
//! - \b SPI_INT_TXFF - TX FIFO级别中断
//
//*****************************************************************************
extern uint32_t
SPI_getInterruptStatus(uint32_t base);

//*****************************************************************************
//
//! 清除SPI中断源。
//!
//! \param base 指定SPI模块基地址。
//! \param intFlags 是要清除的中断源的位掩码。
//!
//! 此函数清除指定的SPI中断源，使它们不再断言。此函数必须在中断处理程序中调用，
//! 以防止中断在退出后立即再次触发。\e intFlags参数可以由以下值的位字段组成：
//! - \b SPI_INT_RX_OVERRUN
//! - \b SPI_INT_RX_DATA_TX_EMPTY
//! - \b SPI_INT_RXFF
//! - \b SPI_INT_RXFF_OVERFLOW
//! - \b SPI_INT_TXFF
//!
//! \note \b SPI_INT_RX_DATA_TX_EMPTY通过读取接收缓冲区来清除，
//! 因此通常不需要使用此函数来清除它。
//!
//! \note 还请注意，\b SPI_INT_RX_OVERRUN、\b SPI_INT_RX_DATA_TX_EMPTY、
//! \b SPI_INT_RXFF_OVERFLOW和\b SPI_INT_RXFF与\b SPIRXINT关联；
//! \b SPI_INT_TXFF与\b SPITXINT关联。
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_clearInterruptStatus(uint32_t base, uint32_t intFlags);


//*****************************************************************************
//
//! 此函数可用于发送24位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txData 要通过SPI传输的数据
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数可用于发送24位字的数据。
//! 24位字数据被分为三个字节的数据。
//!
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_transmit24Bits(uint32_t base, uint32_t data, uint16_t txDelay);

//*****************************************************************************
//
//! 此函数可用于发送32位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param txData 要通过SPI传输的数据
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数可用于发送32位字的数据。
//! 32位字数据被分为四个字节的数据。
//!
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为16位
//!
//! \return 无。
//
//*****************************************************************************
extern void
SPI_transmit32Bits(uint32_t base, uint32_t data, uint16_t txDelay);



//*****************************************************************************
//
//! 此函数用于接收16位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收16位字的数据。
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 接收到的16位字。
//
//*****************************************************************************
extern uint16_t
SPI_receive16Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                  uint16_t txDelay);

//*****************************************************************************
//
//! 此函数用于接收24位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收24位字的数据。
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 接收到的24位字。
//
//*****************************************************************************
extern uint32_t
SPI_receive24Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                  uint16_t txDelay);

//*****************************************************************************
//
//! 此函数用于接收32位字的数据
//!
//! \param base 指定SPI模块基地址。
//! \param endianness 指定接收数据的字节序
//! \param dummyData 用于启动SPI事务以接收SPI数据的传输数据
//! \param txDelay 指定前一个字完成后延迟的串行时钟周期数
//!
//! 此函数用于接收32位字的数据。
//! 此函数使用SPI_pollingFIFOTransaction函数。
//! 在调用此函数之前，SPI字符长度必须配置为8位
//!
//! \return 接收到的32位字。
//
//*****************************************************************************
extern uint32_t
SPI_receive32Bits(uint32_t base, SPI_endianess endianness, uint16_t dummyData,
                  uint16_t txDelay);



//*****************************************************************************
//
//! 此函数用于启动指定字符长度的SPI事务
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的SPI字符长度
//! \param data 指定要传输的数据
//!
//! 在调用此函数之前，SPI必须配置为提供的charLength。
//! 此函数不设置/更改SPI字符长度。
//!
//! \return .
//
//*****************************************************************************
extern uint16_t
SPI_pollingNonFIFOTransaction(uint32_t base, uint16_t charLength,
                              uint16_t data);

//*****************************************************************************
//
//! 此函数用于启动指定字符长度和'N'个字事务的SPI事务
//!
//! \param base 指定SPI模块基地址。
//! \param charLength 指定SPI事务的SPI字符长度
//! \param pTxBuffer 指定发送缓冲区的指针
//! \param pRxBuffer 指定接收缓冲区的指针
//! \param numOfWords 指定要传输/接收的数据数量
//!
//! 在调用此函数之前，SPI必须配置为提供的charLength。
//! 此函数不设置/更改SPI字符长度。
//!
//! \return 无
//
//*****************************************************************************
extern void
SPI_pollingFIFOTransaction(uint32_t base, uint16_t charLength,
                           uint16_t *pTxBuffer, uint16_t *pRxBuffer,
                           uint16_t numOfWords, uint16_t txDelay);

//*****************************************************************************
//
// 关闭Doxygen组。
//! @}
//
//*****************************************************************************

//*****************************************************************************
//
// 标记C++编译器C绑定部分的结束。
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // SPI_H