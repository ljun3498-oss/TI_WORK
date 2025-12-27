;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/sysctl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$29)

	.dwendtag $C$DW$1


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


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("__disable_interrupts")
	.dwattr $C$DW$5, DW_AT_linkage_name("__disable_interrupts")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{40C428D8-F274-4D28-B80D-677500C53D06} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{9B814895-2352-49BE-86F9-631B642A1F23} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{31DACA0D-DEC3-426D-ADC1-BB34E6471708} 
	.sect	".text"
 .if __TI_EABI__
 .asg    SysCtl_delay    , _SysCtl_delay
 .endif
 .def _SysCtl_delay
 .sect ".TI.ramfunc"
 .global  _SysCtl_delay
_SysCtl_delay:
 SUB    ACC,#1
 BF     _SysCtl_delay, GEQ
 LRETR
	.sect	".text:SysCtl_pollCpuTimer"
	.clink

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("SysCtl_pollCpuTimer")
	.dwattr $C$DW$6, DW_AT_low_pc(||SysCtl_pollCpuTimer||)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("SysCtl_pollCpuTimer")
	.dwattr $C$DW$6, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 79,column 1,is_stmt,address ||SysCtl_pollCpuTimer||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_pollCpuTimer||

;***************************************************************
;* FNAME: SysCtl_pollCpuTimer           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_pollCpuTimer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sysctl.c",line 85,column 5,is_stmt,isa 0
        MOV       ACC,#2000             ; [CPU_ALU] |85| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$7, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |85| 
        ; call occurs [#||SysCtl_delay||] ; [] |85| 
||$C$L1||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:SysCtl_selectXTAL"
	.clink
	.global	||SysCtl_selectXTAL||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("SysCtl_selectXTAL")
	.dwattr $C$DW$9, DW_AT_low_pc(||SysCtl_selectXTAL||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("SysCtl_selectXTAL")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x421)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../src_driver/sysctl.c",line 1058,column 1,is_stmt,address ||SysCtl_selectXTAL||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectXTAL||

;***************************************************************
;* FNAME: SysCtl_selectXTAL             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

||SysCtl_selectXTAL||:
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("t2TCR")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -1]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("t2TPR")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to t2TPRH
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("t2TPRH")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to t2CLKCTL
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg8]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("t2PRD")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -6]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("clksrcctl2")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -3]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("auxpllctl1")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -4]

;* AR1   assigned to auxclkdivsel
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("auxclkdivsel")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg6]

;* AL    assigned to tcrValue
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("tcrValue")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("tcrValue")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("tcrValue")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

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
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
	.dwpsn	file "../src_driver/sysctl.c",line 1065,column 5,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |1065| 
	.dwpsn	file "../src_driver/sysctl.c",line 1074,column 25,is_stmt,isa 0
        MOVL      XAR6,#381450          ; [CPU_ARAU] |1074| 
	.dwpsn	file "../src_driver/sysctl.c",line 1075,column 25,is_stmt,isa 0
        MOVL      XAR5,#381464          ; [CPU_ARAU] |1075| 
	.dwpsn	file "../src_driver/sysctl.c",line 1065,column 5,is_stmt,isa 0
        MOVZ      AR2,*+XAR4[0]         ; [CPU_ALU] |1065| 
	.dwpsn	file "../src_driver/sysctl.c",line 1066,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |1066| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |1066| 
	.dwpsn	file "../src_driver/sysctl.c",line 1076,column 27,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |1076| 
	.dwpsn	file "../src_driver/sysctl.c",line 1067,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x0c12)       ; [CPU_FPU] |1067| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1067| 
	.dwpsn	file "../src_driver/sysctl.c",line 1068,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c16)        ; [CPU_ALU] |1068| 
	.dwpsn	file "../src_driver/sysctl.c",line 1069,column 5,is_stmt,isa 0
        MOV       AR3,*(0:0x0c17)       ; [CPU_ALU] |1069| 
	.dwpsn	file "../src_driver/sysctl.c",line 1068,column 5,is_stmt,isa 0
        MOV       *-SP[2],AL            ; [CPU_ALU] |1068| 
	.dwpsn	file "../src_driver/sysctl.c",line 1074,column 25,is_stmt,isa 0
        MOV       AL,*+XAR6[0]          ; [CPU_ALU] |1074| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |1074| 
	.dwpsn	file "../src_driver/sysctl.c",line 1075,column 25,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1075| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |1075| 
	.dwpsn	file "../src_driver/sysctl.c",line 1076,column 27,is_stmt,isa 0
        MOVZ      AR1,*+XAR4[0]         ; [CPU_ALU] |1076| 
	.dwpsn	file "../src_driver/sysctl.c",line 1085,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1085| 
	.dwpsn	file "../src_driver/sysctl.c",line 1086,column 5,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1086| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1086| 
        ORB       AL,#0x01              ; [CPU_ALU] |1086| 
	.dwpsn	file "../src_driver/sysctl.c",line 1091,column 5,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |1091| 
	.dwpsn	file "../src_driver/sysctl.c",line 1086,column 5,is_stmt,isa 0
        MOV       *+XAR6[0],AL          ; [CPU_ALU] |1086| 
	.dwpsn	file "../src_driver/sysctl.c",line 1090,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |1090| 
	.dwpsn	file "../src_driver/sysctl.c",line 1091,column 5,is_stmt,isa 0
        MOVB      *+XAR4[0],#3,UNC      ; [CPU_ALU] |1091| 
 RPT #69 || NOP
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOVL      XAR4,#1023            ; [CPU_ARAU] |335| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 190,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |190| 
        AND       AL,#0xbfff            ; [CPU_ALU] |190| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |190| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |259| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |259| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |260| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOV32     *(0:0x0c12),XAR4      ; [CPU_FPU] |335| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 445,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |445| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 450,column 9,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |450| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |450| 
        ORB       AL,#0x06              ; [CPU_ALU] |450| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |450| 
 RPT #69 || NOP
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 458,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xffc7  ; [CPU_ALU] |458| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |458| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 463,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |463| 
 RPT #69 || NOP
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 307,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |307| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |307| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 308,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |308| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |308| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 313,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |313| 
        AND       AL,#0xffef            ; [CPU_ALU] |313| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |313| 
	.dwpsn	file "../src_driver/sysctl.c",line 1126,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1126| 
	.dwpsn	file "../src_driver/sysctl.c",line 1130,column 5,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1130| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |1130| 
	.dwpsn	file "../src_driver/sysctl.c",line 1131,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1131| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 1136,column 5,is_stmt,isa 0
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("SysCtl_pollCpuTimer")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #||SysCtl_pollCpuTimer|| ; [CPU_ALU] |1136| 
        ; call occurs [#||SysCtl_pollCpuTimer||] ; [] |1136| 
	.dwpsn	file "../src_driver/sysctl.c",line 1141,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1141| 
	.dwpsn	file "../src_driver/sysctl.c",line 1142,column 5,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1142| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1142| 
        ORB       AL,#0x01              ; [CPU_ALU] |1142| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1142| 
	.dwpsn	file "../src_driver/sysctl.c",line 1146,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1146| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2662| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2662| 
        B         ||$C$L3||,NTC         ; [CPU_ALU] |2662| 
        ; branchcc occurs ; [] |2662| 
||$C$L2||:    
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2675,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2675| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2677,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |2677| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2679,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2679| 
	.dwpsn	file "../src_driver/sysctl.c",line 1162,column 9,is_stmt,isa 0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("SysCtl_pollCpuTimer")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #||SysCtl_pollCpuTimer|| ; [CPU_ALU] |1162| 
        ; call occurs [#||SysCtl_pollCpuTimer||] ; [] |1162| 
	.dwpsn	file "../src_driver/sysctl.c",line 1167,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1167| 
	.dwpsn	file "../src_driver/sysctl.c",line 1168,column 9,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1168| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1168| 
        ORB       AL,#0x01              ; [CPU_ALU] |1168| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1168| 
	.dwpsn	file "../src_driver/sysctl.c",line 1172,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1172| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2662| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2662| 
        B         ||$C$L2||,TC          ; [CPU_ALU] |2662| 
        ; branchcc occurs ; [] |2662| 
||$C$L3||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |259| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |259| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |260| 
	.dwpsn	file "../src_driver/sysctl.c",line 1183,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1183| 
	.dwpsn	file "../src_driver/sysctl.c",line 1184,column 5,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |1184| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |1184| 
        MOV       *+XAR4[0],AR2         ; [CPU_ALU] |1184| 
	.dwpsn	file "../src_driver/sysctl.c",line 1194,column 5,is_stmt,isa 0
        MOVL      XAR6,#381450          ; [CPU_ARAU] |1194| 
	.dwpsn	file "../src_driver/sysctl.c",line 1195,column 5,is_stmt,isa 0
        MOVL      XAR5,#381464          ; [CPU_ARAU] |1195| 
	.dwpsn	file "../src_driver/sysctl.c",line 1185,column 5,is_stmt,isa 0
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |1185| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1185| 
	.dwpsn	file "../src_driver/sysctl.c",line 1196,column 5,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |1196| 
	.dwpsn	file "../src_driver/sysctl.c",line 1186,column 5,is_stmt,isa 0
        MOV32     *(0:0x0c12),ACC       ; [CPU_FPU] |1186| 
        MOV       AL,*-SP[2]            ; [CPU_ALU] |1186| 
	.dwpsn	file "../src_driver/sysctl.c",line 1187,column 5,is_stmt,isa 0
        MOV       *(0:0x0c16),AL        ; [CPU_ALU] |1187| 
	.dwpsn	file "../src_driver/sysctl.c",line 1188,column 5,is_stmt,isa 0
        MOV       *(0:0x0c17),AR3       ; [CPU_ALU] |1188| 
	.dwpsn	file "../src_driver/sysctl.c",line 1189,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |1189| 
        ORB       AL,#0x20              ; [CPU_ALU] |1189| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |1189| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1189| 
	.dwpsn	file "../src_driver/sysctl.c",line 1194,column 5,is_stmt,isa 0
        MOV       *+XAR6[0],AL          ; [CPU_ALU] |1194| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1194| 
	.dwpsn	file "../src_driver/sysctl.c",line 1195,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |1195| 
	.dwpsn	file "../src_driver/sysctl.c",line 1196,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],AR1         ; [CPU_ALU] |1196| 
 RPT #69 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1200,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1200| 
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x4b1)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:SysCtl_selectOscSource"
	.clink
	.global	||SysCtl_selectOscSource||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("SysCtl_selectOscSource")
	.dwattr $C$DW$24, DW_AT_low_pc(||SysCtl_selectOscSource||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("SysCtl_selectOscSource")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x4b9)
	.dwattr $C$DW$24, DW_AT_decl_column(0x01)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 1210,column 1,is_stmt,address ||SysCtl_selectOscSource||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectOscSource||
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("oscSource")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_selectOscSource        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_selectOscSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sysctl.c",line 1218,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1218| 
	.dwpsn	file "../src_driver/sysctl.c",line 1219,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |1219| 
        MOVL      XAR6,ACC              ; [CPU_FPU] |1219| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |1219| 
        ; branchcc occurs ; [] |1219| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |1219| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1219| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1219| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |1219| 
        ; branchcc occurs ; [] |1219| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |1219| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1219| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1219| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |1219| 
        ; branchcc occurs ; [] |1219| 
	.dwpsn	file "../src_driver/sysctl.c",line 1257,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1257| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |1257| 
        ORB       AL,#0x02              ; [CPU_ALU] |1257| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1257| 
	.dwpsn	file "../src_driver/sysctl.c",line 1270,column 13,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |1270| 
        ; branch occurs ; [] |1270| 
