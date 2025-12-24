//###########################################################################
//
// FILE:   adc.c
//
// TITLE:  C28x ADC驱动程序。
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

#include "adc.h"

//*****************************************************************************
//
// 用于ADC_setMode()中OTP内ADC校准函数位置的定义。
// 不适用于应用程序代码。
//
//*****************************************************************************
//
// 以下函数用于校准ADC线性度。仅在ADC_setMode()函数中使用。
//
#define ADC_calADCAINL          0x0703B4U
#define ADC_calADCBINL          0x0703B2U
#define ADC_calADCCINL          0x0703B0U
#define ADC_calADCDINL          0x0703AEU

//
// 此函数根据给定条件查找ADC偏移校准值。仅在ADC_setMode()函数中使用。
//
#define ADC_getOffsetTrim       0x0703ACU

//*****************************************************************************
//
// ADC_setMode
// 设置ADC模式
//
//*****************************************************************************
void
ADC_setMode(uint32_t base, ADC_Resolution resolution,
            ADC_SignalMode signalMode)
{
    //
    // 检查参数。
    //
    ASSERT(ADC_isBaseValid(base));

    //
    // 检查信号模式和分辨率是否正确。在此设备中：
    // 单端信号转换仅在12位模式下支持
    // 差分信号转换仅在16位模式下支持
    //
    if(signalMode == ADC_MODE_SINGLE_ENDED)
    {
        ASSERT(resolution == ADC_RESOLUTION_12BIT);
    }
    else
    {
        ASSERT(resolution == ADC_RESOLUTION_16BIT);
    }


    //
    // 为指定的ADC应用分辨率和信号模式。
    //
    EALLOW;
    HWREGH(base + ADC_O_CTL2) = (HWREGH(base + ADC_O_CTL2) &
                                 ~(ADC_CTL2_RESOLUTION | ADC_CTL2_SIGNALMODE)) |
                                ((uint16_t)resolution | (uint16_t)signalMode);
    EDIS;

    //
    // 应用INL和偏移校准
    //
    ADC_setINLTrim(base);
    ADC_setOffsetTrim(base);
}

//*****************************************************************************
//
// ADC_setINLTrim
// 设置ADC INL校准
//
//*****************************************************************************
void
ADC_setINLTrim(uint32_t base)
{
    ADC_Resolution resolution;

    //
    // 检查参数。
    //
    ASSERT(ADC_isBaseValid(base));

    resolution = (ADC_Resolution)
                 (HWREGH(base + ADC_O_CTL2) & ADC_CTL2_RESOLUTION);

    EALLOW;
    switch(base)
    {
        case ADCA_BASE:
            if(HWREGH(ADC_calADCAINL) != 0xFFFFU)
            {
                //
                // 校准函数已编程到OTP中，因此调用它
                //
                (*((void (*)(void))ADC_calADCAINL))();
            }
            else
            {
                //
                // 不执行任何操作，未填充INL校准函数
                //
            }
            break;
        case ADCB_BASE:
            if(HWREGH(ADC_calADCBINL) != 0xFFFFU)
            {
                //
                // 校准函数已编程到OTP中，因此调用它
                //
                (*((void (*)(void))ADC_calADCBINL))();
            }
            else
            {
                //
                // 不执行任何操作，未填充INL校准函数
                //
            }
            break;
        case ADCC_BASE:
            if(HWREGH(ADC_calADCCINL) != 0xFFFFU)
            {
                //
                // 校准函数已编程到OTP中，因此调用它
                //
                (*((void (*)(void))ADC_calADCCINL))();
            }
            else
            {
                //
                // 不执行任何操作，未填充INL校准函数
                //
            }
            break;
        case ADCD_BASE:
            if(HWREGH(ADC_calADCDINL) != 0xFFFFU)
            {
                //
                // 校准函数已编程到OTP中，因此调用它
                //
                (*((void (*)(void))ADC_calADCDINL))();
            }
            else
            {
                //
                // 不执行任何操作，未填充INL校准函数
                //
            }
            break;
        default:
            //
            // 无效的基地址！不执行任何操作！
            //
            break;
    }

    //
    // 为12位分辨率应用线性度校准修复
    //
    if(resolution == ADC_RESOLUTION_12BIT)
    {
        //
        // 12位线性度校准修复
        //
        HWREG(base + ADC_O_INLTRIM1) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM2) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM4) &= 0xFFFF0000U;
        HWREG(base + ADC_O_INLTRIM5) &= 0xFFFF0000U;
    }
    EDIS;
}

