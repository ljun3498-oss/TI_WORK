;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/sci.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{A0805C54-2B52-4687-A74E-419BC1678DDB} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{A55F712B-7810-428A-B2D3-C30E3758C5E6} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{3CFA1794-ECD0-4F5B-A7E1-A8981055DD24} 
	.sect	".text:SCI_writeCharArray"
	.clink
	.global	||SCI_writeCharArray||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SCI_writeCharArray")
	.dwattr $C$DW$1, DW_AT_low_pc(||SCI_writeCharArray||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SCI_writeCharArray")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x63)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 101,column 1,is_stmt,address ||SCI_writeCharArray||,isa 0

	.dwfde $C$DW$CIE, ||SCI_writeCharArray||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("array")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("length")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SCI_writeCharArray            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_writeCharArray||:
;* AR4   assigned to base
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

;* AL    assigned to length
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("length")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR7,XAR4             ; [CPU_ALU] |101| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 792,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |792| 
	.dwpsn	file "../src_driver/sci.c",line 101,column 1,is_stmt,isa 0
        MOV       AL,AR5                ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 792,column 5,is_stmt,isa 0
        TBIT      *+XAR4[AR0],#14       ; [CPU_ALU] |792| 
        B         ||$C$L2||,TC          ; [CPU_ALU] |792| 
        ; branchcc occurs ; [] |792| 
	.dwpsn	file "../src_driver/sci.c",line 138,column 21,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |138| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
        MOVZ      AR6,AL                ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L1||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 928,column 5,is_stmt,isa 0
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |928| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |928| 
        ; branchcc occurs ; [] |928| 
	.dwpsn	file "../src_driver/sci.c",line 150,column 13,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |150| 
        MOV       AL,*XAR7++            ; [CPU_ALU] |150| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |150| 
	.dwpsn	file "../src_driver/sci.c",line 138,column 21,is_stmt,isa 0
        BANZ      ||$C$L1||,AR6--       ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwcfi	remember_state
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L2||:    
	.dwpsn	file "../src_driver/sci.c",line 117,column 21,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |117| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        MOVZ      AR6,AL                ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L3||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 957,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |957| 
        AND       AL,*+XAR4[AR0],#0x1f00 ; [CPU_ALU] |957| 
        LSR       AL,8                  ; [CPU_ALU] |957| 
        CMPB      AL,#16                ; [CPU_ALU] |957| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |957| 
        ; branchcc occurs ; [] |957| 
	.dwpsn	file "../src_driver/sci.c",line 129,column 13,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |129| 
        MOV       AL,*XAR7++            ; [CPU_ALU] |129| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |129| 
	.dwpsn	file "../src_driver/sci.c",line 117,column 21,is_stmt,isa 0
        BANZ      ||$C$L3||,AR6--       ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
||$C$L4||:    
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x99)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SCI_setWakeFlag"
	.clink
	.global	||SCI_setWakeFlag||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("SCI_setWakeFlag")
	.dwattr $C$DW$9, DW_AT_low_pc(||SCI_setWakeFlag||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("SCI_setWakeFlag")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x199)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 410,column 1,is_stmt,address ||SCI_setWakeFlag||,isa 0

	.dwfde $C$DW$CIE, ||SCI_setWakeFlag||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_setWakeFlag               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_setWakeFlag||:
;* AR4   assigned to base
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("base")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |410| 
	.dwpsn	file "../src_driver/sci.c",line 420,column 5,is_stmt,isa 0
        OR        *+XAR4[1],#0x0008     ; [CPU_ALU] |420| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x1a5)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:SCI_setConfig"
	.clink
	.global	||SCI_setConfig||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SCI_setConfig")
	.dwattr $C$DW$13, DW_AT_low_pc(||SCI_setConfig||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("SCI_setConfig")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x33)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/sci.c",line 52,column 1,is_stmt,address ||SCI_setConfig||,isa 0

	.dwfde $C$DW$CIE, ||SCI_setConfig||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("lspclkHz")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -6]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("baud")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -8]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("config")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: SCI_setConfig                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||SCI_setConfig||:
