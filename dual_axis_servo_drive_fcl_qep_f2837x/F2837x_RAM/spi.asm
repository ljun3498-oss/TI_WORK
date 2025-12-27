;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/spi.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{8429CD4C-7982-4CD7-A3DA-A5C79DD29D9D} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{91177290-7E9E-413E-97BC-F41036691358} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{B4149D5D-CF4C-43E3-B475-503E2D61F411} 
	.sect	".text:SPI_pollingFIFOTransaction"
	.clink
	.global	||SPI_pollingFIFOTransaction||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$1, DW_AT_low_pc(||SPI_pollingFIFOTransaction||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../src_driver/spi.c",line 320,column 1,is_stmt,address ||SPI_pollingFIFOTransaction||,isa 0

	.dwfde $C$DW$CIE, ||SPI_pollingFIFOTransaction||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("charLength")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -11]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("pTxBuffer")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("pRxBuffer")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg14]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("numOfWords")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -12]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("txDelay")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -13]


;***************************************************************
;* FNAME: SPI_pollingFIFOTransaction    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

||SPI_pollingFIFOTransaction||:
;* T     assigned to $O$K37
;* T     assigned to $O$K37
;* AR4   assigned to $O$L1
;* PL    assigned to $O$R4
;* AR6   assigned to $O$R7
;* AR7   assigned to $O$R9
;* AR5   assigned to base
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("base")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg14]

;* PH    assigned to charLength
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("charLength")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg3]

;* AR7   assigned to pTxBuffer
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("pTxBuffer")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg18]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("pRxBuffer")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

;* PL    assigned to numOfWords
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("numOfWords")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg2]

;* AL    assigned to txDelay
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("txDelay")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

;* AR3   assigned to remainingWords
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("remainingWords")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to txBuffer_pos
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("txBuffer_pos")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to rxBuffer_pos
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("rxBuffer_pos")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg6]

;* PL    assigned to data
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("data")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg2]

;* PL    assigned to data
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("data")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg2]

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
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR7,XAR4             ; [CPU_ALU] |320| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |320| 
        MOVL      XAR3,ACC              ; [CPU_ALU] |320| 
        MOVL      *-SP[2],XAR5          ; [CPU_ALU] |320| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |320| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 1267,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |1267| 
	.dwpsn	file "../src_driver/spi.c",line 320,column 1,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |320| 
        MOV       PL,*-SP[12]           ; [CPU_ALU] |320| 
        MOV       PH,*-SP[11]           ; [CPU_ALU] |320| 
	.dwpsn	file "../src_driver/spi.c",line 348,column 27,is_stmt,isa 0
        MOVB      XAR2,#0               ; [CPU_ALU] |348| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 549,column 5,is_stmt,isa 0
        ADDB      ACC,#11               ; [CPU_ALU] |549| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 548,column 5,is_stmt,isa 0
        ADDB      XAR6,#10              ; [CPU_ALU] |548| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 575,column 5,is_stmt,isa 0
        ADDB      XAR3,#11              ; [CPU_ALU] |575| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 574,column 5,is_stmt,isa 0
        ADDB      XAR4,#10              ; [CPU_ALU] |574| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 549,column 5,is_stmt,isa 0
        MOVL      XAR1,ACC              ; [CPU_ALU] |549| 
	.dwpsn	file "../src_driver/spi.c",line 320,column 1,is_stmt,isa 0
        MOV       AL,*-SP[13]           ; [CPU_ALU] |320| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 574,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0x9fff     ; [CPU_ALU] |574| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 575,column 5,is_stmt,isa 0
        AND       *+XAR3[0],#0xdfff     ; [CPU_ALU] |575| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 548,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x6000     ; [CPU_ALU] |548| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 549,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x2000     ; [CPU_ALU] |549| 
	.dwpsn	file "../src_driver/spi.c",line 349,column 27,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_ALU] |349| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 1267,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |1267| 
	.dwpsn	file "../src_driver/spi.c",line 344,column 29,is_stmt,isa 0
        AND       AL,PL,#0x000f         ; [CPU_ALU] |344| 
        MOVZ      AR3,AL                ; [CPU_ALU] |344| 
	.dwpsn	file "../src_driver/spi.c",line 355,column 11,is_stmt,isa 0
        AND       AL,PL,#0xfff0         ; [CPU_ALU] |355| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |355| 
        ; branchcc occurs ; [] |355| 
        MOVB      AL,#16                ; [CPU_ALU] 
        SUB       AL,PH                 ; [CPU_ALU] 
        MOV       T,AL                  ; [CPU_ALU] 
        MOV       AL,PL                 ; [CPU_ALU] 
        LSR       AL,4                  ; [CPU_ALU] 
        ADDB      AL,#-1                ; [CPU_ALU] 
        MOVZ      AR4,AL                ; [CPU_ALU] 
||$C$L1||:    
        MOVB      XAR6,#15              ; [CPU_ALU] 
||$C$L2||:    
        MOVZ      AR0,AR2               ; [CPU_ALU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 876,column 1,is_stmt,isa 0
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |876| 
        LSL       AL,T                  ; [CPU_ALU] |876| 
        MOV       PL,AL                 ; [CPU_ALU] |876| 
||$C$L3||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 720,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |720| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |720| 
        LSR       AL,8                  ; [CPU_ALU] |720| 
        CMPB      AL,#16                ; [CPU_ALU] |720| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |720| 
        ; branchcc occurs ; [] |720| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 892,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |892| 
	.dwpsn	file "../src_driver/spi.c",line 364,column 13,is_stmt,isa 0
        ADDB      XAR2,#1               ; [CPU_ALU] |364| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 892,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],P         ; [CPU_FPU] |892| 
	.dwpsn	file "../src_driver/spi.c",line 360,column 20,is_stmt,isa 0
        BANZ      ||$C$L2||,AR6--       ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
||$C$L4||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 758,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |758| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |758| 
        LSR       AL,8                  ; [CPU_ALU] |758| 
        CMPB      AL,#16                ; [CPU_ALU] |758| 
        B         ||$C$L4||,LO          ; [CPU_ALU] |758| 
        ; branchcc occurs ; [] |758| 
        MOVB      XAR6,#15              ; [CPU_ALU] 
||$C$L5||:    
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] 
	.dwpsn	file "../src_driver/spi.c",line 379,column 13,is_stmt,isa 0
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
||$C$L6||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 749,column 1,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |749| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |749| 
        LSR       AL,8                  ; [CPU_ALU] |749| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |749| 
        ; branchcc occurs ; [] |749| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 931,column 5,is_stmt,isa 0
        MOV       PL,*+XAR5[7]          ; [CPU_ALU] |931| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 749,column 1,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |749| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |749| 
        LSR       AL,8                  ; [CPU_ALU] |749| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |749| 
        ; branchcc occurs ; [] |749| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 931,column 5,is_stmt,isa 0
        MOVL      XAR0,*-SP[2]          ; [CPU_ALU] |931| 
        MOV       PL,*+XAR5[7]          ; [CPU_ALU] |931| 
	.dwpsn	file "../src_driver/spi.c",line 385,column 17,is_stmt,isa 0
        MOV       *+XAR0[AR1],P         ; [CPU_ALU] |385| 
	.dwpsn	file "../src_driver/spi.c",line 386,column 17,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_ALU] |386| 
