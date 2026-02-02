//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

//
// FILE:    dual_axis_servo_ctrl_main_cpu1.c
// TITLE:   Main file for CPU1 - Speed and Position Control
//

#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include "dual_axis_servo_drive_ipc.h"

#include "device.h"
#include "driverlib.h"
#include "ipc.h"

// Advanced motion control (for BUILDLEVEL >= FCL_LEVEL7)
#if(BUILDLEVEL >= FCL_LEVEL7)
#include "motion_control.h"
#endif

// IPC Data pointers
IPC_DataFromCPU1_t *ipcDataFromCPU1;
IPC_DataToCPU1_t   *ipcDataToCPU1;

HAL_CPU1_Handle halCpu1Handle;
HAL_CPU1_Obj    halCpu1;

// Control variables
uint16_t vTimer0[4] = {0};
uint16_t vTimer1[4] = {0};
uint16_t vTimer2[4] = {0};

uint16_t led1Cnt = 0;
uint16_t led2Cnt = 0;

volatile uint16_t enableFlag = false;
uint16_t backTicker = 0;

// Motion control timing variables
#if(BUILDLEVEL >= FCL_LEVEL7)
uint16_t motionControlCounter = 0;     // 1ms position loop counter (50us * 20 = 1ms)
#define MOTION_CONTROL_DIVIDER  20     // 50us * 20 = 1ms
// Note: Profile update frequency is controlled by axis->profileUpdateDivider
//       in MotionAxis_updateProfile(), no need for separate counter here
#endif

// Motor control variables for CPU1
typedef struct {
    float32_t speedRef;
    float32_t speedFbk;
    float32_t posRef;
    float32_t posFbk;
    float32_t IqRef;
    float32_t IdRef;
    uint16_t  enable;
    uint16_t  ctrlState;
    
    // Speed PI controller
    float32_t speed_Kp;
    float32_t speed_Ki;
    float32_t speed_ui;
    float32_t speed_up;
    float32_t speed_error;
    float32_t speed_out;
    
    // Position PID controller
    float32_t pos_Kp;
    float32_t pos_Ki;
    float32_t pos_Kd;
    float32_t pos_ui;
    float32_t pos_ud;
    float32_t pos_up;
    float32_t pos_error;
    float32_t pos_error_prev;
    float32_t pos_out;
    
    uint32_t speedLoopCount;
    uint32_t speedLoopPrescaler;
} MOTOR_CTRL_CPU1_Vars_t;

MOTOR_CTRL_CPU1_Vars_t motorCtrlVars[2];

// Advanced motion control objects (for BUILDLEVEL >= FCL_LEVEL7)
#if(BUILDLEVEL >= FCL_LEVEL7)
    #if(BUILDLEVEL == FCL_LEVEL7)
        // FCL_LEVEL7: Two independent motion axes
        MotionAxis_t motionAxis1;  // Axis 1 -> Motor 1
        MotionAxis_t motionAxis2;  // Axis 2 -> Motor 2
    #elif(BUILDLEVEL >= FCL_LEVEL8)
        // FCL_LEVEL8: One gantry axis controlling two motors
        MotionAxis_t gantryAxis;   // Gantry axis -> Motor 1 + Motor 2
    #endif
#endif

// State machine
void (*Alpha_State_Ptr)(void);
void (*A_Task_Ptr)(void);
void (*B_Task_Ptr)(void);
void (*C_Task_Ptr)(void);

// State machine functions
void A0(void);
void B0(void);
void C0(void);
void A1(void);
void A2(void);
void A3(void);
void B1(void);
void B2(void);
void B3(void);
void C1(void);
void C2(void);
void C3(void);

// Control functions
void initMotorCtrlVars(void);
void runSpeedControl_M1(void);
void runSpeedControl_M2(void);

#if(BUILDLEVEL >= FCL_LEVEL7)
// Advanced motion control functions
void initMotionControl(void);
void updateMotionProfile_Axis1(void);
void updateMotionProfile_Axis2(void);
void updateMotionProfile_Gantry(void);