;* PL    assigned to $O$C1
;* AR4   assigned to base
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to config
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("config")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR4,ACC              ; [CPU_ALU] |52| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |52| 
        MOVL      P,*-SP[6]             ; [CPU_ALU] |52| 
        MOVL      XAR7,*-SP[10]         ; [CPU_ALU] |52| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |52| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sci.c",line 76,column 5,is_stmt,isa 0
        LSL       ACC,3                 ; [CPU_ALU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 554,column 5,is_stmt,isa 0
        ADDB      XAR5,#10              ; [CPU_ALU] |554| 
	.dwpsn	file "../src_driver/sci.c",line 76,column 5,is_stmt,isa 0
        MOVL      XAR0,ACC              ; [CPU_ALU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 554,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xbfff     ; [CPU_ALU] |554| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 559,column 5,is_stmt,isa 0
        AND       *+XAR4[1],#0xfffc     ; [CPU_ALU] |559| 
	.dwpsn	file "../src_driver/sci.c",line 76,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |76| 
        RPT       #31
||     SUBCUL    ACC,XAR0              ; [CPU_ALU] |76| 
        MOVL      ACC,P                 ; [CPU_ALU] |76| 
        SUBB      ACC,#1                ; [CPU_ALU] |76| 
        MOVL      P,ACC                 ; [CPU_ALU] |76| 
        SFR       ACC,8                 ; [CPU_ALU] |76| 
        ANDB      AL,#0xff              ; [CPU_ALU] |76| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |76| 
	.dwpsn	file "../src_driver/sci.c",line 77,column 5,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |77| 
        ANDB      AL,#0xff              ; [CPU_ALU] |77| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |77| 
	.dwpsn	file "../src_driver/sci.c",line 82,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xff18  ; [CPU_ALU] |82| 
        OR        AR7,AL                ; [CPU_ALU] |82| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |82| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 527,column 5,is_stmt,isa 0
        OR        *+XAR4[1],#0x0023     ; [CPU_ALU] |527| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:SCI_setBaud"
	.clink
	.global	||SCI_setBaud||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("SCI_setBaud")
	.dwattr $C$DW$21, DW_AT_low_pc(||SCI_setBaud||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("SCI_setBaud")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x184)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 389,column 1,is_stmt,address ||SCI_setBaud||,isa 0

	.dwfde $C$DW$CIE, ||SCI_setBaud||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("lspclkHz")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -4]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("baud")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SCI_setBaud                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_setBaud||:
;* AR6   assigned to $O$C1
;* AR4   assigned to base
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("base")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src_driver/sci.c",line 400,column 5,is_stmt,isa 0
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |400| 
        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |400| 
        UI32TOF32 R0H,R0H               ; [CPU_FPU] |400| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |400| 
        MPYF32    R0H,R0H,#16640        ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,#16128        ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R0H              ; [CPU_FPU] |400| 
	.dwpsn	file "../src_driver/sci.c",line 389,column 1,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |389| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/sci.c",line 400,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |400| 
        SFR       ACC,8                 ; [CPU_ALU] |400| 
        ANDB      AL,#0xff              ; [CPU_ALU] |400| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |400| 
	.dwpsn	file "../src_driver/sci.c",line 401,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |401| 
        ANDB      AL,#0xff              ; [CPU_ALU] |401| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |401| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x192)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:SCI_readCharArray"
	.clink
	.global	||SCI_readCharArray||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("SCI_readCharArray")
	.dwattr $C$DW$27, DW_AT_low_pc(||SCI_readCharArray||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("SCI_readCharArray")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 162,column 1,is_stmt,address ||SCI_readCharArray||,isa 0

	.dwfde $C$DW$CIE, ||SCI_readCharArray||
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("array")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("length")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SCI_readCharArray             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_readCharArray||:
;* AR5   assigned to $O$U30
;* AR5   assigned to $O$U30
;* AR4   assigned to base
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("base")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]

;* AL    assigned to length
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("length")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR5               ; [CPU_ALU] |162| 
        MOVL      XAR5,XAR4             ; [CPU_ALU] |162| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |162| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 792,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |792| 
	.dwpsn	file "../src_driver/sci.c",line 162,column 1,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |162| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 792,column 5,is_stmt,isa 0
        TBIT      *+XAR4[AR0],#14       ; [CPU_ALU] |792| 
        B         ||$C$L6||,TC          ; [CPU_ALU] |792| 
        ; branchcc occurs ; [] |792| 
	.dwpsn	file "../src_driver/sci.c",line 200,column 21,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |200| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L5||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 899,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#6          ; [CPU_ALU] |899| 
        B         ||$C$L5||,NTC         ; [CPU_ALU] |899| 
        ; branchcc occurs ; [] |899| 
	.dwpsn	file "../src_driver/sci.c",line 212,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[7]          ; [CPU_ALU] |212| 
        ANDB      AL,#0xff              ; [CPU_ALU] |212| 
        MOV       *XAR5++,AL            ; [CPU_ALU] |212| 
	.dwpsn	file "../src_driver/sci.c",line 200,column 21,is_stmt,isa 0
        BANZ      ||$C$L5||,AR6--       ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwcfi	remember_state
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L6||:    
	.dwpsn	file "../src_driver/sci.c",line 178,column 21,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |178| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L7||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 986,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |986| 
        AND       AL,*+XAR4[AR0],#0x1f00 ; [CPU_ALU] |986| 
        LSR       AL,8                  ; [CPU_ALU] |986| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |986| 
        ; branchcc occurs ; [] |986| 
	.dwpsn	file "../src_driver/sci.c",line 190,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[7]          ; [CPU_ALU] |190| 
        ANDB      AL,#0xff              ; [CPU_ALU] |190| 
        MOV       *XAR5++,AL            ; [CPU_ALU] |190| 
	.dwpsn	file "../src_driver/sci.c",line 178,column 21,is_stmt,isa 0
        BANZ      ||$C$L7||,AR6--       ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
||$C$L8||:    
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xd8)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:SCI_getInterruptStatus"
	.clink
	.global	||SCI_getInterruptStatus||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("SCI_getInterruptStatus")
	.dwattr $C$DW$35, DW_AT_low_pc(||SCI_getInterruptStatus||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("SCI_getInterruptStatus")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$35, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 301,column 1,is_stmt,address ||SCI_getInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_getInterruptStatus||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_getInterruptStatus        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_getInterruptStatus||:
;* AR4   assigned to base
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |301| 
	.dwpsn	file "../src_driver/sci.c",line 312,column 5,is_stmt,isa 0
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |312| 
        B         ||$C$L9||,TC          ; [CPU_ALU] |312| 
        ; branchcc occurs ; [] |312| 
	.dwpsn	file "../src_driver/sci.c",line 302,column 30,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |302| 
        B         ||$C$L10||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L9||:    
	.dwpsn	file "../src_driver/sci.c",line 314,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |314| 
||$C$L10||:    
	.dwpsn	file "../src_driver/sci.c",line 316,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#7          ; [CPU_ALU] |316| 
        B         ||$C$L11||,NTC        ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
	.dwpsn	file "../src_driver/sci.c",line 318,column 9,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |318| 
||$C$L11||:    
	.dwpsn	file "../src_driver/sci.c",line 320,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#6          ; [CPU_ALU] |320| 
        B         ||$C$L12||,TC         ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
        TBIT      *+XAR4[5],#5          ; [CPU_ALU] |320| 
        B         ||$C$L13||,NTC        ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
||$C$L12||:    
	.dwpsn	file "../src_driver/sci.c",line 323,column 9,is_stmt,isa 0
        ORB       AL,#0x02              ; [CPU_ALU] |323| 
||$C$L13||:    
	.dwpsn	file "../src_driver/sci.c",line 325,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |325| 
        TBIT      *+XAR4[AR0],#7        ; [CPU_ALU] |325| 
        B         ||$C$L14||,NTC        ; [CPU_ALU] |325| 
        ; branchcc occurs ; [] |325| 
	.dwpsn	file "../src_driver/sci.c",line 327,column 9,is_stmt,isa 0
        ORB       AL,#0x08              ; [CPU_ALU] |327| 
||$C$L14||:    
	.dwpsn	file "../src_driver/sci.c",line 329,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |329| 
        TBIT      *+XAR4[AR0],#7        ; [CPU_ALU] |329| 
        B         ||$C$L15||,NTC        ; [CPU_ALU] |329| 
        ; branchcc occurs ; [] |329| 
	.dwpsn	file "../src_driver/sci.c",line 331,column 9,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |331| 
||$C$L15||:    
	.dwpsn	file "../src_driver/sci.c",line 333,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#4          ; [CPU_ALU] |333| 
        B         ||$C$L16||,NTC        ; [CPU_ALU] |333| 
        ; branchcc occurs ; [] |333| 
	.dwpsn	file "../src_driver/sci.c",line 335,column 9,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |335| 
||$C$L16||:    
	.dwpsn	file "../src_driver/sci.c",line 337,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#3          ; [CPU_ALU] |337| 
        B         ||$C$L17||,NTC        ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
	.dwpsn	file "../src_driver/sci.c",line 339,column 9,is_stmt,isa 0
        ORB       AL,#0x40              ; [CPU_ALU] |339| 
||$C$L17||:    
	.dwpsn	file "../src_driver/sci.c",line 341,column 5,is_stmt,isa 0
        TBIT      *+XAR4[5],#2          ; [CPU_ALU] |341| 
        B         ||$C$L18||,NTC        ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
	.dwpsn	file "../src_driver/sci.c",line 343,column 9,is_stmt,isa 0
        ORB       AL,#0x80              ; [CPU_ALU] |343| 
||$C$L18||:    
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:SCI_enableInterrupt"
	.clink
	.global	||SCI_enableInterrupt||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("SCI_enableInterrupt")
	.dwattr $C$DW$39, DW_AT_low_pc(||SCI_enableInterrupt||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("SCI_enableInterrupt")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 225,column 1,is_stmt,address ||SCI_enableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SCI_enableInterrupt||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("intFlags")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SCI_enableInterrupt           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_enableInterrupt||:
;* AR4   assigned to base
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("base")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("intFlags")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |225| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |225| 
	.dwpsn	file "../src_driver/sci.c",line 234,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |234| 
        B         ||$C$L19||,NTC        ; [CPU_ALU] |234| 
        ; branchcc occurs ; [] |234| 
	.dwpsn	file "../src_driver/sci.c",line 236,column 9,is_stmt,isa 0
        OR        *+XAR4[1],#0x0040     ; [CPU_ALU] |236| 
||$C$L19||:    
	.dwpsn	file "../src_driver/sci.c",line 238,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |238| 
        B         ||$C$L20||,NTC        ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
	.dwpsn	file "../src_driver/sci.c",line 240,column 9,is_stmt,isa 0
        OR        *+XAR4[4],#0x0002     ; [CPU_ALU] |240| 
||$C$L20||:    
	.dwpsn	file "../src_driver/sci.c",line 242,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |242| 
        B         ||$C$L21||,NTC        ; [CPU_ALU] |242| 
        ; branchcc occurs ; [] |242| 
	.dwpsn	file "../src_driver/sci.c",line 244,column 9,is_stmt,isa 0
        OR        *+XAR4[4],#0x0001     ; [CPU_ALU] |244| 
||$C$L21||:    
	.dwpsn	file "../src_driver/sci.c",line 246,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |246| 
        B         ||$C$L22||,NTC        ; [CPU_ALU] |246| 
        ; branchcc occurs ; [] |246| 
	.dwpsn	file "../src_driver/sci.c",line 248,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |248| 
        ADDB      XAR5,#10              ; [CPU_ALU] |248| 
        OR        *+XAR5[0],#0x0020     ; [CPU_ALU] |248| 
||$C$L22||:    
	.dwpsn	file "../src_driver/sci.c",line 250,column 5,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |250| 
        B         ||$C$L23||,NTC        ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "../src_driver/sci.c",line 252,column 9,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |252| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |252| 
||$C$L23||:    
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0xfe)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:SCI_disableInterrupt"
	.clink
	.global	||SCI_disableInterrupt||

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("SCI_disableInterrupt")
	.dwattr $C$DW$45, DW_AT_low_pc(||SCI_disableInterrupt||)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_linkage_name("SCI_disableInterrupt")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0x106)
	.dwattr $C$DW$45, DW_AT_decl_column(0x01)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 263,column 1,is_stmt,address ||SCI_disableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SCI_disableInterrupt||
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("base")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]

