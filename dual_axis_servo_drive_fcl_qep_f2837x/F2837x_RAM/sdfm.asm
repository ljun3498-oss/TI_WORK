;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/sdfm.c")
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

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{8588D788-D435-4A80-A075-D8FFBDABA6DB} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{3A1CB8D0-D974-4C07-B7DC-A1A3F8AA897E} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{74EBB9E5-502E-4522-BDED-FD4F168C02A3} 
	.sect	".text:SDFM_configDataFilter"
	.clink
	.global	||SDFM_configDataFilter||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("SDFM_configDataFilter")
	.dwattr $C$DW$3, DW_AT_low_pc(||SDFM_configDataFilter||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("SDFM_configDataFilter")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/sdfm.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x85)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sdfm.c",line 134,column 1,is_stmt,address ||SDFM_configDataFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configDataFilter||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("base")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("config1")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("config2")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configDataFilter         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SDFM_configDataFilter||:
;* AR4   assigned to $O$C1
;* AR4   assigned to $O$C2
;* AR4   assigned to $O$K9
;* AR4   assigned to $O$U34
;* PL    assigned to base
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg2]

;* AR6   assigned to config1
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("config1")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg16]

;* AR5   assigned to config2
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("config2")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to filter
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("filter")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |134| 
        MOVL      P,ACC                 ; [CPU_ALU] |134| 
	.dwpsn	file "../src_driver/sdfm.c",line 139,column 5,is_stmt,isa 0
        AND       AL,AR6,#0x0003        ; [CPU_ALU] |139| 
        MOVZ      AR7,AL                ; [CPU_ALU] |139| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 417,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |417| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 418,column 5,is_stmt,isa 0
        MOV       ACC,AR7 << 4          ; [CPU_ALU] |418| 
        ADDL      ACC,P                 ; [CPU_ALU] |418| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |418| 
        MOVB      XAR0,#17              ; [CPU_ALU] |418| 
        AND       AL,AR6,#0x0030        ; [CPU_ALU] |418| 
        AND       AH,*+XAR4[AR0],#0xf3ff ; [CPU_ALU] |418| 
        LSL       AL,6                  ; [CPU_ALU] |418| 
        MOVB      XAR0,#17              ; [CPU_FPU] |418| 
        OR        AL,AH                 ; [CPU_ALU] |418| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |418| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 453,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |453| 
        MOV       AL,AR6                ; [CPU_ALU] |453| 
        LSR       AL,8                  ; [CPU_ALU] |453| 
        AND       AH,*+XAR4[AR0],#0xff00 ; [CPU_FPU] |453| 
        MOVB      XAR0,#17              ; [CPU_FPU] |453| 
        OR        AL,AH                 ; [CPU_ALU] |453| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |453| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 455,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |455| 
	.dwpsn	file "../src_driver/sdfm.c",line 164,column 5,is_stmt,isa 0
        TBIT      AR5,#1                ; [CPU_ALU] |164| 
        B         ||$C$L1||,TC          ; [CPU_ALU] |164| 
        ; branchcc occurs ; [] |164| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 385,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |385| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 386,column 5,is_stmt,isa 0
        MOVL      XAR6,XAR4             ; [CPU_ALU] |386| 
        ADDB      XAR6,#17              ; [CPU_ALU] |386| 
        AND       *+XAR6[0],#0xfeff     ; [CPU_ALU] |386| 
	.dwpsn	file "../src_driver/sdfm.c",line 170,column 9,is_stmt,isa 0
        B         ||$C$L2||,UNC         ; [CPU_ALU] |170| 
        ; branch occurs ; [] |170| 
||$C$L1||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 359,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |359| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 360,column 5,is_stmt,isa 0
        MOV       ACC,AR7 << 4          ; [CPU_ALU] |360| 
        ADDL      ACC,P                 ; [CPU_ALU] |360| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |360| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |360| 
        ADDB      XAR6,#17              ; [CPU_ALU] |360| 
        OR        *+XAR6[0],#0x0100     ; [CPU_ALU] |360| 
