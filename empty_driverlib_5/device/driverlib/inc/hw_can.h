//###########################################################################
//
// FILE:    hw_can.h
//
// TITLE:   CAN寄存器定义
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

#ifndef HW_CAN_H
#define HW_CAN_H

//*************************************************************************************************
//
// 以下是CAN寄存器偏移量的定义
//
//*************************************************************************************************
#define CAN_O_CTL           0x0U     // CAN控制寄存器
#define CAN_O_ES            0x4U     // 错误和状态寄存器
#define CAN_O_ERRC          0x8U     // 错误计数器寄存器
#define CAN_O_BTR           0xCU     // 位定时寄存器
#define CAN_O_INT           0x10U    // 中断寄存器
#define CAN_O_TEST          0x14U    // 测试寄存器
#define CAN_O_PERR          0x1CU    // CAN奇偶校验错误代码寄存器
#define CAN_O_RAM_INIT      0x40U    // CAN RAM初始化寄存器
#define CAN_O_GLB_INT_EN    0x50U    // CAN全局中断使能寄存器
#define CAN_O_GLB_INT_FLG   0x54U    // CAN全局中断标志寄存器
#define CAN_O_GLB_INT_CLR   0x58U    // CAN全局中断清除寄存器
#define CAN_O_ABOTR         0x80U    // 自动总线开启时间寄存器
#define CAN_O_TXRQ_X        0x84U    // CAN发送请求寄存器
#define CAN_O_TXRQ_21       0x88U    // CAN发送请求2_1寄存器
#define CAN_O_NDAT_X        0x98U    // CAN新数据寄存器
#define CAN_O_NDAT_21       0x9CU    // CAN新数据2_1寄存器
#define CAN_O_IPEN_X        0xACU    // CAN中断挂起寄存器
#define CAN_O_IPEN_21       0xB0U    // CAN中断挂起2_1寄存器
#define CAN_O_MVAL_X        0xC0U    // CAN消息有效寄存器
#define CAN_O_MVAL_21       0xC4U    // CAN消息有效2_1寄存器
#define CAN_O_IP_MUX21      0xD8U    // CAN中断多路复用器2_1寄存器
#define CAN_O_IF1CMD        0x100U   // IF1命令寄存器
#define CAN_O_IF1MSK        0x104U   // IF1掩码寄存器
#define CAN_O_IF1ARB        0x108U   // IF1仲裁寄存器
#define CAN_O_IF1MCTL       0x10CU   // IF1消息控制寄存器
#define CAN_O_IF1DATA       0x110U   // IF1数据A寄存器
#define CAN_O_IF1DATB       0x114U   // IF1数据B寄存器
#define CAN_O_IF2CMD        0x120U   // IF2命令寄存器
#define CAN_O_IF2MSK        0x124U   // IF2掩码寄存器
#define CAN_O_IF2ARB        0x128U   // IF2仲裁寄存器
#define CAN_O_IF2MCTL       0x12CU   // IF2消息控制寄存器
#define CAN_O_IF2DATA       0x130U   // IF2数据A寄存器
#define CAN_O_IF2DATB       0x134U   // IF2数据B寄存器
#define CAN_O_IF3OBS        0x140U   // IF3观察寄存器
#define CAN_O_IF3MSK        0x144U   // IF3掩码寄存器
#define CAN_O_IF3ARB        0x148U   // IF3仲裁寄存器
#define CAN_O_IF3MCTL       0x14CU   // IF3消息控制寄存器
#define CAN_O_IF3DATA       0x150U   // IF3数据A寄存器
#define CAN_O_IF3DATB       0x154U   // IF3数据B寄存器
#define CAN_O_IF3UPD        0x160U   // IF3更新使能寄存器


