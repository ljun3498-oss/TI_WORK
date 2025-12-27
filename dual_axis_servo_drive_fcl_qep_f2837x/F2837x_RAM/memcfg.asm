;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/memcfg.c")
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

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{059751BF-57D0-40C5-A22C-DA6727BB887E} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{15B4BA10-EF39-4C8C-ADFC-FF42D66D7EAF} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{6C12E27B-1A3B-4E03-B3DF-EFBCF7923B8A} 
	.sect	".text:MemCfg_unlockConfig"
	.clink
	.global	||MemCfg_unlockConfig||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("MemCfg_unlockConfig")
	.dwattr $C$DW$3, DW_AT_low_pc(||MemCfg_unlockConfig||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("MemCfg_unlockConfig")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x71)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 114,column 1,is_stmt,address ||MemCfg_unlockConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_unlockConfig||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("memSections")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_unlockConfig           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_unlockConfig||:
;* AR6   assigned to memSections
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("memSections")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |114| 
	.dwpsn	file "../src_driver/memcfg.c",line 127,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |127| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 129,column 5,is_stmt,isa 0
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |129| 
        MOVL      P,XAR6                ; [CPU_ALU] |129| 
        AND       PL,#0                 ; [CPU_ALU] |129| 
        AND       PH,#65280             ; [CPU_ALU] |129| 
        CMPL      ACC,P                 ; [CPU_ALU] |129| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |129| 
        CMPL      ACC,P                 ; [CPU_ALU] |129| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |129| 
        CMPL      ACC,P                 ; [CPU_ALU] |129| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |129| 
        ; branch occurs ; [] |129| 
||$C$L1||:    
	.dwpsn	file "../src_driver/memcfg.c",line 151,column 13,is_stmt,isa 0
        MOVL      XAR4,#390144          ; [CPU_ARAU] |151| 
	.dwpsn	file "../src_driver/memcfg.c",line 153,column 13,is_stmt,isa 0
        MOVL      XAR5,#390176          ; [CPU_ARAU] |153| 
	.dwpsn	file "../src_driver/memcfg.c",line 151,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |151| 
        AND       AL,#65520             ; [CPU_ALU] |151| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |151| 
	.dwpsn	file "../src_driver/memcfg.c",line 155,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |155| 
	.dwpsn	file "../src_driver/memcfg.c",line 153,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |153| 
        AND       AL,#65472             ; [CPU_ALU] |153| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |153| 
	.dwpsn	file "../src_driver/memcfg.c",line 155,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |155| 
        ANDB      AL,#0                 ; [CPU_ALU] |155| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |155| 
	.dwpsn	file "../src_driver/memcfg.c",line 157,column 13,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |157| 
        ; branch occurs ; [] |157| 
||$C$L2||:    
	.dwpsn	file "../src_driver/memcfg.c",line 142,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |142| 
	.dwpsn	file "../src_driver/memcfg.c",line 144,column 13,is_stmt,isa 0
        B         ||$C$L5||,UNC         ; [CPU_ALU] |144| 
        ; branch occurs ; [] |144| 
||$C$L3||:    
	.dwpsn	file "../src_driver/memcfg.c",line 137,column 13,is_stmt,isa 0
        MOVL      XAR4,#390176          ; [CPU_ARAU] |137| 
	.dwpsn	file "../src_driver/memcfg.c",line 139,column 13,is_stmt,isa 0
        B         ||$C$L5||,UNC         ; [CPU_ALU] |139| 
        ; branch occurs ; [] |139| 
||$C$L4||:    
	.dwpsn	file "../src_driver/memcfg.c",line 132,column 13,is_stmt,isa 0
        MOVL      XAR4,#390144          ; [CPU_ARAU] |132| 
||$C$L5||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] |132| 
        XOR       AL,#65535             ; [CPU_ALU] |132| 
        XOR       AH,#255               ; [CPU_ALU] |132| 
        AND       *+XAR4[0],AL          ; [CPU_FPU] |132| 
        OR        AH,#65280             ; [CPU_ALU] |132| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |132| 
||$C$L6||:    
	.dwpsn	file "../src_driver/memcfg.c",line 167,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |167| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xa8)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:MemCfg_setTestMode"
	.clink
	.global	||MemCfg_setTestMode||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("MemCfg_setTestMode")
	.dwattr $C$DW$7, DW_AT_low_pc(||MemCfg_setTestMode||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("MemCfg_setTestMode")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 396,column 1,is_stmt,address ||MemCfg_setTestMode||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setTestMode||
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("memSection")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("testMode")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setTestMode            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setTestMode||:
;* AR6   assigned to memSection
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("memSection")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to testMode
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("testMode")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to shiftVal
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("shiftVal")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to maskVal
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("maskVal")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg18]

;* PL    assigned to regVal
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("regVal")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg2]

;* PL    assigned to sectionNum
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("sectionNum")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |396| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |396| 
	.dwpsn	file "../src_driver/memcfg.c",line 415,column 5,is_stmt,isa 0
        AND       PH,#255               ; [CPU_ALU] |415| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |417| 
	.dwpsn	file "../src_driver/memcfg.c",line 397,column 23,is_stmt,isa 0
        MOVB      XAR5,#0               ; [CPU_ALU] |397| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L7||:    
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 420,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |420| 
	.dwpsn	file "../src_driver/memcfg.c",line 417,column 11,is_stmt,isa 0
        SFR       ACC,1                 ; [CPU_ALU] |417| 
        MOVL      P,ACC                 ; [CPU_FPU] |417| 
        MOVB      ACC,#1                ; [CPU_FPU] |417| 
        CMPL      ACC,P                 ; [CPU_ALU] |417| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
