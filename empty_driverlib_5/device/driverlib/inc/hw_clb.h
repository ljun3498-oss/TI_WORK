//###########################################################################
//
// FILE:    hw_clb.h
//
// TITLE:   CLB寄存器定义
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

#ifndef HW_CLB_H
#define HW_CLB_H

//*************************************************************************************************
//
// 以下是CLB寄存器偏移量的定义
//
//*************************************************************************************************
#define CLB_O_COUNT_RESET        0x2U    // 计数器模块复位
#define CLB_O_COUNT_MODE_1       0x4U    // 计数器模块模式1
#define CLB_O_COUNT_MODE_0       0x6U    // 计数器模块模式0
#define CLB_O_COUNT_EVENT        0x8U    // 计数器模块事件
#define CLB_O_FSM_EXTRA_IN0      0xAU    // FSM额外输入EXT_IN0
#define CLB_O_FSM_EXTERNAL_IN0   0xCU    // FSM外部输入EXT_IN0
#define CLB_O_FSM_EXTERNAL_IN1   0xEU    // FSM外部输入EXT_IN1
#define CLB_O_FSM_EXTRA_IN1      0x10U   // FSM额外输入EXT_IN1
#define CLB_O_LUT4_IN0           0x12U   // LUT4_0/1/2的IN0输入源
#define CLB_O_LUT4_IN1           0x14U   // LUT4_0/1/2的IN1输入源
#define CLB_O_LUT4_IN2           0x16U   // LUT4_0/1/2的IN2输入源
#define CLB_O_LUT4_IN3           0x18U   // LUT4_0/1/2的IN3输入源
#define CLB_O_FSM_LUT_FN1_0      0x1CU   // FSM单元1和单元0的LUT函数
#define CLB_O_FSM_LUT_FN2        0x1EU   // FSM单元2的LUT函数
#define CLB_O_LUT4_FN1_0         0x20U   // 单元1和0的LUT4模块的LUT函数
#define CLB_O_LUT4_FN2           0x22U   // 单元2的LUT4模块的LUT函数
#define CLB_O_FSM_NEXT_STATE_0   0x24U   // 单元0的FSM下一状态方程
#define CLB_O_FSM_NEXT_STATE_1   0x26U   // 单元1的FSM下一状态方程
#define CLB_O_FSM_NEXT_STATE_2   0x28U   // 单元2的FSM下一状态方程
#define CLB_O_MISC_CONTROL       0x2AU   // 计数器和FSM的静态控制
#define CLB_O_OUTPUT_LUT_0       0x2CU   // 输出0的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_1       0x2EU   // 输出1的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_2       0x30U   // 输出2的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_3       0x32U   // 输出3的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_4       0x34U   // 输出4的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_5       0x36U   // 输出5的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_6       0x38U   // 输出6的输入选择和LUT函数
#define CLB_O_OUTPUT_LUT_7       0x3AU   // 输出7的输入选择和LUT函数
#define CLB_O_HLC_EVENT_SEL      0x3CU   // 高级控制器的事件选择寄存器

