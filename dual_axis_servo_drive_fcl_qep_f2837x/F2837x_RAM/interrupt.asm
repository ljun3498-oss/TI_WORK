;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/interrupt.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("__enable_interrupts")
	.dwattr $C$DW$1, DW_AT_linkage_name("__enable_interrupts")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("__disable_interrupts")
	.dwattr $C$DW$2, DW_AT_linkage_name("__disable_interrupts")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("__eallow")
	.dwattr $C$DW$3, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("__edis")
	.dwattr $C$DW$4, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwendtag $C$DW$4

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{80B96AAF-F967-437A-A5B4-83B91E891651} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{9A190B99-A2C5-4177-8B55-F3BE7857D594} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{6AB2C68F-E8D2-4342-B469-6478D2F213E4} 
	.sect	".text:Interrupt_nmiHandler"
	.retain
	.retainrefs
	.global	||Interrupt_nmiHandler||

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("Interrupt_nmiHandler")
	.dwattr $C$DW$5, DW_AT_low_pc(||Interrupt_nmiHandler||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("Interrupt_nmiHandler")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0xee)
	.dwattr $C$DW$5, DW_AT_decl_column(0x12)
	.dwattr $C$DW$5, DW_AT_TI_interrupt
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../src_driver/interrupt.c",line 239,column 1,is_stmt,address ||Interrupt_nmiHandler||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_nmiHandler||

;***************************************************************
;* FNAME: Interrupt_nmiHandler          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||Interrupt_nmiHandler||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 6
	.dwcfi	cfa_offset, -6
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
 ESTOP0
||$C$L1||:    
	.dwpsn	file "../src_driver/interrupt.c",line 249,column 5,is_stmt,isa 0
        B         ||$C$L1||,UNC         ; [CPU_ALU] |249| 
        ; branch occurs ; [] |249| 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0xfa)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:Interrupt_initVectorTable"
	.clink
	.global	||Interrupt_initVectorTable||

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$6, DW_AT_low_pc(||Interrupt_initVectorTable||)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("Interrupt_initVectorTable")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x102)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/interrupt.c",line 259,column 1,is_stmt,address ||Interrupt_initVectorTable||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_initVectorTable||

;***************************************************************
;* FNAME: Interrupt_initVectorTable     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Interrupt_initVectorTable||:
;* AR4   assigned to $O$K6
;* AL    assigned to $O$U10
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
; Peeled loop iterations for unrolled loop:
	.dwpsn	file "../src_driver/interrupt.c",line 262,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |262| 
        MOVB      XAR6,#109             ; [CPU_ALU] 
        MOV       AL,#3334              ; [CPU_ALU] 
        MOVL      XAR4,#||Interrupt_defaultHandler|| ; [CPU_ARAU] 
	.dwpsn	file "../src_driver/interrupt.c",line 268,column 17,is_stmt,isa 0
        RPTB      ||$C$L3||,AR6         ; [CPU_ALU] |268| 
        ; repeat block starts ; [] 
||$C$L2||:    
	.dwpsn	file "../src_driver/interrupt.c",line 270,column 9,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |270| 
        ADDB      AL,#2                 ; [CPU_ALU] |270| 
        MOVZ      AR5,AL                ; [CPU_ALU] |270| 
	.dwpsn	file "../src_driver/interrupt.c",line 268,column 27,is_stmt,isa 0
        ADDB      AL,#2                 ; [CPU_ALU] |268| 
	.dwpsn	file "../src_driver/interrupt.c",line 270,column 9,is_stmt,isa 0
        MOVL      *+XAR7[0],XAR4        ; [CPU_FPU] |270| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_FPU] |270| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ; repeat block ends ; [] 
||$C$L3||:    
        MOVZ      AR7,AL                ; [CPU_ALU] |270| 
	.dwpsn	file "../src_driver/interrupt.c",line 277,column 5,is_stmt,isa 0
        MOVL      XAR6,#||Interrupt_nmiHandler|| ; [CPU_ARAU] |277| 
	.dwpsn	file "../src_driver/interrupt.c",line 279,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Interrupt_illegalOperationHandler|| ; [CPU_ARAU] |279| 
	.dwpsn	file "../src_driver/interrupt.c",line 270,column 9,is_stmt,isa 0
        MOVL      *+XAR7[0],XAR4        ; [CPU_ALU] |270| 
	.dwpsn	file "../src_driver/interrupt.c",line 277,column 5,is_stmt,isa 0
        MOV32     *(0:0x0d24),XAR6      ; [CPU_FPU] |277| 
	.dwpsn	file "../src_driver/interrupt.c",line 279,column 5,is_stmt,isa 0
        MOV32     *(0:0x0d26),XAR5      ; [CPU_FPU] |279| 
	.dwpsn	file "../src_driver/interrupt.c",line 282,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |282| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x11b)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:Interrupt_initModule"
	.clink
	.global	||Interrupt_initModule||

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$8, DW_AT_low_pc(||Interrupt_initModule||)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_linkage_name("Interrupt_initModule")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/interrupt.c",line 124,column 1,is_stmt,address ||Interrupt_initModule||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_initModule||

