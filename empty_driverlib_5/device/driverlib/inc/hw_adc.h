//###########################################################################
//
// FILE:    hw_adc.h
//
// TITLE:   ADC寄存器定义
//
//###########################################################################
// 
// C2000Ware v6.00.01.00
//
// Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com
//
// 版权所有：德州仪器公司，保留所有权利。
// 可以以源文件和二进制形式重新分发和使用，无论是否修改，
// 只要满足以下条件：
// 
//   1. 源文件的重新分发必须保留上述版权声明、本条件列表和以下免责声明。
// 
//   2. 二进制形式的重新分发必须在随分发提供的文档和/或其他材料中复制上述版权声明、
//      本条件列表和以下免责声明。
// 
//   3. 未经特定的事先书面许可，不得使用德州仪器公司或其贡献者的名称来
//      认可或推广源自本软件的产品。
// 
// 本软件由版权所有者和贡献者"按原样"提供，不承担任何明示或暗示的担保，
// 包括但不限于对适销性和特定用途适用性的暗示担保。在任何情况下，
// 版权所有者或贡献者均不对任何直接、间接、偶然、特殊、惩戒性或后果性的
// 损害（包括但不限于购买替代商品或服务；使用、数据或利润的损失；
// 或业务中断）承担责任，无论其是如何引起的，也无论基于何种责任理论，
// 无论是合同责任、严格责任还是侵权责任（包括疏忽或其他方式），
// 即使已被告知发生此类损害的可能性，也不承担责任。
// $
//###########################################################################

#ifndef HW_ADC_H
#define HW_ADC_H