#define CLB_O_LOAD_EN          0x0U    // 全局使能和间接加载使能控制
#define CLB_O_LOAD_ADDR        0x2U    // 间接地址
#define CLB_O_LOAD_DATA        0x4U    // 间接加载数据
#define CLB_O_INPUT_FILTER     0x6U    // 边缘检测和同步器的输入滤波器选择
#define CLB_O_IN_MUX_SEL_0     0x8U    // 用于决定信号和GP寄存器的输入选择
#define CLB_O_LCL_MUX_SEL_1    0xAU    // 本地多路复用器的输入多路复用选择
#define CLB_O_LCL_MUX_SEL_2    0xCU    // 本地多路复用器的输入多路复用选择
#define CLB_O_BUF_PTR          0xEU    // PUSH和PULL指针
#define CLB_O_GP_REG           0x10U   // CELL输入的通用寄存器
#define CLB_O_OUT_EN           0x12U   // CELL输出使能寄存器
#define CLB_O_GLBL_MUX_SEL_1   0x14U   // CELL输入的全局多路复用选择
#define CLB_O_GLBL_MUX_SEL_2   0x16U   // CELL输入的全局多路复用选择
#define CLB_O_INTR_TAG_REG     0x20U   // 中断标签寄存器
#define CLB_O_LOCK             0x22U   // 锁定控制寄存器
#define CLB_O_DBG_R0           0x30U   // 高级控制器的R0
#define CLB_O_DBG_R1           0x32U   // 高级控制器的R1
#define CLB_O_DBG_R2           0x34U   // 高级控制器的R2
#define CLB_O_DBG_R3           0x36U   // 高级控制器的R3
#define CLB_O_DBG_C0           0x38U   // 单元0的计数
#define CLB_O_DBG_C1           0x3AU   // 单元1的计数
#define CLB_O_DBG_C2           0x3CU   // 单元2的计数
#define CLB_O_DBG_OUT          0x3EU   // Cell中各种单元的输出

#define CLB_O_PUSH(i)   (0x0U + ((i) * 0x2U))     // (0 <= i < 4) CLB_PUSH FIFO寄存器(来自HLC)
#define CLB_O_PULL(i)   (0x100U + ((i) * 0x2U))   // (0 <= i < 4) CLB_PULL FIFO寄存器(到HLC)


//*************************************************************************************************
//
// 以下是CLB_COUNT_RESET寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_COUNT_RESET_SEL_0_S   0U
#define CLB_COUNT_RESET_SEL_0_M   0x1FU     // 计数复位选择0
#define CLB_COUNT_RESET_SEL_1_S   5U
#define CLB_COUNT_RESET_SEL_1_M   0x3E0U    // 计数复位选择1
#define CLB_COUNT_RESET_SEL_2_S   10U
#define CLB_COUNT_RESET_SEL_2_M   0x7C00U   // 计数复位选择2

//*************************************************************************************************
//
// 以下是CLB_COUNT_MODE_1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_COUNT_MODE_1_SEL_0_S   0U
#define CLB_COUNT_MODE_1_SEL_0_M   0x1FU     // 计数器模式1选择0
#define CLB_COUNT_MODE_1_SEL_1_S   5U
#define CLB_COUNT_MODE_1_SEL_1_M   0x3E0U    // 计数器模式1选择1
#define CLB_COUNT_MODE_1_SEL_2_S   10U
#define CLB_COUNT_MODE_1_SEL_2_M   0x7C00U   // 计数器模式1选择2

//*************************************************************************************************
//
// 以下是CLB_COUNT_MODE_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_COUNT_MODE_0_SEL_0_S   0U
#define CLB_COUNT_MODE_0_SEL_0_M   0x1FU     // 计数器模式0选择0
#define CLB_COUNT_MODE_0_SEL_1_S   5U
#define CLB_COUNT_MODE_0_SEL_1_M   0x3E0U    // 计数器模式0选择1
#define CLB_COUNT_MODE_0_SEL_2_S   10U
#define CLB_COUNT_MODE_0_SEL_2_M   0x7C00U   // 计数器模式0选择2

//*************************************************************************************************
//
// 以下是CLB_COUNT_EVENT寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_COUNT_EVENT_SEL_0_S   0U
#define CLB_COUNT_EVENT_SEL_0_M   0x1FU     // 计数器事件选择0
#define CLB_COUNT_EVENT_SEL_1_S   5U
#define CLB_COUNT_EVENT_SEL_1_M   0x3E0U    // 计数器事件选择1
#define CLB_COUNT_EVENT_SEL_2_S   10U
#define CLB_COUNT_EVENT_SEL_2_M   0x7C00U   // 计数器事件选择2