// Universal motion control function (works for all axes)
void runMotionControl_Universal(MotionAxis_t *axis);

// Wrapper functions for backward compatibility
void runMotionControl_Axis1(void);
void runMotionControl_Axis2(void);
void runMotionControl_Gantry(void);

// Motion control in timer interrupt (1ms precise timing)
__interrupt void motionControlTimerISR(void);
#endif

// External functions
extern void initCPU1Parameters(void);
extern float32_t ramper(float32_t in, float32_t out, float32_t rampDelta);

//
// Main
//
void main(void)
{
    // Initialize device clock and peripherals
    Device_init();

    // Initialize GPIO
    Device_initGPIO();

    // Initialize PIE
    Interrupt_initModule();

    // Initialize the PIE vector table
    Interrupt_initVectorTable();

    // Initialize HAL for CPU1
    halCpu1Handle = HAL_CPU1_init(&halCpu1, sizeof(halCpu1));

    // Setup IPC
    HAL_setupIPC_CPU1();

    // Synchronize with CPU2
#ifdef _DUAL_HEADERS
    // Send IPC flag to notify CPU2 that CPU1 is ready
    IPC_setFlagLtoR(IPC_CPU1_L_CPU2_R, IPC_FLAG0);

    // Wait for CPU2 to be ready
    while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1))
    {
    }
    IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R, IPC_FLAG1);
#endif

    // Boot CPU2 core
#ifdef _STANDALONE
#ifdef _FLASH
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
#else
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_RAM);
#endif
#endif

    // Wait for CPU2 to be ready
    while(!(ipcDataToCPU1->statusFlag & IPC_STS_CPU2_READY))
    {
        backTicker++;
    }

    // Setup GPIOs
    HAL_setupGPIOs(halCpu1Handle);

    // Setup CPU Timers for state machine
    HAL_setupCpuTimer(CPUTIMER0_BASE, MICROSEC_50);    // 50us for A tasks
    HAL_setupCpuTimer(CPUTIMER1_BASE, MICROSEC_100);   // 100us for B tasks
    HAL_setupCpuTimer(CPUTIMER2_BASE, MICROSEC_150);   // 150us for C tasks

    // Initialize motor control variables
    initMotorCtrlVars();

    // Initialize CPU1 parameters (PI/PID gains, etc.)
    initCPU1Parameters();

#if(BUILDLEVEL >= FCL_LEVEL7)
    // Initialize advanced motion control system
    initMotionControl();
    
    // Register motion control timer interrupt
    // Use Timer0 interrupt (triggered every 50us)
    // Inside ISR: count to 20 for 1ms position loop execution
    Interrupt_register(INT_TIMER0, &motionControlTimerISR);
    Interrupt_enable(INT_TIMER0);
#endif

    // Initialize state machine
    Alpha_State_Ptr = &A0;
    A_Task_Ptr = &A1;
    B_Task_Ptr = &B1;
    C_Task_Ptr = &C1;

#ifdef _FLASH
    enableFlag = true;
#endif

    // Waiting for enable flag set
    while(enableFlag == false)
    {
        backTicker++;
    }

    // Enable global interrupt
    EINT;
    ERTM;

    // Main loop - CPU1 handles high-level control tasks
    for(;;)
    {
        // State machine entry & exit point
        (*Alpha_State_Ptr)();
    }
}