||$C$L8||:    
	.dwpsn	file "../src_driver/memcfg.c",line 423,column 5,is_stmt,isa 0
        MOV       T,AR5                 ; [CPU_ALU] |423| 
        MOVB      ACC,#3                ; [CPU_ALU] |423| 
        LSLL      ACC,T                 ; [CPU_ALU] |423| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |423| 
	.dwpsn	file "../src_driver/memcfg.c",line 424,column 5,is_stmt,isa 0
        MOVU      ACC,AR4               ; [CPU_ALU] |424| 
        LSLL      ACC,T                 ; [CPU_ALU] |424| 
        MOVL      P,ACC                 ; [CPU_ALU] |424| 
	.dwpsn	file "../src_driver/memcfg.c",line 429,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |429| 
	.dwpsn	file "../src_driver/memcfg.c",line 431,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |431| 
        ANDB      AL,#0                 ; [CPU_ALU] |431| 
        AND       AH,#65280             ; [CPU_ALU] |431| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |431| 
        TEST      ACC                   ; [CPU_ALU] |431| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |431| 
        ; branchcc occurs ; [] |431| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |431| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |431| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |431| 
        ; branchcc occurs ; [] |431| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |431| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |431| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |431| 
        ; branchcc occurs ; [] |431| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |431| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |431| 
        B         ||$C$L13||,NEQ        ; [CPU_ALU] |431| 
        ; branchcc occurs ; [] |431| 
	.dwpsn	file "../src_driver/memcfg.c",line 449,column 13,is_stmt,isa 0
        MOVL      XAR5,#390256          ; [CPU_ARAU] |449| 
	.dwpsn	file "../src_driver/memcfg.c",line 450,column 13,is_stmt,isa 0
        MOVL      XAR4,#390256          ; [CPU_ARAU] |450| 
	.dwpsn	file "../src_driver/memcfg.c",line 451,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |451| 
        ; branch occurs ; [] |451| 
||$C$L9||:    
	.dwpsn	file "../src_driver/memcfg.c",line 444,column 13,is_stmt,isa 0
        MOVL      XAR5,#390224          ; [CPU_ARAU] |444| 
	.dwpsn	file "../src_driver/memcfg.c",line 445,column 13,is_stmt,isa 0
        MOVL      XAR4,#390224          ; [CPU_ARAU] |445| 
	.dwpsn	file "../src_driver/memcfg.c",line 446,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |446| 
        ; branch occurs ; [] |446| 
||$C$L10||:    
	.dwpsn	file "../src_driver/memcfg.c",line 439,column 13,is_stmt,isa 0
        MOVL      XAR5,#390192          ; [CPU_ARAU] |439| 
	.dwpsn	file "../src_driver/memcfg.c",line 440,column 13,is_stmt,isa 0
        MOVL      XAR4,#390192          ; [CPU_ARAU] |440| 
	.dwpsn	file "../src_driver/memcfg.c",line 441,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |441| 
        ; branch occurs ; [] |441| 
||$C$L11||:    
	.dwpsn	file "../src_driver/memcfg.c",line 434,column 13,is_stmt,isa 0
        MOVL      XAR5,#390160          ; [CPU_ARAU] |434| 
	.dwpsn	file "../src_driver/memcfg.c",line 435,column 13,is_stmt,isa 0
        MOVL      XAR4,#390160          ; [CPU_ARAU] |435| 
||$C$L12||:    
	.dwpsn	file "../src_driver/memcfg.c",line 434,column 13,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |434| 
        NOT       ACC                   ; [CPU_ALU] |434| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |434| 
        MOV       AL,PL                 ; [CPU_ALU] |434| 
        AND       *+XAR5[1],AH          ; [CPU_ALU] |434| 
	.dwpsn	file "../src_driver/memcfg.c",line 435,column 13,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |435| 
        MOV       AL,PH                 ; [CPU_ALU] |435| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |435| 
||$C$L13||:    
	.dwpsn	file "../src_driver/memcfg.c",line 460,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |460| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x1cd)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:MemCfg_setProtection"
	.clink
	.global	||MemCfg_setProtection||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("MemCfg_setProtection")
	.dwattr $C$DW$17, DW_AT_low_pc(||MemCfg_setProtection||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("MemCfg_setProtection")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0xef)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 240,column 1,is_stmt,address ||MemCfg_setProtection||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setProtection||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("memSection")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("protectMode")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: MemCfg_setProtection          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setProtection||:
;* AR4   assigned to $O$C1
;* AR6   assigned to memSection
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("memSection")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to protectMode
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("protectMode")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]

;* PL    assigned to shiftVal
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("shiftVal")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg2]

;* AR5   assigned to maskVal
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("maskVal")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg14]

;* PL    assigned to regVal
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("regVal")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to sectionNum
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("sectionNum")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg18]

