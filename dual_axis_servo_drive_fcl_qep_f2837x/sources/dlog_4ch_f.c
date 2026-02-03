//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
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
//#############################################################################

//------------------------------------------------------------------------------
//  Software:       Motor Control SDK
//
//	FILE:			dlog_4ch_f.c.c
//
//	Description:	Contains helper functions for logging debug data
//
//	Version: 		1.0
//
//  Target:  		F2837x/F2838x/F28004x/F28P55x/F28P65x
//
//-----------------------------------------------------------------------------


#include "dlog_4ch_f.h"


/**
 * @brief 初始化4通道数据日志记录模块
 * @details 初始化DLOG_4CH_F结构体的所有成员变量为默认值
 * @param v DLOG_4CH_F结构体指针，包含数据日志记录所需的所有参数和状态
 * @return 无
 */
void DLOG_4CH_F_init(DLOG_4CH_F *v)
{
	v->input_ptr1 = 0;    // 通道1输入数据指针
	v->input_ptr2 = 0;    // 通道2输入数据指针
	v->input_ptr3 = 0;    // 通道3输入数据指针
	v->input_ptr4 = 0;    // 通道4输入数据指针
	v->output_ptr1 = 0;   // 通道1输出数据指针
	v->output_ptr2 = 0;   // 通道2输出数据指针
	v->output_ptr3 = 0;   // 通道3输出数据指针
	v->output_ptr4 = 0;   // 通道4输出数据指针
	v->prev_value = 0;    // 前一个输入值（用于检测触发条件）
	v->trig_value = 0;    // 触发阈值
	v->status = 0;        // 状态标志（0: 未初始化, 1: 等待触发, 2: 正在记录）
	v->pre_scalar = 0;    // 预分频器（用于控制采样频率）
	v->skip_count = 0;    // 跳过计数器（用于实现预分频）
	v->size = 0;          // 数据缓冲区大小
	v->count = 0;         // 当前记录数据计数
}

/**
 * @brief 4通道数据日志记录核心函数
 * @details 根据状态机执行数据日志记录操作，包括等待触发、数据采集和缓冲区管理
 * @param v DLOG_4CH_F结构体指针，包含数据日志记录所需的所有参数和状态
 * @return 无
 */
void DLOG_4CH_F_FUNC(DLOG_4CH_F *v)
{
	switch(v->status)
	{
        case 1: /* 等待触发 */
            // 检测通道1输入的上升沿触发条件
            if(((*v->input_ptr1) > v->trig_value) &&
                    (v->prev_value < v->trig_value))
            {
                /* 检测到上升沿，开始记录数据 */
                v->status=2;    // 状态切换到数据记录模式
            }
            break;

        case 2: /* 正在记录数据 */
            v->skip_count++;    // 增加跳过计数器

            // 当跳过计数器达到预分频值时，记录数据
            if(v->skip_count == v->pre_scalar)
            {
                v->skip_count=0;    // 重置跳过计数器
                
                // 记录4通道的数据到输出缓冲区
                v->output_ptr1[v->count]=*v->input_ptr1;    // 通道1数据
                v->output_ptr2[v->count]=*v->input_ptr2;    // 通道2数据
                v->output_ptr3[v->count]=*v->input_ptr3;    // 通道3数据
                v->output_ptr4[v->count]=*v->input_ptr4;    // 通道4数据
                v->count++;    // 增加数据计数

                // 当记录的数据达到缓冲区大小时，停止记录并重新等待触发
                if(v->count == v->size)
                {
                    v->count=0;    // 重置数据计数
                    v->status=1;    // 状态切换到等待触发模式
                }
            }
            break;
	}

	// 保存当前输入值，用于下一次触发检测
	v->prev_value = *v->input_ptr1;
}