||$C$L4||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1250,column 13,is_stmt,isa 0
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("SysCtl_selectXTAL")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #||SysCtl_selectXTAL|| ; [CPU_ALU] |1250| 
        ; call occurs [#||SysCtl_selectXTAL||] ; [] |1250| 
	.dwpsn	file "../src_driver/sysctl.c",line 1251,column 13,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |1251| 
        ; branch occurs ; [] |1251| 
||$C$L5||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1225,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1225| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |1225| 
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1233,column 13,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |1233| 
||$C$L6||:    
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1241,column 13,is_stmt,isa 0
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |1241| 
||$C$L7||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1278,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1278| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x4ff)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:SysCtl_setClock"
	.clink
	.global	||SysCtl_setClock||

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("SysCtl_setClock")
	.dwattr $C$DW$28, DW_AT_low_pc(||SysCtl_setClock||)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_linkage_name("SysCtl_setClock")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$28, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-24)
	.dwpsn	file "../src_driver/sysctl.c",line 252,column 1,is_stmt,address ||SysCtl_setClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setClock||
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("config")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setClock               FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 14 Auto,  6 SOE     *
;***************************************************************

||SysCtl_setClock||:
;* R1    assigned to $O$C3
;* AR2   assigned to $O$K10
;* R0    assigned to $O$U127
;* AL    assigned to $O$S1
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("config")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_breg20 -16]

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("divSel")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -3]

;* AR1   assigned to iMult
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("iMult")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg6]

;* AR3   assigned to fMult
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("fMult")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg10]

;* AL    assigned to pllMult
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("pllMult")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]

;* AL    assigned to div
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("div")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("tempSCSR")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -4]

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("tempWDCR")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -5]

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("tempWDWCR")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -6]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("intStatus")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -7]

;* AR6   assigned to t1TCR
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("t1TCR")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg16]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("t1TPR")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -8]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("t1TPRH")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -9]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("t2TCR")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -10]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("t2TPR")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -11]

;* AR5   assigned to t2TPRH
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("t2TPRH")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to t2CLKCTL
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg18]

;* XT    assigned to t1PRD
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("t1PRD")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg21]

;* AR0   assigned to t2PRD
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("t2PRD")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg4]

;* AR6   assigned to ctr1
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("ctr1")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg16]

