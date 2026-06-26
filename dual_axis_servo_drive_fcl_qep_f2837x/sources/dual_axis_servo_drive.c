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
//  软件：电机控制SDK
//
// FILE:    dual_axis_servo_dirve.c
//  文件：双轴伺服驱动器
//
// TITLE:   dual-axis motor drive on the related kits
//  标题：相关套件上的双轴电机驱?
//
// Group:   C2000
//  组：C2000系列
//
// Target Family: F2837x/F28004x/F28P55x/F28P65x
//  目标系列：F2837x/F28004x/F28P55x/F28P65x
//
// 描述?
//  该文件实现了基于C2000系列DSP的双轴伺服驱动器控制逻辑?
//  包括电机控制算法、状态机管理、中断处理等功能?
//-----------------------------------------------------------------------------

//
// 包含头文?
//
#include "dual_axis_servo_drive_settings.h"  // 双轴伺服驱动器设置头文件，包含系统配置参?
#include "dual_axis_servo_drive_user.h"      // 双轴伺服驱动器用户头文件，包含用户自定义函数和变?
#include "dual_axis_servo_drive_hal.h"       // 双轴伺服驱动器硬件抽象层头文件，包含硬件操作函数
#include "dual_axis_servo_drive.h"           // 双轴伺服驱动器主头文件，包含核心功能定义
#include "HAL_sci_init.h"                     // SCI初始化头文件，包含SCI和GPIO配置

//
// 仪表代码，用于时序验?
// 在DAC上显示变量A（标幺值）
//
#define  DAC_MACRO_PU(A)  ((1.0f + A) * 2048)  // DAC宏定义：将标幺值转换为DAC输出值（范围0-4095?
#define DACOUT_EN 1
//
// Functions
//
#ifdef _FLASH
#ifndef __cplusplus
#pragma CODE_SECTION(motor1ControlISR, ".TI.ramfunc");
#pragma CODE_SECTION(motor2ControlISR, ".TI.ramfunc");
#endif

#ifdef __cplusplus
#pragma CODE_SECTION(".TI.ramfunc");
#endif
#endif

//
// 本地函数原型声明
//
//#pragma INTERRUPT (motor1ControlISR, HPI)
//#pragma INTERRUPT (motor2ControlISR, HPI)
__interrupt void motor1ControlISR(void);  // 电机1控制中断服务函数，处理电?的实时控?
__interrupt void motor2ControlISR(void);  // 电机2控制中断服务函数，处理电?的实时控?

//
// 电机驱动实用函数
//
void HAL_SCI_generateWaveforms(float *ch0, float *ch1, float *ch2);
void HAL_SCI_prepareWaveformData(float ch0, float ch1, float ch2,
                                 uint16_t *buffer, uint16_t *size);


#if((BUILDLEVEL == FCL_LEVEL3) || (BUILDLEVEL == FCL_LEVEL4) || \
        (BUILDLEVEL == FCL_LEVEL5))
static inline void getFCLTime(MOTOR_Num_e motorNum);  // 获取FCL执行时间的函数，用于性能分析
#endif

#if((BUILDLEVEL == FCL_LEVEL4) || (BUILDLEVEL == FCL_LEVEL5))
#define SPD_PID_GAIN_BLEND_LOW_SPEED    (0.05f)
#define SPD_PID_GAIN_BLEND_HIGH_SPEED   (0.20f)
#define SPD_PID_LOW_SPEED_HARD_KP       (0.6f)
#define SPD_PID_LOW_SPEED_HARD_KI       (0.03f)
#define SPD_PID_HIGH_SPEED_SOFT_KP      (0.05f)
#define SPD_PID_HIGH_SPEED_SOFT_KI      (0.003f)

static inline void updateSpeedPIDGains(MOTOR_Vars_t *pMotor);
#endif

static inline void runCustomSpeedMeasureM1(void);
static inline void resetCustomSpeedMeasureM1(float32_t mechTheta);
static inline void pushCustomSpeedSampleM1(float32_t mechTheta);
static inline void runCustomSpeedMeasureM2(void);
static inline void resetCustomSpeedMeasureM2(float32_t mechTheta);
static inline void pushCustomSpeedSampleM2(float32_t mechTheta);
static inline uint16_t getCustomSpeedWindowSamples(MOTOR_Vars_t *pMotor);


//
// 状态机函数原型
//


// Alpha状态（基础状态）
void A0(void);  // 状态A0?0us周期的任务调度函?
void B0(void);  // 状态B0?00us周期的任务调度函?
void C0(void);  // 状态C0?50us周期的任务调度函?

// A分支状态（50us周期任务?
void A1(void);  // 状态A1：电?的电流环控制任务
void A2(void);  // 状态A2：电?的电流环控制任务
void A3(void);  // 状态A3：系统状态管理任?

// B分支状态（100us周期任务?
void B1(void);  // 状态B1：电?的速度环控制任?
void B2(void);  // 状态B2：电?的速度环控制任?
void B3(void);  // 状态B3：系统监控和故障处理任务

// C分支状态（150us周期任务?
void C1(void);  // 状态C1：电?的位置环控制任务
void C2(void);  // 状态C2：电?的位置环控制任务
void C3(void);  // 状态C3：通信和用户接口任?

// 变量声明
void (*Alpha_State_Ptr)(void);  // 基础状态指针，指向当前执行的Alpha状态函?
void (*A_Task_Ptr)(void);       // A分支状态指针，指向当前执行的A任务函数
void (*B_Task_Ptr)(void);       // B分支状态指针，指向当前执行的B任务函数
void (*C_Task_Ptr)(void);       // C分支状态指针，指向当前执行的C任务函数

uint16_t vTimer0[4] = {0};  // 虚拟定时?，从属于CPU定时?（A事件?
uint16_t vTimer1[4] = {0};  // 虚拟定时?，从属于CPU定时?（B事件?
uint16_t vTimer2[4] = {0};  // 虚拟定时?，从属于CPU定时?（C事件?
uint16_t serialCommsTimer = 0;  // 串口通信定时器，用于控制通信周期

//
// 用户变量
//

//
// 系统中使用的全局变量
//
MOTOR_Vars_t motorVars[2] = {MOTOR1_DEFAULTS, MOTOR2_DEFAULTS};  // 电机变量数组，存储两个电机的状态和参数

#pragma DATA_SECTION(motorVars, "ClaData");  // 将电机变量存储在ClaData段中，以便CLA（控制律加速器）访?

//
// 电流测量相关变量
//

// ADC原始值结构体 - 用于GTAG观察
typedef struct {
    int16_t iu;  // U相电流ADC原始?
    int16_t iv;  // V相电流ADC原始?
    int16_t iw;  // W相电流ADC原始?
} ADC_RAW_VALUES_t;

ADC_RAW_VALUES_t adc_raw[2];  // 电机1和电?的ADC原始?

#define CUSTOM_SPEED_HISTORY_SAMPLES    (200U)
#define CUSTOM_SPEED_FAST_WINDOW        (20U)
#define CUSTOM_SPEED_MID_WINDOW         (50U)
#define CUSTOM_SPEED_SLOW_WINDOW        (200U)
#define CUSTOM_SPEED_MID_THRESHOLD      (0.05f)
#define CUSTOM_SPEED_SLOW_THRESHOLD     (0.003f)
#define CUSTOM_SPEED_ISR_FREQ_HZ        (20000.0f)
#define CUSTOM_SPEED_SAMPLE_QUEUE_SIZE  (64U)
#define CUSTOM_SPEED_SAMPLE_QUEUE_MASK  (CUSTOM_SPEED_SAMPLE_QUEUE_SIZE - 1U)

float32_t m1_pos_history[CUSTOM_SPEED_HISTORY_SAMPLES] = {0.0f};
float32_t m1_pos_sample_queue[CUSTOM_SPEED_SAMPLE_QUEUE_SIZE] = {0.0f};
float32_t m1_custom_speed_pu = 0.0f;
uint16_t m1_pos_idx = 0U;
volatile uint16_t m1_pos_sample_head = 0U;
uint16_t m1_pos_sample_tail = 0U;
uint16_t m1_pos_sample_overflow = 0U;
bool m1_customSpeedActive = false;

float32_t m2_pos_history[CUSTOM_SPEED_HISTORY_SAMPLES] = {0.0f};
float32_t m2_pos_sample_queue[CUSTOM_SPEED_SAMPLE_QUEUE_SIZE] = {0.0f};
float32_t m2_custom_speed_pu = 0.0f;
uint16_t m2_pos_idx = 0U;
volatile uint16_t m2_pos_sample_head = 0U;
uint16_t m2_pos_sample_tail = 0U;
uint16_t m2_pos_sample_overflow = 0U;
bool m2_customSpeedActive = false;

//
// CMPSS过流保护参数
//
uint16_t clkPrescale = 20;  // 时钟预分频值，用于CMPSS滤波?
uint16_t sampWin     = 30;  // 采样窗口大小，用于CMPSS滤波?
uint16_t thresh      = 18;  // 阈值，用于CMPSS滤波?

//
// 标志变量
//
volatile uint16_t enableFlag = true;  // 使能标志，用于控制某些功能的启用/禁用

uint16_t backTicker = 0;  // 后台计时器，用于各种定时任务

uint16_t led1Cnt = 0;  // LED1计数器，用于控制LED1的闪?
uint16_t led2Cnt = 0;  // LED2计数器，用于控制LED2的闪?

// 磁场定向控制相关变量
float32_t VdTesting = 0.01;         // d轴电压参考值（标幺值）- 降低以降低功?
float32_t VqTesting = 0.05;         // q轴电压参考值（标幺值）- LEVEL2 降低至约2V，避免超过额定功?

// 位置参考生成和控制相关变量
float32_t posArray[8] = {2.5, -2.5, 3.5, -3.5, 5.0, -5.0, 8.0, -8.0};  // 位置参考数组，存储不同的位置设定?
float32_t posPtrMax = 4;  // 位置指针最大值，用于限制posArray的访问范?

// 数据记录模块相关变量
float32_t DBUFF_4CH1[200] = {0};  // 通道1的数据缓冲区，用于存储记录的数据
float32_t DBUFF_4CH2[200] = {0};  // 通道2的数据缓冲区，用于存储记录的数据
float32_t DBUFF_4CH3[200] = {0};  // 通道3的数据缓冲区，用于存储记录的数据
float32_t DBUFF_4CH4[200] = {0};  // 通道4的数据缓冲区，用于存储记录的数据
float32_t dlogCh1 = 0;  // 数据记录通道1的?
float32_t dlogCh2 = 0;  // 数据记录通道2的?
float32_t dlogCh3 = 0;  // 数据记录通道3的?
float32_t dlogCh4 = 0;  // 数据记录通道4的?

// 创建DATALOG模块实例
DLOG_4CH_F dlog_4ch1;  // 4通道数据记录模块实例


HAL_Handle    halHandle;    // 硬件抽象层句?
HAL_Obj       hal;          // 硬件抽象层对?

HAL_MTR_Handle halMtrHandle[2];   // 电机控制硬件抽象层句柄数?
HAL_MTR_Obj    halMtr[2];         // 电机控制硬件抽象层对象数?

// FCL延迟变量
volatile uint16_t FCL_cycleCount[2];  // FCL（场定向控制库）执行时间计数器，用于两个电机

// 同时控制双电机以相同的速度和加速度运行
float32_t speedRef = 0.5;  // 速度参考?
float32_t IdRef = 0.0;  // d轴电流参考?
float32_t IqRef = 0.10;  // q轴电流参考?
uint32_t rampDelayMax = 0;  // 斜坡延迟最大?

