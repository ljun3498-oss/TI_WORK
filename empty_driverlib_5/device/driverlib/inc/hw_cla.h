//###########################################################################
//
// FILE:    hw_cla.h
//
// TITLE:   CLA寄存器定义
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

#ifndef HW_CLA_H
#define HW_CLA_H

//*************************************************************************************************
//
// 以下是CLA寄存器偏移量的定义
//
//*************************************************************************************************
#ifndef __TMS320C28XX_CLA__
#define CLA_O_MVECT1     0x0U    // 任务中断向量
#define CLA_O_MVECT2     0x1U    // 任务中断向量
#define CLA_O_MVECT3     0x2U    // 任务中断向量
#define CLA_O_MVECT4     0x3U    // 任务中断向量
#define CLA_O_MVECT5     0x4U    // 任务中断向量
#define CLA_O_MVECT6     0x5U    // 任务中断向量
#define CLA_O_MVECT7     0x6U    // 任务中断向量
#define CLA_O_MVECT8     0x7U    // 任务中断向量
#define CLA_O_MCTL       0x10U   // 控制寄存器
#define CLA_O_MIFR       0x20U   // 中断标志寄存器
#define CLA_O_MIOVF      0x21U   // 中断溢出标志寄存器
#define CLA_O_MIFRC      0x22U   // 中断强制寄存器
#define CLA_O_MICLR      0x23U   // 中断标志清除寄存器
#define CLA_O_MICLROVF   0x24U   // 中断溢出标志清除寄存器
#define CLA_O_MIER       0x25U   // 中断使能寄存器
#define CLA_O_MIRUN      0x26U   // 中断运行状态寄存器
#define CLA_O_MPC        0x28U   // CLA程序计数器
#define CLA_O_MAR0       0x2AU   // CLA辅助寄存器0
#define CLA_O_MAR1       0x2BU   // CLA辅助寄存器1
#define CLA_O_MSTF       0x2EU   // CLA浮点状态寄存器
#define CLA_O_MR0        0x30U   // CLA浮点结果寄存器0
#define CLA_O_MR1        0x34U   // CLA浮点结果寄存器1
#define CLA_O_MR2        0x38U   // CLA浮点结果寄存器2
#define CLA_O_MR3        0x3CU   // CLA浮点结果寄存器3
#endif

#ifdef __TMS320C28XX_CLA__
#define CLA_O_SOFTINTEN    0x0U   // CLA软件中断使能寄存器
#define CLA_O_SOFTINTFRC   0x2U   // CLA软件中断强制寄存器
#endif


#ifndef __TMS320C28XX_CLA__
//*************************************************************************************************
//
// 以下是MCTL寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MCTL_HARDRESET   0x1U   // 硬复位
#define CLA_MCTL_SOFTRESET   0x2U   // 软复位
#define CLA_MCTL_IACKE       0x4U   // IACK使能

//*************************************************************************************************
//
// 以下是MIFR寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MIFR_INT1   0x1U    // 任务1中断标志
#define CLA_MIFR_INT2   0x2U    // 任务2中断标志
#define CLA_MIFR_INT3   0x4U    // 任务3中断标志
#define CLA_MIFR_INT4   0x8U    // 任务4中断标志
#define CLA_MIFR_INT5   0x10U   // 任务5中断标志
#define CLA_MIFR_INT6   0x20U   // 任务6中断标志
#define CLA_MIFR_INT7   0x40U   // 任务7中断标志
#define CLA_MIFR_INT8   0x80U   // 任务8中断标志

//*************************************************************************************************
//
// 以下是MIOVF寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MIOVF_INT1   0x1U    // 任务1中断溢出标志
#define CLA_MIOVF_INT2   0x2U    // 任务2中断溢出标志
#define CLA_MIOVF_INT3   0x4U    // 任务3中断溢出标志
#define CLA_MIOVF_INT4   0x8U    // 任务4中断溢出标志
#define CLA_MIOVF_INT5   0x10U   // 任务5中断溢出标志
#define CLA_MIOVF_INT6   0x20U   // 任务6中断溢出标志
#define CLA_MIOVF_INT7   0x40U   // 任务7中断溢出标志
#define CLA_MIOVF_INT8   0x80U   // 任务8中断溢出标志

//*************************************************************************************************
//
// 以下是MIFRC寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MIFRC_INT1   0x1U    // 任务1中断强制
#define CLA_MIFRC_INT2   0x2U    // 任务2中断强制
#define CLA_MIFRC_INT3   0x4U    // 任务3中断强制
#define CLA_MIFRC_INT4   0x8U    // 任务4中断强制
#define CLA_MIFRC_INT5   0x10U   // 任务5中断强制
#define CLA_MIFRC_INT6   0x20U   // 任务6中断强制
#define CLA_MIFRC_INT7   0x40U   // 任务7中断强制
#define CLA_MIFRC_INT8   0x80U   // 任务8中断强制

