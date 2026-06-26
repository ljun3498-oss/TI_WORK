//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
// Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//
// Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the
// distribution.
//
// Neither the name of Texas Instruments Incorporated nor the names of
// its contributors may be used to endorse or promote products derived
// from this software without specific prior written permission.
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
// Software: Motor Control SDK
//
// FILE: dual_axis_servo_dirve.c
//
// TITLE: dual-axis motor drive on the related kits
//
// Group: C2000
//
// Target Family: F2837x/F28004x/F28P55x/F28P65x
//
// C2000 DSP
//-----------------------------------------------------------------------------

//
// Include header files
//
#include "dual_axis_servo_drive_settings.h"
#include "dual_axis_servo_drive_user.h"
#include "dual_axis_servo_drive_hal.h"
#include "dual_axis_servo_drive.h"
#include "ipc.h"
#include "HAL_sci_init.h"


//--------------------------------------------------------------
// ============================================================================
// ============================================================================
//--------------------------------------------------------------


//
// Macro definitions
//
#define  DAC_MACRO_PU(A)  ((1.0f + A) * 2048)
#define DACOUT_EN 1
//
// Function declarations
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
// Interrupt function declarations
//
//#pragma INTERRUPT (motor1ControlISR, HPI)
//#pragma INTERRUPT (motor2ControlISR, HPI)
__interrupt void motor1ControlISR(void);
__interrupt void motor2ControlISR(void);

//
// Utility function declarations
//


#if((BUILDLEVEL == FCL_LEVEL3) || (BUILDLEVEL == FCL_LEVEL4) || \
        (BUILDLEVEL == FCL_LEVEL5))
static inline void getFCLTime(MOTOR_Num_e motorNum);
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
// Waveform transmission functions
//
void HAL_SCI_generateWaveforms(float *ch0, float *ch1, float *ch2);
void HAL_SCI_prepareWaveformData(float ch0, float ch1, float ch2,
                                 uint16_t *buffer, uint16_t *size);

//
// Timing task functions
//


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

// 
void (*Alpha_State_Ptr)(void);  // lpha 
void (*A_Task_Ptr)(void);
void (*B_Task_Ptr)(void);
void (*C_Task_Ptr)(void);

uint16_t vTimer0[4] = {0};
uint16_t vTimer1[4] = {0};
uint16_t vTimer2[4] = {0};
uint16_t serialCommsTimer = 0;  // 

//
// 
//

//
// Motor variables array
//
MOTOR_Vars_t motorVars[2] = {MOTOR1_DEFAULTS, MOTOR2_DEFAULTS};

#pragma DATA_SECTION(motorVars, "ClaData");

typedef struct {
    int16_t iu;
    int16_t iv;
    int16_t iw;
} ADC_RAW_VALUES_t;

ADC_RAW_VALUES_t adc_raw[2];

//
// CMPSS parameters
//

//
// CMPSS (Comparator PSPS) parameters
//
uint16_t clkPrescale = 20;
uint16_t sampWin     = 30;
uint16_t thresh      = 18;

//
// Global flags and counters
//
volatile uint16_t enableFlag = true;

uint16_t backTicker = 0;

uint16_t led1Cnt = 0;
uint16_t led2Cnt = 0;

// Test variables
float32_t VdTesting = 0.01;
float32_t VqTesting = 0.05;

// Position control array
float32_t posArray[8] = {2.5, -2.5, 3.5, -3.5, 5.0, -5.0, 8.0, -8.0};
float32_t posPtrMax = 4;

// DLOG module buffers
float32_t DBUFF_4CH1[200] = {0};
float32_t DBUFF_4CH2[200] = {0};
float32_t DBUFF_4CH3[200] = {0};
float32_t DBUFF_4CH4[200] = {0};
float32_t dlogCh1 = 0;
float32_t dlogCh2 = 0;
float32_t dlogCh3 = 0;
float32_t dlogCh4 = 0;

// DLOG module instance
DLOG_4CH_F dlog_4ch1;

// Custom speed measurement parameters
#define CUSTOM_SPEED_HISTORY_SAMPLES    (200U)
#define CUSTOM_SPEED_FAST_WINDOW        (20U)
#define CUSTOM_SPEED_MID_WINDOW         (50U)
#define CUSTOM_SPEED_SLOW_WINDOW        (200U)
#define CUSTOM_SPEED_MID_THRESHOLD      (0.05f)
#define CUSTOM_SPEED_SLOW_THRESHOLD     (0.003f)
#define CUSTOM_SPEED_ISR_FREQ_HZ        (20000.0f)
#define CUSTOM_SPEED_SAMPLE_QUEUE_SIZE  (64U)
#define CUSTOM_SPEED_SAMPLE_QUEUE_MASK  (CUSTOM_SPEED_SAMPLE_QUEUE_SIZE - 1U)

// Motor1 custom speed measurement variables
float32_t m1_pos_history[CUSTOM_SPEED_HISTORY_SAMPLES] = {0.0f};
float32_t m1_pos_sample_queue[CUSTOM_SPEED_SAMPLE_QUEUE_SIZE] = {0.0f};
float32_t m1_custom_speed_pu = 0.0f;
uint16_t m1_pos_idx = 0U;
volatile uint16_t m1_pos_sample_head = 0U;
uint16_t m1_pos_sample_tail = 0U;
uint16_t m1_pos_sample_overflow = 0U;
bool m1_customSpeedActive = false;

// Motor2 custom speed measurement variables
float32_t m2_pos_history[CUSTOM_SPEED_HISTORY_SAMPLES] = {0.0f};
float32_t m2_pos_sample_queue[CUSTOM_SPEED_SAMPLE_QUEUE_SIZE] = {0.0f};
float32_t m2_custom_speed_pu = 0.0f;
uint16_t m2_pos_idx = 0U;
volatile uint16_t m2_pos_sample_head = 0U;
uint16_t m2_pos_sample_tail = 0U;
uint16_t m2_pos_sample_overflow = 0U;
bool m2_customSpeedActive = false;

// HAL (Hardware Abstraction Layer) handles and objects
HAL_Handle    halHandle;
HAL_Obj       hal;

HAL_MTR_Handle halMtrHandle[2];
HAL_MTR_Obj    halMtr[2];

volatile uint16_t FCL_cycleCount[2];