MotorRunStop_e runMotor = MOTOR_STOP;  // 电机运行/停止状?
CtrlState_e ctrlState = CTRL_STOP;  // 控制状?
bool flagSyncRun = false;  // 同步运行标志，用于启用双电机同步控制

//
// 这些变量由链接器文件定义
//
extern uint32_t Cla1funcsLoadStart;  // CLA函数加载起始地址
extern uint32_t Cla1funcsLoadEnd;  // CLA函数加载结束地址
extern uint32_t Cla1funcsRunStart;  // CLA函数运行起始地址
extern uint32_t Cla1funcsLoadSize;

/**
 * @brief 主函?
 * @details 系统初始化和主循环函数，负责初始化硬件、配置参数、设置中断、校准偏移量，并进入无限循环运行状态机
 * @param ?
 * @return ?
 */
void main(void)
{
    // 初始化设备时钟和外设
    Device_init();

    // 初始化硬件抽象层(HAL)驱动
    halHandle = HAL_init(&hal, sizeof(hal));

    // 初始化电?的HAL驱动
    halMtrHandle[MTR_1] = 
            HAL_MTR_init(&halMtr[MTR_1], sizeof(halMtr[MTR_1]));

    // 初始化电?的HAL驱动
    halMtrHandle[MTR_2] = 
            HAL_MTR_init(&halMtr[MTR_2], sizeof(halMtr[MTR_2]));

    // 禁用同步(同时冻结PWM时钟)。GTBCLKSYNC仅适用于多核设?
    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // 设置HAL驱动参数
    HAL_setParams(halHandle);

    // 设置电机1的驱动参?
    HAL_setMotorParams(halMtrHandle[MTR_1]);

    // 设置电机2的驱动参?
    HAL_setMotorParams(halMtrHandle[MTR_2]);

    // 初始化SCI和GPIO配置
    HAL_SCI_init();

    // 启用同步和PWM时钟
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // 初始化电?的参?
    initMotorParameters(&motorVars[0], halMtrHandle[0]);

    // 初始化电?的参?
    initMotorParameters(&motorVars[1], halMtrHandle[1]);

    // 初始化电?的控制变?
    initControlVars(&motorVars[0]);

    // 初始化电?的控制变?
    initControlVars(&motorVars[1]);

    // 极限测试：电流限制和故障保护已禁?
    // motorVars[0].currentLimit = 9.0;        // 9A
    // motorVars[1].currentLimit = 9.0;        // 9A

    // HAL_setupMotorFaultProtection(halMtrHandle[MTR_1],
    //                               motorVars[MTR_1].currentLimit);
    // HAL_setupMotorFaultProtection(halMtrHandle[MTR_2],
    //                               motorVars[MTR_2].currentLimit);

// 注意：d-q PI 输出的矢量和应小?1.0，这?SVGEN（空间矢量脉宽调制生成器）的最大占空比
// 另一个占空比限制因素是通过分流电阻的电流检测，这取决于硬件/软件实现
// 根据应用需求，可以使用 3 个? 个或单个分流电阻进行电流波形重建
// 分流电阻数量越多，允许的占空比操作越高，直流母线利用率越?
// 用户应在开环测试期间仔细调?PI 饱和水平（即 pi_id.Umax、pi_iq.Umax ?Umins?
// 如项目手册中所述。违反此程序会导致电流波形失真和闭环操作不稳?
// 可能会损坏逆变器?
    // 重置电机1的控制变?
    resetControlVars(&motorVars[0]);

    // 重置电机2的控制变?
    resetControlVars(&motorVars[1]);


    // 清除电机1的任何虚假OST和DCAEVT1故障标志
    HAL_clearTZFlag(halMtrHandle[MTR_1]);

    // 清除电机2的任何虚假OST和DCAEVT1故障标志
    HAL_clearTZFlag(halMtrHandle[MTR_2]);

    // 任务状态机初始?
    Alpha_State_Ptr = &A0;    // 设置Alpha状态指针为A0（主状态调度器?
    A_Task_Ptr = &A1;         // 设置A任务指针为A1?0微秒级任务）
    B_Task_Ptr = &B1;         // 设置B任务指针为B1?00微秒级任务）
    C_Task_Ptr = &C1;         // 设置C任务指针为C1?50微秒级任务）

    // Set up the initialization value for some variables
    // 电机1参数设置
    motorVars[0].IdRef_start = 0.2;        // d轴初始参考电流（标幺值）
    motorVars[0].IqRef = 0.1;               // q轴参考电流（标幺值）
    motorVars[0].speedRef = 0.5;            // 速度参考值（标幺值）
    motorVars[0].lsw1Speed = 0.5;           // 低速参考值（标幺值）

    motorVars[0].posPtr = 0;                // 位置指针初始值，用于位置轨迹控制
    motorVars[0].posPtrMax = posPtrMax;     // 位置指针最大值（对应posArray数组长度?
    motorVars[0].posCntrMax = 5000;         // 位置计数器最大值，用于位置轨迹计时
    motorVars[0].posSlewRate = 0.001;       // 位置变化斜率限制（标幺?采样周期?
    motorVars[0].fclClrCntr = 1;            // FCL清除计数器，用于故障恢复

    // 电机2参数设置
    motorVars[1].IdRef_start = 0.2;        // d轴初始参考电流（标幺值）
    motorVars[1].IqRef = 0.1;               // q轴参考电流（标幺值）
    motorVars[1].speedRef = 0.5;            // 速度参考值（标幺值）
    motorVars[1].lsw1Speed = 0.5;           // 低速参考值（标幺值）

    motorVars[1].posPtr = 0;                // 位置指针初始值，用于位置轨迹控制
    motorVars[1].posPtrMax = posPtrMax;     // 位置指针最大值（对应posArray数组长度?
    motorVars[1].posCntrMax = 5000;         // 位置计数器最大值，用于位置轨迹计时
    motorVars[1].posSlewRate = 0.001;       // 位置变化斜率限制（标幺?采样周期?
    motorVars[1].fclClrCntr = 1;            // FCL清除计数器，用于故障恢复

//
// Initialize Datalog module for motor 1 or motor 2
//
    DLOG_4CH_F_init(&dlog_4ch1);                    // 初始?通道浮点数据记录模块
    dlog_4ch1.input_ptr1 = &dlogCh1;                // 通道1输入数据指针
    dlog_4ch1.input_ptr2 = &dlogCh2;                // 通道2输入数据指针
    dlog_4ch1.input_ptr3 = &dlogCh3;                // 通道3输入数据指针
    dlog_4ch1.input_ptr4 = &dlogCh4;                // 通道4输入数据指针
    dlog_4ch1.output_ptr1 = &DBUFF_4CH1[0];         // 通道1输出缓冲区指?
    dlog_4ch1.output_ptr2 = &DBUFF_4CH2[0];         // 通道2输出缓冲区指?
    dlog_4ch1.output_ptr3 = &DBUFF_4CH3[0];         // 通道3输出缓冲区指?
    dlog_4ch1.output_ptr4 = &DBUFF_4CH4[0];         // 通道4输出缓冲区指?
    dlog_4ch1.size = 200;                           // 每个通道的缓冲区大小?00个数据点?
    dlog_4ch1.pre_scalar = 5;                       // 预分频值，控制数据采集频率
    dlog_4ch1.trig_value = 0.01;                    // 触发值，用于触发数据记录
    dlog_4ch1.status = 2;                           // 状态设置：2表示启用数据记录功能

// FLASH模式下的初始化设?
#ifdef _FLASH
    enableFlag = true;            // 设置使能标志为真，自动启动系?
    flagSyncRun = true;           // 启用双电机同步运行功?
    ctrlState = CTRL_STOP;
#endif

    // 等待使能标志设置
    while(enableFlag == false)     // 在RAM模式下，需要外部触发使能标?
    {
        backTicker++;
    }

    // 检查FCL软件版本信息
    while(FCL_getSwVersion() != 0x00000008)  // 等待FCL版本为预期版?0x00000008)
    {
        backTicker++;
    }

    // 为电?配置中断
    HAL_setupInterrupts(halMtrHandle[MTR_1]);  // 配置电机1的PWM和ADC中断

    // 为电?配置中断
    HAL_setupInterrupts(halMtrHandle[MTR_2]);  // 配置电机2的PWM和ADC中断

    // 电机1的电流反馈偏移校?
    runOffsetsCalculation(&motorVars[0]);

    // 电机2的电流反馈偏移校?
    runOffsetsCalculation(&motorVars[1]);

    // 为电?启用中断
    HAL_enableInterrupts(halMtrHandle[MTR_1]);  // 启用电机1的中断系?

    // 为电?启用中断
    HAL_enableInterrupts(halMtrHandle[MTR_2]);  // 启用电机2的中断系?

    // 清除闩锁标志
    // 对于LEVEL1/2/3/4自动运行调试，避免启动时触发clearTrip流程把ctrlState拉回STOP

    motorVars[0].clearTripFlagDMC = 1;
    motorVars[1].clearTripFlagDMC = 1;


    // 禁用驱动栅极（安全模式，待运行时由runMotorControl启用?
    GPIO_writePin(motorVars[0].drvEnableGateGPIO, 1);
    GPIO_writePin(motorVars[1].drvEnableGateGPIO, 1);

    // 启用全局中断
    EINT;          // 启用全局中断INTM

    ERTM;          // 启用全局实时中断DBGM
#if(BUILDLEVEL == FCL_LEVEL3) || (BUILDLEVEL == FCL_LEVEL4)
    // =====================================================================
    // LEVEL1/2/3/4 初始化：设置控制状态为运行
    // =====================================================================
    flagSyncRun = true;
    ctrlState = CTRL_RUN;
    runMotor = MOTOR_RUN;

#endif



    //
    // 初始化完?
    //  - 进入空闲循环，永远循?
    //
    for(;;)  //无限循环
    {
        // 状态机入口和出口点
        //===========================================================
        (*Alpha_State_Ptr)();   // 跳转到Alpha状态（A0,B0,...?
        //===========================================================

        runSyncControl();  // 运行双电机同步控?

        runCustomSpeedMeasureM1();
        runCustomSpeedMeasureM2();

        // ------------------------------------------------------------
        // SCI数据发送已移至B2任务（100微秒级任务）中执行

        // ------------------------------------------------------------
        // ADC原始值读?- 用于GTAG调试观察
        // 使用HWREGH宏读取ADC PPB结果寄存器的原始?
        // ------------------------------------------------------------
        // 电机1 ADC原始?
        adc_raw[0].iu = (int16_t)HWREGH(motorVars[0].curA_PPBRESULT);
        adc_raw[0].iv = (int16_t)HWREGH(motorVars[0].curB_PPBRESULT);
        adc_raw[0].iw = (int16_t)HWREGH(motorVars[0].curC_PPBRESULT);
        
        // 电机2 ADC原始?
        adc_raw[1].iu = (int16_t)HWREGH(motorVars[1].curA_PPBRESULT);
        adc_raw[1].iv = (int16_t)HWREGH(motorVars[1].curB_PPBRESULT);
        adc_raw[1].iw = (int16_t)HWREGH(motorVars[1].curC_PPBRESULT);
    }
} //END MAIN CODE

//=============================================================================
//  状态机序列和同?- 用于慢速后台任?
//=============================================================================

/**
 * @brief 状态机框架函数 - A0
 * @details 50微秒级任务的调度器，当CPUTimer0溢出时执行A类任务，并切换到B0状?
 * @param ?
 * @return ?
 */
void A0(void)
{
    // A类任务的循环速率同步?
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER0_BASE))  // 检查CPUTimer0是否溢出
    {
        CPUTimer_clearOverflowFlag(CPUTIMER0_BASE);  // 清除溢出标志

        //-----------------------------------------------------------
        (*A_Task_Ptr)();        // 跳转到A类任务（A1,A2,A3,...?
        //-----------------------------------------------------------

        vTimer0[0]++;           // 虚拟定时?，实?（备用）
        serialCommsTimer++;     // 串口通信定时器递增
    }

    Alpha_State_Ptr = &B0;      // 切换到B0状态（注释掉此行可只允许A类任务）
}

