//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

//
// FILE:    dual_axis_servo_ctrl_user_cpu1.c
// TITLE:   User configuration functions for CPU1
//

#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include "dual_axis_servo_drive_ipc.h"

//
// User configuration functions for CPU1
//

// Variables for current feedback offset calculation
float32_t K1 = 0.998;         // Offset filter coefficient K1: 0.05/(T+0.05);
float32_t K2 = 0.001999;      // Offset filter coefficient K2: T/(T+0.05);

uint16_t offsetCalCounter = 0;

//
// initCPU1Parameters() - Initialize CPU1 specific parameters
//
void initCPU1Parameters(void)
{
    // Initialize IPC communication parameters
    ipcDataFromCPU1->Kp_IdM1 = 0.5f;
    ipcDataFromCPU1->Ki_IdM1 = 0.01f;
    ipcDataFromCPU1->Kp_IqM1 = 0.5f;
    ipcDataFromCPU1->Ki_IqM1 = 0.01f;
    
    ipcDataFromCPU1->Kp_IdM2 = 0.5f;
    ipcDataFromCPU1->Ki_IdM2 = 0.01f;
    ipcDataFromCPU1->Kp_IqM2 = 0.5f;
    ipcDataFromCPU1->Ki_IqM2 = 0.01f;
    
    ipcDataFromCPU1->currentLimitM1 = 1.0f;
    ipcDataFromCPU1->currentLimitM2 = 1.0f;
    
    ipcDataFromCPU1->voltageLimitM1 = 0.95f;
    ipcDataFromCPU1->voltageLimitM2 = 0.95f;
    
    return;
}

//
// End of File
//