||$C$L8||:    
	.dwpsn	file "../src_driver/spi.c",line 377,column 21,is_stmt,isa 0
        BANZ      ||$C$L5||,AR6--       ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
	.dwpsn	file "../src_driver/spi.c",line 355,column 11,is_stmt,isa 0
        BANZ      ||$C$L1||,AR4--       ; [CPU_ALU] |355| 
        ; branchcc occurs ; [] |355| 
||$C$L9||:    
        MOV       AL,AR3                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/spi.c",line 396,column 17,is_stmt,isa 0
        B         ||$C$L12||,EQ         ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
        MOVZ      AR6,AR3               ; [CPU_ALU] 
        MOVB      AL,#16                ; [CPU_ALU] 
        SUB       AL,PH                 ; [CPU_ALU] 
        MOV       T,AL                  ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L10||:    
        MOVZ      AR0,AR2               ; [CPU_ALU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 876,column 1,is_stmt,isa 0
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |876| 
        LSL       AL,T                  ; [CPU_ALU] |876| 
        MOV       PL,AL                 ; [CPU_ALU] |876| 
||$C$L11||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 720,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |720| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |720| 
        LSR       AL,8                  ; [CPU_ALU] |720| 
        CMPB      AL,#16                ; [CPU_ALU] |720| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |720| 
        ; branchcc occurs ; [] |720| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 892,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |892| 
	.dwpsn	file "../src_driver/spi.c",line 400,column 9,is_stmt,isa 0
        ADDB      XAR2,#1               ; [CPU_ALU] |400| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 892,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],P         ; [CPU_FPU] |892| 
	.dwpsn	file "../src_driver/spi.c",line 396,column 17,is_stmt,isa 0
        BANZ      ||$C$L10||,AR6--      ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
||$C$L12||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 758,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |758| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |758| 
        LSR       AL,8                  ; [CPU_ALU] |758| 
        MOVZ      AR6,AL                ; [CPU_ALU] |758| 
        MOV       AL,AR3                ; [CPU_ALU] |758| 
	.dwpsn	file "../src_driver/spi.c",line 406,column 11,is_stmt,isa 0
        CMP       AL,AR6                ; [CPU_ALU] |406| 
        B         ||$C$L12||,HI         ; [CPU_ALU] |406| 
        ; branchcc occurs ; [] |406| 
	.dwpsn	file "../src_driver/spi.c",line 413,column 16,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |413| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |413| 
        ; branchcc occurs ; [] |413| 
        MOVZ      AR6,AR3               ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L13||:    
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] 
	.dwpsn	file "../src_driver/spi.c",line 415,column 9,is_stmt,isa 0
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |415| 
        ; branchcc occurs ; [] |415| 
||$C$L14||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 749,column 1,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |749| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |749| 
        LSR       AL,8                  ; [CPU_ALU] |749| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |749| 
        ; branchcc occurs ; [] |749| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 931,column 5,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[7]         ; [CPU_ALU] |931| 
        B         ||$C$L16||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L15||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 749,column 1,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |749| 
        AND       AL,*+XAR5[AR0],#0x1f00 ; [CPU_ALU] |749| 
        LSR       AL,8                  ; [CPU_ALU] |749| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |749| 
        ; branchcc occurs ; [] |749| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 931,column 5,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[7]         ; [CPU_ALU] |931| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |931| 
	.dwpsn	file "../src_driver/spi.c",line 421,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR1],AR7       ; [CPU_ALU] |421| 
	.dwpsn	file "../src_driver/spi.c",line 422,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_ALU] |422| 
||$C$L16||:    
	.dwpsn	file "../src_driver/spi.c",line 413,column 16,is_stmt,isa 0
        BANZ      ||$C$L13||,AR6--      ; [CPU_ALU] |413| 
        ; branchcc occurs ; [] |413| 
||$C$L17||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 574,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |574| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 575,column 5,is_stmt,isa 0
        ADDB      XAR5,#11              ; [CPU_ALU] |575| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 574,column 5,is_stmt,isa 0
        ADDB      XAR4,#10              ; [CPU_ALU] |574| 
        AND       *+XAR4[0],#0x9fff     ; [CPU_FPU] |574| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 575,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xdfff     ; [CPU_ALU] |575| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
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
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x1ae)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SPI_transmit32Bits"
	.clink
	.global	||SPI_transmit32Bits||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("SPI_transmit32Bits")
	.dwattr $C$DW$20, DW_AT_low_pc(||SPI_transmit32Bits||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("SPI_transmit32Bits")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x242)
	.dwattr $C$DW$20, DW_AT_decl_column(0x01)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../src_driver/spi.c",line 579,column 1,is_stmt,address ||SPI_transmit32Bits||,isa 0

	.dwfde $C$DW$CIE, ||SPI_transmit32Bits||
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("base")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("data")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -12]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("txDelay")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SPI_transmit32Bits            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||SPI_transmit32Bits||:
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("txBuffer")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -5]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("rxBuffer")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -7]

;* AR6   assigned to $O$U8
;* PL    assigned to base
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg2]

;* AR0   assigned to data
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("data")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg4]

;* AR7   assigned to txDelay
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("txDelay")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVZ      AR7,AR4               ; [CPU_ALU] |579| 
	.dwpsn	file "../src_driver/spi.c",line 589,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |589| 
	.dwpsn	file "../src_driver/spi.c",line 579,column 1,is_stmt,isa 0
        MOVL      XAR0,*-SP[12]         ; [CPU_ALU] |579| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |603| 
	.dwpsn	file "../src_driver/spi.c",line 579,column 1,is_stmt,isa 0
        MOVL      P,ACC                 ; [CPU_ALU] |579| 
	.dwpsn	file "../src_driver/spi.c",line 589,column 9,is_stmt,isa 0
        SUBB      XAR4,#7               ; [CPU_ARAU] |589| 
	.dwpsn	file "../src_driver/spi.c",line 595,column 5,is_stmt,isa 0
        MOVL      ACC,XAR0              ; [CPU_ALU] |595| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        SUBB      XAR5,#7               ; [CPU_ARAU] |603| 
	.dwpsn	file "../src_driver/spi.c",line 589,column 9,is_stmt,isa 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |589| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |603| 
	.dwpsn	file "../src_driver/spi.c",line 595,column 5,is_stmt,isa 0
        MOVH      *-SP[5],ACC << 0      ; [CPU_ALU] |595| 
	.dwpsn	file "../src_driver/spi.c",line 596,column 5,is_stmt,isa 0
        MOV       *-SP[4],AR0           ; [CPU_ALU] |596| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |603| 
        SUBB      XAR4,#5               ; [CPU_ARAU] |603| 
        MOVL      ACC,P                 ; [CPU_ALU] |603| 
	.dwpsn	file "../src_driver/spi.c",line 589,column 9,is_stmt,isa 0
        MOV       *XAR6++,#0            ; [CPU_ALU] |589| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        MOVZ      AR4,AR4               ; [CPU_ALU] |603| 
	.dwpsn	file "../src_driver/spi.c",line 589,column 9,is_stmt,isa 0
        MOV       *+XAR6[0],#0          ; [CPU_ALU] |589| 
	.dwpsn	file "../src_driver/spi.c",line 603,column 5,is_stmt,isa 0
        MOVB      *-SP[1],#16,UNC       ; [CPU_ALU] |603| 
        MOVB      *-SP[2],#2,UNC        ; [CPU_ALU] |603| 
        MOV       *-SP[3],AR7           ; [CPU_ALU] |603| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||SPI_pollingFIFOTransaction|| ; [CPU_ALU] |603| 
        ; call occurs [#||SPI_pollingFIFOTransaction||] ; [] |603| 
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x25c)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text:SPI_transmit24Bits"
	.clink
	.global	||SPI_transmit24Bits||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("SPI_transmit24Bits")
	.dwattr $C$DW$31, DW_AT_low_pc(||SPI_transmit24Bits||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("SPI_transmit24Bits")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../src_driver/spi.c",line 439,column 1,is_stmt,address ||SPI_transmit24Bits||,isa 0

	.dwfde $C$DW$CIE, ||SPI_transmit24Bits||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("data")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -14]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("txDelay")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SPI_transmit24Bits            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SPI_transmit24Bits||:
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("rxBuffer")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -6]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("txBuffer")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -9]

