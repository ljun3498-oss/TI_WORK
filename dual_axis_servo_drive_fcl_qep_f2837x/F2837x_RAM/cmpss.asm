;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:18 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/cmpss.c")
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

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{C61DE137-AB0F-4FC4-B691-F7C67FB89511} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{6D445E67-7F12-49B9-B961-9D44674E5279} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{F7FEBF64-AFCF-40D1-A74A-6432735D7E10} 
	.sect	".text:CMPSS_configRamp"
	.clink
	.global	||CMPSS_configRamp||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("CMPSS_configRamp")
	.dwattr $C$DW$3, DW_AT_low_pc(||CMPSS_configRamp||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("CMPSS_configRamp")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/cmpss.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0xad)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/cmpss.c",line 175,column 1,is_stmt,address ||CMPSS_configRamp||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configRamp||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("base")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("maxRampVal")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("decrementVal")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg14]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("delayVal")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -5]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("pwmSyncSrc")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -6]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("useRampValShdw")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -7]


;***************************************************************
;* FNAME: CMPSS_configRamp              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||CMPSS_configRamp||:
;* AR6   assigned to base
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to maxRampVal
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("maxRampVal")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to decrementVal
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("decrementVal")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg14]

;* PL    assigned to delayVal
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("delayVal")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to pwmSyncSrc
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("pwmSyncSrc")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg18]

;* PH    assigned to useRampValShdw
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("useRampValShdw")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg3]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR6,ACC              ; [CPU_ALU] |175| 
        MOVZ      AR7,*-SP[6]           ; [CPU_ALU] |175| 
        MOV       PL,*-SP[5]            ; [CPU_ALU] |175| 
        MOV       PH,*-SP[7]            ; [CPU_ALU] |175| 
	.dwpsn	file "../src_driver/cmpss.c",line 183,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |183| 
	.dwpsn	file "../src_driver/cmpss.c",line 188,column 5,is_stmt,isa 0
        AND       AL,*+XAR6[4],#0xffe1  ; [CPU_ALU] |188| 
        MOVZ      AR0,AL                ; [CPU_ALU] |188| 
        SUBB      XAR7,#1               ; [CPU_ARAU] |188| 
        MOV       ACC,AR7 << #1         ; [CPU_ALU] |188| 
        OR        AL,AR0                ; [CPU_ALU] |188| 
        MOV       *+XAR6[4],AL          ; [CPU_ALU] |188| 
        MOV       AL,PH                 ; [CPU_ALU] |188| 
	.dwpsn	file "../src_driver/cmpss.c",line 197,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |197| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |197| 
        ; branchcc occurs ; [] |197| 
	.dwpsn	file "../src_driver/cmpss.c",line 203,column 9,is_stmt,isa 0
        AND       *+XAR6[4],#0xffbf     ; [CPU_ALU] |203| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] |203| 
        ; branch occurs ; [] |203| 
||$C$L1||:    
	.dwpsn	file "../src_driver/cmpss.c",line 199,column 9,is_stmt,isa 0
        OR        *+XAR6[4],#0x0040     ; [CPU_ALU] |199| 
||$C$L2||:    
	.dwpsn	file "../src_driver/cmpss.c",line 206,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |206| 
	.dwpsn	file "../src_driver/cmpss.c",line 211,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |211| 
	.dwpsn	file "../src_driver/cmpss.c",line 216,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |216| 
	.dwpsn	file "../src_driver/cmpss.c",line 211,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR0],AR4       ; [CPU_ALU] |211| 
	.dwpsn	file "../src_driver/cmpss.c",line 221,column 5,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |221| 
	.dwpsn	file "../src_driver/cmpss.c",line 216,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR1],AR5       ; [CPU_ALU] |216| 
	.dwpsn	file "../src_driver/cmpss.c",line 221,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR0],P         ; [CPU_ALU] |221| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/cmpss.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xde)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:CMPSS_configLatchOnPWMSYNC"
	.clink
	.global	||CMPSS_configLatchOnPWMSYNC||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("CMPSS_configLatchOnPWMSYNC")
	.dwattr $C$DW$17, DW_AT_low_pc(||CMPSS_configLatchOnPWMSYNC||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("CMPSS_configLatchOnPWMSYNC")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../src_driver/cmpss.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x81)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/cmpss.c",line 130,column 1,is_stmt,address ||CMPSS_configLatchOnPWMSYNC||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configLatchOnPWMSYNC||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("highEnable")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg12]

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("lowEnable")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: CMPSS_configLatchOnPWMSYNC    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||CMPSS_configLatchOnPWMSYNC||:
;* AR4   assigned to base
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("base")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]