//*************************************************************************************************
//
// 以下是CAN_CTL寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_CTL_INIT      0x1U       // 初始化
#define CAN_CTL_IE0       0x2U       // 中断线0使能
#define CAN_CTL_SIE       0x4U       // 状态变化中断使能
#define CAN_CTL_EIE       0x8U       // 错误中断使能
#define CAN_CTL_DAR       0x20U      // 禁用自动重传
#define CAN_CTL_CCE       0x40U      // 配置更改使能
#define CAN_CTL_TEST      0x80U      // 测试模式使能
#define CAN_CTL_IDS       0x100U     // 中断调试支持使能
#define CAN_CTL_ABO       0x200U     // 自动总线开启使能
#define CAN_CTL_PMD_S     10U
#define CAN_CTL_PMD_M     0x3C00U    // 奇偶校验开启/关闭
#define CAN_CTL_SWR       0x8000U    // 软件复位使能
#define CAN_CTL_INITDBG   0x10000U   // 调试模式状态
#define CAN_CTL_IE1       0x20000U   // 中断线1使能禁用

//*************************************************************************************************
//
// 以下是CAN_ES寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_ES_LEC_S   0U
#define CAN_ES_LEC_M   0x7U     // 最后错误代码
#define CAN_ES_TXOK    0x8U     // 发送状态
#define CAN_ES_RXOK    0x10U    // 接收状态
#define CAN_ES_EPASS   0x20U    // 错误被动状态
#define CAN_ES_EWARN   0x40U    // 警告状态
#define CAN_ES_BOFF    0x80U    // 总线关闭状态
#define CAN_ES_PER     0x100U   // 检测到奇偶校验错误

//*************************************************************************************************
//
// 以下是CAN_ERRC寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_ERRC_TEC_S   0U
#define CAN_ERRC_TEC_M   0xFFU     // 发送错误计数器
#define CAN_ERRC_REC_S   8U
#define CAN_ERRC_REC_M   0x7F00U   // 接收错误计数器
#define CAN_ERRC_RP      0x8000U   // 接收错误被动

//*************************************************************************************************
//
// 以下是CAN_BTR寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_BTR_BRP_S     0U
#define CAN_BTR_BRP_M     0x3FU      // 波特率预分频器
#define CAN_BTR_SJW_S     6U
#define CAN_BTR_SJW_M     0xC0U      // 同步跳转宽度
#define CAN_BTR_TSEG1_S   8U
#define CAN_BTR_TSEG1_M   0xF00U     // 时间段
#define CAN_BTR_TSEG2_S   12U
#define CAN_BTR_TSEG2_M   0x7000U    // 时间段
#define CAN_BTR_BRPE_S    16U
#define CAN_BTR_BRPE_M    0xF0000U   // 波特率预分频器扩展

//*************************************************************************************************
//
// 以下是CAN_INT寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_INT_INT0ID_S   0U
#define CAN_INT_INT0ID_M   0xFFFFU     // 中断标识符
#define CAN_INT_INT1ID_S   16U
#define CAN_INT_INT1ID_M   0xFF0000U   // 中断1标识符

//*************************************************************************************************
//
// 以下是CAN_TEST寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_TEST_SILENT   0x8U     // 静默模式
#define CAN_TEST_LBACK    0x10U    // 回环模式
#define CAN_TEST_TX_S     5U
#define CAN_TEST_TX_M     0x60U    // CANTX引脚控制
#define CAN_TEST_RX       0x80U    // CANRX引脚状态
#define CAN_TEST_EXL      0x100U   // 外部回环模式
#define CAN_TEST_RDA      0x200U   // RAM直接访问使能

//*************************************************************************************************
//
// 以下是CAN_PERR寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_PERR_MSG_NUM_S    0U
#define CAN_PERR_MSG_NUM_M    0xFFU    // 消息编号
#define CAN_PERR_WORD_NUM_S   8U
#define CAN_PERR_WORD_NUM_M   0x700U   // 字编号