/**
 * @brief 状态机框架函数 - B0
 * @details 100微秒级任务的调度器，当CPUTimer1溢出时执行B类任务，并切换到C0状?
 * @param ?
 * @return ?
 */
void B0(void)
{
    // B类任务的循环速率同步?
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER1_BASE))  // 检查CPUTimer1是否溢出
    {
        CPUTimer_clearOverflowFlag(CPUTIMER1_BASE);  // 清除溢出标志

        //-----------------------------------------------------------
        (*B_Task_Ptr)();        // 跳转到B类任务（B1,B2,B3,...?
        //-----------------------------------------------------------
        vTimer1[0]++;           // 虚拟定时?，实?（备用）
    }

    Alpha_State_Ptr = &C0;      // 切换到C0状态（允许C类任务）
}

/**
 * @brief 状态机框架函数 - C0
 * @details 150微秒级任务的调度器，当CPUTimer2溢出时执行C类任务，并切换回A0状?
 * @param ?
 * @return ?
 */
void C0(void)
{
    // C类任务的循环速率同步?
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER2_BASE))  // 检查CPUTimer2是否溢出
    {
        CPUTimer_clearOverflowFlag(CPUTIMER2_BASE);  // 清除溢出标志

        //-----------------------------------------------------------
        (*C_Task_Ptr)();        // 跳转到C类任务（C1,C2,C3,...?
        //-----------------------------------------------------------

        vTimer2[0]++;           // 虚拟定时?，实?（备用）
    }

    Alpha_State_Ptr = &A0;  // 切换回A0状?
}

//==============================================================================
//  A类任务（?0微秒执行一次）
//==============================================================================

/**
 * @brief 50微秒级任务函?- A1
 * @details 执行电机1的控制逻辑，包括电流限制设置、母线电压监控、过流保护等
 * @param ?
 * @return ?
 */
void A1(void) // SPARE (not used)
{
    // 电机1运行逻辑控制
    runMotorControl(&motorVars[0], halMtrHandle[0]);  // 调用电机1的控制函?

    //-------------------
    // 下次CPUTimer0计数器达到周期值时跳转到A2任务
    A_Task_Ptr = &A2;
    //-------------------
}

/**
 * @brief 50微秒级任务函?- A2
 * @details 执行电机2的控制逻辑，包括电流限制设置、母线电压监控、过流保护等
 * @param ?
 * @return ?
 */
void A2(void) // SPARE (not used)
{
    // 电机2运行逻辑控制
    runMotorControl(&motorVars[1], halMtrHandle[1]);

    //-------------------
    // 下次CPUTimer0计数器达到周期值时跳转到A3任务
    A_Task_Ptr = &A3;
    //-------------------
}

/**
 * @brief 50微秒级任务函?- A3
 * @details 控制LED1闪烁，作为系统运行状态的指示
 * @param ?
 * @return ?
 */
void A3(void) // SPARE (not used)
{
    led1Cnt++;  // LED1计数器递增

    if(led1Cnt >= LPD_LED1_WAIT_TIME)  // 当计数器达到等待时间?
    {
        led1Cnt = 0;  // 重置计数?

        GPIO_togglePin(LPD_RED_LED1);   // 切换LED1状态（闪烁?
    }


    //-----------------
    // 下次CPUTimer0计数器达到周期值时跳转到A1任务
    A_Task_Ptr = &A1;
    //-----------------
}

//==============================================================================
//  B类任务（?00微秒执行一次）
//==============================================================================

//----------------------------------- 用户任务 -------------------------------------

/**
 * @brief 100微秒级任务函?- B1
 * @details 执行SFRA（系统频率响应分析）后台任务，用于控制器带宽分析
 * @param ?
 * @return ?
 */
void B1(void) // Toggle GPIO-00
{

    //-----------------
    // 下次CPUTimer1计数器达到周期值时跳转到B2任务
    B_Task_Ptr = &B2;
    //-----------------
}

/**
 * @brief 100微秒级任务函?- B2
 * @details 预留任务，无具体功能，仅作为任务切换的中间节?
 * @param ?
 * @return ?
 */
void B2(void) // SPARE
{
    float ch0, ch1, ch2;
    uint16_t buffer[16];
    uint16_t size;
    uint16_t i;

    //-------------------
    // SCI serial communication logic
    //-------------------
    // Check if transmit FIFO is empty
    if(SCI_getTxFIFOStatus(HAL_SCI_BASE) == SCI_FIFO_TX0)
    {
        // Generate and prepare waveform data
        HAL_SCI_generateWaveforms(&ch0, &ch1, &ch2);
        
        // Prepare data buffer using dedicated function
        HAL_SCI_prepareWaveformData(ch0, ch1, ch2, buffer, &size);
        
        // Send all bytes at once
        for(i = 0; i < size; i++)
        {
            SCI_writeCharNonBlocking(HAL_SCI_BASE, buffer[i]);
        }
    }

    //-----------------
    // 下次CPUTimer1计数器达到周期值时跳转到B3任务
    B_Task_Ptr = &B3;
    //-----------------
}

//*****************************************************************************
//
// HAL_SCI_generateWaveforms - Get actual motor values
//
//*****************************************************************************
void HAL_SCI_generateWaveforms(float *ch0, float *ch1, float *ch2)
{
    *ch0 = motorVars[0].pid_spd.term.Out;
    *ch1 = motorVars[0].ptrFCL->pi_iq.fbk;
    *ch2 = m1_custom_speed_pu;
}

//*****************************************************************************
//
// HAL_SCI_prepareWaveformData - Prepare waveform data for transmission
// Convert three float values to a 16-byte JustFloat packet.
//
//*****************************************************************************
void HAL_SCI_prepareWaveformData(float ch0, float ch1, float ch2,
                                 uint16_t *buffer, uint16_t *size)
{
    union { float f; uint16_t u[2]; } c;
    uint16_t pos = 0;

    c.f = ch0;
    buffer[pos++] = c.u[0] & 0x00FFu;
    buffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    buffer[pos++] = c.u[1] & 0x00FFu;
    buffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    c.f = ch1;
    buffer[pos++] = c.u[0] & 0x00FFu;
    buffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    buffer[pos++] = c.u[1] & 0x00FFu;
    buffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    c.f = ch2;
    buffer[pos++] = c.u[0] & 0x00FFu;
    buffer[pos++] = (c.u[0] >> 8u) & 0x00FFu;
    buffer[pos++] = c.u[1] & 0x00FFu;
    buffer[pos++] = (c.u[1] >> 8u) & 0x00FFu;

    buffer[pos++] = 0x00u;
    buffer[pos++] = 0x00u;
    buffer[pos++] = 0x80u;
    buffer[pos++] = 0x7Fu;

    *size = pos;
}

/**
 * @brief 100微秒级任务函?- B3
 * @details 预留任务，无具体功能，仅作为任务切换的中间节?
 * @param ?
 * @return ?
 */
void B3(void) // SPARE
{

    //-----------------
    // 下次CPUTimer1计数器达到周期值时跳转到B1任务
    B_Task_Ptr = &B1;
    //-----------------
}

//==============================================================================
//  C类任务（?50微秒执行一次）
//==============================================================================

//--------------------------------- 用户任务 ---------------------------------------

/**
 * @brief 150微秒级任务函?- C1
 * @details 控制LED2闪烁，作为系统运行状态的指示
 * @param ?
 * @return ?
 */
void C1(void)   // Toggle GPIO-34
{
    led2Cnt++;  // LED2计数器递增

    if(led2Cnt >= LPD_LED2_WAIT_TIME)  // 当计数器达到等待时间?
    {
        led2Cnt = 0;  // 重置计数?

        GPIO_togglePin(LPD_BLUE_LED2);   // 切换LED2状态（闪烁?
    }

    //-----------------
    // 下次CPUTimer2计数器达到周期值时跳转到C2任务
    C_Task_Ptr = &C2;

    //-----------------

}

/**
 * @brief 150微秒级任务函?- C2
 * @details 预留任务，无具体功能，仅作为任务切换的中间节?
 * @param ?
 * @return ?
 */
void C2(void) // SPARE
{

    //-----------------
    // 下次CPUTimer2计数器达到周期值时跳转到C3任务
    C_Task_Ptr = &C3;
    //-----------------
}

/**
 * @brief 150微秒级任务函?- C3
 * @details 预留任务，无具体功能，仅作为任务切换的中间节?
 * @param ?
 * @return ?
 */
void C3(void) // SPARE
{

    //-----------------
    // 下次CPUTimer2计数器达到周期值时跳转到C1任务
    C_Task_Ptr = &C1;
    //-----------------
}

//
//   各种增量构建级别
//


//


//
//****************************************************************************
// 构建等级 3
//****************************************************************************
//
#if(BUILDLEVEL == FCL_LEVEL3)
// =============================== FCL_LEVEL 3 ================================
//  等级3验证由PID和速度测量模块执行的dq轴电流调?
//  lsw = ENC_ALIGNMENT      : 锁定电机转子
//  lsw = ENC_WAIT_FOR_INDEX : 关闭电流?
//  注意:-
//      1. Iq环使用实际QEP角度关闭。因此，轻负载时电机速度会急剧上升?
//         测试期间最好确保电机有负载。否则，电机将以可能饱和的更高速度运行?
//         通常可能在电机额定速度或更高速度附近?
//      2. 截至库版?x02，clarke1.As和clarke1.Bs未从FCL库中引出
// ============================================================================

// 电机1的构建等?子程?
#pragma FUNC_ALWAYS_INLINE(buildLevel3_M1)

static inline void buildLevel3_M1(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    // 执行PI控制器的电机控制算法
    FCL_runPICtrl_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    // 执行复杂控制器的电机控制算法
    FCL_runComplexCtrl_M1(&motorVars[0]);
#endif

// ----------------------------------------------------------------------------
// FCL周期计数计算（用于调试）
// 客户可以在最终实现中删除以下代码
// ----------------------------------------------------------------------------
    getFCLTime(MTR_1);

// ----------------------------------------------------------------------------
// 使用SDFM滤波?测量直流母线电压
// ----------------------------------------------------------------------------
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);

// ----------------------------------------------------------------------------
// 快速电流环(FCL) PI控制器包装器
// ----------------------------------------------------------------------------
// 功能说明?
//   在FCL_runPICtrl_M1()完成电流采样、Clarke/Park变换、PI计算和PWM更新后，
//   调用本函数执行以下后处理任务?
//   - 触发CLA Task4处理QEP编码器中断标?
//   - 根据Vdcbus实时更新PI增益参数（Kp, Ki, Kerr?
//   - 计算反电动势补偿?carryOver)
//   - 同步电流反馈值到用户变量
//   - 等待CLA完成并清除中断标?
//
// 注意：FCL_runPICtrl_M1()和本函数必须在同一个PWM周期内顺序调用，
//       共同完成完整的快速电流环控制
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M1(&motorVars[0]);
#endif

