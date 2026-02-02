//#############################################################################
//
// FILE:    dual_axis_f2837x_flash_lnk_cpu1.cmd
//
// TITLE:   Linker command file for CPU1 FLASH configuration
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
// $
//#############################################################################

MEMORY
{
   BEGIN            : origin = 0x080000,   length = 0x000002
   BOOT_RSVD        : origin = 0x000002,   length = 0x000121
   RAMM0           	: origin = 0x000123,   length = 0x0002DD
   RAMM1            : origin = 0x000400,   length = 0x0003F8

   RAMD0           	: origin = 0x00B000,   length = 0x000800
   RAMD1            : origin = 0x00B800,   length = 0x000800

   RAMLS0          	: origin = 0x008000,   length = 0x000800
   RAMLS1          	: origin = 0x008800,   length = 0x000800
   RAMLS2      		: origin = 0x009000,   length = 0x000800
   RAMLS3      		: origin = 0x009800,   length = 0x000800
   RAMLS4      	    : origin = 0x00A000,   length = 0x000800
   RAMLS5           : origin = 0x00A800,   length = 0x000800

   RAMGS0_IPC       : origin = 0x00C000,   length = 0x001000
   RAMGS1           : origin = 0x00D000,   length = 0x001000
   RAMGS2           : origin = 0x00E000,   length = 0x001000
   RAMGS3           : origin = 0x00F000,   length = 0x001000
   RAMGS4           : origin = 0x010000,   length = 0x001000
   RAMGS5           : origin = 0x011000,   length = 0x001000
   RAMGS6           : origin = 0x012000,   length = 0x001000
   RAMGS7           : origin = 0x013000,   length = 0x001000
   RAMGS8           : origin = 0x014000,   length = 0x001000
   RAMGS9           : origin = 0x015000,   length = 0x001000
   RAMGS10          : origin = 0x016000,   length = 0x001000
   RAMGS11          : origin = 0x017000,   length = 0x001000
   RAMGS12          : origin = 0x018000,   length = 0x001000
   RAMGS13          : origin = 0x019000,   length = 0x001000
   RAMGS14          : origin = 0x01A000,   length = 0x001000
   RAMGS15          : origin = 0x01B000,   length = 0x000FF8

   RESET           	: origin = 0x3FFFC0,   length = 0x000002

   FLASHN           : origin = 0x080002,   length = 0x001FFE
   FLASHM           : origin = 0x082000,   length = 0x002000
   FLASHL           : origin = 0x084000,   length = 0x002000
   FLASHK           : origin = 0x086000,   length = 0x002000
   FLASHJ           : origin = 0x088000,   length = 0x008000
   FLASHI           : origin = 0x090000,   length = 0x008000
   FLASHH           : origin = 0x098000,   length = 0x008000
   FLASHG           : origin = 0x0A0000,   length = 0x008000
   FLASHF           : origin = 0x0A8000,   length = 0x008000
   FLASHE           : origin = 0x0B0000,   length = 0x008000
   FLASHD           : origin = 0x0B8000,   length = 0x002000
   FLASHC           : origin = 0x0BA000,   length = 0x002000
   FLASHA           : origin = 0x0BE000,   length = 0x001FF0

   CPU2TOCPU1RAM    : origin = 0x03F800,   length = 0x000400
   CPU1TOCPU2RAM    : origin = 0x03FC00,   length = 0x000400
}

SECTIONS
{
   codestart        : > BEGIN
   .text            : >> FLASHD | FLASHC | FLASHA, ALIGN(4)
   .cinit           : > FLASHD, ALIGN(4)
   .switch          : > FLASHD
   .reset           : > RESET, TYPE = DSECT
   .stack           : > RAMM1

#if defined(__TI_EABI__)
   .init_array      : >> FLASHD | FLASHC, ALIGN(4)
   .bss             : > RAMLS0 | RAMLS1, ALIGN(4)
   .bss:output      : > RAMLS0 | RAMLS1
   .init_array      : > RAMM0
   .const           : > FLASHD | FLASHC, ALIGN(4)
   .data            : > RAMLS0 | RAMLS1
   .sysmem          : > RAMLS0 | RAMLS1
#else
   .pinit           : >> FLASHD | FLASHC, ALIGN(4)
   .ebss            : > RAMLS0 | RAMLS1, ALIGN(4)
   .econst          : > FLASHD | FLASHC
   .esysmem         : > RAMLS0 | RAMLS1
#endif

   ramgs0 : > RAMGS0_IPC, type=NOINIT
   ramgs1 : > RAMGS1, type=NOINIT

   IPC_CPU1_TO_CPU2 > RAMGS0_IPC, type=NOINIT
   IPC_CPU2_TO_CPU1 > RAMGS0_IPC, type=NOINIT

   MSGRAM_CPU1_TO_CPU2 > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 > CPU2TOCPU1RAM, type=NOINIT

   SFRA_F32_Data	: > RAMGS5, ALIGN = 64
   sfra_data    	: > RAMGS5

   .TI.ramfunc 	    : LOAD = FLASHD, RUN = RAMGS1, LOAD_START(RamfuncsLoadStart), LOAD_SIZE(RamfuncsLoadSize), LOAD_END(RamfuncsLoadEnd), RUN_START(RamfuncsRunStart), RUN_SIZE(RamfuncsRunSize), RUN_END(RamfuncsRunEnd), ALIGN(8)
}

//===========================================================================
// End of file.
//===========================================================================

