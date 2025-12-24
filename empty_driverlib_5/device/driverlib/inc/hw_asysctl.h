//###########################################################################
//
// FILE:    hw_asysctl.h
//
// TITLE:   ASYSCTL寄存器定义
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

#ifndef HW_ASYSCTL_H
#define HW_ASYSCTL_H

//*************************************************************************************************
//
// 以下是ASYSCTL寄存器偏移量的定义
//
//*************************************************************************************************
#define ASYSCTL_O_INTOSC1TRIM   0x20U   // 内部振荡器1微调寄存器
#define ASYSCTL_O_INTOSC2TRIM   0x22U   // 内部振荡器2微调寄存器
#define ASYSCTL_O_TSNSCTL       0x26U   // 温度传感器控制寄存器
#define ASYSCTL_O_LOCK          0x2EU   // 锁定寄存器
#define ASYSCTL_O_ANAREFTRIMA   0x36U   // 模拟参考微调A寄存器
#define ASYSCTL_O_ANAREFTRIMB   0x38U   // 模拟参考微调B寄存器
#define ASYSCTL_O_ANAREFTRIMC   0x3AU   // 模拟参考微调C寄存器
#define ASYSCTL_O_ANAREFTRIMD   0x3CU   // 模拟参考微调D寄存器


//*************************************************************************************************
//
// 以下是INTOSC1TRIM寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_INTOSC1TRIM_VALFINETRIM_S   0U
#define ASYSCTL_INTOSC1TRIM_VALFINETRIM_M   0xFFFU   // 振荡器值精细微调位

//*************************************************************************************************
//
// 以下是INTOSC2TRIM寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_INTOSC2TRIM_VALFINETRIM_S   0U
#define ASYSCTL_INTOSC2TRIM_VALFINETRIM_M   0xFFFU   // 振荡器值精细微调位

//*************************************************************************************************
//
// 以下是TSNSCTL寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_TSNSCTL_ENABLE   0x1U   // 温度传感器使能

//*************************************************************************************************
//
// 以下是LOCK寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_LOCK_TSNSCTL       0x8U         // 温度传感器控制寄存器锁定
#define ASYSCTL_LOCK_ANAREFTRIMA   0x800000U    // 模拟参考A微调寄存器锁定
#define ASYSCTL_LOCK_ANAREFTRIMB   0x1000000U   // 模拟参考B微调寄存器锁定
#define ASYSCTL_LOCK_ANAREFTRIMC   0x2000000U   // 模拟参考C微调寄存器锁定
#define ASYSCTL_LOCK_ANAREFTRIMD   0x4000000U   // 模拟参考D微调寄存器锁定

//*************************************************************************************************
//
// 以下是ANAREFTRIMA寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_ANAREFTRIMA_BGVALTRIM_S     0U
#define ASYSCTL_ANAREFTRIMA_BGVALTRIM_M     0x3FU     // 带隙值微调
#define ASYSCTL_ANAREFTRIMA_BGSLOPETRIM_S   6U
#define ASYSCTL_ANAREFTRIMA_BGSLOPETRIM_M   0x7C0U    // 带隙斜率微调
#define ASYSCTL_ANAREFTRIMA_IREFTRIM_S      11U
#define ASYSCTL_ANAREFTRIMA_IREFTRIM_M      0xF800U   // 参考电流微调

//*************************************************************************************************
//
// 以下是ANAREFTRIMB寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_ANAREFTRIMB_BGVALTRIM_S     0U
#define ASYSCTL_ANAREFTRIMB_BGVALTRIM_M     0x3FU     // 带隙值微调
#define ASYSCTL_ANAREFTRIMB_BGSLOPETRIM_S   6U
#define ASYSCTL_ANAREFTRIMB_BGSLOPETRIM_M   0x7C0U    // 带隙斜率微调
#define ASYSCTL_ANAREFTRIMB_IREFTRIM_S      11U
#define ASYSCTL_ANAREFTRIMB_IREFTRIM_M      0xF800U   // 参考电流微调

//*************************************************************************************************
//
// 以下是ANAREFTRIMC寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_ANAREFTRIMC_BGVALTRIM_S     0U
#define ASYSCTL_ANAREFTRIMC_BGVALTRIM_M     0x3FU     // 带隙值微调
#define ASYSCTL_ANAREFTRIMC_BGSLOPETRIM_S   6U
#define ASYSCTL_ANAREFTRIMC_BGSLOPETRIM_M   0x7C0U    // 带隙斜率微调
#define ASYSCTL_ANAREFTRIMC_IREFTRIM_S      11U
#define ASYSCTL_ANAREFTRIMC_IREFTRIM_M      0xF800U   // 参考电流微调

//*************************************************************************************************
//
// 以下是ANAREFTRIMD寄存器中位字段的定义
//
//*************************************************************************************************
#define ASYSCTL_ANAREFTRIMD_BGVALTRIM_S     0U
#define ASYSCTL_ANAREFTRIMD_BGVALTRIM_M     0x3FU     // 带隙值微调
#define ASYSCTL_ANAREFTRIMD_BGSLOPETRIM_S   6U
#define ASYSCTL_ANAREFTRIMD_BGSLOPETRIM_M   0x7C0U    // 带隙斜率微调
#define ASYSCTL_ANAREFTRIMD_IREFTRIM_S      11U
#define ASYSCTL_ANAREFTRIMD_IREFTRIM_M      0xF800U   // 参考电流微调



#endif