;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:17 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("FCL_initADC_3I")
	.dwattr $C$DW$1, DW_AT_linkage_name("FCL_initADC_3I")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$116)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$21)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$104)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$104)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$104)

	.dwendtag $C$DW$1


$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("FCL_initPWM")
	.dwattr $C$DW$10, DW_AT_linkage_name("FCL_initPWM")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$10, DW_AT_decl_column(0x0d)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$116)

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)

	.dwendtag $C$DW$10


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("FCL_initQEP")
	.dwattr $C$DW$15, DW_AT_linkage_name("FCL_initQEP")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$15, DW_AT_decl_column(0x0d)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$116)

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$128)

	.dwendtag $C$DW$15

	.global	||offsetCalCounter||
	.data
	.align	1
	.elfsym	||offsetCalCounter||,SYM_SIZE(1),SYM_BLOCKED(1)
||offsetCalCounter||:
	.bits		0,16
			; offsetCalCounter @ 0

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("offsetCalCounter")
	.dwattr $C$DW$18, DW_AT_linkage_name("offsetCalCounter")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr ||offsetCalCounter||]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$18, DW_AT_decl_column(0x0a)

	.global	||K1||
	.data
	.align	2
	.elfsym	||K1||,SYM_SIZE(2),SYM_BLOCKED(1)
||K1||:
	.xfloat	$strtod("0x1.fef9dcp-1")		; K1 @ 0

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("K1")
	.dwattr $C$DW$19, DW_AT_linkage_name("K1")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr ||K1||]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$19, DW_AT_decl_column(0x0b)

	.global	||K2||
	.data
	.align	2
	.elfsym	||K2||,SYM_SIZE(2),SYM_BLOCKED(1)
||K2||:
	.xfloat	$strtod("0x1.06035p-9")		; K2 @ 0

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("K2")
	.dwattr $C$DW$20, DW_AT_linkage_name("K2")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr ||K2||]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0b)

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("halMtr")
	.dwattr $C$DW$21, DW_AT_linkage_name("halMtr")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$21, DW_AT_decl_column(0x17)

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("fclVars")
	.dwattr $C$DW$22, DW_AT_linkage_name("fclVars")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$22, DW_AT_decl_column(0x13)

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("motorVars")
	.dwattr $C$DW$23, DW_AT_linkage_name("motorVars")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$23, DW_AT_decl_column(0x15)

	.sblock	".data"
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{0E85D3E7-9747-4C0B-9D5E-8727D8E65BED} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{139C05D9-AB97-470C-9192-BFDB0AF0EAFF} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{3ACD23E3-A14B-4FC3-AFC0-A4B17CC8A192} 
	.sect	".text:runOffsetsCalculation"
	.clink
	.global	||runOffsetsCalculation||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$24, DW_AT_low_pc(||runOffsetsCalculation||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("runOffsetsCalculation")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x184)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 389,column 1,is_stmt,address ||runOffsetsCalculation||,isa 0

	.dwfde $C$DW$CIE, ||runOffsetsCalculation||
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("pMotor")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: runOffsetsCalculation         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||runOffsetsCalculation||:
;* R1    assigned to $O$v2
;* R1    assigned to $O$v2
;* R0    assigned to $O$v1
;* R0    assigned to $O$v1
;* AL    assigned to $O$K7
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AL    assigned to $O$R4
;* AL    assigned to $O$R7
;* AL    assigned to $O$R8
;* AL    assigned to $O$R9
;* AR4   assigned to pMotor
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("pMotor")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]

;* R0    assigned to vdc
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("vdc")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to vdc
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("vdc")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 395,column 5,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |395| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 391,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |391| 
        ZERO      R0H                   ; [CPU_FPU] |391| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 392,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |392| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 395,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |395| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 392,column 5,is_stmt,isa 0
        MOVB      XAR1,#36              ; [CPU_ALU] |392| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 395,column 5,is_stmt,isa 0
        CMPL      ACC,XAR4              ; [CPU_ALU] |395| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 391,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |391| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 393,column 5,is_stmt,isa 0
        MOVB      XAR0,#38              ; [CPU_ALU] |393| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 392,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |392| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 393,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |393| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 395,column 5,is_stmt,isa 0
        B         ||$C$L4||,EQ          ; [CPU_ALU] |395| 
        ; branchcc occurs ; [] |395| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 440,column 10,is_stmt,isa 0
        ADD       ACC,#83 << 2          ; [CPU_ALU] |440| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |440| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |440| 
        ; branchcc occurs ; [] |440| 
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 442,column 13,is_stmt,isa 0
        MOV       @||offsetCalCounter||,#0 ; [CPU_ALU] |442| 
||$C$L1||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        MOVW      DP,#||halMtr||+18     ; [CPU_ARAU] 
        ADDL      ACC,@||halMtr||+18    ; [CPU_ALU] |4872| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4872| 
        OR        *+XAR5[0],#0x0001     ; [CPU_ALU] |4872| 
||$C$L2||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4847,column 5,is_stmt,isa 0
        MOVB      ACC,#168              ; [CPU_ALU] |4847| 
        ADDL      ACC,@||halMtr||+18    ; [CPU_ALU] |4847| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4847| 
        TBIT      *+XAR5[0],#0          ; [CPU_ALU] |4847| 
        B         ||$C$L2||,NTC         ; [CPU_ALU] |4847| 
        ; branchcc occurs ; [] |4847| 
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 448,column 13,is_stmt,isa 0
        CMP       @||offsetCalCounter||,#1000 ; [CPU_ALU] |448| 
        B         ||$C$L3||,LOS         ; [CPU_ALU] |448| 
        ; branchcc occurs ; [] |448| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b41)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 451,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |451| 
        MOV32     R3H,ACC               ; [CPU_FPU] |451| 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#34              ; [CPU_ALU] |451| 
        MOV32     R1H,@||K2||           ; [CPU_FPU] |451| 
        MOVB      XAR1,#50              ; [CPU_ALU] |451| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |451| 
        MOV32     R0H,@||K1||           ; [CPU_FPU] |451| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |451| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |451| 

        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |451| 
||      MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |451| 

        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |451| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |451| 
        MOVB      XAR0,#34              ; [CPU_ALU] |451| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |451| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b21)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 454,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |454| 
        MOV32     R3H,ACC               ; [CPU_FPU] |454| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR1,#50              ; [CPU_ALU] |454| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |454| 
        MOVB      XAR0,#36              ; [CPU_ALU] |454| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |454| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |454| 

        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |454| 
||      MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |454| 

        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |454| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |454| 
        MOVB      XAR0,#36              ; [CPU_ALU] |454| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b01)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 457,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |457| 
        MOV32     R3H,ACC               ; [CPU_FPU] |457| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR1,#50              ; [CPU_ALU] |457| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |457| 
        MOVB      XAR0,#38              ; [CPU_ALU] |457| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |457| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |457| 

        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |457| 
||      MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |457| 

        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |457| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |457| 
        MOVB      XAR0,#38              ; [CPU_ALU] |457| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |457| 
||$C$L3||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 442,column 61,is_stmt,isa 0
        INC       @||offsetCalCounter|| ; [CPU_ALU] |442| 
        CMP       @||offsetCalCounter||,#20000 ; [CPU_ALU] |442| 
        B         ||$C$L1||,LO          ; [CPU_ALU] |442| 
        ; branchcc occurs ; [] |442| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR0,#72              ; [CPU_ALU] |223| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 465,column 9,is_stmt,isa 0
        MOVL      XAR1,#274             ; [CPU_ALU] |465| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |223| 
        UI16TOF32 R1H,*+XAR5[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R0H,R4H,R1H           ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 465,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |465| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOV       *(0:0x754b),AL        ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#38              ; [CPU_ALU] |1545| 
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
        MOV       *(0:0x74cb),AL        ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
        MOVB      AH,#0                 ; [CPU_ALU] |1545| 
        MOV       *(0:0x744b),AL        ; [CPU_ALU] |1545| 
        MOV       *(0:0x75cb),AH        ; [CPU_ALU] |1545| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 483,column 9,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |483| 
        ; branch occurs ; [] |483| 
||$C$L4||:    
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 397,column 13,is_stmt,isa 0
        MOV       @||offsetCalCounter||,#0 ; [CPU_ALU] |397| 
||$C$L5||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        MOVW      DP,#||halMtr||        ; [CPU_ARAU] 
        ADDL      ACC,@||halMtr||       ; [CPU_ALU] |4872| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4872| 
        OR        *+XAR5[0],#0x0001     ; [CPU_ALU] |4872| 
||$C$L6||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4847,column 5,is_stmt,isa 0
        MOVB      ACC,#168              ; [CPU_ALU] |4847| 
        ADDL      ACC,@||halMtr||       ; [CPU_ALU] |4847| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4847| 
        TBIT      *+XAR5[0],#0          ; [CPU_ALU] |4847| 
        B         ||$C$L6||,NTC         ; [CPU_ALU] |4847| 
        ; branchcc occurs ; [] |4847| 
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 403,column 13,is_stmt,isa 0
        CMP       @||offsetCalCounter||,#1000 ; [CPU_ALU] |403| 
        B         ||$C$L7||,LOS         ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b40)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 406,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |406| 
        MOV32     R3H,ACC               ; [CPU_FPU] |406| 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#34              ; [CPU_ALU] |406| 
        MOV32     R1H,@||K2||           ; [CPU_FPU] |406| 
        MOVB      XAR1,#50              ; [CPU_ALU] |406| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |406| 
        MOV32     R0H,@||K1||           ; [CPU_FPU] |406| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |406| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |406| 

        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |406| 
||      MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |406| 

        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |406| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |406| 
        MOVB      XAR0,#34              ; [CPU_ALU] |406| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |406| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b20)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 409,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |409| 
        MOV32     R3H,ACC               ; [CPU_FPU] |409| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR1,#50              ; [CPU_ALU] |409| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |409| 
        MOVB      XAR0,#36              ; [CPU_ALU] |409| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |409| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |409| 

        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |409| 
||      MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |409| 

        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |409| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |409| 
        MOVB      XAR0,#36              ; [CPU_ALU] |409| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |409| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b00)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 412,column 17,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |412| 
        MOV32     R3H,ACC               ; [CPU_FPU] |412| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR1,#50              ; [CPU_ALU] |412| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |412| 
        MOVB      XAR0,#38              ; [CPU_ALU] |412| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |412| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |412| 

        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |412| 
||      MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |412| 

        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |412| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |412| 
        MOVB      XAR0,#38              ; [CPU_ALU] |412| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |412| 