//
// Initialize motor control variables for CPU1
//
void initMotorCtrlVars(void)
{
    // Motor 1
    motorCtrlVars[0].speedRef = 0.1f;      // Initial speed reference (0.1 pu)
    motorCtrlVars[0].posRef = 0.0f;
    motorCtrlVars[0].IqRef = 0.0f;
    motorCtrlVars[0].IdRef = 0.0f;
    motorCtrlVars[0].enable = 1;            // Enable motor 1
    motorCtrlVars[0].ctrlState = MOTOR_CTRL_SPEED_LOOP;
    
    // Speed PI parameters
    motorCtrlVars[0].speed_Kp = 0.2f;
    motorCtrlVars[0].speed_Ki = 0.001f;
    motorCtrlVars[0].speed_ui = 0.0f;
    motorCtrlVars[0].speed_out = 0.0f;
    
    // Position PID parameters
    motorCtrlVars[0].pos_Kp = 1.0f;
    motorCtrlVars[0].pos_Ki = 0.0f;
    motorCtrlVars[0].pos_Kd = 0.0f;
    motorCtrlVars[0].pos_ui = 0.0f;
    motorCtrlVars[0].pos_ud = 0.0f;
    motorCtrlVars[0].pos_up = 0.0f;
    motorCtrlVars[0].pos_error_prev = 0.0f;
    
    motorCtrlVars[0].speedLoopCount = 0;
    motorCtrlVars[0].speedLoopPrescaler = 1;
    
    // Motor 2
    motorCtrlVars[1].speedRef = 0.1f;      // Initial speed reference (0.1 pu)
    motorCtrlVars[1].posRef = 0.0f;
    motorCtrlVars[1].IqRef = 0.0f;
    motorCtrlVars[1].IdRef = 0.0f;
    motorCtrlVars[1].enable = 1;            // Enable motor 2
    motorCtrlVars[1].ctrlState = MOTOR_CTRL_SPEED_LOOP;
    
    // Speed PI parameters
    motorCtrlVars[1].speed_Kp = 0.2f;
    motorCtrlVars[1].speed_Ki = 0.001f;
    motorCtrlVars[1].speed_ui = 0.0f;
    motorCtrlVars[1].speed_out = 0.0f;
    
    // Position PID parameters
    motorCtrlVars[1].pos_Kp = 1.0f;
    motorCtrlVars[1].pos_Ki = 0.0f;
    motorCtrlVars[1].pos_Kd = 0.0f;
    motorCtrlVars[1].pos_ui = 0.0f;
    motorCtrlVars[1].pos_ud = 0.0f;
    motorCtrlVars[1].pos_up = 0.0f;
    motorCtrlVars[1].pos_error_prev = 0.0f;
    
    motorCtrlVars[1].speedLoopCount = 0;
    motorCtrlVars[1].speedLoopPrescaler = 1;
    
    return;
}