//*************************************************************************************************
//
// 以下是CAN_RAM_INIT寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_RAM_INIT_KEY0            0x1U    // 密钥0
#define CAN_RAM_INIT_KEY1            0x2U    // 密钥1
#define CAN_RAM_INIT_KEY2            0x4U    // 密钥2
#define CAN_RAM_INIT_KEY3            0x8U    // 密钥3
#define CAN_RAM_INIT_CAN_RAM_INIT    0x10U   // 初始化CAN邮箱RAM
#define CAN_RAM_INIT_RAM_INIT_DONE   0x20U   // CAN RAM初始化完成

//*************************************************************************************************
//
// 以下是CAN_GLB_INT_EN寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_GLB_INT_EN_GLBINT0_EN   0x1U   // CANINT0的全局中断使能
#define CAN_GLB_INT_EN_GLBINT1_EN   0x2U   // CANINT1的全局中断使能

//*************************************************************************************************
//
// 以下是CAN_GLB_INT_FLG寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_GLB_INT_FLG_INT0_FLG   0x1U   // CANINT0的全局中断标志
#define CAN_GLB_INT_FLG_INT1_FLG   0x2U   // CANINT1的全局中断标志

//*************************************************************************************************
//
// 以下是CAN_GLB_INT_CLR寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_GLB_INT_CLR_INT0_FLG_CLR   0x1U   // CANINT0的全局中断标志清除
#define CAN_GLB_INT_CLR_INT1_FLG_CLR   0x2U   // CANINT1的全局中断标志清除

//*************************************************************************************************
//
// 以下是CAN_TXRQ_X寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_TXRQ_X_TXRQSTREG1_S   0U
#define CAN_TXRQ_X_TXRQSTREG1_M   0x3U   // 发送请求寄存器1
#define CAN_TXRQ_X_TXRQSTREG2_S   2U
#define CAN_TXRQ_X_TXRQSTREG2_M   0xCU   // 发送请求寄存器2

//*************************************************************************************************
//
// 以下是CAN_NDAT_X寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_NDAT_X_NEWDATREG1_S   0U
#define CAN_NDAT_X_NEWDATREG1_M   0x3U   // 新数据寄存器1
#define CAN_NDAT_X_NEWDATREG2_S   2U
#define CAN_NDAT_X_NEWDATREG2_M   0xCU   // 新数据寄存器2

//*************************************************************************************************
//
// 以下是CAN_IPEN_X寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IPEN_X_INTPNDREG1_S   0U
#define CAN_IPEN_X_INTPNDREG1_M   0x3U   // 中断挂起寄存器1
#define CAN_IPEN_X_INTPNDREG2_S   2U
#define CAN_IPEN_X_INTPNDREG2_M   0xCU   // 中断挂起寄存器2

//*************************************************************************************************
//
// 以下是CAN_MVAL_X寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_MVAL_X_MSGVALREG1_S   0U
#define CAN_MVAL_X_MSGVALREG1_M   0x3U   // 消息有效寄存器1
#define CAN_MVAL_X_MSGVALREG2_S   2U
#define CAN_MVAL_X_MSGVALREG2_M   0xCU   // 消息有效寄存器2

//*************************************************************************************************
//
// 以下是CAN_IF1CMD寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1CMD_MSG_NUM_S   0U
#define CAN_IF1CMD_MSG_NUM_M   0xFFU       // 消息编号
#define CAN_IF1CMD_BUSY        0x8000U     // 忙标志
#define CAN_IF1CMD_DATA_B      0x10000U    // 访问数据字节4-7
#define CAN_IF1CMD_DATA_A      0x20000U    // 访问数据字节0-3
#define CAN_IF1CMD_TXRQST      0x40000U    // 访问发送请求位
#define CAN_IF1CMD_CLRINTPND   0x80000U    // 清除中断挂起位
#define CAN_IF1CMD_CONTROL     0x100000U   // 访问控制位
#define CAN_IF1CMD_ARB         0x200000U   // 访问仲裁位
#define CAN_IF1CMD_MASK        0x400000U   // 访问掩码位
#define CAN_IF1CMD_DIR         0x800000U   // 写入/读取方向