// ----------------------------------------------------------------------------
// 对齐例程：此例程将电机对齐到零电角度
// 对于QEP，还会找到索引位置并初始化相对于索引位置的角?
// ----------------------------------------------------------------------------
    if(motorVars[0].runMotor == MOTOR_STOP)
    {
        // 电机停止时，设置为编码器对齐状?
        motorVars[0].ptrFCL->lsw = ENC_ALIGNMENT;
        motorVars[0].pi_id.ref = 0;
        motorVars[0].IdRef = 0;
        FCL_resetController(&motorVars[0]);
    }
    else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 设置对齐电流
        motorVars[0].IdRef = motorVars[0].IdRef_start;  // 通常?.1

        // 设置对齐和保持时间，使轴稳定
        if(motorVars[0].pi_id.ref >= motorVars[0].IdRef)
        {
            motorVars[0].alignCntr++;

            if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
            {
                motorVars[0].alignCntr  = 0;

                // 对于QEP，旋转电机以找到索引脉冲
                motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
            }
        }

    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        // 校准完成后，设置运行时的Id参考?
        motorVars[0].IdRef = motorVars[0].IdRef_run;
    }

// ----------------------------------------------------------------------------
// 连接RMP模块的输入并调用斜坡控制模块
// ----------------------------------------------------------------------------
    if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 对齐状态下，速度目标值为0
        motorVars[0].rc.TargetValue = 0;
        motorVars[0].rc.SetpointValue = 0;
    }
    else
    {
        // 非对齐状态下，速度目标值为参考速度
        motorVars[0].rc.TargetValue = motorVars[0].speedRef;
    }

    // 执行斜坡控制
    fclRampControl(&motorVars[0].rc);

// ----------------------------------------------------------------------------
// 连接RAMP GEN模块的输入并调用斜坡生成器模?
// ----------------------------------------------------------------------------
    motorVars[0].ptrFCL->rg.Freq = motorVars[0].rc.SetpointValue;
    fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);

    // 更新电机电角?
    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;

    // 运行速度计算
    runSpeedFR(&motorVars[0].speed);

    if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM1(motorVars[0].posMechTheta);
        runCustomSpeedMeasureM1();
    }
    else
    {
        resetCustomSpeedMeasureM1(motorVars[0].posMechTheta);
        motorVars[0].speed.Speed = 0.0f;
    }

// ----------------------------------------------------------------------------
// 为FCL设置iqref
// ----------------------------------------------------------------------------
    motorVars[0].ptrFCL->pi_iq.ref =
           (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 : motorVars[0].IqRef;

// ----------------------------------------------------------------------------
// 为FCL设置idref
// ----------------------------------------------------------------------------
    motorVars[0].pi_id.ref =
           ramper(motorVars[0].IdRef, motorVars[0].pi_id.ref, 0.00001);

    return;
}

// 电机2的构建等?子程?
#pragma FUNC_ALWAYS_INLINE(buildLevel3_M2)

static inline void buildLevel3_M2(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    // 执行PI控制器的电机控制算法
    FCL_runPICtrl_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    // 执行复杂控制器的电机控制算法
    FCL_runComplexCtrl_M2(&motorVars[1]);
#endif

// ----------------------------------------------------------------------------
// FCL周期计数计算（用于调试）
// 客户可以在最终实现中删除以下代码
// ----------------------------------------------------------------------------
    getFCLTime(MTR_2);

// ----------------------------------------------------------------------------
// 使用SDFM滤波?测量直流母线电压
// ----------------------------------------------------------------------------
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[1]);

// ----------------------------------------------------------------------------
// 快速电流环控制器包装器
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);
#endif

// ----------------------------------------------------------------------------
// 对齐例程：此例程将电机对齐到零电角度
// 对于QEP，还会找到索引位置并初始化相对于索引位置的角?
// ----------------------------------------------------------------------------
    if(motorVars[1].runMotor == MOTOR_STOP)
    {
        // 电机停止时，设置为编码器对齐状?
        motorVars[1].ptrFCL->lsw = ENC_ALIGNMENT;
        motorVars[1].pi_id.ref = 0;
        motorVars[1].IdRef = 0;
        FCL_resetController(&motorVars[1]);
    }
    else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 设置对齐电流
        motorVars[1].IdRef = motorVars[1].IdRef_start;  // 通常?.1;

        // 设置对齐和保持时间，使轴稳定
        if(motorVars[1].pi_id.ref >= motorVars[1].IdRef)
        {
            motorVars[1].alignCntr++;

            if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
            {
                motorVars[1].alignCntr  = 0;

                // 对于QEP，旋转电机以找到索引脉冲
                motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        // 校准完成后，设置运行时的Id参考?
        motorVars[1].IdRef = motorVars[1].IdRef_run;
    }

// ----------------------------------------------------------------------------
// 连接RMP模块的输入并调用斜坡控制模块
// ----------------------------------------------------------------------------
    if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 对齐状态下，速度目标值为0
        motorVars[1].rc.TargetValue = 0;
        motorVars[1].rc.SetpointValue = 0;
    }
    else
    {
        // 非对齐状态下，速度目标值为参考速度
        motorVars[1].rc.TargetValue = motorVars[1].speedRef;
    }

    // 执行斜坡控制
    fclRampControl(&motorVars[1].rc);

// ----------------------------------------------------------------------------
// 连接RAMP GEN模块的输入并调用斜坡生成器模?
// ----------------------------------------------------------------------------
    motorVars[1].ptrFCL->rg.Freq = motorVars[1].rc.SetpointValue;
    fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);

    // 更新电机电角?
    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;

    // 运行速度计算
    runSpeedFR(&motorVars[1].speed);

    if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM2(motorVars[1].posMechTheta);
        runCustomSpeedMeasureM2();
    }
    else
    {
        resetCustomSpeedMeasureM2(motorVars[1].posMechTheta);
        motorVars[1].speed.Speed = 0.0f;
    }

// ----------------------------------------------------------------------------
// 为FCL设置iqref
// ----------------------------------------------------------------------------
    motorVars[1].ptrFCL->pi_iq.ref =
           (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 : motorVars[1].IqRef;

// ----------------------------------------------------------------------------
// 为FCL设置idref
// ----------------------------------------------------------------------------
    motorVars[1].pi_id.ref =
           ramper(motorVars[1].IdRef, motorVars[1].pi_id.ref, 0.00001);

    return;
}

#endif // (BUILDLEVEL==FCL_LEVEL3)

//
//****************************************************************************
// INCRBUILD 4
//****************************************************************************
//
#if(BUILDLEVEL == FCL_LEVEL4)
// =============================== FCL_LEVEL 4 ================================
// 构建级别4：验证由PID模块执行的速度调节?
// 系统速度环通过使用测量的速度作为反馈来闭?
//  lsw = ENC_ALIGNMENT      : 锁定电机转子
//  lsw = ENC_WAIT_FOR_INDEX : - 仅在使用QEP编码器时需要，直到第一?
//                               索引脉冲
//                             - 'lsw=ENC_CALIBRATION_DONE' 所示的环路在此阶段闭合
//  lsw = ENC_CALIBRATION_DONE      : 闭合速度环和电流环Id、Iq
//
//  ****************************************************************
//
//  构建级别6：验证用于验证带宽的SFRA功能
//  此演示代码使用级?代码对速度环内的电流环执行SFRA分析
//
// ============================================================================
// 构建级别4/6子程序，用于电机1的控?
// 功能：实现电?的速度环和电流环控制，包括PID速度调节和SFRA分析（如果启用）
#pragma FUNC_ALWAYS_INLINE(buildLevel4_M1)

static inline void buildLevel4_M1(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M1(&motorVars[0]);  // 运行PI控制器，用于电机1的电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M1(&motorVars[0]);  // 运行复数控制器，用于电机1的电流环控制
#endif

// ----------------------------------------------------------------------------
// FCL_cycleCount 计算，用于调?
// 客户可以在最终实现中删除以下代码
// ----------------------------------------------------------------------------
    getFCLTime(MTR_1);  // 获取电机1的FCL执行时间，用于性能分析

// -----------------------------------------------------------------------------
// 使用SDFM Filter3测量直流母线电压
// ----------------------------------------------------------------------------
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);  // 获取电机1的直流母线电?

// ----------------------------------------------------------------------------
// 快速电流环控制器包装器
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M1(&motorVars[0]);  // 运行PI控制器包装器，用于电?的快速电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M1(&motorVars[0]);  // 运行复数控制器包装器，用于电?的快速电流环控制
#endif

    // ------------------------------------------------------------------------
    // 编码器对齐程序：此程序将电机对齐到零电角度，
    // 对于QEP编码器，还会找到索引位置并相对于索引位置初始化角?
    // ------------------------------------------------------------------------
    if(motorVars[0].runMotor == MOTOR_RUN)
    {
        if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            motorVars[0].IdRef = motorVars[0].IdRef_run;  // 设置运行时的Id参考?
            motorVars[0].rc.TargetValue = motorVars[0].speedRef;  // 设置速度参考?
        }
        else if(motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX)
        {
            motorVars[0].rc.TargetValue = motorVars[0].lsw1Speed *
                    (motorVars[0].speedRef > 0 ? 1 : -1);  // 设置等待索引时的速度目标?

            // -----------------------------------------------------------------------------
            //  连接RAMP GEN模块的输入并调用斜坡生成器模?
            // -----------------------------------------------------------------------------
                motorVars[0].ptrFCL->rg.Freq = motorVars[0].rc.SetpointValue;
                fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);

        }
        else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
        {
            motorVars[0].rc.TargetValue = 0;  // 设置速度目标值为0
            motorVars[0].rc.SetpointValue = 0;  // 设置速度设定值为0

            // 对齐电流
            motorVars[0].IdRef = motorVars[0].IdRef_start;  //(0.1);  // 设置对齐时的Id参考?

            // 设置对齐和保持时间，使轴稳定
            if(motorVars[0].tempIdRef >= motorVars[0].IdRef)
            {
                motorVars[0].alignCntr++;  // 增加对齐计数?

                if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
                {
                    motorVars[0].alignCntr  = 0;  // 重置对齐计数?

                    // 对于QEP，旋转电机以找到索引脉冲
                    motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;  // 切换到等待索引状?
                }
            }
        } // end else if(lsw == ENC_ALIGNMENT)
    }
    else
    {
        motorVars[0].IdRef = 0;  // 设置Id参考值为0
        motorVars[0].tempIdRef = motorVars[0].IdRef;  // 重置临时Id参考?

        motorVars[0].rc.TargetValue = 0;  // 设置速度目标值为0

        FCL_resetController(&motorVars[0]);  // 重置控制?
    }

    //
    //  连接RMP模块的输入并调用斜坡控制模块
    //
    fclRampControl(&motorVars[0].rc);  // 调用斜坡控制模块，实现速度的平滑过?

// -----------------------------------------------------------------------------
//  连接SPEED_FR模块的输入并调用速度计算模块
// -----------------------------------------------------------------------------
    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;  // 获取电机1的电角度位置
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;  // 获取电机1的机械角度位?
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;  // 设置速度计算模块的电角度输入

    if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM1(motorVars[0].posMechTheta);
        runCustomSpeedMeasureM1();
    }
    else
    {
        resetCustomSpeedMeasureM1(motorVars[0].posMechTheta);
        motorVars[0].speed.Speed = 0.0f;
    }


// -----------------------------------------------------------------------------
//    连接PI模块的输入并调用PID速度控制器模?
// -----------------------------------------------------------------------------
    motorVars[0].speedLoopCount++;  // 增加速度环计数器

    if(motorVars[0].speedLoopCount >= motorVars[0].speedLoopPrescaler)
    {
        motorVars[0].pid_spd.term.Fbk = m1_custom_speed_pu;  // 设置速度反馈?
        motorVars[0].pid_spd.term.Ref = motorVars[0].rc.SetpointValue;
        updateSpeedPIDGains(&motorVars[0]);
        runPID(&motorVars[0].pid_spd);  // 运行PID控制器，计算速度环输?
        motorVars[0].speedLoopCount = 0;  // 重置速度环计数器
    }

    if((motorVars[0].ptrFCL->lsw != ENC_CALIBRATION_DONE) ||
            (motorVars[0].runMotor == MOTOR_STOP))
    {
        // 重置PID速度控制器的状态变?
        motorVars[0].pid_spd.data.d1 = 0;
        motorVars[0].pid_spd.data.d2 = 0;
        motorVars[0].pid_spd.data.i1 = 0;
        motorVars[0].pid_spd.data.ud = 0;
        motorVars[0].pid_spd.data.ui = 0;
        motorVars[0].pid_spd.data.up = 0;
    }