;* AR6   assigned to $O$U8
;* PL    assigned to base
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg2]

;* AR5   assigned to data
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("data")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to txDelay
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("txDelay")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOVZ      AR7,AR4               ; [CPU_ALU] |439| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 439,column 1,is_stmt,isa 0
        MOVL      XAR5,*-SP[14]         ; [CPU_ALU] |439| 
        MOVL      P,ACC                 ; [CPU_ALU] |439| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        SUBB      XAR4,#6               ; [CPU_ARAU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 457,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |457| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 466,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |466| 
	.dwpsn	file "../src_driver/spi.c",line 457,column 5,is_stmt,isa 0
        MOVH      *-SP[9],ACC << 0      ; [CPU_ALU] |457| 
	.dwpsn	file "../src_driver/spi.c",line 458,column 5,is_stmt,isa 0
        MOV       AL,AR5                ; [CPU_ALU] |458| 
        LSR       AL,8                  ; [CPU_ALU] |458| 
	.dwpsn	file "../src_driver/spi.c",line 466,column 5,is_stmt,isa 0
        SUBB      XAR4,#9               ; [CPU_ARAU] |466| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        MOV       *XAR6++,#0            ; [CPU_ALU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 458,column 5,is_stmt,isa 0
        MOV       *-SP[8],AL            ; [CPU_ALU] |458| 
	.dwpsn	file "../src_driver/spi.c",line 459,column 5,is_stmt,isa 0
        MOV       AL,AR5                ; [CPU_ALU] |459| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        MOV       *XAR6++,#0            ; [CPU_ALU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 459,column 5,is_stmt,isa 0
        ANDB      AL,#0xff              ; [CPU_ALU] |459| 
	.dwpsn	file "../src_driver/spi.c",line 466,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |466| 
	.dwpsn	file "../src_driver/spi.c",line 451,column 9,is_stmt,isa 0
        MOV       *+XAR6[0],#0          ; [CPU_ALU] |451| 
	.dwpsn	file "../src_driver/spi.c",line 466,column 5,is_stmt,isa 0
        MOVZ      AR4,AR4               ; [CPU_FPU] |466| 
	.dwpsn	file "../src_driver/spi.c",line 459,column 5,is_stmt,isa 0
        MOV       *-SP[7],AL            ; [CPU_ALU] |459| 
	.dwpsn	file "../src_driver/spi.c",line 466,column 5,is_stmt,isa 0
        SUBB      XAR5,#6               ; [CPU_ARAU] |466| 
        MOVB      *-SP[1],#8,UNC        ; [CPU_ALU] |466| 
        MOVL      ACC,P                 ; [CPU_ALU] |466| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |466| 
        MOVB      *-SP[2],#3,UNC        ; [CPU_ALU] |466| 
        MOV       *-SP[3],AR7           ; [CPU_ALU] |466| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||SPI_pollingFIFOTransaction|| ; [CPU_ALU] |466| 
        ; call occurs [#||SPI_pollingFIFOTransaction||] ; [] |466| 
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x1d3)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:SPI_setConfig"
	.clink
	.global	||SPI_setConfig||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("SPI_setConfig")
	.dwattr $C$DW$42, DW_AT_low_pc(||SPI_setConfig||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("SPI_setConfig")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x33)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/spi.c",line 53,column 1,is_stmt,address ||SPI_setConfig||,isa 0

	.dwfde $C$DW$CIE, ||SPI_setConfig||
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("base")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]

$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("lspclkHz")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -6]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("protocol")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("mode")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg14]

$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("bitRate")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -8]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("dataWidth")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -9]


;***************************************************************
;* FNAME: SPI_setConfig                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||SPI_setConfig||:
;* AR7   assigned to base
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("base")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg18]

;* PL    assigned to lspclkHz
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("lspclkHz")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg2]

;* AR4   assigned to protocol
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("protocol")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to mode
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("mode")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg14]

;* XT    assigned to bitRate
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("bitRate")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg21]

;* AR6   assigned to dataWidth
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("dataWidth")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR7,ACC              ; [CPU_ALU] |53| 
        MOVZ      AR6,*-SP[9]           ; [CPU_ALU] |53| 
	.dwpsn	file "../src_driver/spi.c",line 72,column 5,is_stmt,isa 0
        AND       AH,AR4,#0x0001        ; [CPU_ALU] |72| 
        LSL       AH,6                  ; [CPU_ALU] |72| 
        AND       AL,*+XAR7[0],#0xffb0  ; [CPU_FPU] |72| 
        SUBB      XAR6,#1               ; [CPU_ARAU] |72| 
        OR        AH,AL                 ; [CPU_ALU] |72| 
	.dwpsn	file "../src_driver/spi.c",line 82,column 5,is_stmt,isa 0
        AND       AL,AR4,#0x0002        ; [CPU_ALU] |82| 
	.dwpsn	file "../src_driver/spi.c",line 72,column 5,is_stmt,isa 0
        OR        AR6,AH                ; [CPU_ALU] |72| 
	.dwpsn	file "../src_driver/spi.c",line 53,column 1,is_stmt,isa 0
        MOVL      XT,*-SP[8]            ; [CPU_ALU] |53| 
        MOVL      P,*-SP[6]             ; [CPU_ALU] |53| 
	.dwpsn	file "../src_driver/spi.c",line 82,column 5,is_stmt,isa 0
        LSL       AL,2                  ; [CPU_ALU] |82| 
	.dwpsn	file "../src_driver/spi.c",line 72,column 5,is_stmt,isa 0
        MOV       *+XAR7[0],AR6         ; [CPU_ALU] |72| 
	.dwpsn	file "../src_driver/spi.c",line 82,column 5,is_stmt,isa 0
        AND       AH,*+XAR7[1],#0xfff1  ; [CPU_FPU] |82| 
        OR        AL,AH                 ; [CPU_ALU] |82| 
        OR        AL,AR5                ; [CPU_ALU] |82| 
        MOV       *+XAR7[1],AL          ; [CPU_ALU] |82| 
	.dwpsn	file "../src_driver/spi.c",line 90,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |90| 
        RPT       #31