//*************************************************************************************************
//
// 以下是CLB_FSM_EXTRA_IN0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_EXTRA_IN0_SEL_0_S   0U
#define CLB_FSM_EXTRA_IN0_SEL_0_M   0x1FU     // FSM额外外部输入选择0
#define CLB_FSM_EXTRA_IN0_SEL_1_S   5U
#define CLB_FSM_EXTRA_IN0_SEL_1_M   0x3E0U    // FSM额外外部输入选择1
#define CLB_FSM_EXTRA_IN0_SEL_2_S   10U
#define CLB_FSM_EXTRA_IN0_SEL_2_M   0x7C00U   // FSM额外外部输入选择2

//*************************************************************************************************
//
// 以下是CLB_FSM_EXTERNAL_IN0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_EXTERNAL_IN0_SEL_0_S   0U
#define CLB_FSM_EXTERNAL_IN0_SEL_0_M   0x1FU     // 单元0的FSM EXT_IN0选择输入
#define CLB_FSM_EXTERNAL_IN0_SEL_1_S   5U
#define CLB_FSM_EXTERNAL_IN0_SEL_1_M   0x3E0U    // 单元1的FSM EXT_IN0选择输入
#define CLB_FSM_EXTERNAL_IN0_SEL_2_S   10U
#define CLB_FSM_EXTERNAL_IN0_SEL_2_M   0x7C00U   // 单元2的FSM EXT_IN0选择输入

//*************************************************************************************************
//
// 以下是CLB_FSM_EXTERNAL_IN1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_EXTERNAL_IN1_SEL_0_S   0U
#define CLB_FSM_EXTERNAL_IN1_SEL_0_M   0x1FU     // 单元0的FSM EXT_IN1选择输入
#define CLB_FSM_EXTERNAL_IN1_SEL_1_S   5U
#define CLB_FSM_EXTERNAL_IN1_SEL_1_M   0x3E0U    // 单元1的FSM EXT_IN1选择输入
#define CLB_FSM_EXTERNAL_IN1_SEL_2_S   10U
#define CLB_FSM_EXTERNAL_IN1_SEL_2_M   0x7C00U   // 单元2的FSM EXT_IN1选择输入

//*************************************************************************************************
//
// 以下是CLB_FSM_EXTRA_IN1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_EXTRA_IN1_SEL_0_S   0U
#define CLB_FSM_EXTRA_IN1_SEL_0_M   0x1FU     // FSM额外外部输入选择0
#define CLB_FSM_EXTRA_IN1_SEL_1_S   5U
#define CLB_FSM_EXTRA_IN1_SEL_1_M   0x3E0U    // FSM额外外部输入选择1
#define CLB_FSM_EXTRA_IN1_SEL_2_S   10U
#define CLB_FSM_EXTRA_IN1_SEL_2_M   0x7C00U   // FSM额外外部输入选择2

//*************************************************************************************************
//
// 以下是CLB_LUT4_IN0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_IN0_SEL_0_S   0U
#define CLB_LUT4_IN0_SEL_0_M   0x1FU     // 单元0的选择输入
#define CLB_LUT4_IN0_SEL_1_S   5U
#define CLB_LUT4_IN0_SEL_1_M   0x3E0U    // 单元1的选择输入
#define CLB_LUT4_IN0_SEL_2_S   10U
#define CLB_LUT4_IN0_SEL_2_M   0x7C00U   // 单元2的选择输入

//*************************************************************************************************
//
// 以下是CLB_LUT4_IN1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_IN1_SEL_0_S   0U
#define CLB_LUT4_IN1_SEL_0_M   0x1FU     // 单元0的选择输入
#define CLB_LUT4_IN1_SEL_1_S   5U
#define CLB_LUT4_IN1_SEL_1_M   0x3E0U    // 单元1的选择输入
#define CLB_LUT4_IN1_SEL_2_S   10U
#define CLB_LUT4_IN1_SEL_2_M   0x7C00U   // 单元2的选择输入