;* R0    assigned to mult
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("mult")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x2b]

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
        ADDB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -24
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2662| 
	.dwpsn	file "../src_driver/sysctl.c",line 252,column 1,is_stmt,isa 0
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |252| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2662| 
	.dwpsn	file "../src_driver/sysctl.c",line 738,column 5,is_stmt,isa 0
        MOVB      AL,#0,TC              ; [CPU_ALU] |738| 
        B         ||$C$L27||,TC         ; [CPU_ALU] |738| 
        ; branchcc occurs ; [] |738| 
	.dwpsn	file "../src_driver/sysctl.c",line 282,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |282| 
        ANDB      AH,#3                 ; [CPU_ALU] |282| 
        MOVL      XAR1,*-SP[16]         ; [CPU_FPU] 
        MOVL      XAR2,ACC              ; [CPU_ALU] |282| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("SysCtl_selectOscSource")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||SysCtl_selectOscSource|| ; [CPU_ALU] |282| 
        ; call occurs [#||SysCtl_selectOscSource||] ; [] |282| 
	.dwpsn	file "../src_driver/sysctl.c",line 287,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |287| 
	.dwpsn	file "../src_driver/sysctl.c",line 288,column 9,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |288| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |288| 
	.dwpsn	file "../src_driver/sysctl.c",line 290,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |290| 
	.dwpsn	file "../src_driver/sysctl.c",line 295,column 9,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |295| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |295| 
        ; call occurs [#||SysCtl_delay||] ; [] |295| 
	.dwpsn	file "../src_driver/sysctl.c",line 300,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |300| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |300| 
	.dwpsn	file "../src_driver/sysctl.c",line 301,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |301| 
        AND       AH,#32768             ; [CPU_ALU] |301| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |301| 
        TEST      ACC                   ; [CPU_ALU] |301| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |301| 
        ; branchcc occurs ; [] |301| 
	.dwpsn	file "../src_driver/sysctl.c",line 254,column 20,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_ALU] |254| 
        MOVZ      AR3,AR1               ; [CPU_ALU] |254| 
	.dwpsn	file "../src_driver/sysctl.c",line 372,column 9,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |372| 
        ; branch occurs ; [] |372| 
||$C$L8||:    
        MOV       AL,*-SP[16]           ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 329,column 13,is_stmt,isa 0
        ANDB      AL,#0x7f              ; [CPU_ALU] |329| 
        MOVZ      AR1,AL                ; [CPU_ALU] |329| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |329| 
	.dwpsn	file "../src_driver/sysctl.c",line 330,column 13,is_stmt,isa 0
        SFR       ACC,13                ; [CPU_ALU] |330| 
        ANDB      AL,#0x03              ; [CPU_ALU] |330| 
        MOVZ      AR3,AL                ; [CPU_ALU] |330| 
        MOVB      XAR6,#4               ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 303,column 13,is_stmt,isa 0
        MOVL      XAR5,#381228          ; [CPU_ARAU] |303| 
	.dwpsn	file "../src_driver/sysctl.c",line 324,column 13,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |324| 
	.dwpsn	file "../src_driver/sysctl.c",line 331,column 13,is_stmt,isa 0
        MOV       ACC,AR3 << #8         ; [CPU_ALU] |331| 
	.dwpsn	file "../src_driver/sysctl.c",line 303,column 13,is_stmt,isa 0
        MOV       AH,*+XAR5[0]          ; [CPU_ALU] |303| 
	.dwpsn	file "../src_driver/sysctl.c",line 331,column 13,is_stmt,isa 0
        OR        AL,AR1                ; [CPU_ALU] |331| 
	.dwpsn	file "../src_driver/sysctl.c",line 324,column 13,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |324| 
||$C$L9||:    
	.dwpsn	file "../src_driver/sysctl.c",line 344,column 17,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |344| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |344| 
 RPT #60 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 352,column 17,is_stmt,isa 0
        MOVL      XAR4,#381460          ; [CPU_ARAU] |352| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |352| 
	.dwpsn	file "../src_driver/sysctl.c",line 357,column 23,is_stmt,isa 0
        MOVL      XAR4,#381462          ; [CPU_ARAU] |357| 
||$C$L10||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |357| 
        B         ||$C$L10||,NTC        ; [CPU_ALU] |357| 
        ; branchcc occurs ; [] |357| 
	.dwpsn	file "../src_driver/sysctl.c",line 339,column 25,is_stmt,isa 0
        BANZ      ||$C$L9||,AR6--       ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
||$C$L11||:    
	.dwpsn	file "../src_driver/sysctl.c",line 372,column 9,is_stmt,isa 0
        AND       AL,*-SP[16],#0x1f80   ; [CPU_ALU] |372| 
        LSR       AL,7                  ; [CPU_ALU] |372| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |372| 
        CMPB      AL,#63                ; [CPU_ALU] |372| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |372| 
        ; branchcc occurs ; [] |372| 
	.dwpsn	file "../src_driver/sysctl.c",line 382,column 13,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |382| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |382| 
        ORB       AL,#0x3f              ; [CPU_ALU] |382| 
        B         ||$C$L13||,UNC        ; [CPU_ALU] |382| 
        ; branch occurs ; [] |382| 
||$C$L12||:    
	.dwpsn	file "../src_driver/sysctl.c",line 376,column 13,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |376| 
        MOVB      AL,#1                 ; [CPU_ALU] |376| 
        AND       AH,*+XAR4[0],#0xffc0  ; [CPU_ALU] |376| 
        ADD       AL,*-SP[3]            ; [CPU_ALU] |376| 
        OR        AL,AH                 ; [CPU_ALU] |376| 
||$C$L13||:    
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |376| 
	.dwpsn	file "../src_driver/sysctl.c",line 398,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x7022)        ; [CPU_ALU] |398| 
	.dwpsn	file "../src_driver/sysctl.c",line 405,column 9,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |405| 
	.dwpsn	file "../src_driver/sysctl.c",line 398,column 9,is_stmt,isa 0
        MOV       *-SP[4],AL            ; [CPU_ALU] |398| 
	.dwpsn	file "../src_driver/sysctl.c",line 399,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x7029)        ; [CPU_ALU] |399| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |399| 
	.dwpsn	file "../src_driver/sysctl.c",line 400,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x702a)        ; [CPU_ALU] |400| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |400| 
	.dwpsn	file "../src_driver/sysctl.c",line 405,column 9,is_stmt,isa 0
        MOV       *(0:0x702a),AH        ; [CPU_ALU] |405| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2016,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2016| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2021,column 5,is_stmt,isa 0
        MOVB      AH,#85                ; [CPU_ALU] |2021| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2022,column 5,is_stmt,isa 0
        MOVB      AL,#170               ; [CPU_ALU] |2022| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2021,column 5,is_stmt,isa 0
        MOV       *(0:0x7025),AH        ; [CPU_ALU] |2021| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2022,column 5,is_stmt,isa 0
        MOV       *(0:0x7025),AL        ; [CPU_ALU] |2022| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2024,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2024| 
	.dwpsn	file "../src_driver/sysctl.c",line 411,column 9,is_stmt,isa 0
        PUSH      ST1                   ; [CPU_ALU] |411| 
        SETC      INTM, DBGM            ; [CPU_ALU] |411| 
        MOV       AL,*--SP              ; [CPU_ALU] |411| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |411| 
	.dwpsn	file "../src_driver/sysctl.c",line 416,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |416| 
	.dwpsn	file "../src_driver/sysctl.c",line 424,column 9,is_stmt,isa 0
        MOVL      XAR5,#381228          ; [CPU_ARAU] |424| 
	.dwpsn	file "../src_driver/sysctl.c",line 417,column 9,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |417| 
	.dwpsn	file "../src_driver/sysctl.c",line 418,column 9,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_ALU] |418| 
	.dwpsn	file "../src_driver/sysctl.c",line 429,column 9,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |429| 
	.dwpsn	file "../src_driver/sysctl.c",line 417,column 9,is_stmt,isa 0
        MOV       *(0:0x7022),AH        ; [CPU_ALU] |417| 
	.dwpsn	file "../src_driver/sysctl.c",line 418,column 9,is_stmt,isa 0
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |418| 
	.dwpsn	file "../src_driver/sysctl.c",line 424,column 9,is_stmt,isa 0
        OR        *+XAR5[0],#0x0001     ; [CPU_ALU] |424| 
	.dwpsn	file "../src_driver/sysctl.c",line 429,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |429| 
	.dwpsn	file "../src_driver/sysctl.c",line 432,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |432| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 438,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |438| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |438| 
        ; call occurs [#||SysCtl_delay||] ; [] |438| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |438| 
	.dwpsn	file "../src_driver/sysctl.c",line 449,column 15,is_stmt,isa 0
        B         ||$C$L24||,EQ         ; [CPU_ALU] |449| 
        ; branchcc occurs ; [] |449| 
||$C$L14||:    
	.dwpsn	file "../src_driver/sysctl.c",line 452,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |452| 
	.dwpsn	file "../src_driver/sysctl.c",line 458,column 13,is_stmt,isa 0
        MOVL      XAR4,#381462          ; [CPU_ARAU] |458| 
        MOV       PL,AR1                ; [CPU_ALU] 
        MOV       PH,#0                 ; [CPU_ALU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |458| 
        MOV32     R0H,P                 ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 510,column 13,is_stmt,isa 0
        MOV       AR6,*(0:0x0c0c)       ; [CPU_ALU] |510| 
        MOV       PL,AR3                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 511,column 13,is_stmt,isa 0
        MOV32     XT,*(0:0x0c0a)        ; [CPU_FPU] |511| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 514,column 13,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |514| 
        MOV32     R1H,P                 ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 512,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0e)        ; [CPU_ALU] |512| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |512| 
        UI32TOF32 R0H,R0H               ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 513,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0f)        ; [CPU_ALU] |513| 
	.dwpsn	file "../src_driver/sysctl.c",line 535,column 13,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |535| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 513,column 13,is_stmt,isa 0
        MOV       *-SP[9],AL            ; [CPU_ALU] |513| 
        MPYF32    R1H,R1H,#16000        ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 514,column 13,is_stmt,isa 0
        MOVZ      AR7,*+XAR4[0]         ; [CPU_ALU] |514| 
	.dwpsn	file "../src_driver/sysctl.c",line 515,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |515| 
        MOV       *-SP[10],AL           ; [CPU_ALU] |515| 
	.dwpsn	file "../src_driver/sysctl.c",line 516,column 13,is_stmt,isa 0
        MOV32     XAR0,*(0:0x0c12)      ; [CPU_FPU] |516| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] 
	.dwpsn	file "../src_driver/sysctl.c",line 517,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c16)        ; [CPU_ALU] |517| 
        MOV       *-SP[11],AL           ; [CPU_ALU] |517| 
	.dwpsn	file "../src_driver/sysctl.c",line 518,column 13,is_stmt,isa 0
        MOV       AR5,*(0:0x0c17)       ; [CPU_ALU] |518| 
	.dwpsn	file "../src_driver/sysctl.c",line 533,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |533| 
        ORB       AL,#0x10              ; [CPU_ALU] |533| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |533| 
	.dwpsn	file "../src_driver/sysctl.c",line 534,column 13,is_stmt,isa 0
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |534| 
        MOV32     *(0:0x0c0a),ACC       ; [CPU_FPU] |534| 
	.dwpsn	file "../src_driver/sysctl.c",line 535,column 13,is_stmt,isa 0
        MOV32     *(0:0x0c0e),P         ; [CPU_FPU] |535| 
	.dwpsn	file "../src_driver/sysctl.c",line 543,column 13,is_stmt,isa 0
        MOVL      P,XAR2                ; [CPU_ALU] |543| 
	.dwpsn	file "../src_driver/sysctl.c",line 536,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |536| 
        ORB       AL,#0x20              ; [CPU_ALU] |536| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |536| 
	.dwpsn	file "../src_driver/sysctl.c",line 537,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |537| 
        OR        AL,#0x8000            ; [CPU_ALU] |537| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |537| 
	.dwpsn	file "../src_driver/sysctl.c",line 538,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |538| 
        OR        AL,#0x4000            ; [CPU_ALU] |538| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |538| 
	.dwpsn	file "../src_driver/sysctl.c",line 543,column 13,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |543| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |543| 
        ; branchcc occurs ; [] |543| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |543| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |543| 
        CMPL      ACC,P                 ; [CPU_ALU] |543| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |543| 
        ; branchcc occurs ; [] |543| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |543| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |543| 
        CMPL      ACC,P                 ; [CPU_ALU] |543| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |543| 
        ; branchcc occurs ; [] |543| 
	.dwpsn	file "../src_driver/sysctl.c",line 549,column 21,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |549| 
        AND       AL,*+XAR4[0],#0xfff8  ; [CPU_ALU] |549| 
        ORB       AL,#0x01              ; [CPU_ALU] |549| 
	.dwpsn	file "../src_driver/sysctl.c",line 552,column 21,is_stmt,isa 0
        B         ||$C$L17||,UNC        ; [CPU_ALU] |552| 
        ; branch occurs ; [] |552| 
||$C$L15||:    
	.dwpsn	file "../src_driver/sysctl.c",line 567,column 21,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |567| 
        AND       AL,*+XAR4[0],#0xfff8  ; [CPU_ALU] |567| 
        ORB       AL,#0x03              ; [CPU_ALU] |567| 
	.dwpsn	file "../src_driver/sysctl.c",line 570,column 21,is_stmt,isa 0
        B         ||$C$L17||,UNC        ; [CPU_ALU] |570| 
        ; branch occurs ; [] |570| 
||$C$L16||:    
	.dwpsn	file "../src_driver/sysctl.c",line 558,column 21,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xfff8  ; [CPU_ALU] |558| 
        ORB       AL,#0x02              ; [CPU_ALU] |558| 