;* AH    assigned to highEnable
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("highEnable")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg1]

;* AL    assigned to lowEnable
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("lowEnable")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |130| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |130| 
        MOV       AL,AR5                ; [CPU_ALU] |130| 
        MOV       AH,AR6                ; [CPU_ALU] |130| 
	.dwpsn	file "../src_driver/cmpss.c",line 140,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |140| 
	.dwpsn	file "../src_driver/cmpss.c",line 142,column 5,is_stmt,isa 0
        CMPB      AH,#1                 ; [CPU_ALU] |142| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |142| 
        ; branchcc occurs ; [] |142| 
	.dwpsn	file "../src_driver/cmpss.c",line 148,column 9,is_stmt,isa 0
        AND       *+XAR4[3],#0xfffb     ; [CPU_ALU] |148| 
	.dwpsn	file "../src_driver/cmpss.c",line 155,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |155| 
        ; branch occurs ; [] |155| 
||$C$L3||:    
	.dwpsn	file "../src_driver/cmpss.c",line 144,column 9,is_stmt,isa 0
        OR        *+XAR4[3],#0x0004     ; [CPU_ALU] |144| 
||$C$L4||:    
	.dwpsn	file "../src_driver/cmpss.c",line 155,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |155| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |155| 
        ; branchcc occurs ; [] |155| 
	.dwpsn	file "../src_driver/cmpss.c",line 161,column 9,is_stmt,isa 0
        AND       *+XAR4[3],#0xfbff     ; [CPU_ALU] |161| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |161| 
        ; branch occurs ; [] |161| 
||$C$L5||:    
	.dwpsn	file "../src_driver/cmpss.c",line 157,column 9,is_stmt,isa 0
        OR        *+XAR4[3],#0x0400     ; [CPU_ALU] |157| 
||$C$L6||:    
	.dwpsn	file "../src_driver/cmpss.c",line 164,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |164| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../src_driver/cmpss.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:CMPSS_configFilterLow"
	.clink
	.global	||CMPSS_configFilterLow||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$25, DW_AT_low_pc(||CMPSS_configFilterLow||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("CMPSS_configFilterLow")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../src_driver/cmpss.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/cmpss.c",line 92,column 1,is_stmt,address ||CMPSS_configFilterLow||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configFilterLow||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("samplePrescale")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]

$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("sampleWindow")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg14]

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("threshold")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -5]


;***************************************************************
;* FNAME: CMPSS_configFilterLow         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||CMPSS_configFilterLow||:
;* AR6   assigned to base
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to samplePrescale
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("samplePrescale")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to sampleWindow
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("sampleWindow")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg14]