// Control reference values
float32_t speedRef = 0.5;
float32_t IdRef = 0.0;
float32_t IqRef = 0.10;
uint32_t rampDelayMax = 0;

// Runtime state variables
MotorRunStop_e runMotor = MOTOR_STOP;
CtrlState_e ctrlState = CTRL_STOP;
bool flagSyncRun = false;

//
// CLA function section addresses
//
extern uint32_t Cla1funcsLoadStart;
extern uint32_t Cla1funcsLoadEnd;
extern uint32_t Cla1funcsRunStart;
extern uint32_t Cla1funcsLoadSize;

/**
 */
void main(void)
{
    // 1) CPU basic initialization
    Device_init();

    // 2) Initialize IPC
    IPC_init(IPC_CPU2_L_CPU1_R);

    // 3) Rescue CPU1 if it is blocked on boot FLAG31 in debug flow
    IPC_ackFlagRtoL(IPC_CPU2_L_CPU1_R, IPC_FLAG31);

    // 4) Official cross-core synchronization with CPU1 using FLAG30
    IPC_sync(IPC_CPU2_L_CPU1_R, IPC_FLAG30);

    // 5) Initialize GPIO only after CPU1 finished ownership transfer
    Device_initGPIO();

    // Board_init() is generated by SysConfig. This CPU2 project does not
    // include generated board.c/board.h, so keep initialization local.
    //
    // Enable global interrupts and real-time debug
    //
    EINT;
    ERTM;
    // Add delay to ensure SCI is fully initialized


    // Initialize HAL first to set correct LSPCLK clock before SCI init
    halHandle = HAL_init(&hal, sizeof(hal));
    halMtrHandle[MTR_1] = HAL_MTR_init(&halMtr[MTR_1], sizeof(halMtr[MTR_1]));
    halMtrHandle[MTR_2] = HAL_MTR_init(&halMtr[MTR_2], sizeof(halMtr[MTR_2]));

    // Disable PWM sync before HAL params set
    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // Set HAL params - THIS MUST BE DONE BEFORE SCI INIT to set correct LSPCLK!
    HAL_setParams(halHandle);

    // Now initialize SCI - LSPCLK is correctly set to 50MHz




    // Enable global interrupts and real-time debug
    EINT;
    ERTM;

    // Set motor HAL params
    HAL_setMotorParams(halMtrHandle[MTR_1]);
    HAL_setMotorParams(halMtrHandle[MTR_2]);

    HAL_SCI_init();

    // Enable PWM clock sync
    SysCtl_enablePeripheral( SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // Initialize motor 1 parameters
    initMotorParameters(&motorVars[0], halMtrHandle[0]);

    // Initialize motor 2 parameters
    initMotorParameters(&motorVars[1], halMtrHandle[1]);

    // Initialize motor 1 control variables
    initControlVars(&motorVars[0]);

    // Initialize motor 2 control variables
    initControlVars(&motorVars[1]);

    // motorVars[0].currentLimit = 9.0;        // 9A
    // motorVars[1].currentLimit = 9.0;        // 9A
    //
    // HAL_setupMotorFaultProtection(halMtrHandle[MTR_1],
    //                               motorVars[MTR_1].currentLimit);
    // HAL_setupMotorFaultProtection(halMtrHandle[MTR_2],
    //                               motorVars[MTR_2].currentLimit);

// -q PI 1.0 SVGEN
// PI pi_id.Umax i_iq.Umax Umins
    // Reset motor 1 control variables
    resetControlVars(&motorVars[0]);

    // Reset motor 2 control variables
    resetControlVars(&motorVars[1]);


    // Motor 1 clear TZ flags
    HAL_clearTZFlag(halMtrHandle[MTR_1]);

    // Motor 2 clear TZ flags
    HAL_clearTZFlag(halMtrHandle[MTR_2]);

    // Set Alpha state pointer to A0
    Alpha_State_Ptr = &A0;    // Alpha A0
    // Set A task pointer to A1
    A_Task_Ptr = &A1;         // A 10
    // Set B task pointer to B1
    B_Task_Ptr = &B1;         // B 100
    // Set C task pointer to C1
    C_Task_Ptr = &C1;         // C 150

    // Set up the initialization value for some variables
    motorVars[0].IdRef_start = 0.2;
    motorVars[0].IqRef = 0.1;
    motorVars[0].speedRef = 0.5;
    motorVars[0].lsw1Speed = 0.5;

    motorVars[0].posPtr = 0;
    motorVars[0].posPtrMax = posPtrMax;
    motorVars[0].posCntrMax = 5000;
    motorVars[0].posSlewRate = 0.001;
    motorVars[0].fclClrCntr = 1;

    motorVars[1].IdRef_start = 0.2;
    motorVars[1].IqRef = 0.1;
    motorVars[1].speedRef = 0.5;
    motorVars[1].lsw1Speed = 0.5;

    motorVars[1].posPtr = 0;
    motorVars[1].posPtrMax = posPtrMax;
    motorVars[1].posCntrMax = 5000;
    motorVars[1].posSlewRate = 0.001;
    motorVars[1].fclClrCntr = 1;

//
// Initialize Datalog module for motor 1 or motor 2
//
    DLOG_4CH_F_init(&dlog_4ch1);
    dlog_4ch1.input_ptr1 = &dlogCh1;
    dlog_4ch1.input_ptr2 = &dlogCh2;
    dlog_4ch1.input_ptr3 = &dlogCh3;
    dlog_4ch1.input_ptr4 = &dlogCh4;
    dlog_4ch1.output_ptr1 = &DBUFF_4CH1[0];
    dlog_4ch1.output_ptr2 = &DBUFF_4CH2[0];
    dlog_4ch1.output_ptr3 = &DBUFF_4CH3[0];
    dlog_4ch1.output_ptr4 = &DBUFF_4CH4[0];
    dlog_4ch1.size = 200;
    dlog_4ch1.pre_scalar = 5;
    dlog_4ch1.trig_value = 0.01;
    dlog_4ch1.status = 2;

// FLASH
#ifdef _FLASH
    enableFlag = true;
    flagSyncRun = true;
    ctrlState = CTRL_STOP;
#endif

    // Wait for enable flag
    while(enableFlag == false)
    {
        backTicker++;
    }

    // Wait for FCL software version to be 0x00000008
    while(FCL_getSwVersion() != 0x00000008)  // FCL 0x00000008)
    {
        backTicker++;
    }

    // Setup motor 1 interrupts
    HAL_setupInterrupts(halMtrHandle[MTR_1]);  // 1 WM DC

    // Setup motor 2 interrupts
    HAL_setupInterrupts(halMtrHandle[MTR_2]);  // 2 WM DC

    // Calculate motor 1 offsets
    runOffsetsCalculation(&motorVars[0]);

    // Calculate motor 2 offsets
    runOffsetsCalculation(&motorVars[1]);

    // Enable motor 1 interrupts
    HAL_enableInterrupts(halMtrHandle[MTR_1]);

    // Enable motor 2 interrupts
    HAL_enableInterrupts(halMtrHandle[MTR_2]);

    // LEVEL1/2/3/4 clearTrip trlState STOP

    motorVars[0].clearTripFlagDMC = 1;
    motorVars[1].clearTripFlagDMC = 1;


    // unMotorControl
    GPIO_writePin(motorVars[0].drvEnableGateGPIO, 1);
    GPIO_writePin(motorVars[1].drvEnableGateGPIO, 1);

    // Note: EINT and ERTM are already enabled before Board_init()

#if(BUILDLEVEL == FCL_LEVEL3) || (BUILDLEVEL == FCL_LEVEL4)
    // =====================================================================
    // LEVEL3/4
    // =====================================================================
    flagSyncRun = true;
    ctrlState = CTRL_RUN;
    runMotor = MOTOR_RUN;

#endif



    //
    //
    //
    for(;;)
    {
        //
        //===========================================================
        (*Alpha_State_Ptr)();   // Alpha A0,B0,...
        //===========================================================

        runSyncControl();
        runCustomSpeedMeasureM1();
        runCustomSpeedMeasureM2();

        adc_raw[0].iu = (int16_t)HWREGH(motorVars[0].curA_PPBRESULT);
        adc_raw[0].iv = (int16_t)HWREGH(motorVars[0].curB_PPBRESULT);
        adc_raw[0].iw = (int16_t)HWREGH(motorVars[0].curC_PPBRESULT);

        adc_raw[1].iu = (int16_t)HWREGH(motorVars[1].curA_PPBRESULT);
        adc_raw[1].iv = (int16_t)HWREGH(motorVars[1].curB_PPBRESULT);
        adc_raw[1].iw = (int16_t)HWREGH(motorVars[1].curC_PPBRESULT);
    }
} //END MAIN CODE

//========================================================================
//=============================================================================

/**
 */
void A0(void)
{
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER0_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER0_BASE);

        //-----------------------------------------------------------
        (*A_Task_Ptr)();
        //-----------------------------------------------------------

        vTimer0[0]++;
        serialCommsTimer++;
    }

    Alpha_State_Ptr = &B0;
}

