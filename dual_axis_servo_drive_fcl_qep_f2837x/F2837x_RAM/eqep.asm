;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/eqep.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{D7B0D3E2-9F34-48E4-9BB4-1B3789068794} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{D55BAAEA-4D3A-44D2-BB74-3D1B937B6073} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{44F2816F-2AC5-4108-8CC7-C3C14BAE886F} 
	.sect	".text:EQEP_setInputPolarity"
	.clink
	.global	||EQEP_setInputPolarity||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("EQEP_setInputPolarity")
	.dwattr $C$DW$1, DW_AT_low_pc(||EQEP_setInputPolarity||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("EQEP_setInputPolarity")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../src_driver/eqep.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/eqep.c",line 96,column 1,is_stmt,address ||EQEP_setInputPolarity||,isa 0

	.dwfde $C$DW$CIE, ||EQEP_setInputPolarity||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("invertQEPA")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("invertQEPB")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("invertIndex")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -5]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("invertStrobe")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: EQEP_setInputPolarity         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||EQEP_setInputPolarity||:
;* AR6   assigned to base
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg16]

;* AL    assigned to invertQEPA
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("invertQEPA")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to invertQEPB
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("invertQEPB")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to invertIndex
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("invertIndex")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg18]

;* AH    assigned to invertStrobe
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("invertStrobe")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |96| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOV       AL,AR4                ; [CPU_ALU] |96| 
        MOV       AH,*-SP[6]            ; [CPU_ALU] |96| 
        MOVZ      AR7,*-SP[5]           ; [CPU_ALU] |96| 
	.dwpsn	file "../src_driver/eqep.c",line 105,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |105| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |105| 
        ; branchcc occurs ; [] |105| 
	.dwpsn	file "../src_driver/eqep.c",line 111,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |111| 
        ADDB      XAR4,#20              ; [CPU_ALU] |111| 
        AND       *+XAR4[0],#0xfeff     ; [CPU_ALU] |111| 
	.dwpsn	file "../src_driver/eqep.c",line 117,column 5,is_stmt,isa 0
        B         ||$C$L2||,UNC         ; [CPU_ALU] |117| 
        ; branch occurs ; [] |117| 
||$C$L1||:    
	.dwpsn	file "../src_driver/eqep.c",line 107,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |107| 
        ADDB      XAR4,#20              ; [CPU_ALU] |107| 
        OR        *+XAR4[0],#0x0100     ; [CPU_ALU] |107| 
||$C$L2||:    
        MOV       AL,AR5                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/eqep.c",line 117,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |117| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
	.dwpsn	file "../src_driver/eqep.c",line 123,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |123| 
        ADDB      XAR4,#20              ; [CPU_ALU] |123| 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |123| 
	.dwpsn	file "../src_driver/eqep.c",line 129,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |129| 
        ; branch occurs ; [] |129| 
||$C$L3||:    
	.dwpsn	file "../src_driver/eqep.c",line 119,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |119| 
        ADDB      XAR4,#20              ; [CPU_ALU] |119| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |119| 
||$C$L4||:    
        MOV       AL,AR7                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/eqep.c",line 129,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |129| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "../src_driver/eqep.c",line 135,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |135| 
        ADDB      XAR4,#20              ; [CPU_ALU] |135| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |135| 
	.dwpsn	file "../src_driver/eqep.c",line 141,column 5,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |141| 
        ; branch occurs ; [] |141| 
||$C$L5||:    
	.dwpsn	file "../src_driver/eqep.c",line 131,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |131| 
        ADDB      XAR4,#20              ; [CPU_ALU] |131| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |131| 
||$C$L6||:    
	.dwpsn	file "../src_driver/eqep.c",line 141,column 5,is_stmt,isa 0
        CMPB      AH,#1                 ; [CPU_ALU] |141| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |141| 
        ; branchcc occurs ; [] |141| 
	.dwpsn	file "../src_driver/eqep.c",line 147,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |147| 
        ADDB      XAR4,#20              ; [CPU_ALU] |147| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |147| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |147| 
        ; branch occurs ; [] |147| 
||$C$L7||:    
	.dwpsn	file "../src_driver/eqep.c",line 143,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |143| 
        ADDB      XAR4,#20              ; [CPU_ALU] |143| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |143| 
||$C$L8||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../src_driver/eqep.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:EQEP_setCompareConfig"
	.clink
	.global	||EQEP_setCompareConfig||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("EQEP_setCompareConfig")
	.dwattr $C$DW$13, DW_AT_low_pc(||EQEP_setCompareConfig||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("EQEP_setCompareConfig")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../src_driver/eqep.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x33)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/eqep.c",line 53,column 1,is_stmt,address ||EQEP_setCompareConfig||,isa 0

	.dwfde $C$DW$CIE, ||EQEP_setCompareConfig||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("config")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("compareValue")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -6]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("cycles")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: EQEP_setCompareConfig         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||EQEP_setCompareConfig||:
;* AR6   assigned to base
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to config
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("config")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to compareValue
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("compareValue")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR6,ACC              ; [CPU_ALU] |53| 
        MOVL      XAR7,*-SP[6]          ; [CPU_ALU] |53| 
	.dwpsn	file "../src_driver/eqep.c",line 73,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |73| 
        AND       AH,AR4,#0xc000        ; [CPU_ALU] |73| 
        SUBB      XAR5,#1               ; [CPU_ARAU] |73| 
	.dwpsn	file "../src_driver/eqep.c",line 65,column 5,is_stmt,isa 0
        MOVL      *+XAR6[6],XAR7        ; [CPU_ALU] |65| 
	.dwpsn	file "../src_driver/eqep.c",line 73,column 5,is_stmt,isa 0
        AND       AL,*+XAR6[AR0],#0x3000 ; [CPU_ALU] |73| 
        OR        AH,AL                 ; [CPU_ALU] |73| 
        OR        AR5,AH                ; [CPU_ALU] |73| 
        MOVB      XAR1,#23              ; [CPU_ALU] |73| 
	.dwpsn	file "../src_driver/eqep.c",line 83,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |83| 
        AND       AL,AR4,#0x3000        ; [CPU_ALU] |83| 
	.dwpsn	file "../src_driver/eqep.c",line 73,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR1],AR5       ; [CPU_ALU] |73| 
	.dwpsn	file "../src_driver/eqep.c",line 83,column 5,is_stmt,isa 0
        AND       AH,*+XAR6[AR0],#0xcfff ; [CPU_ALU] |83| 
        MOVB      XAR0,#20              ; [CPU_ALU] |83| 
        OR        AL,AH                 ; [CPU_ALU] |83| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |83| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../src_driver/eqep.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13


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


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$22	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$22)

	.dwendtag $C$DW$TU$29


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
$C$DW$23	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$20)

$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$23)

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
$C$DW$24	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)

$C$DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$24)

	.dwendtag $C$DW$TU$34

