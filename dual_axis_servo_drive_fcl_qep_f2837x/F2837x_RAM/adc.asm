;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:18 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/adc.c")
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

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{9EB1BB32-F130-4296-BA65-EC20E0DFD0FD} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{43DC865B-1570-4778-A7E9-1820622F5764} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{BA6846F2-488F-4ED5-9FAC-5ED46AC9E6AA} 
	.sect	".text:ADC_setPPBTripLimits"
	.clink
	.global	||ADC_setPPBTripLimits||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("ADC_setPPBTripLimits")
	.dwattr $C$DW$3, DW_AT_low_pc(||ADC_setPPBTripLimits||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("ADC_setPPBTripLimits")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/adc.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x130)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/adc.c",line 306,column 1,is_stmt,address ||ADC_setPPBTripLimits||,isa 0

	.dwfde $C$DW$CIE, ||ADC_setPPBTripLimits||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("base")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("ppbNumber")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("tripHiLimit")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -6]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("tripLoLimit")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: ADC_setPPBTripLimits          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||ADC_setPPBTripLimits||:
;* AR4   assigned to $O$C1
;* AR7   assigned to $O$C2
;* AR5   assigned to $O$C3
;* AR4   assigned to base
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("base")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to ppbNumber
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("ppbNumber")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg18]

;* AR0   assigned to tripHiLimit
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("tripHiLimit")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg4]

;* AR6   assigned to tripLoLimit
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("tripLoLimit")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR7,AR4               ; [CPU_ALU] |306| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR4,ACC              ; [CPU_ALU] |306| 
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |306| 
        MOVL      XAR0,*-SP[6]          ; [CPU_ALU] |306| 
	.dwpsn	file "../src_driver/adc.c",line 325,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |325| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/adc.c",line 330,column 5,is_stmt,isa 0
        MOV       ACC,AR7 << 3          ; [CPU_ALU] |330| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |330| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |330| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |330| 
        ADDB      ACC,#68               ; [CPU_ALU] |330| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |330| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |330| 
        MOVL      ACC,XAR0              ; [CPU_ALU] |330| 
        AND       PL,#0                 ; [CPU_ALU] |330| 
        AND       PH,#65534             ; [CPU_ALU] |330| 
        ANDB      AH,#1                 ; [CPU_ALU] |330| 
        OR        AL,PL                 ; [CPU_ALU] |330| 
        OR        AH,PH                 ; [CPU_ALU] |330| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |330| 
	.dwpsn	file "../src_driver/adc.c",line 337,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |337| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |337| 
        ADDB      ACC,#70               ; [CPU_ALU] |337| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |337| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |337| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |337| 
        ANDB      AH,#1                 ; [CPU_ALU] |337| 
        AND       PL,#0                 ; [CPU_ALU] |337| 
        AND       PH,#65534             ; [CPU_ALU] |337| 
        OR        AL,PL                 ; [CPU_ALU] |337| 
        OR        AH,PH                 ; [CPU_ALU] |337| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/adc.c",line 341,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |341| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/adc.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:ADC_setOffsetTrim"
	.clink
	.global	||ADC_setOffsetTrim||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("ADC_setOffsetTrim")
	.dwattr $C$DW$13, DW_AT_low_pc(||ADC_setOffsetTrim||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("ADC_setOffsetTrim")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../src_driver/adc.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/adc.c",line 222,column 1,is_stmt,address ||ADC_setOffsetTrim||,isa 0

	.dwfde $C$DW$CIE, ||ADC_setOffsetTrim||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: ADC_setOffsetTrim             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||ADC_setOffsetTrim||:
;* AR1   assigned to base
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to offsetIndex
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("offsetIndex")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg16]

;* AL    assigned to offsetTrim
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("offsetTrim")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