/**
 */
void B0(void)
{
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER1_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER1_BASE);

        //-----------------------------------------------------------
        (*B_Task_Ptr)();
        //-----------------------------------------------------------
        vTimer1[0]++;
    }

    Alpha_State_Ptr = &C0;
}

/**
 */
void C0(void)
{
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER2_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER2_BASE);

        //-----------------------------------------------------------
        (*C_Task_Ptr)();
        //-----------------------------------------------------------

        vTimer2[0]++;
    }

    Alpha_State_Ptr = &A0;
}

//==============================================================================
//==============================================================================

/**
 */
void A1(void) // SPARE (not used)
{
    runMotorControl(&motorVars[0], halMtrHandle[0]);

    //-------------------
    A_Task_Ptr = &A2;
    //-------------------
}

/**
 */
void A2(void) // SPARE (not used)
{
    runMotorControl(&motorVars[1], halMtrHandle[1]);

    //-------------------
    A_Task_Ptr = &A3;
    //-------------------
}

/**
 */
void A3(void) // SPARE (not used)
{
    led1Cnt++;
    if(led1Cnt >= LPD_LED1_WAIT_TIME)
    {
        led1Cnt = 0;
        GPIO_togglePin(LPD_RED_LED1);
    }
}

    //-----------------
//==============================================================================
//==============================================================================

//----------------------------------- -------------------------------------

/**
 */
void B1(void) // Toggle GPIO-00
{

    //-----------------
    B_Task_Ptr = &B2;
    //-----------------
}

/**
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
        HAL_SCI_prepareWaveformData(ch0, ch1, ch2, buffer, &size);

        // Send all bytes at once
        for(i = 0; i < size; i++)
        {
            SCI_writeCharNonBlocking(HAL_SCI_BASE, buffer[i]);
        }
    }

    //-----------------
    B_Task_Ptr = &B3;
    //-----------------
}

/**
 */
void B3(void) // SPARE
{

    //-----------------
    B_Task_Ptr = &B1;
    //-----------------
}
//==============================================================================
//==============================================================================

//--------------------------------- ---------------------------------------

/**
 */
void C1(void)   // Toggle GPIO-34
{
    led2Cnt++;

    if(led2Cnt >= LPD_LED2_WAIT_TIME)
    {
        led2Cnt = 0;

        GPIO_togglePin(LPD_BLUE_LED2);
    }

    //-----------------
    C_Task_Ptr = &C2;
    //-----------------
}

/**
 * @brief 150         - C2
 * @details                                  
 * @param 
 * @return 
 */
void C2(void) // SPARE
{

    //-----------------
    C_Task_Ptr = &C3;
    //-----------------
}

/**
 * @brief 150         - C3
 * @details                                  
 * @param 
 * @return 
 */
void C3(void) // SPARE
{
    //-----------------
    // CPUTimer2 1 
    C_Task_Ptr = &C1;
    //-----------------
}

//
// 
//

//****************************************************************************
//****************************************************************************
//
//
//****************************************************************************
//****************************************************************************
//
#if(BUILDLEVEL == FCL_LEVEL3)
// =============================== FCL_LEVEL 3 ================================
// 3 ID q 
// lsw = ENC_ALIGNMENT : 
// lsw = ENC_WAIT_FOR_INDEX : 
// 1. Iq EP 
// 
// 
// 2. x02 larke1.As larke1.Bs FCL 
// ============================================================================

#pragma FUNC_ALWAYS_INLINE(buildLevel3_M1)