||     SUBCUL    ACC,XT                ; [CPU_ALU] |90| 
        MOV       AL,PL                 ; [CPU_ALU] |90| 
        ADDB      AL,#-1                ; [CPU_ALU] |90| 
        MOV       *+XAR7[4],AL          ; [CPU_ALU] |90| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:SPI_setBaudRate"
	.clink
	.global	||SPI_setBaudRate||

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("SPI_setBaudRate")
	.dwattr $C$DW$56, DW_AT_low_pc(||SPI_setBaudRate||)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_linkage_name("SPI_setBaudRate")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x63)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 100,column 1,is_stmt,address ||SPI_setBaudRate||,isa 0

	.dwfde $C$DW$CIE, ||SPI_setBaudRate||
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("base")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("lspclkHz")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -4]

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("bitRate")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SPI_setBaudRate               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_setBaudRate||:
;* AR4   assigned to base
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("base")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg12]

;* PL    assigned to lspclkHz
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("lspclkHz")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg2]

;* AR6   assigned to bitRate
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("bitRate")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |100| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |100| 
        MOVL      P,*-SP[4]             ; [CPU_ALU] |100| 
	.dwpsn	file "../src_driver/spi.c",line 114,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |114| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |114| 
        MOV       AL,PL                 ; [CPU_ALU] |114| 
        ADDB      AL,#-1                ; [CPU_ALU] |114| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |114| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text:SPI_receive32Bits"
	.clink
	.global	||SPI_receive32Bits||

$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("SPI_receive32Bits")
	.dwattr $C$DW$64, DW_AT_low_pc(||SPI_receive32Bits||)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_linkage_name("SPI_receive32Bits")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0x264)
	.dwattr $C$DW$64, DW_AT_decl_column(0x01)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../src_driver/spi.c",line 614,column 1,is_stmt,address ||SPI_receive32Bits||,isa 0

	.dwfde $C$DW$CIE, ||SPI_receive32Bits||
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("base")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg0]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("endianness")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg12]

$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("dummyData")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg14]

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("txDelay")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -17]


;***************************************************************
;* FNAME: SPI_receive32Bits             FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  8 Auto,  2 SOE     *
;***************************************************************

||SPI_receive32Bits||:
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("txBuffer")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -7]

$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("rxBuffer")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -11]

;* AR1   assigned to endianness
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("endianness")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg6]

;* AR5   assigned to dummyData
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("dummyData")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to txDelay
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("txDelay")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOVZ      AR1,AR4               ; [CPU_ALU] |614| 
	.dwpsn	file "../src_driver/spi.c",line 627,column 9,is_stmt,isa 0
        MOV       *-SP[7],AR5           ; [CPU_ALU] |627| 
        MOV       *-SP[6],AR5           ; [CPU_ALU] |627| 
        MOV       *-SP[5],AR5           ; [CPU_ALU] |627| 
        MOV       *-SP[4],AR5           ; [CPU_ALU] |627| 
	.dwpsn	file "../src_driver/spi.c",line 637,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |637| 
	.dwpsn	file "../src_driver/spi.c",line 628,column 9,is_stmt,isa 0
        MOV       *-SP[11],#0           ; [CPU_ALU] |628| 
        MOV       *-SP[10],#0           ; [CPU_ALU] |628| 
        MOV       *-SP[9],#0            ; [CPU_ALU] |628| 
	.dwpsn	file "../src_driver/spi.c",line 637,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |637| 
	.dwpsn	file "../src_driver/spi.c",line 628,column 9,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |628| 
	.dwpsn	file "../src_driver/spi.c",line 614,column 1,is_stmt,isa 0
        MOVZ      AR6,*-SP[17]          ; [CPU_ALU] |614| 
	.dwpsn	file "../src_driver/spi.c",line 637,column 5,is_stmt,isa 0
        SUBB      XAR4,#7               ; [CPU_ARAU] |637| 
        SUBB      XAR5,#11              ; [CPU_ARAU] |637| 
        MOVB      *-SP[1],#8,UNC        ; [CPU_ALU] |637| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |637| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |637| 
        MOVB      *-SP[2],#4,UNC        ; [CPU_ALU] |637| 
        MOV       *-SP[3],AR6           ; [CPU_ALU] |637| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #||SPI_pollingFIFOTransaction|| ; [CPU_ALU] |637| 
        ; call occurs [#||SPI_pollingFIFOTransaction||] ; [] |637| 
        MOV       AL,AR1                ; [CPU_ALU] |637| 
	.dwpsn	file "../src_driver/spi.c",line 654,column 9,is_stmt,isa 0
        B         ||$C$L18||,EQ         ; [CPU_ALU] |654| 
        ; branchcc occurs ; [] |654| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[11] << 8     ; [CPU_ALU] |654| 
        OR        ACC,*-SP[10]          ; [CPU_ALU] |654| 
        LSL       ACC,8                 ; [CPU_ALU] |654| 
        OR        ACC,*-SP[9]           ; [CPU_ALU] |654| 
        LSL       ACC,8                 ; [CPU_ALU] |654| 
        OR        ACC,*-SP[8]           ; [CPU_ALU] |654| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] |654| 
        ; branch occurs ; [] |654| 
||$C$L18||:    
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[8] << 8      ; [CPU_ALU] |654| 
        OR        ACC,*-SP[9]           ; [CPU_ALU] |654| 
        LSL       ACC,8                 ; [CPU_ALU] |654| 
        OR        ACC,*-SP[10]          ; [CPU_ALU] |654| 
        LSL       ACC,8                 ; [CPU_ALU] |654| 
        OR        ACC,*-SP[11]          ; [CPU_ALU] |654| 
||$C$L19||:    
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x295)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text:SPI_receive24Bits"
	.clink
	.global	||SPI_receive24Bits||

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("SPI_receive24Bits")
	.dwattr $C$DW$76, DW_AT_low_pc(||SPI_receive24Bits||)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_linkage_name("SPI_receive24Bits")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$76, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$76, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$76, DW_AT_decl_column(0x01)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../src_driver/spi.c",line 525,column 1,is_stmt,address ||SPI_receive24Bits||,isa 0

	.dwfde $C$DW$CIE, ||SPI_receive24Bits||
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("base")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("endianness")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_name("dummyData")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg14]

$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("txDelay")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -15]


;***************************************************************
;* FNAME: SPI_receive24Bits             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  6 Auto,  2 SOE     *
;***************************************************************

||SPI_receive24Bits||:
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("txBuffer")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -6]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("rxBuffer")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -9]

;* AR1   assigned to endianness
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("endianness")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg6]