||$C$L17||:    
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |558| 
||$C$L18||:    
	.dwpsn	file "../src_driver/sysctl.c",line 587,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |587| 
        OR        AL,#0x8000            ; [CPU_ALU] |587| 
	.dwpsn	file "../src_driver/sysctl.c",line 590,column 13,is_stmt,isa 0
        MOVL      XAR4,#2048            ; [CPU_ARAU] |590| 
	.dwpsn	file "../src_driver/sysctl.c",line 587,column 13,is_stmt,isa 0
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |587| 
	.dwpsn	file "../src_driver/sysctl.c",line 591,column 13,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |591| 
	.dwpsn	file "../src_driver/sysctl.c",line 588,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |588| 
        OR        AL,#0x4000            ; [CPU_ALU] |588| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |588| 
	.dwpsn	file "../src_driver/sysctl.c",line 589,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |589| 
        ORB       AL,#0x10              ; [CPU_ALU] |589| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |589| 
	.dwpsn	file "../src_driver/sysctl.c",line 590,column 13,is_stmt,isa 0
        MOV32     *(0:0x0c12),XAR4      ; [CPU_FPU] |590| 
	.dwpsn	file "../src_driver/sysctl.c",line 591,column 13,is_stmt,isa 0
        MOV32     *(0:0x0c16),P         ; [CPU_FPU] |591| 
	.dwpsn	file "../src_driver/sysctl.c",line 592,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |592| 
        ORB       AL,#0x20              ; [CPU_ALU] |592| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |592| 
	.dwpsn	file "../src_driver/sysctl.c",line 607,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |607| 
        ORB       AL,#0x10              ; [CPU_ALU] |607| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |607| 
	.dwpsn	file "../src_driver/sysctl.c",line 608,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |608| 
        ORB       AL,#0x10              ; [CPU_ALU] |608| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |608| 
	.dwpsn	file "../src_driver/sysctl.c",line 609,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |609| 
        ORB       AL,#0x20              ; [CPU_ALU] |609| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |609| 
	.dwpsn	file "../src_driver/sysctl.c",line 610,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |610| 
        ORB       AL,#0x20              ; [CPU_ALU] |610| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |610| 
	.dwpsn	file "../src_driver/sysctl.c",line 611,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |611| 
        OR        AL,#0x8000            ; [CPU_ALU] |611| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |611| 
	.dwpsn	file "../src_driver/sysctl.c",line 612,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |612| 
        AND       AL,#0xffef            ; [CPU_ALU] |612| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |612| 
	.dwpsn	file "../src_driver/sysctl.c",line 613,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |613| 
        AND       AL,#0xffef            ; [CPU_ALU] |613| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |613| 
||$C$L19||:    
	.dwpsn	file "../src_driver/sysctl.c",line 618,column 19,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |618| 
        TBIT      AL,#15                ; [CPU_ALU] |618| 
        B         ||$C$L20||,TC         ; [CPU_ALU] |618| 
        ; branchcc occurs ; [] |618| 
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |618| 
        TBIT      AL,#15                ; [CPU_ALU] |618| 
        B         ||$C$L19||,NTC        ; [CPU_ALU] |618| 
        ; branchcc occurs ; [] |618| 
||$C$L20||:    
	.dwpsn	file "../src_driver/sysctl.c",line 629,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |629| 
        ORB       AL,#0x10              ; [CPU_ALU] |629| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "../src_driver/sysctl.c",line 630,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |630| 
        ORB       AL,#0x10              ; [CPU_ALU] |630| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |630| 
	.dwpsn	file "../src_driver/sysctl.c",line 635,column 13,is_stmt,isa 0
        MOV32     P,*(0:0x0c08)         ; [CPU_FPU] |635| 
	.dwpsn	file "../src_driver/sysctl.c",line 641,column 13,is_stmt,isa 0
        MOV       *(0:0x0c0c),AR6       ; [CPU_ALU] |641| 
	.dwpsn	file "../src_driver/sysctl.c",line 645,column 13,is_stmt,isa 0
        MOVZ      AR6,*-SP[8]           ; [CPU_ALU] |645| 
	.dwpsn	file "../src_driver/sysctl.c",line 642,column 13,is_stmt,isa 0
        MOV32     *(0:0x0c0a),XT        ; [CPU_FPU] |642| 
	.dwpsn	file "../src_driver/sysctl.c",line 643,column 13,is_stmt,isa 0
        MOV       *(0:0x0c0e),AR6       ; [CPU_ALU] |643| 
	.dwpsn	file "../src_driver/sysctl.c",line 635,column 13,is_stmt,isa 0
        MOVZ      AR6,*-SP[9]           ; [CPU_ALU] |635| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |635| 
	.dwpsn	file "../src_driver/sysctl.c",line 645,column 13,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |645| 
	.dwpsn	file "../src_driver/sysctl.c",line 644,column 13,is_stmt,isa 0
        MOV       *(0:0x0c0f),AR6       ; [CPU_ALU] |644| 
	.dwpsn	file "../src_driver/sysctl.c",line 645,column 13,is_stmt,isa 0
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |645| 
	.dwpsn	file "../src_driver/sysctl.c",line 635,column 13,is_stmt,isa 0
        SUBL      ACC,P                 ; [CPU_ALU] |635| 
	.dwpsn	file "../src_driver/sysctl.c",line 645,column 13,is_stmt,isa 0
        MOV       *+XAR4[0],AR7         ; [CPU_FPU] |645| 
	.dwpsn	file "../src_driver/sysctl.c",line 657,column 13,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |657| 
	.dwpsn	file "../src_driver/sysctl.c",line 646,column 13,is_stmt,isa 0
        MOV       *(0:0x0c14),AR6       ; [CPU_FPU] |646| 
	.dwpsn	file "../src_driver/sysctl.c",line 635,column 13,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |635| 
	.dwpsn	file "../src_driver/sysctl.c",line 647,column 13,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |647| 
        MOV32     *(0:0x0c12),XAR0      ; [CPU_FPU] |647| 
	.dwpsn	file "../src_driver/sysctl.c",line 648,column 13,is_stmt,isa 0
        MOV       *(0:0x0c16),AL        ; [CPU_ALU] |648| 
	.dwpsn	file "../src_driver/sysctl.c",line 649,column 13,is_stmt,isa 0
        MOV       *(0:0x0c17),AR5       ; [CPU_ALU] |649| 
	.dwpsn	file "../src_driver/sysctl.c",line 657,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |657| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |657| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |657| 
        ; branchcc occurs ; [] |657| 
	.dwpsn	file "../src_driver/sysctl.c",line 659,column 17,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |659| 
        B         ||$C$L22||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L21||:    
	.dwpsn	file "../src_driver/sysctl.c",line 663,column 17,is_stmt,isa 0
        MOV       ACC,*+XAR4[0] << #1   ; [CPU_ALU] |663| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |663| 
||$C$L22||:    
	.dwpsn	file "../src_driver/sysctl.c",line 674,column 13,is_stmt,isa 0
        MOV32     R1H,XAR6              ; [CPU_FPU] |674| 
        MOVU      ACC,AL                ; [CPU_ALU] |674| 
        MOV32     R2H,ACC               ; [CPU_FPU] |674| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |674| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R2H,R0H,R2H           ; [CPU_FPU] |674| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |674| 
        MOVIZ     R3H,#15820            ; [CPU_FPU] |674| 
        MPYF32    R1H,R1H,#14848        ; [CPU_FPU] |674| 
        MOVXI     R3H,#52429            ; [CPU_FPU] |674| 
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |674| 
        MOVB      AL,#1                 ; [CPU_ALU] |674| 
        CMPF32    R1H,R3H               ; [CPU_FPU] |674| 
        MOVST0    ZF, NF                ; [CPU_FPU] |674| 
        B         ||$C$L23||,GT         ; [CPU_ALU] |674| 
        ; branchcc occurs ; [] |674| 
        MOVIZ     R0H,#48588            ; [CPU_FPU] |674| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |674| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |674| 
        MOVST0    ZF, NF                ; [CPU_FPU] |674| 
        MOVB      AL,#0,GEQ             ; [CPU_ALU] |674| 
||$C$L23||:    
	.dwpsn	file "../src_driver/sysctl.c",line 677,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |677| 
	.dwpsn	file "../src_driver/sysctl.c",line 449,column 15,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |449| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |449| 
        ; branchcc occurs ; [] |449| 
||$C$L24||:    
	.dwpsn	file "../src_driver/sysctl.c",line 683,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |683| 
	.dwpsn	file "../src_driver/sysctl.c",line 684,column 9,is_stmt,isa 0
        MOVL      XAR4,#381228          ; [CPU_ARAU] |684| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2021,column 5,is_stmt,isa 0
        MOVB      AH,#85                ; [CPU_ALU] |2021| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2022,column 5,is_stmt,isa 0
        MOVB      AL,#170               ; [CPU_ALU] |2022| 
	.dwpsn	file "../src_driver/sysctl.c",line 684,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |684| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2021,column 5,is_stmt,isa 0
        MOV       *(0:0x7025),AH        ; [CPU_ALU] |2021| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2022,column 5,is_stmt,isa 0
        MOV       *(0:0x7025),AL        ; [CPU_ALU] |2022| 
	.dwpsn	file "../src_driver/sysctl.c",line 698,column 9,is_stmt,isa 0
        MOV       AH,*-SP[6]            ; [CPU_ALU] |698| 
	.dwpsn	file "../src_driver/sysctl.c",line 695,column 9,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |695| 
	.dwpsn	file "../src_driver/sysctl.c",line 696,column 9,is_stmt,isa 0
        ORB       AL,#0x28              ; [CPU_ALU] |696| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |696| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |696| 
	.dwpsn	file "../src_driver/sysctl.c",line 698,column 9,is_stmt,isa 0
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |698| 
	.dwpsn	file "../src_driver/sysctl.c",line 697,column 9,is_stmt,isa 0
        MOV       *(0:0x702a),AH        ; [CPU_ALU] |697| 
	.dwpsn	file "../src_driver/sysctl.c",line 698,column 9,is_stmt,isa 0
        MOV       *(0:0x7022),AL        ; [CPU_ALU] |698| 
	.dwpsn	file "../src_driver/sysctl.c",line 699,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |699| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |699| 
	.dwpsn	file "../src_driver/sysctl.c",line 705,column 9,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |705| 
        B         ||$C$L25||,TC         ; [CPU_ALU] |705| 
        ; branchcc occurs ; [] |705| 
 clrc INTM