//*************************************************************************************************
//
// 以下是CAN_IF1MSK寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1MSK_MSK_S   0U
#define CAN_IF1MSK_MSK_M   0x1FFFFFFFU   // 标识符掩码
#define CAN_IF1MSK_MDIR    0x40000000U   // 掩码消息方向
#define CAN_IF1MSK_MXTD    0x80000000U   // 掩码扩展标识符

//*************************************************************************************************
//
// 以下是CAN_IF1ARB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1ARB_ID_S     0U
#define CAN_IF1ARB_ID_M     0x1FFFFFFFU   // 消息标识符
#define CAN_IF1ARB_DIR      0x20000000U   // 消息方向
#define CAN_IF1ARB_XTD      0x40000000U   // 扩展标识符
#define CAN_IF1ARB_MSGVAL   0x80000000U   // 消息有效

//*************************************************************************************************
//
// 以下是CAN_IF1MCTL寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1MCTL_DLC_S    0U
#define CAN_IF1MCTL_DLC_M    0xFU      // 数据长度代码
#define CAN_IF1MCTL_EOB      0x80U     // 块结束
#define CAN_IF1MCTL_TXRQST   0x100U    // 发送请求
#define CAN_IF1MCTL_RMTEN    0x200U    // 远程使能
#define CAN_IF1MCTL_RXIE     0x400U    // 接收中断使能
#define CAN_IF1MCTL_TXIE     0x800U    // 发送中断使能
#define CAN_IF1MCTL_UMASK    0x1000U   // 使用验收掩码
#define CAN_IF1MCTL_INTPND   0x2000U   // 中断挂起
#define CAN_IF1MCTL_MSGLST   0x4000U   // 消息丢失
#define CAN_IF1MCTL_NEWDAT   0x8000U   // 新数据

//*************************************************************************************************
//
// 以下是CAN_IF1DATA寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1DATA_DATA_0_S   0U
#define CAN_IF1DATA_DATA_0_M   0xFFU         // 数据字节0
#define CAN_IF1DATA_DATA_1_S   8U
#define CAN_IF1DATA_DATA_1_M   0xFF00U       // 数据字节1
#define CAN_IF1DATA_DATA_2_S   16U
#define CAN_IF1DATA_DATA_2_M   0xFF0000U     // 数据字节2
#define CAN_IF1DATA_DATA_3_S   24U
#define CAN_IF1DATA_DATA_3_M   0xFF000000U   // 数据字节3

//*************************************************************************************************
//
// 以下是CAN_IF1DATB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF1DATB_DATA_4_S   0U
#define CAN_IF1DATB_DATA_4_M   0xFFU         // 数据字节4
#define CAN_IF1DATB_DATA_5_S   8U
#define CAN_IF1DATB_DATA_5_M   0xFF00U       // 数据字节5
#define CAN_IF1DATB_DATA_6_S   16U
#define CAN_IF1DATB_DATA_6_M   0xFF0000U     // 数据字节6
#define CAN_IF1DATB_DATA_7_S   24U
#define CAN_IF1DATB_DATA_7_M   0xFF000000U   // 数据字节7

//*************************************************************************************************
//
// 以下是CAN_IF2CMD寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2CMD_MSG_NUM_S   0U
#define CAN_IF2CMD_MSG_NUM_M   0xFFU       // 消息编号
#define CAN_IF2CMD_BUSY        0x8000U     // 忙标志
#define CAN_IF2CMD_DATA_B      0x10000U    // 访问数据字节4-7
#define CAN_IF2CMD_DATA_A      0x20000U    // 访问数据字节0-3
#define CAN_IF2CMD_TXRQST      0x40000U    // 访问发送请求位
#define CAN_IF2CMD_CLRINTPND   0x80000U    // 清除中断挂起位
#define CAN_IF2CMD_CONTROL     0x100000U   // 访问控制位
#define CAN_IF2CMD_ARB         0x200000U   // 访问仲裁位
#define CAN_IF2CMD_MASK        0x400000U   // 访问掩码位
#define CAN_IF2CMD_DIR         0x800000U   // 写入/读取方向