;* AR5   assigned to dummyData
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("dummyData")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to txDelay
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("txDelay")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
        MOVZ      AR1,AR4               ; [CPU_ALU] |525| 
	.dwpsn	file "../src_driver/spi.c",line 538,column 9,is_stmt,isa 0
        MOV       *-SP[6],AR5           ; [CPU_ALU] |538| 
        MOV       *-SP[5],AR5           ; [CPU_ALU] |538| 
        MOV       *-SP[4],AR5           ; [CPU_ALU] |538| 
	.dwpsn	file "../src_driver/spi.c",line 525,column 1,is_stmt,isa 0
        MOVZ      AR6,*-SP[15]          ; [CPU_ALU] |525| 
	.dwpsn	file "../src_driver/spi.c",line 548,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |548| 
	.dwpsn	file "../src_driver/spi.c",line 539,column 9,is_stmt,isa 0
        MOV       *-SP[9],#0            ; [CPU_ALU] |539| 
	.dwpsn	file "../src_driver/spi.c",line 548,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |548| 
	.dwpsn	file "../src_driver/spi.c",line 539,column 9,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |539| 
        MOV       *-SP[7],#0            ; [CPU_ALU] |539| 
	.dwpsn	file "../src_driver/spi.c",line 548,column 5,is_stmt,isa 0
        SUBB      XAR4,#6               ; [CPU_ARAU] |548| 
        SUBB      XAR5,#9               ; [CPU_ARAU] |548| 
        MOVB      *-SP[1],#8,UNC        ; [CPU_ALU] |548| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |548| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |548| 
        MOVB      *-SP[2],#3,UNC        ; [CPU_ALU] |548| 
        MOV       *-SP[3],AR6           ; [CPU_ALU] |548| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||SPI_pollingFIFOTransaction|| ; [CPU_ALU] |548| 
        ; call occurs [#||SPI_pollingFIFOTransaction||] ; [] |548| 
        MOV       AL,AR1                ; [CPU_ALU] |548| 
	.dwpsn	file "../src_driver/spi.c",line 564,column 9,is_stmt,isa 0
        B         ||$C$L20||,EQ         ; [CPU_ALU] |564| 
        ; branchcc occurs ; [] |564| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[9] << 8      ; [CPU_ALU] |564| 
        OR        ACC,*-SP[8]           ; [CPU_ALU] |564| 
        LSL       ACC,8                 ; [CPU_ALU] |564| 
        OR        ACC,*-SP[7]           ; [CPU_ALU] |564| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |564| 
        ; branch occurs ; [] |564| 
||$C$L20||:    
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[7] << 8      ; [CPU_ALU] |564| 
        OR        ACC,*-SP[8]           ; [CPU_ALU] |564| 
        LSL       ACC,8                 ; [CPU_ALU] |564| 
        OR        ACC,*-SP[9]           ; [CPU_ALU] |564| 
||$C$L21||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x23a)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text:SPI_receive16Bits"
	.clink
	.global	||SPI_receive16Bits||

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("SPI_receive16Bits")
	.dwattr $C$DW$88, DW_AT_low_pc(||SPI_receive16Bits||)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_linkage_name("SPI_receive16Bits")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$88, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$88, DW_AT_decl_column(0x01)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../src_driver/spi.c",line 477,column 1,is_stmt,address ||SPI_receive16Bits||,isa 0

	.dwfde $C$DW$CIE, ||SPI_receive16Bits||
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("base")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]

$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("endianness")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("dummyData")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg14]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("txDelay")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -13]


;***************************************************************
;* FNAME: SPI_receive16Bits             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  4 Auto,  2 SOE     *
;***************************************************************

||SPI_receive16Bits||:
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("txBuffer")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -5]

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("rxBuffer")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -7]

;* AR1   assigned to endianness
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("endianness")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg6]

;* AR5   assigned to dummyData
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("dummyData")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to txDelay
$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("txDelay")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOVZ      AR1,AR4               ; [CPU_ALU] |477| 
	.dwpsn	file "../src_driver/spi.c",line 490,column 9,is_stmt,isa 0
        MOV       *-SP[5],AR5           ; [CPU_ALU] |490| 
        MOV       *-SP[4],AR5           ; [CPU_ALU] |490| 
	.dwpsn	file "../src_driver/spi.c",line 491,column 9,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |491| 
	.dwpsn	file "../src_driver/spi.c",line 497,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |497| 
	.dwpsn	file "../src_driver/spi.c",line 477,column 1,is_stmt,isa 0
        MOVZ      AR6,*-SP[13]          ; [CPU_ALU] |477| 
	.dwpsn	file "../src_driver/spi.c",line 497,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |497| 
	.dwpsn	file "../src_driver/spi.c",line 491,column 9,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |491| 
	.dwpsn	file "../src_driver/spi.c",line 497,column 5,is_stmt,isa 0
        SUBB      XAR4,#5               ; [CPU_ARAU] |497| 
        MOVB      *-SP[1],#8,UNC        ; [CPU_ALU] |497| 
        SUBB      XAR5,#7               ; [CPU_ARAU] |497| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |497| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |497| 
        MOVB      *-SP[2],#2,UNC        ; [CPU_ALU] |497| 
        MOV       *-SP[3],AR6           ; [CPU_ALU] |497| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("SPI_pollingFIFOTransaction")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||SPI_pollingFIFOTransaction|| ; [CPU_ALU] |497| 
        ; call occurs [#||SPI_pollingFIFOTransaction||] ; [] |497| 
        MOV       AL,AR1                ; [CPU_ALU] |497| 
	.dwpsn	file "../src_driver/spi.c",line 511,column 9,is_stmt,isa 0
        B         ||$C$L22||,EQ         ; [CPU_ALU] |511| 
        ; branchcc occurs ; [] |511| 
        MOV       ACC,*-SP[7] << #8     ; [CPU_ALU] |511| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |511| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |511| 
        ; branch occurs ; [] |511| 
||$C$L22||:    
        MOV       ACC,*-SP[6] << #8     ; [CPU_ALU] |511| 
        OR        AL,*-SP[7]            ; [CPU_ALU] |511| 
||$C$L23||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x203)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text:SPI_pollingNonFIFOTransaction"
	.clink
	.global	||SPI_pollingNonFIFOTransaction||

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("SPI_pollingNonFIFOTransaction")
	.dwattr $C$DW$100, DW_AT_low_pc(||SPI_pollingNonFIFOTransaction||)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_linkage_name("SPI_pollingNonFIFOTransaction")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$100, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x123)
	.dwattr $C$DW$100, DW_AT_decl_column(0x01)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 292,column 1,is_stmt,address ||SPI_pollingNonFIFOTransaction||,isa 0

	.dwfde $C$DW$CIE, ||SPI_pollingNonFIFOTransaction||
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("base")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]

$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("charLength")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg12]

$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_name("data")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SPI_pollingNonFIFOTransaction FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_pollingNonFIFOTransaction||:
;* AR4   assigned to base
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("base")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg12]

;* AL    assigned to charLength
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("charLength")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to data
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("data")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg14]

;* AL    assigned to rxData
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("rxData")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]

;* AL    assigned to data
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("data")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |292| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |292| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 955,column 1,is_stmt,isa 0
        MOV       T,#16                 ; [CPU_ALU] |955| 
	.dwpsn	file "../src_driver/spi.c",line 292,column 1,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |292| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 955,column 1,is_stmt,isa 0
        SUB       T,AL                  ; [CPU_ALU] |955| 
        MOV       AL,AR5                ; [CPU_FPU] |955| 
        LSL       AL,T                  ; [CPU_ALU] |955| 
||$C$L24||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 964,column 11,is_stmt,isa 0
        TBIT      *+XAR4[2],#5          ; [CPU_ALU] |964| 
        B         ||$C$L24||,TC         ; [CPU_ALU] |964| 
        ; branchcc occurs ; [] |964| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 971,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |971| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |971| 
||$C$L25||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 1003,column 11,is_stmt,isa 0
        TBIT      *+XAR4[2],#6          ; [CPU_ALU] |1003| 
        B         ||$C$L25||,NTC        ; [CPU_ALU] |1003| 
        ; branchcc occurs ; [] |1003| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 1010,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[7]          ; [CPU_ALU] |1010| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text:SPI_getInterruptStatus"
	.clink
	.global	||SPI_getInterruptStatus||