//*************************************************************************************************
//
// 以下是CLB_LUT4_IN2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_IN2_SEL_0_S   0U
#define CLB_LUT4_IN2_SEL_0_M   0x1FU     // 单元0的选择输入
#define CLB_LUT4_IN2_SEL_1_S   5U
#define CLB_LUT4_IN2_SEL_1_M   0x3E0U    // 单元1的选择输入
#define CLB_LUT4_IN2_SEL_2_S   10U
#define CLB_LUT4_IN2_SEL_2_M   0x7C00U   // 单元2的选择输入

//*************************************************************************************************
//
// 以下是CLB_LUT4_IN3寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_IN3_SEL_0_S   0U
#define CLB_LUT4_IN3_SEL_0_M   0x1FU     // 单元0的选择输入
#define CLB_LUT4_IN3_SEL_1_S   5U
#define CLB_LUT4_IN3_SEL_1_M   0x3E0U    // 单元1的选择输入
#define CLB_LUT4_IN3_SEL_2_S   10U
#define CLB_LUT4_IN3_SEL_2_M   0x7C00U   // 单元2的选择输入

//*************************************************************************************************
//
// 以下是CLB_FSM_LUT_FN1_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_LUT_FN1_0_FN0_S   0U
#define CLB_FSM_LUT_FN1_0_FN0_M   0xFFFFU       // 单元0的FSM LUT输出函数
#define CLB_FSM_LUT_FN1_0_FN1_S   16U
#define CLB_FSM_LUT_FN1_0_FN1_M   0xFFFF0000U   // 单元1的FSM LUT输出函数

//*************************************************************************************************
//
// 以下是CLB_FSM_LUT_FN2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_LUT_FN2_FN1_S   0U
#define CLB_FSM_LUT_FN2_FN1_M   0xFFFFU   // 单元2的FSM LUT输出函数

//*************************************************************************************************
//
// 以下是CLB_LUT4_FN1_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_FN1_0_FN0_S   0U
#define CLB_LUT4_FN1_0_FN0_M   0xFFFFU       // 单元0的LUT4输出函数
#define CLB_LUT4_FN1_0_FN1_S   16U
#define CLB_LUT4_FN1_0_FN1_M   0xFFFF0000U   // 单元1的LUT4输出函数

//*************************************************************************************************
//
// 以下是CLB_LUT4_FN2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LUT4_FN2_FN1_S   0U
#define CLB_LUT4_FN2_FN1_M   0xFFFFU   // 单元2的LUT4输出函数

//*************************************************************************************************
//
// 以下是CLB_FSM_NEXT_STATE_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_NEXT_STATE_0_S0_S   0U
#define CLB_FSM_NEXT_STATE_0_S0_M   0xFFFFU       // S0的FSM下一状态函数
#define CLB_FSM_NEXT_STATE_0_S1_S   16U
#define CLB_FSM_NEXT_STATE_0_S1_M   0xFFFF0000U   // S1的FSM下一状态函数

//*************************************************************************************************
//
// 以下是CLB_FSM_NEXT_STATE_1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_NEXT_STATE_1_S0_S   0U
#define CLB_FSM_NEXT_STATE_1_S0_M   0xFFFFU       // S0的FSM下一状态函数
#define CLB_FSM_NEXT_STATE_1_S1_S   16U
#define CLB_FSM_NEXT_STATE_1_S1_M   0xFFFF0000U   // S1的FSM下一状态函数

//*************************************************************************************************
//
// 以下是CLB_FSM_NEXT_STATE_2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_FSM_NEXT_STATE_2_S0_S   0U
#define CLB_FSM_NEXT_STATE_2_S0_M   0xFFFFU       // S0的FSM下一状态函数
#define CLB_FSM_NEXT_STATE_2_S1_S   16U
#define CLB_FSM_NEXT_STATE_2_S1_M   0xFFFF0000U   // S1的FSM下一状态函数