static inline void buildLevel3_M1(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    // 
    FCL_runComplexCtrl_M1(&motorVars[0]);
#endif

// ----------------------------------------------------------------------------
// FCL cycle count calculation.
// ----------------------------------------------------------------------------
    getFCLTime(MTR_1);

// ----------------------------------------------------------------------------
// Measure DC bus voltage.
// ----------------------------------------------------------------------------
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);

// ----------------------------------------------------------------------------
// FCL current-loop wrapper.
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M1(&motorVars[0]);
#endif

// ----------------------------------------------------------------------------
// Encoder alignment routine.
// ----------------------------------------------------------------------------
    if(motorVars[0].runMotor == MOTOR_STOP)
    {
        motorVars[0].ptrFCL->lsw = ENC_ALIGNMENT;
        motorVars[0].pi_id.ref = 0;
        motorVars[0].IdRef = 0;
        FCL_resetController(&motorVars[0]);
    }
    else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[0].IdRef = motorVars[0].IdRef_start;

        if(motorVars[0].pi_id.ref >= motorVars[0].IdRef)
        {
            motorVars[0].alignCntr++;

            if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
            {
                motorVars[0].alignCntr  = 0;
                motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
            }
        }
    }
    else if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[0].IdRef = motorVars[0].IdRef_run;
    }

// ----------------------------------------------------------------------------
// Connect inputs of the RMP module and call ramp control.
// ----------------------------------------------------------------------------
    if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[0].rc.TargetValue = 0;
        motorVars[0].rc.SetpointValue = 0;
    }
    else
    {
        motorVars[0].rc.TargetValue = motorVars[0].speedRef;
    }

    fclRampControl(&motorVars[0].rc);

// ----------------------------------------------------------------------------
// RAMP GEN 
// ----------------------------------------------------------------------------
    motorVars[0].ptrFCL->rg.Freq = motorVars[0].rc.SetpointValue;
    fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);

    // 
    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;

    // 
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
// CL iqref
// ----------------------------------------------------------------------------
    motorVars[0].ptrFCL->pi_iq.ref =
           (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 : motorVars[0].IqRef;

// ----------------------------------------------------------------------------
// CL idref
// ----------------------------------------------------------------------------
    motorVars[0].pi_id.ref =
           ramper(motorVars[0].IdRef, motorVars[0].pi_id.ref, 0.00001);

    return;
}

#pragma FUNC_ALWAYS_INLINE(buildLevel3_M2)

static inline void buildLevel3_M2(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    // 
    FCL_runComplexCtrl_M2(&motorVars[1]);
#endif

// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------
    getFCLTime(MTR_2);

// ----------------------------------------------------------------------------
// SDFM 
// ----------------------------------------------------------------------------
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[0]);

// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);
#endif

// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------
    if(motorVars[1].runMotor == MOTOR_STOP)
    {
        motorVars[1].ptrFCL->lsw = ENC_ALIGNMENT;
        motorVars[1].pi_id.ref = 0;
        motorVars[1].IdRef = 0;
        FCL_resetController(&motorVars[1]);
    }
    else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 
        motorVars[1].IdRef = motorVars[1].IdRef_start;  // .1;

        // 
        if(motorVars[1].pi_id.ref >= motorVars[1].IdRef)
        {
            motorVars[1].alignCntr++;

            if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
            {
                motorVars[1].alignCntr  = 0;

                motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[1].IdRef = motorVars[1].IdRef_run;
    }

// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
    if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[1].rc.TargetValue = 0;
        motorVars[1].rc.SetpointValue = 0;
    }
    else
    {
        // 
        motorVars[1].rc.TargetValue = motorVars[1].speedRef;
    }

    // 
    fclRampControl(&motorVars[1].rc);

// ----------------------------------------------------------------------------
// RAMP GEN 
// ----------------------------------------------------------------------------
    motorVars[1].ptrFCL->rg.Freq = motorVars[1].rc.SetpointValue;
    fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);

    // 
    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;

    // 
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
// CL iqref
// ----------------------------------------------------------------------------
    motorVars[1].ptrFCL->pi_iq.ref =
           (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 : motorVars[1].IqRef;

// ----------------------------------------------------------------------------
// CL idref
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
#pragma FUNC_ALWAYS_INLINE(buildLevel4_M1)
static inline void buildLevel4_M1(void)
{
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M1(&motorVars[0]);
#endif

    getFCLTime(MTR_1);
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M1(&motorVars[0]);
#endif

    if(motorVars[0].runMotor == MOTOR_RUN)
    {
        if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            motorVars[0].IdRef = motorVars[0].IdRef_run;
            motorVars[0].rc.TargetValue = motorVars[0].speedRef;
        }
        else if(motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX)
        {
            motorVars[0].rc.TargetValue = motorVars[0].lsw1Speed *
                    (motorVars[0].speedRef > 0 ? 1 : -1);
            motorVars[0].ptrFCL->rg.Freq = motorVars[0].rc.SetpointValue;
            fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);
        }
        else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
        {
            motorVars[0].rc.TargetValue = 0;
            motorVars[0].rc.SetpointValue = 0;
            motorVars[0].IdRef = motorVars[0].IdRef_start;

            if(motorVars[0].tempIdRef >= motorVars[0].IdRef)
            {
                motorVars[0].alignCntr++;
                if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
                {
                    motorVars[0].alignCntr = 0;
                    motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
                }
            }
        }
    }
    else
    {
        motorVars[0].IdRef = 0;
        motorVars[0].tempIdRef = motorVars[0].IdRef;
        motorVars[0].rc.TargetValue = 0;
        FCL_resetController(&motorVars[0]);
    }

    fclRampControl(&motorVars[0].rc);

    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;

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

    motorVars[0].speedLoopCount++;
    if(motorVars[0].speedLoopCount >= motorVars[0].speedLoopPrescaler)
    {
        motorVars[0].pid_spd.term.Fbk = m1_custom_speed_pu;
        motorVars[0].pid_spd.term.Ref = motorVars[0].rc.SetpointValue;
        updateSpeedPIDGains(&motorVars[0]);
        runPID(&motorVars[0].pid_spd);
        motorVars[0].speedLoopCount = 0;
    }

    if((motorVars[0].ptrFCL->lsw != ENC_CALIBRATION_DONE) ||
            (motorVars[0].runMotor == MOTOR_STOP))
    {
        motorVars[0].pid_spd.data.d1 = 0;
        motorVars[0].pid_spd.data.d2 = 0;
        motorVars[0].pid_spd.data.i1 = 0;
        motorVars[0].pid_spd.data.ud = 0;
        motorVars[0].pid_spd.data.ui = 0;
        motorVars[0].pid_spd.data.up = 0;
    }

    motorVars[0].ptrFCL->pi_iq.ref =
            (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[0].IqRef : motorVars[0].pid_spd.term.Out;

    motorVars[0].tempIdRef = ramper(motorVars[0].IdRef,
                                    motorVars[0].tempIdRef, 0.00001);
    motorVars[0].pi_id.ref = motorVars[0].tempIdRef;
}