//*************************************************************************************************
//
// 以下是ADC寄存器偏移量的定义
//
//*************************************************************************************************
#define ADC_O_CTL1         0x0U    // ADC控制1寄存器
#define ADC_O_CTL2         0x1U    // ADC控制2寄存器
#define ADC_O_BURSTCTL     0x2U    // ADC突发控制寄存器
#define ADC_O_INTFLG       0x3U    // ADC中断标志寄存器
#define ADC_O_INTFLGCLR    0x4U    // ADC中断标志清除寄存器
#define ADC_O_INTOVF       0x5U    // ADC中断溢出寄存器
#define ADC_O_INTOVFCLR    0x6U    // ADC中断溢出清除寄存器
#define ADC_O_INTSEL1N2    0x7U    // ADC中断1和2选择寄存器
#define ADC_O_INTSEL3N4    0x8U    // ADC中断3和4选择寄存器
#define ADC_O_SOCPRICTL    0x9U    // ADC SOC优先级控制寄存器
#define ADC_O_INTSOCSEL1   0xAU    // ADC中断SOC选择1寄存器
#define ADC_O_INTSOCSEL2   0xBU    // ADC中断SOC选择2寄存器
#define ADC_O_SOCFLG1      0xCU    // ADC SOC标志1寄存器
#define ADC_O_SOCFRC1      0xDU    // ADC SOC强制触发1寄存器
#define ADC_O_SOCOVF1      0xEU    // ADC SOC溢出1寄存器
#define ADC_O_SOCOVFCLR1   0xFU    // ADC SOC溢出清除1寄存器
#define ADC_O_SOC0CTL      0x10U   // ADC SOC0控制寄存器
#define ADC_O_SOC1CTL      0x12U   // ADC SOC1控制寄存器
#define ADC_O_SOC2CTL      0x14U   // ADC SOC2控制寄存器
#define ADC_O_SOC3CTL      0x16U   // ADC SOC3控制寄存器
#define ADC_O_SOC4CTL      0x18U   // ADC SOC4控制寄存器
#define ADC_O_SOC5CTL      0x1AU   // ADC SOC5控制寄存器
#define ADC_O_SOC6CTL      0x1CU   // ADC SOC6控制寄存器
#define ADC_O_SOC7CTL      0x1EU   // ADC SOC7控制寄存器
#define ADC_O_SOC8CTL      0x20U   // ADC SOC8控制寄存器
#define ADC_O_SOC9CTL      0x22U   // ADC SOC9控制寄存器
#define ADC_O_SOC10CTL     0x24U   // ADC SOC10控制寄存器
#define ADC_O_SOC11CTL     0x26U   // ADC SOC11控制寄存器
#define ADC_O_SOC12CTL     0x28U   // ADC SOC12控制寄存器
#define ADC_O_SOC13CTL     0x2AU   // ADC SOC13控制寄存器
#define ADC_O_SOC14CTL     0x2CU   // ADC SOC14控制寄存器
#define ADC_O_SOC15CTL     0x2EU   // ADC SOC15控制寄存器
#define ADC_O_EVTSTAT      0x30U   // ADC事件状态寄存器
#define ADC_O_EVTCLR       0x32U   // ADC事件清除寄存器
#define ADC_O_EVTSEL       0x34U   // ADC事件选择寄存器
#define ADC_O_EVTINTSEL    0x36U   // ADC事件中断选择寄存器
#define ADC_O_OSDETECT     0x38U   // ADC开路和短路检测寄存器
#define ADC_O_COUNTER      0x39U   // ADC计数器寄存器
#define ADC_O_REV          0x3AU   // ADC版本寄存器
#define ADC_O_OFFTRIM      0x3BU   // ADC偏移校准寄存器
#define ADC_O_PPB1CONFIG   0x40U   // ADC PPB1配置寄存器
#define ADC_O_PPB1STAMP    0x41U   // ADC PPB1采样延迟时间戳寄存器
#define ADC_O_PPB1OFFCAL   0x42U   // ADC PPB1偏移校准寄存器
#define ADC_O_PPB1OFFREF   0x43U   // ADC PPB1偏移参考寄存器
#define ADC_O_PPB1TRIPHI   0x44U   // ADC PPB1阈值上限寄存器
#define ADC_O_PPB1TRIPLO   0x46U   // ADC PPB1阈值下限/触发时间戳寄存器
#define ADC_O_PPB2CONFIG   0x48U   // ADC PPB2配置寄存器
#define ADC_O_PPB2STAMP    0x49U   // ADC PPB2采样延迟时间戳寄存器
#define ADC_O_PPB2OFFCAL   0x4AU   // ADC PPB2偏移校准寄存器
#define ADC_O_PPB2OFFREF   0x4BU   // ADC PPB2偏移参考寄存器
#define ADC_O_PPB2TRIPHI   0x4CU   // ADC PPB2阈值上限寄存器
#define ADC_O_PPB2TRIPLO   0x4EU   // ADC PPB2阈值下限/触发时间戳寄存器
#define ADC_O_PPB3CONFIG   0x50U   // ADC PPB3配置寄存器
#define ADC_O_PPB3STAMP    0x51U   // ADC PPB3采样延迟时间戳寄存器
#define ADC_O_PPB3OFFCAL   0x52U   // ADC PPB3偏移校准寄存器
#define ADC_O_PPB3OFFREF   0x53U   // ADC PPB3偏移参考寄存器
#define ADC_O_PPB3TRIPHI   0x54U   // ADC PPB3阈值上限寄存器
#define ADC_O_PPB3TRIPLO   0x56U   // ADC PPB3阈值下限/触发时间戳寄存器
#define ADC_O_PPB4CONFIG   0x58U   // ADC PPB4配置寄存器
#define ADC_O_PPB4STAMP    0x59U   // ADC PPB4采样延迟时间戳寄存器
#define ADC_O_PPB4OFFCAL   0x5AU   // ADC PPB4偏移校准寄存器
#define ADC_O_PPB4OFFREF   0x5BU   // ADC PPB4偏移参考寄存器
#define ADC_O_PPB4TRIPHI   0x5CU   // ADC PPB4阈值上限寄存器
#define ADC_O_PPB4TRIPLO   0x5EU   // ADC PPB4阈值下限/触发时间戳寄存器
#define ADC_O_INLTRIM1     0x70U   // ADC线性度校准1寄存器
#define ADC_O_INLTRIM2     0x72U   // ADC线性度校准2寄存器
#define ADC_O_INLTRIM3     0x74U   // ADC线性度校准3寄存器
#define ADC_O_INLTRIM4     0x76U   // ADC线性度校准4寄存器
#define ADC_O_INLTRIM5     0x78U   // ADC线性度校准5寄存器
#define ADC_O_INLTRIM6     0x7AU   // ADC线性度校准6寄存器