;* AR7   assigned to regOffset
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("regOffset")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |240| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |240| 
	.dwpsn	file "../src_driver/memcfg.c",line 259,column 5,is_stmt,isa 0
        AND       PH,#255               ; [CPU_ALU] |259| 
        MOVL      XAR7,P                ; [CPU_ALU] |259| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 240,column 1,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |240| 
	.dwpsn	file "../src_driver/memcfg.c",line 241,column 23,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |241| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L14||:    
        MOVL      XAR5,P                ; [CPU_ALU] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |261| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |261| 
	.dwpsn	file "../src_driver/memcfg.c",line 264,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |264| 
        MOVL      P,XAR5                ; [CPU_ALU] |264| 
	.dwpsn	file "../src_driver/memcfg.c",line 261,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |261| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |261| 
        B         ||$C$L14||,NEQ        ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
||$C$L15||:    
        MOVL      ACC,P                 ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 271,column 5,is_stmt,isa 0
        SFR       ACC,4                 ; [CPU_ALU] |271| 
        AND       AL,#4094              ; [CPU_ALU] |271| 
        ANDB      AH,#0                 ; [CPU_ALU] |271| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |271| 
        MOV       AL,PL                 ; [CPU_ALU] |271| 
	.dwpsn	file "../src_driver/memcfg.c",line 273,column 5,is_stmt,isa 0
        ANDB      AL,#0x1f              ; [CPU_ALU] |273| 
        MOV       T,AL                  ; [CPU_ALU] |273| 
        MOVB      ACC,#7                ; [CPU_ALU] |273| 
        LSLL      ACC,T                 ; [CPU_ALU] |273| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |273| 
	.dwpsn	file "../src_driver/memcfg.c",line 274,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |274| 
        LSLL      ACC,T                 ; [CPU_ALU] |274| 
        MOVL      P,ACC                 ; [CPU_ALU] |274| 
	.dwpsn	file "../src_driver/memcfg.c",line 279,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |279| 
	.dwpsn	file "../src_driver/memcfg.c",line 281,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |281| 
        ANDB      AL,#0                 ; [CPU_ALU] |281| 
        AND       AH,#65280             ; [CPU_ALU] |281| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |281| 
        TEST      ACC                   ; [CPU_ALU] |281| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |281| 
        ; branchcc occurs ; [] |281| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |281| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |281| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |281| 
        ; branchcc occurs ; [] |281| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |281| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |281| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |281| 
        ; branchcc occurs ; [] |281| 
	.dwpsn	file "../src_driver/memcfg.c",line 294,column 13,is_stmt,isa 0
        MOVL      XAR4,#390216          ; [CPU_ARAU] |294| 
	.dwpsn	file "../src_driver/memcfg.c",line 296,column 13,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |296| 
        ; branch occurs ; [] |296| 
||$C$L16||:    
	.dwpsn	file "../src_driver/memcfg.c",line 289,column 13,is_stmt,isa 0
        MOVL      XAR4,#390184          ; [CPU_ARAU] |289| 
	.dwpsn	file "../src_driver/memcfg.c",line 291,column 13,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |291| 
        ; branch occurs ; [] |291| 
||$C$L17||:    
	.dwpsn	file "../src_driver/memcfg.c",line 284,column 13,is_stmt,isa 0
        MOVL      XAR4,#390152          ; [CPU_ARAU] |284| 
||$C$L18||:    
        MOVL      ACC,XAR7              ; [CPU_ALU] |284| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |284| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |284| 
        NOT       ACC                   ; [CPU_ALU] |284| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |284| 
        MOV       AL,PL                 ; [CPU_ALU] |284| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |284| 
	.dwpsn	file "../src_driver/memcfg.c",line 285,column 13,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |285| 
        MOV       AL,PH                 ; [CPU_ALU] |285| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |285| 
||$C$L19||:    
	.dwpsn	file "../src_driver/memcfg.c",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x133)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:MemCfg_setLSRAMControllerSel"
	.clink
	.global	||MemCfg_setLSRAMControllerSel||

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$28, DW_AT_low_pc(||MemCfg_setLSRAMControllerSel||)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_linkage_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 317,column 1,is_stmt,address ||MemCfg_setLSRAMControllerSel||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setLSRAMControllerSel||
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("ramSection")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("controllerSel")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setLSRAMControllerSel  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setLSRAMControllerSel||:
;* AR4   assigned to controllerSel
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("controllerSel")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to shiftVal
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("shiftVal")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to temp
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("temp")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/memcfg.c",line 332,column 5,is_stmt,isa 0
        ANDB      AH,#255               ; [CPU_ALU] |332| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |332| 
	.dwpsn	file "../src_driver/memcfg.c",line 331,column 5,is_stmt,isa 0
        MOVB      XAR5,#0               ; [CPU_ALU] |331| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L20||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |334| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |334| 
	.dwpsn	file "../src_driver/memcfg.c",line 337,column 9,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../src_driver/memcfg.c",line 334,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |334| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |334| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |334| 
        ; branchcc occurs ; [] |334| 