// -----------------------------------------------------------------------------
//    为FCL设置iqref和idref
// -----------------------------------------------------------------------------

    motorVars[0].ptrFCL->pi_iq.ref =
            (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[0].IqRef : motorVars[0].pid_spd.term.Out;

    motorVars[0].tempIdRef = ramper(motorVars[0].IdRef,
                                    motorVars[0].tempIdRef, 0.00001);
    motorVars[0].pi_id.ref = motorVars[0].tempIdRef;
   return;
}

// 构建级别4/6子程序，用于电机2的控?
// 功能：实现电?的速度环和电流环控制，包括PID速度调节和SFRA分析（如果启用）
#pragma FUNC_ALWAYS_INLINE(buildLevel4_M2)

static inline void buildLevel4_M2(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M2(&motorVars[1]);  // 运行PI控制器，用于电机2的电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M2(&motorVars[1]);  // 运行复数控制器，用于电机2的电流环控制
#endif

// ----------------------------------------------------------------------------
// FCL_cycleCount 计算，用于调?
// 客户可以在最终实现中删除以下代码
// ----------------------------------------------------------------------------
    getFCLTime(MTR_2);  // 获取电机2的FCL执行时间，用于性能分析

// -----------------------------------------------------------------------------
// 使用SDFM Filter3测量直流母线电压
// ----------------------------------------------------------------------------
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[1]);  // 获取电机2的直流母线电?

// ----------------------------------------------------------------------------
// 快速电流环控制器包装器
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);  // 运行PI控制器包装器，用于电?的快速电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);  // 运行复数控制器包装器，用于电?的快速电流环控制
#endif

    // ------------------------------------------------------------------------
    // 编码器对齐程序：此程序将电机对齐到零电角度，
    // 对于QEP编码器，还会找到索引位置并相对于索引位置初始化角?
    // ------------------------------------------------------------------------
    if(motorVars[1].runMotor == MOTOR_RUN)
    {
        if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            motorVars[1].IdRef = motorVars[1].IdRef_run;  // 设置运行时的Id参考?
            motorVars[1].rc.TargetValue = motorVars[1].speedRef;  // 设置速度参考?
        }
        else if(motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX)
        {
            motorVars[1].rc.TargetValue = motorVars[1].lsw1Speed *
                    (motorVars[1].speedRef > 0 ? 1 : -1);  // 设置等待索引时的速度目标?

            // -----------------------------------------------------------------------------
            //  连接RAMP GEN模块的输入并调用斜坡生成器模?
            // -----------------------------------------------------------------------------
                motorVars[1].ptrFCL->rg.Freq = motorVars[1].rc.SetpointValue;
                fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);

        }
        else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
        {
            motorVars[1].rc.TargetValue = 0;  // 设置速度目标值为0
            motorVars[1].rc.SetpointValue = 0;  // 设置速度设定值为0

            // 对齐电流
            motorVars[1].IdRef = motorVars[1].IdRef_start;  //(0.1);  // 设置对齐时的Id参考?

            // 设置对齐和保持时间，使轴稳定
            if(motorVars[1].tempIdRef >= motorVars[1].IdRef)
            {
                motorVars[1].alignCntr++;  // 增加对齐计数?

                if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
                {
                    motorVars[1].alignCntr  = 0;  // 重置对齐计数?

                    // 对于QEP，旋转电机以找到索引脉冲
                    motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;  // 切换到等待索引状?
                }
            }
        } // end else if(lsw == ENC_ALIGNMENT)
    }
    else
    {
        motorVars[1].IdRef = 0;  // 设置Id参考值为0
        motorVars[1].tempIdRef = motorVars[1].IdRef;  // 重置临时Id参考?

        motorVars[1].rc.TargetValue = 0;  // 设置速度目标值为0

        FCL_resetController(&motorVars[1]);  // 重置控制?
    }

// -----------------------------------------------------------------------------
//  连接RMP模块的输入并调用斜坡控制模块
// -----------------------------------------------------------------------------
    fclRampControl(&motorVars[1].rc);  // 调用斜坡控制模块，实现速度的平滑过?

// -----------------------------------------------------------------------------
//  连接SPEED_FR模块的输入并调用速度计算模块
// -----------------------------------------------------------------------------
    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;  // 获取电机2的电角度位置
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;  // 获取电机2的机械角度位?
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;  // 设置速度计算模块的电角度输入
    if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM2(motorVars[1].posMechTheta);
        runCustomSpeedMeasureM2();
    }
    else
    {
        resetCustomSpeedMeasureM2(motorVars[1].posMechTheta);
        motorVars[1].speed.Speed = 0.0f;
    }


// -----------------------------------------------------------------------------
//    连接PI模块的输入并调用PID速度控制器模?
// -----------------------------------------------------------------------------
    motorVars[1].speedLoopCount++;  // 增加速度环计数器

    if(motorVars[1].speedLoopCount >= motorVars[1].speedLoopPrescaler)
    {
        motorVars[1].pid_spd.term.Fbk = m2_custom_speed_pu;  // 设置速度反馈?
        motorVars[1].pid_spd.term.Ref = motorVars[1].rc.SetpointValue;
        updateSpeedPIDGains(&motorVars[1]);
        runPID(&motorVars[1].pid_spd);  // 运行PID控制器，计算速度环输?
        motorVars[1].speedLoopCount = 0;  // 重置速度环计数器
    }

    if((motorVars[1].ptrFCL->lsw != ENC_CALIBRATION_DONE) ||
            (motorVars[1].runMotor == MOTOR_STOP))
    {
        // 重置PID速度控制器的状态变?
        motorVars[1].pid_spd.data.d1 = 0;
        motorVars[1].pid_spd.data.d2 = 0;
        motorVars[1].pid_spd.data.i1 = 0;
        motorVars[1].pid_spd.data.ud = 0;
        motorVars[1].pid_spd.data.ui = 0;
        motorVars[1].pid_spd.data.up = 0;
    }

// -----------------------------------------------------------------------------
//    为FCL设置iqref和idref
// -----------------------------------------------------------------------------

    motorVars[1].ptrFCL->pi_iq.ref =
            (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[1].IqRef :motorVars[1].pid_spd.term.Out;

    motorVars[1].tempIdRef = ramper(motorVars[1].IdRef,
                                    motorVars[1].tempIdRef, 0.00001);
    motorVars[1].pi_id.ref = motorVars[1].tempIdRef;
    return;
 }
#endif // (BUILDLEVEL==FCL_LEVEL4)

//
//****************************************************************************
// INCRBUILD 5
//****************************************************************************
//
#if(BUILDLEVEL == FCL_LEVEL5)
// =============================== FCL_LEVEL 5 =================================
//  构建级别5：验证位置控?
//  位置参考值从本地posArray生成
//  lsw = ENC_ALIGNMENT      : 锁定电机转子
//  lsw = ENC_WAIT_FOR_INDEX : - 仅在使用QEP编码器时需要，直到第一?
//                               索引脉冲
//                             - 'lsw=ENC_CALIBRATION_DONE' 所示的环路在此阶段闭合
//  lsw = ENC_CALIBRATION_DONE : 闭合所有环路，位置/速度/电流(Id/Iq)
//
//    注意?
//       截至库版?x02，clarke1.As和clarke1.Bs未从FCL库中引出
//
// =============================================================================
// 构建级别5子程序，用于电机1的控?
// 功能：实现电?的位置控制，包括位置环、速度环和电流环的控制
#pragma FUNC_ALWAYS_INLINE(buildLevel5_M1)

static inline void buildLevel5_M1(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M1(&motorVars[0]);  // 运行PI控制器，用于电机1的电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M1(&motorVars[0]);  // 运行复数控制器，用于电机1的电流环控制
#endif

// -----------------------------------------------------------------------------
//    FCL_cycleCount 计算，用于调?
//    客户可以在最终实现中删除以下代码
// -----------------------------------------------------------------------------
    getFCLTime(MTR_1);  // 获取电机1的FCL执行时间，用于性能分析

// -----------------------------------------------------------------------------
//  使用SDFM Filter3测量直流母线电压
// -----------------------------------------------------------------------------
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);  // 获取电机1的直流母线电?

// -----------------------------------------------------------------------------
// 快速电流环控制器包装器
// -----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
   FCL_runPICtrlWrap_M1(&motorVars[0]);  // 运行PI控制器包装器，用于电?的快速电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
   FCL_runComplexCtrlWrap_M1(&motorVars[0]);  // 运行复数控制器包装器，用于电?的快速电流环控制
#endif

// -----------------------------------------------------------------------------
//  编码器对齐程序：此程序将电机对齐到零电角度，
//  对于QEP编码器，还会找到索引位置并相对于索引位置初始化角?
// -----------------------------------------------------------------------------
    if(motorVars[0].runMotor == MOTOR_STOP)
    {
        motorVars[0].ptrFCL->lsw = ENC_ALIGNMENT;  // 设置状态为编码器对?
        motorVars[0].lsw2EntryFlag = 0;  // 重置lsw2入口标志
        motorVars[0].alignCntr = 0;  // 重置对齐计数?
        motorVars[0].posCntr = 0;  // 重置位置计数?
        motorVars[0].posPtr = 0;  // 重置位置指针
        motorVars[0].IdRef = 0;  // 设置Id参考值为0
        motorVars[0].pi_id.ref = motorVars[0].IdRef;  // 设置PI_id参考值为0
        FCL_resetController(&motorVars[0]);  // 重置控制?
    }
    else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 对齐电流
        motorVars[0].IdRef = motorVars[0].IdRef_start;  //(0.1);  // 设置对齐时的Id参考?

        // ?runMotor = STOP)重启
        motorVars[0].rc.TargetValue = 0;  // 设置速度目标值为0
        motorVars[0].rc.SetpointValue = 0;  // 设置速度设定值为0

        // 设置对齐和保持时间，使轴稳定
        if(motorVars[0].pi_id.ref >= motorVars[0].IdRef)
        {
            motorVars[0].alignCntr++;  // 增加对齐计数?

            if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
            {
                motorVars[0].alignCntr  = 0;  // 重置对齐计数?

                // 对于QEP，旋转电机以找到索引脉冲
                motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;  // 切换到等待索引状?
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[0].IdRef = motorVars[0].IdRef_run;  // 设置运行时的Id参考?
    }

// -----------------------------------------------------------------------------
//  连接RAMP GEN模块的输入并调用斜坡生成器模?
// -----------------------------------------------------------------------------
    motorVars[0].ptrFCL->rg.Freq = motorVars[0].speedRef * 0.1;  // 设置斜坡生成器的频率
    fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);  // 运行斜坡生成器，生成平滑的速度过渡

// -----------------------------------------------------------------------------
//   连接SPEED_FR模块的输入并调用速度计算模块
// -----------------------------------------------------------------------------
    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;  // 获取电机1的电角度位置
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;  // 获取电机1的机械角度位?
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;  // 设置速度计算模块的电角度输入
    runSpeedFR(&motorVars[0].speed);  // 运行速度计算模块，计算电?的速度

    if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM1(motorVars[0].posMechTheta);
        runCustomSpeedMeasureM1();
    }
    else
    {
        resetCustomSpeedMeasureM1(motorVars[0].posMechTheta);
        motorVars[0].speed.Speed = 0.0f;
    }

