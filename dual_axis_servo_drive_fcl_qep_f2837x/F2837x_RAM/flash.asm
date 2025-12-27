;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/flash.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("__eallow")
	.dwattr $C$DW$1, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("__edis")
	.dwattr $C$DW$2, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwendtag $C$DW$2

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{18FB9308-8888-41AD-98EF-2E66D7A37A05} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{518D3AB9-80C2-42ED-8280-0AFDD8F62F2B} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{5E4051A4-75BF-4761-86A7-E41B080CD99E} 
	.sect	".TI.ramfunc:Flash_wakeFromLPM"
	.clink
	.global	||Flash_wakeFromLPM||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("Flash_wakeFromLPM")
	.dwattr $C$DW$3, DW_AT_low_pc(||Flash_wakeFromLPM||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("Flash_wakeFromLPM")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/flash.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/flash.c",line 160,column 1,is_stmt,address ||Flash_wakeFromLPM||,isa 0

	.dwfde $C$DW$CIE, ||Flash_wakeFromLPM||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("ctrlBase")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_wakeFromLPM             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Flash_wakeFromLPM||:
;* AR4   assigned to ctrlBase
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("ctrlBase")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |160| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 350,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |350| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 355,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |355| 
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        ANDB      AH,#0                 ; [CPU_ALU] |355| 
        ORB       AL,#0x03              ; [CPU_ALU] |355| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |355| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 393,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |393| 
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        ORB       AL,#0x01              ; [CPU_ALU] |393| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |393| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 396,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |396| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/flash.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xaf)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".TI.ramfunc:Flash_powerDown"
	.clink
	.global	||Flash_powerDown||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("Flash_powerDown")
	.dwattr $C$DW$7, DW_AT_low_pc(||Flash_powerDown||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("Flash_powerDown")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../src_driver/flash.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/flash.c",line 128,column 1,is_stmt,address ||Flash_powerDown||,isa 0

	.dwfde $C$DW$CIE, ||Flash_powerDown||
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("ctrlBase")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_powerDown               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Flash_powerDown||:
;* AR4   assigned to ctrlBase
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("ctrlBase")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |128| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 604,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |604| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 609,column 5,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |609| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |609| 
        AND       AL,#65280             ; [CPU_ALU] |609| 
        MOVB      XAR0,#30              ; [CPU_FPU] |609| 
        ORB       AL,#0x14              ; [CPU_ALU] |609| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |609| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 355,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |355| 
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        AND       AL,#65532             ; [CPU_ALU] |355| 
        ANDB      AH,#0                 ; [CPU_ALU] |355| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |355| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 393,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |393| 
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        AND       AL,#65534             ; [CPU_ALU] |393| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |393| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 396,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |396| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../src_driver/flash.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x94)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".TI.ramfunc:Flash_initModule"
	.clink
	.global	||Flash_initModule||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$11, DW_AT_low_pc(||Flash_initModule||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("Flash_initModule")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src_driver/flash.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/flash.c",line 61,column 1,is_stmt,address ||Flash_initModule||,isa 0

	.dwfde $C$DW$CIE, ||Flash_initModule||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("ctrlBase")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("eccBase")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -4]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("waitstates")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: Flash_initModule              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Flash_initModule||:
;* AR5   assigned to ctrlBase
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("ctrlBase")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to eccBase
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("eccBase")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to waitstates
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("waitstates")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |61| 
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |61| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 604,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |604| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 609,column 5,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |609| 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |609| 
        AND       AL,#65280             ; [CPU_ALU] |609| 
        MOVB      XAR0,#30              ; [CPU_FPU] |609| 
        ORB       AL,#0x14              ; [CPU_ALU] |609| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |609| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 355,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |355| 
        MOVB      XAR0,#32              ; [CPU_ALU] |355| 
        ANDB      AH,#0                 ; [CPU_ALU] |355| 
        ORB       AL,#0x03              ; [CPU_ALU] |355| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |355| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 393,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |393| 
        MOVB      XAR0,#36              ; [CPU_ALU] |393| 
        ORB       AL,#0x01              ; [CPU_ALU] |393| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |393| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 514,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |514| 
        ADD       ACC,#3 << 7           ; [CPU_ALU] |514| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |514| 
        MOVL      ACC,*+XAR7[0]         ; [CPU_ALU] |514| 
        AND       AL,#65533             ; [CPU_ALU] |514| 
        MOVL      *+XAR7[0],ACC         ; [CPU_ALU] |514| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 454,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |454| 
        ADD       ACC,#3 << 7           ; [CPU_ALU] |454| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |454| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR7[0]         ; [CPU_ALU] |454| 
        AND       AL,#65534             ; [CPU_ALU] |454| 
        MOVL      *+XAR7[0],ACC         ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 308,column 5,is_stmt,isa 0
        MOV       ACC,AR4 << 8          ; [CPU_ALU] |308| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |308| 
        AND       PL,#61695             ; [CPU_ALU] |308| 
        OR        AH,PH                 ; [CPU_ALU] |308| 
        OR        AL,PL                 ; [CPU_ALU] |308| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |308| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 484,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |484| 
        ADD       ACC,#3 << 7           ; [CPU_ALU] |484| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |484| 
        MOVB      ACC,#2                ; [CPU_ALU] |484| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |484| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |484| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 424,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |424| 
        ADD       ACC,#3 << 7           ; [CPU_ALU] |424| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |424| 
        MOVB      ACC,#1                ; [CPU_ALU] |424| 
        OR        *+XAR5[0],AL          ; [CPU_ALU] |424| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |424| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 544,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR6[0]         ; [CPU_ALU] |544| 
        AND       AL,#65528             ; [CPU_ALU] |544| 
        ORB       AL,#0x0a              ; [CPU_ALU] |544| 
        MOVL      *+XAR6[0],ACC         ; [CPU_ALU] |544| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h",line 547,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |547| 
 RPT #7 || NOP
        SPM       #0                    ; [CPU_ALU] 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../src_driver/flash.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11


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

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$19	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$19, DW_AT_name("FLASH_BANK")
	.dwattr $C$DW$19, DW_AT_const_value(0x00)
	.dwattr $C$DW$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("Flash_BankNumber")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$20	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$20, DW_AT_name("FLASH_BANK_PWR_SLEEP")
	.dwattr $C$DW$20, DW_AT_const_value(0x00)
	.dwattr $C$DW$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x73)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)