//
// Speed control for Motor 1
//
void runSpeedControl_M1(void)
{
#if(BUILDLEVEL >= FCL_LEVEL4)
    // Read speed feedback from CPU2
    motorCtrlVars[0].speedFbk = ipcDataToCPU1->speedM1;
    motorCtrlVars[0].posFbk = ipcDataToCPU1->positionM1;
    
    // Speed PI controller
    motorCtrlVars[0].speed_error = motorCtrlVars[0].speedRef - motorCtrlVars[0].speedFbk;
    
    // Proportional term
    motorCtrlVars[0].speed_up = motorCtrlVars[0].speed_Kp * motorCtrlVars[0].speed_error;
    
    // Integral term
    motorCtrlVars[0].speed_ui += motorCtrlVars[0].speed_Ki * motorCtrlVars[0].speed_error;
    
    // Saturation
    if(motorCtrlVars[0].speed_ui > 1.0f)
        motorCtrlVars[0].speed_ui = 1.0f;
    else if(motorCtrlVars[0].speed_ui < -1.0f)
        motorCtrlVars[0].speed_ui = -1.0f;
    
    // PI output
    motorCtrlVars[0].speed_out = motorCtrlVars[0].speed_up + motorCtrlVars[0].speed_ui;
    
    // Saturation
    if(motorCtrlVars[0].speed_out > 1.0f)
        motorCtrlVars[0].speed_out = 1.0f;
    else if(motorCtrlVars[0].speed_out < -1.0f)
        motorCtrlVars[0].speed_out = -1.0f;
    
    // Set IqRef from speed controller output
    motorCtrlVars[0].IqRef = motorCtrlVars[0].speed_out;
    
#if(BUILDLEVEL >= FCL_LEVEL5)
    // Position PID controller
    motorCtrlVars[0].pos_error = motorCtrlVars[0].posRef - motorCtrlVars[0].posFbk;
    
    // Proportional term
    motorCtrlVars[0].pos_up = motorCtrlVars[0].pos_Kp * motorCtrlVars[0].pos_error;
    
    // Integral term
    motorCtrlVars[0].pos_ui += motorCtrlVars[0].pos_Ki * motorCtrlVars[0].pos_error;
    
    // Derivative term
    motorCtrlVars[0].pos_ud = motorCtrlVars[0].pos_Kd * 
        (motorCtrlVars[0].pos_error - motorCtrlVars[0].pos_error_prev);
    motorCtrlVars[0].pos_error_prev = motorCtrlVars[0].pos_error;
    
    // PID output
    motorCtrlVars[0].pos_out = motorCtrlVars[0].pos_up + 
                                motorCtrlVars[0].pos_ui + 
                                motorCtrlVars[0].pos_ud;
    
    // Saturation
    if(motorCtrlVars[0].pos_out > 1.0f)
        motorCtrlVars[0].pos_out = 1.0f;
    else if(motorCtrlVars[0].pos_out < -1.0f)
        motorCtrlVars[0].pos_out = -1.0f;
    
    // Set speed reference from position controller output
    motorCtrlVars[0].speedRef = motorCtrlVars[0].pos_out;
#endif

    // Send commands to CPU2 via IPC
    ipcDataFromCPU1->IqRefM1 = motorCtrlVars[0].IqRef;
    ipcDataFromCPU1->IdRefM1 = motorCtrlVars[0].IdRef;
    ipcDataFromCPU1->speedRefM1 = motorCtrlVars[0].speedRef;
    ipcDataFromCPU1->enableMotor1 = motorCtrlVars[0].enable;
    ipcDataFromCPU1->ctrlStateM1 = motorCtrlVars[0].ctrlState;
#endif
    
    return;
}

//
// Speed control for Motor 2
//
void runSpeedControl_M2(void)
{
#if(BUILDLEVEL >= FCL_LEVEL4)
    // Read speed feedback from CPU2
    motorCtrlVars[1].speedFbk = ipcDataToCPU1->speedM2;
    motorCtrlVars[1].posFbk = ipcDataToCPU1->positionM2;
    
    // Speed PI controller
    motorCtrlVars[1].speed_error = motorCtrlVars[1].speedRef - motorCtrlVars[1].speedFbk;
    
    // Proportional term
    motorCtrlVars[1].speed_up = motorCtrlVars[1].speed_Kp * motorCtrlVars[1].speed_error;
    
    // Integral term
    motorCtrlVars[1].speed_ui += motorCtrlVars[1].speed_Ki * motorCtrlVars[1].speed_error;
    
    // Saturation
    if(motorCtrlVars[1].speed_ui > 1.0f)
        motorCtrlVars[1].speed_ui = 1.0f;
    else if(motorCtrlVars[1].speed_ui < -1.0f)
        motorCtrlVars[1].speed_ui = -1.0f;
    
    // PI output
    motorCtrlVars[1].speed_out = motorCtrlVars[1].speed_up + motorCtrlVars[1].speed_ui;
    
    // Saturation
    if(motorCtrlVars[1].speed_out > 1.0f)
        motorCtrlVars[1].speed_out = 1.0f;
    else if(motorCtrlVars[1].speed_out < -1.0f)
        motorCtrlVars[1].speed_out = -1.0f;
    
    // Set IqRef from speed controller output
    motorCtrlVars[1].IqRef = motorCtrlVars[1].speed_out;
    
#if(BUILDLEVEL >= FCL_LEVEL5)
    // Position PID controller
    motorCtrlVars[1].pos_error = motorCtrlVars[1].posRef - motorCtrlVars[1].posFbk;
    
    // Proportional term
    motorCtrlVars[1].pos_up = motorCtrlVars[1].pos_Kp * motorCtrlVars[1].pos_error;
    
    // Integral term
    motorCtrlVars[1].pos_ui += motorCtrlVars[1].pos_Ki * motorCtrlVars[1].pos_error;
    
    // Derivative term
    motorCtrlVars[1].pos_ud = motorCtrlVars[1].pos_Kd * 
        (motorCtrlVars[1].pos_error - motorCtrlVars[1].pos_error_prev);
    motorCtrlVars[1].pos_error_prev = motorCtrlVars[1].pos_error;
    
    // PID output
    motorCtrlVars[1].pos_out = motorCtrlVars[1].pos_up + 
                                motorCtrlVars[1].pos_ui + 
                                motorCtrlVars[1].pos_ud;
    
    // Saturation
    if(motorCtrlVars[1].pos_out > 1.0f)
        motorCtrlVars[1].pos_out = 1.0f;
    else if(motorCtrlVars[1].pos_out < -1.0f)
        motorCtrlVars[1].pos_out = -1.0f;
    
    // Set speed reference from position controller output
    motorCtrlVars[1].speedRef = motorCtrlVars[1].pos_out;
#endif

    // Send commands to CPU2 via IPC
    ipcDataFromCPU1->IqRefM2 = motorCtrlVars[1].IqRef;
    ipcDataFromCPU1->IdRefM2 = motorCtrlVars[1].IdRef;
    ipcDataFromCPU1->speedRefM2 = motorCtrlVars[1].speedRef;
    ipcDataFromCPU1->enableMotor2 = motorCtrlVars[1].enable;
    ipcDataFromCPU1->ctrlStateM2 = motorCtrlVars[1].ctrlState;
#endif
    
    return;
}