#pragma FUNC_ALWAYS_INLINE(buildLevel4_M2)
static inline void buildLevel4_M2(void)
{
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M2(&motorVars[1]);
#endif

    getFCLTime(MTR_2);
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[1]);

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);
#endif

    if(motorVars[1].runMotor == MOTOR_RUN)
    {
        if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            motorVars[1].IdRef = motorVars[1].IdRef_run;
            motorVars[1].rc.TargetValue = motorVars[1].speedRef;
        }
        else if(motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX)
        {
            motorVars[1].rc.TargetValue = motorVars[1].lsw1Speed *
                    (motorVars[1].speedRef > 0 ? 1 : -1);
            motorVars[1].ptrFCL->rg.Freq = motorVars[1].rc.SetpointValue;
            fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);
        }
        else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
        {
            motorVars[1].rc.TargetValue = 0;
            motorVars[1].rc.SetpointValue = 0;
            motorVars[1].IdRef = motorVars[1].IdRef_start;

            if(motorVars[1].tempIdRef >= motorVars[1].IdRef)
            {
                motorVars[1].alignCntr++;
                if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
                {
                    motorVars[1].alignCntr = 0;
                    motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
                }
            }
        }
    }
    else
    {
        motorVars[1].IdRef = 0;
        motorVars[1].tempIdRef = motorVars[1].IdRef;
        motorVars[1].rc.TargetValue = 0;
        FCL_resetController(&motorVars[1]);
    }

    fclRampControl(&motorVars[1].rc);

    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;

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

    motorVars[1].speedLoopCount++;
    if(motorVars[1].speedLoopCount >= motorVars[1].speedLoopPrescaler)
    {
        motorVars[1].pid_spd.term.Fbk = m2_custom_speed_pu;
        motorVars[1].pid_spd.term.Ref = motorVars[1].rc.SetpointValue;
        updateSpeedPIDGains(&motorVars[1]);
        runPID(&motorVars[1].pid_spd);
        motorVars[1].speedLoopCount = 0;
    }

    if((motorVars[1].ptrFCL->lsw != ENC_CALIBRATION_DONE) ||
            (motorVars[1].runMotor == MOTOR_STOP))
    {
        motorVars[1].pid_spd.data.d1 = 0;
        motorVars[1].pid_spd.data.d2 = 0;
        motorVars[1].pid_spd.data.i1 = 0;
        motorVars[1].pid_spd.data.ud = 0;
        motorVars[1].pid_spd.data.ui = 0;
        motorVars[1].pid_spd.data.up = 0;
    }

    motorVars[1].ptrFCL->pi_iq.ref =
            (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[1].IqRef : motorVars[1].pid_spd.term.Out;

    motorVars[1].tempIdRef = ramper(motorVars[1].IdRef,
                                    motorVars[1].tempIdRef, 0.00001);
    motorVars[1].pi_id.ref = motorVars[1].tempIdRef;
}
#endif // (BUILDLEVEL==FCL_LEVEL4)
#if(BUILDLEVEL == FCL_LEVEL5)
// =============================== FCL_LEVEL 5 =================================
// posArray 
// lsw = ENC_ALIGNMENT : 
// lsw = ENC_WAIT_FOR_INDEX : - QEP 
// 
// - 'lsw=ENC_CALIBRATION_DONE' 
// lsw = ENC_CALIBRATION_DONE : / / (Id/Iq)
//
// 
// x02 larke1.As larke1.Bs FCL 
//
// =============================================================================
// 
#pragma FUNC_ALWAYS_INLINE(buildLevel5_M1)