//*************************************************************************************************
//
// 以下是MICLR寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MICLR_INT1   0x1U    // 任务1中断标志清除
#define CLA_MICLR_INT2   0x2U    // 任务2中断标志清除
#define CLA_MICLR_INT3   0x4U    // 任务3中断标志清除
#define CLA_MICLR_INT4   0x8U    // 任务4中断标志清除
#define CLA_MICLR_INT5   0x10U   // 任务5中断标志清除
#define CLA_MICLR_INT6   0x20U   // 任务6中断标志清除
#define CLA_MICLR_INT7   0x40U   // 任务7中断标志清除
#define CLA_MICLR_INT8   0x80U   // 任务8中断标志清除

//*************************************************************************************************
//
// 以下是MICLROVF寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MICLROVF_INT1   0x1U    // 任务1中断溢出标志清除
#define CLA_MICLROVF_INT2   0x2U    // 任务2中断溢出标志清除
#define CLA_MICLROVF_INT3   0x4U    // 任务3中断溢出标志清除
#define CLA_MICLROVF_INT4   0x8U    // 任务4中断溢出标志清除
#define CLA_MICLROVF_INT5   0x10U   // 任务5中断溢出标志清除
#define CLA_MICLROVF_INT6   0x20U   // 任务6中断溢出标志清除
#define CLA_MICLROVF_INT7   0x40U   // 任务7中断溢出标志清除
#define CLA_MICLROVF_INT8   0x80U   // 任务8中断溢出标志清除

//*************************************************************************************************
//
// 以下是MIER寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MIER_INT1   0x1U    // 任务1中断使能
#define CLA_MIER_INT2   0x2U    // 任务2中断使能
#define CLA_MIER_INT3   0x4U    // 任务3中断使能
#define CLA_MIER_INT4   0x8U    // 任务4中断使能
#define CLA_MIER_INT5   0x10U   // 任务5中断使能
#define CLA_MIER_INT6   0x20U   // 任务6中断使能
#define CLA_MIER_INT7   0x40U   // 任务7中断使能
#define CLA_MIER_INT8   0x80U   // 任务8中断使能

//*************************************************************************************************
//
// 以下是MIRUN寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MIRUN_INT1   0x1U    // 任务1运行状态
#define CLA_MIRUN_INT2   0x2U    // 任务2运行状态
#define CLA_MIRUN_INT3   0x4U    // 任务3运行状态
#define CLA_MIRUN_INT4   0x8U    // 任务4运行状态
#define CLA_MIRUN_INT5   0x10U   // 任务5运行状态
#define CLA_MIRUN_INT6   0x20U   // 任务6运行状态
#define CLA_MIRUN_INT7   0x40U   // 任务7运行状态
#define CLA_MIRUN_INT8   0x80U   // 任务8运行状态

//*************************************************************************************************
//
// 以下是MSTF寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_MSTF_LVF       0x1U         // 锁定溢出标志
#define CLA_MSTF_LUF       0x2U         // 锁定下溢标志
#define CLA_MSTF_NF        0x4U         // 负浮点数标志
#define CLA_MSTF_ZF        0x8U         // 零浮点数标志
#define CLA_MSTF_TF        0x40U        // 测试标志
#define CLA_MSTF_RNDF32    0x200U       // 32位浮点数舍入模式
#define CLA_MSTF_MEALLOW   0x800U       // MEALLOW状态
#define CLA_MSTF_RPC_S     12U
#define CLA_MSTF_RPC_M     0xFFFF000U   // 返回PC

#endif

#ifdef __TMS320C28XX_CLA__
//*************************************************************************************************
//
// 以下是SOFTINTEN寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_SOFTINTEN_TASK1   0x1U    // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK2   0x2U    // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK3   0x4U    // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK4   0x8U    // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK5   0x10U   // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK6   0x20U   // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK7   0x40U   // 配置软件中断或任务结束中断
#define CLA_SOFTINTEN_TASK8   0x80U   // 配置软件中断或任务结束中断

//*************************************************************************************************
//
// 以下是SOFTINTFRC寄存器位字段的定义
//
//*************************************************************************************************
#define CLA_SOFTINTFRC_TASK1   0x1U    // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK2   0x2U    // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK3   0x4U    // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK4   0x8U    // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK5   0x10U   // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK6   0x20U   // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK7   0x40U   // 为对应任务强制产生CLA软件中断
#define CLA_SOFTINTFRC_TASK8   0x80U   // 为对应任务强制产生CLA软件中断

#endif


#endif