// -----------------------------------------------------------------------------
//    连接PID模块的输入并调用PID速度控制器模?
// -----------------------------------------------------------------------------
    motorVars[0].speedLoopCount++;  // 增加速度环计数器

    if(motorVars[0].speedLoopCount >= motorVars[0].speedLoopPrescaler)
    {
        if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            if(!motorVars[0].lsw2EntryFlag)
            {
                motorVars[0].lsw2EntryFlag = 1;  // 设置入口标志
                motorVars[0].rc.TargetValue = motorVars[0].posMechTheta;  // 设置目标位置为当前机械角?
                motorVars[0].pi_pos.Fbk = motorVars[0].rc.TargetValue;  // 设置位置控制器的反馈?
                motorVars[0].pi_pos.Ref = motorVars[0].pi_pos.Fbk;  // 设置位置控制器的参考?
            }
            else
            {
                // ========== 参考位置设?=========
                // 选择两个位置命令之一
                // 用户可以选择在refPosGen()中使用的位置参考表
                // 或从rg1.Out输入
                // 从表中读取位置命?
                motorVars[0].rc.TargetValue =
                        refPosGen(motorVars[0].rc.TargetValue, &motorVars[0]);  // 生成参考位?

                motorVars[0].rc.SetpointValue = motorVars[0].rc.TargetValue -
                             (float32_t)((int32_t)motorVars[0].rc.TargetValue);  // 提取小数部分作为设定?

                // 将角度限制在0?pu范围?
                if(motorVars[0].rc.SetpointValue < 0)
                {
                    motorVars[0].rc.SetpointValue += 1.0;  // 调整负值到正值范?
                }

                motorVars[0].pi_pos.Ref = motorVars[0].rc.SetpointValue;  // 设置位置控制器的参考?
                motorVars[0].pi_pos.Fbk = motorVars[0].posMechTheta;  // 设置位置控制器的反馈?
            }

            runPIPos(&motorVars[0].pi_pos);  // 运行位置PI控制?

            // 速度PI调节?
            motorVars[0].pid_spd.term.Ref = motorVars[0].pi_pos.Out;  // 位置控制器的输出作为速度控制器的参考?
            motorVars[0].pid_spd.term.Fbk = m1_custom_speed_pu;  // 设置速度控制器的反馈?
            updateSpeedPIDGains(&motorVars[0]);
            runPID(&motorVars[0].pid_spd);  // 运行速度PID控制?
        }

        motorVars[0].speedLoopCount = 0;  // 重置速度环计数器
    }

    if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[0].rc.SetpointValue = 0;  // 位置 = 0 ?
        motorVars[0].pid_spd.data.d1 = 0;  // 重置PID速度控制器的状态变?
        motorVars[0].pid_spd.data.d2 = 0;
        motorVars[0].pid_spd.data.i1 = 0;
        motorVars[0].pid_spd.data.ud = 0;
        motorVars[0].pid_spd.data.ui = 0;
        motorVars[0].pid_spd.data.up = 0;

        motorVars[0].pi_pos.ui = 0;  // 重置位置PI控制器的状态变?
        motorVars[0].pi_pos.i1 = 0;

        motorVars[0].ptrFCL->rg.Out = 0;  // 重置斜坡生成器的输出
        motorVars[0].lsw2EntryFlag = 0;  // 重置入口标志
    }

// -----------------------------------------------------------------------------
//  为FCL设置iqref
// -----------------------------------------------------------------------------
    motorVars[0].ptrFCL->pi_iq.ref =
            (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[0].IqRef : motorVars[0].pid_spd.term.Out;  // 根据当前状态设置q轴电流参考?

// -----------------------------------------------------------------------------
//  为FCL设置idref
// -----------------------------------------------------------------------------
    motorVars[0].pi_id.ref =
            ramper(motorVars[0].IdRef, motorVars[0].pi_id.ref, 0.00001);  // 使用斜坡函数平滑过渡Id参考?

    return;
}

// 构建级别5子程序，用于电机2的控?
// 功能：实现电?的位置控制，包括位置环、速度环和电流环的控制
#pragma FUNC_ALWAYS_INLINE(buildLevel5_M2)

static inline void buildLevel5_M2(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M2(&motorVars[1]);  // 运行PI控制器，用于电机2的电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M2(&motorVars[1]);  // 运行复数控制器，用于电机2的电流环控制
#endif

// -----------------------------------------------------------------------------
//    FCL_cycleCount 计算，用于调?
//    客户可以在最终实现中删除以下代码
// -----------------------------------------------------------------------------
    getFCLTime(MTR_2);  // 获取电机2的FCL执行时间，用于性能分析

// -----------------------------------------------------------------------------
//  使用SDFM Filter3测量直流母线电压
// -----------------------------------------------------------------------------
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[1]);  // 获取电机2的直流母线电?

// -----------------------------------------------------------------------------
// 快速电流环控制器包装器
// -----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);  // 运行PI控制器包装器，用于电?的快速电流环控制
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);  // 运行复数控制器包装器，用于电?的快速电流环控制
#endif

// -----------------------------------------------------------------------------
//  编码器对齐程序：此程序将电机对齐到零电角度，
//  对于QEP编码器，还会找到索引位置并相对于索引位置初始化角?
// -----------------------------------------------------------------------------
    if(motorVars[1].runMotor == MOTOR_STOP)
    {
        motorVars[1].ptrFCL->lsw = ENC_ALIGNMENT;  // 设置状态为编码器对?
        motorVars[1].lsw2EntryFlag = 0;  // 重置lsw2入口标志
        motorVars[1].alignCntr = 0;  // 重置对齐计数?
        motorVars[1].posCntr = 0;  // 重置位置计数?
        motorVars[1].posPtr = 0;  // 重置位置指针
        motorVars[1].IdRef = 0;  // 设置Id参考值为0
        motorVars[1].pi_id.ref = motorVars[1].IdRef;  // 设置PI_id参考值为0
        FCL_resetController(&motorVars[1]);  // 重置控制?
    }
    else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 对齐电流
        motorVars[1].IdRef = motorVars[1].IdRef_start;  //(0.1);  // 设置对齐时的Id参考?

        // ?runMotor = STOP)重启
        motorVars[1].rc.TargetValue = 0;  // 设置速度目标值为0
        motorVars[1].rc.SetpointValue = 0;  // 设置速度设定值为0

        // 设置对齐和保持时间，使轴稳定
        if(motorVars[1].pi_id.ref >= motorVars[1].IdRef)
        {
            motorVars[1].alignCntr++;  // 增加对齐计数?

            if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
            {
                motorVars[1].alignCntr  = 0;  // 重置对齐计数?

                // 对于QEP，旋转电机以找到索引脉冲
                motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;  // 切换到等待索引状?
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[1].IdRef = motorVars[1].IdRef_run;  // 设置运行时的Id参考?
    }

// -----------------------------------------------------------------------------
//  连接RAMP GEN模块的输入并调用斜坡生成器模?
// -----------------------------------------------------------------------------
    motorVars[1].ptrFCL->rg.Freq = motorVars[1].speedRef * 0.1;  // 设置斜坡生成器的频率
    fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);  // 运行斜坡生成器，生成平滑的速度过渡

// -----------------------------------------------------------------------------
//  连接SPEED_FR模块的输入并调用速度计算模块
// -----------------------------------------------------------------------------
    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;  // 获取电机2的电角度位置
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;  // 获取电机2的机械角度位?
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;  // 设置速度计算模块的电角度输入
    runSpeedFR(&motorVars[1].speed);  // 运行速度计算模块，计算电?的速度

    if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        pushCustomSpeedSampleM2(motorVars[1].posMechTheta);
        runCustomSpeedMeasureM2();
    }
    else
    {
        resetCustomSpeedMeasureM2(motorVars[1].posMechTheta);
        motorVars[1].speed.Speed = 0.0f;
    }

// -----------------------------------------------------------------------------
//    连接PID模块的输入并调用PID速度控制器模?
// -----------------------------------------------------------------------------
    motorVars[1].speedLoopCount++;  // 增加速度环计数器

    if(motorVars[1].speedLoopCount >= motorVars[1].speedLoopPrescaler)
    {
        if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            if(!motorVars[1].lsw2EntryFlag)
            {
                motorVars[1].lsw2EntryFlag = 1;  // 设置入口标志
                motorVars[1].rc.TargetValue = motorVars[1].posMechTheta;  // 设置目标位置为当前机械角?
                motorVars[1].pi_pos.Fbk = motorVars[1].rc.TargetValue;  // 设置位置控制器的反馈?
                motorVars[1].pi_pos.Ref = motorVars[1].pi_pos.Fbk;  // 设置位置控制器的参考?
            }
            else
            {
                // ========== 参考位置设?=========
#if(BUILDLEVEL == FCL_LEVEL5)
                // 选择两个位置命令之一
                // 用户可以选择在refPosGen()中使用的位置参考表
                // 或从rg1.Out输入
                // 从表中读取位置命?
                motorVars[1].rc.TargetValue =
                        refPosGen(motorVars[1].rc.TargetValue, &motorVars[1]);  // 生成参考位?

#endif

                motorVars[1].rc.SetpointValue = motorVars[1].rc.TargetValue -
                             (float32_t)((int32_t)motorVars[1].rc.TargetValue);  // 提取小数部分作为设定?

                // 将角度限制在0?pu范围?
                if(motorVars[1].rc.SetpointValue < 0)
                {
                    motorVars[1].rc.SetpointValue += 1.0;  // 调整负值到正值范?
                }

                motorVars[1].pi_pos.Ref = motorVars[1].rc.SetpointValue;  // 设置位置控制器的参考?
                motorVars[1].pi_pos.Fbk = motorVars[1].posMechTheta;  // 设置位置控制器的反馈?
            }

            runPIPos(&motorVars[1].pi_pos);  // 运行位置PI控制?

            // 速度PI调节?
            motorVars[1].pid_spd.term.Ref = motorVars[1].pi_pos.Out;  // 位置控制器的输出作为速度控制器的参考?
            motorVars[1].pid_spd.term.Fbk = m2_custom_speed_pu;  // 设置速度控制器的反馈?
            updateSpeedPIDGains(&motorVars[1]);
            runPID(&motorVars[1].pid_spd);  // 运行速度PID控制?
        }

        motorVars[1].speedLoopCount = 0;  // 重置速度环计数器
    }

    if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[1].rc.SetpointValue = 0;  // 位置 = 0 ?
        motorVars[1].pid_spd.data.d1 = 0;  // 重置PID速度控制器的状态变?
        motorVars[1].pid_spd.data.d2 = 0;
        motorVars[1].pid_spd.data.i1 = 0;
        motorVars[1].pid_spd.data.ud = 0;
        motorVars[1].pid_spd.data.ui = 0;
        motorVars[1].pid_spd.data.up = 0;
        motorVars[1].pi_pos.ui = 0;  // 重置位置PI控制器的状态变?
        motorVars[1].pi_pos.i1 = 0;
        motorVars[1].ptrFCL->rg.Out = 0;  // 重置斜坡生成器的输出
        motorVars[1].lsw2EntryFlag = 0;  // 重置入口标志
    }

// -----------------------------------------------------------------------------
//  为FCL设置iqref
// -----------------------------------------------------------------------------
    motorVars[1].ptrFCL->pi_iq.ref =
            (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[1].IqRef : motorVars[1].pid_spd.term.Out;  // 根据当前状态设置q轴电流参考?

// -----------------------------------------------------------------------------
//  为FCL设置idref
// -----------------------------------------------------------------------------
    motorVars[1].pi_id.ref =
            ramper(motorVars[1].IdRef, motorVars[1].pi_id.ref, 0.00001);  // 使用斜坡函数平滑过渡Id参考?

    return;
}
#endif // (BUILDLEVEL==FCL_LEVEL5)