||$C$L25||:    
	.dwpsn	file "../src_driver/sysctl.c",line 714,column 9,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |714| 
        B         ||$C$L26||,TC         ; [CPU_ALU] |714| 
        ; branchcc occurs ; [] |714| 
 CLRC DBGM
||$C$L26||:    
	.dwpsn	file "../src_driver/sysctl.c",line 723,column 9,is_stmt,isa 0
        MOVB      ACC,#40               ; [CPU_ALU] |723| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |723| 
        ; call occurs [#||SysCtl_delay||] ; [] |723| 
	.dwpsn	file "../src_driver/sysctl.c",line 728,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |728| 
	.dwpsn	file "../src_driver/sysctl.c",line 729,column 9,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |729| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |729| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |729| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |729| 
 RPT #69 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 733,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |733| 
	.dwpsn	file "../src_driver/sysctl.c",line 738,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |738| 
||$C$L27||:    
        SUBB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x2e3)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text:SysCtl_selectOscSourceAuxPLL"
	.clink
	.global	||SysCtl_selectOscSourceAuxPLL||

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$56, DW_AT_low_pc(||SysCtl_selectOscSourceAuxPLL||)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_linkage_name("SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x507)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 1288,column 1,is_stmt,address ||SysCtl_selectOscSourceAuxPLL||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectOscSourceAuxPLL||
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("oscSource")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_selectOscSourceAuxPLL  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_selectOscSourceAuxPLL||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sysctl.c",line 1291,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1291| 
	.dwpsn	file "../src_driver/sysctl.c",line 1293,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |1293| 
        MOVL      XAR6,ACC              ; [CPU_FPU] |1293| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |1293| 
        ; branchcc occurs ; [] |1293| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |1293| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1293| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1293| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |1293| 
        ; branchcc occurs ; [] |1293| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |1293| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1293| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1293| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |1293| 
        ; branchcc occurs ; [] |1293| 
	.dwpsn	file "../src_driver/sysctl.c",line 1331,column 13,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1331| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |1331| 
        ORB       AL,#0x02              ; [CPU_ALU] |1331| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1331| 
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1336,column 13,is_stmt,isa 0
        B         ||$C$L30||,UNC        ; [CPU_ALU] |1336| 
        ; branch occurs ; [] |1336| 
||$C$L28||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1314,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1314| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |1314| 
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1321,column 13,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1321| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1321| 
        ORB       AL,#0x01              ; [CPU_ALU] |1321| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1321| 
	.dwpsn	file "../src_driver/sysctl.c",line 1325,column 13,is_stmt,isa 0
        B         ||$C$L30||,UNC        ; [CPU_ALU] |1325| 
        ; branch occurs ; [] |1325| 
||$C$L29||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1299,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1299| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |1299| 
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1306,column 13,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1306| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |1306| 
||$C$L30||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1344,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1344| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x541)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text:SysCtl_setAuxClock"
	.clink
	.global	||SysCtl_setAuxClock||

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("SysCtl_setAuxClock")
	.dwattr $C$DW$59, DW_AT_low_pc(||SysCtl_setAuxClock||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("SysCtl_setAuxClock")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x2e9)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../src_driver/sysctl.c",line 746,column 1,is_stmt,address ||SysCtl_setAuxClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setAuxClock||
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("config")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setAuxClock            FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  6 SOE     *
;***************************************************************

||SysCtl_setAuxClock||:
;* AR1   assigned to config
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("config")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg6]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("pllMult")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -1]

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("attempts")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -2]

;* AH    assigned to mult
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("mult")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg1]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("t2TCR")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -3]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("t2TPR")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -4]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("t2TPRH")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -5]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -6]

;* AR3   assigned to t2PRD
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("t2PRD")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg10]

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
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
        MOVL      XAR1,ACC              ; [CPU_ALU] |746| 
	.dwpsn	file "../src_driver/sysctl.c",line 761,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |761| 
	.dwpsn	file "../src_driver/sysctl.c",line 762,column 5,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |762| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |762| 
	.dwpsn	file "../src_driver/sysctl.c",line 763,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |763| 
	.dwpsn	file "../src_driver/sysctl.c",line 768,column 5,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |768| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |768| 
        ; call occurs [#||SysCtl_delay||] ; [] |768| 
	.dwpsn	file "../src_driver/sysctl.c",line 773,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |773| 
        ANDB      AL,#0                 ; [CPU_ALU] |773| 
        ANDB      AH,#3                 ; [CPU_ALU] |773| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #||SysCtl_selectOscSourceAuxPLL|| ; [CPU_ALU] |773| 
        ; call occurs [#||SysCtl_selectOscSourceAuxPLL||] ; [] |773| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 786,column 5,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |786| 
	.dwpsn	file "../src_driver/sysctl.c",line 778,column 5,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |778| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |778| 
        MOVZ      AR6,AL                ; [CPU_ALU] |778| 
	.dwpsn	file "../src_driver/sysctl.c",line 786,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |786| 
	.dwpsn	file "../src_driver/sysctl.c",line 778,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |778| 
        SFR       ACC,5                 ; [CPU_ALU] |778| 
        AND       AL,#0x0300            ; [CPU_ALU] |778| 
        OR        AL,AR6                ; [CPU_ALU] |778| 
	.dwpsn	file "../src_driver/sysctl.c",line 789,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_FPU] |789| 
        AND       AR6,#0x0300           ; [CPU_ALU] |789| 
	.dwpsn	file "../src_driver/sysctl.c",line 786,column 5,is_stmt,isa 0
        MOV       AH,AR7                ; [CPU_ALU] |786| 
        ANDB      AH,#0x7f              ; [CPU_ALU] |786| 
	.dwpsn	file "../src_driver/sysctl.c",line 789,column 5,is_stmt,isa 0
        OR        AH,AR6                ; [CPU_ALU] |789| 
	.dwpsn	file "../src_driver/sysctl.c",line 795,column 5,is_stmt,isa 0
        MOVZ      AR7,AH                ; [CPU_ALU] |795| 
	.dwpsn	file "../src_driver/sysctl.c",line 778,column 5,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_ALU] |778| 
	.dwpsn	file "../src_driver/sysctl.c",line 748,column 51,is_stmt,isa 0
        MOV       *-SP[2],#0            ; [CPU_ALU] |748| 
	.dwpsn	file "../src_driver/sysctl.c",line 795,column 5,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |795| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |795| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |795| 
        ; branchcc occurs ; [] |795| 
	.dwpsn	file "../src_driver/sysctl.c",line 801,column 9,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |801| 
        ANDB      AL,#0                 ; [CPU_ALU] |801| 
        AND       AH,#32768             ; [CPU_ALU] |801| 
        TEST      ACC                   ; [CPU_ALU] |801| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |801| 
        ; branchcc occurs ; [] |801| 
	.dwpsn	file "../src_driver/sysctl.c",line 806,column 13,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |806| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |806| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |806| 
	.dwpsn	file "../src_driver/sysctl.c",line 807,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |807| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |807| 
	.dwpsn	file "../src_driver/sysctl.c",line 808,column 13,is_stmt,isa 0
        MOV32     XAR3,*(0:0x0c12)      ; [CPU_FPU] |808| 
	.dwpsn	file "../src_driver/sysctl.c",line 809,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c16)        ; [CPU_ALU] |809| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |809| 
	.dwpsn	file "../src_driver/sysctl.c",line 810,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c17)        ; [CPU_ALU] |810| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |810| 
	.dwpsn	file "../src_driver/sysctl.c",line 819,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |819| 
	.dwpsn	file "../src_driver/sysctl.c",line 824,column 13,is_stmt,isa 0
        MOVB      XAR6,#10              ; [CPU_ALU] |824| 
	.dwpsn	file "../src_driver/sysctl.c",line 825,column 13,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |825| 
	.dwpsn	file "../src_driver/sysctl.c",line 826,column 13,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |826| 
	.dwpsn	file "../src_driver/sysctl.c",line 820,column 13,is_stmt,isa 0
        MOVB      *+XAR4[0],#6,UNC      ; [CPU_ALU] |820| 
	.dwpsn	file "../src_driver/sysctl.c",line 822,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |822| 
	.dwpsn	file "../src_driver/sysctl.c",line 833,column 13,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |833| 
	.dwpsn	file "../src_driver/sysctl.c",line 822,column 13,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |822| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |822| 
	.dwpsn	file "../src_driver/sysctl.c",line 824,column 13,is_stmt,isa 0
        MOV32     *(0:0x0c12),XAR6      ; [CPU_FPU] |824| 
	.dwpsn	file "../src_driver/sysctl.c",line 825,column 13,is_stmt,isa 0
        MOV       *(0:0x0c16),AR7       ; [CPU_ALU] |825| 
	.dwpsn	file "../src_driver/sysctl.c",line 826,column 13,is_stmt,isa 0
        MOV       *(0:0x0c17),AH        ; [CPU_ALU] |826| 
	.dwpsn	file "../src_driver/sysctl.c",line 827,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |827| 
        AND       AL,#0xbfff            ; [CPU_ALU] |827| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |827| 
	.dwpsn	file "../src_driver/sysctl.c",line 833,column 13,is_stmt,isa 0
        MOVB      *+XAR4[0],#3,UNC      ; [CPU_ALU] |833| 
 RPT #69 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 835,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |835| 
        MOVB      XAR2,#4               ; [CPU_ALU] 