#define ADC_O_RESULT0      0x0U    // ADC结果0寄存器
#define ADC_O_RESULT1      0x1U    // ADC结果1寄存器
#define ADC_O_RESULT2      0x2U    // ADC结果2寄存器
#define ADC_O_RESULT3      0x3U    // ADC结果3寄存器
#define ADC_O_RESULT4      0x4U    // ADC结果4寄存器
#define ADC_O_RESULT5      0x5U    // ADC结果5寄存器
#define ADC_O_RESULT6      0x6U    // ADC结果6寄存器
#define ADC_O_RESULT7      0x7U    // ADC结果7寄存器
#define ADC_O_RESULT8      0x8U    // ADC结果8寄存器
#define ADC_O_RESULT9      0x9U    // ADC结果9寄存器
#define ADC_O_RESULT10     0xAU    // ADC结果10寄存器
#define ADC_O_RESULT11     0xBU    // ADC结果11寄存器
#define ADC_O_RESULT12     0xCU    // ADC结果12寄存器
#define ADC_O_RESULT13     0xDU    // ADC结果13寄存器
#define ADC_O_RESULT14     0xEU    // ADC结果14寄存器
#define ADC_O_RESULT15     0xFU    // ADC结果15寄存器
#define ADC_O_PPB1RESULT   0x10U   // ADC后处理模块1结果寄存器
#define ADC_O_PPB2RESULT   0x12U   // ADC后处理模块2结果寄存器
#define ADC_O_PPB3RESULT   0x14U   // ADC后处理模块3结果寄存器
#define ADC_O_PPB4RESULT   0x16U   // ADC后处理模块4结果寄存器


//*************************************************************************************************
//
// 以下是ADCCTL1寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_CTL1_INTPULSEPOS   0x4U      // ADC中断脉冲位置
#define ADC_CTL1_ADCPWDNZ      0x80U     // ADC掉电控制
#define ADC_CTL1_ADCBSYCHN_S   8U
#define ADC_CTL1_ADCBSYCHN_M   0xF00U    // ADC忙通道
#define ADC_CTL1_ADCBSY        0x2000U   // ADC忙状态

//*************************************************************************************************
//
// 以下是ADCCTL2寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_CTL2_PRESCALE_S   0U
#define ADC_CTL2_PRESCALE_M   0xFU    // ADC时钟预分频
#define ADC_CTL2_RESOLUTION   0x40U   // SOC转换分辨率
#define ADC_CTL2_SIGNALMODE   0x80U   // SOC信号模式

//*************************************************************************************************
//
// 以下是ADCBURSTCTL寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_BURSTCTL_BURSTTRIGSEL_S   0U
#define ADC_BURSTCTL_BURSTTRIGSEL_M   0x3FU     // SOC突发触发源选择
#define ADC_BURSTCTL_BURSTSIZE_S      8U
#define ADC_BURSTCTL_BURSTSIZE_M      0xF00U    // SOC突发大小选择
#define ADC_BURSTCTL_BURSTEN          0x8000U   // SOC突发模式使能

//*************************************************************************************************
//
// 以下是ADCINTFLG寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTFLG_ADCINT1   0x1U   // ADC中断1标志
#define ADC_INTFLG_ADCINT2   0x2U   // ADC中断2标志
#define ADC_INTFLG_ADCINT3   0x4U   // ADC中断3标志
#define ADC_INTFLG_ADCINT4   0x8U   // ADC中断4标志

//*************************************************************************************************
//
// 以下是ADCINTFLGCLR寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTFLGCLR_ADCINT1   0x1U   // ADC中断1标志清除
#define ADC_INTFLGCLR_ADCINT2   0x2U   // ADC中断2标志清除
#define ADC_INTFLGCLR_ADCINT3   0x4U   // ADC中断3标志清除
#define ADC_INTFLGCLR_ADCINT4   0x8U   // ADC中断4标志清除