;***************************************************************
;* FNAME: Interrupt_initModule          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Interrupt_initModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/interrupt.h",line 218,column 5,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |218| 
        SETC      INTM, DBGM            ; [CPU_ALU] |218| 
        MOV       AL,*--SP              ; [CPU_ALU] |218| 
	.dwpsn	file "../src_driver/interrupt.c",line 129,column 5,is_stmt,isa 0
        AND       IER,#0x0000           ; [CPU_ALU] |129| 
	.dwpsn	file "../src_driver/interrupt.c",line 130,column 5,is_stmt,isa 0
        AND       IFR,#0x0000           ; [CPU_ALU] |130| 
	.dwpsn	file "../src_driver/interrupt.c",line 136,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |136| 
	.dwpsn	file "../src_driver/interrupt.c",line 135,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |135| 
	.dwpsn	file "../src_driver/interrupt.c",line 137,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |137| 
	.dwpsn	file "../src_driver/interrupt.c",line 135,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce2),AL        ; [CPU_ALU] |135| 
	.dwpsn	file "../src_driver/interrupt.c",line 136,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce4),AR6       ; [CPU_ALU] |136| 
	.dwpsn	file "../src_driver/interrupt.c",line 159,column 5,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |159| 
	.dwpsn	file "../src_driver/interrupt.c",line 137,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce6),AH        ; [CPU_ALU] |137| 
	.dwpsn	file "../src_driver/interrupt.c",line 138,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce8),AL        ; [CPU_ALU] |138| 
	.dwpsn	file "../src_driver/interrupt.c",line 139,column 5,is_stmt,isa 0
        MOV       *(0:0x0cea),AH        ; [CPU_ALU] |139| 
	.dwpsn	file "../src_driver/interrupt.c",line 140,column 5,is_stmt,isa 0
        MOV       *(0:0x0cec),AR6       ; [CPU_ALU] |140| 
	.dwpsn	file "../src_driver/interrupt.c",line 141,column 5,is_stmt,isa 0
        MOV       *(0:0x0cee),AL        ; [CPU_ALU] |141| 
	.dwpsn	file "../src_driver/interrupt.c",line 142,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf0),AH        ; [CPU_ALU] |142| 
	.dwpsn	file "../src_driver/interrupt.c",line 143,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf2),AL        ; [CPU_ALU] |143| 
	.dwpsn	file "../src_driver/interrupt.c",line 144,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf4),AR6       ; [CPU_ALU] |144| 
	.dwpsn	file "../src_driver/interrupt.c",line 145,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf6),AH        ; [CPU_ALU] |145| 
	.dwpsn	file "../src_driver/interrupt.c",line 146,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf8),AL        ; [CPU_ALU] |146| 
	.dwpsn	file "../src_driver/interrupt.c",line 151,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce3),AH        ; [CPU_ALU] |151| 
	.dwpsn	file "../src_driver/interrupt.c",line 152,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce5),AR6       ; [CPU_ALU] |152| 
	.dwpsn	file "../src_driver/interrupt.c",line 153,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce7),AL        ; [CPU_ALU] |153| 
	.dwpsn	file "../src_driver/interrupt.c",line 154,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce9),AH        ; [CPU_ALU] |154| 
	.dwpsn	file "../src_driver/interrupt.c",line 155,column 5,is_stmt,isa 0
        MOV       *(0:0x0ceb),AL        ; [CPU_ALU] |155| 
	.dwpsn	file "../src_driver/interrupt.c",line 156,column 5,is_stmt,isa 0
        MOV       *(0:0x0ced),AR6       ; [CPU_ALU] |156| 
	.dwpsn	file "../src_driver/interrupt.c",line 157,column 5,is_stmt,isa 0
        MOV       *(0:0x0cef),AH        ; [CPU_ALU] |157| 
	.dwpsn	file "../src_driver/interrupt.c",line 158,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf1),AL        ; [CPU_ALU] |158| 
	.dwpsn	file "../src_driver/interrupt.c",line 159,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf3),AR7       ; [CPU_ALU] |159| 
	.dwpsn	file "../src_driver/interrupt.c",line 160,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf5),AR6       ; [CPU_ALU] |160| 
	.dwpsn	file "../src_driver/interrupt.c",line 161,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf7),AH        ; [CPU_ALU] |161| 
	.dwpsn	file "../src_driver/interrupt.c",line 162,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf9),AL        ; [CPU_ALU] |162| 
	.dwpsn	file "../src_driver/interrupt.c",line 167,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0ce0)        ; [CPU_ALU] |167| 
        ORB       AL,#0x01              ; [CPU_ALU] |167| 
        MOV       *(0:0x0ce0),AL        ; [CPU_ALU] |167| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text:Interrupt_illegalOperationHandler"
	.retain
	.retainrefs
	.global	||Interrupt_illegalOperationHandler||

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("Interrupt_illegalOperationHandler")
	.dwattr $C$DW$10, DW_AT_low_pc(||Interrupt_illegalOperationHandler||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("Interrupt_illegalOperationHandler")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0xda)
	.dwattr $C$DW$10, DW_AT_decl_column(0x12)
	.dwattr $C$DW$10, DW_AT_TI_interrupt
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../src_driver/interrupt.c",line 219,column 1,is_stmt,address ||Interrupt_illegalOperationHandler||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_illegalOperationHandler||