;* PL    assigned to resolution
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("resolution")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to signalMode
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("signalMode")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,ACC              ; [CPU_ALU] |222| 
	.dwpsn	file "../src_driver/adc.c",line 233,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[1],#0x0040  ; [CPU_ALU] |233| 
        MOV       PL,AL                 ; [CPU_ALU] |233| 
	.dwpsn	file "../src_driver/adc.c",line 235,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[1],#0x0080  ; [CPU_ALU] |235| 
        MOVZ      AR7,AL                ; [CPU_ALU] |235| 
	.dwpsn	file "../src_driver/adc.c",line 238,column 5,is_stmt,isa 0
        MOV       ACC,#29824            ; [CPU_ALU] |238| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |238| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
        MOV       ACC,#29952            ; [CPU_ALU] |238| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |238| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
        MOV       ACC,#30080            ; [CPU_ALU] |238| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |238| 
	.dwpsn	file "../src_driver/adc.c",line 241,column 13,is_stmt,isa 0
        MOVB      XAR6,#0,NEQ           ; [CPU_ALU] |241| 
	.dwpsn	file "../src_driver/adc.c",line 250,column 13,is_stmt,isa 0
        MOVB      XAR6,#12,EQ           ; [CPU_ALU] |250| 
	.dwpsn	file "../src_driver/adc.c",line 251,column 13,is_stmt,isa 0
        B         ||$C$L3||,UNC         ; [CPU_ALU] |251| 
        ; branch occurs ; [] |251| 
||$C$L1||:    
	.dwpsn	file "../src_driver/adc.c",line 247,column 13,is_stmt,isa 0
        MOVB      XAR6,#8               ; [CPU_ALU] |247| 
	.dwpsn	file "../src_driver/adc.c",line 248,column 13,is_stmt,isa 0
        B         ||$C$L3||,UNC         ; [CPU_ALU] |248| 
        ; branch occurs ; [] |248| 
||$C$L2||:    
	.dwpsn	file "../src_driver/adc.c",line 244,column 13,is_stmt,isa 0
        MOVB      XAR6,#4               ; [CPU_ALU] |244| 
||$C$L3||:    
	.dwpsn	file "../src_driver/adc.c",line 263,column 5,is_stmt,isa 0
        MOVL      XAR4,#459692          ; [CPU_ARAU] |263| 
        MOVZ      AR5,*+XAR4[0]         ; [CPU_ALU] |263| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65535            ; [CPU_ALU] |263| 
        CMPL      ACC,XAR5              ; [CPU_ALU] |263| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |263| 
        ; branchcc occurs ; [] |263| 
	.dwpsn	file "../src_driver/adc.c",line 269,column 9,is_stmt,isa 0
        MOV       AH,AR7                ; [CPU_ALU] |269| 
        MOV       PH,#0                 ; [CPU_ALU] |269| 
        CMPB      AH,#128               ; [CPU_ALU] |269| 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |269| 
        ; branchcc occurs ; [] |269| 
        MOV       PH,#1                 ; [CPU_ALU] |269| 
||$C$L4||:    
        MOVB      AL,#0                 ; [CPU_ALU] |269| 
        MOV       AH,PL                 ; [CPU_ALU] |269| 
	.dwpsn	file "../src_driver/adc.c",line 272,column 9,is_stmt,isa 0
        MOVL      XAR7,#CALL(459692)    ; [CPU_ARAU] |272| 
	.dwpsn	file "../src_driver/adc.c",line 269,column 9,is_stmt,isa 0
        CMPB      AH,#64                ; [CPU_ALU] |269| 
        MOVB      AL,#1,EQ              ; [CPU_ALU] |269| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |269| 
        ADD       AL,AR6                ; [CPU_ALU] |269| 
        ADD       AL,PH                 ; [CPU_ALU] |269| 
	.dwpsn	file "../src_driver/adc.c",line 272,column 9,is_stmt,isa 0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_call
	.dwattr $C$DW$20, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |272| 
        ; call occurs [XAR7] ; [] |272| 
        CMPB      AL,#0                 ; [CPU_ALU] |272| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "../src_driver/adc.c",line 291,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |291| 
	.dwpsn	file "../src_driver/adc.c",line 292,column 9,is_stmt,isa 0
        MOVB      XAR0,#59              ; [CPU_ALU] |292| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |292| 
	.dwpsn	file "../src_driver/adc.c",line 293,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |293| 