// ****************************************************************************
// ****************************************************************************
// 电机控制中断服务函数
// ****************************************************************************
// ****************************************************************************

#pragma CODE_ALIGN(motor1ControlISR, 2)  // 代码对齐，优化中断服务函数执行效?
// 电机1控制中断服务函数
// 功能：根据当前构建级别调用相应的电机1控制函数，并进行数据记录和中断确?
__interrupt void motor1ControlISR(void)
{

#if(BUILDLEVEL == FCL_LEVEL3)  // FCL_LEVEL3：电流环+速度环控?
    buildLevel3_M1();  // 调用电机1的FCL_LEVEL3控制函数

// ----------------------------------------------------------------------------
// 设置数据记录模块的输?
// ----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].posElecTheta;  // 电角?
    dlogCh2 = motorVars[0].ptrFCL->rg.Out;  // 斜坡发生器输?
    dlogCh3 = motorVars[0].ptrFCL->pi_iq.ref;  // q轴电流参考?
    dlogCh4 = motorVars[0].ptrFCL->pi_iq.fbk;  // q轴电流反馈?

#ifdef DACOUT_EN  // 如果定义了DAC输出
//-----------------------------------------------------------------------------
// 设置DAC输出?
//-----------------------------------------------------------------------------
    DAC_setShadowValue(hal.dacHandle[0],
                       DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.ref));  // DAC0输出q轴电流参考?
    DAC_setShadowValue(hal.dacHandle[1],
                       DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.fbk));  // DAC1输出q轴电流反馈?
#endif   // DACOUT_EN

#elif(BUILDLEVEL == FCL_LEVEL4)  // FCL_LEVEL4：速度?电流环控制（带编码器?
    buildLevel4_M1();

// -----------------------------------------------------------------------------
// 设置数据记录模块的输?
// -----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].posElecTheta;  // 电机1的电角度
    dlogCh2 = m1_custom_speed_pu;  // 电机1的速度
    dlogCh3 = motorVars[1].posElecTheta;  // 电机2的电角度
    dlogCh4 = m2_custom_speed_pu;  // 电机2的速度

#ifdef DACOUT_EN  // 如果定义了DAC输出
//------------------------------------------------------------------------------
// 设置DAC输出?
//------------------------------------------------------------------------------
   DAC_setShadowValue(hal.dacHandle[0],
                      DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.fbk));  // DAC0输出电机1的q轴电流反馈?
   DAC_setShadowValue(hal.dacHandle[1],
                      DAC_MACRO_PU(m1_custom_speed_pu));  // DAC1输出电机1的速度
#endif   // DACOUT_EN

#elif(BUILDLEVEL == FCL_LEVEL5)  // FCL_LEVEL5：位置环+速度?电流环控?
    buildLevel5_M1();  // 调用电机1的FCL_LEVEL5控制函数

// -----------------------------------------------------------------------------
// 设置数据记录模块的输?
// -----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].pi_pos.Ref;  // 位置参考?
    dlogCh2 = motorVars[0].pi_pos.Fbk;  // 位置反馈?
    dlogCh3 = motorVars[0].pi_id.fbk;  // d轴电流反馈?
    dlogCh4 = motorVars[0].ptrFCL->pi_iq.fbk;  // q轴电流反馈?

#ifdef DACOUT_EN  // 如果定义了DAC输出
//------------------------------------------------------------------------------
// 设置DAC输出?
//------------------------------------------------------------------------------
    DAC_setShadowValue(hal.dacHandle[0],
                       DAC_MACRO_PU(motorVars[0].pi_pos.Fbk));  // DAC0输出电机1的位置反馈?
    DAC_setShadowValue(hal.dacHandle[1],
                       DAC_MACRO_PU(motorVars[1].pi_pos.Fbk));  // DAC1输出电机2的位置反馈?
#endif   // DACOUT_EN

#endif


// ----------------------------------------------------------------------------
// 调用数据记录更新函数
// ----------------------------------------------------------------------------
    DLOG_4CH_F_FUNC(&dlog_4ch1);  // 更新4通道数据记录模块

    // 确认中断
    HAL_ackInt_M1(halMtrHandle[MTR_1]);  // 确认电机1的中?

    motorVars[0].isrTicker++;  // 增加电机1的中断计数器

} // motor1ControlISR 结束


#pragma CODE_ALIGN(motor2ControlISR, 2)  // 代码对齐，优化中断服务函数执行效?
// 电机2控制中断服务函数
// 功能：根据当前构建级别调用相应的电机2控制函数，并进行中断确认
__interrupt void motor2ControlISR(void)
{

#if(BUILDLEVEL == FCL_LEVEL3)
    buildLevel3_M2();

#elif(BUILDLEVEL == FCL_LEVEL4)
    buildLevel4_M2();

#elif(BUILDLEVEL == FCL_LEVEL5)
    buildLevel5_M2();

#endif


    // Acknowledges an interrupt
    HAL_ackInt_M2(halMtrHandle[MTR_2]);

    motorVars[1].isrTicker++;
} // motor1ControlISR Ends Here

//
// POSITION LOOP UTILITY FUNCTIONS
//

// 可编程斜坡函?
// 功能：限制输入值的变化率，实现平滑过渡
// 参数?
//   in - 目标输入?
//   out - 当前输出?
//   rampDelta - 最大允许的变化?
// 返回值：
//   限制变化率后的输出?
float32_t ramper(float32_t in, float32_t out, float32_t rampDelta)
{
    float32_t err;

    err = in - out;  // 计算输入与输出的误差

    if(err > rampDelta)  // 如果误差大于最大允许变化率
    {
        return(out + rampDelta);  // 输出增加最大允许变化率
    }
    else if(err < -rampDelta)  // 如果误差小于负的最大允许变化率
    {
        return(out - rampDelta);  // 输出减少最大允许变化率
    }
    else  // 如果误差在允许范围内
    {
        return(in);  // 直接返回输入?
    }
}

//
// 位置环参考位置生成器
// 功能：从位置数组中读取参考位置，并使用斜坡函数实现平滑过?
// 参数?
//   out - 当前输出位置
//   pMotor - 电机变量指针
// 返回值：
//   平滑过渡后的参考位?
float32_t refPosGen(float32_t out, MOTOR_Vars_t *pMotor)
{
    float32_t in = posArray[pMotor->posPtr];  // 从位置数组中读取当前参考位?

    out = ramper(in, out, pMotor->posSlewRate);  // 使用斜坡函数实现平滑过渡

    if(in == out)  // 如果已经达到目标位置
    {
        pMotor->posCntr++;  // 增加位置计数?

        if(pMotor->posCntr > pMotor->posCntrMax)  // 如果计数器达到最大?
        {
            pMotor->posCntr = 0;  // 重置计数?

            pMotor->posPtr++;  // 移动到下一个参考位?

            if(pMotor->posPtr >= pMotor->posPtrMax)  // 如果达到位置数组末尾
            {
                pMotor->posPtr = 0;  // 重置位置指针，循环使用位置数?
            }
        }
    }

    return(out);  // 返回平滑过渡后的参考位?
}

//
// 运行电机控制
// 功能：执行电机控制的核心逻辑，包括电流限制设置、母线电压监控、过流保护、故障处理等
// 参数?
//   pMotor - 电机变量指针
//   mtrHandle - 电机硬件抽象层句?
void runMotorControl(MOTOR_Vars_t *pMotor, HAL_MTR_Handle mtrHandle)
{
    (void)mtrHandle;

    // 极限测试：CMPSS限流保护已禁?
#if 0
    // *******************************************************
    // 电流限制设置 / 在调试环境中进行调优
    // *******************************************************
    pMotor->currentThreshHi = 2048 +
            scaleCurrentValue(pMotor->currentLimit, pMotor->currentInvSF);  // 计算电流上限阈?
    pMotor->currentThreshLo = 2048 -
            scaleCurrentValue(pMotor->currentLimit, pMotor->currentInvSF);  // 计算电流下限阈?

    HAL_setupCMPSS_DACValue(mtrHandle,
                            pMotor->currentThreshHi, pMotor->currentThreshLo);  // 设置CMPSS的DAC值，用于过流保护
#endif

    // 母线电压滤波
    pMotor->Vdcbus = (pMotor->Vdcbus * 0.8) + (pMotor->FCL_params.Vdcbus * 0.2);  // 使用一阶低通滤波器平滑母线电压测量?

    // 极限测试：母线电压监控已禁用
#if 0
    if( (pMotor->Vdcbus > pMotor->VdcbusMax) ||
            (pMotor->Vdcbus < pMotor->VdcbusMin) )  // 检查母线电压是否超出允许范?
    {
        pMotor->tripFlagDMC |= 0x0002;  // 设置母线电压故障标志
    }
    else
    {
        pMotor->tripFlagDMC &= (0xFFFF - 0x0002);  // 清除母线电压故障标志
    }
#endif

    // 极限测试：TZ过流检测已禁用
#if 0
    if((EPWM_getTripZoneFlagStatus(obj->pwmHandle[0]) & EPWM_TZ_FLAG_OST) ||  // 检查U相PWM过流标志
       (EPWM_getTripZoneFlagStatus(obj->pwmHandle[1]) & EPWM_TZ_FLAG_OST) ||  // 检查V相PWM过流标志
       (EPWM_getTripZoneFlagStatus(obj->pwmHandle[2]) & EPWM_TZ_FLAG_OST))  // 检查W相PWM过流标志
    {
        EPWM_forceTripZoneEvent(obj->pwmHandle[0], EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(obj->pwmHandle[1], EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(obj->pwmHandle[2], EPWM_TZ_FORCE_EVENT_OST);

        GPIO_writePin(pMotor->drvEnableGateGPIO, 1);

        pMotor->tripFlagDMC |= 0x0001;  // 设置过流故障标志
    }
#endif

    // 极限测试：故障处理和清除已禁?
#if 0
    pMotor->tripFlagPrev |= pMotor->tripFlagDMC;  // 保存当前故障标志到上一次故障标?

    if(pMotor->tripFlagDMC != 0)  // 如果存在故障
    {
        pMotor->runMotor = MOTOR_STOP;  // 停止电机运行
        pMotor->ctrlState = CTRL_FAULT;  // 设置控制状态为故障

        GPIO_writePin(pMotor->drvEnableGateGPIO, 1);
    }

    if((pMotor->tripFlagDMC != 0) && (pMotor->clearTripFlagDMC == true))
    {
        pMotor->tripCountDMC++;  // 增加故障计数?
    }

    if(pMotor->clearTripFlagDMC == true)
    {
        DEVICE_DELAY_US(1L);

        EPWM_clearTripZoneFlag(obj->pwmHandle[0],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));
        EPWM_clearTripZoneFlag(obj->pwmHandle[1],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));
        EPWM_clearTripZoneFlag(obj->pwmHandle[2],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));

        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[0]);
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[1]);
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[2]);

        CMPSS_clearFilterLatchLow(obj->cmpssHandle[0]);
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[1]);
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[2]);

        pMotor->tripFlagDMC = 0;  // 清除故障标志
        pMotor->clearTripFlagDMC = 0;  // 清除清除故障标志
        pMotor->ctrlState = CTRL_STOP;  // 设置控制状态为停止
        pMotor->ptrFCL->lsw = ENC_ALIGNMENT;  // 设置FCL状态为编码器对?
    }