||$C$L21||:    
	.dwpsn	file "../src_driver/memcfg.c",line 343,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |343| 
	.dwpsn	file "../src_driver/memcfg.c",line 345,column 5,is_stmt,isa 0
        MOV       T,AR5                 ; [CPU_ALU] |345| 
        MOVB      ACC,#3                ; [CPU_ALU] |345| 
        MOV       PL,AR4                ; [CPU_ALU] |345| 
        MOVL      XAR6,#390180          ; [CPU_ARAU] |345| 
        MOV       PH,#0                 ; [CPU_ALU] |345| 
        LSLL      ACC,T                 ; [CPU_ALU] |345| 
        MOVL      XAR4,#390180          ; [CPU_ARAU] |345| 
        NOT       ACC                   ; [CPU_ALU] |345| 
        AND       AL,*+XAR6[0]          ; [CPU_ALU] |345| 
        AND       AH,*+XAR6[1]          ; [CPU_ALU] |345| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        LSLL      ACC,T                 ; [CPU_ALU] |345| 
        MOVL      P,ACC                 ; [CPU_ALU] |345| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |345| 
        OR        AL,PL                 ; [CPU_ALU] |345| 
        OR        AH,PH                 ; [CPU_ALU] |345| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |345| 
	.dwpsn	file "../src_driver/memcfg.c",line 350,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |350| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x15f)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text:MemCfg_setGSRAMControllerSel"
	.clink
	.global	||MemCfg_setGSRAMControllerSel||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("MemCfg_setGSRAMControllerSel")
	.dwattr $C$DW$35, DW_AT_low_pc(||MemCfg_setGSRAMControllerSel||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("MemCfg_setGSRAMControllerSel")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x167)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 361,column 1,is_stmt,address ||MemCfg_setGSRAMControllerSel||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setGSRAMControllerSel||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("ramSections")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("controllerSel")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setGSRAMControllerSel  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setGSRAMControllerSel||:
;* AR6   assigned to ramSections
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("ramSections")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to controllerSel
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("controllerSel")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

;* PL    assigned to sectionNum
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("sectionNum")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |361| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |361| 
	.dwpsn	file "../src_driver/memcfg.c",line 372,column 5,is_stmt,isa 0
        AND       PH,#255               ; [CPU_ALU] |372| 
	.dwpsn	file "../src_driver/memcfg.c",line 377,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |377| 
        MOV       AL,AR4                ; [CPU_ALU] |377| 
	.dwpsn	file "../src_driver/memcfg.c",line 378,column 5,is_stmt,isa 0
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |378| 
        ; branchcc occurs ; [] |378| 
	.dwpsn	file "../src_driver/memcfg.c",line 380,column 9,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |380| 
        MOVL      XAR4,#390212          ; [CPU_ARAU] |380| 
        XOR       AH,#255               ; [CPU_ALU] |380| 
        XOR       AL,#65535             ; [CPU_ALU] |380| 
        OR        AH,#65280             ; [CPU_ALU] |380| 
        AND       *+XAR4[0],AL          ; [CPU_FPU] |380| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |380| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../src_driver/memcfg.c",line 384,column 9,is_stmt,isa 0
        MOVL      XAR4,#390212          ; [CPU_ARAU] |384| 
        MOV       AL,PL                 ; [CPU_ALU] |384| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |384| 
        MOV       AL,PH                 ; [CPU_ALU] |384| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |384| 
||$C$L23||:    
	.dwpsn	file "../src_driver/memcfg.c",line 386,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |386| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x183)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:MemCfg_lockConfig"
	.clink
	.global	||MemCfg_lockConfig||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("MemCfg_lockConfig")
	.dwattr $C$DW$42, DW_AT_low_pc(||MemCfg_lockConfig||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("MemCfg_lockConfig")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x34)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 53,column 1,is_stmt,address ||MemCfg_lockConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_lockConfig||
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("memSections")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_lockConfig             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_lockConfig||:
;* AR6   assigned to memSections
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("memSections")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |53| 
	.dwpsn	file "../src_driver/memcfg.c",line 65,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |65| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 67,column 5,is_stmt,isa 0
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |67| 
        MOVL      P,XAR6                ; [CPU_ALU] |67| 
        AND       PL,#0                 ; [CPU_ALU] |67| 
        AND       PH,#65280             ; [CPU_ALU] |67| 
        CMPL      ACC,P                 ; [CPU_ALU] |67| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |67| 
        ; branchcc occurs ; [] |67| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        B         ||$C$L27||,EQ         ; [CPU_ALU] |67| 
        ; branchcc occurs ; [] |67| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |67| 
        CMPL      ACC,P                 ; [CPU_ALU] |67| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |67| 
        ; branchcc occurs ; [] |67| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |67| 
        CMPL      ACC,P                 ; [CPU_ALU] |67| 
        B         ||$C$L25||,EQ         ; [CPU_ALU] |67| 
        ; branchcc occurs ; [] |67| 
        B         ||$C$L29||,UNC        ; [CPU_ALU] |67| 
        ; branch occurs ; [] |67| 
||$C$L24||:    
	.dwpsn	file "../src_driver/memcfg.c",line 88,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |88| 
        MOVL      XAR4,#390144          ; [CPU_ARAU] |88| 
	.dwpsn	file "../src_driver/memcfg.c",line 90,column 13,is_stmt,isa 0
        MOVL      XAR5,#390176          ; [CPU_ARAU] |90| 
	.dwpsn	file "../src_driver/memcfg.c",line 88,column 13,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |88| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |88| 
	.dwpsn	file "../src_driver/memcfg.c",line 90,column 13,is_stmt,isa 0
        MOVB      ACC,#63               ; [CPU_ALU] |90| 
	.dwpsn	file "../src_driver/memcfg.c",line 92,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |92| 
	.dwpsn	file "../src_driver/memcfg.c",line 90,column 13,is_stmt,isa 0
        OR        *+XAR5[0],AL          ; [CPU_ALU] |90| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |90| 
	.dwpsn	file "../src_driver/memcfg.c",line 92,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |92| 
        OR        AL,#65535             ; [CPU_ALU] |92| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |92| 
	.dwpsn	file "../src_driver/memcfg.c",line 94,column 13,is_stmt,isa 0
        B         ||$C$L29||,UNC        ; [CPU_ALU] |94| 
        ; branch occurs ; [] |94| 
