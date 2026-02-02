//#############################################################################
//
// FILE:    dual_axis_f2837x_flash_lnk_cpu2.cmd
//
// TITLE:   Linker command file for CPU2 FLASH configuration
//
//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
// $
//#############################################################################

#ifdef CLA_C
CLA_SCRATCHPAD_SIZE = 0x100;
--undef_sym=__cla_scratchpad_end
--undef_sym=__cla_scratchpad_start
#endif //CLA_C

MEMORY
{
   BEGIN            : origin = 0x080000, length = 0x000002
   BOOT_RSVD        : origin = 0x000002, length = 0x000121

   RAMM0           	: origin = 0x000123, length = 0x0002DD
   RAMM1            : origin = 0x000400, length = 0x0003F8

   RAMD0           	: origin = 0x00B000, length = 0x000800
   RAMD1            : origin = 0x00B800, length = 0x000800

   RAMLS0          	: origin = 0x008000, length = 0x000800
   RAMLS1          	: origin = 0x008800, length = 0x000800
   RAMLS2      		: origin = 0x009000, length = 0x000800
   RAMLS3      		: origin = 0x009800, length = 0x000800
   RAMLS4      	    : origin = 0x00A000, length = 0x000800
   RAMLS5           : origin = 0x00A800, length = 0x000800

   RAMGS0_IPC       : origin = 0x00C000, length = 0x001000
   RAMGS1           : origin = 0x00D000, length = 0x001000
   RAMGS2           : origin = 0x00E000, length = 0x001000
   RAMGS3           : origin = 0x00F000, length = 0x001000
   RAMGS4           : origin = 0x010000, length = 0x001000
   RAMGS5           : origin = 0x011000, length = 0x001000
   RAMGS6           : origin = 0x012000, length = 0x001000
   RAMGS7           : origin = 0x013000, length = 0x001000
   RAMGS8           : origin = 0x014000, length = 0x001000
   RAMGS9           : origin = 0x015000, length = 0x001000
   RAMGS10          : origin = 0x016000, length = 0x001000
   RAMGS11          : origin = 0x017000, length = 0x001000
   RAMGS12          : origin = 0x018000, length = 0x001000
   RAMGS13          : origin = 0x019000, length = 0x001000
   RAMGS14          : origin = 0x01A000, length = 0x001000
   RAMGS15          : origin = 0x01B000, length = 0x000FF8

   RESET           	: origin = 0x3FFFC0, length = 0x000002

   FLASHD           : origin = 0x088000, length = 0x002000
   FLASHC           : origin = 0x08A000, length = 0x002000
   FLASHA           : origin = 0x08C000, length = 0x002000
   FLASHB           : origin = 0x08E000, length = 0x002000

   CPU2TOCPU1RAM    : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM    : origin = 0x03FC00, length = 0x000400

   CLA1_MSGRAMLOW   : origin = 0x001480, length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500, length = 0x000080
}

SECTIONS
{
   codestart        : > BEGIN
   .text            : >> FLASHD | FLASHC | FLASHA | FLASHB, ALIGN(4)
   .cinit           : > FLASHD, ALIGN(4)
   .switch          : > FLASHD
   .reset           : > RESET, TYPE = DSECT
   .stack           : > RAMM1

#if defined(__TI_EABI__)
   .init_array      : >> FLASHD | FLASHC, ALIGN(4)
   .bss             : > RAMLS0 | RAMLS1, ALIGN(4)
   .bss:output      : > RAMLS0 | RAMLS1
   .const           : > FLASHD | FLASHC, ALIGN(4)
   .data            : > RAMLS0 | RAMLS1
   .sysmem          : > RAMLS0 | RAMLS1
#else
   .pinit           : >> FLASHD | FLASHC, ALIGN(4)
   .ebss            : > RAMLS0 | RAMLS1, ALIGN(4)
   .econst          : > FLASHD | FLASHC
   .esysmem         : > RAMLS0 | RAMLS1
#endif

   IPC_CPU1_TO_CPU2 > RAMGS0_IPC, type=NOINIT
   IPC_CPU2_TO_CPU1 > RAMGS0_IPC, type=NOINIT

   MSGRAM_CPU1_TO_CPU2 > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 > CPU2TOCPU1RAM, type=NOINIT

#if defined(__TI_EABI__)
   Cla1Prog         :   LOAD = FLASHD,
                        RUN = RAMLS4 | RAMLS5,
                        LOAD_START(Cla1funcsLoadStart),
                        LOAD_END(Cla1funcsLoadEnd),
                        RUN_START(Cla1funcsRunStart),
                        LOAD_SIZE(Cla1funcsLoadSize),
                        ALIGN(8)
#else
   Cla1Prog         :   LOAD = FLASHD,
                        RUN = RAMLS4 | RAMLS5,
                        LOAD_START(_Cla1funcsLoadStart),
                        LOAD_END(_Cla1funcsLoadEnd),
                        RUN_START(_Cla1funcsRunStart),
                        LOAD_SIZE(_Cla1funcsLoadSize),
                        ALIGN(8)
#endif

   ClaData			: > RAMLS3, ALIGN(4)
   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW,  type=NOINIT
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH, type=NOINIT

#ifdef CLA_C
   CLAscratch       :
                     { *.obj(CLAscratch)
                     . += CLA_SCRATCHPAD_SIZE;
                     *.obj(CLAscratch_end) } >  RAMLS2
   .scratchpad      : > RAMLS2
   .bss_cla		    : > RAMLS2

#if defined(__TI_EABI__)
   .const_cla       :   LOAD = FLASHD,
                        RUN = RAMLS4,
                        RUN_START(Cla1ConstRunStart),
                        LOAD_START(Cla1ConstLoadStart),
                        LOAD_SIZE(Cla1ConstLoadSize),
                        ALIGN(8)
#else
   .const_cla       :   LOAD = FLASHD,
                        RUN = RAMLS4,
                        RUN_START(_Cla1ConstRunStart),
                        LOAD_START(_Cla1ConstLoadStart),
                        LOAD_SIZE(_Cla1ConstLoadSize),
                        ALIGN(8)
#endif
#endif //CLA_C

#if defined(__TI_EABI__)
   .TI.ramfunc : {} LOAD = FLASHC,
                    RUN = RAMGS1,
                    LOAD_START(RamfuncsLoadStart),
                    LOAD_SIZE(RamfuncsLoadSize),
                    LOAD_END(RamfuncsLoadEnd),
                    RUN_START(RamfuncsRunStart),
                    RUN_SIZE(RamfuncsRunSize),
                    RUN_END(RamfuncsRunEnd),
                    ALIGN(8)
#else
   .TI.ramfunc : {} LOAD = FLASHC,
                    RUN = RAMGS1,
                    LOAD_START(_RamfuncsLoadStart),
                    LOAD_SIZE(_RamfuncsLoadSize),
                    LOAD_END(_RamfuncsLoadEnd),
                    RUN_START(_RamfuncsRunStart),
                    RUN_SIZE(_RamfuncsRunSize),
                    RUN_END(_RamfuncsRunEnd),
                    ALIGN(8)
#endif
}

//===========================================================================
// End of file.
//===========================================================================

