//#############################################################################
//
// FILE:    dual_axis_servo_drive_ipc.h
//
// TITLE:   IPC communication definitions for dual-core motor control
//
// Group:   C2000
//
// Target Family: F2837x
//
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

#ifndef DUAL_AXIS_SERVO_DRIVE_IPC_H
#define DUAL_AXIS_SERVO_DRIVE_IPC_H

//
// Include project specific include files.
//
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

//
// IPC Shared Memory Locations
// These addresses are in GS0 RAM which is accessible by both CPUs
//
#define IPC_DATA_FROM_CPU1_ADDR     0x0000C000  // GS0 RAM start
#define IPC_DATA_TO_CPU1_ADDR       0x0000C200  // GS0 RAM + 512 bytes

//
// IPC Command Flags
//
#define IPC_CMD_MOTOR1_ENABLE       0x0001
#define IPC_CMD_MOTOR2_ENABLE       0x0002
#define IPC_CMD_MOTOR1_DISABLE      0x0004
#define IPC_CMD_MOTOR2_DISABLE      0x0008
#define IPC_CMD_CLEAR_FAULTS        0x0010
#define IPC_CMD_UPDATE_PARAMS       0x0020

//
// IPC Status Flags
//
#define IPC_STS_CPU2_READY          0x0001
#define IPC_STS_MOTOR1_RUNNING      0x0002
#define IPC_STS_MOTOR2_RUNNING      0x0004
#define IPC_STS_MOTOR1_FAULT        0x0008
#define IPC_STS_MOTOR2_FAULT        0x0010
#define IPC_STS_OVERCURRENT         0x0020
#define IPC_STS_OVERVOLTAGE         0x0040
#define IPC_STS_UNDERVOLTAGE        0x0080

//
// Motor Control States
//
typedef enum
{
    MOTOR_CTRL_STOP = 0,
    MOTOR_CTRL_IDLE,
    MOTOR_CTRL_OFFSET_CAL,
    MOTOR_CTRL_CURRENT_LOOP,
    MOTOR_CTRL_SPEED_LOOP,
    MOTOR_CTRL_POSITION_LOOP,
    MOTOR_CTRL_FAULT
} MOTOR_CtrlState_e;

//
// Data structure for CPU1 to CPU2 communication
// This structure contains commands and references from CPU1
//
typedef struct _IPC_DataFromCPU1_t_
{
    // Command and control flags
    uint16_t  commandFlag;              // Command flags from CPU1
    uint16_t  ctrlStateM1;              // Control state for Motor 1
    uint16_t  ctrlStateM2;              // Control state for Motor 2
    uint16_t  enableMotor1;             // Motor 1 enable flag
    uint16_t  enableMotor2;             // Motor 2 enable flag
    uint16_t  reserved1;                // Reserved for alignment
    
    // Motor 1 references
    float32_t speedRefM1;               // Speed reference (pu)
    float32_t IdRefM1;                  // Id current reference (pu)
    float32_t IqRefM1;                  // Iq current reference (pu)
    float32_t positionRefM1;            // Position reference (pu)
    float32_t currentLimitM1;           // Current limit (pu)
    float32_t voltageLimitM1;           // Voltage limit (pu)
    
    // Motor 2 references
    float32_t speedRefM2;               // Speed reference (pu)
    float32_t IdRefM2;                  // Id current reference (pu)
    float32_t IqRefM2;                  // Iq current reference (pu)
    float32_t positionRefM2;            // Position reference (pu)
    float32_t currentLimitM2;           // Current limit (pu)
    float32_t voltageLimitM2;           // Voltage limit (pu)
    
    // PI controller parameters for Motor 1
    float32_t Kp_IdM1;                  // Id PI Kp
    float32_t Ki_IdM1;                  // Id PI Ki
    float32_t Kp_IqM1;                  // Iq PI Kp
    float32_t Ki_IqM1;                  // Iq PI Ki
    
    // PI controller parameters for Motor 2
    float32_t Kp_IdM2;                  // Id PI Kp
    float32_t Ki_IdM2;                  // Id PI Ki
    float32_t Kp_IqM2;                  // Iq PI Kp
    float32_t Ki_IqM2;                  // Iq PI Ki
    
    // Reserved for future expansion
    uint32_t  reserved2[8];
    
} IPC_DataFromCPU1_t;