$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("intFlags")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SCI_disableInterrupt          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_disableInterrupt||:
;* AR4   assigned to base
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("base")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("intFlags")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |263| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |263| 
	.dwpsn	file "../src_driver/sci.c",line 272,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |272| 
        B         ||$C$L24||,NTC        ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "../src_driver/sci.c",line 274,column 9,is_stmt,isa 0
        AND       *+XAR4[1],#0xffbf     ; [CPU_ALU] |274| 
||$C$L24||:    
	.dwpsn	file "../src_driver/sci.c",line 276,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |276| 
        B         ||$C$L25||,NTC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
	.dwpsn	file "../src_driver/sci.c",line 278,column 9,is_stmt,isa 0
        AND       *+XAR4[4],#0xfffd     ; [CPU_ALU] |278| 
||$C$L25||:    
	.dwpsn	file "../src_driver/sci.c",line 280,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |280| 
        B         ||$C$L26||,NTC        ; [CPU_ALU] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "../src_driver/sci.c",line 282,column 9,is_stmt,isa 0
        AND       *+XAR4[4],#0xfffe     ; [CPU_ALU] |282| 
||$C$L26||:    
	.dwpsn	file "../src_driver/sci.c",line 284,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |284| 
        B         ||$C$L27||,NTC        ; [CPU_ALU] |284| 
        ; branchcc occurs ; [] |284| 
	.dwpsn	file "../src_driver/sci.c",line 286,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |286| 
        ADDB      XAR5,#10              ; [CPU_ALU] |286| 
        AND       *+XAR5[0],#0xffdf     ; [CPU_ALU] |286| 