static inline void buildLevel5_M1(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M1(&motorVars[0]);  // PI 1 
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M1(&motorVars[0]);
#endif

// -----------------------------------------------------------------------------
// FCL_cycleCount 
// 
// -----------------------------------------------------------------------------
    getFCLTime(MTR_1);  // 1 CL 

// -----------------------------------------------------------------------------
// SDFM Filter3 
// -----------------------------------------------------------------------------
    motorVars[0].FCL_params.Vdcbus = getVdc(&motorVars[0]);

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
   FCL_runPICtrlWrap_M1(&motorVars[0]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
   FCL_runComplexCtrlWrap_M1(&motorVars[0]);  // 
#endif

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
    if(motorVars[0].runMotor == MOTOR_STOP)
    {
        motorVars[0].ptrFCL->lsw = ENC_ALIGNMENT;  // 
        motorVars[0].lsw2EntryFlag = 0;  // lsw2 
        motorVars[0].alignCntr = 0;  // 
        motorVars[0].posCntr = 0;  // 
        motorVars[0].posPtr = 0;  // 
        motorVars[0].IdRef = 0;  // Id 0
        motorVars[0].pi_id.ref = motorVars[0].IdRef;  // PI_id 0
        FCL_resetController(&motorVars[0]);  // 
    }
    else if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 
        motorVars[0].IdRef = motorVars[0].IdRef_start;

        // runMotor = STOP) 
        motorVars[0].rc.TargetValue = 0;
        motorVars[0].rc.SetpointValue = 0;

        // 
        if(motorVars[0].pi_id.ref >= motorVars[0].IdRef)
        {
            motorVars[0].alignCntr++;  // 

            if(motorVars[0].alignCntr >= motorVars[0].alignCnt)
            {
                motorVars[0].alignCntr  = 0;  // 

                motorVars[0].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;  // 
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[0].IdRef = motorVars[0].IdRef_run;
    }

// -----------------------------------------------------------------------------
// RAMP GEN 
// -----------------------------------------------------------------------------
    motorVars[0].ptrFCL->rg.Freq = motorVars[0].speedRef * 0.1;  // 
    fclRampGen((RAMPGEN *)&motorVars[0].ptrFCL->rg);  // 

// -----------------------------------------------------------------------------
// SPEED_FR 
// -----------------------------------------------------------------------------
    motorVars[0].posElecTheta = motorVars[0].ptrFCL->qep.ElecTheta;
    motorVars[0].posMechTheta = motorVars[0].ptrFCL->qep.MechTheta;
    motorVars[0].speed.ElecTheta = motorVars[0].posElecTheta;  // 
    runSpeedFR(&motorVars[0].speed);  // 

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
// PID PID 
// -----------------------------------------------------------------------------
    motorVars[0].speedLoopCount++;  // 

    if(motorVars[0].speedLoopCount >= motorVars[0].speedLoopPrescaler)
    {
        if(motorVars[0].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            if(!motorVars[0].lsw2EntryFlag)
            {
                motorVars[0].lsw2EntryFlag = 1;  // 
                motorVars[0].rc.TargetValue = motorVars[0].posMechTheta;  // 
                motorVars[0].pi_pos.Fbk = motorVars[0].rc.TargetValue;  // 
                motorVars[0].pi_pos.Ref = motorVars[0].pi_pos.Fbk;
            }
            else
            {
                // ========== =========
                // 
                // efPosGen() 
                // rg1.Out 
                // 
                motorVars[0].rc.TargetValue =
                        refPosGen(motorVars[0].rc.TargetValue, &motorVars[0]);  // 

                motorVars[0].rc.SetpointValue = motorVars[0].rc.TargetValue -
                             (float32_t)((int32_t)motorVars[0].rc.TargetValue);  // 

                if(motorVars[0].rc.SetpointValue < 0)
                {
                    motorVars[0].rc.SetpointValue += 1.0;  // 
                }

                motorVars[0].pi_pos.Ref = motorVars[0].rc.SetpointValue;
                motorVars[0].pi_pos.Fbk = motorVars[0].posMechTheta;  // 
            }

            runPIPos(&motorVars[0].pi_pos);

            motorVars[0].pid_spd.term.Ref = motorVars[0].pi_pos.Out;
            motorVars[0].pid_spd.term.Fbk = m1_custom_speed_pu;  // 
            updateSpeedPIDGains(&motorVars[0]);
            runPID(&motorVars[0].pid_spd);
        }

        motorVars[0].speedLoopCount = 0;  // 
    }

    if(motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[0].rc.SetpointValue = 0;  // = 0 
        motorVars[0].pid_spd.data.d1 = 0;
        motorVars[0].pid_spd.data.d2 = 0;
        motorVars[0].pid_spd.data.i1 = 0;
        motorVars[0].pid_spd.data.ud = 0;
        motorVars[0].pid_spd.data.ui = 0;
        motorVars[0].pid_spd.data.up = 0;
        motorVars[0].pi_pos.ui = 0;
        motorVars[0].pi_pos.i1 = 0;
        motorVars[0].ptrFCL->rg.Out = 0;  // 
        motorVars[0].lsw2EntryFlag = 0;  // 
    }

// -----------------------------------------------------------------------------
// CL iqref
// -----------------------------------------------------------------------------
    motorVars[0].ptrFCL->pi_iq.ref =
            (motorVars[0].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[0].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[0].IqRef : motorVars[0].pid_spd.term.Out;

// -----------------------------------------------------------------------------
// CL idref
// -----------------------------------------------------------------------------
    motorVars[0].pi_id.ref =
            ramper(motorVars[0].IdRef, motorVars[0].pi_id.ref, 0.00001);

    return;
}

// 
#pragma FUNC_ALWAYS_INLINE(buildLevel5_M2)

static inline void buildLevel5_M2(void)
{

#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrl_M2(&motorVars[1]);  // PI 2 
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrl_M2(&motorVars[1]);
#endif

// -----------------------------------------------------------------------------
// FCL_cycleCount 
// 
// -----------------------------------------------------------------------------
    getFCLTime(MTR_2);  // 2 CL 

// -----------------------------------------------------------------------------
// SDFM Filter3 
// -----------------------------------------------------------------------------
    motorVars[1].FCL_params.Vdcbus = getVdc(&motorVars[1]);

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
#if(FCL_CNTLR ==  PI_CNTLR)
    FCL_runPICtrlWrap_M2(&motorVars[1]);
#endif

#if(FCL_CNTLR ==  CMPLX_CNTLR)
    FCL_runComplexCtrlWrap_M2(&motorVars[1]);  // 
#endif

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
    if(motorVars[1].runMotor == MOTOR_STOP)
    {
        motorVars[1].ptrFCL->lsw = ENC_ALIGNMENT;  // 
        motorVars[1].lsw2EntryFlag = 0;  // lsw2 
        motorVars[1].alignCntr = 0;  // 
        motorVars[1].posCntr = 0;  // 
        motorVars[1].posPtr = 0;  // 
        motorVars[1].IdRef = 0;  // Id 0
        motorVars[1].pi_id.ref = motorVars[1].IdRef;  // PI_id 0
        FCL_resetController(&motorVars[1]);  // 
    }
    else if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        // 
        motorVars[1].IdRef = motorVars[1].IdRef_start;  // .1;

        // 
        if(motorVars[1].pi_id.ref >= motorVars[1].IdRef)
        {
            motorVars[1].alignCntr++;

            if(motorVars[1].alignCntr >= motorVars[1].alignCnt)
            {
                motorVars[1].alignCntr  = 0;

                motorVars[1].ptrFCL->lsw = ENC_WAIT_FOR_INDEX;
            }
        }
    } // end else if(lsw == ENC_ALIGNMENT)
    else if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
    {
        motorVars[1].IdRef = motorVars[1].IdRef_run;
    }

// -----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
    if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[1].rc.TargetValue = 0;
        motorVars[1].rc.SetpointValue = 0;
    }
    else
    {
        // 
        motorVars[1].rc.TargetValue = motorVars[1].speedRef;
    }

    // 
    fclRampControl(&motorVars[1].rc);

// ----------------------------------------------------------------------------
// RAMP GEN 
// ----------------------------------------------------------------------------
    motorVars[1].ptrFCL->rg.Freq = motorVars[1].rc.SetpointValue;
    fclRampGen((RAMPGEN *)&motorVars[1].ptrFCL->rg);

    // 
    motorVars[1].posElecTheta = motorVars[1].ptrFCL->qep.ElecTheta;
    motorVars[1].posMechTheta = motorVars[1].ptrFCL->qep.MechTheta;
    motorVars[1].speed.ElecTheta = motorVars[1].posElecTheta;  // 
    runSpeedFR(&motorVars[1].speed);  // 

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
// PID PID 
// ----------------------------------------------------------------------------
    motorVars[1].speedLoopCount++;  // 

    if(motorVars[1].speedLoopCount >= motorVars[1].speedLoopPrescaler)
    {
        if(motorVars[1].ptrFCL->lsw == ENC_CALIBRATION_DONE)
        {
            if(!motorVars[1].lsw2EntryFlag)
            {
                motorVars[1].lsw2EntryFlag = 1;  // 
                motorVars[1].rc.TargetValue = motorVars[1].posMechTheta;  // 
                motorVars[1].pi_pos.Fbk = motorVars[1].rc.TargetValue;  // 
                motorVars[1].pi_pos.Ref = motorVars[1].pi_pos.Fbk;
            }
            else
            {
                // ========== =========
                // 
                // efPosGen() 
                // rg1.Out 
                // 
                motorVars[1].rc.TargetValue =
                        refPosGen(motorVars[1].rc.TargetValue, &motorVars[1]);  // 

                motorVars[1].rc.SetpointValue = motorVars[1].rc.TargetValue -
                             (float32_t)((int32_t)motorVars[1].rc.TargetValue);  // 

                if(motorVars[1].rc.SetpointValue < 0)
                {
                    motorVars[1].rc.SetpointValue += 1.0;  // 
                }

                motorVars[1].pi_pos.Ref = motorVars[1].rc.SetpointValue;
                motorVars[1].pi_pos.Fbk = motorVars[1].posMechTheta;  // 
            }

            runPIPos(&motorVars[1].pi_pos);

            motorVars[1].pid_spd.term.Ref = motorVars[1].pi_pos.Out;
            motorVars[1].pid_spd.term.Fbk = m2_custom_speed_pu;  // 
            updateSpeedPIDGains(&motorVars[1]);
            runPID(&motorVars[1].pid_spd);
        }

        motorVars[1].speedLoopCount = 0;  // 
    }

    if(motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT)
    {
        motorVars[1].rc.SetpointValue = 0;  // = 0 
        motorVars[1].pid_spd.data.d1 = 0;
        motorVars[1].pid_spd.data.d2 = 0;
        motorVars[1].pid_spd.data.i1 = 0;
        motorVars[1].pid_spd.data.ud = 0;
        motorVars[1].pid_spd.data.ui = 0;
        motorVars[1].pid_spd.data.up = 0;
        motorVars[1].pi_pos.ui = 0;
        motorVars[1].pi_pos.i1 = 0;
        motorVars[1].ptrFCL->rg.Out = 0;  // 
        motorVars[1].lsw2EntryFlag = 0;  // 
    }

// -----------------------------------------------------------------------------
// CL iqref
// -----------------------------------------------------------------------------
    motorVars[1].ptrFCL->pi_iq.ref =
            (motorVars[1].ptrFCL->lsw == ENC_ALIGNMENT) ? 0 :
                    (motorVars[1].ptrFCL->lsw == ENC_WAIT_FOR_INDEX) ?
                            motorVars[1].IqRef : motorVars[1].pid_spd.term.Out;

// -----------------------------------------------------------------------------
// CL idref
// -----------------------------------------------------------------------------
    motorVars[1].pi_id.ref =
            ramper(motorVars[1].IdRef, motorVars[1].pi_id.ref, 0.00001);

    return;
}
#endif // (BUILDLEVEL==FCL_LEVEL5)

// ****************************************************************************
// ****************************************************************************
// 
// ****************************************************************************
// ****************************************************************************

#pragma CODE_ALIGN(motor1ControlISR, 2)  // 
__interrupt void motor1ControlISR(void)
{


#if(BUILDLEVEL == FCL_LEVEL3)  // FCL_LEVEL3 + 
    buildLevel3_M1();  // 1 CL_LEVEL3 

// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].posElecTheta;  // 
    dlogCh2 = motorVars[0].ptrFCL->rg.Out;  // 
    dlogCh3 = motorVars[0].ptrFCL->pi_iq.ref;
    dlogCh4 = motorVars[0].ptrFCL->pi_iq.fbk;

#ifdef DACOUT_EN
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
    DAC_setShadowValue(hal.dacHandle[0],
                       DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.ref));
    DAC_setShadowValue(hal.dacHandle[1],
                       DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.fbk));