||$C$L31||:    
	.dwpsn	file "../src_driver/sysctl.c",line 844,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |844| 
	.dwpsn	file "../src_driver/sysctl.c",line 849,column 17,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |849| 
	.dwpsn	file "../src_driver/sysctl.c",line 851,column 17,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |851| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 849,column 17,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |849| 
	.dwpsn	file "../src_driver/sysctl.c",line 851,column 17,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |851| 
        ; call occurs [#||SysCtl_delay||] ; [] |851| 
	.dwpsn	file "../src_driver/sysctl.c",line 857,column 17,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |857| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |857| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |857| 
 RPT #69 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 863,column 17,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |863| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |863| 
	.dwpsn	file "../src_driver/sysctl.c",line 865,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |865| 
	.dwpsn	file "../src_driver/sysctl.c",line 871,column 23,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |871| 
||$C$L32||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |871| 
        B         ||$C$L32||,NTC        ; [CPU_ALU] |871| 
        ; branchcc occurs ; [] |871| 
	.dwpsn	file "../src_driver/sysctl.c",line 884,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |884| 
	.dwpsn	file "../src_driver/sysctl.c",line 885,column 17,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |885| 
	.dwpsn	file "../src_driver/sysctl.c",line 887,column 17,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |887| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 885,column 17,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |885| 
	.dwpsn	file "../src_driver/sysctl.c",line 887,column 17,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |887| 
        ; call occurs [#||SysCtl_delay||] ; [] |887| 
	.dwpsn	file "../src_driver/sysctl.c",line 895,column 17,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |895| 
        MOVB      XAR6,#124             ; [CPU_ALU] 
        ORB       AL,#0x20              ; [CPU_ALU] |895| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |895| 
	.dwpsn	file "../src_driver/sysctl.c",line 896,column 17,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |896| 
        AND       AL,#0xffef            ; [CPU_ALU] |896| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |896| 
||$C$L33||:    
	.dwpsn	file "../src_driver/sysctl.c",line 906,column 21,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |906| 
        TBIT      AL,#15                ; [CPU_ALU] |906| 
        B         ||$C$L34||,TC         ; [CPU_ALU] |906| 
        ; branchcc occurs ; [] |906| 
	.dwpsn	file "../src_driver/sysctl.c",line 901,column 29,is_stmt,isa 0
        BANZ      ||$C$L33||,AR6--      ; [CPU_ALU] |901| 
        ; branchcc occurs ; [] |901| 
	.dwpsn	file "../src_driver/sysctl.c",line 927,column 17,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |927| 
        ORB       AL,#0x10              ; [CPU_ALU] |927| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |927| 
	.dwpsn	file "../src_driver/sysctl.c",line 929,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |929| 
	.dwpsn	file "../src_driver/sysctl.c",line 842,column 19,is_stmt,isa 0
        BANZ      ||$C$L31||,AR2--      ; [CPU_ALU] |842| 
        ; branchcc occurs ; [] |842| 
	.dwpsn	file "../src_driver/sysctl.c",line 938,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |938| 
	.dwpsn	file "../src_driver/sysctl.c",line 939,column 17,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |939| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |939| 
	.dwpsn	file "../src_driver/sysctl.c",line 940,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |940| 
 ESTOP0
	.dwpsn	file "../src_driver/sysctl.c",line 946,column 17,is_stmt,isa 0
        B         ||$C$L35||,UNC        ; [CPU_ALU] |946| 
        ; branch occurs ; [] |946| 
||$C$L34||:    
	.dwpsn	file "../src_driver/sysctl.c",line 912,column 25,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |912| 
        OR        AL,#0x8000            ; [CPU_ALU] |912| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |912| 
	.dwpsn	file "../src_driver/sysctl.c",line 927,column 17,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |927| 
        ORB       AL,#0x10              ; [CPU_ALU] |927| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |927| 
	.dwpsn	file "../src_driver/sysctl.c",line 929,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |929| 
||$C$L35||:    
	.dwpsn	file "../src_driver/sysctl.c",line 952,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |952| 
	.dwpsn	file "../src_driver/sysctl.c",line 953,column 13,is_stmt,isa 0
        MOVL      XAR4,#381820          ; [CPU_ARAU] |953| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |953| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |953| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |953| 
	.dwpsn	file "../src_driver/sysctl.c",line 954,column 13,is_stmt,isa 0
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |954| 
	.dwpsn	file "../src_driver/sysctl.c",line 955,column 13,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |955| 
        MOV32     *(0:0x0c12),XAR3      ; [CPU_FPU] |955| 
	.dwpsn	file "../src_driver/sysctl.c",line 956,column 13,is_stmt,isa 0
        MOV       *(0:0x0c16),AL        ; [CPU_ALU] |956| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |956| 
	.dwpsn	file "../src_driver/sysctl.c",line 957,column 13,is_stmt,isa 0
        MOV       *(0:0x0c17),AL        ; [CPU_ALU] |957| 
	.dwpsn	file "../src_driver/sysctl.c",line 962,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |962| 
        ORB       AL,#0x20              ; [CPU_ALU] |962| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |962| 
	.dwpsn	file "../src_driver/sysctl.c",line 963,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |963| 
	.dwpsn	file "../src_driver/sysctl.c",line 981,column 11,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |981| 
        TBIT      *+XAR4[0],#1          ; [CPU_ALU] |981| 
        B         ||$C$L38||,TC         ; [CPU_ALU] |981| 
        ; branchcc occurs ; [] |981| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] |981| 
        ; branch occurs ; [] |981| 
||$C$L36||:    
	.dwpsn	file "../src_driver/sysctl.c",line 971,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |971| 
	.dwpsn	file "../src_driver/sysctl.c",line 972,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |972| 
	.dwpsn	file "../src_driver/sysctl.c",line 973,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |973| 
	.dwpsn	file "../src_driver/sysctl.c",line 972,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |972| 
	.dwpsn	file "../src_driver/sysctl.c",line 973,column 9,is_stmt,isa 0
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |973| 
        ; call occurs [#||SysCtl_delay||] ; [] |973| 
	.dwpsn	file "../src_driver/sysctl.c",line 974,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |974| 
||$C$L37||:    
	.dwpsn	file "../src_driver/sysctl.c",line 981,column 11,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |981| 
        TBIT      *+XAR4[0],#1          ; [CPU_ALU] |981| 
        B         ||$C$L40||,NTC        ; [CPU_ALU] |981| 
        ; branchcc occurs ; [] |981| 
||$C$L38||:    
        MOV       AL,*-SP[2]            ; [CPU_ALU] 
        CMPB      AL,#10                ; [CPU_ALU] |981| 
        B         ||$C$L40||,HIS        ; [CPU_ALU] |981| 
        ; branchcc occurs ; [] |981| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |981| 
        ANDB      AL,#0                 ; [CPU_ALU] |981| 
        AND       AH,#32768             ; [CPU_ALU] |981| 
        TEST      ACC                   ; [CPU_ALU] |981| 
        B         ||$C$L40||,EQ         ; [CPU_ALU] |981| 
        ; branchcc occurs ; [] |981| 
	.dwpsn	file "../src_driver/sysctl.c",line 985,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |985| 
	.dwpsn	file "../src_driver/sysctl.c",line 990,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |990| 
	.dwpsn	file "../src_driver/sysctl.c",line 996,column 9,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |996| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sysctl.c",line 990,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |990| 
	.dwpsn	file "../src_driver/sysctl.c",line 996,column 9,is_stmt,isa 0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |996| 
        ; call occurs [#||SysCtl_delay||] ; [] |996| 
	.dwpsn	file "../src_driver/sysctl.c",line 1001,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1001| 
	.dwpsn	file "../src_driver/sysctl.c",line 1002,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |1002| 
	.dwpsn	file "../src_driver/sysctl.c",line 1001,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |1001| 
	.dwpsn	file "../src_driver/sysctl.c",line 1002,column 9,is_stmt,isa 0
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |1002| 
        ; call occurs [#||SysCtl_delay||] ; [] |1002| 
	.dwpsn	file "../src_driver/sysctl.c",line 1008,column 9,is_stmt,isa 0
        MOVL      XAR5,#381470          ; [CPU_ARAU] |1008| 
	.dwpsn	file "../src_driver/sysctl.c",line 1013,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |1013| 
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1013| 
	.dwpsn	file "../src_driver/sysctl.c",line 1008,column 9,is_stmt,isa 0
        OR        *+XAR5[0],AL          ; [CPU_ALU] |1008| 
	.dwpsn	file "../src_driver/sysctl.c",line 1013,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |1013| 
	.dwpsn	file "../src_driver/sysctl.c",line 1018,column 15,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |1018| 
||$C$L39||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |1018| 
        B         ||$C$L39||,NTC        ; [CPU_ALU] |1018| 
        ; branchcc occurs ; [] |1018| 
	.dwpsn	file "../src_driver/sysctl.c",line 1030,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1030| 
	.dwpsn	file "../src_driver/sysctl.c",line 1032,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |1032| 
	.dwpsn	file "../src_driver/sysctl.c",line 1030,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |1030| 
	.dwpsn	file "../src_driver/sysctl.c",line 1032,column 9,is_stmt,isa 0
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |1032| 
        ; call occurs [#||SysCtl_delay||] ; [] |1032| 
	.dwpsn	file "../src_driver/sysctl.c",line 1034,column 9,is_stmt,isa 0
        INC       *-SP[2]               ; [CPU_ALU] |1034| 
	.dwpsn	file "../src_driver/sysctl.c",line 1036,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1036| 
	.dwpsn	file "../src_driver/sysctl.c",line 981,column 11,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |981| 
        TBIT      *+XAR4[0],#1          ; [CPU_ALU] |981| 
        B         ||$C$L38||,TC         ; [CPU_ALU] |981| 
        ; branchcc occurs ; [] |981| 
||$C$L40||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1042,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1042| 
	.dwpsn	file "../src_driver/sysctl.c",line 1043,column 5,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |1043| 
        MOVL      XAR4,#381476          ; [CPU_ARAU] |1043| 
        LSR       AL,7                  ; [CPU_ALU] |1043| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |1043| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1043| 
 RPT #69 || NOP
	.dwpsn	file "../src_driver/sysctl.c",line 1046,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1046| 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x418)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:SysCtl_getClock"
	.clink
	.global	||SysCtl_getClock||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("SysCtl_getClock")
	.dwattr $C$DW$79, DW_AT_low_pc(||SysCtl_getClock||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("SysCtl_getClock")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$79, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 111,column 1,is_stmt,address ||SysCtl_getClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getClock||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("clockInHz")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getClock               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getClock||:
;* XT    assigned to clockInHz
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("clockInHz")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg21]

;* AR6   assigned to temp
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("temp")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg16]

;* PL    assigned to clockOut
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("clockOut")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2662| 
	.dwpsn	file "../src_driver/sysctl.c",line 111,column 1,is_stmt,isa 0
        MOVL      XT,ACC                ; [CPU_ALU] |111| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2662,column 5,is_stmt,isa 0
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2662| 
        B         ||$C$L44||,TC         ; [CPU_ALU] |2662| 
        ; branchcc occurs ; [] |2662| 
	.dwpsn	file "../src_driver/sysctl.c",line 133,column 9,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |133| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |133| 
        MOVB      AH,#0                 ; [CPU_ALU] |133| 
        ANDB      AL,#0x03              ; [CPU_ALU] |133| 
	.dwpsn	file "../src_driver/sysctl.c",line 143,column 13,is_stmt,isa 0
        AND       AL,#65533             ; [CPU_ALU] |143| 
        TEST      ACC                   ; [CPU_ALU] |143| 
        B         ||$C$L41||,EQ         ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
        MOVL      P,XT                  ; [CPU_ALU] |143| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] |143| 
        ; branch occurs ; [] |143| 
||$C$L41||:    
        MOV       PL,#38528             ; [CPU_ALU] |143| 
        MOV       PH,#152               ; [CPU_ALU] |143| 
||$C$L42||:    
	.dwpsn	file "../src_driver/sysctl.c",line 149,column 9,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |149| 
        MOVB      XAR6,#3               ; [CPU_ALU] |149| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |149| 
        MOVB      AH,#0                 ; [CPU_ALU] |149| 
        ANDB      AL,#0x03              ; [CPU_ALU] |149| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |149| 
        B         ||$C$L43||,NEQ        ; [CPU_ALU] |149| 
        ; branchcc occurs ; [] |149| 
	.dwpsn	file "../src_driver/sysctl.c",line 155,column 13,is_stmt,isa 0
        MOVL      XAR4,#381460          ; [CPU_ARAU] |155| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |155| 
        SFR       ACC,8                 ; [CPU_ALU] |155| 
        MOVB      AH,#0                 ; [CPU_ALU] |155| 
        ANDB      AL,#0x03              ; [CPU_ALU] |155| 
        IMPYL     ACC,XT,ACC            ; [CPU_ALU] |155| 
        SFR       ACC,2                 ; [CPU_ALU] |155| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |155| 
	.dwpsn	file "../src_driver/sysctl.c",line 162,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |162| 
        MOVB      AH,#0                 ; [CPU_ALU] |162| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |162| 
        MOVL      XT,ACC                ; [CPU_ALU] |162| 
        IMPYL     P,XT,P                ; [CPU_ALU] |162| 
	.dwpsn	file "../src_driver/sysctl.c",line 169,column 13,is_stmt,isa 0
        ADDUL     P,XAR6                ; [CPU_ALU] |169| 
||$C$L43||:    
	.dwpsn	file "../src_driver/sysctl.c",line 172,column 9,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |172| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |172| 
        MOVB      AH,#0                 ; [CPU_ALU] |172| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |172| 
        TEST      ACC                   ; [CPU_ALU] |172| 
        B         ||$C$L45||,EQ         ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../src_driver/sysctl.c",line 175,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |175| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |175| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |175| 
        MOVZ      AR6,AL                ; [CPU_ALU] |175| 
        MOVB      ACC,#0                ; [CPU_ALU] |175| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |175| 
	.dwpsn	file "../src_driver/sysctl.c",line 180,column 5,is_stmt,isa 0
        B         ||$C$L45||,UNC        ; [CPU_ALU] |180| 
        ; branch occurs ; [] |180| 
||$C$L44||:    
	.dwpsn	file "../src_driver/sysctl.c",line 125,column 9,is_stmt,isa 0
        MOV       PL,#38528             ; [CPU_ALU] |125| 
        MOV       PH,#152               ; [CPU_ALU] |125| 
||$C$L45||:    
	.dwpsn	file "../src_driver/sysctl.c",line 180,column 5,is_stmt,isa 0
        MOVL      ACC,P                 ; [CPU_ALU] |180| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0xb5)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:SysCtl_getLowSpeedClock"
	.clink
	.global	||SysCtl_getLowSpeedClock||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("SysCtl_getLowSpeedClock")
	.dwattr $C$DW$85, DW_AT_low_pc(||SysCtl_getLowSpeedClock||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("SysCtl_getLowSpeedClock")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$85, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x549)
	.dwattr $C$DW$85, DW_AT_decl_column(0x01)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 1354,column 1,is_stmt,address ||SysCtl_getLowSpeedClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getLowSpeedClock||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("clockInHz")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getLowSpeedClock       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getLowSpeedClock||:
;* PL    assigned to clockOut
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("clockOut")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sysctl.c",line 1360,column 5,is_stmt,isa 0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("SysCtl_getClock")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||SysCtl_getClock||  ; [CPU_ALU] |1360| 
        ; call occurs [#||SysCtl_getClock||] ; [] |1360| 
	.dwpsn	file "../src_driver/sysctl.c",line 1365,column 5,is_stmt,isa 0
        MOVL      XAR4,#381484          ; [CPU_ARAU] |1365| 
	.dwpsn	file "../src_driver/sysctl.c",line 1360,column 5,is_stmt,isa 0
        MOVL      P,ACC                 ; [CPU_ALU] |1360| 
	.dwpsn	file "../src_driver/sysctl.c",line 1365,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1365| 
        MOVB      AH,#0                 ; [CPU_ALU] |1365| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1365| 
        TEST      ACC                   ; [CPU_ALU] |1365| 
        B         ||$C$L46||,EQ         ; [CPU_ALU] |1365| 
        ; branchcc occurs ; [] |1365| 
	.dwpsn	file "../src_driver/sysctl.c",line 1368,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1368| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |1368| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |1368| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1368| 
        MOVB      ACC,#0                ; [CPU_ALU] |1368| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |1368| 
||$C$L46||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1372,column 5,is_stmt,isa 0
        MOVL      ACC,P                 ; [CPU_ALU] |1372| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x55d)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:SysCtl_getDeviceParametric"
	.clink
	.global	||SysCtl_getDeviceParametric||

$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("SysCtl_getDeviceParametric")
	.dwattr $C$DW$90, DW_AT_low_pc(||SysCtl_getDeviceParametric||)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_linkage_name("SysCtl_getDeviceParametric")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$90, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x565)
	.dwattr $C$DW$90, DW_AT_decl_column(0x01)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 1382,column 1,is_stmt,address ||SysCtl_getDeviceParametric||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getDeviceParametric||
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("parametric")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getDeviceParametric    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getDeviceParametric||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sysctl.c",line 1388,column 5,is_stmt,isa 0
        CMPB      AL,#4                 ; [CPU_ALU] |1388| 
        B         ||$C$L47||,GT         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#4                 ; [CPU_ALU] |1388| 
        B         ||$C$L54||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#0                 ; [CPU_ALU] |1388| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#1                 ; [CPU_ALU] |1388| 
        B         ||$C$L58||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#2                 ; [CPU_ALU] |1388| 
        B         ||$C$L57||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#3                 ; [CPU_ALU] |1388| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] |1388| 
        ; branch occurs ; [] |1388| 
