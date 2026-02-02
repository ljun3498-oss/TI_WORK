//#############################################################################
//
// FILE:    dual_axis_f2837x_ram_lnk_cpu1.cmd
//
// TITLE:   Linker command file for CPU1 RAM configuration
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
// $
//#############################################################################

MEMORY
{
   /* BEGIN is used for the "boot to SARAM" bootloader mode   */
   BEGIN            : origin = 0x000000,   length = 0x000002
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

   /* GS0 is shared for IPC communication with CPU2 */
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

   CPU2TOCPU1RAM    : origin = 0x03F800,   length = 0x000400
   CPU1TOCPU2RAM    : origin = 0x03FC00,   length = 0x000400
}

SECTIONS
{
   codestart        : > BEGIN
   .text            : >> RAMGS0_IPC | RAMGS1 | RAMGS2 | RAMGS3, ALIGN(4)
   .cinit           : > RAMM0, ALIGN(4)
   .switch          : > RAMM0
   .reset           : > RESET, TYPE = DSECT
   .stack           : > RAMM1

#if defined(__TI_EABI__)
   .init_array      : >> RAMGS1 | RAMGS2 | RAMGS3, ALIGN(4)
   .bss             : > RAMLS0 | RAMLS1, ALIGN(4)
   .bss:output      : > RAMLS0 | RAMLS1
   .init_array      : > RAMM0
   .const           : > RAMLS0 | RAMLS1, ALIGN(4)
   .data            : > RAMLS0 | RAMLS1
   .sysmem          : > RAMLS0 | RAMLS1
#else
   .pinit           : >> RAMGS1 | RAMGS2 | RAMGS3, ALIGN(4)
   .ebss            : > RAMLS0 | RAMLS1, ALIGN(4)
   .econst          : > RAMLS0 | RAMLS1
   .esysmem         : > RAMLS0 | RAMLS1
#endif

   ramgs0 : > RAMGS0_IPC, type=NOINIT
   ramgs1 : > RAMGS1, type=NOINIT

   /* IPC shared memory sections */
   IPC_CPU1_TO_CPU2 > RAMGS0_IPC, type=NOINIT
   IPC_CPU2_TO_CPU1 > RAMGS0_IPC, type=NOINIT

   MSGRAM_CPU1_TO_CPU2 > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 > CPU2TOCPU1RAM, type=NOINIT

   /* SFRA specific sections */
   SFRA_F32_Data	: > RAMGS5, ALIGN = 64
   sfra_data    	: > RAMGS5

   .TI.ramfunc 	    : >> RAMGS1 | RAMGS2 | RAMGS3, ALIGN(8)
}

//===========================================================================
// End of file.
//===========================================================================