//*****************************************************************************
//
// ADC_setOffsetTrim
// 设置ADC偏移校准
//
//*****************************************************************************
void
ADC_setOffsetTrim(uint32_t base)
{
    uint16_t offsetIndex = 0U;
    uint16_t offsetTrim  = 0U;
    ADC_Resolution resolution;
    ADC_SignalMode signalMode;

    //
    // 检查参数。
    //
    ASSERT(ADC_isBaseValid(base));

    resolution = (ADC_Resolution)
                 (HWREGH(base + ADC_O_CTL2) & ADC_CTL2_RESOLUTION);
    signalMode = (ADC_SignalMode)
                 (HWREGH(base + ADC_O_CTL2) & ADC_CTL2_SIGNALMODE);

    switch(base)
    {
        case ADCA_BASE:
            offsetIndex = (uint16_t)(0U * 4U);
            break;
        case ADCB_BASE:
            offsetIndex = (uint16_t)(1U * 4U);
            break;
        case ADCC_BASE:
            offsetIndex = (uint16_t)(2U * 4U);
            break;
        case ADCD_BASE:
            offsetIndex = (uint16_t)(3U * 4U);
            break;
        default:
            //
            // 无效的基地址！
            //
            offsetIndex = 0U;
            break;
    }

    //
    // 偏移校准函数已编程到OTP中，因此调用它
    //
    if(HWREGH(ADC_getOffsetTrim) != 0xFFFFU)
    {
        //
        // 计算偏移校准OTP表的索引并调用函数返回正确的偏移校准值
        //
        offsetIndex += ((signalMode == ADC_MODE_DIFFERENTIAL) ? 1U : 0U) +
                       (2U * ((resolution == ADC_RESOLUTION_16BIT) ? 1U : 0U));

        offsetTrim =
            (*((uint16_t (*)(uint16_t index))ADC_getOffsetTrim))(offsetIndex);
    }
    else
    {
        //
        // 偏移校准函数未填充，因此将偏移校准设置为0
        //
        offsetTrim = 0U;
    }

    //
    // 应用偏移校准。在TMX或未校准设备的情况下，此处不更新偏移校准。
    // TMX设备的默认校准应在Device_init()中处理。
    // 有关更多详细信息，请参阅Device_init()和Device_configureTMXAnalogTrim() API。
    //
    if(offsetTrim > 0x0U)
    {
        EALLOW;
        HWREGH(base + ADC_O_OFFTRIM) = offsetTrim;
        EDIS;
    }
}


//*****************************************************************************
//
// ADC_setPPBTripLimits
// 设置ADC PPB触发限制
//
//*****************************************************************************
void
ADC_setPPBTripLimits(uint32_t base, ADC_PPBNumber ppbNumber,
                     int32_t tripHiLimit, int32_t tripLoLimit)
{
    uint32_t ppbHiOffset;
    uint32_t ppbLoOffset;

    //
    // 检查参数。
    //
    ASSERT(ADC_isBaseValid(base));
    ASSERT((tripHiLimit <= 65535) && (tripHiLimit >= -65536));
    ASSERT((tripLoLimit <= 65535) && (tripLoLimit >= -65536));

    //
    // 获取适当的触发限制寄存器的偏移量。
    //
    ppbHiOffset = (ADC_PPBxTRIPHI_STEP * (uint32_t)ppbNumber) +
                  ADC_O_PPB1TRIPHI;
    ppbLoOffset = (ADC_PPBxTRIPLO_STEP * (uint32_t)ppbNumber) +
                  ADC_O_PPB1TRIPLO;

    EALLOW;

    //
    // 设置触发高限制。
    //
    HWREG(base + ppbHiOffset) =
        (HWREG(base + ppbHiOffset) & ~ADC_PPBTRIP_MASK) |
        ((uint32_t)tripHiLimit & ADC_PPBTRIP_MASK);

    //
    // 设置触发低限制。
    //
    HWREG(base + ppbLoOffset) =
        (HWREG(base + ppbLoOffset) & ~ADC_PPBTRIP_MASK) |
        ((uint32_t)tripLoLimit & ADC_PPBTRIP_MASK);

    EDIS;
}