#endif   // DACOUT_EN

#elif(BUILDLEVEL == FCL_LEVEL4)  // FCL_LEVEL4 
    buildLevel4_M1();  // 1 CL_LEVEL4/6 

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].posElecTheta;
    dlogCh2 = m1_custom_speed_pu;
    dlogCh3 = motorVars[1].posElecTheta;
    dlogCh4 = m2_custom_speed_pu;

#ifdef DACOUT_EN
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
   DAC_setShadowValue(hal.dacHandle[0],
                      DAC_MACRO_PU(motorVars[0].ptrFCL->pi_iq.fbk));
   DAC_setShadowValue(hal.dacHandle[1],
                      DAC_MACRO_PU(m1_custom_speed_pu));  // DAC1 1 
#endif   // DACOUT_EN

#elif(BUILDLEVEL == FCL_LEVEL5)  // FCL_LEVEL5 + 
    buildLevel5_M1();  // 1 CL_LEVEL5 

// -----------------------------------------------------------------------------
// 
// -----------------------------------------------------------------------------
    dlogCh1 = motorVars[0].pi_pos.Ref;
    dlogCh2 = motorVars[0].pi_pos.Fbk;  // 
    dlogCh3 = motorVars[0].pi_id.fbk;
    dlogCh4 = motorVars[0].ptrFCL->pi_iq.fbk;

#ifdef DACOUT_EN
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
    DAC_setShadowValue(hal.dacHandle[0],
                       DAC_MACRO_PU(motorVars[0].pi_pos.Fbk));
    DAC_setShadowValue(hal.dacHandle[1],
                       DAC_MACRO_PU(motorVars[1].pi_pos.Fbk));