||$C$L5||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../src_driver/adc.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x127)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:ADC_setINLTrim"
	.clink
	.global	||ADC_setINLTrim||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("ADC_setINLTrim")
	.dwattr $C$DW$22, DW_AT_low_pc(||ADC_setINLTrim||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("ADC_setINLTrim")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../src_driver/adc.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x75)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../src_driver/adc.c",line 118,column 1,is_stmt,address ||ADC_setINLTrim||,isa 0

	.dwfde $C$DW$CIE, ||ADC_setINLTrim||
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: ADC_setINLTrim                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||ADC_setINLTrim||:
;* AR1   assigned to base
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to resolution
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("resolution")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,ACC              ; [CPU_ALU] |118| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../src_driver/adc.c",line 126,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[1],#0x0040  ; [CPU_ALU] |126| 
        MOVZ      AR2,AL                ; [CPU_ALU] |126| 
	.dwpsn	file "../src_driver/adc.c",line 129,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |129| 
	.dwpsn	file "../src_driver/adc.c",line 130,column 5,is_stmt,isa 0
        MOV       ACC,#29696            ; [CPU_ALU] |130| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |130| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |130| 
        ; branchcc occurs ; [] |130| 
        MOV       ACC,#29824            ; [CPU_ALU] |130| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |130| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |130| 
        ; branchcc occurs ; [] |130| 
        MOV       ACC,#29952            ; [CPU_ALU] |130| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |130| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |130| 
        ; branchcc occurs ; [] |130| 
        MOV       ACC,#30080            ; [CPU_ALU] |130| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |130| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |130| 
        ; branchcc occurs ; [] |130| 
	.dwpsn	file "../src_driver/adc.c",line 178,column 13,is_stmt,isa 0
        MOVL      XAR4,#459694          ; [CPU_ARAU] |178| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |178| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65535            ; [CPU_ALU] |178| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |178| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
	.dwpsn	file "../src_driver/adc.c",line 183,column 17,is_stmt,isa 0
        MOVL      XAR7,#CALL(459694)    ; [CPU_ARAU] |183| 
	.dwpsn	file "../src_driver/adc.c",line 202,column 5,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
||$C$L6||:    
	.dwpsn	file "../src_driver/adc.c",line 163,column 13,is_stmt,isa 0
        MOVL      XAR4,#459696          ; [CPU_ARAU] |163| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |163| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65535            ; [CPU_ALU] |163| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |163| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |163| 
        ; branchcc occurs ; [] |163| 
	.dwpsn	file "../src_driver/adc.c",line 168,column 17,is_stmt,isa 0
        MOVL      XAR7,#CALL(459696)    ; [CPU_ARAU] |168| 
	.dwpsn	file "../src_driver/adc.c",line 202,column 5,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
||$C$L7||:    
	.dwpsn	file "../src_driver/adc.c",line 148,column 13,is_stmt,isa 0
        MOVL      XAR4,#459698          ; [CPU_ARAU] |148| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |148| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65535            ; [CPU_ALU] |148| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |148| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
	.dwpsn	file "../src_driver/adc.c",line 153,column 17,is_stmt,isa 0
        MOVL      XAR7,#CALL(459698)    ; [CPU_ARAU] |153| 
	.dwpsn	file "../src_driver/adc.c",line 202,column 5,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
||$C$L8||:    
	.dwpsn	file "../src_driver/adc.c",line 133,column 13,is_stmt,isa 0
        MOVL      XAR4,#459700          ; [CPU_ARAU] |133| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |133| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65535            ; [CPU_ALU] |133| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |133| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
	.dwpsn	file "../src_driver/adc.c",line 138,column 17,is_stmt,isa 0
        MOVL      XAR7,#CALL(459700)    ; [CPU_ARAU] |138| 
||$C$L9||:    
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_call
	.dwattr $C$DW$26, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |138| 
        ; call occurs [XAR7] ; [] |138| 
||$C$L10||:    
        MOV       AL,AR2                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/adc.c",line 202,column 5,is_stmt,isa 0
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
	.dwpsn	file "../src_driver/adc.c",line 207,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |207| 
	.dwpsn	file "../src_driver/adc.c",line 208,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR1             ; [CPU_ALU] |208| 
	.dwpsn	file "../src_driver/adc.c",line 207,column 9,is_stmt,isa 0
        ADDB      XAR4,#112             ; [CPU_ALU] |207| 
	.dwpsn	file "../src_driver/adc.c",line 208,column 9,is_stmt,isa 0
        ADDB      XAR5,#114             ; [CPU_ALU] |208| 
	.dwpsn	file "../src_driver/adc.c",line 207,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_FPU] |207| 
        ANDB      AL,#0                 ; [CPU_ALU] |207| 
        MOVL      *+XAR4[0],ACC         ; [CPU_FPU] |207| 
	.dwpsn	file "../src_driver/adc.c",line 209,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_FPU] |209| 
	.dwpsn	file "../src_driver/adc.c",line 208,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |208| 
	.dwpsn	file "../src_driver/adc.c",line 210,column 9,is_stmt,isa 0
        ADDB      XAR1,#120             ; [CPU_ALU] |210| 
	.dwpsn	file "../src_driver/adc.c",line 208,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |208| 
	.dwpsn	file "../src_driver/adc.c",line 209,column 9,is_stmt,isa 0
        ADDB      XAR4,#118             ; [CPU_ALU] |209| 
	.dwpsn	file "../src_driver/adc.c",line 208,column 9,is_stmt,isa 0
        MOVL      *+XAR5[0],ACC         ; [CPU_FPU] |208| 
	.dwpsn	file "../src_driver/adc.c",line 209,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_FPU] |209| 
        ANDB      AL,#0                 ; [CPU_ALU] |209| 
        MOVL      *+XAR4[0],ACC         ; [CPU_FPU] |209| 
	.dwpsn	file "../src_driver/adc.c",line 210,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR1[0]         ; [CPU_ALU] |210| 
        ANDB      AL,#0                 ; [CPU_ALU] |210| 
        MOVL      *+XAR1[0],ACC         ; [CPU_ALU] |210| 