;***************************************************************
;* FNAME: Interrupt_illegalOperationHandler FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||Interrupt_illegalOperationHandler||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 6
	.dwcfi	cfa_offset, -6
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
 ESTOP0
||$C$L4||:    
	.dwpsn	file "../src_driver/interrupt.c",line 228,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |228| 
        ; branch occurs ; [] |228| 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xe5)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:Interrupt_enable"
	.clink
	.global	||Interrupt_enable||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$11, DW_AT_low_pc(||Interrupt_enable||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("Interrupt_enable")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x123)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/interrupt.c",line 292,column 1,is_stmt,address ||Interrupt_enable||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_enable||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("interruptNumber")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Interrupt_enable              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Interrupt_enable||:
;* AR6   assigned to $O$C1
;* PL    assigned to interruptNumber
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("interruptNumber")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to intsDisabled
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("intsDisabled")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |292| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/interrupt.h",line 218,column 5,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |218| 
        SETC      INTM, DBGM            ; [CPU_ALU] |218| 
        MOV       AL,*--SP              ; [CPU_ALU] |218| 
        ANDB      AL,#0x01              ; [CPU_ALU] |218| 
        MOV       AH,PH                 ; [CPU_FPU] |218| 
        MOVZ      AR7,AL                ; [CPU_ALU] |218| 
	.dwpsn	file "../src_driver/interrupt.c",line 308,column 5,is_stmt,isa 0
        CMPB      AH,#32                ; [CPU_ALU] |308| 
        B         ||$C$L6||,HIS         ; [CPU_ALU] |308| 
        ; branchcc occurs ; [] |308| 
	.dwpsn	file "../src_driver/interrupt.c",line 327,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |327| 
        CMPB      AH,#13                ; [CPU_ALU] |327| 
        B         ||$C$L5||,LO          ; [CPU_ALU] |327| 
        ; branchcc occurs ; [] |327| 
        CMPB      AH,#16                ; [CPU_ALU] |327| 
        MOVB      AL,#1,LOS             ; [CPU_ALU] |327| 
||$C$L5||:    
        ADDB      AH,#-1                ; [CPU_ALU] |327| 
        MOV       T,AH                  ; [CPU_ALU] |327| 
        LSL       AL,T                  ; [CPU_ALU] |327| 
        MOV       AH,IER                ; [CPU_ALU] |327| 
        OR        AL,AH                 ; [CPU_ALU] |327| 
        MOV       IER,AL                ; [CPU_ALU] |327| 
	.dwpsn	file "../src_driver/interrupt.c",line 339,column 5,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |339| 
        ; branch occurs ; [] |339| 