||$C$L47||:    
        CMPB      AL,#5                 ; [CPU_ALU] |1388| 
        B         ||$C$L53||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#6                 ; [CPU_ALU] |1388| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
        CMPB      AL,#7                 ; [CPU_ALU] |1388| 
        B         ||$C$L49||,EQ         ; [CPU_ALU] |1388| 
        ; branchcc occurs ; [] |1388| 
||$C$L48||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/sysctl.c",line 1463,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1463| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L49||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1454,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1454| 
        MOV       T,#24                 ; [CPU_ALU] |1454| 
	.dwpsn	file "../src_driver/sysctl.c",line 1457,column 13,is_stmt,isa 0
        B         ||$C$L55||,UNC        ; [CPU_ALU] |1457| 
        ; branch occurs ; [] |1457| 
||$C$L50||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/sysctl.c",line 1446,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1446| 
||$C$L51||:    
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1446| 
        MOVU      ACC,AH                ; [CPU_ALU] |1446| 
||$C$L52||:    
        ANDB      AL,#0xff              ; [CPU_ALU] |1446| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L53||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1438,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1438| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1438| 
        SFR       ACC,8                 ; [CPU_ALU] |1438| 
	.dwpsn	file "../src_driver/sysctl.c",line 1440,column 13,is_stmt,isa 0
        B         ||$C$L52||,UNC        ; [CPU_ALU] |1440| 
        ; branch occurs ; [] |1440| 