||$C$L11||:    
	.dwpsn	file "../src_driver/adc.c",line 212,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |212| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../src_driver/adc.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text:ADC_setMode"
	.clink
	.global	||ADC_setMode||

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$28, DW_AT_low_pc(||ADC_setMode||)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_linkage_name("ADC_setMode")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("../src_driver/adc.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x48)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/adc.c",line 74,column 1,is_stmt,address ||ADC_setMode||,isa 0

	.dwfde $C$DW$CIE, ||ADC_setMode||
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("base")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("resolution")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("signalMode")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ADC_setMode                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||ADC_setMode||:
;* AR1   assigned to base
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to resolution
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("resolution")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to signalMode
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("signalMode")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,ACC              ; [CPU_ALU] |74| 
	.dwpsn	file "../src_driver/adc.c",line 98,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |98| 
	.dwpsn	file "../src_driver/adc.c",line 99,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[1],#0xff3f  ; [CPU_ALU] |99| 
        OR        AL,AR4                ; [CPU_ALU] |99| 
        OR        AL,AR5                ; [CPU_ALU] |99| 
        MOV       *+XAR1[1],AL          ; [CPU_ALU] |99| 
	.dwpsn	file "../src_driver/adc.c",line 102,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |102| 
	.dwpsn	file "../src_driver/adc.c",line 107,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |107| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("ADC_setINLTrim")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||ADC_setINLTrim||   ; [CPU_ALU] |107| 
        ; call occurs [#||ADC_setINLTrim||] ; [] |107| 
	.dwpsn	file "../src_driver/adc.c",line 108,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |108| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("ADC_setOffsetTrim")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #||ADC_setOffsetTrim|| ; [CPU_ALU] |108| 
        ; call occurs [#||ADC_setOffsetTrim||] ; [] |108| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../src_driver/adc.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28


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
$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("ADC_RESOLUTION_12BIT")
	.dwattr $C$DW$38, DW_AT_const_value(0x00)
	.dwattr $C$DW$38, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("ADC_RESOLUTION_16BIT")
	.dwattr $C$DW$39, DW_AT_const_value(0x40)
	.dwattr $C$DW$39, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("ADC_Resolution")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$40	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)

$C$DW$T$21	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$40)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("ADC_MODE_SINGLE_ENDED")
	.dwattr $C$DW$41, DW_AT_const_value(0x00)
	.dwattr $C$DW$41, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("ADC_MODE_DIFFERENTIAL")
	.dwattr $C$DW$42, DW_AT_const_value(0x80)
	.dwattr $C$DW$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("ADC_SignalMode")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$43	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)

$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$43)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("ADC_PPB_NUMBER1")
	.dwattr $C$DW$44, DW_AT_const_value(0x00)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x134)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("ADC_PPB_NUMBER2")
	.dwattr $C$DW$45, DW_AT_const_value(0x01)
	.dwattr $C$DW$45, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x135)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("ADC_PPB_NUMBER3")
	.dwattr $C$DW$46, DW_AT_const_value(0x02)
	.dwattr $C$DW$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x136)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("ADC_PPB_NUMBER4")
	.dwattr $C$DW$47, DW_AT_const_value(0x03)
	.dwattr $C$DW$47, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x137)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("ADC_PPBNumber")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$48	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$26)

$C$DW$T$27	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$48)

	.dwendtag $C$DW$TU$27


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


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$43


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("int32_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$36


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$49	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$36)

$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$49)

	.dwendtag $C$DW$TU$47


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$31


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$50	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$31)

$C$DW$T$51	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$50)

	.dwendtag $C$DW$TU$51


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