||$C$L6||:    
        MOVL      ACC,P                 ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 313,column 9,is_stmt,isa 0
        SFR       ACC,8                 ; [CPU_ALU] |313| 
        ANDB      AL,#0xff              ; [CPU_ALU] |313| 
        ADDB      AL,#-1                ; [CPU_ALU] |313| 
        MOVZ      AR6,AL                ; [CPU_ALU] |313| 
        MOV       AH,#1649              ; [CPU_ALU] |313| 
        ADD       AH,AR6                ; [CPU_ALU] |313| 
        MOV       ACC,AH << #1          ; [CPU_ALU] |313| 
        MOVZ      AR4,AL                ; [CPU_ALU] |313| 
        MOV       AL,PL                 ; [CPU_ALU] |313| 
	.dwpsn	file "../src_driver/interrupt.c",line 319,column 9,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |319| 
	.dwpsn	file "../src_driver/interrupt.c",line 313,column 9,is_stmt,isa 0
        ANDB      AL,#0xff              ; [CPU_ALU] |313| 
        ADDB      AL,#-1                ; [CPU_ALU] |313| 
        MOV       T,AL                  ; [CPU_ALU] |313| 
        MOVB      AL,#1                 ; [CPU_ALU] |313| 
        LSL       AL,T                  ; [CPU_ALU] |313| 
	.dwpsn	file "../src_driver/interrupt.c",line 319,column 9,is_stmt,isa 0
        MOV       T,AR6                 ; [CPU_ALU] |319| 
	.dwpsn	file "../src_driver/interrupt.c",line 313,column 9,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |313| 
	.dwpsn	file "../src_driver/interrupt.c",line 319,column 9,is_stmt,isa 0
        LSL       AH,T                  ; [CPU_ALU] |319| 
        MOV       AL,IER                ; [CPU_ALU] |319| 
        OR        AH,AL                 ; [CPU_ALU] |319| 
        MOV       IER,AH                ; [CPU_ALU] |319| 
||$C$L7||:    
        MOV       AL,AR7                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 339,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |339| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/interrupt.h",line 198,column 5,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |198| 
        CLRC      INTM, DBGM            ; [CPU_ALU] |198| 
        MOV       AL,*--SP              ; [CPU_ALU] |198| 
||$C$L8||:    
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:Interrupt_clearIFR"
	.clink

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("Interrupt_clearIFR")
	.dwattr $C$DW$16, DW_AT_low_pc(||Interrupt_clearIFR||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("Interrupt_clearIFR")
	.dwattr $C$DW$16, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x38)
	.dwattr $C$DW$16, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/interrupt.c",line 57,column 1,is_stmt,address ||Interrupt_clearIFR||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_clearIFR||
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("group")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Interrupt_clearIFR            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Interrupt_clearIFR||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/interrupt.c",line 58,column 5,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_ALU] |58| 
        MOVZ      AR6,AL                ; [CPU_FPU] |58| 
        B         ||$C$L10||,GT         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#128               ; [CPU_ALU] |58| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#8                 ; [CPU_ALU] |58| 
        B         ||$C$L9||,GT          ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#8                 ; [CPU_ALU] |58| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |58| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#32768            ; [CPU_ALU] |58| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |58| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOV       AL,AR6                ; [CPU_ALU] 
        CMPB      AL,#1                 ; [CPU_ALU] |58| 
        B         ||$C$L27||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#2                 ; [CPU_ALU] |58| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#4                 ; [CPU_ALU] |58| 
        B         ||$C$L25||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwcfi	remember_state
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L9||:    
        CMPB      AL,#16                ; [CPU_ALU] |58| 
        B         ||$C$L23||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#32                ; [CPU_ALU] |58| 
        B         ||$C$L22||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMPB      AL,#64                ; [CPU_ALU] |58| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwcfi	remember_state
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L10||:    
        CMP       AR6,#2048             ; [CPU_ALU] |58| 
        B         ||$C$L11||,GT         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        CMP       AR6,#2048             ; [CPU_ALU] |58| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#256              ; [CPU_ALU] |58| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |58| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#512              ; [CPU_ALU] |58| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |58| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#1024             ; [CPU_ALU] |58| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |58| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwcfi	remember_state
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L11||:    
        MOVZ      AR7,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#4096             ; [CPU_ALU] |58| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |58| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#8192             ; [CPU_ALU] |58| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |58| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |58| 
        MOV       ACC,#16384            ; [CPU_ALU] |58| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |58| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwcfi	remember_state
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L12||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 106,column 13,is_stmt,isa 0
        AND       IFR,#0x7fff           ; [CPU_ALU] |106| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L13||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 103,column 13,is_stmt,isa 0
        AND       IFR,#0xbfff           ; [CPU_ALU] |103| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L14||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 100,column 13,is_stmt,isa 0
        AND       IFR,#0xdfff           ; [CPU_ALU] |100| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 97,column 13,is_stmt,isa 0
        AND       IFR,#0xefff           ; [CPU_ALU] |97| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L16||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 94,column 13,is_stmt,isa 0
        AND       IFR,#0xf7ff           ; [CPU_ALU] |94| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L17||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 91,column 13,is_stmt,isa 0
        AND       IFR,#0xfbff           ; [CPU_ALU] |91| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 88,column 13,is_stmt,isa 0
        AND       IFR,#0xfdff           ; [CPU_ALU] |88| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L19||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 85,column 13,is_stmt,isa 0
        AND       IFR,#0xfeff           ; [CPU_ALU] |85| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L20||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 82,column 13,is_stmt,isa 0
        AND       IFR,#0xff7f           ; [CPU_ALU] |82| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L21||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 79,column 13,is_stmt,isa 0
        AND       IFR,#0xffbf           ; [CPU_ALU] |79| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L22||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 76,column 13,is_stmt,isa 0
        AND       IFR,#0xffdf           ; [CPU_ALU] |76| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L23||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 73,column 13,is_stmt,isa 0
        AND       IFR,#0xffef           ; [CPU_ALU] |73| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L24||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 70,column 13,is_stmt,isa 0
        AND       IFR,#0xfff7           ; [CPU_ALU] |70| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L25||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 67,column 13,is_stmt,isa 0
        AND       IFR,#0xfffb           ; [CPU_ALU] |67| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L26||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/interrupt.c",line 64,column 13,is_stmt,isa 0
        AND       IFR,#0xfffd           ; [CPU_ALU] |64| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L27||:    
	.dwpsn	file "../src_driver/interrupt.c",line 61,column 13,is_stmt,isa 0
        AND       IFR,#0xfffe           ; [CPU_ALU] |61| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:Interrupt_disable"
	.clink
	.global	||Interrupt_disable||

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("Interrupt_disable")
	.dwattr $C$DW$38, DW_AT_low_pc(||Interrupt_disable||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("Interrupt_disable")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/interrupt.c",line 352,column 1,is_stmt,address ||Interrupt_disable||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_disable||
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("interruptNumber")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Interrupt_disable             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Interrupt_disable||:
;* PL    assigned to $O$C1
;* AR6   assigned to $O$C2
;* AL    assigned to $O$C3
;* PL    assigned to interruptNumber
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("interruptNumber")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg2]