$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("SPI_getInterruptStatus")
	.dwattr $C$DW$110, DW_AT_low_pc(||SPI_getInterruptStatus||)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_linkage_name("SPI_getInterruptStatus")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$110, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$110, DW_AT_decl_column(0x01)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 204,column 1,is_stmt,address ||SPI_getInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SPI_getInterruptStatus||
$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("base")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SPI_getInterruptStatus        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_getInterruptStatus||:
;* AR4   assigned to base
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("base")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |204| 
	.dwpsn	file "../src_driver/spi.c",line 212,column 5,is_stmt,isa 0
        TBIT      *+XAR4[2],#6          ; [CPU_ALU] |212| 
        B         ||$C$L26||,TC         ; [CPU_ALU] |212| 
        ; branchcc occurs ; [] |212| 
	.dwpsn	file "../src_driver/spi.c",line 205,column 19,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |205| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L26||:    
	.dwpsn	file "../src_driver/spi.c",line 214,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |214| 
||$C$L27||:    
	.dwpsn	file "../src_driver/spi.c",line 217,column 5,is_stmt,isa 0
        TBIT      *+XAR4[2],#7          ; [CPU_ALU] |217| 
        B         ||$C$L28||,NTC        ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "../src_driver/spi.c",line 219,column 9,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |219| 
||$C$L28||:    
	.dwpsn	file "../src_driver/spi.c",line 222,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |222| 
        TBIT      *+XAR4[AR0],#7        ; [CPU_ALU] |222| 
        B         ||$C$L29||,NTC        ; [CPU_ALU] |222| 
        ; branchcc occurs ; [] |222| 
	.dwpsn	file "../src_driver/spi.c",line 224,column 9,is_stmt,isa 0
        ORB       AL,#0x08              ; [CPU_ALU] |224| 
||$C$L29||:    
	.dwpsn	file "../src_driver/spi.c",line 227,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |227| 
        TBIT      *+XAR4[AR0],#7        ; [CPU_ALU] |227| 
        B         ||$C$L30||,NTC        ; [CPU_ALU] |227| 
        ; branchcc occurs ; [] |227| 
	.dwpsn	file "../src_driver/spi.c",line 229,column 9,is_stmt,isa 0
        ORB       AL,#0x04              ; [CPU_ALU] |229| 
||$C$L30||:    
	.dwpsn	file "../src_driver/spi.c",line 232,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |232| 
        TBIT      *+XAR4[AR0],#15       ; [CPU_ALU] |232| 
        B         ||$C$L31||,NTC        ; [CPU_ALU] |232| 
        ; branchcc occurs ; [] |232| 
	.dwpsn	file "../src_driver/spi.c",line 234,column 9,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |234| 
||$C$L31||:    
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$110, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0xee)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text:SPI_enableInterrupt"
	.clink
	.global	||SPI_enableInterrupt||

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("SPI_enableInterrupt")
	.dwattr $C$DW$114, DW_AT_low_pc(||SPI_enableInterrupt||)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_linkage_name("SPI_enableInterrupt")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$114, DW_AT_decl_column(0x01)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 124,column 1,is_stmt,address ||SPI_enableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SPI_enableInterrupt||
$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("base")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]

$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("intFlags")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SPI_enableInterrupt           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_enableInterrupt||:
;* AR4   assigned to base
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("base")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("intFlags")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |124| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |124| 
	.dwpsn	file "../src_driver/spi.c",line 133,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |133| 
        B         ||$C$L32||,NTC        ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
	.dwpsn	file "../src_driver/spi.c",line 135,column 9,is_stmt,isa 0
        OR        *+XAR4[1],#0x0001     ; [CPU_ALU] |135| 
||$C$L32||:    
	.dwpsn	file "../src_driver/spi.c",line 138,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |138| 
        B         ||$C$L33||,NTC        ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "../src_driver/spi.c",line 140,column 9,is_stmt,isa 0
        OR        *+XAR4[1],#0x0010     ; [CPU_ALU] |140| 
||$C$L33||:    
	.dwpsn	file "../src_driver/spi.c",line 146,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |146| 
        B         ||$C$L34||,NTC        ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "../src_driver/spi.c",line 148,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |148| 
        ADDB      XAR5,#10              ; [CPU_ALU] |148| 
        OR        *+XAR5[0],#0x0020     ; [CPU_ALU] |148| 
||$C$L34||:    
	.dwpsn	file "../src_driver/spi.c",line 151,column 5,is_stmt,isa 0
        ANDB      AL,#0x14              ; [CPU_ALU] |151| 
        MOVB      AH,#0                 ; [CPU_FPU] |151| 
        TEST      ACC                   ; [CPU_ALU] |151| 
        B         ||$C$L35||,EQ         ; [CPU_ALU] |151| 
        ; branchcc occurs ; [] |151| 
	.dwpsn	file "../src_driver/spi.c",line 153,column 9,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |153| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |153| 
||$C$L35||:    
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x9b)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text:SPI_disableInterrupt"
	.clink
	.global	||SPI_disableInterrupt||

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("SPI_disableInterrupt")
	.dwattr $C$DW$120, DW_AT_low_pc(||SPI_disableInterrupt||)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_linkage_name("SPI_disableInterrupt")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$120, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$120, DW_AT_decl_column(0x01)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 164,column 1,is_stmt,address ||SPI_disableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SPI_disableInterrupt||
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("base")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg0]

$C$DW$122	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$122, DW_AT_name("intFlags")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SPI_disableInterrupt          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_disableInterrupt||:
;* AR4   assigned to base
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("base")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("intFlags")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |164| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |164| 
	.dwpsn	file "../src_driver/spi.c",line 173,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |173| 
        B         ||$C$L36||,NTC        ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
	.dwpsn	file "../src_driver/spi.c",line 175,column 9,is_stmt,isa 0
        AND       *+XAR4[1],#0xfffe     ; [CPU_ALU] |175| 
||$C$L36||:    
	.dwpsn	file "../src_driver/spi.c",line 178,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |178| 
        B         ||$C$L37||,NTC        ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
	.dwpsn	file "../src_driver/spi.c",line 180,column 9,is_stmt,isa 0
        AND       *+XAR4[1],#0xffef     ; [CPU_ALU] |180| 
||$C$L37||:    
	.dwpsn	file "../src_driver/spi.c",line 186,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |186| 
        B         ||$C$L38||,NTC        ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
	.dwpsn	file "../src_driver/spi.c",line 188,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |188| 
        ADDB      XAR5,#10              ; [CPU_ALU] |188| 
        AND       *+XAR5[0],#0xffdf     ; [CPU_ALU] |188| 
||$C$L38||:    
	.dwpsn	file "../src_driver/spi.c",line 191,column 5,is_stmt,isa 0
        ANDB      AL,#0x14              ; [CPU_ALU] |191| 
        MOVB      AH,#0                 ; [CPU_FPU] |191| 
        TEST      ACC                   ; [CPU_ALU] |191| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
	.dwpsn	file "../src_driver/spi.c",line 193,column 9,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |193| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |193| 
||$C$L39||:    
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text:SPI_clearInterruptStatus"
	.clink
	.global	||SPI_clearInterruptStatus||