||$C$L27||:    
	.dwpsn	file "../src_driver/sci.c",line 288,column 5,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |288| 
        B         ||$C$L28||,NTC        ; [CPU_ALU] |288| 
        ; branchcc occurs ; [] |288| 
	.dwpsn	file "../src_driver/sci.c",line 290,column 9,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |290| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |290| 
||$C$L28||:    
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text:SCI_clearInterruptStatus"
	.clink
	.global	||SCI_clearInterruptStatus||

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$51, DW_AT_low_pc(||SCI_clearInterruptStatus||)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_linkage_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../src_driver/sci.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x163)
	.dwattr $C$DW$51, DW_AT_decl_column(0x01)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/sci.c",line 356,column 1,is_stmt,address ||SCI_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_clearInterruptStatus||
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("base")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("intFlags")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SCI_clearInterruptStatus      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SCI_clearInterruptStatus||:
;* AR4   assigned to base
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("base")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("intFlags")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |356| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |356| 
	.dwpsn	file "../src_driver/sci.c",line 365,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |365| 
        B         ||$C$L29||,TC         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        TBIT      AL,#1                 ; [CPU_ALU] |365| 
        B         ||$C$L29||,TC         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        TBIT      AL,#5                 ; [CPU_ALU] |365| 
        B         ||$C$L29||,TC         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        TBIT      AL,#6                 ; [CPU_ALU] |365| 
        B         ||$C$L29||,TC         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        TBIT      AL,#7                 ; [CPU_ALU] |365| 
        B         ||$C$L30||,NTC        ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