//*************************************************************************************************
//
// 以下是ADCINTOVF寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTOVF_ADCINT1   0x1U   // ADC中断1溢出标志
#define ADC_INTOVF_ADCINT2   0x2U   // ADC中断2溢出标志
#define ADC_INTOVF_ADCINT3   0x4U   // ADC中断3溢出标志
#define ADC_INTOVF_ADCINT4   0x8U   // ADC中断4溢出标志

//*************************************************************************************************
//
// 以下是ADCINTOVFCLR寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTOVFCLR_ADCINT1   0x1U   // ADC中断1溢出清除标志
#define ADC_INTOVFCLR_ADCINT2   0x2U   // ADC中断2溢出清除标志
#define ADC_INTOVFCLR_ADCINT3   0x4U   // ADC中断3溢出清除标志
#define ADC_INTOVFCLR_ADCINT4   0x8U   // ADC中断4溢出清除标志

//*************************************************************************************************
//
// 以下是ADCINTSEL1N2寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTSEL1N2_INT1SEL_S   0U
#define ADC_INTSEL1N2_INT1SEL_M   0xFU      // ADCINT1 EOC源选择
#define ADC_INTSEL1N2_INT1E       0x20U     // ADCINT1中断使能
#define ADC_INTSEL1N2_INT1CONT    0x40U     // ADCINT1继续中断模式
#define ADC_INTSEL1N2_INT2SEL_S   8U
#define ADC_INTSEL1N2_INT2SEL_M   0xF00U    // ADCINT2 EOC源选择
#define ADC_INTSEL1N2_INT2E       0x2000U   // ADCINT2中断使能
#define ADC_INTSEL1N2_INT2CONT    0x4000U   // ADCINT2继续中断模式

//*************************************************************************************************
//
// 以下是ADCINTSEL3N4寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_INTSEL3N4_INT3SEL_S   0U
#define ADC_INTSEL3N4_INT3SEL_M   0xFU      // ADCINT3 EOC源选择
#define ADC_INTSEL3N4_INT3E       0x20U     // ADCINT3中断使能
#define ADC_INTSEL3N4_INT3CONT    0x40U     // ADCINT3继续中断模式
#define ADC_INTSEL3N4_INT4SEL_S   8U
#define ADC_INTSEL3N4_INT4SEL_M   0xF00U    // ADCINT4 EOC源选择
#define ADC_INTSEL3N4_INT4E       0x2000U   // ADCINT4中断使能
#define ADC_INTSEL3N4_INT4CONT    0x4000U   // ADCINT4继续中断模式

//*************************************************************************************************
//
// 以下是ADCOSDETECT寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_OSDETECT_DETECTCFG_S   0U
#define ADC_OSDETECT_DETECTCFG_M   0x7U   // ADC开路和短路检测配置

//*************************************************************************************************
//
// 以下是ADCCOUNTER寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_COUNTER_FREECOUNT_S   0U
#define ADC_COUNTER_FREECOUNT_M   0xFFFU   // ADC自由运行计数器值

//*************************************************************************************************
//
// 以下是ADCREV寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_REV_TYPE_S   0U
#define ADC_REV_TYPE_M   0xFFU     // ADC类型
#define ADC_REV_REV_S    8U
#define ADC_REV_REV_M    0xFF00U   // ADC版本

//*************************************************************************************************
//
// 以下是ADCOFFTRIM寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_OFFTRIM_OFFTRIM_S   0U
#define ADC_OFFTRIM_OFFTRIM_M   0xFFU   // ADC偏移校准

//*************************************************************************************************
//
// 以下是ADCPPB1CONFIG寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1CONFIG_CONFIG_S     0U
#define ADC_PPB1CONFIG_CONFIG_M     0xFU    // ADC后处理模块1配置
#define ADC_PPB1CONFIG_TWOSCOMPEN   0x10U   // ADC后处理模块1二进制补码使能

//*************************************************************************************************
//
// 以下是ADCPPB1STAMP寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1STAMP_DLYSTAMP_S   0U
#define ADC_PPB1STAMP_DLYSTAMP_M   0xFFFU   // ADC后处理模块1延迟时间戳