;* AR5   assigned to intsDisabled
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("intsDisabled")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |352| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/interrupt.h",line 218,column 5,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |218| 
        SETC      INTM, DBGM            ; [CPU_ALU] |218| 
        MOV       AL,*--SP              ; [CPU_ALU] |218| 
        ANDB      AL,#0x01              ; [CPU_ALU] |218| 
        MOV       AH,PH                 ; [CPU_FPU] |218| 
        MOVZ      AR5,AL                ; [CPU_ALU] |218| 
	.dwpsn	file "../src_driver/interrupt.c",line 365,column 5,is_stmt,isa 0
        CMPB      AH,#32                ; [CPU_ALU] |365| 
        B         ||$C$L28||,HIS        ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
	.dwpsn	file "../src_driver/interrupt.c",line 396,column 10,is_stmt,isa 0
        CMPB      AH,#13                ; [CPU_ALU] |396| 
        B         ||$C$L29||,LO         ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
        CMPB      AH,#16                ; [CPU_ALU] |396| 
        B         ||$C$L29||,HI         ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
	.dwpsn	file "../src_driver/interrupt.c",line 398,column 9,is_stmt,isa 0
        MOV       AL,PH                 ; [CPU_ALU] |398| 
        ADDB      AL,#-1                ; [CPU_ALU] |398| 
        MOV       T,AL                  ; [CPU_ALU] |398| 
        MOVB      AL,#1                 ; [CPU_ALU] |398| 
        LSL       AL,T                  ; [CPU_ALU] |398| 
        MOV       AR6,IER               ; [CPU_ALU] |398| 
        MOV       AH,AL                 ; [CPU_ALU] |398| 
        NOT       AH                    ; [CPU_ALU] |398| 
        AND       AH,AR6                ; [CPU_ALU] |398| 
        MOV       IER,AH                ; [CPU_ALU] |398| 
 NOP
 NOP
 NOP
 NOP
 NOP
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 409,column 9,is_stmt,isa 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("Interrupt_clearIFR")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||Interrupt_clearIFR|| ; [CPU_ALU] |409| 
        ; call occurs [#||Interrupt_clearIFR||] ; [] |409| 
	.dwpsn	file "../src_driver/interrupt.c",line 421,column 5,is_stmt,isa 0
        B         ||$C$L29||,UNC        ; [CPU_ALU] |421| 
        ; branch occurs ; [] |421| 
||$C$L28||:    
        MOVL      ACC,P                 ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 373,column 9,is_stmt,isa 0
        SFR       ACC,8                 ; [CPU_ALU] |373| 
        ANDB      AL,#0xff              ; [CPU_ALU] |373| 
        ADDB      AL,#-1                ; [CPU_ALU] |373| 
        MOVZ      AR6,AL                ; [CPU_ALU] |373| 
        MOV       AH,#1649              ; [CPU_ALU] |373| 
        ADD       AH,AR6                ; [CPU_ALU] |373| 
        MOV       ACC,AH << #1          ; [CPU_ALU] |373| 
        MOVZ      AR4,AL                ; [CPU_ALU] |373| 
        MOV       AL,PL                 ; [CPU_ALU] |373| 
        ANDB      AL,#0xff              ; [CPU_ALU] |373| 
        ADDB      AL,#-1                ; [CPU_ALU] |373| 
        MOV       T,AL                  ; [CPU_ALU] |373| 
        MOVB      AL,#1                 ; [CPU_ALU] |373| 
        LSL       AL,T                  ; [CPU_ALU] |373| 
        NOT       AL                    ; [CPU_ALU] |373| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |373| 
 NOP
 NOP
 NOP
 NOP
 NOP
	.dwpsn	file "../src_driver/interrupt.c",line 385,column 9,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |385| 
        SPM       #0                    ; [CPU_ALU] 
        MOV       T,AR6                 ; [CPU_ALU] |385| 
        LSL       AH,T                  ; [CPU_ALU] |385| 
        MOV       PL,AH                 ; [CPU_ALU] |385| 
        MOV       AL,PL                 ; [CPU_ALU] |385| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("Interrupt_clearIFR")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #||Interrupt_clearIFR|| ; [CPU_ALU] |385| 
        ; call occurs [#||Interrupt_clearIFR||] ; [] |385| 
	.dwpsn	file "../src_driver/interrupt.c",line 390,column 9,is_stmt,isa 0
        MOV       *(0:0x0ce1),PL        ; [CPU_ALU] |390| 
||$C$L29||:    
        MOV       AL,AR5                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 421,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |421| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |421| 
        ; branchcc occurs ; [] |421| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/interrupt.h",line 198,column 5,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |198| 
        CLRC      INTM, DBGM            ; [CPU_ALU] |198| 
        MOV       AL,*--SP              ; [CPU_ALU] |198| 
||$C$L30||:    
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x1a9)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:Interrupt_defaultHandler"
	.retain
	.retainrefs
	.global	||Interrupt_defaultHandler||

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("Interrupt_defaultHandler")
	.dwattr $C$DW$45, DW_AT_low_pc(||Interrupt_defaultHandler||)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_linkage_name("Interrupt_defaultHandler")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("../src_driver/interrupt.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$45, DW_AT_decl_column(0x12)
	.dwattr $C$DW$45, DW_AT_TI_interrupt
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../src_driver/interrupt.c",line 179,column 1,is_stmt,address ||Interrupt_defaultHandler||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_defaultHandler||

;***************************************************************
;* FNAME: Interrupt_defaultHandler      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||Interrupt_defaultHandler||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 6
	.dwcfi	cfa_offset, -6
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/interrupt.c",line 188,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0ce0)        ; [CPU_ALU] |188| 
 ESTOP0
||$C$L31||:    
	.dwpsn	file "../src_driver/interrupt.c",line 208,column 5,is_stmt,isa 0
        B         ||$C$L31||,UNC        ; [CPU_ALU] |208| 
        ; branch occurs ; [] |208| 
	.dwattr $C$DW$45, DW_AT_TI_end_file("../src_driver/interrupt.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0xd1)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45


;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(0)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(0)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$4	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$4
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$4


$C$DW$TU$5	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$5
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$5


$C$DW$TU$6	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$6
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$6


$C$DW$TU$7	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$7
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$7


$C$DW$TU$8	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$8
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$8


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$10


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$26


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$46	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$26)

$C$DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$46)

	.dwendtag $C$DW$TU$38


$C$DW$TU$14	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$14
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$14


$C$DW$TU$15	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$15
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$15


$C$DW$TU$16	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$16
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$16


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$39, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$39, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$39