||$C$L25||:    
	.dwpsn	file "../src_driver/memcfg.c",line 80,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |80| 
	.dwpsn	file "../src_driver/memcfg.c",line 82,column 13,is_stmt,isa 0
        B         ||$C$L28||,UNC        ; [CPU_ALU] |82| 
        ; branch occurs ; [] |82| 
||$C$L26||:    
	.dwpsn	file "../src_driver/memcfg.c",line 75,column 13,is_stmt,isa 0
        MOVL      XAR4,#390176          ; [CPU_ARAU] |75| 
	.dwpsn	file "../src_driver/memcfg.c",line 77,column 13,is_stmt,isa 0
        B         ||$C$L28||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L27||:    
	.dwpsn	file "../src_driver/memcfg.c",line 70,column 13,is_stmt,isa 0
        MOVL      XAR4,#390144          ; [CPU_ARAU] |70| 
||$C$L28||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] |70| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |70| 
        ANDB      AH,#255               ; [CPU_ALU] |70| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |70| 
||$C$L29||:    
	.dwpsn	file "../src_driver/memcfg.c",line 104,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |104| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x69)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:MemCfg_initSections"
	.clink
	.global	||MemCfg_initSections||

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$46, DW_AT_low_pc(||MemCfg_initSections||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("MemCfg_initSections")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 470,column 1,is_stmt,address ||MemCfg_initSections||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_initSections||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("ramSections")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_initSections           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_initSections||:
;* AR6   assigned to ramSections
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("ramSections")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |470| 
	.dwpsn	file "../src_driver/memcfg.c",line 484,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |484| 
	.dwpsn	file "../src_driver/memcfg.c",line 486,column 5,is_stmt,isa 0
        MOV       ACC,#512 << 15        ; [CPU_ALU] |486| 
        MOVL      P,XAR6                ; [CPU_ALU] |486| 
        AND       PL,#0                 ; [CPU_ALU] |486| 
        AND       PH,#65280             ; [CPU_ALU] |486| 
        CMPL      ACC,P                 ; [CPU_ALU] |486| 
        B         ||$C$L30||,LT         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        CMPL      ACC,P                 ; [CPU_ALU] |486| 
        B         ||$C$L34||,EQ         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |486| 
        CMPL      ACC,P                 ; [CPU_ALU] |486| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        B         ||$C$L35||,EQ         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] |486| 
        ; branch occurs ; [] |486| 
||$C$L30||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |486| 
        CMPL      ACC,P                 ; [CPU_ALU] |486| 
        B         ||$C$L33||,EQ         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |486| 
        CMPL      ACC,P                 ; [CPU_ALU] |486| 
        B         ||$C$L32||,EQ         ; [CPU_ALU] |486| 
        ; branchcc occurs ; [] |486| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] |486| 
        ; branch occurs ; [] |486| 
||$C$L31||:    
	.dwpsn	file "../src_driver/memcfg.c",line 512,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |512| 
        MOVL      XAR4,#390162          ; [CPU_ARAU] |512| 
	.dwpsn	file "../src_driver/memcfg.c",line 514,column 13,is_stmt,isa 0
        MOVL      XAR5,#390194          ; [CPU_ARAU] |514| 
	.dwpsn	file "../src_driver/memcfg.c",line 512,column 13,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |512| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |512| 
	.dwpsn	file "../src_driver/memcfg.c",line 514,column 13,is_stmt,isa 0
        MOVB      ACC,#63               ; [CPU_ALU] |514| 
	.dwpsn	file "../src_driver/memcfg.c",line 516,column 13,is_stmt,isa 0
        MOVL      XAR4,#390226          ; [CPU_ARAU] |516| 
	.dwpsn	file "../src_driver/memcfg.c",line 514,column 13,is_stmt,isa 0
        OR        *+XAR5[0],AL          ; [CPU_ALU] |514| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |514| 
	.dwpsn	file "../src_driver/memcfg.c",line 516,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |516| 
        OR        AL,#65535             ; [CPU_ALU] |516| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |516| 
	.dwpsn	file "../src_driver/memcfg.c",line 518,column 13,is_stmt,isa 0
        MOVB      ACC,#7                ; [CPU_ALU] |518| 
        MOVL      XAR4,#390258          ; [CPU_ARAU] |518| 
	.dwpsn	file "../src_driver/memcfg.c",line 520,column 13,is_stmt,isa 0
        B         ||$C$L37||,UNC        ; [CPU_ALU] |520| 
        ; branch occurs ; [] |520| 
||$C$L32||:    
	.dwpsn	file "../src_driver/memcfg.c",line 504,column 13,is_stmt,isa 0
        MOVL      XAR4,#390258          ; [CPU_ARAU] |504| 
	.dwpsn	file "../src_driver/memcfg.c",line 506,column 13,is_stmt,isa 0
        B         ||$C$L36||,UNC        ; [CPU_ALU] |506| 
        ; branch occurs ; [] |506| 
||$C$L33||:    
	.dwpsn	file "../src_driver/memcfg.c",line 499,column 13,is_stmt,isa 0
        MOVL      XAR4,#390226          ; [CPU_ARAU] |499| 
	.dwpsn	file "../src_driver/memcfg.c",line 501,column 13,is_stmt,isa 0
        B         ||$C$L36||,UNC        ; [CPU_ALU] |501| 
        ; branch occurs ; [] |501| 