//=============================================================================
//  STATE-MACHINE SEQUENCING AND SYNCRONIZATION FOR SLOW BACKGROUND TASKS
//=============================================================================

void A0(void)
{
    // loop rate synchronizer for A-tasks
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER0_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER0_BASE);
        (*A_Task_Ptr)();
        vTimer0[0]++;
    }
    Alpha_State_Ptr = &B0;
}

void B0(void)
{
    // loop rate synchronizer for B-tasks
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER1_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER1_BASE);
        (*B_Task_Ptr)();
        vTimer1[0]++;
    }
    Alpha_State_Ptr = &C0;
}

void C0(void)
{
    // loop rate synchronizer for C-tasks
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER2_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER2_BASE);
        (*C_Task_Ptr)();
        vTimer2[0]++;
    }
    Alpha_State_Ptr = &A0;
}

//==============================================================================
//  A - TASKS (executed every 50 usec)
//==============================================================================

void A1(void)
{
#if(BUILDLEVEL >= FCL_LEVEL7)
    // Motion control is now handled in 1ms timer interrupt (motionControlTimerISR)
    // A task (50us) is used for other background operations
    
    // Optional: Monitor motion status or handle user commands
    // Example: Check for motion complete, handle following errors, etc.
    
#else
    // Motor 1 speed control (basic mode - for BUILDLEVEL < FCL_LEVEL7)
    runSpeedControl_M1();
#endif
    
    A_Task_Ptr = &A2;
}

void A2(void)
{
#if(BUILDLEVEL >= FCL_LEVEL7)
    // Motion control is now handled in 1ms timer interrupt
    // A task is available for other operations
    
#elif(BUILDLEVEL < FCL_LEVEL7)
    // Motor 2 speed control (basic mode)
    runSpeedControl_M2();
#endif
    
    A_Task_Ptr = &A3;
}

void A3(void)
{
    // LED toggle
    led1Cnt++;
    if(led1Cnt >= LPD_LED1_WAIT_TIME)
    {
        led1Cnt = 0;
        GPIO_togglePin(LPD_RED_LED1);
    }
    
    A_Task_Ptr = &A1;
}

//==============================================================================
//  B - TASKS (executed every 100 usec)
//==============================================================================