//*************************************************************************************************
//
// 以下是CLB_MISC_CONTROL寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_MISC_CONTROL_COUNT_ADD_SHIFT_0    0x1U       // 计数器0的加/移位
#define CLB_MISC_CONTROL_COUNT_DIR_0          0x2U       // 计数器0的方向
#define CLB_MISC_CONTROL_COUNT_EVENT_CTRL_0   0x4U       // 计数器0的事件控制
#define CLB_MISC_CONTROL_COUNT_ADD_SHIFT_1    0x8U       // 计数器1的加/移位
#define CLB_MISC_CONTROL_COUNT_DIR_1          0x10U      // 计数器1的方向
#define CLB_MISC_CONTROL_COUNT_EVENT_CTRL_1   0x20U      // 计数器1的事件控制
#define CLB_MISC_CONTROL_COUNT_ADD_SHIFT_2    0x40U      // 计数器2的加/移位
#define CLB_MISC_CONTROL_COUNT_DIR_2          0x80U      // 计数器2的方向
#define CLB_MISC_CONTROL_COUNT_EVENT_CTRL_2   0x100U     // 计数器2的事件控制
#define CLB_MISC_CONTROL_COUNT_SERIALIZER_0   0x200U     // 串行器使能0
#define CLB_MISC_CONTROL_COUNT_SERIALIZER_1   0x400U     // 串行器使能1
#define CLB_MISC_CONTROL_COUNT_SERIALIZER_2   0x800U     // 串行器使能2
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL0_0     0x1000U    // 0的FSM extra_sel0
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL1_0     0x2000U    // 0的FSM extra_sel1
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL0_1     0x4000U    // 1的FSM extra_sel0
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL1_1     0x8000U    // 1的FSM extra_sel1
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL0_2     0x10000U   // 2的FSM extra_sel0
#define CLB_MISC_CONTROL_FSM_EXTRA_SEL1_2     0x20000U   // 2的FSM extra_sel1

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_0_IN0_S   0U
#define CLB_OUTPUT_LUT_0_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_0_IN1_S   5U
#define CLB_OUTPUT_LUT_0_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_0_IN2_S   10U
#define CLB_OUTPUT_LUT_0_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_0_FN_S    15U
#define CLB_OUTPUT_LUT_0_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_1_IN0_S   0U
#define CLB_OUTPUT_LUT_1_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_1_IN1_S   5U
#define CLB_OUTPUT_LUT_1_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_1_IN2_S   10U
#define CLB_OUTPUT_LUT_1_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_1_FN_S    15U
#define CLB_OUTPUT_LUT_1_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_2_IN0_S   0U
#define CLB_OUTPUT_LUT_2_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_2_IN1_S   5U
#define CLB_OUTPUT_LUT_2_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_2_IN2_S   10U
#define CLB_OUTPUT_LUT_2_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_2_FN_S    15U
#define CLB_OUTPUT_LUT_2_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_3寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_3_IN0_S   0U
#define CLB_OUTPUT_LUT_3_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_3_IN1_S   5U
#define CLB_OUTPUT_LUT_3_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_3_IN2_S   10U
#define CLB_OUTPUT_LUT_3_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_3_FN_S    15U
#define CLB_OUTPUT_LUT_3_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_4寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_4_IN0_S   0U
#define CLB_OUTPUT_LUT_4_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_4_IN1_S   5U
#define CLB_OUTPUT_LUT_4_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_4_IN2_S   10U
#define CLB_OUTPUT_LUT_4_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_4_FN_S    15U
#define CLB_OUTPUT_LUT_4_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_5寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_5_IN0_S   0U
#define CLB_OUTPUT_LUT_5_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_5_IN1_S   5U
#define CLB_OUTPUT_LUT_5_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_5_IN2_S   10U
#define CLB_OUTPUT_LUT_5_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_5_FN_S    15U
#define CLB_OUTPUT_LUT_5_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_6寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_6_IN0_S   0U
#define CLB_OUTPUT_LUT_6_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_6_IN1_S   5U
#define CLB_OUTPUT_LUT_6_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_6_IN2_S   10U
#define CLB_OUTPUT_LUT_6_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_6_FN_S    15U
#define CLB_OUTPUT_LUT_6_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_OUTPUT_LUT_7寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_OUTPUT_LUT_7_IN0_S   0U
#define CLB_OUTPUT_LUT_7_IN0_M   0x1FU       // 输出LUT的IN0选择值
#define CLB_OUTPUT_LUT_7_IN1_S   5U
#define CLB_OUTPUT_LUT_7_IN1_M   0x3E0U      // 输出LUT的IN1选择值
#define CLB_OUTPUT_LUT_7_IN2_S   10U
#define CLB_OUTPUT_LUT_7_IN2_M   0x7C00U     // 输出LUT的IN2选择值
#define CLB_OUTPUT_LUT_7_FN_S    15U
#define CLB_OUTPUT_LUT_7_FN_M    0x7F8000U   // 输出LUT的输出函数