||$C$L29||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 1313,column 5,is_stmt,isa 0
        AND       *+XAR4[1],#0xffdf     ; [CPU_ALU] |1313| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 1314,column 5,is_stmt,isa 0
        OR        *+XAR4[1],#0x0020     ; [CPU_ALU] |1314| 
||$C$L30||:    
	.dwpsn	file "../src_driver/sci.c",line 373,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |373| 
        B         ||$C$L31||,NTC        ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../src_driver/sci.c",line 375,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |375| 
        ADDB      XAR5,#10              ; [CPU_ALU] |375| 
        OR        *+XAR5[0],#0x0040     ; [CPU_ALU] |375| 
||$C$L31||:    
	.dwpsn	file "../src_driver/sci.c",line 377,column 5,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |377| 
        B         ||$C$L32||,NTC        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
	.dwpsn	file "../src_driver/sci.c",line 379,column 10,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |379| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |379| 
||$C$L32||:    
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../src_driver/sci.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x17d)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51


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
$C$DW$57	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$57, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$57, DW_AT_const_value(0x00)
	.dwattr $C$DW$57, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x84)
	.dwattr $C$DW$57, DW_AT_decl_column(0x05)

$C$DW$58	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$58, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$58, DW_AT_const_value(0x01)
	.dwattr $C$DW$58, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x85)
	.dwattr $C$DW$58, DW_AT_decl_column(0x05)

$C$DW$59	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$59, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$59, DW_AT_const_value(0x02)
	.dwattr $C$DW$59, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x86)
	.dwattr $C$DW$59, DW_AT_decl_column(0x05)

$C$DW$60	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$60, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$60, DW_AT_const_value(0x03)
	.dwattr $C$DW$60, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x87)
	.dwattr $C$DW$60, DW_AT_decl_column(0x05)