$C$DW$126	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$126, DW_AT_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$126, DW_AT_low_pc(||SPI_clearInterruptStatus||)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_linkage_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_decl_file("../src_driver/spi.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$126, DW_AT_decl_column(0x01)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/spi.c",line 247,column 1,is_stmt,address ||SPI_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SPI_clearInterruptStatus||
$C$DW$127	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$127, DW_AT_name("base")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg0]

$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("intFlags")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: SPI_clearInterruptStatus      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SPI_clearInterruptStatus||:
;* AR4   assigned to base
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("base")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]

;* AL    assigned to intFlags
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("intFlags")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |247| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |247| 
	.dwpsn	file "../src_driver/spi.c",line 256,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |256| 
        B         ||$C$L40||,NTC        ; [CPU_ALU] |256| 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "../src_driver/spi.c",line 258,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |258| 
	.dwpsn	file "../src_driver/spi.c",line 259,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |259| 
||$C$L40||:    
	.dwpsn	file "../src_driver/spi.c",line 262,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |262| 
        B         ||$C$L41||,NTC        ; [CPU_ALU] |262| 
        ; branchcc occurs ; [] |262| 
	.dwpsn	file "../src_driver/spi.c",line 264,column 9,is_stmt,isa 0
        OR        *+XAR4[2],#0x0080     ; [CPU_ALU] |264| 
||$C$L41||:    
	.dwpsn	file "../src_driver/spi.c",line 270,column 5,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |270| 
        B         ||$C$L42||,NTC        ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../src_driver/spi.c",line 272,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |272| 
        ADDB      XAR5,#10              ; [CPU_ALU] |272| 
        OR        *+XAR5[0],#0x0040     ; [CPU_ALU] |272| 
||$C$L42||:    
	.dwpsn	file "../src_driver/spi.c",line 275,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |275| 
        B         ||$C$L43||,NTC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
	.dwpsn	file "../src_driver/spi.c",line 277,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |277| 
        ADDB      XAR5,#11              ; [CPU_ALU] |277| 
        OR        *+XAR5[0],#0x0040     ; [CPU_ALU] |277| 
||$C$L43||:    
	.dwpsn	file "../src_driver/spi.c",line 280,column 5,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |280| 
        B         ||$C$L44||,NTC        ; [CPU_ALU] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "../src_driver/spi.c",line 282,column 9,is_stmt,isa 0
        ADDB      XAR4,#11              ; [CPU_ALU] |282| 
        OR        *+XAR4[0],#0x4000     ; [CPU_ALU] |282| 
||$C$L44||:    
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$126, DW_AT_TI_end_file("../src_driver/spi.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x11c)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126


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
$C$DW$132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$132, DW_AT_name("SPI_FIFO_TXEMPTY")
	.dwattr $C$DW$132, DW_AT_const_value(0x00)
	.dwattr $C$DW$132, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x141)
	.dwattr $C$DW$132, DW_AT_decl_column(0x05)

$C$DW$133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$133, DW_AT_name("SPI_FIFO_TX0")
	.dwattr $C$DW$133, DW_AT_const_value(0x00)
	.dwattr $C$DW$133, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x142)
	.dwattr $C$DW$133, DW_AT_decl_column(0x05)

$C$DW$134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$134, DW_AT_name("SPI_FIFO_TX1")
	.dwattr $C$DW$134, DW_AT_const_value(0x01)
	.dwattr $C$DW$134, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x143)
	.dwattr $C$DW$134, DW_AT_decl_column(0x05)

$C$DW$135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$135, DW_AT_name("SPI_FIFO_TX2")
	.dwattr $C$DW$135, DW_AT_const_value(0x02)
	.dwattr $C$DW$135, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x144)
	.dwattr $C$DW$135, DW_AT_decl_column(0x05)

$C$DW$136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$136, DW_AT_name("SPI_FIFO_TX3")
	.dwattr $C$DW$136, DW_AT_const_value(0x03)
	.dwattr $C$DW$136, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x145)
	.dwattr $C$DW$136, DW_AT_decl_column(0x05)

$C$DW$137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$137, DW_AT_name("SPI_FIFO_TX4")
	.dwattr $C$DW$137, DW_AT_const_value(0x04)
	.dwattr $C$DW$137, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x146)
	.dwattr $C$DW$137, DW_AT_decl_column(0x05)

$C$DW$138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$138, DW_AT_name("SPI_FIFO_TX5")
	.dwattr $C$DW$138, DW_AT_const_value(0x05)
	.dwattr $C$DW$138, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x147)
	.dwattr $C$DW$138, DW_AT_decl_column(0x05)

$C$DW$139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$139, DW_AT_name("SPI_FIFO_TX6")
	.dwattr $C$DW$139, DW_AT_const_value(0x06)
	.dwattr $C$DW$139, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x148)
	.dwattr $C$DW$139, DW_AT_decl_column(0x05)

$C$DW$140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$140, DW_AT_name("SPI_FIFO_TX7")
	.dwattr $C$DW$140, DW_AT_const_value(0x07)
	.dwattr $C$DW$140, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x149)
	.dwattr $C$DW$140, DW_AT_decl_column(0x05)

$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("SPI_FIFO_TX8")
	.dwattr $C$DW$141, DW_AT_const_value(0x08)
	.dwattr $C$DW$141, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("SPI_FIFO_TX9")
	.dwattr $C$DW$142, DW_AT_const_value(0x09)
	.dwattr $C$DW$142, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("SPI_FIFO_TX10")
	.dwattr $C$DW$143, DW_AT_const_value(0x0a)
	.dwattr $C$DW$143, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("SPI_FIFO_TX11")
	.dwattr $C$DW$144, DW_AT_const_value(0x0b)
	.dwattr $C$DW$144, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("SPI_FIFO_TX12")
	.dwattr $C$DW$145, DW_AT_const_value(0x0c)
	.dwattr $C$DW$145, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("SPI_FIFO_TX13")
	.dwattr $C$DW$146, DW_AT_const_value(0x0d)
	.dwattr $C$DW$146, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("SPI_FIFO_TX14")
	.dwattr $C$DW$147, DW_AT_const_value(0x0e)
	.dwattr $C$DW$147, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x150)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("SPI_FIFO_TX15")
	.dwattr $C$DW$148, DW_AT_const_value(0x0f)
	.dwattr $C$DW$148, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x151)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("SPI_FIFO_TX16")
	.dwattr $C$DW$149, DW_AT_const_value(0x10)
	.dwattr $C$DW$149, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x152)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("SPI_FIFO_TXFULL")
	.dwattr $C$DW$150, DW_AT_const_value(0x10)
	.dwattr $C$DW$150, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x153)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SPI_TxFIFOLevel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x154)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$151, DW_AT_name("SPI_FIFO_RXEMPTY")
	.dwattr $C$DW$151, DW_AT_const_value(0x00)
	.dwattr $C$DW$151, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$151, DW_AT_decl_column(0x05)

$C$DW$152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$152, DW_AT_name("SPI_FIFO_RX0")
	.dwattr $C$DW$152, DW_AT_const_value(0x00)
	.dwattr $C$DW$152, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x160)
	.dwattr $C$DW$152, DW_AT_decl_column(0x05)

$C$DW$153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$153, DW_AT_name("SPI_FIFO_RX1")
	.dwattr $C$DW$153, DW_AT_const_value(0x01)
	.dwattr $C$DW$153, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x161)
	.dwattr $C$DW$153, DW_AT_decl_column(0x05)