//*************************************************************************************************
//
// 以下是CLB_HLC_EVENT_SEL寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_HLC_EVENT_SEL_EVENT0_SEL_S   0U
#define CLB_HLC_EVENT_SEL_EVENT0_SEL_M   0x1FU      // 事件选择0
#define CLB_HLC_EVENT_SEL_EVENT1_SEL_S   5U
#define CLB_HLC_EVENT_SEL_EVENT1_SEL_M   0x3E0U     // 事件选择1
#define CLB_HLC_EVENT_SEL_EVENT2_SEL_S   10U
#define CLB_HLC_EVENT_SEL_EVENT2_SEL_M   0x7C00U    // 事件选择2
#define CLB_HLC_EVENT_SEL_EVENT3_SEL_S   15U
#define CLB_HLC_EVENT_SEL_EVENT3_SEL_M   0xF8000U   // 事件选择3


//*************************************************************************************************
//
// 以下是CLB_LOAD_EN寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LOAD_EN_LOAD_EN     0x1U   // 加载使能
#define CLB_LOAD_EN_GLOBAL_EN   0x2U   // 全局使能
#define CLB_LOAD_EN_STOP        0x4U   // 调试停止控制

//*************************************************************************************************
//
// 以下是CLB_LOAD_ADDR寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LOAD_ADDR_ADDR_S   0U
#define CLB_LOAD_ADDR_ADDR_M   0x3FU   // 间接地址

//*************************************************************************************************
//
// 以下是CLB_INPUT_FILTER寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_INPUT_FILTER_FIN0_S   0U
#define CLB_INPUT_FILTER_FIN0_M   0x3U        // 输入滤波器控制0
#define CLB_INPUT_FILTER_FIN1_S   2U
#define CLB_INPUT_FILTER_FIN1_M   0xCU        // 输入滤波器控制1
#define CLB_INPUT_FILTER_FIN2_S   4U
#define CLB_INPUT_FILTER_FIN2_M   0x30U       // 输入滤波器控制2
#define CLB_INPUT_FILTER_FIN3_S   6U
#define CLB_INPUT_FILTER_FIN3_M   0xC0U       // 输入滤波器控制3
#define CLB_INPUT_FILTER_FIN4_S   8U
#define CLB_INPUT_FILTER_FIN4_M   0x300U      // 输入滤波器控制4
#define CLB_INPUT_FILTER_FIN5_S   10U
#define CLB_INPUT_FILTER_FIN5_M   0xC00U      // 输入滤波器控制5
#define CLB_INPUT_FILTER_FIN6_S   12U
#define CLB_INPUT_FILTER_FIN6_M   0x3000U     // 输入滤波器控制6
#define CLB_INPUT_FILTER_FIN7_S   14U
#define CLB_INPUT_FILTER_FIN7_M   0xC000U     // 输入滤波器控制7
#define CLB_INPUT_FILTER_SYNC0    0x10000U    // 同步器控制0
#define CLB_INPUT_FILTER_SYNC1    0x20000U    // 同步器控制1
#define CLB_INPUT_FILTER_SYNC2    0x40000U    // 同步器控制2
#define CLB_INPUT_FILTER_SYNC3    0x80000U    // 同步器控制3
#define CLB_INPUT_FILTER_SYNC4    0x100000U   // 同步器控制4
#define CLB_INPUT_FILTER_SYNC5    0x200000U   // 同步器控制5
#define CLB_INPUT_FILTER_SYNC6    0x400000U   // 同步器控制6
#define CLB_INPUT_FILTER_SYNC7    0x800000U   // 同步器控制7