||$C$L54||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/sysctl.c",line 1429,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1429| 
        MOV       T,#28                 ; [CPU_ALU] |1429| 
||$C$L55||:    
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1429| 
        LSRL      ACC,T                 ; [CPU_ALU] |1429| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L56||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1420,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1420| 
	.dwpsn	file "../src_driver/sysctl.c",line 1423,column 13,is_stmt,isa 0
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1423| 
        ; branch occurs ; [] |1423| 
||$C$L57||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1411,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1411| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1411| 
        SFR       ACC,13                ; [CPU_ALU] |1411| 
	.dwpsn	file "../src_driver/sysctl.c",line 1414,column 13,is_stmt,isa 0
        B         ||$C$L60||,UNC        ; [CPU_ALU] |1414| 
        ; branch occurs ; [] |1414| 
||$C$L58||:    
	.dwcfi	remember_state
	.dwpsn	file "../src_driver/sysctl.c",line 1402,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1402| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1402| 
        SFR       ACC,8                 ; [CPU_ALU] |1402| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1402| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L59||:    
	.dwpsn	file "../src_driver/sysctl.c",line 1394,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1394| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1394| 
        SFR       ACC,6                 ; [CPU_ALU] |1394| 
||$C$L60||:    
        ANDB      AL,#0x03              ; [CPU_ALU] |1394| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x5bc)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text:SysCtl_getAuxClock"
	.clink
	.global	||SysCtl_getAuxClock||

$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("SysCtl_getAuxClock")
	.dwattr $C$DW$97, DW_AT_low_pc(||SysCtl_getAuxClock||)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_linkage_name("SysCtl_getAuxClock")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$97, DW_AT_decl_file("../src_driver/sysctl.c")
	.dwattr $C$DW$97, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sysctl.c",line 189,column 1,is_stmt,address ||SysCtl_getAuxClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getAuxClock||
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("clockInHz")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getAuxClock            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getAuxClock||:
;* XT    assigned to clockInHz
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("clockInHz")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg21]

;* AR6   assigned to temp
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("temp")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg16]

;* PL    assigned to clockOut
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("clockOut")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XT,ACC                ; [CPU_ALU] |189| 
	.dwpsn	file "../src_driver/sysctl.c",line 194,column 5,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |194| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |194| 
        MOVB      AH,#0                 ; [CPU_ALU] |194| 
        ANDB      AL,#0x03              ; [CPU_ALU] |194| 
        TEST      ACC                   ; [CPU_ALU] |194| 
        B         ||$C$L61||,NEQ        ; [CPU_ALU] |194| 
        ; branchcc occurs ; [] |194| 
	.dwpsn	file "../src_driver/sysctl.c",line 206,column 9,is_stmt,isa 0
        MOV       PL,#38528             ; [CPU_ALU] |206| 
        MOV       PH,#152               ; [CPU_ALU] |206| 
        B         ||$C$L62||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L61||:    
	.dwpsn	file "../src_driver/sysctl.c",line 210,column 9,is_stmt,isa 0
        MOVL      P,XT                  ; [CPU_ALU] |210| 
||$C$L62||:    
	.dwpsn	file "../src_driver/sysctl.c",line 216,column 5,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |216| 
        MOVB      XAR6,#3               ; [CPU_ALU] |216| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |216| 
        MOVB      AH,#0                 ; [CPU_ALU] |216| 
        ANDB      AL,#0x03              ; [CPU_ALU] |216| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |216| 
        B         ||$C$L63||,NEQ        ; [CPU_ALU] |216| 
        ; branchcc occurs ; [] |216| 
	.dwpsn	file "../src_driver/sysctl.c",line 222,column 9,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |222| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |222| 
        SFR       ACC,8                 ; [CPU_ALU] |222| 
        MOVB      AH,#0                 ; [CPU_ALU] |222| 
        ANDB      AL,#0x03              ; [CPU_ALU] |222| 
        IMPYL     ACC,XT,ACC            ; [CPU_ALU] |222| 
        SFR       ACC,2                 ; [CPU_ALU] |222| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |222| 
	.dwpsn	file "../src_driver/sysctl.c",line 229,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |229| 
        MOVB      AH,#0                 ; [CPU_ALU] |229| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |229| 
        MOVL      XT,ACC                ; [CPU_ALU] |229| 
        IMPYL     P,XT,P                ; [CPU_ALU] |229| 
	.dwpsn	file "../src_driver/sysctl.c",line 236,column 9,is_stmt,isa 0
        ADDUL     P,XAR6                ; [CPU_ALU] |236| 
||$C$L63||:    
	.dwpsn	file "../src_driver/sysctl.c",line 239,column 5,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |239| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |239| 
        ANDB      AL,#0x03              ; [CPU_ALU] |239| 
        MOV       T,AL                  ; [CPU_ALU] |239| 
        MOVB      AL,#1                 ; [CPU_ALU] |239| 
        LSL       AL,T                  ; [CPU_ALU] |239| 
        MOVZ      AR6,AL                ; [CPU_ALU] |239| 
        MOVB      ACC,#0                ; [CPU_ALU] |239| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |239| 
	.dwpsn	file "../src_driver/sysctl.c",line 242,column 5,is_stmt,isa 0
        MOVL      ACC,P                 ; [CPU_ALU] |242| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$97, DW_AT_TI_end_file("../src_driver/sysctl.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0xf3)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SysCtl_delay||

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
$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("CPUTIMER_CLOCK_SOURCE_SYS")
	.dwattr $C$DW$103, DW_AT_const_value(0x00)
	.dwattr $C$DW$103, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x68)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("CPUTIMER_CLOCK_SOURCE_INTOSC1")
	.dwattr $C$DW$104, DW_AT_const_value(0x01)
	.dwattr $C$DW$104, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("CPUTIMER_CLOCK_SOURCE_INTOSC2")
	.dwattr $C$DW$105, DW_AT_const_value(0x02)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("CPUTIMER_CLOCK_SOURCE_XTAL")
	.dwattr $C$DW$106, DW_AT_const_value(0x03)
	.dwattr $C$DW$106, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("CPUTIMER_CLOCK_SOURCE_AUX")
	.dwattr $C$DW$107, DW_AT_const_value(0x06)
	.dwattr $C$DW$107, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x70)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("CPUTimer_ClockSource")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_1")
	.dwattr $C$DW$108, DW_AT_const_value(0x00)
	.dwattr $C$DW$108, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_2")
	.dwattr $C$DW$109, DW_AT_const_value(0x01)
	.dwattr $C$DW$109, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_4")
	.dwattr $C$DW$110, DW_AT_const_value(0x02)
	.dwattr $C$DW$110, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_8")
	.dwattr $C$DW$111, DW_AT_const_value(0x03)
	.dwattr $C$DW$111, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_16")
	.dwattr $C$DW$112, DW_AT_const_value(0x04)
	.dwattr $C$DW$112, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("CPUTimer_Prescaler")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("SYSCTL_DEVICE_QUAL")
	.dwattr $C$DW$113, DW_AT_const_value(0x00)
	.dwattr $C$DW$113, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x316)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("SYSCTL_DEVICE_PINCOUNT")
	.dwattr $C$DW$114, DW_AT_const_value(0x01)
	.dwattr $C$DW$114, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x317)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("SYSCTL_DEVICE_INSTASPIN")
	.dwattr $C$DW$115, DW_AT_const_value(0x02)
	.dwattr $C$DW$115, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x318)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("SYSCTL_DEVICE_FLASH")
	.dwattr $C$DW$116, DW_AT_const_value(0x03)
	.dwattr $C$DW$116, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x319)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("SYSCTL_DEVICE_PARTID")
	.dwattr $C$DW$117, DW_AT_const_value(0x04)
	.dwattr $C$DW$117, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x31a)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("SYSCTL_DEVICE_FAMILY")
	.dwattr $C$DW$118, DW_AT_const_value(0x05)
	.dwattr $C$DW$118, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x31b)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("SYSCTL_DEVICE_PARTNO")
	.dwattr $C$DW$119, DW_AT_const_value(0x06)
	.dwattr $C$DW$119, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x31c)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("SYSCTL_DEVICE_CLASSID")
	.dwattr $C$DW$120, DW_AT_const_value(0x07)
	.dwattr $C$DW$120, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x31d)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x315)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("SysCtl_DeviceParametric")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x31e)
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


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$42


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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$121	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$29)

$C$DW$T$50	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$121)

	.dwendtag $C$DW$TU$50


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


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("float32_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$51, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$51


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


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$52, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$52, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$52