//*************************************************************************************************
//
// 以下是ADCPPB1OFFCAL寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1OFFCAL_OFFCAL_S   0U
#define ADC_PPB1OFFCAL_OFFCAL_M   0x3FFU   // ADC后处理模块偏移校正

//*************************************************************************************************
//
// 以下是ADCPPB1TRIPHI寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1TRIPHI_LIMITHI_S   0U
#define ADC_PPB1TRIPHI_LIMITHI_M   0xFFFFU    // ADC后处理模块1阈值上限
#define ADC_PPB1TRIPHI_HSIGN       0x10000U   // 上限符号位

//*************************************************************************************************
//
// 以下是ADCPPB1TRIPLO寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1TRIPLO_LIMITLO_S    0U
#define ADC_PPB1TRIPLO_LIMITLO_M    0xFFFFU       // ADC后处理模块1阈值下限
#define ADC_PPB1TRIPLO_LSIGN        0x10000U      // 下限符号位
#define ADC_PPB1TRIPLO_REQSTAMP_S   20U
#define ADC_PPB1TRIPLO_REQSTAMP_M   0xFFF00000U   // ADC后处理模块1请求时间戳

//*************************************************************************************************
//
// 以下是ADCPPB2CONFIG寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2CONFIG_CONFIG_S     0U
#define ADC_PPB2CONFIG_CONFIG_M     0xFU    // ADC后处理模块2配置
#define ADC_PPB2CONFIG_TWOSCOMPEN   0x10U   // ADC后处理模块2二进制补码使能

//*************************************************************************************************
//
// 以下是ADCPPB2STAMP寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2STAMP_DLYSTAMP_S   0U
#define ADC_PPB2STAMP_DLYSTAMP_M   0xFFFU   // ADC后处理模块2延迟时间戳

//*************************************************************************************************
//
// 以下是ADCPPB2OFFCAL寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2OFFCAL_OFFCAL_S   0U
#define ADC_PPB2OFFCAL_OFFCAL_M   0x3FFU   // ADC后处理模块偏移校正

//*************************************************************************************************
//
// 以下是ADCPPB2TRIPHI寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2TRIPHI_LIMITHI_S   0U
#define ADC_PPB2TRIPHI_LIMITHI_M   0xFFFFU    // ADC后处理模块2阈值上限
#define ADC_PPB2TRIPHI_HSIGN       0x10000U   // 上限符号位

//*************************************************************************************************
//
// 以下是ADCPPB2TRIPLO寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2TRIPLO_LIMITLO_S    0U
#define ADC_PPB2TRIPLO_LIMITLO_M    0xFFFFU       // ADC后处理模块2阈值下限
#define ADC_PPB2TRIPLO_LSIGN        0x10000U      // 下限符号位
#define ADC_PPB2TRIPLO_REQSTAMP_S   20U
#define ADC_PPB2TRIPLO_REQSTAMP_M   0xFFF00000U   // ADC后处理模块2请求时间戳

//*************************************************************************************************
//
// 以下是ADCPPB3CONFIG寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3CONFIG_CONFIG_S     0U
#define ADC_PPB3CONFIG_CONFIG_M     0xFU    // ADC后处理模块3配置
#define ADC_PPB3CONFIG_TWOSCOMPEN   0x10U   // ADC后处理模块3二进制补码使能

//*************************************************************************************************
//
// 以下是ADCPPB3STAMP寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3STAMP_DLYSTAMP_S   0U
#define ADC_PPB3STAMP_DLYSTAMP_M   0xFFFU   // ADC后处理模块3延迟时间戳

//*************************************************************************************************
//
// 以下是ADCPPB3OFFCAL寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3OFFCAL_OFFCAL_S   0U
#define ADC_PPB3OFFCAL_OFFCAL_M   0x3FFU   // ADC后处理模块偏移校正

//*************************************************************************************************
//
// 以下是ADCPPB3TRIPHI寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3TRIPHI_LIMITHI_S   0U
#define ADC_PPB3TRIPHI_LIMITHI_M   0xFFFFU    // ADC后处理模块3阈值上限
#define ADC_PPB3TRIPHI_HSIGN       0x10000U   // 上限符号位