||$C$L34||:    
	.dwpsn	file "../src_driver/memcfg.c",line 494,column 13,is_stmt,isa 0
        MOVL      XAR4,#390194          ; [CPU_ARAU] |494| 
	.dwpsn	file "../src_driver/memcfg.c",line 496,column 13,is_stmt,isa 0
        B         ||$C$L36||,UNC        ; [CPU_ALU] |496| 
        ; branch occurs ; [] |496| 
||$C$L35||:    
	.dwpsn	file "../src_driver/memcfg.c",line 489,column 13,is_stmt,isa 0
        MOVL      XAR4,#390162          ; [CPU_ARAU] |489| 
||$C$L36||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] |489| 
        ANDB      AH,#255               ; [CPU_ALU] |489| 
||$C$L37||:    
        OR        *+XAR4[0],AL          ; [CPU_ALU] |489| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |489| 
||$C$L38||:    
	.dwpsn	file "../src_driver/memcfg.c",line 530,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |530| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x213)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:MemCfg_getViolationAddress"
	.clink
	.global	||MemCfg_getViolationAddress||

$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("MemCfg_getViolationAddress")
	.dwattr $C$DW$50, DW_AT_low_pc(||MemCfg_getViolationAddress||)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_linkage_name("MemCfg_getViolationAddress")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$50, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0x264)
	.dwattr $C$DW$50, DW_AT_decl_column(0x01)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 613,column 1,is_stmt,address ||MemCfg_getViolationAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getViolationAddress||
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("intFlag")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getViolationAddress    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getViolationAddress||:
;* AR6   assigned to intFlag
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("intFlag")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to address
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("address")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to stsNumber
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("stsNumber")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |613| 
	.dwpsn	file "../src_driver/memcfg.c",line 620,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |620| 
        ANDB      AH,#15                ; [CPU_ALU] |620| 
        TEST      ACC                   ; [CPU_ALU] |620| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |620| 
        ; branchcc occurs ; [] |620| 
	.dwpsn	file "../src_driver/memcfg.c",line 628,column 9,is_stmt,isa 0
        MOVL      XAR4,#390344          ; [CPU_ARAU] |628| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        B         ||$C$L40||,UNC        ; [CPU_ALU] |631| 
        ; branch occurs ; [] |631| 
||$C$L39||:    
	.dwpsn	file "../src_driver/memcfg.c",line 622,column 9,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |622| 
        MOVU      ACC,AH                ; [CPU_ALU] |622| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |622| 
	.dwpsn	file "../src_driver/memcfg.c",line 623,column 9,is_stmt,isa 0
        MOVL      XAR4,#390376          ; [CPU_ARAU] |623| 
||$C$L40||:    
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L41||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L42||,HIS        ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |631| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../src_driver/memcfg.c",line 634,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |634| 
	.dwpsn	file "../src_driver/memcfg.c",line 631,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |631| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |631| 
        B         ||$C$L41||,LO         ; [CPU_ALU] |631| 
        ; branchcc occurs ; [] |631| 
||$C$L42||:    
	.dwpsn	file "../src_driver/memcfg.c",line 640,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |640| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$50, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x281)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text:MemCfg_getUncorrErrorAddress"
	.clink
	.global	||MemCfg_getUncorrErrorAddress||

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("MemCfg_getUncorrErrorAddress")
	.dwattr $C$DW$56, DW_AT_low_pc(||MemCfg_getUncorrErrorAddress||)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_linkage_name("MemCfg_getUncorrErrorAddress")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$56, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 678,column 1,is_stmt,address ||MemCfg_getUncorrErrorAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getUncorrErrorAddress||
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("stsFlag")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getUncorrErrorAddress  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getUncorrErrorAddress||:
;* AR4   assigned to address
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("address")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to temp
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("temp")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/memcfg.c",line 687,column 5,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |687| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 685,column 5,is_stmt,isa 0
        MOVL      XAR4,#390406          ; [CPU_ARAU] |685| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L43||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L44||,HIS        ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |689| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |689| 
	.dwpsn	file "../src_driver/memcfg.c",line 692,column 9,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |692| 
	.dwpsn	file "../src_driver/memcfg.c",line 689,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_FPU] |689| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |689| 
        B         ||$C$L43||,LO         ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
||$C$L44||:    
	.dwpsn	file "../src_driver/memcfg.c",line 698,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |698| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x2bb)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text:MemCfg_getInitStatus"
	.clink
	.global	||MemCfg_getInitStatus||

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$61, DW_AT_low_pc(||MemCfg_getInitStatus||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("MemCfg_getInitStatus")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$61, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 540,column 1,is_stmt,address ||MemCfg_getInitStatus||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getInitStatus||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("ramSections")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getInitStatus          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getInitStatus||:
;* PL    assigned to ramSections
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("ramSections")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg2]

;* AL    assigned to status
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("status")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      P,ACC                 ; [CPU_ALU] |540| 
	.dwpsn	file "../src_driver/memcfg.c",line 555,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |555| 
        AND       AH,#65280             ; [CPU_ALU] |555| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |555| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         ||$C$L45||,LT         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         ||$C$L46||,EQ         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L51||,EQ         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        B         ||$C$L47||,UNC        ; [CPU_ALU] |555| 
        ; branch occurs ; [] |555| 