void B1(void)
{
#if(BUILDLEVEL >= FCL_LEVEL7)
    #if(BUILDLEVEL == FCL_LEVEL7)
        // Update motion profile for Axis 1 (background task)
        updateMotionProfile_Axis1();
    #elif(BUILDLEVEL >= FCL_LEVEL8)
        // Update motion profile for Gantry Axis (background task)
        updateMotionProfile_Gantry();
    #endif
#endif
    
    B_Task_Ptr = &B2;
}

void B2(void)
{
#if(BUILDLEVEL == FCL_LEVEL7)
    // Update motion profile for Axis 2 (background task)
    updateMotionProfile_Axis2();
#endif
    
    B_Task_Ptr = &B3;
}

void B3(void)
{
    // Reserved for future use
    B_Task_Ptr = &B1;
}

//==============================================================================
//  C - TASKS (executed every 150 usec)
//==============================================================================

void C1(void)
{
    // LED toggle
    led2Cnt++;
    if(led2Cnt >= LPD_LED2_WAIT_TIME)
    {
        led2Cnt = 0;
        GPIO_togglePin(LPD_BLUE_LED2);
    }
    
    C_Task_Ptr = &C2;
}

void C2(void)
{
    // Reserved for future use
    C_Task_Ptr = &C3;
}

void C3(void)
{
    // Reserved for future use
    C_Task_Ptr = &C1;
}

//==============================================================================
//  ADVANCED MOTION CONTROL FUNCTIONS (BUILDLEVEL >= FCL_LEVEL7)
//==============================================================================

#if(BUILDLEVEL >= FCL_LEVEL7)

//
// initMotionControl - Initialize motion control system
//
void initMotionControl(void)
{
#if(BUILDLEVEL == FCL_LEVEL7)
    //
    // FCL_LEVEL7: Two independent motion axes
    //
    
    // Initialize Axis 1
    MotionAxis_init(&motionAxis1, 1, AXIS_TYPE_REAL);
    MotionAxis_addMotor(&motionAxis1, 1, 1.0f);  // Bind Motor 1, gear ratio 1:1
    
    // Set motion parameters for Axis 1
    MotionAxis_setMotionParams(&motionAxis1, 
                               50.0f,      // maxVel: 50 rev/s (3000 rpm)
                               166.67f,    // maxAccel: 166.67 rev/s^2
                               166.67f);   // maxDecel: 166.67 rev/s^2
    
    // Set PID gains for Axis 1, Motor 0
    MotionAxis_setPIDGains(&motionAxis1, 0,      // motorIndex = 0
                           2.0f,                  // Kp
                           0.1f,                  // Ki
                           0.01f);                // Kd
    
    // Set following error limits for Axis 1, Motor 0
    MotionAxis_setFollowingErrorLimit(&motionAxis1, 0,  // motorIndex = 0
                                      5.0f,              // position error limit [rev]
                                      50.0f);            // velocity error limit [rpm]
    
    // Set sampling times
    motionAxis1.profileUpdateTs = 0.001f;  // 1ms profile update
    motionAxis1.posLoopTs = 0.001f;        // 1ms position loop
    
    //
    // Initialize Axis 2 (same configuration)
    //
    MotionAxis_init(&motionAxis2, 2, AXIS_TYPE_REAL);
    MotionAxis_addMotor(&motionAxis2, 2, 1.0f);  // Bind Motor 2, gear ratio 1:1
    MotionAxis_setMotionParams(&motionAxis2, 50.0f, 166.67f, 166.67f);
    MotionAxis_setPIDGains(&motionAxis2, 0, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&motionAxis2, 0, 5.0f, 50.0f);
    motionAxis2.profileUpdateTs = 0.001f;
    motionAxis2.posLoopTs = 0.001f;
    
#elif(BUILDLEVEL >= FCL_LEVEL8)
    //
    // FCL_LEVEL8: One gantry axis controlling two motors (SYNCHRONIZED)
    //
    
    // Initialize Gantry Axis
    MotionAxis_init(&gantryAxis, 10, AXIS_TYPE_GANTRY);
    
    // Bind both motors to the same axis
    MotionAxis_addMotor(&gantryAxis, 1, 1.0f);  // Motor 1 (left side), gear ratio 1:1
    MotionAxis_addMotor(&gantryAxis, 2, 1.0f);  // Motor 2 (right side), gear ratio 1:1
    
    // Set motion parameters (shared by both motors)
    MotionAxis_setMotionParams(&gantryAxis, 
                               30.0f,      // maxVel: 30 rev/s (conservative for gantry)
                               100.0f,     // maxAccel: 100 rev/s^2
                               150.0f);    // maxDecel: 150 rev/s^2 (faster decel for safety)
    
    // Set PID gains for Motor 1 (motorIndex = 0)
    MotionAxis_setPIDGains(&gantryAxis, 0, 2.0f, 0.1f, 0.01f);
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 0, 3.0f, 30.0f);
    
    // Set PID gains for Motor 2 (motorIndex = 1) - can be different to compensate mechanical differences
    MotionAxis_setPIDGains(&gantryAxis, 1, 2.2f, 0.12f, 0.012f);
    MotionAxis_setFollowingErrorLimit(&gantryAxis, 1, 3.0f, 30.0f);
    
    // Set sampling times
    gantryAxis.profileUpdateTs = 0.001f;
    gantryAxis.posLoopTs = 0.001f;