||$C$L2||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 362,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |362| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 519,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |519| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 520,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |520| 
        AND       AL,AR5,#0x0001        ; [CPU_ALU] |520| 
        AND       AH,*+XAR4[AR0],#0xfbff ; [CPU_ALU] |520| 
        LSL       AL,10                 ; [CPU_ALU] |520| 
        ADDB      XAR4,#18              ; [CPU_ALU] |520| 
        OR        AL,AH                 ; [CPU_ALU] |520| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |520| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 522,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |522| 
	.dwpsn	file "../src_driver/sdfm.c",line 182,column 5,is_stmt,isa 0
        TBIT      AR5,#0                ; [CPU_ALU] |182| 
        B         ||$C$L3||,TC          ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 555,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |555| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 556,column 5,is_stmt,isa 0
        AND       AL,AR5,#0x007c        ; [CPU_ALU] |556| 
        AND       AH,*+XAR4[0],#0x07ff  ; [CPU_ALU] |556| 
        LSL       AL,9                  ; [CPU_ALU] |556| 
        OR        AL,AH                 ; [CPU_ALU] |556| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |556| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 558,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |558| 
||$C$L3||:    
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/sdfm.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xba)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:SDFM_configComparator"
	.clink
	.global	||SDFM_configComparator||

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("SDFM_configComparator")
	.dwattr $C$DW$12, DW_AT_low_pc(||SDFM_configComparator||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("SDFM_configComparator")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../src_driver/sdfm.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x56)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sdfm.c",line 87,column 1,is_stmt,address ||SDFM_configComparator||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configComparator||
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("base")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("config1")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("config2")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SDFM_configComparator         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SDFM_configComparator||:
;* AR4   assigned to $O$C1
;* AR5   assigned to base
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to config1
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("config1")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

;* PL    assigned to config2
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("config2")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg2]

;* AH    assigned to filter
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("filter")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg1]

;* AR6   assigned to ratio
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("ratio")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg16]

;* AR7   assigned to filterType
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("filterType")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |87| 
	.dwpsn	file "../src_driver/sdfm.c",line 93,column 5,is_stmt,isa 0
        MOV       AL,AR4                ; [CPU_ALU] |93| 
        LSR       AL,8                  ; [CPU_ALU] |93| 
	.dwpsn	file "../src_driver/sdfm.c",line 92,column 5,is_stmt,isa 0
        AND       AH,AR4,#0x0003        ; [CPU_FPU] |92| 
	.dwpsn	file "../src_driver/sdfm.c",line 93,column 5,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_ALU] |93| 
	.dwpsn	file "../src_driver/sdfm.c",line 87,column 1,is_stmt,isa 0
        MOVL      P,*-SP[4]             ; [CPU_ALU] |87| 
	.dwpsn	file "../src_driver/sdfm.c",line 94,column 5,is_stmt,isa 0
        AND       AL,AR4,#0x0030        ; [CPU_ALU] |94| 
        MOVZ      AR7,AL                ; [CPU_ALU] |94| 
        MOV       AL,AR6                ; [CPU_ALU] |94| 
	.dwpsn	file "../src_driver/sdfm.c",line 99,column 5,is_stmt,isa 0
        CMPB      AL,#31                ; [CPU_ALU] |99| 
	.dwpsn	file "../src_driver/sdfm.c",line 101,column 9,is_stmt,isa 0
        MOVB      XAR6,#31,HI           ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 770,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |770| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 771,column 5,is_stmt,isa 0
        MOV       ACC,AH << 4           ; [CPU_ALU] |771| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |771| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |771| 
        MOVB      XAR0,#21              ; [CPU_ALU] |771| 
        AND       AL,*+XAR4[AR0],#0xfe7f ; [CPU_ALU] |771| 
        MOVZ      AR5,AL                ; [CPU_ALU] |771| 
        MOVB      XAR0,#21              ; [CPU_ALU] |771| 
        MOV       ACC,AR7 << #3         ; [CPU_ALU] |771| 
        OR        AL,AR5                ; [CPU_ALU] |771| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |771| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 807,column 5,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |807| 
        AND       AL,*+XAR4[AR0],#0xffe0 ; [CPU_ALU] |807| 
        MOVB      XAR0,#21              ; [CPU_ALU] |807| 
        OR        AL,AR6                ; [CPU_ALU] |807| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOVB      XAR0,#19              ; [CPU_ALU] |592| 
        AND       AL,*+XAR4[AR0],#0x8000 ; [CPU_ALU] |592| 
        MOVB      XAR0,#19              ; [CPU_ALU] |592| 
        OR        AL,PH                 ; [CPU_ALU] |592| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |592| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |627| 
        AND       AL,*+XAR4[AR0],#0x8000 ; [CPU_ALU] |627| 
        MOVB      XAR0,#20              ; [CPU_ALU] |627| 
        OR        PL,AL                 ; [CPU_ALU] |627| 
        MOV       *+XAR4[AR0],P         ; [CPU_ALU] |627| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 628,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |628| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../src_driver/sdfm.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12


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
$C$DW$23	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$23, DW_AT_name("SDFM_FILTER_1")
	.dwattr $C$DW$23, DW_AT_const_value(0x00)
	.dwattr $C$DW$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x82)
	.dwattr $C$DW$23, DW_AT_decl_column(0x05)