$C$DW$21	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$21, DW_AT_name("FLASH_BANK_PWR_STANDBY")
	.dwattr $C$DW$21, DW_AT_const_value(0x01)
	.dwattr $C$DW$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x74)
	.dwattr $C$DW$21, DW_AT_decl_column(0x05)

$C$DW$22	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$22, DW_AT_name("FLASH_BANK_PWR_ACTIVE")
	.dwattr $C$DW$22, DW_AT_const_value(0x03)
	.dwattr $C$DW$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x75)
	.dwattr $C$DW$22, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("Flash_BankPowerMode")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$23	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$23, DW_AT_name("FLASH_PUMP_PWR_SLEEP")
	.dwattr $C$DW$23, DW_AT_const_value(0x00)
	.dwattr $C$DW$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x80)
	.dwattr $C$DW$23, DW_AT_decl_column(0x05)

$C$DW$24	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$24, DW_AT_name("FLASH_PUMP_PWR_ACTIVE")
	.dwattr $C$DW$24, DW_AT_const_value(0x01)
	.dwattr $C$DW$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x81)
	.dwattr $C$DW$24, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("Flash_PumpPowerMode")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$25	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$28)

$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$25)

	.dwendtag $C$DW$TU$36


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


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$26	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$26)

$C$DW$T$40	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$26)

	.dwendtag $C$DW$TU$40


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