#endif
}

//
// Update motion profile functions (background task - called in main loop)
//
#if(BUILDLEVEL == FCL_LEVEL7)
void updateMotionProfile_Axis1(void)
{
    MotionAxis_updateProfile(&motionAxis1);
}

void updateMotionProfile_Axis2(void)
{
    MotionAxis_updateProfile(&motionAxis2);
}
#endif

#if(BUILDLEVEL >= FCL_LEVEL8)
void updateMotionProfile_Gantry(void)
{
    MotionAxis_updateProfile(&gantryAxis);
}
#endif

//
// Universal motion control function (works for all axes and all buildlevels)
//
// This function replaces the duplicate code in Axis1, Axis2, and Gantry control functions.
// It can handle:
// - Independent axes (FCL_LEVEL7): each axis controls one motor
// - Gantry axis (FCL_LEVEL8): one axis controls multiple motors
//
void runMotionControl_Universal(MotionAxis_t *axis)
{
    float32_t velRef;
    uint16_t i;
    float32_t actPos, actVel;
    
    // Step 1: Update feedback from CPU2 for all motors in this axis
    for(i = 0; i < axis->numMotors; i++)
    {
        // Get feedback based on motor ID
        if(axis->motors[i].motorID == 1)  // Motor 1
        {
            actPos = ipcDataToCPU1->positionM1;  // [pu]
            actVel = ipcDataToCPU1->speedM1;     // [rpm]
        }
        else if(axis->motors[i].motorID == 2)  // Motor 2
        {
            actPos = ipcDataToCPU1->positionM2;
            actVel = ipcDataToCPU1->speedM2;
        }
        else
        {
            // Unknown motor ID, skip
            continue;
        }
        
        // Convert units: rpm -> rev/s
        actVel = actVel / 60.0f;
        
        // Update feedback for this motor
        MotionAxis_updateFeedback(axis, i, actPos, actVel);
    }
    
    // Step 2: Update control
    // CRITICAL: For gantry axis, all motors read the SAME position command from shared buffer!
    MotionAxis_updateControl(axis);
    
    // Step 3: Calculate and send velocity command for each motor
    for(i = 0; i < axis->numMotors; i++)
    {
        // Calculate velocity reference
        if(!axis->motors[i].enable)
        {
            velRef = 0.0f;
        }
        else if(axis->motors[i].posPID.manualMode)
        {
            // Manual mode: use manual output
            velRef = axis->motors[i].posPID.manualOutput;
        }
        else
        {
            // Auto mode: PID calculation (each motor has independent PID)
            velRef = PID_run(&axis->motors[i].posPID, 
                            axis->cmdPosition / axis->motors[i].gearRatio,
                            axis->motors[i].actPosition);
        }
        
        // Convert units: rev/s -> rpm
        velRef = velRef * 60.0f;
        
        // Saturation
        if(velRef > 3000.0f) velRef = 3000.0f;
        if(velRef < -3000.0f) velRef = -3000.0f;
        
        // Send to CPU2 via IPC (route to corresponding motor)
        if(axis->motors[i].motorID == 1)
        {
            ipcDataFromCPU1->speedRefM1 = velRef;
        }
        else if(axis->motors[i].motorID == 2)
        {
            ipcDataFromCPU1->speedRefM2 = velRef;
        }
    }
    
    // Step 4: Monitor synchronization error (for gantry axis with multiple motors)
    if(axis->numMotors >= 2)
    {
        float32_t pos1 = axis->motors[0].actPosition;
        float32_t pos2 = axis->motors[1].actPosition;
        float32_t syncError = (pos1 > pos2) ? (pos1 - pos2) : (pos2 - pos1);
        
        if(syncError > 0.1f)  // Sync error > 0.1 rev (36 degrees)
        {
            // Trigger alarm: gantry racking detected
            // TODO: Add alarm handling
        }
    }
    
    // Step 5: Check error status and disable motors if needed
    if(MotionAxis_isError(axis))
    {
        for(i = 0; i < axis->numMotors; i++)
        {
            if(axis->motors[i].motorID == 1)
            {
                ipcDataFromCPU1->speedRefM1 = 0.0f;
                ipcDataFromCPU1->enableMotor1 = 0;
            }
            else if(axis->motors[i].motorID == 2)
            {
                ipcDataFromCPU1->speedRefM2 = 0.0f;
                ipcDataFromCPU1->enableMotor2 = 0;
            }
        }
    }
}