||$C$L7||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 397,column 61,is_stmt,isa 0
        INC       @||offsetCalCounter|| ; [CPU_ALU] |397| 
        CMP       @||offsetCalCounter||,#20000 ; [CPU_ALU] |397| 
        B         ||$C$L5||,LO          ; [CPU_ALU] |397| 
        ; branchcc occurs ; [] |397| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR0,#72              ; [CPU_ALU] |223| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 420,column 9,is_stmt,isa 0
        MOVL      XAR1,#274             ; [CPU_ALU] |420| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |223| 
        UI16TOF32 R1H,*+XAR5[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R0H,R4H,R1H           ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |1545| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 420,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |420| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOV       *(0:0x7543),AL        ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#38              ; [CPU_ALU] |1545| 
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
        MOV       *(0:0x74c3),AL        ; [CPU_ALU] |1545| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1545| 
        MPYF32    R0H,R0H,#17792        ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R0H               ; [CPU_FPU] |1545| 
        MOVB      AH,#0                 ; [CPU_ALU] |1545| 
        MOV       *(0:0x7443),AL        ; [CPU_ALU] |1545| 
        MOV       *(0:0x75c3),AH        ; [CPU_ALU] |1545| 
||$C$L8||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 486,column 5,is_stmt,isa 0
        MOVL      XAR0,#330             ; [CPU_ALU] |486| 
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |486| 
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 59
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:resetControlVars"
	.clink
	.global	||resetControlVars||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("resetControlVars")
	.dwattr $C$DW$30, DW_AT_low_pc(||resetControlVars||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("resetControlVars")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x166)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 359,column 1,is_stmt,address ||resetControlVars||,isa 0

	.dwfde $C$DW$CIE, ||resetControlVars||
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("pMotor")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: resetControlVars              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||resetControlVars||:
;* AR4   assigned to pMotor
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("pMotor")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 369,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 362,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 369,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 362,column 5,is_stmt,isa 0
        MOVB      XAR0,#172             ; [CPU_ALU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 371,column 5,is_stmt,isa 0
        MOVB      ACC,#40               ; [CPU_ALU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 362,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 363,column 5,is_stmt,isa 0
        MOVB      XAR0,#170             ; [CPU_ALU] |363| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 366,column 5,is_stmt,isa 0
        MOVB      XAR0,#84              ; [CPU_ALU] |366| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |366| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 365,column 5,is_stmt,isa 0
        MOVB      XAR0,#88              ; [CPU_ALU] |365| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |365| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 367,column 5,is_stmt,isa 0
        MOVB      XAR0,#86              ; [CPU_ALU] |367| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |367| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 371,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 369,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 371,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |371| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 360,column 5,is_stmt,isa 0
        MOVL      XAR1,#326             ; [CPU_ALU] |360| 
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |360| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 372,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |372| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 371,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 372,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |372| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |372| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 374,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 372,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |372| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 374,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |374| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 375,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |375| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 374,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 375,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |375| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |375| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 376,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 375,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |375| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 376,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |376| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 378,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |378| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 376,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 378,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |378| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |378| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |378| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x17d)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:initMotorParameters"
	.clink
	.global	||initMotorParameters||

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$34, DW_AT_low_pc(||initMotorParameters||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("initMotorParameters")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x43)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 68,column 1,is_stmt,address ||initMotorParameters||,isa 0

	.dwfde $C$DW$CIE, ||initMotorParameters||
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("pMotor")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("mtrHandle")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: initMotorParameters           FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            9 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||initMotorParameters||:
;* AR4   assigned to $O$C7
;* AR4   assigned to $O$C8
;* AL    assigned to $O$K3
;* AR2   assigned to pMotor
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("pMotor")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to mtrHandle
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("mtrHandle")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
        MOVL      XAR2,XAR4             ; [CPU_ALU] |68| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 71,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |71| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 68,column 1,is_stmt,isa 0
        MOVL      XAR3,XAR5             ; [CPU_ALU] |68| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 71,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |71| 
        CMPL      ACC,XAR2              ; [CPU_ALU] |71| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 163,column 10,is_stmt,isa 0
        ADD       ACC,#83 << 2          ; [CPU_ALU] |163| 
        CMPL      ACC,XAR2              ; [CPU_ALU] |163| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |163| 
        ; branchcc occurs ; [] |163| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 165,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |165| 
        MOVL      XAR4,#||fclVars||+82  ; [CPU_ARAU] |165| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 175,column 9,is_stmt,isa 0
        MOVIZ     R0H,#19737            ; [CPU_FPU] |175| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 185,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16349            ; [CPU_FPU] |185| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 165,column 9,is_stmt,isa 0
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |165| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 175,column 9,is_stmt,isa 0
        MOVXI     R0H,#8192             ; [CPU_FPU] |175| 
        MOVB      XAR0,#250             ; [CPU_ALU] |175| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 194,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16728            ; [CPU_FPU] |194| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 185,column 9,is_stmt,isa 0
        MOVXI     R3H,#46039            ; [CPU_FPU] |185| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 175,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |175| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 185,column 9,is_stmt,isa 0
        MOVB      XAR0,#250             ; [CPU_ALU] |185| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |185| 
        MPYF32    R0H,R3H,R1H           ; [CPU_FPU] |185| 
        MOVB      XAR0,#254             ; [CPU_ALU] |185| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |185| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 169,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16912            ; [CPU_FPU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 194,column 9,is_stmt,isa 0
        MOVL      XAR0,#268             ; [CPU_ALU] |194| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 170,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16544            ; [CPU_FPU] |170| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 194,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |194| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 200,column 9,is_stmt,isa 0
        MOVB      ACC,#66               ; [CPU_ALU] |200| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 169,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |169| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 183,column 9,is_stmt,isa 0
        MOVIZ     R2H,#47616            ; [CPU_FPU] |183| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 170,column 9,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |170| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 188,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14545            ; [CPU_FPU] |188| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 170,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |170| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 183,column 9,is_stmt,isa 0
        MOVB      XAR0,#252             ; [CPU_ALU] |183| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 189,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16067            ; [CPU_FPU] |189| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 188,column 9,is_stmt,isa 0
        MOVXI     R3H,#46871            ; [CPU_FPU] |188| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 183,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |183| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 188,column 9,is_stmt,isa 0
        MOVL      XAR0,#256             ; [CPU_ALU] |188| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 189,column 9,is_stmt,isa 0
        MOVXI     R1H,#15953            ; [CPU_FPU] |189| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 190,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16067            ; [CPU_FPU] |190| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 188,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |188| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 189,column 9,is_stmt,isa 0
        MOVL      XAR0,#258             ; [CPU_ALU] |189| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 191,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14642            ; [CPU_FPU] |191| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 190,column 9,is_stmt,isa 0
        MOVXI     R2H,#15953            ; [CPU_FPU] |190| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 189,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |189| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 190,column 9,is_stmt,isa 0
        MOVL      XAR0,#260             ; [CPU_ALU] |190| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 191,column 9,is_stmt,isa 0
        MOVXI     R3H,#2594             ; [CPU_FPU] |191| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 192,column 9,is_stmt,isa 0
        MOVIZ     R1H,#14642            ; [CPU_FPU] |192| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 190,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |190| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 191,column 9,is_stmt,isa 0
        MOVL      XAR0,#262             ; [CPU_ALU] |191| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 193,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16204            ; [CPU_FPU] |193| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 192,column 9,is_stmt,isa 0
        MOVXI     R1H,#2594             ; [CPU_FPU] |192| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 191,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |191| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 192,column 9,is_stmt,isa 0
        MOVL      XAR0,#264             ; [CPU_ALU] |192| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 193,column 9,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |193| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 195,column 9,is_stmt,isa 0
        MOVIZ     R3H,#17604            ; [CPU_FPU] |195| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 192,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |192| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 193,column 9,is_stmt,isa 0
        MOVL      XAR0,#276             ; [CPU_ALU] |193| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 196,column 9,is_stmt,isa 0
        MOVIZ     R1H,#17437            ; [CPU_FPU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 195,column 9,is_stmt,isa 0
        MOVXI     R3H,#22908            ; [CPU_FPU] |195| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 193,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |193| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 195,column 9,is_stmt,isa 0
        MOVL      XAR0,#278             ; [CPU_ALU] |195| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 196,column 9,is_stmt,isa 0
        MOVXI     R1H,#5219             ; [CPU_FPU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 197,column 9,is_stmt,isa 0
        MOVIZ     R2H,#17437            ; [CPU_FPU] |197| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 195,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |195| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 196,column 9,is_stmt,isa 0
        MOVL      XAR0,#270             ; [CPU_ALU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 167,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14545            ; [CPU_FPU] |167| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 197,column 9,is_stmt,isa 0
        MOVXI     R2H,#5219             ; [CPU_FPU] |197| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 196,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 197,column 9,is_stmt,isa 0
        MOVL      XAR0,#272             ; [CPU_ALU] |197| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 167,column 9,is_stmt,isa 0
        MOVXI     R3H,#46871            ; [CPU_FPU] |167| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 173,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16250            ; [CPU_FPU] |173| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 197,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |197| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 167,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |167| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 173,column 9,is_stmt,isa 0
        MOVXI     R1H,#57672            ; [CPU_FPU] |173| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 167,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |167| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 173,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |173| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |173| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 200,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |200| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |200| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |200| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 201,column 9,is_stmt,isa 0
        MOVL      XAR1,#280             ; [CPU_ALU] |201| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 200,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#1000       ; [CPU_ALU] |200| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 201,column 9,is_stmt,isa 0
        MOVL      XAR4,*+XAR2[AR1]      ; [CPU_ALU] |201| 
        MOVB      XAR0,#66              ; [CPU_ALU] |201| 
        UI16TOF32 R0H,*+XAR4[AR0]       ; [CPU_FPU] |201| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R2H,#16000            ; [CPU_FPU] |201| 
        DIVF32    R0H,R2H,R0H           ; [CPU_FPU] |201| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 204,column 9,is_stmt,isa 0
        MOVB      ACC,#67               ; [CPU_ALU] |204| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 201,column 9,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |201| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |201| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 204,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |204| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |204| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |204| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 224,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16672            ; [CPU_FPU] |224| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 205,column 9,is_stmt,isa 0
        MOVB      ACC,#68               ; [CPU_ALU] |205| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 204,column 9,is_stmt,isa 0
        MOVB      *+XAR4[0],#4,UNC      ; [CPU_ALU] |204| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 205,column 9,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |205| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 213,column 9,is_stmt,isa 0
        MOVB      XAR0,#152             ; [CPU_ALU] |213| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 205,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |205| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 223,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16968            ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 222,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16672            ; [CPU_FPU] |222| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 205,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |205| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |205| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 213,column 9,is_stmt,isa 0
        MOVL      XAR4,#3720            ; [CPU_ARAU] |213| 
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |213| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 222,column 9,is_stmt,isa 0
        MOVL      XAR0,#300             ; [CPU_ALU] |222| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |222| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 223,column 9,is_stmt,isa 0
        MOVL      XAR0,#302             ; [CPU_ALU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 216,column 9,is_stmt,isa 0
        MOVIZ     R3H,#15320            ; [CPU_FPU] |216| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 223,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 224,column 9,is_stmt,isa 0
        MOVL      XAR0,#304             ; [CPU_ALU] |224| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 217,column 9,is_stmt,isa 0
        MOVIZ     R1H,#15508            ; [CPU_FPU] |217| 
        MOVXI     R1H,#13107            ; [CPU_FPU] |217| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 224,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |224| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 216,column 9,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |216| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 218,column 9,is_stmt,isa 0
        MOVIZ     R2H,#14720            ; [CPU_FPU] |218| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 216,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |216| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 217,column 9,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |217| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |217| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 218,column 9,is_stmt,isa 0
        MOVB      XAR0,#50              ; [CPU_ALU] |218| 
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |218| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 208,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |208| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |208| 
        MPYF32    R0H,R0H,#17274        ; [CPU_FPU] |208| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R3H,#16256            ; [CPU_FPU] |208| 
        DIVF32    R0H,R3H,R0H           ; [CPU_FPU] |208| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16585            ; [CPU_FPU] |211| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 208,column 9,is_stmt,isa 0
        MOVB      XAR0,#154             ; [CPU_ALU] |208| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |208| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |211| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |211| 
        MPYF32    R0H,R2H,R1H           ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 246,column 9,is_stmt,isa 0
        MOVL      XAR5,#2816            ; [CPU_ARAU] |246| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        MPYF32    R0H,R0H,#16544        ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 246,column 9,is_stmt,isa 0
        MOV       ACC,#29696            ; [CPU_ALU] |246| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 246,column 9,is_stmt,isa 0
        MOVL      XAR6,#2848            ; [CPU_ARAU] |246| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |211| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 246,column 9,is_stmt,isa 0
        MOVL      XAR4,#2880            ; [CPU_ARAU] |246| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 219,column 9,is_stmt,isa 0
        MOVIZ     R3H,#17175            ; [CPU_FPU] |219| 
        MOVXI     R3H,#46118            ; [CPU_FPU] |219| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 211,column 9,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |211| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |211| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 212,column 9,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |212| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |212| 
        SUBF32    R0H,#16256,R0H        ; [CPU_FPU] |212| 
        MOVB      XAR0,#158             ; [CPU_ALU] |212| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |212| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 226,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |226| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 220,column 9,is_stmt,isa 0
        MOVIZ     R0H,#16989            ; [CPU_FPU] |220| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 226,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#26,UNC   ; [CPU_ALU] |226| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 227,column 9,is_stmt,isa 0
        MOVL      XAR0,#321             ; [CPU_ALU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 220,column 9,is_stmt,isa 0
        MOVXI     R0H,#6987             ; [CPU_FPU] |220| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 227,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#14,UNC   ; [CPU_ALU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 228,column 9,is_stmt,isa 0
        MOVL      XAR0,#322             ; [CPU_ALU] |228| 
        MOVB      *+XAR2[AR0],#66,UNC   ; [CPU_ALU] |228| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 230,column 9,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |230| 
        MOV       *+XAR2[AR0],#2806     ; [CPU_ALU] |230| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 233,column 9,is_stmt,isa 0
        MOVL      XAR0,#319             ; [CPU_ALU] |233| 
        MOV       *+XAR2[AR0],#1290     ; [CPU_ALU] |233| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 219,column 9,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |219| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |219| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 220,column 9,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_ALU] |220| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |220| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 246,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |246| 
        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |246| 
        MOVB      XAR5,#1               ; [CPU_ALU] |246| 
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |246| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |246| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |246| 
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |246| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("FCL_initADC_3I")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||FCL_initADC_3I||   ; [CPU_ALU] |246| 
        ; call occurs [#||FCL_initADC_3I||] ; [] |246| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 251,column 9,is_stmt,isa 0
        MOVL      XAR4,#2930            ; [CPU_ARAU] |251| 
        B         ||$C$L10||,UNC        ; [CPU_ALU] |251| 
        ; branch occurs ; [] |251| 
||$C$L9||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 73,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |73| 
        MOVL      XAR4,#||fclVars||     ; [CPU_ARAU] |73| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 83,column 9,is_stmt,isa 0
        MOVIZ     R0H,#19737            ; [CPU_FPU] |83| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 93,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16349            ; [CPU_FPU] |93| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 73,column 9,is_stmt,isa 0
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |73| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 83,column 9,is_stmt,isa 0
        MOVXI     R0H,#8192             ; [CPU_FPU] |83| 
        MOVB      XAR0,#250             ; [CPU_ALU] |83| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 102,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16728            ; [CPU_FPU] |102| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 93,column 9,is_stmt,isa 0
        MOVXI     R3H,#46039            ; [CPU_FPU] |93| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 83,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |83| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 93,column 9,is_stmt,isa 0
        MOVB      XAR0,#250             ; [CPU_ALU] |93| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |93| 
        MPYF32    R0H,R3H,R1H           ; [CPU_FPU] |93| 
        MOVB      XAR0,#254             ; [CPU_ALU] |93| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |93| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 77,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16912            ; [CPU_FPU] |77| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 102,column 9,is_stmt,isa 0
        MOVL      XAR0,#268             ; [CPU_ALU] |102| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 78,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16544            ; [CPU_FPU] |78| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 102,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |102| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 108,column 9,is_stmt,isa 0
        MOVB      ACC,#66               ; [CPU_ALU] |108| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 77,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |77| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |77| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 91,column 9,is_stmt,isa 0
        MOVIZ     R2H,#47616            ; [CPU_FPU] |91| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 78,column 9,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |78| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 96,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14545            ; [CPU_FPU] |96| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 78,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |78| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 91,column 9,is_stmt,isa 0
        MOVB      XAR0,#252             ; [CPU_ALU] |91| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 97,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16067            ; [CPU_FPU] |97| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 96,column 9,is_stmt,isa 0
        MOVXI     R3H,#46871            ; [CPU_FPU] |96| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 91,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |91| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 96,column 9,is_stmt,isa 0
        MOVL      XAR0,#256             ; [CPU_ALU] |96| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 97,column 9,is_stmt,isa 0
        MOVXI     R1H,#15953            ; [CPU_FPU] |97| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 98,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16067            ; [CPU_FPU] |98| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 96,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |96| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 97,column 9,is_stmt,isa 0
        MOVL      XAR0,#258             ; [CPU_ALU] |97| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 99,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14642            ; [CPU_FPU] |99| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 98,column 9,is_stmt,isa 0
        MOVXI     R2H,#15953            ; [CPU_FPU] |98| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 97,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |97| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 98,column 9,is_stmt,isa 0
        MOVL      XAR0,#260             ; [CPU_ALU] |98| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 99,column 9,is_stmt,isa 0
        MOVXI     R3H,#2594             ; [CPU_FPU] |99| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 100,column 9,is_stmt,isa 0
        MOVIZ     R1H,#14642            ; [CPU_FPU] |100| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 98,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |98| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 99,column 9,is_stmt,isa 0
        MOVL      XAR0,#262             ; [CPU_ALU] |99| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 101,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16204            ; [CPU_FPU] |101| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 100,column 9,is_stmt,isa 0
        MOVXI     R1H,#2594             ; [CPU_FPU] |100| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 99,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |99| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 100,column 9,is_stmt,isa 0
        MOVL      XAR0,#264             ; [CPU_ALU] |100| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 101,column 9,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |101| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 103,column 9,is_stmt,isa 0
        MOVIZ     R3H,#17604            ; [CPU_FPU] |103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 100,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |100| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 101,column 9,is_stmt,isa 0
        MOVL      XAR0,#276             ; [CPU_ALU] |101| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 104,column 9,is_stmt,isa 0
        MOVIZ     R1H,#17437            ; [CPU_FPU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 103,column 9,is_stmt,isa 0
        MOVXI     R3H,#22908            ; [CPU_FPU] |103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 101,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |101| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 103,column 9,is_stmt,isa 0
        MOVL      XAR0,#278             ; [CPU_ALU] |103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 104,column 9,is_stmt,isa 0
        MOVXI     R1H,#5219             ; [CPU_FPU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 105,column 9,is_stmt,isa 0
        MOVIZ     R2H,#17437            ; [CPU_FPU] |105| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 103,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 104,column 9,is_stmt,isa 0
        MOVL      XAR0,#270             ; [CPU_ALU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 75,column 9,is_stmt,isa 0
        MOVIZ     R3H,#14545            ; [CPU_FPU] |75| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 105,column 9,is_stmt,isa 0
        MOVXI     R2H,#5219             ; [CPU_FPU] |105| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 104,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 105,column 9,is_stmt,isa 0
        MOVL      XAR0,#272             ; [CPU_ALU] |105| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 75,column 9,is_stmt,isa 0
        MOVXI     R3H,#46871            ; [CPU_FPU] |75| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 81,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16250            ; [CPU_FPU] |81| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 105,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |105| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 75,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |75| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 81,column 9,is_stmt,isa 0
        MOVXI     R1H,#57672            ; [CPU_FPU] |81| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 75,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |75| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 81,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |81| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |81| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 108,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |108| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |108| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |108| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 109,column 9,is_stmt,isa 0
        MOVL      XAR1,#280             ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 108,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#1000       ; [CPU_ALU] |108| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 109,column 9,is_stmt,isa 0
        MOVL      XAR4,*+XAR2[AR1]      ; [CPU_ALU] |109| 
        MOVB      XAR0,#66              ; [CPU_ALU] |109| 
        UI16TOF32 R0H,*+XAR4[AR0]       ; [CPU_FPU] |109| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R2H,#16000            ; [CPU_FPU] |109| 
        DIVF32    R0H,R2H,R0H           ; [CPU_FPU] |109| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 112,column 9,is_stmt,isa 0
        MOVB      ACC,#67               ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 109,column 9,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |109| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 112,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |112| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |112| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 132,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16672            ; [CPU_FPU] |132| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 113,column 9,is_stmt,isa 0
        MOVB      ACC,#68               ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 112,column 9,is_stmt,isa 0
        MOVB      *+XAR4[0],#4,UNC      ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 113,column 9,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 121,column 9,is_stmt,isa 0
        MOVB      XAR0,#152             ; [CPU_ALU] |121| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 113,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 131,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16968            ; [CPU_FPU] |131| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 130,column 9,is_stmt,isa 0
        MOVIZ     R3H,#16672            ; [CPU_FPU] |130| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 113,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |113| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 121,column 9,is_stmt,isa 0
        MOVL      XAR4,#3720            ; [CPU_ARAU] |121| 
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |121| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 130,column 9,is_stmt,isa 0
        MOVL      XAR0,#300             ; [CPU_ALU] |130| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |130| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 131,column 9,is_stmt,isa 0
        MOVL      XAR0,#302             ; [CPU_ALU] |131| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 124,column 9,is_stmt,isa 0
        MOVIZ     R3H,#15320            ; [CPU_FPU] |124| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 131,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |131| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 132,column 9,is_stmt,isa 0
        MOVL      XAR0,#304             ; [CPU_ALU] |132| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 125,column 9,is_stmt,isa 0
        MOVIZ     R1H,#15508            ; [CPU_FPU] |125| 
        MOVXI     R1H,#13107            ; [CPU_FPU] |125| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 132,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |132| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 124,column 9,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |124| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 126,column 9,is_stmt,isa 0
        MOVIZ     R2H,#14720            ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 124,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |124| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 125,column 9,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |125| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |125| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 126,column 9,is_stmt,isa 0
        MOVB      XAR0,#50              ; [CPU_ALU] |126| 
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 116,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |116| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |116| 
        MPYF32    R0H,R0H,#17274        ; [CPU_FPU] |116| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R3H,#16256            ; [CPU_FPU] |116| 
        DIVF32    R0H,R3H,R0H           ; [CPU_FPU] |116| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        MOVIZ     R2H,#16585            ; [CPU_FPU] |119| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 116,column 9,is_stmt,isa 0
        MOVB      XAR0,#154             ; [CPU_ALU] |116| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |119| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |119| 
        MPYF32    R0H,R2H,R1H           ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 154,column 9,is_stmt,isa 0
        MOVL      XAR5,#2816            ; [CPU_ARAU] |154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        MPYF32    R0H,R0H,#16544        ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 154,column 9,is_stmt,isa 0
        MOV       ACC,#29696            ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 154,column 9,is_stmt,isa 0
        MOVL      XAR6,#2848            ; [CPU_ARAU] |154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |119| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 154,column 9,is_stmt,isa 0
        MOVL      XAR4,#2880            ; [CPU_ARAU] |154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 127,column 9,is_stmt,isa 0
        MOVIZ     R3H,#17175            ; [CPU_FPU] |127| 
        MOVXI     R3H,#46118            ; [CPU_FPU] |127| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 119,column 9,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |119| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 120,column 9,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |120| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |120| 
        SUBF32    R0H,#16256,R0H        ; [CPU_FPU] |120| 
        MOVB      XAR0,#158             ; [CPU_ALU] |120| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |120| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 134,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |134| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 128,column 9,is_stmt,isa 0
        MOVIZ     R0H,#16989            ; [CPU_FPU] |128| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 134,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#124,UNC  ; [CPU_ALU] |134| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 135,column 9,is_stmt,isa 0
        MOVL      XAR0,#321             ; [CPU_ALU] |135| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 128,column 9,is_stmt,isa 0
        MOVXI     R0H,#6987             ; [CPU_FPU] |128| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 135,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#24,UNC   ; [CPU_ALU] |135| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 136,column 9,is_stmt,isa 0
        MOVL      XAR0,#322             ; [CPU_ALU] |136| 
        MOVB      *+XAR2[AR0],#61,UNC   ; [CPU_ALU] |136| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 138,column 9,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |138| 
        MOV       *+XAR2[AR0],#2806     ; [CPU_ALU] |138| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 141,column 9,is_stmt,isa 0
        MOVL      XAR0,#319             ; [CPU_ALU] |141| 
        MOV       *+XAR2[AR0],#1290     ; [CPU_ALU] |141| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 127,column 9,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |127| 
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |127| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 128,column 9,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_ALU] |128| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |128| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 154,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |154| 
        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |154| 
        MOVB      XAR5,#0               ; [CPU_ALU] |154| 
        MOV       *-SP[5],#0            ; [CPU_ALU] |154| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |154| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |154| 
        MOV       *-SP[9],#0            ; [CPU_ALU] |154| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("FCL_initADC_3I")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||FCL_initADC_3I||   ; [CPU_ALU] |154| 
        ; call occurs [#||FCL_initADC_3I||] ; [] |154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 159,column 9,is_stmt,isa 0
        MOVL      XAR4,#2928            ; [CPU_ARAU] |159| 
||$C$L10||:    
        MOVB      XAR0,#72              ; [CPU_ALU] |159| 
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |159| 
||$C$L11||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 260,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR3[2]         ; [CPU_ALU] |260| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |260| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |260| 
        MOVL      ACC,*+XAR3[4]         ; [CPU_ALU] |260| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |260| 
        MOVL      ACC,*+XAR3[0]         ; [CPU_ALU] |260| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("FCL_initPWM")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||FCL_initPWM||      ; [CPU_ALU] |260| 
        ; call occurs [#||FCL_initPWM||] ; [] |260| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 264,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |264| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |264| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |264| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("FCL_initQEP")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||FCL_initQEP||      ; [CPU_ALU] |264| 
        ; call occurs [#||FCL_initQEP||] ; [] |264| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 266,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |266| 
        MOVB      ACC,#74               ; [CPU_ALU] |266| 
        MOVB      XAR6,#0               ; [CPU_ALU] |266| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |266| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |266| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 267,column 5,is_stmt,isa 0
        MOVB      ACC,#76               ; [CPU_ALU] |267| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 266,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |266| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 267,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |267| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |267| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 268,column 5,is_stmt,isa 0
        MOVB      ACC,#78               ; [CPU_ALU] |268| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 267,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |267| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 268,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |268| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |268| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 269,column 5,is_stmt,isa 0
        MOVB      ACC,#80               ; [CPU_ALU] |269| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 268,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |268| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 269,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |269| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |269| 
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |269| 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text:initControlVars"
	.clink
	.global	||initControlVars||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("initControlVars")
	.dwattr $C$DW$44, DW_AT_low_pc(||initControlVars||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("initControlVars")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x115)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 278,column 1,is_stmt,address ||initControlVars||,isa 0

	.dwfde $C$DW$CIE, ||initControlVars||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("pMotor")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: initControlVars               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||initControlVars||:
;* AR5   assigned to $O$C1
;* AR5   assigned to $O$C2
;* AR4   assigned to pMotor
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("pMotor")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 302,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |302| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |302| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 301,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |301| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 302,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#16840        ; [CPU_FPU] |302| 
        MOVB      XAR0,#176             ; [CPU_ALU] |302| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |302| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0
        MOVB      XAR0,#176             ; [CPU_ALU] |303| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 301,column 5,is_stmt,isa 0
        MOVB      XAR0,#174             ; [CPU_ALU] |301| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 301,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |301| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0
        MOVB      XAR0,#174             ; [CPU_ALU] |303| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 304,column 5,is_stmt,isa 0
        MOVB      XAR0,#176             ; [CPU_ALU] |304| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |304| 
||      ADDF32    R3H,R1H,R0H           ; [CPU_FPU] |303| 

	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 304,column 5,is_stmt,isa 0
        MOVB      XAR0,#174             ; [CPU_ALU] |304| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |304| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |304| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 312,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |312| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 304,column 5,is_stmt,isa 0

        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |312| 
||      SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |304| 

	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 312,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |312| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |312| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R1H,#16256            ; [CPU_FPU] |312| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |312| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#154             ; [CPU_ALU] |312| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 317,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[6]         ; [CPU_FPU] |317| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 312,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |312| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 317,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |317| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |317| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |317| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#17136        ; [CPU_FPU] |317| 
        NOP       ; [CPU_ALU] 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |317| 
        MOVB      XAR0,#152             ; [CPU_ALU] |317| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |317| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0
        MOVB      XAR0,#178             ; [CPU_ALU] |303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 315,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |315| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 303,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 304,column 5,is_stmt,isa 0
        MOVB      XAR0,#180             ; [CPU_ALU] |304| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 315,column 5,is_stmt,isa 0
        MOVXI     R0H,#4059             ; [CPU_FPU] |315| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 304,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |304| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 315,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |315| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |315| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |315| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#16544        ; [CPU_FPU] |315| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |315| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R1H,#16256            ; [CPU_FPU] |315| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |315| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 281,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |281| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 315,column 5,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |315| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |315| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 316,column 5,is_stmt,isa 0
        MOVB      XAR0,#156             ; [CPU_ALU] |316| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |316| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 305,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |305| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |305| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |305| 
        MOVB      XAR0,#182             ; [CPU_ALU] |305| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |305| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 306,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |306| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |306| 
        MPYF32    R0H,R0H,#48896        ; [CPU_FPU] |306| 
        MOVB      XAR0,#184             ; [CPU_ALU] |306| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |306| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 281,column 5,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |281| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 287,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16128            ; [CPU_FPU] |287| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 281,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |281| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 320,column 5,is_stmt,isa 0
        MOVB      XAR0,#174             ; [CPU_ALU] |320| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |320| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 287,column 5,is_stmt,isa 0
        MOVB      XAR0,#192             ; [CPU_ALU] |287| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |287| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 289,column 5,is_stmt,isa 0
        MOVB      XAR0,#196             ; [CPU_ALU] |289| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |289| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |289| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 290,column 5,is_stmt,isa 0
        MOVB      XAR0,#198             ; [CPU_ALU] |290| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |290| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 320,column 5,is_stmt,isa 0
        MOVB      ACC,#42               ; [CPU_ALU] |320| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 290,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |290| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 293,column 5,is_stmt,isa 0
        MOVB      XAR0,#222             ; [CPU_ALU] |293| 
        MOVIZ     R0H,#16128            ; [CPU_FPU] |293| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |293| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 295,column 5,is_stmt,isa 0
        MOVB      XAR0,#226             ; [CPU_ALU] |295| 
        ZERO      R0H                   ; [CPU_FPU] |295| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |295| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 296,column 5,is_stmt,isa 0
        MOVB      XAR0,#220             ; [CPU_ALU] |296| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |296| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |296| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 307,column 5,is_stmt,isa 0
        MOVB      XAR0,#164             ; [CPU_ALU] |307| 
        ZERO      R0H                   ; [CPU_FPU] |307| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |307| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 308,column 5,is_stmt,isa 0
        MOVB      XAR0,#168             ; [CPU_ALU] |308| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |308| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 309,column 5,is_stmt,isa 0
        MOVB      XAR0,#170             ; [CPU_ALU] |309| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |309| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 288,column 5,is_stmt,isa 0
        MOVB      XAR0,#194             ; [CPU_ALU] |288| 
        MOVIZ     R0H,#14979            ; [CPU_FPU] |288| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |288| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |288| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 294,column 5,is_stmt,isa 0
        MOVB      XAR0,#224             ; [CPU_ALU] |294| 
        MOVIZ     R0H,#14979            ; [CPU_FPU] |294| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |294| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |294| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 297,column 5,is_stmt,isa 0
        MOVB      XAR0,#230             ; [CPU_ALU] |297| 
        MOVIZ     R0H,#16243            ; [CPU_FPU] |297| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |297| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |297| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 298,column 5,is_stmt,isa 0
        MOVB      XAR0,#232             ; [CPU_ALU] |298| 
        MOVIZ     R0H,#49011            ; [CPU_FPU] |298| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |298| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |298| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 316,column 5,is_stmt,isa 0
        SUBF32    R0H,#16256,R1H        ; [CPU_FPU] |316| 
        MOVB      XAR0,#158             ; [CPU_ALU] |316| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |316| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 320,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |320| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |320| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |320| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 321,column 5,is_stmt,isa 0
        MOVB      ACC,#44               ; [CPU_ALU] |321| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 320,column 5,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |320| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 321,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |321| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |321| 
        MOVB      XAR0,#176             ; [CPU_ALU] |321| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |321| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 322,column 5,is_stmt,isa 0
        MOVL      XAR1,#280             ; [CPU_ALU] |322| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 321,column 5,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |321| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 322,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR1]      ; [CPU_ALU] |322| 
        MOVB      XAR0,#44              ; [CPU_ALU] |322| 
        MOVB      XAR1,#42              ; [CPU_ALU] |322| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |322| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |322| 
        MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |322| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |322| 
        MOVB      XAR0,#46              ; [CPU_ALU] |322| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |322| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 325,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |325| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |325| 
        MOVB      XAR1,#44              ; [CPU_ALU] |325| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 328,column 5,is_stmt,isa 0
        MOVB      ACC,#50               ; [CPU_ALU] |328| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 325,column 5,is_stmt,isa 0
        MOVB      XAR0,#42              ; [CPU_ALU] |325| 
        MOV32     R0H,*+XAR5[AR1]       ; [CPU_FPU] |325| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |325| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |325| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |325| 
        MOVB      XAR0,#48              ; [CPU_ALU] |325| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |325| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 328,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |328| 
        MOVIZ     R0H,#16204            ; [CPU_FPU] |328| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |328| 
        MOVL      XAR0,#280             ; [CPU_ALU] |328| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |328| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 329,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |329| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 328,column 5,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |328| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |328| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |328| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 329,column 5,is_stmt,isa 0
        MOVB      ACC,#52               ; [CPU_ALU] |329| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 328,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |328| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 329,column 5,is_stmt,isa 0
        MOVIZ     R0H,#48972            ; [CPU_FPU] |329| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |329| 
        MOVL      XAR0,#280             ; [CPU_ALU] |329| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |329| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |329| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |329| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |329| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 330,column 5,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 329,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |329| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 330,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |330| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |330| 
        ZERO      R0H                   ; [CPU_FPU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 331,column 5,is_stmt,isa 0
        MOVB      ACC,#36               ; [CPU_ALU] |331| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 330,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 331,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |331| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |331| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 332,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |332| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 331,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |331| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 332,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |332| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |332| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 335,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |335| 
        MOVB      ACC,#22               ; [CPU_ALU] |335| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 332,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |332| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 335,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |335| 
        MOVL      XAR0,#280             ; [CPU_ALU] |335| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |335| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |335| 
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |335| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |335| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 336,column 5,is_stmt,isa 0
        MOVB      ACC,#24               ; [CPU_ALU] |336| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 335,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |335| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 336,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |336| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |336| 
        ZERO      R0H                   ; [CPU_FPU] |336| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 337,column 5,is_stmt,isa 0
        MOVB      ACC,#28               ; [CPU_ALU] |337| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 336,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |336| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 337,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |337| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |337| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 338,column 5,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |338| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 337,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |337| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 338,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |338| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |338| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |338| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 339,column 5,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |339| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 338,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |338| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 339,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16256            ; [CPU_FPU] |339| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |339| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 343,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |343| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 339,column 5,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |339| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 342,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15820            ; [CPU_FPU] |342| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |342| 
        MOVB      XAR1,#28              ; [CPU_ALU] |342| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 339,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |339| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 343,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |343| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |343| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 348,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |348| 
        MOVIZ     R0H,#15605            ; [CPU_FPU] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 342,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |342| 
	.dwpsn	file "../sources/dual_axis_servo_drive_user.c",line 348,column 5,is_stmt,isa 0
        MOVXI     R0H,#49807            ; [CPU_FPU] |348| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |348| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_user.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x160)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("__signbitl")
	.dwattr $C$DW$48, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$48, DW_AT_decl_column(0x18)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("e")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __signbitl                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbitl||:
;* AR4   assigned to e
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("e")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |368| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |368| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |368| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |368| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |368| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |368| 
        AND       PL,#0                 ; [CPU_ALU] |368| 
        AND       PH,#0                 ; [CPU_ALU] |368| 
        ANDB      AL,#0                 ; [CPU_ALU] |368| 
        AND       AH,#32768             ; [CPU_ALU] |368| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("__signbitf")
	.dwattr $C$DW$53, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$53, DW_AT_decl_column(0x18)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("f")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __signbitf                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbitf||:
;* R0    assigned to f
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("f")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 3,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |366| 
        MOVB      XAR6,#0               ; [CPU_ALU] |366| 
        ANDB      AL,#0                 ; [CPU_ALU] |366| 
        AND       AH,#32768             ; [CPU_ALU] |366| 
        TEST      ACC                   ; [CPU_ALU] |366| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |366| 
        MOV       AL,AR6                ; [CPU_ALU] |366| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("__signbit")
	.dwattr $C$DW$57, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$57, DW_AT_decl_column(0x18)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("d")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __signbit                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbit||:
;* AR4   assigned to d
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("d")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |364| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |364| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |364| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |364| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |364| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |364| 
        AND       PL,#0                 ; [CPU_ALU] |364| 
        AND       PH,#0                 ; [CPU_ALU] |364| 
        ANDB      AL,#0                 ; [CPU_ALU] |364| 
        AND       AH,#32768             ; [CPU_ALU] |364| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$62, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$62, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x108)
	.dwattr $C$DW$62, DW_AT_decl_column(0x10)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("x")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sinf                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sinf||:
;* R0    assigned to x
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("x")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$62, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$66, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$66, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$66, DW_AT_decl_column(0x10)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("y")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("x")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fmodf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fmodf||:
;* R0    assigned to y
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("y")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("x")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 286,column 3,is_stmt,isa 0
        DIVF32    R2H,R0H,R1H           ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        F32TOI32  R2H,R2H               ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        I32TOF32  R2H,R2H               ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |286| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$72, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xee)
	.dwattr $C$DW$72, DW_AT_decl_column(0x10)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 239,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("x")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("y")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fminf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fminf||:
;* R1    assigned to y
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("y")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 240,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |240| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$77, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$77, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$77, DW_AT_decl_column(0x10)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 233,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("x")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_name("y")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fmaxf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fmaxf||:
;* R1    assigned to y
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("y")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 234,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |234| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$82, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$82, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$82, DW_AT_decl_column(0x10)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("x")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_cosf                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_cosf||:
;* R0    assigned to x
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("x")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$86, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$86, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x112)
	.dwattr $C$DW$86, DW_AT_decl_column(0x10)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("x")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_atanf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atanf||:
;* R0    assigned to x
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("x")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 276,column 3,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |276| 
        QUADF32   R1H,R0H,R0H,R1H       ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$90, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$90, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x117)
	.dwattr $C$DW$90, DW_AT_decl_column(0x10)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("y")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("x")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_atan2f              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atan2f||:
;* R0    assigned to y
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("y")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("x")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 281,column 3,is_stmt,isa 0
        QUADF32   R1H,R0H,R0H,R1H       ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("__isnormall")
	.dwattr $C$DW$96, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$96, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x167)
	.dwattr $C$DW$96, DW_AT_decl_column(0x18)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("e")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnormall                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormall||:
;* AR5   assigned to $O$C2
;* AR6   assigned to $O$S1
;* AR4   assigned to e
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("e")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |360| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        MOV       T,#52                 ; [CPU_ALU] |360| 
        MOVL      P,XAR5                ; [CPU_ALU] |360| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |360| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |360| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |360| 
        LSR64     ACC:P,T               ; [CPU_ALU] |360| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |360| 
        ANDB      AL,#0                 ; [CPU_ALU] |360| 
        ANDB      AH,#0                 ; [CPU_ALU] |360| 
        AND       PL,#2047              ; [CPU_ALU] |360| 
        AND       PH,#0                 ; [CPU_ALU] |360| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVL      P,XAR5                ; [CPU_ALU] |360| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |360| 
        MOV       T,#48                 ; [CPU_ALU] |360| 
        LSR64     ACC:P,T               ; [CPU_ALU] |360| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |360| 
        MOVZ      AR7,PL                ; [CPU_ALU] |360| 
        MOV       ACC,#32752            ; [CPU_ALU] |360| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |360| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |360| 
||$C$L12||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("__isnormalf")
	.dwattr $C$DW$101, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$101, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x163)
	.dwattr $C$DW$101, DW_AT_decl_column(0x18)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("f")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnormalf                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormalf||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("f")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L13||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("__isnormal")
	.dwattr $C$DW$105, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$105, DW_AT_decl_column(0x18)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("d")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnormal                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormal||:
;* AR5   assigned to $O$C2
;* AR6   assigned to $O$S1
;* AR4   assigned to d
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("d")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 3,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |352| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        MOV       T,#52                 ; [CPU_ALU] |352| 
        MOVL      P,XAR5                ; [CPU_ALU] |352| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |352| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |352| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |352| 
        LSR64     ACC:P,T               ; [CPU_ALU] |352| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |352| 
        ANDB      AL,#0                 ; [CPU_ALU] |352| 
        ANDB      AH,#0                 ; [CPU_ALU] |352| 
        AND       PL,#2047              ; [CPU_ALU] |352| 
        AND       PH,#0                 ; [CPU_ALU] |352| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOVL      P,XAR5                ; [CPU_ALU] |352| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |352| 
        MOV       T,#48                 ; [CPU_ALU] |352| 
        LSR64     ACC:P,T               ; [CPU_ALU] |352| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |352| 
        MOVZ      AR7,PL                ; [CPU_ALU] |352| 
        MOV       ACC,#32752            ; [CPU_ALU] |352| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |352| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |352| 
||$C$L14||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("__isnanl")
	.dwattr $C$DW$110, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$110, DW_AT_decl_column(0x18)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("e")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnanl                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnanl||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to e
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("e")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |348| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |348| 
        MOV       T,#48                 ; [CPU_ALU] |348| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |348| 
        MOVL      P,XAR7                ; [CPU_ALU] |348| 
        MOVB      XAR4,#0               ; [CPU_ALU] |348| 
        LSR64     ACC:P,T               ; [CPU_ALU] |348| 
        MOV       PH,#0                 ; [CPU_ALU] |348| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |348| 
        MOV       ACC,#32752            ; [CPU_ALU] |348| 
        CMPL      ACC,P                 ; [CPU_ALU] |348| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |348| 
        MOVL      P,XAR7                ; [CPU_ALU] |348| 
        MOVB      XAR6,#0               ; [CPU_ALU] |348| 
        AND       AL,#65535             ; [CPU_ALU] |348| 
        ANDB      AH,#15                ; [CPU_ALU] |348| 
        AND       PL,#65535             ; [CPU_ALU] |348| 
        AND       PH,#65535             ; [CPU_ALU] |348| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |348| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |348| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |348| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L15||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$110, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("__isnanf")
	.dwattr $C$DW$115, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x158)
	.dwattr $C$DW$115, DW_AT_decl_column(0x18)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("f")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnanf                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnanf||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("f")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L16||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("__isnan")
	.dwattr $C$DW$119, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x155)
	.dwattr $C$DW$119, DW_AT_decl_column(0x18)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("d")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnan                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnan||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to d
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("d")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |342| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |342| 
        MOV       T,#48                 ; [CPU_ALU] |342| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |342| 
        MOVL      P,XAR7                ; [CPU_ALU] |342| 
        MOVB      XAR4,#0               ; [CPU_ALU] |342| 
        LSR64     ACC:P,T               ; [CPU_ALU] |342| 
        MOV       PH,#0                 ; [CPU_ALU] |342| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |342| 
        MOV       ACC,#32752            ; [CPU_ALU] |342| 
        CMPL      ACC,P                 ; [CPU_ALU] |342| 
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |342| 
        ; branchcc occurs ; [] |342| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |342| 
        MOVL      P,XAR7                ; [CPU_ALU] |342| 
        MOVB      XAR6,#0               ; [CPU_ALU] |342| 
        AND       AL,#65535             ; [CPU_ALU] |342| 
        ANDB      AH,#15                ; [CPU_ALU] |342| 
        AND       PL,#65535             ; [CPU_ALU] |342| 
        AND       PH,#65535             ; [CPU_ALU] |342| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |342| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |342| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |342| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L17||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("__isinfl")
	.dwattr $C$DW$124, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$124, DW_AT_decl_column(0x18)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("e")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isinfl                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinfl||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to e
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("e")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |379| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |379| 
        MOV       T,#48                 ; [CPU_ALU] |379| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |379| 
        MOVL      P,XAR7                ; [CPU_ALU] |379| 
        MOVB      XAR4,#0               ; [CPU_ALU] |379| 
        LSR64     ACC:P,T               ; [CPU_ALU] |379| 
        MOV       PH,#0                 ; [CPU_ALU] |379| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |379| 
        MOV       ACC,#32752            ; [CPU_ALU] |379| 
        CMPL      ACC,P                 ; [CPU_ALU] |379| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |379| 
        MOVL      P,XAR7                ; [CPU_ALU] |379| 
        MOVB      XAR6,#0               ; [CPU_ALU] |379| 
        AND       AL,#65535             ; [CPU_ALU] |379| 
        ANDB      AH,#15                ; [CPU_ALU] |379| 
        AND       PL,#65535             ; [CPU_ALU] |379| 
        AND       PH,#65535             ; [CPU_ALU] |379| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |379| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |379| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |379| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L18||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("__isinff")
	.dwattr $C$DW$129, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$129, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x176)
	.dwattr $C$DW$129, DW_AT_decl_column(0x18)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("f")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isinff                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinff||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("f")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L19||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("__isinf")
	.dwattr $C$DW$133, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$133, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x178)
	.dwattr $C$DW$133, DW_AT_decl_column(0x18)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("d")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isinf                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinf||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to d
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("d")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |377| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |377| 
        MOV       T,#48                 ; [CPU_ALU] |377| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |377| 
        MOVL      P,XAR7                ; [CPU_ALU] |377| 
        MOVB      XAR4,#0               ; [CPU_ALU] |377| 
        LSR64     ACC:P,T               ; [CPU_ALU] |377| 
        MOV       PH,#0                 ; [CPU_ALU] |377| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |377| 
        MOV       ACC,#32752            ; [CPU_ALU] |377| 
        CMPL      ACC,P                 ; [CPU_ALU] |377| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |377| 
        MOVL      P,XAR7                ; [CPU_ALU] |377| 
        MOVB      XAR6,#0               ; [CPU_ALU] |377| 
        AND       AL,#65535             ; [CPU_ALU] |377| 
        ANDB      AH,#15                ; [CPU_ALU] |377| 
        AND       PL,#65535             ; [CPU_ALU] |377| 
        AND       PH,#65535             ; [CPU_ALU] |377| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |377| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |377| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |377| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L20||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$138	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$138, DW_AT_name("__isfinitel")
	.dwattr $C$DW$138, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$138, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x152)
	.dwattr $C$DW$138, DW_AT_decl_column(0x18)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("e")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isfinitel                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinitel||:
;* AR4   assigned to e
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("e")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 3,is_stmt,isa 0
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |339| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |339| 
        MOV       T,#48                 ; [CPU_ALU] |339| 
        LSR64     ACC:P,T               ; [CPU_ALU] |339| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |339| 
        MOVZ      AR7,PL                ; [CPU_ALU] |339| 
        MOV       ACC,#32752            ; [CPU_ALU] |339| 
        MOVB      XAR6,#0               ; [CPU_ALU] |339| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |339| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |339| 
        MOV       AL,AR6                ; [CPU_ALU] |339| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$138, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("__isfinitef")
	.dwattr $C$DW$142, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$142, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x150)
	.dwattr $C$DW$142, DW_AT_decl_column(0x18)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("f")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isfinitef                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinitef||:
;* R0    assigned to f
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("f")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |337| 
        AND       PH,#0x7f80            ; [CPU_ALU] |337| 
        MOVZ      AR7,PH                ; [CPU_ALU] |337| 
        MOV       ACC,#32640            ; [CPU_ALU] |337| 
        MOVB      XAR6,#0               ; [CPU_ALU] |337| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |337| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |337| 
        MOV       AL,AR6                ; [CPU_ALU] |337| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$146	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$146, DW_AT_name("__isfinite")
	.dwattr $C$DW$146, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$146, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$146, DW_AT_decl_column(0x18)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$147	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$147, DW_AT_name("d")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isfinite                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinite||:
;* AR4   assigned to d
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("d")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 3,is_stmt,isa 0
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |335| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |335| 
        MOV       T,#48                 ; [CPU_ALU] |335| 
        LSR64     ACC:P,T               ; [CPU_ALU] |335| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |335| 
        MOVZ      AR7,PL                ; [CPU_ALU] |335| 
        MOV       ACC,#32752            ; [CPU_ALU] |335| 
        MOVB      XAR6,#0               ; [CPU_ALU] |335| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |335| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |335| 
        MOV       AL,AR6                ; [CPU_ALU] |335| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$146, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$150, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$150, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$150, DW_AT_decl_column(0x18)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_name("e")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("e")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("e")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |431| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |431| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |431| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |431| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 432,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |432| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |432| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 436,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        LSR64     ACC:P,T               ; [CPU_ALU] |436| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |436| 
        MOVZ      AR6,PL                ; [CPU_ALU] |436| 
        MOV       ACC,#32752            ; [CPU_ALU] |436| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |436| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      ACC,#0                ; [CPU_ALU] |436| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |436| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |436| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L21||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L22||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOV       T,#52                 ; [CPU_ALU] |436| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        LSR64     ACC:P,T               ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
        ANDB      AL,#0                 ; [CPU_ALU] |436| 
        ANDB      AH,#0                 ; [CPU_ALU] |436| 
        AND       PL,#2047              ; [CPU_ALU] |436| 
        AND       PH,#0                 ; [CPU_ALU] |436| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L23||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L23||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L24||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L25||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$158, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$158, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$158, DW_AT_decl_column(0x18)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("f")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __fpclassifyf                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyf||:
;* PL    assigned to $O$K1
;* R0    assigned to f
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("f")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L27||,NEQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L26||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L27||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L28||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L29||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$158, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("__fpclassify")
	.dwattr $C$DW$166, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$166, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$166, DW_AT_decl_column(0x18)
	.dwattr $C$DW$166, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("d")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("d")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("d")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |414| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |414| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |414| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |414| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 415,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |415| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |415| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 419,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        LSR64     ACC:P,T               ; [CPU_ALU] |419| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |419| 
        MOVZ      AR6,PL                ; [CPU_ALU] |419| 
        MOV       ACC,#32752            ; [CPU_ALU] |419| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |419| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      ACC,#0                ; [CPU_ALU] |419| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |419| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |419| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L30||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L31||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOV       T,#52                 ; [CPU_ALU] |419| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        LSR64     ACC:P,T               ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
        ANDB      AL,#0                 ; [CPU_ALU] |419| 
        ANDB      AH,#0                 ; [CPU_ALU] |419| 
        AND       PL,#2047              ; [CPU_ALU] |419| 
        AND       PH,#0                 ; [CPU_ALU] |419| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L32||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L32||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L33||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L33||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L34||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$166, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$166

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||FCL_initADC_3I||
	.global	||FCL_initPWM||
	.global	||FCL_initQEP||
	.global	||halMtr||
	.global	||fclVars||
	.global	||motorVars||
	.global	||__c28xabi_cmpull||
;**************************************************************
;* SECTION GROUPS                                             *
;**************************************************************
	.group    "__fpclassify", 1
	.gmember  ".text:__fpclassify"
	.endgroup
	.group    "__fpclassifyf", 1
	.gmember  ".text:__fpclassifyf"
	.endgroup
	.group    "__fpclassifyl", 1
	.gmember  ".text:__fpclassifyl"
	.endgroup
	.group    "__isfinite", 1
	.gmember  ".text:__isfinite"
	.endgroup
	.group    "__isfinitef", 1
	.gmember  ".text:__isfinitef"
	.endgroup
	.group    "__isfinitel", 1
	.gmember  ".text:__isfinitel"
	.endgroup
	.group    "__isinf", 1
	.gmember  ".text:__isinf"
	.endgroup
	.group    "__isinff", 1
	.gmember  ".text:__isinff"
	.endgroup
	.group    "__isinfl", 1
	.gmember  ".text:__isinfl"
	.endgroup
	.group    "__isnan", 1
	.gmember  ".text:__isnan"
	.endgroup
	.group    "__isnanf", 1
	.gmember  ".text:__isnanf"
	.endgroup
	.group    "__isnanl", 1
	.gmember  ".text:__isnanl"
	.endgroup
	.group    "__isnormal", 1
	.gmember  ".text:__isnormal"
	.endgroup
	.group    "__isnormalf", 1
	.gmember  ".text:__isnormalf"
	.endgroup
	.group    "__isnormall", 1
	.gmember  ".text:__isnormall"
	.endgroup
	.group    "__relaxed_atan2f", 1
	.gmember  ".text:__relaxed_atan2f"
	.endgroup
	.group    "__relaxed_atanf", 1
	.gmember  ".text:__relaxed_atanf"
	.endgroup
	.group    "__relaxed_cosf", 1
	.gmember  ".text:__relaxed_cosf"
	.endgroup
	.group    "__relaxed_fmaxf", 1
	.gmember  ".text:__relaxed_fmaxf"
	.endgroup
	.group    "__relaxed_fminf", 1
	.gmember  ".text:__relaxed_fminf"
	.endgroup
	.group    "__relaxed_fmodf", 1
	.gmember  ".text:__relaxed_fmodf"
	.endgroup
	.group    "__relaxed_sinf", 1
	.gmember  ".text:__relaxed_sinf"
	.endgroup
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup


;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(1)
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

$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$174, DW_AT_const_value(0x00)
	.dwattr $C$DW$174, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x40)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$175, DW_AT_const_value(0x01)
	.dwattr $C$DW$175, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x41)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$176, DW_AT_const_value(0x02)
	.dwattr $C$DW$176, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x42)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$67, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("MOTOR_STOP")
	.dwattr $C$DW$177, DW_AT_const_value(0x00)
	.dwattr $C$DW$177, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("MOTOR_RUN")
	.dwattr $C$DW$178, DW_AT_const_value(0x01)
	.dwattr $C$DW$178, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$95, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("MotorRunStop_e")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("CTRL_STOP")
	.dwattr $C$DW$179, DW_AT_const_value(0x00)
	.dwattr $C$DW$179, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x64)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

$C$DW$180	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$180, DW_AT_name("CTRL_RUN")
	.dwattr $C$DW$180, DW_AT_const_value(0x01)
	.dwattr $C$DW$180, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x65)
	.dwattr $C$DW$180, DW_AT_decl_column(0x05)

$C$DW$181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$181, DW_AT_name("CTRL_BRAKE")
	.dwattr $C$DW$181, DW_AT_const_value(0x02)
	.dwattr $C$DW$181, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x66)
	.dwattr $C$DW$181, DW_AT_decl_column(0x05)

$C$DW$182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$182, DW_AT_name("CTRL_RESET")
	.dwattr $C$DW$182, DW_AT_const_value(0x03)
	.dwattr $C$DW$182, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x67)
	.dwattr $C$DW$182, DW_AT_decl_column(0x05)

$C$DW$183	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$183, DW_AT_name("CTRL_FAULT")
	.dwattr $C$DW$183, DW_AT_const_value(0x04)
	.dwattr $C$DW$183, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x68)
	.dwattr $C$DW$183, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$97, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("CtrlState_e")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$184, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$184, DW_AT_const_value(0x00)
	.dwattr $C$DW$184, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x145)
	.dwattr $C$DW$184, DW_AT_decl_column(0x05)

$C$DW$185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$185, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$185, DW_AT_const_value(0x01)
	.dwattr $C$DW$185, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x146)
	.dwattr $C$DW$185, DW_AT_decl_column(0x05)

$C$DW$186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$186, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$186, DW_AT_const_value(0x02)
	.dwattr $C$DW$186, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x147)
	.dwattr $C$DW$186, DW_AT_decl_column(0x05)

$C$DW$187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$187, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$187, DW_AT_const_value(0x03)
	.dwattr $C$DW$187, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x148)
	.dwattr $C$DW$187, DW_AT_decl_column(0x05)

$C$DW$188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$188, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$188, DW_AT_const_value(0x04)
	.dwattr $C$DW$188, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x149)
	.dwattr $C$DW$188, DW_AT_decl_column(0x05)

$C$DW$189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$189, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$189, DW_AT_const_value(0x05)
	.dwattr $C$DW$189, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$189, DW_AT_decl_column(0x05)

$C$DW$190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$190, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$190, DW_AT_const_value(0x06)
	.dwattr $C$DW$190, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$190, DW_AT_decl_column(0x05)

$C$DW$191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$191, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$191, DW_AT_const_value(0x07)
	.dwattr $C$DW$191, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$191, DW_AT_decl_column(0x05)

$C$DW$192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$192, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$192, DW_AT_const_value(0x08)
	.dwattr $C$DW$192, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$192, DW_AT_decl_column(0x05)

$C$DW$193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$193, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$193, DW_AT_const_value(0x09)
	.dwattr $C$DW$193, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$193, DW_AT_decl_column(0x05)

$C$DW$194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$194, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$194, DW_AT_const_value(0x0a)
	.dwattr $C$DW$194, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$194, DW_AT_decl_column(0x05)

$C$DW$195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$195, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$195, DW_AT_const_value(0x0b)
	.dwattr $C$DW$195, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x150)
	.dwattr $C$DW$195, DW_AT_decl_column(0x05)

$C$DW$196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$196, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$196, DW_AT_const_value(0x0c)
	.dwattr $C$DW$196, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x151)
	.dwattr $C$DW$196, DW_AT_decl_column(0x05)

$C$DW$197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$197, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$197, DW_AT_const_value(0x0d)
	.dwattr $C$DW$197, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x152)
	.dwattr $C$DW$197, DW_AT_decl_column(0x05)

$C$DW$198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$198, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$198, DW_AT_const_value(0x0e)
	.dwattr $C$DW$198, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x153)
	.dwattr $C$DW$198, DW_AT_decl_column(0x05)

$C$DW$199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$199, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$199, DW_AT_const_value(0x0f)
	.dwattr $C$DW$199, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x154)
	.dwattr $C$DW$199, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$101, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$200, DW_AT_name("ADC_PPB_NUMBER1")
	.dwattr $C$DW$200, DW_AT_const_value(0x00)
	.dwattr $C$DW$200, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x134)
	.dwattr $C$DW$200, DW_AT_decl_column(0x05)

$C$DW$201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$201, DW_AT_name("ADC_PPB_NUMBER2")
	.dwattr $C$DW$201, DW_AT_const_value(0x01)
	.dwattr $C$DW$201, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x135)
	.dwattr $C$DW$201, DW_AT_decl_column(0x05)

$C$DW$202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$202, DW_AT_name("ADC_PPB_NUMBER3")
	.dwattr $C$DW$202, DW_AT_const_value(0x02)
	.dwattr $C$DW$202, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x136)
	.dwattr $C$DW$202, DW_AT_decl_column(0x05)

$C$DW$203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$203, DW_AT_name("ADC_PPB_NUMBER4")
	.dwattr $C$DW$203, DW_AT_const_value(0x03)
	.dwattr $C$DW$203, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x137)
	.dwattr $C$DW$203, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$103, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("ADC_PPBNumber")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$104


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x10)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("TargetValue")
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0f)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$205, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0f)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0f)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0f)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$208, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("SetpointValue")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x30)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0c)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_name("EqualFlag")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x31)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0c)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("Tmp")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x32)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$84, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$84


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x0a)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("As")
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$212, DW_AT_decl_column(0x1e)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("Bs")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$213, DW_AT_decl_column(0x12)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("Cs")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$214, DW_AT_decl_column(0x12)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("Alpha")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$215, DW_AT_decl_column(0x12)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("Beta")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$216, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85
$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$85, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$85


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0e)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("Alpha")
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x29)
	.dwattr $C$DW$217, DW_AT_decl_column(0x1e)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("Beta")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$218, DW_AT_decl_column(0x12)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("Angle")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$219, DW_AT_decl_column(0x12)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("Ds")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$220, DW_AT_decl_column(0x12)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("Qs")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$221, DW_AT_decl_column(0x12)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("Sine")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$222, DW_AT_decl_column(0x12)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("Cosine")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$223, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("PARK")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$86, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$86


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x0e)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("Alpha")
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x29)
	.dwattr $C$DW$224, DW_AT_decl_column(0x1e)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("Beta")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$225, DW_AT_decl_column(0x12)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("Angle")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$226, DW_AT_decl_column(0x12)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("Ds")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$227, DW_AT_decl_column(0x12)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("Qs")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$228, DW_AT_decl_column(0x12)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("Sine")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$229, DW_AT_decl_column(0x12)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("Cosine")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$230, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87
$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("IPARK")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$87, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$87


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x14)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("ElecTheta")
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$231, DW_AT_decl_column(0x12)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$232, DW_AT_name("DirectionQep")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$232, DW_AT_decl_column(0x11)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$233, DW_AT_decl_column(0x12)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("Speed")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$234, DW_AT_decl_column(0x12)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$235, DW_AT_name("BaseRpm")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$235, DW_AT_decl_column(0x11)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("K1")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x30)
	.dwattr $C$DW$236, DW_AT_decl_column(0x12)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("K2")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x31)
	.dwattr $C$DW$237, DW_AT_decl_column(0x12)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("K3")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x32)
	.dwattr $C$DW$238, DW_AT_decl_column(0x12)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$239, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x33)
	.dwattr $C$DW$239, DW_AT_decl_column(0x10)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("Tmp")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x34)
	.dwattr $C$DW$240, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$88, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$88


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x16)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("ref")
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x18)
	.dwattr $C$DW$241, DW_AT_decl_column(0x10)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("fbk")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x19)
	.dwattr $C$DW$242, DW_AT_decl_column(0x10)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("err")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$243, DW_AT_decl_column(0x10)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("out")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$244, DW_AT_decl_column(0x10)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("carryOver")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$245, DW_AT_decl_column(0x10)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("Kp")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$246, DW_AT_decl_column(0x10)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("Ki")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$247, DW_AT_decl_column(0x10)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("Kerr")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$248, DW_AT_decl_column(0x10)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("KerrOld")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x20)
	.dwattr $C$DW$249, DW_AT_decl_column(0x10)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("Umax")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x21)
	.dwattr $C$DW$250, DW_AT_decl_column(0x10)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("Umin")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x22)
	.dwattr $C$DW$251, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71