//*************************************************************************************************
//
// 以下是CAN_IF2MSK寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2MSK_MSK_S   0U
#define CAN_IF2MSK_MSK_M   0x1FFFFFFFU   // 标识符掩码
#define CAN_IF2MSK_MDIR    0x40000000U   // 掩码消息方向
#define CAN_IF2MSK_MXTD    0x80000000U   // 掩码扩展标识符

//*************************************************************************************************
//
// 以下是CAN_IF2ARB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2ARB_ID_S     0U
#define CAN_IF2ARB_ID_M     0x1FFFFFFFU   // 消息标识符
#define CAN_IF2ARB_DIR      0x20000000U   // 消息方向
#define CAN_IF2ARB_XTD      0x40000000U   // 扩展标识符
#define CAN_IF2ARB_MSGVAL   0x80000000U   // 消息有效

//*************************************************************************************************
//
// 以下是CAN_IF2MCTL寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2MCTL_DLC_S    0U
#define CAN_IF2MCTL_DLC_M    0xFU      // 数据长度代码
#define CAN_IF2MCTL_EOB      0x80U     // 块结束
#define CAN_IF2MCTL_TXRQST   0x100U    // 发送请求
#define CAN_IF2MCTL_RMTEN    0x200U    // 远程使能
#define CAN_IF2MCTL_RXIE     0x400U    // 接收中断使能
#define CAN_IF2MCTL_TXIE     0x800U    // 发送中断使能
#define CAN_IF2MCTL_UMASK    0x1000U   // 使用验收掩码
#define CAN_IF2MCTL_INTPND   0x2000U   // 中断挂起
#define CAN_IF2MCTL_MSGLST   0x4000U   // 消息丢失
#define CAN_IF2MCTL_NEWDAT   0x8000U   // 新数据

//*************************************************************************************************
//
// 以下是CAN_IF2DATA寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2DATA_DATA_0_S   0U
#define CAN_IF2DATA_DATA_0_M   0xFFU         // 数据字节0
#define CAN_IF2DATA_DATA_1_S   8U
#define CAN_IF2DATA_DATA_1_M   0xFF00U       // 数据字节1
#define CAN_IF2DATA_DATA_2_S   16U
#define CAN_IF2DATA_DATA_2_M   0xFF0000U     // 数据字节2
#define CAN_IF2DATA_DATA_3_S   24U
#define CAN_IF2DATA_DATA_3_M   0xFF000000U   // 数据字节3

//*************************************************************************************************
//
// 以下是CAN_IF2DATB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF2DATB_DATA_4_S   0U
#define CAN_IF2DATB_DATA_4_M   0xFFU         // 数据字节4
#define CAN_IF2DATB_DATA_5_S   8U
#define CAN_IF2DATB_DATA_5_M   0xFF00U       // 数据字节5
#define CAN_IF2DATB_DATA_6_S   16U
#define CAN_IF2DATB_DATA_6_M   0xFF0000U     // 数据字节6
#define CAN_IF2DATB_DATA_7_S   24U
#define CAN_IF2DATB_DATA_7_M   0xFF000000U   // 数据字节7