//
// Wrapper functions for specific axes (for backward compatibility and clarity)
//
#if(BUILDLEVEL == FCL_LEVEL7)
void runMotionControl_Axis1(void)
{
    runMotionControl_Universal(&motionAxis1);
}

void runMotionControl_Axis2(void)
{
    runMotionControl_Universal(&motionAxis2);
}
#endif  // BUILDLEVEL == FCL_LEVEL7

#if(BUILDLEVEL >= FCL_LEVEL8)
void runMotionControl_Gantry(void)
{
    runMotionControl_Universal(&gantryAxis);
}
#endif  // BUILDLEVEL >= FCL_LEVEL8

//
// Motion Control Timer ISR - 1ms precise timing for position loop
// Triggered by Timer0 every 50us, but position loop executes every 1ms (20x50us)
//
__interrupt void motionControlTimerISR(void)
{
    // Increment 1ms counter (50us * 20 = 1ms)
    motionControlCounter++;
    
    // Execute position loop every 1ms
    if(motionControlCounter >= MOTION_CONTROL_DIVIDER)
    {
        motionControlCounter = 0;
        
        #if(BUILDLEVEL == FCL_LEVEL7)
            // FCL_LEVEL7: Independent dual axes
            // Position loop control (1 KHz)
            MotionAxis_updateControl(&motionAxis1);
            MotionAxis_updateControl(&motionAxis2);
            
            // Profile update (frequency controlled by axis->profileUpdateDivider)
            // Each axis can have different update frequency
            MotionAxis_updateProfile(&motionAxis1);
            MotionAxis_updateProfile(&motionAxis2);
            
        #elif(BUILDLEVEL >= FCL_LEVEL8)
            // FCL_LEVEL8: Gantry axis (synchronized)
            // Position loop control (1 KHz)
            MotionAxis_updateControl(&gantryAxis);
            
            // Profile update (frequency controlled by axis->profileUpdateDivider)
            MotionAxis_updateProfile(&gantryAxis);
        #endif
    }
    
    // Acknowledge Timer0 interrupt
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

#endif  // BUILDLEVEL >= FCL_LEVEL7

//
// End of File
//