$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$71, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$71


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x18)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("Ref")
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$252, DW_AT_decl_column(0x1e)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("Fbk")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$253, DW_AT_decl_column(0x12)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("Out")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$254, DW_AT_decl_column(0x12)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("Kp")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$255, DW_AT_decl_column(0x12)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("Ki")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$256, DW_AT_decl_column(0x12)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("Umax")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$257, DW_AT_decl_column(0x12)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("Umin")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x30)
	.dwattr $C$DW$258, DW_AT_decl_column(0x12)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("up")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x31)
	.dwattr $C$DW$259, DW_AT_decl_column(0x12)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("ui")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x32)
	.dwattr $C$DW$260, DW_AT_decl_column(0x12)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("v1")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x33)
	.dwattr $C$DW$261, DW_AT_decl_column(0x12)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("i1")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x34)
	.dwattr $C$DW$262, DW_AT_decl_column(0x12)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("w1")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x35)
	.dwattr $C$DW$263, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$89, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$89


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("Ref")
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$264, DW_AT_decl_column(0x1e)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("Fbk")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$265, DW_AT_decl_column(0x12)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("Out")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$266, DW_AT_decl_column(0x12)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("c1")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$267, DW_AT_decl_column(0x12)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("c2")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$268, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$34


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x0e)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("Kr")
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x32)
	.dwattr $C$DW$269, DW_AT_decl_column(0x1e)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("Kp")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x33)
	.dwattr $C$DW$270, DW_AT_decl_column(0x12)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("Ki")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x34)
	.dwattr $C$DW$271, DW_AT_decl_column(0x12)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("Kd")
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x35)
	.dwattr $C$DW$272, DW_AT_decl_column(0x12)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("Km")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x36)
	.dwattr $C$DW$273, DW_AT_decl_column(0x12)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("Umax")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x37)
	.dwattr $C$DW$274, DW_AT_decl_column(0x12)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("Umin")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x38)
	.dwattr $C$DW$275, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$35


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x10)
$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("up")
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$276, DW_AT_decl_column(0x1e)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("ui")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$277, DW_AT_decl_column(0x12)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("ud")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$278, DW_AT_decl_column(0x12)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("v1")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$279, DW_AT_decl_column(0x12)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("i1")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$280, DW_AT_decl_column(0x12)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("d1")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x40)
	.dwattr $C$DW$281, DW_AT_decl_column(0x12)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("d2")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x41)
	.dwattr $C$DW$282, DW_AT_decl_column(0x12)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("w1")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x42)
	.dwattr $C$DW$283, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x28)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$284, DW_AT_name("term")
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x46)
	.dwattr $C$DW$284, DW_AT_decl_column(0x21)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$285, DW_AT_name("param")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x47)
	.dwattr $C$DW$285, DW_AT_decl_column(0x16)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$286, DW_AT_name("data")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x48)
	.dwattr $C$DW$286, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$90, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$90


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0c)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("Freq")
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x25)
	.dwattr $C$DW$287, DW_AT_decl_column(0x1d)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x26)
	.dwattr $C$DW$288, DW_AT_decl_column(0x1d)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("Angle")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x27)
	.dwattr $C$DW$289, DW_AT_decl_column(0x1d)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("Gain")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x28)
	.dwattr $C$DW$290, DW_AT_decl_column(0x1d)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("Out")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x29)
	.dwattr $C$DW$291, DW_AT_decl_column(0x1d)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("Offset")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$292, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$38, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$70, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$70


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x12)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("ElecTheta")
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0f)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("MechTheta")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$294, DW_AT_decl_column(0x0f)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$295, DW_AT_name("DirectionQep")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0f)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$296, DW_AT_name("QepPeriod")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0f)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$297, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x21)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0f)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$298, DW_AT_name("RawTheta")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x22)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0f)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("MechScaler")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x23)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0f)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$300, DW_AT_name("LineEncoder")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x24)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0f)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$301, DW_AT_name("PolePairs")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x25)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0f)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$302, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x26)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0f)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$303, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x28)
	.dwattr $C$DW$303, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("QEP")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$72, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$72


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x12)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("Ualpha")
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$304, DW_AT_decl_column(0x10)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("Ubeta")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$305, DW_AT_decl_column(0x10)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("Ta")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$306, DW_AT_decl_column(0x10)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("Tb")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$307, DW_AT_decl_column(0x10)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("Tc")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$308, DW_AT_decl_column(0x10)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("tmp1")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x30)
	.dwattr $C$DW$309, DW_AT_decl_column(0x10)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("tmp2")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x31)
	.dwattr $C$DW$310, DW_AT_decl_column(0x10)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("tmp3")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x32)
	.dwattr $C$DW$311, DW_AT_decl_column(0x10)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$312, DW_AT_name("VecSector")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x33)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$94, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$94


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$313, DW_AT_name("ADCINT1")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x62)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$314, DW_AT_name("ADCINT2")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x63)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$315, DW_AT_name("ADCINT3")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x64)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0c)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$316, DW_AT_name("ADCINT4")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x65)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0c)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$317, DW_AT_name("rsvd1")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$317, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x66)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$44, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$318, DW_AT_name("all")
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$318, DW_AT_decl_column(0x0d)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$319, DW_AT_name("bit")
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$319, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$45, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$320	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$45)

$C$DW$T$82	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$320)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$83


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x22)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$321, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$321, DW_AT_decl_column(0x2e)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$322, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$322, DW_AT_decl_column(0x2e)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$323, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$323, DW_AT_decl_column(0x2e)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$324, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0xde)
	.dwattr $C$DW$324, DW_AT_decl_column(0x2e)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$325, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$325, DW_AT_decl_column(0x2e)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$326, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$326, DW_AT_decl_column(0x2e)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$327, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$327, DW_AT_decl_column(0x2e)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$328, DW_AT_name("QUTMR")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$328, DW_AT_decl_column(0x2e)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$329, DW_AT_name("QUPRD")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$329, DW_AT_decl_column(0x2e)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$330, DW_AT_name("QWDTMR")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$330, DW_AT_decl_column(0x2e)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$331, DW_AT_name("QWDPRD")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$331, DW_AT_decl_column(0x2e)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$332, DW_AT_name("QDECCTL")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$332, DW_AT_decl_column(0x2e)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$333, DW_AT_name("QEPCTL")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$333, DW_AT_decl_column(0x2e)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$334, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$334, DW_AT_decl_column(0x2e)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$335, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$335, DW_AT_decl_column(0x2e)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$336, DW_AT_name("QEINT")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0xea)
	.dwattr $C$DW$336, DW_AT_decl_column(0x2e)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$337, DW_AT_name("QFLG")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$337, DW_AT_decl_column(0x2e)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$338, DW_AT_name("QCLR")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0xec)
	.dwattr $C$DW$338, DW_AT_decl_column(0x2e)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$339, DW_AT_name("QFRC")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0xed)
	.dwattr $C$DW$339, DW_AT_decl_column(0x2e)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$340, DW_AT_name("QEPSTS")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0xee)
	.dwattr $C$DW$340, DW_AT_decl_column(0x2e)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$341, DW_AT_name("QCTMR")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xef)
	.dwattr $C$DW$341, DW_AT_decl_column(0x2e)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$342, DW_AT_name("QCPRD")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$342, DW_AT_decl_column(0x2e)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$343, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$343, DW_AT_decl_column(0x2e)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$344, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$344, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$47, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$345	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$47)