#endif   // DACOUT_EN

#endif   // DACOUT_EN


// ----------------------------------------------------------------------------
// 
// ----------------------------------------------------------------------------
    DLOG_4CH_F_FUNC(&dlog_4ch1);

    // 
    HAL_ackInt_M1(halMtrHandle[MTR_1]);

    motorVars[0].isrTicker++;

} // motor1ControlISR 


#pragma CODE_ALIGN(motor2ControlISR, 2)  // 
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

// 
// 
// 
// in - 
// out - 
// rampDelta - 
// 
float32_t ramper(float32_t in, float32_t out, float32_t rampDelta)
{
    float32_t err;

    err = in - out;  // 

    if(err > rampDelta)  // 
    {
        return(out + rampDelta);  // 
    }
    else if(err < -rampDelta)  // 
    {
        return(out - rampDelta);  // 
    }
    else  // 
    {
        return(in);  // 
    }
}

//
// 
// 
// 
// out - 
// pMotor - 
// 
// 
float32_t refPosGen(float32_t out, MOTOR_Vars_t *pMotor)
{
    float32_t in = posArray[pMotor->posPtr];  // 

    out = ramper(in, out, pMotor->posSlewRate);  // 

    if(in == out)  // 
    {
        pMotor->posCntr++;  // 

        if(pMotor->posCntr > pMotor->posCntrMax)
        {
            pMotor->posCntr = 0;  // 

            pMotor->posPtr++;  // 

            if(pMotor->posPtr >= pMotor->posPtrMax)  // 
            {
                pMotor->posPtr = 0;  // 
            }
        }
    }

    return(out);  // 
}

//
// 
// 
// 
// pMotor - 
// mtrHandle - 
void runMotorControl(MOTOR_Vars_t *pMotor, HAL_MTR_Handle mtrHandle)
{
    HAL_MTR_Obj *obj = (HAL_MTR_Obj *)mtrHandle;  // 

    // *******************************************************
    // *******************************************************
    pMotor->currentThreshHi = 2048 +
            scaleCurrentValue(pMotor->currentLimit, pMotor->currentInvSF);
    pMotor->currentThreshLo = 2048 -
            scaleCurrentValue(pMotor->currentLimit, pMotor->currentInvSF);

    HAL_setupCMPSS_DACValue(mtrHandle,
                            pMotor->currentThreshHi, pMotor->currentThreshLo);  // CMPSS AC 

    // 
    pMotor->Vdcbus = (pMotor->Vdcbus * 0.8) + (pMotor->FCL_params.Vdcbus * 0.2);  // 

#if 1
// 
    if( (pMotor->Vdcbus > pMotor->VdcbusMax) ||
            (pMotor->Vdcbus < pMotor->VdcbusMin) )  // 
    {
        pMotor->tripFlagDMC |= 0x0002;  // 
    }
    else
    {
        pMotor->tripFlagDMC &= (0xFFFF - 0x0002);  // 
    }
#endif

    // TZ DCAEVT1 
    if((EPWM_getTripZoneFlagStatus(obj->pwmHandle[0]) & EPWM_TZ_FLAG_OST) ||
       (EPWM_getTripZoneFlagStatus(obj->pwmHandle[1]) & EPWM_TZ_FLAG_OST) ||
       (EPWM_getTripZoneFlagStatus(obj->pwmHandle[2]) & EPWM_TZ_FLAG_OST))
    {
        // PWM ST PWM ST 
        EPWM_forceTripZoneEvent(obj->pwmHandle[0], EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(obj->pwmHandle[1], EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(obj->pwmHandle[2], EPWM_TZ_FORCE_EVENT_OST);

        // 
        GPIO_writePin(pMotor->drvEnableGateGPIO, 1);

        pMotor->tripFlagDMC |= 0x0001;  // 
    }

    // 
    pMotor->tripFlagPrev |= pMotor->tripFlagDMC;  // 

    // 
    if(pMotor->tripFlagDMC != 0)  // 
    {
        pMotor->runMotor = MOTOR_STOP;  // 
        pMotor->ctrlState = CTRL_FAULT;  // 

        // 
        GPIO_writePin(pMotor->drvEnableGateGPIO, 1);
    }

    // 
    if((pMotor->tripFlagDMC != 0) && (pMotor->clearTripFlagDMC == true))  // 
    {
        pMotor->tripCountDMC++;  // 
    }

    if(pMotor->clearTripFlagDMC == true)
    {
        // EPWM 
        DEVICE_DELAY_US(1L);

        // OST CAEVT1 
        EPWM_clearTripZoneFlag(obj->pwmHandle[0],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));

        EPWM_clearTripZoneFlag(obj->pwmHandle[1],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));

        EPWM_clearTripZoneFlag(obj->pwmHandle[2],
                               (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));

        //
        // HLATCH - ( 
        //
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[0]);
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[1]);
        CMPSS_clearFilterLatchHigh(obj->cmpssHandle[2]);

        // LLATCH - ( 
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[0]);
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[1]);
        CMPSS_clearFilterLatchLow(obj->cmpssHandle[2]);

        // 
        pMotor->tripFlagDMC = 0;  // 
        pMotor->clearTripFlagDMC = 0;  // 
        pMotor->ctrlState = CTRL_STOP;  // 
        pMotor->ptrFCL->lsw = ENC_ALIGNMENT;
    }

    // 
    if(pMotor->ctrlState == CTRL_RUN)  // 
    {
        if(pMotor->runMotor == MOTOR_STOP)  // 
        {
            pMotor->runMotor = MOTOR_RUN;  // 

            // 
            GPIO_writePin(pMotor->drvEnableGateGPIO, 0);
        }
    }
    else  // 
    {
        if(pMotor->runMotor == MOTOR_RUN)  // 
        {
            pMotor->runMotor = MOTOR_STOP;  // 

            // 
            GPIO_writePin(pMotor->drvEnableGateGPIO, 1);
        }
    }

    return;
}

//------------------------------------------------------------------------------
// runSyncControl()
// 
void runSyncControl(void)
{
    if(flagSyncRun == true)
    {
        
        if((motorVars[0].tripFlagDMC == 0) && (motorVars[1].tripFlagDMC == 0) )
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

        // 
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
//
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

//
// End of Code