//*************************************************************************************************
//
// 以下是ADCPPB3TRIPLO寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3TRIPLO_LIMITLO_S    0U
#define ADC_PPB3TRIPLO_LIMITLO_M    0xFFFFU       // ADC后处理模块3阈值下限
#define ADC_PPB3TRIPLO_LSIGN        0x10000U      // 下限符号位
#define ADC_PPB3TRIPLO_REQSTAMP_S   20U
#define ADC_PPB3TRIPLO_REQSTAMP_M   0xFFF00000U   // ADC后处理模块3请求时间戳

//*************************************************************************************************
//
// 以下是ADCPPB4CONFIG寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4CONFIG_CONFIG_S     0U
#define ADC_PPB4CONFIG_CONFIG_M     0xFU    // ADC后处理模块4配置
#define ADC_PPB4CONFIG_TWOSCOMPEN   0x10U   // ADC后处理模块4二进制补码使能

//*************************************************************************************************
//
// 以下是ADCPPB4STAMP寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4STAMP_DLYSTAMP_S   0U
#define ADC_PPB4STAMP_DLYSTAMP_M   0xFFFU   // ADC后处理模块4延迟时间戳

//*************************************************************************************************
//
// 以下是ADCPPB4OFFCAL寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4OFFCAL_OFFCAL_S   0U
#define ADC_PPB4OFFCAL_OFFCAL_M   0x3FFU   // ADC后处理模块偏移校正

//*************************************************************************************************
//
// 以下是ADCPPB4TRIPHI寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4TRIPHI_LIMITHI_S   0U
#define ADC_PPB4TRIPHI_LIMITHI_M   0xFFFFU    // ADC后处理模块4阈值上限
#define ADC_PPB4TRIPHI_HSIGN       0x10000U   // 上限符号位

//*************************************************************************************************
//
// 以下是ADCPPB4TRIPLO寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4TRIPLO_LIMITLO_S    0U
#define ADC_PPB4TRIPLO_LIMITLO_M    0xFFFFU       // ADC后处理模块4阈值下限
#define ADC_PPB4TRIPLO_LSIGN        0x10000U      // 下限符号位
#define ADC_PPB4TRIPLO_REQSTAMP_S   20U
#define ADC_PPB4TRIPLO_REQSTAMP_M   0xFFF00000U   // ADC后处理模块4请求时间戳


//*************************************************************************************************
//
// 以下是ADCPPB1RESULT寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB1RESULT_PPBRESULT_S   0U
#define ADC_PPB1RESULT_PPBRESULT_M   0xFFFFU       // ADC后处理模块结果
#define ADC_PPB1RESULT_SIGN_S        16U
#define ADC_PPB1RESULT_SIGN_M        0xFFFF0000U   // 符号扩展位

//*************************************************************************************************
//
// 以下是ADCPPB2RESULT寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB2RESULT_PPBRESULT_S   0U
#define ADC_PPB2RESULT_PPBRESULT_M   0xFFFFU       // ADC后处理模块结果
#define ADC_PPB2RESULT_SIGN_S        16U
#define ADC_PPB2RESULT_SIGN_M        0xFFFF0000U   // 符号扩展位

//*************************************************************************************************
//
// 以下是ADCPPB3RESULT寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB3RESULT_PPBRESULT_S   0U
#define ADC_PPB3RESULT_PPBRESULT_M   0xFFFFU       // ADC后处理模块结果
#define ADC_PPB3RESULT_SIGN_S        16U
#define ADC_PPB3RESULT_SIGN_M        0xFFFF0000U   // 符号扩展位

//*************************************************************************************************
//
// 以下是ADCPPB4RESULT寄存器中位域的定义
//
//*************************************************************************************************
#define ADC_PPB4RESULT_PPBRESULT_S   0U
#define ADC_PPB4RESULT_PPBRESULT_M   0xFFFFU       // ADC后处理模块结果
#define ADC_PPB4RESULT_SIGN_S        16U
#define ADC_PPB4RESULT_SIGN_M        0xFFFF0000U   // 符号扩展位



#endif