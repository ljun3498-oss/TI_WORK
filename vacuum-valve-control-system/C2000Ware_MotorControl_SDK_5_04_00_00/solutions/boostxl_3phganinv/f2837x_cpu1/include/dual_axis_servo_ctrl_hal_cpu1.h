//#############################################################################
//
// FILE:    dual_axis_servo_ctrl_hal_cpu1.h
//
// TITLE:   Hardware abstraction layer for CPU1 control
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

#ifndef DUAL_AXIS_SERVO_CTRL_HAL_CPU1_H
#define DUAL_AXIS_SERVO_CTRL_HAL_CPU1_H

//
// Include project specific include files.
//
#include <math.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>

#include "device.h"
#include "driverlib.h"
#include "dac.h"

#include "dual_axis_servo_drive_user.h"
#include "dual_axis_servo_drive_ipc.h"

//
// Define the system frequency (MHz)
//
#define SYSTEM_FREQUENCY    (DEVICE_SYSCLK_FREQ / 1000000U)

//
// Timer definitions based on System Clock
//
#define     MICROSEC         SYSTEM_FREQUENCY
#define     MICROSEC_50       50 * MICROSEC     // 50 uS
#define     MICROSEC_100     100 * MICROSEC     // 0.1 mS
#define     MICROSEC_150     150 * MICROSEC     // 0.15 mS
#define     MILLISEC        1000 * MICROSEC     // 1 mS

#define     MILSEC_0_5       0.5f * MILLISEC     // 0.5 mS
#define     MILSEC_1         1.0f * MILLISEC     // 1.0 mS
#define     MILSEC_2         2.0f * MILLISEC     // 2.0 mS
#define     MILSEC_5         5.0f * MILLISEC     // 5.0 mS
#define     MILSEC_7_5       7.5f * MILLISEC     // 7.5 mS
#define     MILSEC_10         10f * MILLISEC     // 10 mS
#define     MILSEC_20         20f * MILLISEC     // 20 mS
#define     MILSEC_50         50f * MILLISEC     // 50 mS
#define     MILSEC_100       100f * MILLISEC     // 100 mS
#define     MILSEC_500       500f * MILLISEC     // 500 mS
#define     MILSEC_1000     1000f * MILLISEC     // 1000 mS

//
// LED GPIO definitions
//
#define  LPD_RED_LED1           34          // NC: Set up based board
#define  LPD_BLUE_LED2          31          // NC: Set up based board

#define  LPD_LED1_WAIT_TIME     800
#define  LPD_LED2_WAIT_TIME     400

//
// IPC Data Pointers (shared memory)
//
extern IPC_DataFromCPU1_t *ipcDataFromCPU1;
extern IPC_DataToCPU1_t   *ipcDataToCPU1;

//! \brief    Defines the hardware abstraction layer (HAL) data for CPU1
//! \details  The HAL object contains handles to peripherals used by CPU1
//!
typedef struct _HAL_CPU1_Obj_
{
  uint32_t      timerHandle[3];     //<! the timer handles

  uint32_t      sciHandle[2];       //!< the SCI handle

  uint32_t      dacHandle[3];       //!< the DAC handle
} HAL_CPU1_Obj;

//! \brief    Defines the HAL_CPU1 handle
//!
typedef struct _HAL_CPU1_Obj_ *HAL_CPU1_Handle;

extern HAL_CPU1_Handle halCpu1Handle;
extern HAL_CPU1_Obj    halCpu1;

//
// the function prototypes
//

//! \brief      Initializes the hardware abstraction layer for CPU1
//! \details    Initializes all handles to the microcontroller peripherals.
//! \param[in]  pMemory   A pointer to the memory for the HAL object
//! \param[in]  numBytes  The number of bytes allocated for the HAL object
//! \return     The hardware abstraction layer (HAL_CPU1) object handle
extern HAL_CPU1_Handle HAL_CPU1_init(void *pMemory, const size_t numBytes);

//! \brief     Sets up the CPU timers
//! \param[in] base         The cpu timer base
//! \param[in] periodCount  The cpu timer period count
extern void HAL_setupCpuTimer(uint32_t base, uint32_t periodCount);

//! \brief     Sets up the GPIO (General Purpose I/O) pins
extern void HAL_setupGPIOs(HAL_CPU1_Handle handle);

//! \brief     Sets up the SCI for communication
extern void HAL_setupSCI(HAL_CPU1_Handle handle);

//! \brief     Sets up the DAC for output
extern void HAL_setupDACs(HAL_CPU1_Handle handle);

//! \brief      Initializes IPC data structures for CPU1
extern void HAL_setupIPC_CPU1(void);

//! \brief      Boots CPU2
extern void HAL_bootCPU2(void);

//
// Control functions from dual_axis_servo_ctrl_cpu1.c
//
extern float32_t ramper(float32_t in, float32_t out, float32_t rampDelta);
extern float32_t ramper_sine(float32_t in, float32_t out, float32_t rampDelta);
extern float32_t refPosGen(float32_t out);
extern float32_t PI_POS_run(float32_t Kp, float32_t Ki, float32_t *ui, 
                            float32_t ref, float32_t fbk, 
                            float32_t outMax, float32_t outMin);
extern float32_t PID_run_legacy(float32_t Kp, float32_t Ki, float32_t Kd,
                                float32_t *ui, float32_t *error_prev,
                                float32_t ref, float32_t fbk, 
                                float32_t outMax, float32_t outMin);

//
// User functions from dual_axis_servo_ctrl_user_cpu1.c
//
extern void initCPU1Parameters(void);

#endif  // end of DUAL_AXIS_SERVO_CTRL_HAL_CPU1_H definition

//
// End of File
//