$C$DW$T$73	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$345)

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$74


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$346, DW_AT_name("UPPS")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$346, DW_AT_bit_size(0x04)
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$347, DW_AT_name("CCPS")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$347, DW_AT_bit_size(0x03)
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$348, DW_AT_name("rsvd1")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$348, DW_AT_bit_size(0x08)
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$349, DW_AT_name("CEN")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x60)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$48, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$350, DW_AT_name("all")
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x64)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0d)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$351, DW_AT_name("bit")
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x65)
	.dwattr $C$DW$351, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$49, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$352, DW_AT_name("INT")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$353, DW_AT_name("PCE")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0c)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$354, DW_AT_name("PHE")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0c)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$355, DW_AT_name("QDC")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$355, DW_AT_decl_column(0x0c)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$356, DW_AT_name("WTO")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$357, DW_AT_name("PCU")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$358, DW_AT_name("PCO")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$359, DW_AT_name("PCR")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$360, DW_AT_name("PCM")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$361, DW_AT_name("SEL")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0c)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$362, DW_AT_name("IEL")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0c)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$363, DW_AT_name("UTO")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0xab)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$364, DW_AT_name("rsvd1")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$364, DW_AT_bit_size(0x04)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xac)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$50, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$365, DW_AT_name("all")
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0d)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$366, DW_AT_name("bit")
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$366, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$51, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$367, DW_AT_name("rsvd1")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$367, DW_AT_bit_size(0x05)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x37)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$368, DW_AT_name("QSP")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x38)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$369, DW_AT_name("QIP")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x39)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$370, DW_AT_name("QBP")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$371, DW_AT_name("QAP")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$372, DW_AT_name("IGATE")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0c)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$373, DW_AT_name("SWAP")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$374, DW_AT_name("XCR")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$375, DW_AT_name("SPSEL")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$376, DW_AT_name("SOEN")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x40)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$377, DW_AT_name("QSRC")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$377, DW_AT_bit_size(0x02)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x41)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$52, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$378, DW_AT_name("all")
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x45)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0d)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$379, DW_AT_name("bit")
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x46)
	.dwattr $C$DW$379, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$53, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$380, DW_AT_name("rsvd1")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x76)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$381, DW_AT_name("PCE")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x77)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$382, DW_AT_name("QPE")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x78)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$383, DW_AT_name("QDC")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x79)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$384, DW_AT_name("WTO")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$385, DW_AT_name("PCU")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$386, DW_AT_name("PCO")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$387, DW_AT_name("PCR")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$388, DW_AT_name("PCM")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$389, DW_AT_name("SEL")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$390, DW_AT_name("IEL")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x80)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$391, DW_AT_name("UTO")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x81)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$392, DW_AT_name("rsvd2")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$392, DW_AT_bit_size(0x04)
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x82)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$54, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$393, DW_AT_name("all")
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x86)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0d)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$394, DW_AT_name("bit")
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x87)
	.dwattr $C$DW$394, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$55, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$395, DW_AT_name("WDE")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$396, DW_AT_name("UTE")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$397, DW_AT_name("QCLM")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$398, DW_AT_name("QPEN")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$399, DW_AT_name("IEL")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$399, DW_AT_bit_size(0x02)
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$400, DW_AT_name("SEL")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$401, DW_AT_name("SWI")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x50)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0c)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$402, DW_AT_name("IEI")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$402, DW_AT_bit_size(0x02)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x51)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$403, DW_AT_name("SEI")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$403, DW_AT_bit_size(0x02)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x52)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$404, DW_AT_name("PCRM")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$404, DW_AT_bit_size(0x02)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x53)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$405, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$405, DW_AT_bit_size(0x02)
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x54)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$56, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$406, DW_AT_name("all")
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x58)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0d)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$407, DW_AT_name("bit")
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x59)
	.dwattr $C$DW$407, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$57, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$408, DW_AT_name("PCEF")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0xca)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$409, DW_AT_name("FIMF")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0c)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$410, DW_AT_name("CDEF")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$411, DW_AT_name("COEF")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$412, DW_AT_name("QDLF")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0xce)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$413, DW_AT_name("QDF")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$414, DW_AT_name("FIDF")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$415, DW_AT_name("UPEVNT")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0c)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$416, DW_AT_name("rsvd1")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$416, DW_AT_bit_size(0x08)
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$58, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$417, DW_AT_name("all")
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0d)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$418, DW_AT_name("bit")
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$418, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$59, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$419, DW_AT_name("INT")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$420, DW_AT_name("PCE")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$421, DW_AT_name("PHE")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$422, DW_AT_name("QDC")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$423, DW_AT_name("WTO")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$424, DW_AT_name("PCU")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x90)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$425, DW_AT_name("PCO")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x91)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0c)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$426, DW_AT_name("PCR")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x92)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0c)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$427, DW_AT_name("PCM")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x93)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0c)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$428, DW_AT_name("SEL")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x94)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$429, DW_AT_name("IEL")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x95)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$430, DW_AT_name("UTO")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x96)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$431, DW_AT_name("rsvd1")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$431, DW_AT_bit_size(0x04)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x97)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$60, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$432, DW_AT_name("all")
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0d)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$433, DW_AT_name("bit")
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$433, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$61, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$434, DW_AT_name("rsvd1")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$435, DW_AT_name("PCE")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$436, DW_AT_name("PHE")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$437, DW_AT_name("QDC")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0c)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$438, DW_AT_name("WTO")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0c)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$439, DW_AT_name("PCU")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0xba)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$440, DW_AT_name("PCO")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$441, DW_AT_name("PCR")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$442, DW_AT_name("PCM")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$443, DW_AT_name("SEL")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$444, DW_AT_name("IEL")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$445, DW_AT_name("UTO")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0c)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$446, DW_AT_name("rsvd2")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x04)
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$447, DW_AT_name("all")
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0d)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$448, DW_AT_name("bit")
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$448, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$63, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$449, DW_AT_name("PCSPW")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$449, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x69)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0c)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$450, DW_AT_name("PCE")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0c)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$451, DW_AT_name("PCPOL")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$452, DW_AT_name("PCLOAD")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$453, DW_AT_name("PCSHDW")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$454, DW_AT_name("all")
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x71)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0d)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$455, DW_AT_name("bit")
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x72)
	.dwattr $C$DW$455, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$65, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x1e)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("carrierMid")
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x38)
	.dwattr $C$DW$456, DW_AT_decl_column(0x11)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("adcScale")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x39)
	.dwattr $C$DW$457, DW_AT_decl_column(0x11)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$458, DW_AT_decl_column(0x11)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("tSamp")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$459, DW_AT_decl_column(0x11)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("Rd")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$460, DW_AT_decl_column(0x11)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("Rq")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$461, DW_AT_decl_column(0x11)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("Ld")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$462, DW_AT_decl_column(0x11)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("Lq")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x40)
	.dwattr $C$DW$463, DW_AT_decl_column(0x11)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("Vbase")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x41)
	.dwattr $C$DW$464, DW_AT_decl_column(0x11)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("Ibase")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x42)
	.dwattr $C$DW$465, DW_AT_decl_column(0x11)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("wccD")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x43)
	.dwattr $C$DW$466, DW_AT_decl_column(0x11)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("wccQ")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x44)
	.dwattr $C$DW$467, DW_AT_decl_column(0x11)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("Vdcbus")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x45)
	.dwattr $C$DW$468, DW_AT_decl_column(0x11)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("BemfK")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x46)
	.dwattr $C$DW$469, DW_AT_decl_column(0x11)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("Wbase")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x47)
	.dwattr $C$DW$470, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$66, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$91, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$91


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("_FCL_Vars_t_")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x52)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$471, DW_AT_name("lsw")
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$471, DW_AT_decl_column(0x12)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$472, DW_AT_name("Q_cla")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x81)
	.dwattr $C$DW$472, DW_AT_decl_column(0x11)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("speedWePrev")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x82)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0f)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("pangle")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x83)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0f)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$475, DW_AT_name("rg")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x84)
	.dwattr $C$DW$475, DW_AT_decl_column(0x12)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$476, DW_AT_name("pi_iq")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x85)
	.dwattr $C$DW$476, DW_AT_decl_column(0x18)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$477, DW_AT_name("qep")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x86)
	.dwattr $C$DW$477, DW_AT_decl_column(0x09)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$478, DW_AT_name("ptrQEP")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x87)
	.dwattr $C$DW$478, DW_AT_decl_column(0x20)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$479, DW_AT_name("taskCount")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x88)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$76, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("FCL_Vars_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$92, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$93


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$105, DW_AT_byte_size(0xa4)
$C$DW$480	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$480, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("_HAL_MTR_Obj_")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x12)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$481, DW_AT_name("pwmHandle")
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0d)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$482, DW_AT_name("cmpssHandle")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$482, DW_AT_decl_column(0x0d)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$483, DW_AT_name("spiHandle")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0d)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$484, DW_AT_name("qepHandle")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0d)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$485, DW_AT_name("flagEnablePWM")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$79, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("HAL_MTR_Obj")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$108, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x24)
$C$DW$486	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$486, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("HAL_MTR_Handle")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$487	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$111)

$C$DW$T$112	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$487)

	.dwendtag $C$DW$TU$112


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("_MOTOR_Vars_t_")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x14c)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$488, DW_AT_name("posCntr")
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x139)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0e)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$489, DW_AT_name("posCntrMax")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0e)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("posSlewRate")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0f)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("baseFreq")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0f)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("poles")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0f)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("Ts")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x140)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0f)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("maxModIndex")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x141)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0f)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("voltageLimit")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x143)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0f)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("currentLimit")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x144)
	.dwattr $C$DW$496, DW_AT_decl_column(0x0f)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("tempIdRef")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x146)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0f)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("IdRef_start")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x147)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0f)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("IdRef_run")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x148)
	.dwattr $C$DW$499, DW_AT_decl_column(0x0f)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("IdRef")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x149)
	.dwattr $C$DW$500, DW_AT_decl_column(0x0f)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("IqRef")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0f)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("speedRef")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0f)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("positionRef")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0f)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("lsw1Speed")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0f)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("offset_currentAs")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x151)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0f)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("offset_currentBs")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x152)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0f)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("offset_currentCs")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x153)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0f)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("currentAs")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x155)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0f)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("currentBs")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x156)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0f)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("currentCs")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x157)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0f)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("currentScale")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x159)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0f)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("voltageScale")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0f)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("adcScale")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0f)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("currentInvSF")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0f)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("voltageInvSF")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0f)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("posElecTheta")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0f)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("posMechTheta")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x160)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0f)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$518, DW_AT_name("pwmCompA")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x162)
	.dwattr $C$DW$518, DW_AT_decl_column(0x18)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$519, DW_AT_name("pwmCompB")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x163)
	.dwattr $C$DW$519, DW_AT_decl_column(0x18)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$520, DW_AT_name("pwmCompC")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x164)
	.dwattr $C$DW$520, DW_AT_decl_column(0x18)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$521, DW_AT_name("curA_PPBRESULT")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x166)
	.dwattr $C$DW$521, DW_AT_decl_column(0x17)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$522, DW_AT_name("curB_PPBRESULT")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x167)
	.dwattr $C$DW$522, DW_AT_decl_column(0x17)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$523, DW_AT_name("curC_PPBRESULT")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x168)
	.dwattr $C$DW$523, DW_AT_decl_column(0x17)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$524, DW_AT_name("volDC_PPBRESULT")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x169)
	.dwattr $C$DW$524, DW_AT_decl_column(0x17)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$525, DW_AT_name("AdcIntFlag")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$525, DW_AT_decl_column(0x23)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$526, DW_AT_name("D_cpu")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$526, DW_AT_decl_column(0x11)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$527, DW_AT_name("rc")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0d)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$528, DW_AT_name("clarke")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$528, DW_AT_decl_column(0x0c)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$529, DW_AT_name("park")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x170)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0a)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$530, DW_AT_name("ipark")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x171)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0b)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$531, DW_AT_name("speed")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x172)
	.dwattr $C$DW$531, DW_AT_decl_column(0x14)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$532, DW_AT_name("pi_id")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x174)
	.dwattr $C$DW$532, DW_AT_decl_column(0x18)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$533, DW_AT_name("pi_pos")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x175)
	.dwattr $C$DW$533, DW_AT_decl_column(0x13)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$534, DW_AT_name("pid_spd")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x176)
	.dwattr $C$DW$534, DW_AT_decl_column(0x15)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$535, DW_AT_name("FCL_params")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x178)
	.dwattr $C$DW$535, DW_AT_decl_column(0x16)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$536, DW_AT_name("ptrFCL")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x118]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x179)
	.dwattr $C$DW$536, DW_AT_decl_column(0x12)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$537, DW_AT_name("svgen")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0b)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("Vdcbus")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0f)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("VdcbusMax")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0f)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("VdcbusMin")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x130]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0f)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$541, DW_AT_name("isrTicker")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x181)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0e)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("fclLatencyInMicroSec")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x183)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0f)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$543, DW_AT_name("fclClrCntr")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x184)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0f)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$544, DW_AT_name("fclCycleCountMax")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x137]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x185)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0f)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$545, DW_AT_name("speedLoopPrescaler")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x187)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0e)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$546, DW_AT_name("speedLoopCount")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x139]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x188)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0e)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$547, DW_AT_name("alignCntr")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x189)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0e)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$548, DW_AT_name("alignCnt")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x13b]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0e)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$549, DW_AT_name("posPtrMax")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0e)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$550, DW_AT_name("posPtr")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x13d]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0e)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$551, DW_AT_name("currentThreshHi")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0e)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$552, DW_AT_name("currentThreshLo")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0e)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$553, DW_AT_name("drvEnableGateGPIO")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x191)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0e)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$554, DW_AT_name("drvFaultTripGPIO")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x141]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x192)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0e)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$555, DW_AT_name("drvClearFaultGPIO")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x193)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0e)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$556, DW_AT_name("tripCountDMC")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x143]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x195)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0e)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$557, DW_AT_name("tripFlagDMC")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x196)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0e)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$558, DW_AT_name("tripFlagPrev")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x145]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x197)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0e)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$559, DW_AT_name("runMotor")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x199)
	.dwattr $C$DW$559, DW_AT_decl_column(0x15)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$560, DW_AT_name("ctrlState")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x147]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$560, DW_AT_decl_column(0x15)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$561, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$561, DW_AT_decl_column(0x0a)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$562, DW_AT_name("lsw2EntryFlag")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x149]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$562, DW_AT_decl_column(0x0a)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$563, DW_AT_name("offsetDoneFlag")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$563, DW_AT_decl_column(0x0a)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$564, DW_AT_name("sfraEnableFlag")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x14b]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$564, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$99, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("MOTOR_Vars_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$115, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$T$116	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117
$C$DW$565	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$116)

$C$DW$T$117	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$565)

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118

$C$DW$T$118	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x298)
$C$DW$566	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$566, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$118

	.dwendtag $C$DW$TU$118


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


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("Uint16")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$43


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$40


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("int32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$27


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("Uint32")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$46


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$21


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x08)
$C$DW$567	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$567, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x06)
$C$DW$568	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$568, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$569	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$21)

$C$DW$T$80	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$569)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$81


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$570	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$21)

$C$DW$T$128	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$570)

	.dwendtag $C$DW$TU$128


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


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$571	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$16)

$C$DW$T$147	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$571)

	.dwendtag $C$DW$TU$147


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149
$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$149


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150
$C$DW$572	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$149)

$C$DW$T$150	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$572)

	.dwendtag $C$DW$TU$150


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$151


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152
$C$DW$573	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$151)

$C$DW$T$152	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$573)

	.dwendtag $C$DW$TU$152


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$78, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$78, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$78


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("motPars")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x0e)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("cosWTs")
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$574, DW_AT_decl_column(0x0f)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("sinWTs")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$575, DW_AT_decl_column(0x0f)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("expVal")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$576, DW_AT_decl_column(0x0f)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("kDirect")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$577, DW_AT_decl_column(0x0f)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("idErr")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x50)
	.dwattr $C$DW$578, DW_AT_decl_column(0x0f)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("iqErr")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x51)
	.dwattr $C$DW$579, DW_AT_decl_column(0x0f)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("carryOver")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x52)
	.dwattr $C$DW$580, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$100, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69
$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$69, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$69