#endif

    // 控制状态处?
    if(pMotor->ctrlState == CTRL_RUN)  // 如果控制状态为运行
    {
        if(pMotor->runMotor == MOTOR_STOP)  // 如果电机当前为停止状?
        {
            pMotor->runMotor = MOTOR_RUN;  // 设置电机为运行状?

            // 启用驱动门极
            GPIO_writePin(pMotor->drvEnableGateGPIO, 0);
        }
    }
    else  // 如果控制状态不为运?
    {
        if(pMotor->runMotor == MOTOR_RUN)  // 如果电机当前为运行状?
        {
            pMotor->runMotor = MOTOR_STOP;  // 设置电机为停止状?

            // 禁用驱动门极
            GPIO_writePin(pMotor->drvEnableGateGPIO, 1);
        }
    }

    return;
}

//------------------------------------------------------------------------------
// runSyncControl()
// 功能：同步控制两个电机的运行状态，包括速度参考值和控制状态的同步
static inline void runCustomSpeedMeasureM1(void)
{
    float32_t old_pos;
    float32_t new_pos;
    float32_t delta_turns;
    float32_t raw_rpm;
    float32_t raw_speed_pu;
    uint16_t windowSamples;
    uint16_t oldIdx;

    while(m1_pos_sample_tail != m1_pos_sample_head)
    {
        new_pos = m1_pos_sample_queue[m1_pos_sample_tail];
        m1_pos_sample_tail =
                (m1_pos_sample_tail + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;

        windowSamples = getCustomSpeedWindowSamples(&motorVars[0]);
        oldIdx = m1_pos_idx + CUSTOM_SPEED_HISTORY_SAMPLES - windowSamples;
        if(oldIdx >= CUSTOM_SPEED_HISTORY_SAMPLES)
        {
            oldIdx -= CUSTOM_SPEED_HISTORY_SAMPLES;
        }

        old_pos = m1_pos_history[oldIdx];
        m1_pos_history[m1_pos_idx] = new_pos;

        m1_pos_idx++;
        if(m1_pos_idx >= CUSTOM_SPEED_HISTORY_SAMPLES)
        {
            m1_pos_idx = 0U;
        }

        delta_turns = new_pos - old_pos;
        if(delta_turns < -0.5f)
        {
            delta_turns += 1.0f;
        }
        else if(delta_turns > 0.5f)
        {
            delta_turns -= 1.0f;
        }

        raw_rpm = delta_turns * ((60.0f * CUSTOM_SPEED_ISR_FREQ_HZ) /
                (float32_t)windowSamples);
        raw_speed_pu = raw_rpm / motorVars[0].speed.BaseRpm;

        m1_custom_speed_pu =
            (0.85f * m1_custom_speed_pu) + (0.15f * raw_speed_pu);

        motorVars[0].speed.Speed = m1_custom_speed_pu;
        motorVars[0].pid_spd.term.Fbk = m1_custom_speed_pu;
    }
}

static inline void resetCustomSpeedMeasureM1(float32_t mechTheta)
{
    uint16_t idx;

    for(idx = 0U; idx < CUSTOM_SPEED_HISTORY_SAMPLES; idx++)
    {
        m1_pos_history[idx] = mechTheta;
    }

    m1_pos_idx = 0U;
    m1_pos_sample_head = 0U;
    m1_pos_sample_tail = 0U;
    m1_custom_speed_pu = 0.0f;
    m1_customSpeedActive = false;
    m1_pos_sample_overflow = 0U;
}

static inline void pushCustomSpeedSampleM1(float32_t mechTheta)
{
    uint16_t nextHead;

    if(m1_customSpeedActive == false)
    {
        resetCustomSpeedMeasureM1(mechTheta);
        m1_customSpeedActive = true;
    }

    nextHead = (m1_pos_sample_head + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;

    if(nextHead == m1_pos_sample_tail)
    {
        m1_pos_sample_tail =
                (m1_pos_sample_tail + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;
        m1_pos_sample_overflow++;
    }

    m1_pos_sample_queue[m1_pos_sample_head] = mechTheta;
    m1_pos_sample_head = nextHead;
}

static inline void runCustomSpeedMeasureM2(void)
{
    float32_t old_pos;
    float32_t new_pos;
    float32_t delta_turns;
    float32_t raw_rpm;
    float32_t raw_speed_pu;
    uint16_t windowSamples;
    uint16_t oldIdx;

    while(m2_pos_sample_tail != m2_pos_sample_head)
    {
        new_pos = m2_pos_sample_queue[m2_pos_sample_tail];
        m2_pos_sample_tail =
                (m2_pos_sample_tail + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;

        windowSamples = getCustomSpeedWindowSamples(&motorVars[1]);
        oldIdx = m2_pos_idx + CUSTOM_SPEED_HISTORY_SAMPLES - windowSamples;
        if(oldIdx >= CUSTOM_SPEED_HISTORY_SAMPLES)
        {
            oldIdx -= CUSTOM_SPEED_HISTORY_SAMPLES;
        }

        old_pos = m2_pos_history[oldIdx];
        m2_pos_history[m2_pos_idx] = new_pos;

        m2_pos_idx++;
        if(m2_pos_idx >= CUSTOM_SPEED_HISTORY_SAMPLES)
        {
            m2_pos_idx = 0U;
        }

        delta_turns = new_pos - old_pos;
        if(delta_turns < -0.5f)
        {
            delta_turns += 1.0f;
        }
        else if(delta_turns > 0.5f)
        {
            delta_turns -= 1.0f;
        }

        raw_rpm = delta_turns * ((60.0f * CUSTOM_SPEED_ISR_FREQ_HZ) /
                (float32_t)windowSamples);
        raw_speed_pu = raw_rpm / motorVars[1].speed.BaseRpm;

        m2_custom_speed_pu =
            (0.85f * m2_custom_speed_pu) + (0.15f * raw_speed_pu);

        motorVars[1].speed.Speed = m2_custom_speed_pu;
        motorVars[1].pid_spd.term.Fbk = m2_custom_speed_pu;
    }
}

static inline void resetCustomSpeedMeasureM2(float32_t mechTheta)
{
    uint16_t idx;

    for(idx = 0U; idx < CUSTOM_SPEED_HISTORY_SAMPLES; idx++)
    {
        m2_pos_history[idx] = mechTheta;
    }

    m2_pos_idx = 0U;
    m2_pos_sample_head = 0U;
    m2_pos_sample_tail = 0U;
    m2_custom_speed_pu = 0.0f;
    m2_customSpeedActive = false;
    m2_pos_sample_overflow = 0U;
}

static inline void pushCustomSpeedSampleM2(float32_t mechTheta)
{
    uint16_t nextHead;

    if(m2_customSpeedActive == false)
    {
        resetCustomSpeedMeasureM2(mechTheta);
        m2_customSpeedActive = true;
    }

    nextHead = (m2_pos_sample_head + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;

    if(nextHead == m2_pos_sample_tail)
    {
        m2_pos_sample_tail =
                (m2_pos_sample_tail + 1U) & CUSTOM_SPEED_SAMPLE_QUEUE_MASK;
        m2_pos_sample_overflow++;
    }

    m2_pos_sample_queue[m2_pos_sample_head] = mechTheta;
    m2_pos_sample_head = nextHead;
}

static inline uint16_t getCustomSpeedWindowSamples(MOTOR_Vars_t *pMotor)
{
    float32_t refAbs = pMotor->rc.SetpointValue;
    float32_t speedAbs = pMotor->pid_spd.term.Fbk;

    if(refAbs < 0.0f)
    {
        refAbs = -refAbs;
    }

    if(speedAbs < 0.0f)
    {
        speedAbs = -speedAbs;
    }

    if(speedAbs > refAbs)
    {
        refAbs = speedAbs;
    }

    if(refAbs < CUSTOM_SPEED_SLOW_THRESHOLD)
    {
        return(CUSTOM_SPEED_SLOW_WINDOW);
    }
    else if(refAbs < CUSTOM_SPEED_MID_THRESHOLD)
    {
        return(CUSTOM_SPEED_MID_WINDOW);
    }

    return(CUSTOM_SPEED_FAST_WINDOW);
}

#if((BUILDLEVEL == FCL_LEVEL4) || (BUILDLEVEL == FCL_LEVEL5))
static inline void updateSpeedPIDGains(MOTOR_Vars_t *pMotor)
{
    float32_t speedAbs = pMotor->pid_spd.term.Fbk;
    float32_t refAbs = pMotor->pid_spd.term.Ref;
    float32_t blend;
    float32_t oldKp = pMotor->pid_spd.param.Kp;
    float32_t newKp;
    float32_t newKi;
    float32_t iScale;

    if(speedAbs < 0.0f)
    {
        speedAbs = -speedAbs;
    }

    if(refAbs < 0.0f)
    {
        refAbs = -refAbs;
    }

    if(refAbs > speedAbs)
    {
        speedAbs = refAbs;
    }

    if(speedAbs <= SPD_PID_GAIN_BLEND_LOW_SPEED)
    {
        blend = 0.0f;
    }
    else if(speedAbs >= SPD_PID_GAIN_BLEND_HIGH_SPEED)
    {
        blend = 1.0f;
    }
    else
    {
        blend = (speedAbs - SPD_PID_GAIN_BLEND_LOW_SPEED) /
                (SPD_PID_GAIN_BLEND_HIGH_SPEED - SPD_PID_GAIN_BLEND_LOW_SPEED);
    }

    newKp = SPD_PID_LOW_SPEED_HARD_KP +
            blend * (SPD_PID_HIGH_SPEED_SOFT_KP - SPD_PID_LOW_SPEED_HARD_KP);
    newKi = SPD_PID_LOW_SPEED_HARD_KI +
            blend * (SPD_PID_HIGH_SPEED_SOFT_KI - SPD_PID_LOW_SPEED_HARD_KI);

    if((oldKp > 0.001f) && (newKp > 0.001f) &&
            ((newKp > (oldKp + 0.0001f)) || (newKp < (oldKp - 0.0001f))))
    {
        iScale = oldKp / newKp;
        pMotor->pid_spd.data.i1 *= iScale;
        pMotor->pid_spd.data.ui = pMotor->pid_spd.data.i1;
    }

    pMotor->pid_spd.param.Kp = newKp;
    pMotor->pid_spd.param.Ki = newKi;
    pMotor->pid_spd.param.Kd = 0.0f;
    pMotor->pid_spd.param.Kr = 1.0f;
    pMotor->pid_spd.param.Umax = 2.0f;
    pMotor->pid_spd.param.Umin = -2.0f;
}

#endif

void runSyncControl(void)
{
    if(flagSyncRun == true)
    {
        // 只检查电?的故障标志，电机2未接驱动板，跳过其检?
        if((motorVars[0].tripFlagDMC == 0) /* && (motorVars[1].tripFlagDMC == 0) */)
        {

#if(BUILDLEVEL != FCL_LEVEL5)
            motorVars[0].speedRef = speedRef;
            motorVars[1].speedRef = speedRef;
#endif

#if(BUILDLEVEL == FCL_LEVEL3) 
            motorVars[0].IdRef_run = IdRef;
            motorVars[1].IdRef_run = IdRef;

            motorVars[0].IqRef = IqRef;
            motorVars[1].IqRef = IqRef;
#endif

            motorVars[0].ctrlState = ctrlState;
            motorVars[1].ctrlState = ctrlState;
        }
        else
        {
            motorVars[0].ctrlState = CTRL_STOP;
            motorVars[1].ctrlState = CTRL_STOP;
            motorVars[0].speedRef = 0.0;
            motorVars[1].speedRef = 0.0;
        }

        // 只检查电?，电?未接驱动?
        if(motorVars[0].runMotor == MOTOR_RUN)
        {
            runMotor = MOTOR_RUN;
        }
        else
        {
            runMotor= MOTOR_STOP;
        }
    }

    return;
}

//*****************************************************************************
//
// SCI中断服务函数
//



//
// End of Code
//