//*************************************************************************************************
//
// 以下是CLB_IN_MUX_SEL_0寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_0   0x1U    // 选择GP寄存器0
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_1   0x2U    // 选择GP寄存器1
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_2   0x4U    // 选择GP寄存器2
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_3   0x8U    // 选择GP寄存器3
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_4   0x10U   // 选择GP寄存器4
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_5   0x20U   // 选择GP寄存器5
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_6   0x40U   // 选择GP寄存器6
#define CLB_IN_MUX_SEL_0_SEL_GP_IN_7   0x80U   // 选择GP寄存器7

//*************************************************************************************************
//
// 以下是CLB_LCL_MUX_SEL_1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_0_S   0U
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_0_M   0x1FU      // 本地多路复用选择0
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_1_S   5U
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_1_M   0x3E0U     // 本地多路复用选择1
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_2_S   10U
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_2_M   0x7C00U    // 本地多路复用选择2
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_3_S   15U
#define CLB_LCL_MUX_SEL_1_LCL_MUX_SEL_IN_3_M   0xF8000U   // 本地多路复用选择3

//*************************************************************************************************
//
// 以下是CLB_LCL_MUX_SEL_2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_4_S   0U
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_4_M   0x1FU      // 本地多路复用选择4
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_5_S   5U
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_5_M   0x3E0U     // 本地多路复用选择5
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_6_S   10U
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_6_M   0x7C00U    // 本地多路复用选择6
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_7_S   15U
#define CLB_LCL_MUX_SEL_2_LCL_MUX_SEL_IN_7_M   0xF8000U   // 本地多路复用选择7

//*************************************************************************************************
//
// 以下是CLB_BUF_PTR寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_BUF_PTR_PULL_S   0U
#define CLB_BUF_PTR_PULL_M   0xFFU       // 拉取数据指针
#define CLB_BUF_PTR_PUSH_S   16U
#define CLB_BUF_PTR_PUSH_M   0xFF0000U   // 推送数据指针

//*************************************************************************************************
//
// 以下是CLB_GP_REG寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_GP_REG_REG_S   0U
#define CLB_GP_REG_REG_M   0xFFU   // 通用位寄存器

//*************************************************************************************************
//
// 以下是CLB_GLBL_MUX_SEL_1寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_0_S   0U
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_0_M   0x7FU        // 全局多路复用选择0
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_1_S   7U
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_1_M   0x3F80U      // 全局多路复用选择1
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_2_S   14U
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_2_M   0x1FC000U    // 全局多路复用选择2
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_3_S   21U
#define CLB_GLBL_MUX_SEL_1_GLBL_MUX_SEL_IN_3_M   0xFE00000U   // 全局多路复用选择3

//*************************************************************************************************
//
// 以下是CLB_GLBL_MUX_SEL_2寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_4_S   0U
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_4_M   0x7FU        // 全局多路复用选择4
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_5_S   7U
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_5_M   0x3F80U      // 全局多路复用选择5
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_6_S   14U
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_6_M   0x1FC000U    // 全局多路复用选择6
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_7_S   21U
#define CLB_GLBL_MUX_SEL_2_GLBL_MUX_SEL_IN_7_M   0xFE00000U   // 全局多路复用选择7

