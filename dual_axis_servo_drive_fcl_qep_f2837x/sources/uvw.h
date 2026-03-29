// uvw.h
// UVW 调试与独立起动状态机声明（不污染官方库）

#ifndef UVW_H
#define UVW_H

#include <stdint.h>

// ======== 启动模式定义 ========
#define STARTMODE_ABZ  0   // 传统 ABZ 启动模式
#define STARTMODE_UVW  1   // UVW 粗略闭环起步模式

// ======== UVW 专属状态机定义 ========
#define UVW_SM_IDLE         0  // 停机空闲状态
#define UVW_SM_INIT_ANGLE   1  // 上电瞬间：抓取引脚并赋初值
#define UVW_SM_WAIT_Z       2  // 运行中：闭环等 Z 相纠偏
#define UVW_SM_DONE         3  // 校准完成：完美闭环

// ======== 共享变量声明（CPU 与 CLA 可访问） ========
extern volatile uint16_t startModel;                 // 当前启动模式（STARTMODE_*）
extern volatile uint16_t uvwStateMachine[2];        // 双电机或双实例状态机槽
extern uint32_t cal_Z_Offset_Count_M1;              // M1 标定好的 Z 相偏移量
extern uint32_t cal_Z_Offset_Count_M2;              // M2 标定好的 Z 相偏移量

// UVW 调试输入（在 dual_axis_servo_drive_hal.c 中定义）
extern volatile uint8_t uvw_u; // U 相调试输入（GPIO16）
extern volatile uint8_t uvw_v; // V 相调试输入（GPIO17）
extern volatile uint8_t uvw_w; // W 相调试输入（GPIO18）

#endif // UVW_H