$C$DW$24	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$24, DW_AT_name("SDFM_FILTER_2")
	.dwattr $C$DW$24, DW_AT_const_value(0x01)
	.dwattr $C$DW$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x83)
	.dwattr $C$DW$24, DW_AT_decl_column(0x05)

$C$DW$25	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$25, DW_AT_name("SDFM_FILTER_3")
	.dwattr $C$DW$25, DW_AT_const_value(0x02)
	.dwattr $C$DW$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x84)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)

$C$DW$26	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$26, DW_AT_name("SDFM_FILTER_4")
	.dwattr $C$DW$26, DW_AT_const_value(0x03)
	.dwattr $C$DW$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x85)
	.dwattr $C$DW$26, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SDFM_FilterNumber")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$27	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$27, DW_AT_name("SDFM_FILTER_SINC_FAST")
	.dwattr $C$DW$27, DW_AT_const_value(0x00)
	.dwattr $C$DW$27, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x91)
	.dwattr $C$DW$27, DW_AT_decl_column(0x05)

$C$DW$28	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$28, DW_AT_name("SDFM_FILTER_SINC_1")
	.dwattr $C$DW$28, DW_AT_const_value(0x10)
	.dwattr $C$DW$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x93)
	.dwattr $C$DW$28, DW_AT_decl_column(0x05)

$C$DW$29	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$29, DW_AT_name("SDFM_FILTER_SINC_2")
	.dwattr $C$DW$29, DW_AT_const_value(0x20)
	.dwattr $C$DW$29, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x95)
	.dwattr $C$DW$29, DW_AT_decl_column(0x05)

$C$DW$30	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$30, DW_AT_name("SDFM_FILTER_SINC_3")
	.dwattr $C$DW$30, DW_AT_const_value(0x30)
	.dwattr $C$DW$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x97)
	.dwattr $C$DW$30, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("SDFM_FilterType")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$31	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$31, DW_AT_name("SDFM_DATA_FORMAT_16_BIT")
	.dwattr $C$DW$31, DW_AT_const_value(0x00)
	.dwattr $C$DW$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$31, DW_AT_decl_column(0x04)

$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("SDFM_DATA_FORMAT_32_BIT")
	.dwattr $C$DW$32, DW_AT_const_value(0x01)
	.dwattr $C$DW$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$32, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("SDFM_OutputDataFormat")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xb8)
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


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$30


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$33	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$30)

$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$33)

	.dwendtag $C$DW$TU$39


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


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$34	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$26)

$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$34)

	.dwendtag $C$DW$TU$41


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