$C$DW$61	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$61, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$61, DW_AT_const_value(0x04)
	.dwattr $C$DW$61, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x88)
	.dwattr $C$DW$61, DW_AT_decl_column(0x05)

$C$DW$62	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$62, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$62, DW_AT_const_value(0x05)
	.dwattr $C$DW$62, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x89)
	.dwattr $C$DW$62, DW_AT_decl_column(0x05)

$C$DW$63	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$63, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$63, DW_AT_const_value(0x06)
	.dwattr $C$DW$63, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$63, DW_AT_decl_column(0x05)

$C$DW$64	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$64, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$64, DW_AT_const_value(0x07)
	.dwattr $C$DW$64, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)

$C$DW$65	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$65, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$65, DW_AT_const_value(0x08)
	.dwattr $C$DW$65, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$65, DW_AT_decl_column(0x05)

$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$66, DW_AT_const_value(0x09)
	.dwattr $C$DW$66, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$67, DW_AT_const_value(0x0a)
	.dwattr $C$DW$67, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$68, DW_AT_const_value(0x0b)
	.dwattr $C$DW$68, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$69, DW_AT_const_value(0x0c)
	.dwattr $C$DW$69, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x90)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$70, DW_AT_const_value(0x0d)
	.dwattr $C$DW$70, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x91)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$71, DW_AT_const_value(0x0e)
	.dwattr $C$DW$71, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x92)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$72, DW_AT_const_value(0x0f)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x93)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$73, DW_AT_const_value(0x10)
	.dwattr $C$DW$73, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x94)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("SCI_FIFO_RX0")
	.dwattr $C$DW$74, DW_AT_const_value(0x00)
	.dwattr $C$DW$74, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("SCI_FIFO_RX1")
	.dwattr $C$DW$75, DW_AT_const_value(0x01)
	.dwattr $C$DW$75, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("SCI_FIFO_RX2")
	.dwattr $C$DW$76, DW_AT_const_value(0x02)
	.dwattr $C$DW$76, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("SCI_FIFO_RX3")
	.dwattr $C$DW$77, DW_AT_const_value(0x03)
	.dwattr $C$DW$77, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("SCI_FIFO_RX4")
	.dwattr $C$DW$78, DW_AT_const_value(0x04)
	.dwattr $C$DW$78, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("SCI_FIFO_RX5")
	.dwattr $C$DW$79, DW_AT_const_value(0x05)
	.dwattr $C$DW$79, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("SCI_FIFO_RX6")
	.dwattr $C$DW$80, DW_AT_const_value(0x06)
	.dwattr $C$DW$80, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("SCI_FIFO_RX7")
	.dwattr $C$DW$81, DW_AT_const_value(0x07)
	.dwattr $C$DW$81, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("SCI_FIFO_RX8")
	.dwattr $C$DW$82, DW_AT_const_value(0x08)
	.dwattr $C$DW$82, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("SCI_FIFO_RX9")
	.dwattr $C$DW$83, DW_AT_const_value(0x09)
	.dwattr $C$DW$83, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("SCI_FIFO_RX10")
	.dwattr $C$DW$84, DW_AT_const_value(0x0a)
	.dwattr $C$DW$84, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("SCI_FIFO_RX11")
	.dwattr $C$DW$85, DW_AT_const_value(0x0b)
	.dwattr $C$DW$85, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xab)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("SCI_FIFO_RX12")
	.dwattr $C$DW$86, DW_AT_const_value(0x0c)
	.dwattr $C$DW$86, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xac)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("SCI_FIFO_RX13")
	.dwattr $C$DW$87, DW_AT_const_value(0x0d)
	.dwattr $C$DW$87, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xad)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("SCI_FIFO_RX14")
	.dwattr $C$DW$88, DW_AT_const_value(0x0e)
	.dwattr $C$DW$88, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xae)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("SCI_FIFO_RX15")
	.dwattr $C$DW$89, DW_AT_const_value(0x0f)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("SCI_FIFO_RX16")
	.dwattr $C$DW$90, DW_AT_const_value(0x10)
	.dwattr $C$DW$90, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("SCI_RxFIFOLevel")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


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


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$35


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$91	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$30)

$C$DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$91)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$32


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$92	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$22)

$C$DW$T$50	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$92)

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


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$51, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$51, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$51

