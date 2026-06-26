
MEMORY
{
PAGE 0 :
   /* BEGIN is used for the "boot to SARAM" bootloader mode   */

   BEGIN           	: origin = 0x000000, length = 0x000002
   RAMM0           	: origin = 0x0000A2, length = 0x00035E
   RAMD0           	: origin = 0x00B000, length = 0x000800
   RAMLS0          : origin = 0x008000, length = 0x000800
   RAMLS1          	: origin = 0x008800, length = 0x000800
   RAMLS2      		: origin = 0x009000, length = 0x000800
   RAMLS3      		: origin = 0x009800, length = 0x000800
   RAMLS4      		: origin = 0x00A000, length = 0x000800
   RAMGS0          : origin = 0x00C000, length = 0x001000
   RAMGS1          : origin = 0x00D000, length = 0x001000
   RAMGS2          : origin = 0x00E000, length = 0x001000
   RAMGS3          : origin = 0x00F000, length = 0x001000
   RAMGS4          : origin = 0x010000, length = 0x001000
   RAMGS5          : origin = 0x011000, length = 0x001000
   RAMGS6_TO_10    : origin = 0x012000, length = 0x005000
   RESET           : origin = 0x3FFFC0, length = 0x000002

   /* Flash sectors */
   FLASHA           : origin = 0x080002, length = 0x001FFE	/* on-chip Flash */
   FLASHB           : origin = 0x082000, length = 0x002000	/* on-chip Flash */
   FLASHC           : origin = 0x084000, length = 0x002000	/* on-chip Flash */
   FLASHD           : origin = 0x086000, length = 0x002000	/* on-chip Flash */
   FLASHE           : origin = 0x088000, length = 0x008000	/* on-chip Flash */
   FLASHF           : origin = 0x090000, length = 0x008000	/* on-chip Flash */
   FLASHG           : origin = 0x098000, length = 0x008000	/* on-chip Flash */
   FLASHH           : origin = 0x0A0000, length = 0x008000	/* on-chip Flash */
   FLASHI           : origin = 0x0A8000, length = 0x008000	/* on-chip Flash */
   FLASHJ           : origin = 0x0B0000, length = 0x008000	/* on-chip Flash */
   FLASHK           : origin = 0x0B8000, length = 0x002000	/* on-chip Flash */
   FLASHL           : origin = 0x0BA000, length = 0x002000	/* on-chip Flash */
   FLASHM           : origin = 0x0BC000, length = 0x002000	/* on-chip Flash */
   FLASHN           : origin = 0x0BE000, length = 0x001FF0	/* on-chip Flash */

//   FLASHN_RSVD     : origin = 0x0BFFF0, length = 0x000010    /* Reserve and do not use for code as per the errata advisory "Memory: Prefetching Beyond Valid Memory" */


PAGE 1 :

   BOOT_RSVD       : origin = 0x000002, length = 0x0000A0     /* Part of M0, BOOT rom will use this for stack */
   RAMM1           : origin = 0x000400, length = 0x0003F8     /* on-chip RAM block M1 */
//   RAMM1_RSVD      : origin = 0x0007F8, length = 0x000008     /* Reserve and do not use for code as per the errata advisory "Memory: Prefetching Beyond Valid Memory" */
   RAMD1           : origin = 0x00B800, length = 0x000800

   RAMLS5      : origin = 0x00A800, length = 0x000800

   RAMGS11_TO_14  : origin = 0x017000, length = 0x004000

   CANA_MSG_RAM     : origin = 0x049000, length = 0x000800
   CANB_MSG_RAM     : origin = 0x04B000, length = 0x000800

   CPU2TOCPU1RAM   : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM   : origin = 0x03FC00, length = 0x000400
}


SECTIONS
{
   codestart        : > BEGIN,     PAGE = 0
   .text            : > RAMGS6_TO_10, PAGE = 0, ALIGN(4)
   .cinit           : > RAMM0,     PAGE = 0
   .switch          : > RAMM0,     PAGE = 0
   .reset           : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */
   .stack           : > RAMD1,     PAGE = 1

   /* CLA sections explicitly placed to avoid auto-created section warnings */
   Cla1Prog         : > RAMLS0,     PAGE = 0, ALIGN(4)
   ClaData          : > RAMLS1,     PAGE = 0, ALIGN(4)
   
#if defined(__TI_EABI__)
   .bss             : > RAMGS11_TO_14, PAGE = 1, ALIGN(4)
   .bss:output      : > RAMLS3,    PAGE = 0
   .init_array      : > RAMM0,     PAGE = 0
   .const           : > RAMGS11_TO_14, PAGE = 1, ALIGN(4)
   .data            : > RAMGS11_TO_14, PAGE = 1
   .sysmem          : > RAMGS11_TO_14, PAGE = 1
#else
   .pinit           : > RAMM0,     PAGE = 0
   .ebss            : > RAMGS11_TO_14, PAGE = 1
   .econst          : > RAMGS11_TO_14, PAGE = 1
   .esysmem         : > RAMGS11_TO_14, PAGE = 1
#endif

#ifdef __TI_COMPILER_VERSION__
   #if __TI_COMPILER_VERSION__ >= 15009000
   .TI.ramfunc : {} > RAMGS5, PAGE = 0, ALIGN(8)
   #else
   ramfuncs         : > RAMM0      PAGE = 0   
   #endif
#endif

   /* The following section definitions are required when using the IPC API Drivers */
    GROUP : > CPU2TOCPU1RAM, PAGE = 1
    {
        PUTBUFFER
        PUTWRITEIDX
        GETREADIDX
    }

    GROUP : > CPU1TOCPU2RAM, PAGE = 1
    {
        GETBUFFER :    TYPE = DSECT
        GETWRITEIDX :  TYPE = DSECT
        PUTREADIDX :   TYPE = DSECT
    }

      /* Newer driverlib IPC sections */
      MSGRAM_CPU1_TO_CPU2 : > CPU1TOCPU2RAM, type=NOINIT
      MSGRAM_CPU2_TO_CPU1 : > CPU2TOCPU1RAM, type=NOINIT
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