//*************************************************************************************************
//
// 以下是CAN_IF3OBS寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3OBS_MASK     0x1U      // 掩码数据读取观察
#define CAN_IF3OBS_ARB      0x2U      // 仲裁数据读取观察
#define CAN_IF3OBS_CTRL     0x4U      // 控制读取观察
#define CAN_IF3OBS_DATA_A   0x8U      // 数据A读取观察
#define CAN_IF3OBS_DATA_B   0x10U     // 数据B读取观察
#define CAN_IF3OBS_IF3SM    0x100U    // IF3掩码数据读取访问状态
#define CAN_IF3OBS_IF3SA    0x200U    // IF3仲裁数据读取访问状态
#define CAN_IF3OBS_IF3SC    0x400U    // IF3控制位读取访问状态
#define CAN_IF3OBS_IF3SDA   0x800U    // IF3数据A读取访问状态
#define CAN_IF3OBS_IF3SDB   0x1000U   // IF3数据B读取访问状态
#define CAN_IF3OBS_IF3UPD   0x8000U   // IF3更新数据

//*************************************************************************************************
//
// 以下是CAN_IF3MSK寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3MSK_MSK_S   0U
#define CAN_IF3MSK_MSK_M   0x1FFFFFFFU   // 掩码
#define CAN_IF3MSK_MDIR    0x40000000U   // 掩码消息方向
#define CAN_IF3MSK_MXTD    0x80000000U   // 掩码扩展标识符

//*************************************************************************************************
//
// 以下是CAN_IF3ARB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3ARB_ID_S     0U
#define CAN_IF3ARB_ID_M     0x1FFFFFFFU   // 消息标识符
#define CAN_IF3ARB_DIR      0x20000000U   // 消息方向
#define CAN_IF3ARB_XTD      0x40000000U   // 扩展标识符
#define CAN_IF3ARB_MSGVAL   0x80000000U   // 消息有效

//*************************************************************************************************
//
// 以下是CAN_IF3MCTL寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3MCTL_DLC_S    0U
#define CAN_IF3MCTL_DLC_M    0xFU      // 数据长度代码
#define CAN_IF3MCTL_EOB      0x80U     // 块结束
#define CAN_IF3MCTL_TXRQST   0x100U    // 发送请求
#define CAN_IF3MCTL_RMTEN    0x200U    // 远程使能
#define CAN_IF3MCTL_RXIE     0x400U    // 接收中断使能
#define CAN_IF3MCTL_TXIE     0x800U    // 发送中断使能
#define CAN_IF3MCTL_UMASK    0x1000U   // 使用验收掩码
#define CAN_IF3MCTL_INTPND   0x2000U   // 中断挂起
#define CAN_IF3MCTL_MSGLST   0x4000U   // 消息丢失
#define CAN_IF3MCTL_NEWDAT   0x8000U   // 新数据

//*************************************************************************************************
//
// 以下是CAN_IF3DATA寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3DATA_DATA_0_S   0U
#define CAN_IF3DATA_DATA_0_M   0xFFU         // 数据字节0
#define CAN_IF3DATA_DATA_1_S   8U
#define CAN_IF3DATA_DATA_1_M   0xFF00U       // 数据字节1
#define CAN_IF3DATA_DATA_2_S   16U
#define CAN_IF3DATA_DATA_2_M   0xFF0000U     // 数据字节2
#define CAN_IF3DATA_DATA_3_S   24U
#define CAN_IF3DATA_DATA_3_M   0xFF000000U   // 数据字节3

//*************************************************************************************************
//
// 以下是CAN_IF3DATB寄存器中位字段的定义
//
//*************************************************************************************************
#define CAN_IF3DATB_DATA_4_S   0U
#define CAN_IF3DATB_DATA_4_M   0xFFU         // 数据字节4
#define CAN_IF3DATB_DATA_5_S   8U
#define CAN_IF3DATB_DATA_5_M   0xFF00U       // 数据字节5
#define CAN_IF3DATB_DATA_6_S   16U
#define CAN_IF3DATB_DATA_6_M   0xFF0000U     // 数据字节6
#define CAN_IF3DATB_DATA_7_S   24U
#define CAN_IF3DATB_DATA_7_M   0xFF000000U   // 数据字节7



#endif