$C$DW$154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$154, DW_AT_name("SPI_FIFO_RX2")
	.dwattr $C$DW$154, DW_AT_const_value(0x02)
	.dwattr $C$DW$154, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x162)
	.dwattr $C$DW$154, DW_AT_decl_column(0x05)

$C$DW$155	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$155, DW_AT_name("SPI_FIFO_RX3")
	.dwattr $C$DW$155, DW_AT_const_value(0x03)
	.dwattr $C$DW$155, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x163)
	.dwattr $C$DW$155, DW_AT_decl_column(0x05)

$C$DW$156	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$156, DW_AT_name("SPI_FIFO_RX4")
	.dwattr $C$DW$156, DW_AT_const_value(0x04)
	.dwattr $C$DW$156, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x164)
	.dwattr $C$DW$156, DW_AT_decl_column(0x05)

$C$DW$157	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$157, DW_AT_name("SPI_FIFO_RX5")
	.dwattr $C$DW$157, DW_AT_const_value(0x05)
	.dwattr $C$DW$157, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x165)
	.dwattr $C$DW$157, DW_AT_decl_column(0x05)

$C$DW$158	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$158, DW_AT_name("SPI_FIFO_RX6")
	.dwattr $C$DW$158, DW_AT_const_value(0x06)
	.dwattr $C$DW$158, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x166)
	.dwattr $C$DW$158, DW_AT_decl_column(0x05)

$C$DW$159	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$159, DW_AT_name("SPI_FIFO_RX7")
	.dwattr $C$DW$159, DW_AT_const_value(0x07)
	.dwattr $C$DW$159, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x167)
	.dwattr $C$DW$159, DW_AT_decl_column(0x05)

$C$DW$160	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$160, DW_AT_name("SPI_FIFO_RX8")
	.dwattr $C$DW$160, DW_AT_const_value(0x08)
	.dwattr $C$DW$160, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x168)
	.dwattr $C$DW$160, DW_AT_decl_column(0x05)

$C$DW$161	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$161, DW_AT_name("SPI_FIFO_RX9")
	.dwattr $C$DW$161, DW_AT_const_value(0x09)
	.dwattr $C$DW$161, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x169)
	.dwattr $C$DW$161, DW_AT_decl_column(0x05)

$C$DW$162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$162, DW_AT_name("SPI_FIFO_RX10")
	.dwattr $C$DW$162, DW_AT_const_value(0x0a)
	.dwattr $C$DW$162, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$162, DW_AT_decl_column(0x05)

$C$DW$163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$163, DW_AT_name("SPI_FIFO_RX11")
	.dwattr $C$DW$163, DW_AT_const_value(0x0b)
	.dwattr $C$DW$163, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$163, DW_AT_decl_column(0x05)

$C$DW$164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$164, DW_AT_name("SPI_FIFO_RX12")
	.dwattr $C$DW$164, DW_AT_const_value(0x0c)
	.dwattr $C$DW$164, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$164, DW_AT_decl_column(0x05)

$C$DW$165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$165, DW_AT_name("SPI_FIFO_RX13")
	.dwattr $C$DW$165, DW_AT_const_value(0x0d)
	.dwattr $C$DW$165, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$165, DW_AT_decl_column(0x05)

$C$DW$166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$166, DW_AT_name("SPI_FIFO_RX14")
	.dwattr $C$DW$166, DW_AT_const_value(0x0e)
	.dwattr $C$DW$166, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$166, DW_AT_decl_column(0x05)

$C$DW$167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$167, DW_AT_name("SPI_FIFO_RX15")
	.dwattr $C$DW$167, DW_AT_const_value(0x0f)
	.dwattr $C$DW$167, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$167, DW_AT_decl_column(0x05)

$C$DW$168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$168, DW_AT_name("SPI_FIFO_RX16")
	.dwattr $C$DW$168, DW_AT_const_value(0x10)
	.dwattr $C$DW$168, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x170)
	.dwattr $C$DW$168, DW_AT_decl_column(0x05)

$C$DW$169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$169, DW_AT_name("SPI_FIFO_RXFULL")
	.dwattr $C$DW$169, DW_AT_const_value(0x10)
	.dwattr $C$DW$169, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x171)
	.dwattr $C$DW$169, DW_AT_decl_column(0x05)

$C$DW$170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$170, DW_AT_name("SPI_FIFO_RXDEFAULT")
	.dwattr $C$DW$170, DW_AT_const_value(0x1f)
	.dwattr $C$DW$170, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x172)
	.dwattr $C$DW$170, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("SPI_RxFIFOLevel")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("SPI_PROT_POL0PHA0")
	.dwattr $C$DW$171, DW_AT_const_value(0x00)
	.dwattr $C$DW$171, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x122)
	.dwattr $C$DW$171, DW_AT_decl_column(0x05)

$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("SPI_PROT_POL0PHA1")
	.dwattr $C$DW$172, DW_AT_const_value(0x02)
	.dwattr $C$DW$172, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x124)
	.dwattr $C$DW$172, DW_AT_decl_column(0x05)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("SPI_PROT_POL1PHA0")
	.dwattr $C$DW$173, DW_AT_const_value(0x01)
	.dwattr $C$DW$173, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x126)
	.dwattr $C$DW$173, DW_AT_decl_column(0x05)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("SPI_PROT_POL1PHA1")
	.dwattr $C$DW$174, DW_AT_const_value(0x03)
	.dwattr $C$DW$174, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x128)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x120)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("SPI_TransferProtocol")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$175	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$175)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("SPI_MODE_PERIPHERAL")
	.dwattr $C$DW$176, DW_AT_const_value(0x02)
	.dwattr $C$DW$176, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x132)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("SPI_MODE_CONTROLLER")
	.dwattr $C$DW$177, DW_AT_const_value(0x06)
	.dwattr $C$DW$177, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x133)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("SPI_MODE_PERIPHERAL_OD")
	.dwattr $C$DW$178, DW_AT_const_value(0x00)
	.dwattr $C$DW$178, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x134)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("SPI_MODE_CONTROLLER_OD")
	.dwattr $C$DW$179, DW_AT_const_value(0x04)
	.dwattr $C$DW$179, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x135)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x131)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("SPI_Mode")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x136)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$180	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$180)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$181, DW_AT_name("SPI_DATA_LITTLE_ENDIAN")
	.dwattr $C$DW$181, DW_AT_const_value(0x00)
	.dwattr $C$DW$181, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x199)
	.dwattr $C$DW$181, DW_AT_decl_column(0x05)

$C$DW$182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$182, DW_AT_name("SPI_DATA_BIG_ENDIAN")
	.dwattr $C$DW$182, DW_AT_const_value(0x01)
	.dwattr $C$DW$182, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$182, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x198)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("SPI_endianess")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$183	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$183)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$184	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$34)

$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$184)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$185	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$34)

$C$DW$T$37	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$185)

	.dwendtag $C$DW$TU$37


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


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$45


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$186	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$45)

$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$186)

	.dwendtag $C$DW$TU$59


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x03)
$C$DW$187	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$187, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$188	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$188, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x04)
$C$DW$189	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$189, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$190	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$40)

$C$DW$T$66	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$190)

	.dwendtag $C$DW$TU$66


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


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$191	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$22)

$C$DW$T$72	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$191)

	.dwendtag $C$DW$TU$72


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