//*************************************************************************************************
//
// 以下是CLB_INTR_TAG_REG寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_INTR_TAG_REG_TAG_S   0U
#define CLB_INTR_TAG_REG_TAG_M   0x3FU   // 中断标签

//*************************************************************************************************
//
// 以下是CLB_LOCK寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_LOCK_LOCK    0x1U          // 锁定使能
#define CLB_LOCK_KEY_S   16U
#define CLB_LOCK_KEY_M   0xFFFF0000U   // 启用写入的密钥

//*************************************************************************************************
//
// 以下是CLB_DBG_OUT寄存器中位字段的定义
//
//*************************************************************************************************
#define CLB_DBG_OUT_COUNT0_MATCH2   0x2U          // 单元0的COUNT_MATCH2
#define CLB_DBG_OUT_COUNT0_ZERO     0x4U          // 单元0的COUNT_ZERO
#define CLB_DBG_OUT_COUNT0_MATCH1   0x8U          // 单元0的COUNT_MATCH1
#define CLB_DBG_OUT_FSM0_S0         0x10U         // 单元0的FSM_S0
#define CLB_DBG_OUT_FSM0_S1         0x20U         // 单元0的FSM_S1
#define CLB_DBG_OUT_FSM0_LUTOUT     0x40U         // 单元0的FSM_LUT_OUT
#define CLB_DBG_OUT_LUT40_OUT       0x80U         // 单元0的LUT4_OUT
#define CLB_DBG_OUT_COUNT1_MATCH2   0x200U        // 单元1的COUNT_MATCH2
#define CLB_DBG_OUT_COUNT1_ZERO     0x400U        // 单元1的COUNT_ZERO
#define CLB_DBG_OUT_COUNT1_MATCH1   0x800U        // 单元1的COUNT_MATCH1
#define CLB_DBG_OUT_FSM1_S0         0x1000U       // 单元1的FSM_S0
#define CLB_DBG_OUT_FSM1_S1         0x2000U       // 单元1的FSM_S1
#define CLB_DBG_OUT_FSM1_LUTOUT     0x4000U       // 单元1的FSM_LUT_OUT
#define CLB_DBG_OUT_LUT41_OUT       0x8000U       // 单元1的LUT4_OUT
#define CLB_DBG_OUT_COUNT2_MATCH2   0x20000U      // 单元2的COUNT_MATCH2
#define CLB_DBG_OUT_COUNT2_ZERO     0x40000U      // 单元2的COUNT_ZERO
#define CLB_DBG_OUT_COUNT2_MATCH1   0x80000U      // 单元2的COUNT_MATCH1
#define CLB_DBG_OUT_FSM2_S0         0x100000U     // 单元2的FSM_S0
#define CLB_DBG_OUT_FSM2_S1         0x200000U     // 单元2的FSM_S1
#define CLB_DBG_OUT_FSM2_LUTOUT     0x400000U     // 单元2的FSM_LUT_OUT
#define CLB_DBG_OUT_LUT42_OUT       0x800000U     // 单元2的LUT4_OUT
#define CLB_DBG_OUT_OUT0            0x1000000U    // CELL输出0
#define CLB_DBG_OUT_OUT1            0x2000000U    // CELL输出1
#define CLB_DBG_OUT_OUT2            0x4000000U    // CELL输出2
#define CLB_DBG_OUT_OUT3            0x8000000U    // CELL输出3
#define CLB_DBG_OUT_OUT4            0x10000000U   // CELL输出4
#define CLB_DBG_OUT_OUT5            0x20000000U   // CELL输出5
#define CLB_DBG_OUT_OUT6            0x40000000U   // CELL输出6
#define CLB_DBG_OUT_OUT7            0x80000000U   // CELL输出7




#endif