||$C$L45||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         ||$C$L49||,EQ         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         ||$C$L48||,EQ         ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        B         ||$C$L47||,UNC        ; [CPU_ALU] |555| 
        ; branch occurs ; [] |555| 
||$C$L46||:    
	.dwpsn	file "../src_driver/memcfg.c",line 577,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |577| 
        MOVL      XAR4,#390164          ; [CPU_ARAU] |577| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |577| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |577| 
        ; branchcc occurs ; [] |577| 
        MOV       AL,#63                ; [CPU_ALU] |577| 
        MOV       AH,#256               ; [CPU_ALU] |577| 
        MOVL      XAR4,#390196          ; [CPU_ARAU] |577| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |577| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |577| 
        ; branchcc occurs ; [] |577| 
        MOV       AL,#65535             ; [CPU_ALU] |577| 
        MOV       AH,#512               ; [CPU_ALU] |577| 
        MOVL      XAR4,#390228          ; [CPU_ARAU] |577| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |577| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |577| 
        ; branchcc occurs ; [] |577| 
        MOV       AL,#7                 ; [CPU_ALU] |577| 
        MOV       AH,#768               ; [CPU_ALU] |577| 
        MOVL      XAR4,#390260          ; [CPU_ARAU] |577| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |577| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |577| 
        ; branchcc occurs ; [] |577| 
	.dwpsn	file "../src_driver/memcfg.c",line 586,column 17,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |586| 
        MOV       AH,#255               ; [CPU_ALU] |586| 
        B         ||$C$L53||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L47||:    
	.dwpsn	file "../src_driver/memcfg.c",line 599,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |599| 
	.dwpsn	file "../src_driver/memcfg.c",line 600,column 13,is_stmt,isa 0
        B         ||$C$L53||,UNC        ; [CPU_ALU] |600| 
        ; branch occurs ; [] |600| 
||$C$L48||:    
	.dwpsn	file "../src_driver/memcfg.c",line 570,column 13,is_stmt,isa 0
        MOVL      XAR4,#390260          ; [CPU_ARAU] |570| 
	.dwpsn	file "../src_driver/memcfg.c",line 571,column 13,is_stmt,isa 0
        B         ||$C$L52||,UNC        ; [CPU_ALU] |571| 
        ; branch occurs ; [] |571| 
||$C$L49||:    
	.dwpsn	file "../src_driver/memcfg.c",line 566,column 13,is_stmt,isa 0
        MOVL      XAR4,#390228          ; [CPU_ARAU] |566| 
	.dwpsn	file "../src_driver/memcfg.c",line 567,column 13,is_stmt,isa 0
        B         ||$C$L52||,UNC        ; [CPU_ALU] |567| 
        ; branch occurs ; [] |567| 
||$C$L50||:    
	.dwpsn	file "../src_driver/memcfg.c",line 562,column 13,is_stmt,isa 0
        MOVL      XAR4,#390196          ; [CPU_ARAU] |562| 
	.dwpsn	file "../src_driver/memcfg.c",line 563,column 13,is_stmt,isa 0
        B         ||$C$L52||,UNC        ; [CPU_ALU] |563| 
        ; branch occurs ; [] |563| 
||$C$L51||:    
	.dwpsn	file "../src_driver/memcfg.c",line 558,column 13,is_stmt,isa 0
        MOVL      XAR4,#390164          ; [CPU_ARAU] |558| 
||$C$L52||:    
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |558| 
||$C$L53||:    
	.dwpsn	file "../src_driver/memcfg.c",line 603,column 5,is_stmt,isa 0
        AND       AH,PH                 ; [CPU_ALU] |603| 
        AND       AL,PL                 ; [CPU_ALU] |603| 
        AND       PH,#255               ; [CPU_ALU] |603| 
        MOVB      XAR6,#0               ; [CPU_FPU] |603| 
        CMPL      ACC,P                 ; [CPU_ALU] |603| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |603| 
        MOV       AL,AR6                ; [CPU_ALU] |603| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x25c)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:MemCfg_getCorrErrorAddress"
	.clink
	.global	||MemCfg_getCorrErrorAddress||

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("MemCfg_getCorrErrorAddress")
	.dwattr $C$DW$66, DW_AT_low_pc(||MemCfg_getCorrErrorAddress||)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_linkage_name("MemCfg_getCorrErrorAddress")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$66, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0x289)
	.dwattr $C$DW$66, DW_AT_decl_column(0x01)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 650,column 1,is_stmt,address ||MemCfg_getCorrErrorAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getCorrErrorAddress||
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("stsFlag")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getCorrErrorAddress    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getCorrErrorAddress||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/memcfg.c",line 668,column 5,is_stmt,isa 0
        MOVL      XAR4,#390438          ; [CPU_ARAU] |668| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |668| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x29d)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:MemCfg_commitConfig"
	.clink
	.global	||MemCfg_commitConfig||