//
// Data structure for CPU2 to CPU1 communication
// This structure contains feedback data from CPU2
//
typedef struct _IPC_DataToCPU1_t_
{
    // Status flags
    uint16_t  statusFlag;               // Status flags from CPU2
    uint16_t  faultFlagM1;              // Fault flags for Motor 1
    uint16_t  faultFlagM2;              // Fault flags for Motor 2
    uint16_t  ctrlStateM1;              // Current control state Motor 1
    uint16_t  ctrlStateM2;              // Current control state Motor 2
    uint16_t  reserved1;                // Reserved for alignment
    
    // Motor 1 feedback
    float32_t speedM1;                  // Speed feedback (pu)
    float32_t positionM1;               // Position feedback (pu)
    float32_t IdFdbkM1;                 // Id current feedback (pu)
    float32_t IqFdbkM1;                 // Iq current feedback (pu)
    float32_t IaFdbkM1;                 // Ia current feedback (pu)
    float32_t IbFdbkM1;                 // Ib current feedback (pu)
    float32_t IcFdbkM1;                 // Ic current feedback (pu)
    float32_t VdcM1;                    // DC bus voltage (pu)
    float32_t thetaElecM1;              // Electrical angle (rad)
    float32_t thetaMechM1;              // Mechanical angle (rad)
    
    // Motor 2 feedback
    float32_t speedM2;                  // Speed feedback (pu)
    float32_t positionM2;               // Position feedback (pu)
    float32_t IdFdbkM2;                 // Id current feedback (pu)
    float32_t IqFdbkM2;                 // Iq current feedback (pu)
    float32_t IaFdbkM2;                 // Ia current feedback (pu)
    float32_t IbFdbkM2;                 // Ib current feedback (pu)
    float32_t IcFdbkM2;                 // Ic current feedback (pu)
    float32_t VdcM2;                    // DC bus voltage (pu)
    float32_t thetaElecM2;              // Electrical angle (rad)
    float32_t thetaMechM2;              // Mechanical angle (rad)
    
    // Performance counters
    uint32_t  isrCountM1;               // ISR execution counter Motor 1
    uint32_t  isrCountM2;               // ISR execution counter Motor 2
    uint32_t  fclCyclesM1;              // FCL execution cycles Motor 1
    uint32_t  fclCyclesM2;              // FCL execution cycles Motor 2
    
    // Reserved for future expansion
    uint32_t  reserved2[8];
    
} IPC_DataToCPU1_t;

//
// IPC Data Structure Initialization Macros
//
#define IPC_DATA_FROM_CPU1_DEFAULTS {   \
    0,              /* commandFlag */   \
    MOTOR_CTRL_STOP,/* ctrlStateM1 */   \
    MOTOR_CTRL_STOP,/* ctrlStateM2 */   \
    0,              /* enableMotor1 */  \
    0,              /* enableMotor2 */  \
    0,              /* reserved1 */     \
    0.0f,           /* speedRefM1 */    \
    0.0f,           /* IdRefM1 */       \
    0.0f,           /* IqRefM1 */       \
    0.0f,           /* positionRefM1 */ \
    1.0f,           /* currentLimitM1 */\
    0.95f,          /* voltageLimitM1 */\
    0.0f,           /* speedRefM2 */    \
    0.0f,           /* IdRefM2 */       \
    0.0f,           /* IqRefM2 */       \
    0.0f,           /* positionRefM2 */ \
    1.0f,           /* currentLimitM2 */\
    0.95f,          /* voltageLimitM2 */\
    0.5f,           /* Kp_IdM1 */       \
    0.01f,          /* Ki_IdM1 */       \
    0.5f,           /* Kp_IqM1 */       \
    0.01f,          /* Ki_IqM1 */       \
    0.5f,           /* Kp_IdM2 */       \
    0.01f,          /* Ki_IdM2 */       \
    0.5f,           /* Kp_IqM2 */       \
    0.01f,          /* Ki_IqM2 */       \
    {0}             /* reserved2 */     \
}

#define IPC_DATA_TO_CPU1_DEFAULTS {     \
    0,              /* statusFlag */    \
    0,              /* faultFlagM1 */   \
    0,              /* faultFlagM2 */   \
    MOTOR_CTRL_STOP,/* ctrlStateM1 */   \
    MOTOR_CTRL_STOP,/* ctrlStateM2 */   \
    0,              /* reserved1 */     \
    0.0f,           /* speedM1 */       \
    0.0f,           /* positionM1 */    \
    0.0f,           /* IdFdbkM1 */      \
    0.0f,           /* IqFdbkM1 */      \
    0.0f,           /* IaFdbkM1 */      \
    0.0f,           /* IbFdbkM1 */      \
    0.0f,           /* IcFdbkM1 */      \
    0.0f,           /* VdcM1 */         \
    0.0f,           /* thetaElecM1 */   \
    0.0f,           /* thetaMechM1 */   \
    0.0f,           /* speedM2 */       \
    0.0f,           /* positionM2 */    \
    0.0f,           /* IdFdbkM2 */      \
    0.0f,           /* IqFdbkM2 */      \
    0.0f,           /* IaFdbkM2 */      \
    0.0f,           /* IbFdbkM2 */      \
    0.0f,           /* IcFdbkM2 */      \
    0.0f,           /* VdcM2 */         \
    0.0f,           /* thetaElecM2 */   \
    0.0f,           /* thetaMechM2 */   \
    0,              /* isrCountM1 */    \
    0,              /* isrCountM2 */    \
    0,              /* fclCyclesM1 */   \
    0,              /* fclCyclesM2 */   \
    {0}             /* reserved2 */     \
}

//
// Function prototypes
//
extern void IPC_initDataStructures(void);
extern void IPC_sendDriveCommand(uint16_t command);
extern uint16_t IPC_getDriveStatus(void);

#ifdef __cplusplus
}
#endif

#endif  // end of DUAL_AXIS_SERVO_DRIVE_IPC_H definition

//
// End of File
//

