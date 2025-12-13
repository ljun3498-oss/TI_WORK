//###########################################################################
// FILE:   emif1_16bit_asram.c
// TITLE:  EMIF1 module accessing 16bit ASRAM.
//
//! \addtogroup cpu01_example_list
//! <h1> EMIF ASYNC module (emif1_16bit_asram)</h1>
//!
//! This example configures EMIF1 in 16bit ASYNC mode
//! This example uses CS2 as chip enable.
//!
//! \b Watch \b Variables: \n
//! - \b TEST_STATUS - Equivalent to \b TEST_PASS if test finished correctly,
//!                    else the value is set to \b TEST_FAIL
//! - \b ErrCount - Error counter
//! 
//
//
//###########################################################################
// $TI Release: F2837xS Support Library v180 $
// $Release Date: Fri Nov  6 16:27:58 CST 2015 $
// $Copyright: Copyright (C) 2014-2015 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#include "F28x_Project.h"     // Device Headerfile and Examples Include File

#define TEST_PASS 0xABCDABCD
#define TEST_FAIL 0xDEADDEAD



extern void setup_emif1_pinmux_async_16bit(Uint16);

//##########EMIF1-32bit ASRAM test ######################

#define EMIF1 0
#define EMIF2 1

#define MEM_D_WIDTH 		1 			// 16Bit Memory Interface
#define TURN_AROUND_TIME 	0			// Turn Around time of 2 Emif Clock
#define RD_SETUP_TIME 		0			// Read Setup time of 1 Emif Clock
#define RD_STROBE_TIME 		3			// Read Strobe time of 4 Emif Clock
#define RD_HOLD_TIME 		0			// Read Hold time of 1 Emif Clock
#define WR_SETUP_TIME 		0			// Write Hold time of 1 Emif Clock
#define WR_STROBE_TIME 		0			// Write Setup time of 1 Emif Clock
#define WR_HOLD_TIME 		0			// Write Hold time of 1 Emif Clock
#define EXTEND_WAIT 		0			// Disable Extended Wait
#define STROBE_SEL 			0			// Disable Strobe Mode.
#define WAIT_POLAR_INV 		0
#define WAIT_COUNT 			0


Uint16  ErrCount = 0;
Uint32  TEST_STATUS;
int i;

//
//修改
//

#define   AD7606_BASIC    *((volatile  Uint16 *)0x381000)
//#define     AD7656_rst      (*((volatile  Uint16 *)0x200008))
#define   AD_BUSY         GpioDataRegs.GPCDAT.bit.GPIO66//gpio66
#define   SET_ADRST       GpioDataRegs.GPBSET.bit.GPIO53=1//gpio53GpioDataRegs.GPBCLEAR.bit.GPIO53
#define   CLEAR_ADRST     GpioDataRegs.GPBCLEAR.bit.GPIO53=1//gpio53
#define   SET_ADCLK       GpioDataRegs.GPBSET.bit.GPIO58=1//gpio58
#define   CLR_ADCLK       GpioDataRegs.GPBCLEAR.bit.GPIO58=1//gpio58
int ad[8];
void InitXintf(void);
int Max1=0xFFFF,Min1=0x7FFF;
int T1=0,what=0;
void A0(void);  //state A0
void B0(void);  //state B0
void C0(void);  //state C0
// Variable declarations
void (*DataFreq)(void);

//int test[256];
int sampleCount=0;
int testSample1[256];
int i;