$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("MemCfg_commitConfig")
	.dwattr $C$DW$69, DW_AT_low_pc(||MemCfg_commitConfig||)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_linkage_name("MemCfg_commitConfig")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../src_driver/memcfg.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$69, DW_AT_decl_column(0x01)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/memcfg.c",line 177,column 1,is_stmt,address ||MemCfg_commitConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_commitConfig||
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_name("memSections")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_commitConfig           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||MemCfg_commitConfig||:
;* AR6   assigned to memSections
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("memSections")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |177| 
	.dwpsn	file "../src_driver/memcfg.c",line 190,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |190| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/memcfg.c",line 192,column 5,is_stmt,isa 0
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |192| 
        MOVL      P,XAR6                ; [CPU_ALU] |192| 
        AND       PL,#0                 ; [CPU_ALU] |192| 
        AND       PH,#65280             ; [CPU_ALU] |192| 
        CMPL      ACC,P                 ; [CPU_ALU] |192| 
        B         ||$C$L54||,EQ         ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        B         ||$C$L57||,EQ         ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |192| 
        CMPL      ACC,P                 ; [CPU_ALU] |192| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |192| 
        CMPL      ACC,P                 ; [CPU_ALU] |192| 
        B         ||$C$L55||,EQ         ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
        B         ||$C$L59||,UNC        ; [CPU_ALU] |192| 
        ; branch occurs ; [] |192| 
||$C$L54||:    
	.dwpsn	file "../src_driver/memcfg.c",line 214,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |214| 
        MOVL      XAR4,#390146          ; [CPU_ARAU] |214| 
	.dwpsn	file "../src_driver/memcfg.c",line 216,column 13,is_stmt,isa 0
        MOVL      XAR5,#390178          ; [CPU_ARAU] |216| 
	.dwpsn	file "../src_driver/memcfg.c",line 214,column 13,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |214| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |214| 
	.dwpsn	file "../src_driver/memcfg.c",line 216,column 13,is_stmt,isa 0
        MOVB      ACC,#63               ; [CPU_ALU] |216| 
	.dwpsn	file "../src_driver/memcfg.c",line 218,column 13,is_stmt,isa 0
        MOVL      XAR4,#390210          ; [CPU_ARAU] |218| 
	.dwpsn	file "../src_driver/memcfg.c",line 216,column 13,is_stmt,isa 0
        OR        *+XAR5[0],AL          ; [CPU_ALU] |216| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |216| 
	.dwpsn	file "../src_driver/memcfg.c",line 218,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |218| 
        OR        AL,#65535             ; [CPU_ALU] |218| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |218| 
	.dwpsn	file "../src_driver/memcfg.c",line 220,column 13,is_stmt,isa 0
        B         ||$C$L59||,UNC        ; [CPU_ALU] |220| 
        ; branch occurs ; [] |220| 
||$C$L55||:    
	.dwpsn	file "../src_driver/memcfg.c",line 205,column 13,is_stmt,isa 0
        MOVL      XAR4,#390210          ; [CPU_ARAU] |205| 
	.dwpsn	file "../src_driver/memcfg.c",line 207,column 13,is_stmt,isa 0
        B         ||$C$L58||,UNC        ; [CPU_ALU] |207| 
        ; branch occurs ; [] |207| 
||$C$L56||:    
	.dwpsn	file "../src_driver/memcfg.c",line 200,column 13,is_stmt,isa 0
        MOVL      XAR4,#390178          ; [CPU_ARAU] |200| 
	.dwpsn	file "../src_driver/memcfg.c",line 202,column 13,is_stmt,isa 0
        B         ||$C$L58||,UNC        ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
||$C$L57||:    
	.dwpsn	file "../src_driver/memcfg.c",line 195,column 13,is_stmt,isa 0
        MOVL      XAR4,#390146          ; [CPU_ARAU] |195| 
||$C$L58||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] |195| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |195| 
        ANDB      AH,#255               ; [CPU_ALU] |195| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |195| 
||$C$L59||:    
	.dwpsn	file "../src_driver/memcfg.c",line 230,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |230| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$69, DW_AT_TI_end_file("../src_driver/memcfg.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xe7)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69


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
$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_ONLY")
	.dwattr $C$DW$73, DW_AT_const_value(0x00)
	.dwattr $C$DW$73, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xff)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_CLA1")
	.dwattr $C$DW$74, DW_AT_const_value(0x01)
	.dwattr $C$DW$74, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x100)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("MemCfg_LSRAMControllerSel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$75	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)

$C$DW$T$21	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$75)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("MEMCFG_GSRAMCONTROLLER_CPU1")
	.dwattr $C$DW$76, DW_AT_const_value(0x00)
	.dwattr $C$DW$76, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("MEMCFG_GSRAMCONTROLLER_CPU2")
	.dwattr $C$DW$77, DW_AT_const_value(0x01)
	.dwattr $C$DW$77, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("MemCfg_GSRAMControllerSel")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$78	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)

$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$78)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("MEMCFG_TEST_FUNCTIONAL")
	.dwattr $C$DW$79, DW_AT_const_value(0x00)
	.dwattr $C$DW$79, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x118)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("MEMCFG_TEST_WRITE_DATA")
	.dwattr $C$DW$80, DW_AT_const_value(0x01)
	.dwattr $C$DW$80, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("MEMCFG_TEST_WRITE_ECC")
	.dwattr $C$DW$81, DW_AT_const_value(0x02)
	.dwattr $C$DW$81, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("MEMCFG_TEST_WRITE_PARITY")
	.dwattr $C$DW$82, DW_AT_const_value(0x02)
	.dwattr $C$DW$82, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("MemCfg_TestMode")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$83	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$26)

$C$DW$T$27	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$83)

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


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$29


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$84	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$29)

$C$DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$84)

	.dwendtag $C$DW$TU$43


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


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$44, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$44, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$44