;* PL    assigned to threshold
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("threshold")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR6,ACC              ; [CPU_ALU] |92| 
        MOV       PL,*-SP[5]            ; [CPU_ALU] |92| 
	.dwpsn	file "../src_driver/cmpss.c",line 108,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |108| 
	.dwpsn	file "../src_driver/cmpss.c",line 110,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |110| 
        MOV       AH,PL                 ; [CPU_ALU] |110| 
        MOVB      XAR1,#22              ; [CPU_ALU] |110| 
        ADDB      AH,#-1                ; [CPU_ALU] |110| 
        AND       AL,*+XAR6[AR0],#0xc00f ; [CPU_ALU] |110| 
        MOVZ      AR7,AL                ; [CPU_ALU] |110| 
	.dwpsn	file "../src_driver/cmpss.c",line 118,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |118| 
	.dwpsn	file "../src_driver/cmpss.c",line 110,column 5,is_stmt,isa 0
        MOV       ACC,AH << #5          ; [CPU_ALU] |110| 
        MOV       AH,AR5                ; [CPU_ALU] |110| 
        ADDB      AH,#-1                ; [CPU_ALU] |110| 
        OR        AH,AL                 ; [CPU_ALU] |110| 
        MOV       ACC,AH << #4          ; [CPU_ALU] |110| 
        OR        AL,AR7                ; [CPU_ALU] |110| 
        MOV       *+XAR6[AR1],AL        ; [CPU_ALU] |110| 
	.dwpsn	file "../src_driver/cmpss.c",line 118,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR0],AR4       ; [CPU_ALU] |118| 
	.dwpsn	file "../src_driver/cmpss.c",line 120,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |120| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../src_driver/cmpss.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:CMPSS_configFilterHigh"
	.clink
	.global	||CMPSS_configFilterHigh||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$35, DW_AT_low_pc(||CMPSS_configFilterHigh||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../src_driver/cmpss.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x33)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/cmpss.c",line 53,column 1,is_stmt,address ||CMPSS_configFilterHigh||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configFilterHigh||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("samplePrescale")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("sampleWindow")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg14]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("threshold")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -5]


;***************************************************************
;* FNAME: CMPSS_configFilterHigh        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||CMPSS_configFilterHigh||:
;* AR6   assigned to base
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to samplePrescale
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("samplePrescale")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to sampleWindow
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("sampleWindow")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg14]

;* PL    assigned to threshold
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("threshold")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR6,ACC              ; [CPU_ALU] |53| 
        MOV       PL,*-SP[5]            ; [CPU_ALU] |53| 
	.dwpsn	file "../src_driver/cmpss.c",line 69,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |69| 
	.dwpsn	file "../src_driver/cmpss.c",line 71,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |71| 
        MOV       AH,PL                 ; [CPU_ALU] |71| 
        MOVB      XAR1,#24              ; [CPU_ALU] |71| 
        ADDB      AH,#-1                ; [CPU_ALU] |71| 
        AND       AL,*+XAR6[AR0],#0xc00f ; [CPU_ALU] |71| 
        MOVZ      AR7,AL                ; [CPU_ALU] |71| 
	.dwpsn	file "../src_driver/cmpss.c",line 79,column 5,is_stmt,isa 0
        MOVB      XAR0,#25              ; [CPU_ALU] |79| 
	.dwpsn	file "../src_driver/cmpss.c",line 71,column 5,is_stmt,isa 0
        MOV       ACC,AH << #5          ; [CPU_ALU] |71| 
        MOV       AH,AR5                ; [CPU_ALU] |71| 
        ADDB      AH,#-1                ; [CPU_ALU] |71| 
        OR        AH,AL                 ; [CPU_ALU] |71| 
        MOV       ACC,AH << #4          ; [CPU_ALU] |71| 
        OR        AL,AR7                ; [CPU_ALU] |71| 
        MOV       *+XAR6[AR1],AL        ; [CPU_ALU] |71| 
	.dwpsn	file "../src_driver/cmpss.c",line 79,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR0],AR4       ; [CPU_ALU] |79| 
	.dwpsn	file "../src_driver/cmpss.c",line 81,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |81| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../src_driver/cmpss.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35


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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$45	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$22)

$C$DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$45)

	.dwendtag $C$DW$TU$31


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$46	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)

$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$46)

	.dwendtag $C$DW$TU$33


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


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$24, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$24, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$24


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$47	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$24)

$C$DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$47)

	.dwendtag $C$DW$TU$34