void ADInit(void)
{

    InitGpio();
    GPIO_SetupPinMux(58, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(58, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(53, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(53, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(66, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(66, GPIO_INPUT, GPIO_PUSHPULL);

/*    EALLOW;
    GpioCtrlRegs.GPBMUX1.bit.GPIO34=0;
    GpioCtrlRegs.GPBDIR.bit.GPIO34=1;
    GpioCtrlRegs.GPBMUX2.bit.GPIO52 = 0;
    GpioCtrlRegs.GPBDIR.bit.GPIO52=1;
    GpioCtrlRegs.GPBMUX2.bit.GPIO53=0; //ADBUSY
    GpioCtrlRegs.GPBDIR.bit.GPIO53=0;//INPUT
    GpioCtrlRegs.GPBQSEL2.bit.GPIO53= 0;
    EDIS;
    */
}


//
//end
//

void main(void)
{
   // char ErrCount_local;
	//TEST_STATUS = TEST_FAIL;
	Uint16 i=0;
	InitSysCtrl();

 	DINT;
 	
//  Initialize the PIE control registers to their default state.
//  The default state is all PIE interrupts disabled and flags
//  are cleared.
//  This function is found in the F2837xS_PieCtrl.c file.
    InitPieCtrl();

// Disable CPU interrupts and clear all CPU interrupt flags:
    EALLOW;   
	IER = 0x0000;
	IFR = 0x0000;
	EDIS;
	
// Initialize the PIE vector table with pointers to the shell Interrupt
// GService Routines (ISR).
// This will populate the entire table, even if the interrupt
// is not used in this example.  This is useful for debug purposes.
// The shell ISR routines are found in F2837xS_DefaultIsr.c.
// This function is found in F2837xS_PieVect.c.
   InitPieVectTable();

//initgpio
   ADInit();

//Configure to run EMIF1 on full Rate (EMIF1CLK = CPU1SYSCLK)
  EALLOW;
  ClkCfgRegs.PERCLKDIVSEL.bit.EMIF1CLKDIV = 0x0;
  EDIS;

  EALLOW;  

//Disable Access Protection (CPU_FETCH/CPU_WR/DMA_WR)
  Emif1ConfigRegs.EMIF1ACCPROT0.all = 0x0;
  if (Emif1ConfigRegs.EMIF1ACCPROT0.all != 0x0)
  {
      ErrCount++;
  }

// Commit the configuration related to protection. Till this bit remains set
// content of EMIF1ACCPROT0 register can't be changed.
  Emif1ConfigRegs.EMIF1COMMIT.all = 0x1;
  if(Emif1ConfigRegs.EMIF1COMMIT.all != 0x1)
  {
	 ErrCount++;
  }

// Lock the configuration so that EMIF1COMMIT register can't be changed any more.
  Emif1ConfigRegs.EMIF1LOCK.all = 0x1;
  if (Emif1ConfigRegs.EMIF1LOCK.all != 1)
  {
	  ErrCount++;
  }

  EDIS;

//Configure GPIO pins for EMIF1
  setup_emif1_pinmux_async_16bit(0);


  SET_ADRST;
    DELAY_US(1000);
    CLEAR_ADRST;
    DELAY_US(1000);
    StartCpuTimer0();
    DataFreq = &A0;

  while(1){
      DELAY_US(100);
      CLR_ADCLK;   //启动转换信号
       DELAY_US(1); //给予适当的电平延时
       SET_ADCLK;
       DELAY_US(1);
       //GpioDataRegs.GPADAT.bit.GPIO0 = ~GpioDataRegs.GPADAT.bit.GPIO0;
           while(AD_BUSY) //等待转换结束
           {

           }

           for(i=0;i<8;i++)
           {
               ad[i]=AD7606_BASIC; //读取6路AD通道数据
           }
           testSample1[sampleCount]=ad[0];//存放在数组里

           (*DataFreq)();

           sampleCount++;
           if(sampleCount >= 255)
               sampleCount=0;
  }


  //////////////////////////////////////////////
  //Uint16 i=0;

}

void A0(void)
{
    if(testSample1[sampleCount]>Max1)
    {
            Max1=testSample1[sampleCount];

            sampleCount=0;


        }
    if(testSample1[sampleCount]<Min1)Min1=testSample1[sampleCount];
    what++;
    if(what==1000)
        {
        what=0;
        DataFreq = &B0;
        }
}

void B0(void)
{
    if(testSample1[sampleCount]>(Max1-1000))
    {
        if(what==0)sampleCount=0;
        if(what==4000)
            T1=sampleCount;
        DataFreq = &C0;
    }
    else
    {
        T1++;
        if(T1>10000)
        {
            Max1=0xFFFF;
            Min1=0x7FFF;
            DataFreq = &A0;
        }
    }
}
void C0(void)
{
    if(testSample1[sampleCount]<(Min1+1000))
    {
        what+=1000;
        DataFreq = &B0;

    }
    else
        {
            T1++;
            if(T1>10000)
            {
                Max1=0xFFFF;
                Min1=0x7FFF;
                DataFreq = &A0;
            }
        }
}

