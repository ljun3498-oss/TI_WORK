;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:19 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src_driver/gpio.c")
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

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{BEC7530C-CA20-442B-9646-B00F06D45EA3} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{A123C97F-8840-434E-B124-770E12557F61} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{0BB98BB1-E117-42A2-BBC5-01AE5824447F} 
	.sect	".text:GPIO_setQualificationPeriod"
	.clink
	.global	||GPIO_setQualificationPeriod||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("GPIO_setQualificationPeriod")
	.dwattr $C$DW$3, DW_AT_low_pc(||GPIO_setQualificationPeriod||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("GPIO_setQualificationPeriod")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 350,column 1,is_stmt,address ||GPIO_setQualificationPeriod||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setQualificationPeriod||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("pin")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("divider")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: GPIO_setQualificationPeriod   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setQualificationPeriod||:
;* AR4   assigned to $O$C1
;* AR6   assigned to $O$C2
;* AR4   assigned to pin
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("pin")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to divider
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("divider")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |350| 
        MOVL      XAR7,*-SP[4]          ; [CPU_ALU] |350| 
	.dwpsn	file "../src_driver/gpio.c",line 375,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |375| 
	.dwpsn	file "../src_driver/gpio.c",line 376,column 5,is_stmt,isa 0
        ANDB      AL,#0x18              ; [CPU_ALU] |376| 
        MOVB      AH,#0                 ; [CPU_FPU] |376| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |376| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       T,AR6                 ; [CPU_ALU] |376| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |376| 
        AND       AL,#65504             ; [CPU_ALU] |376| 
        LSL       ACC,1                 ; [CPU_ALU] |376| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |376| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |376| 
        MOVB      ACC,#255              ; [CPU_ALU] |376| 
        LSLL      ACC,T                 ; [CPU_ALU] |376| 
        NOT       ACC                   ; [CPU_ALU] |376| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |376| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |376| 
	.dwpsn	file "../src_driver/gpio.c",line 377,column 5,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |377| 
        SFR       ACC,1                 ; [CPU_ALU] |377| 
        LSLL      ACC,T                 ; [CPU_ALU] |377| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |377| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |377| 
	.dwpsn	file "../src_driver/gpio.c",line 378,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |378| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:GPIO_setQualificationMode"
	.clink
	.global	||GPIO_setQualificationMode||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$9, DW_AT_low_pc(||GPIO_setQualificationMode||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 285,column 1,is_stmt,address ||GPIO_setQualificationMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setQualificationMode||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("pin")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("qualification")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setQualificationMode     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setQualificationMode||:
;* AR5   assigned to $O$C1
;* T     assigned to $O$C2
;* AR5   assigned to pin
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pin")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to qualification
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("qualification")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |285| 
	.dwpsn	file "../src_driver/gpio.c",line 303,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |303| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 305,column 5,is_stmt,isa 0
        MOV       ACC,AR5 << #1         ; [CPU_ALU] |305| 
        MOVL      P,XAR5                ; [CPU_ALU] |305| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |305| 
        MOVP      T,AL                  ; [CPU_ALU] 
        SFR       ACC,4                 ; [CPU_ALU] |305| 
        MOVL      P,ACC                 ; [CPU_ALU] |305| 
        MOV       AL,PL                 ; [CPU_ALU] |305| 
        MOV       PH,#0                 ; [CPU_ALU] |305| 
        ANDB      AL,#0x01              ; [CPU_ALU] |305| 
        MOV       PL,AL                 ; [CPU_ALU] |305| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |305| 
        AND       AL,#65504             ; [CPU_ALU] |305| 
        ADDL      ACC,P                 ; [CPU_ALU] |305| 
        ADDB      ACC,#1                ; [CPU_ALU] |305| 
        LSL       ACC,1                 ; [CPU_ALU] |305| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |305| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |305| 
        MOVB      ACC,#3                ; [CPU_ALU] |305| 
        LSLL      ACC,T                 ; [CPU_ALU] |305| 
        NOT       ACC                   ; [CPU_ALU] |305| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |305| 
        AND       *+XAR5[1],AH          ; [CPU_ALU] |305| 
	.dwpsn	file "../src_driver/gpio.c",line 306,column 5,is_stmt,isa 0
        MOVU      ACC,AR4               ; [CPU_ALU] |306| 
        LSLL      ACC,T                 ; [CPU_ALU] |306| 
        OR        *+XAR5[0],AL          ; [CPU_ALU] |306| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |306| 
	.dwpsn	file "../src_driver/gpio.c",line 308,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |308| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:GPIO_setPinConfig"
	.clink
	.global	||GPIO_setPinConfig||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$15, DW_AT_low_pc(||GPIO_setPinConfig||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src_driver/gpio.c",line 462,column 1,is_stmt,address ||GPIO_setPinConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setPinConfig||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("pinConfig")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_setPinConfig             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||GPIO_setPinConfig||:
;* AR4   assigned to $O$C1
;* AR2   assigned to $O$C2
;* PL    assigned to $O$C3
;* AR6   assigned to pinConfig
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("pinConfig")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR6,ACC              ; [CPU_ALU] |462| 
	.dwpsn	file "../src_driver/gpio.c",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 475,column 5,is_stmt,isa 0
        SFR       ACC,8                 ; [CPU_ALU] |475| 
        MOVB      AH,#0                 ; [CPU_ALU] |475| 
        ANDB      AL,#0xff              ; [CPU_ALU] |475| 
        MOVL      XAR2,ACC              ; [CPU_ALU] |475| 
	.dwpsn	file "../src_driver/gpio.c",line 480,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |480| 
	.dwpsn	file "../src_driver/gpio.c",line 475,column 5,is_stmt,isa 0
        MOV       T,AR2                 ; [CPU_ALU] |475| 
        MOVB      ACC,#3                ; [CPU_ALU] |475| 
        LSLL      ACC,T                 ; [CPU_ALU] |475| 
        NOT       ACC                   ; [CPU_ALU] |475| 
        MOVL      P,ACC                 ; [CPU_ALU] |475| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |475| 
        MOVU      ACC,AH                ; [CPU_ALU] |475| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |475| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |475| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |475| 
        MOV       AL,PL                 ; [CPU_ALU] |475| 
        MOV       AH,PH                 ; [CPU_ALU] |475| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |475| 
	.dwpsn	file "../src_driver/gpio.c",line 480,column 5,is_stmt,isa 0
        ADDB      XAR5,#26              ; [CPU_ALU] |480| 
	.dwpsn	file "../src_driver/gpio.c",line 475,column 5,is_stmt,isa 0
        AND       *+XAR4[1],AH          ; [CPU_ALU] |475| 
        MOVL      ACC,P                 ; [CPU_ALU] |475| 
	.dwpsn	file "../src_driver/gpio.c",line 480,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[0]          ; [CPU_ALU] |480| 
        AND       AH,*+XAR5[1]          ; [CPU_ALU] |480| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |480| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |480| 
        SFR       ACC,2                 ; [CPU_ALU] |480| 
        MOVB      AH,#0                 ; [CPU_ALU] |480| 
        ANDB      AL,#0x03              ; [CPU_ALU] |480| 
        LSLL      ACC,T                 ; [CPU_ALU] |480| 
        MOVL      P,ACC                 ; [CPU_ALU] |480| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |480| 
        OR        AL,PL                 ; [CPU_ALU] |480| 
        OR        AH,PH                 ; [CPU_ALU] |480| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |480| 
	.dwpsn	file "../src_driver/gpio.c",line 487,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |487| 
        MOVB      AH,#0                 ; [CPU_ALU] |487| 
        ANDB      AL,#0x03              ; [CPU_ALU] |487| 
        LSLL      ACC,T                 ; [CPU_ALU] |487| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |487| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |487| 
	.dwpsn	file "../src_driver/gpio.c",line 488,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |488| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 9
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:GPIO_setPadConfig"
	.clink
	.global	||GPIO_setPadConfig||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$19, DW_AT_low_pc(||GPIO_setPadConfig||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0xad)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 174,column 1,is_stmt,address ||GPIO_setPadConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setPadConfig||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("pin")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("pinType")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: GPIO_setPadConfig             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setPadConfig||:
;* AL    assigned to $O$K13
;* AR4   assigned to $O$K8
;* AR7   assigned to pin
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("pin")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to pinType
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("pinType")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to gpioBaseAddr
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]

;* PL    assigned to pinMask
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("pinMask")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |174| 
	.dwpsn	file "../src_driver/gpio.c",line 183,column 5,is_stmt,isa 0
        AND       AL,#65504             ; [CPU_ALU] |183| 
        LSL       ACC,1                 ; [CPU_ALU] |183| 
	.dwpsn	file "../src_driver/gpio.c",line 174,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_FPU] |174| 
	.dwpsn	file "../src_driver/gpio.c",line 183,column 5,is_stmt,isa 0
        ADD       ACC,#31 << 10         ; [CPU_ALU] |183| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |183| 
	.dwpsn	file "../src_driver/gpio.c",line 185,column 5,is_stmt,isa 0
        MOV       AL,AR7                ; [CPU_ALU] |185| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |185| 
        MOV       T,AL                  ; [CPU_ALU] |185| 
        MOVB      ACC,#1                ; [CPU_ALU] |185| 
        LSLL      ACC,T                 ; [CPU_ALU] |185| 
        MOVL      P,ACC                 ; [CPU_ALU] |185| 
	.dwpsn	file "../src_driver/gpio.c",line 187,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |187| 
        MOV       AL,AR6                ; [CPU_ALU] |187| 
	.dwpsn	file "../src_driver/gpio.c",line 192,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |192| 
        B         ||$C$L1||,TC          ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
	.dwpsn	file "../src_driver/gpio.c",line 198,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |198| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        NOT       ACC                   ; [CPU_ALU] |198| 
        ADDB      XAR5,#18              ; [CPU_ALU] |198| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |198| 
        AND       *+XAR5[1],AH          ; [CPU_ALU] |198| 
	.dwpsn	file "../src_driver/gpio.c",line 204,column 5,is_stmt,isa 0
        B         ||$C$L2||,UNC         ; [CPU_ALU] |204| 
        ; branch occurs ; [] |204| 
||$C$L1||:    
	.dwpsn	file "../src_driver/gpio.c",line 194,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |194| 
        MOV       AL,PL                 ; [CPU_ALU] |194| 
        MOV       AH,PH                 ; [CPU_ALU] |194| 
        ADDB      XAR5,#18              ; [CPU_ALU] |194| 
        OR        *+XAR5[0],AL          ; [CPU_ALU] |194| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |194| 
||$C$L2||:    
	.dwpsn	file "../src_driver/gpio.c",line 204,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |204| 
        TBIT      AL,#0                 ; [CPU_ALU] |204| 
        B         ||$C$L3||,TC          ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
	.dwpsn	file "../src_driver/gpio.c",line 210,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |210| 
        MOV       AL,PL                 ; [CPU_ALU] |210| 
        MOV       AH,PH                 ; [CPU_ALU] |210| 
        ADDB      XAR5,#12              ; [CPU_ALU] |210| 
        OR        *+XAR5[0],AL          ; [CPU_ALU] |210| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |210| 
	.dwpsn	file "../src_driver/gpio.c",line 216,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |216| 
        ; branch occurs ; [] |216| 
||$C$L3||:    
	.dwpsn	file "../src_driver/gpio.c",line 206,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |206| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        NOT       ACC                   ; [CPU_ALU] |206| 
        ADDB      XAR5,#12              ; [CPU_ALU] |206| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |206| 
        AND       *+XAR5[1],AH          ; [CPU_ALU] |206| 
||$C$L4||:    
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 216,column 5,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |216| 
        B         ||$C$L5||,TC          ; [CPU_ALU] |216| 
        ; branchcc occurs ; [] |216| 
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 222,column 9,is_stmt,isa 0
        ADDB      XAR4,#16              ; [CPU_ALU] |222| 
        NOT       ACC                   ; [CPU_ALU] |222| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |222| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |222| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |222| 
        ; branch occurs ; [] |222| 
||$C$L5||:    
	.dwpsn	file "../src_driver/gpio.c",line 218,column 9,is_stmt,isa 0
        ADDB      XAR4,#16              ; [CPU_ALU] |218| 
        MOV       AL,PL                 ; [CPU_FPU] |218| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |218| 
        MOV       AL,PH                 ; [CPU_ALU] |218| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |218| 
||$C$L6||:    
	.dwpsn	file "../src_driver/gpio.c",line 225,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |225| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xe2)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:GPIO_setInterruptPin"
	.clink
	.global	||GPIO_setInterruptPin||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("GPIO_setInterruptPin")
	.dwattr $C$DW$27, DW_AT_low_pc(||GPIO_setInterruptPin||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("GPIO_setInterruptPin")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x75)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 118,column 1,is_stmt,address ||GPIO_setInterruptPin||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setInterruptPin||
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("pin")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("extIntNum")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setInterruptPin          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setInterruptPin||:
;* AR6   assigned to pin
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("pin")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg16]

;* AL    assigned to extIntNum
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("extIntNum")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

;* AL    assigned to input
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("input")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |118| 
        MOV       AL,AR4                ; [CPU_ALU] |118| 
	.dwpsn	file "../src_driver/gpio.c",line 129,column 5,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |129| 
        B         ||$C$L7||,GT          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#2                 ; [CPU_ALU] |129| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#0                 ; [CPU_ALU] |129| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#1                 ; [CPU_ALU] |129| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwcfi	remember_state
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L7||:    
        CMPB      AL,#3                 ; [CPU_ALU] |129| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#4                 ; [CPU_ALU] |129| 
        B         ||$C$L13||,NEQ        ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "../src_driver/gpio.c",line 148,column 13,is_stmt,isa 0
        MOVB      AL,#13                ; [CPU_ALU] |148| 
	.dwpsn	file "../src_driver/gpio.c",line 161,column 5,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |161| 
        ; branch occurs ; [] |161| 
||$C$L8||:    
	.dwpsn	file "../src_driver/gpio.c",line 144,column 13,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |144| 
	.dwpsn	file "../src_driver/gpio.c",line 161,column 5,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |161| 
        ; branch occurs ; [] |161| 
||$C$L9||:    
	.dwpsn	file "../src_driver/gpio.c",line 140,column 13,is_stmt,isa 0
        MOVB      AL,#5                 ; [CPU_ALU] |140| 
	.dwpsn	file "../src_driver/gpio.c",line 161,column 5,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |161| 
        ; branch occurs ; [] |161| 
||$C$L10||:    
	.dwpsn	file "../src_driver/gpio.c",line 136,column 13,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |136| 
	.dwpsn	file "../src_driver/gpio.c",line 137,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |137| 
        ; branch occurs ; [] |137| 
||$C$L11||:    
	.dwpsn	file "../src_driver/gpio.c",line 132,column 13,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |132| 
||$C$L12||:    
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 969,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |969| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOV       AH,#30976             ; [CPU_ALU] |971| 
        ADD       AH,AL                 ; [CPU_ALU] |971| 
        MOVZ      AR4,AH                ; [CPU_ALU] |971| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |971| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 973,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |973| 
||$C$L13||:    
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:GPIO_setDirectionMode"
	.clink
	.global	||GPIO_setDirectionMode||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$35, DW_AT_low_pc(||GPIO_setDirectionMode||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x33)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 52,column 1,is_stmt,address ||GPIO_setDirectionMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setDirectionMode||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("pin")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("pinIO")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setDirectionMode         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setDirectionMode||:
;* AL    assigned to $O$K13
;* AR6   assigned to $O$K8
;* AR7   assigned to pin
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("pin")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg18]

;* AR4   assigned to pinIO
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("pinIO")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to gpioBaseAddr
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg16]

;* PL    assigned to pinMask
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("pinMask")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |52| 
	.dwpsn	file "../src_driver/gpio.c",line 61,column 5,is_stmt,isa 0
        AND       AL,#65504             ; [CPU_ALU] |61| 
        LSL       ACC,1                 ; [CPU_ALU] |61| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |61| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |61| 
	.dwpsn	file "../src_driver/gpio.c",line 63,column 5,is_stmt,isa 0
        MOV       AL,AR7                ; [CPU_ALU] |63| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |63| 
        MOV       T,AL                  ; [CPU_ALU] |63| 
        MOVB      ACC,#1                ; [CPU_ALU] |63| 
        LSLL      ACC,T                 ; [CPU_ALU] |63| 
        MOVL      P,ACC                 ; [CPU_ALU] |63| 
	.dwpsn	file "../src_driver/gpio.c",line 65,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |65| 
        MOV       AL,AR4                ; [CPU_ALU] |65| 
	.dwpsn	file "../src_driver/gpio.c",line 70,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |70| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |70| 
        ; branchcc occurs ; [] |70| 
	.dwpsn	file "../src_driver/gpio.c",line 82,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |82| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        NOT       ACC                   ; [CPU_ALU] |82| 
        ADDB      XAR4,#10              ; [CPU_ALU] |82| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |82| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |82| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] |82| 
        ; branch occurs ; [] |82| 
||$C$L14||:    
	.dwpsn	file "../src_driver/gpio.c",line 75,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |75| 
        MOV       AL,PL                 ; [CPU_ALU] |75| 
        ADDB      XAR4,#10              ; [CPU_ALU] |75| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |75| 
        MOV       AL,PH                 ; [CPU_ALU] |75| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |75| 
||$C$L15||:    
	.dwpsn	file "../src_driver/gpio.c",line 85,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |85| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:GPIO_setControllerCore"
	.clink
	.global	||GPIO_setControllerCore||

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$43, DW_AT_low_pc(||GPIO_setControllerCore||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_linkage_name("GPIO_setControllerCore")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x183)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 388,column 1,is_stmt,address ||GPIO_setControllerCore||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setControllerCore||
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("pin")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("core")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setControllerCore        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setControllerCore||:
;* AR5   assigned to $O$C1
;* T     assigned to $O$C2
;* AR5   assigned to pin
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("pin")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to core
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("core")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |388| 
	.dwpsn	file "../src_driver/gpio.c",line 406,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |406| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 407,column 5,is_stmt,isa 0
        MOV       ACC,AR5 << #2         ; [CPU_ALU] |407| 
        MOVL      P,XAR5                ; [CPU_ALU] |407| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |407| 
        MOVP      T,AL                  ; [CPU_ALU] 
        SFR       ACC,3                 ; [CPU_ALU] |407| 
        MOVL      P,ACC                 ; [CPU_ALU] |407| 
        MOV       AL,PL                 ; [CPU_ALU] |407| 
        MOV       PH,#0                 ; [CPU_ALU] |407| 
        ANDB      AL,#0x03              ; [CPU_ALU] |407| 
        MOV       PL,AL                 ; [CPU_ALU] |407| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |407| 
        AND       AL,#65504             ; [CPU_ALU] |407| 
        ADDL      ACC,P                 ; [CPU_ALU] |407| 
        ADDB      ACC,#20               ; [CPU_ALU] |407| 
        LSL       ACC,1                 ; [CPU_ALU] |407| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |407| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |407| 
        MOVB      ACC,#15               ; [CPU_ALU] |407| 
        LSLL      ACC,T                 ; [CPU_ALU] |407| 
        NOT       ACC                   ; [CPU_ALU] |407| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |407| 
        AND       *+XAR5[1],AH          ; [CPU_ALU] |407| 
	.dwpsn	file "../src_driver/gpio.c",line 408,column 5,is_stmt,isa 0
        MOVU      ACC,AR4               ; [CPU_ALU] |408| 
        LSLL      ACC,T                 ; [CPU_ALU] |408| 
        OR        *+XAR5[0],AL          ; [CPU_ALU] |408| 
        OR        *+XAR5[1],AH          ; [CPU_ALU] |408| 
	.dwpsn	file "../src_driver/gpio.c",line 409,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |409| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x19a)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:GPIO_setAnalogMode"
	.clink
	.global	||GPIO_setAnalogMode||

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("GPIO_setAnalogMode")
	.dwattr $C$DW$49, DW_AT_low_pc(||GPIO_setAnalogMode||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("GPIO_setAnalogMode")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$49, DW_AT_decl_column(0x01)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 419,column 1,is_stmt,address ||GPIO_setAnalogMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setAnalogMode||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("pin")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("mode")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setAnalogMode            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_setAnalogMode||:
;* PL    assigned to $O$K5
;* AL    assigned to $O$K13
;* AR6   assigned to pin
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("pin")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to mode
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("mode")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to gpioBaseAddr
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg16]

;* PL    assigned to pinMask
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("pinMask")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |419| 
	.dwpsn	file "../src_driver/gpio.c",line 428,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |428| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |428| 
        MOV       T,AL                  ; [CPU_ALU] |428| 
        MOVB      ACC,#1                ; [CPU_ALU] |428| 
        LSLL      ACC,T                 ; [CPU_ALU] |428| 
        MOVL      P,ACC                 ; [CPU_ALU] |428| 
	.dwpsn	file "../src_driver/gpio.c",line 429,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |429| 
        AND       AL,#65504             ; [CPU_ALU] |429| 
        LSL       ACC,1                 ; [CPU_ALU] |429| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |429| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |429| 
	.dwpsn	file "../src_driver/gpio.c",line 432,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |432| 
        MOV       AL,AR4                ; [CPU_ALU] |432| 
	.dwpsn	file "../src_driver/gpio.c",line 437,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |437| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |437| 
        ; branchcc occurs ; [] |437| 
	.dwpsn	file "../src_driver/gpio.c",line 449,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |449| 
        MOVL      ACC,P                 ; [CPU_ALU] 
        NOT       ACC                   ; [CPU_ALU] |449| 
        ADDB      XAR4,#20              ; [CPU_ALU] |449| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |449| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |449| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] |449| 
        ; branch occurs ; [] |449| 
||$C$L16||:    
	.dwpsn	file "../src_driver/gpio.c",line 442,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |442| 
        MOV       AL,PL                 ; [CPU_ALU] |442| 
        ADDB      XAR4,#20              ; [CPU_ALU] |442| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |442| 
        MOV       AL,PH                 ; [CPU_ALU] |442| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |442| 
||$C$L17||:    
	.dwpsn	file "../src_driver/gpio.c",line 452,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |452| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x1c5)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:GPIO_getQualificationMode"
	.clink
	.global	||GPIO_getQualificationMode||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("GPIO_getQualificationMode")
	.dwattr $C$DW$57, DW_AT_low_pc(||GPIO_getQualificationMode||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("GPIO_getQualificationMode")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$57, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$57, DW_AT_decl_column(0x01)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 318,column 1,is_stmt,address ||GPIO_getQualificationMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getQualificationMode||
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("pin")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getQualificationMode     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_getQualificationMode||:
;* AR6   assigned to pin
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("pin")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |318| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 338,column 5,is_stmt,isa 0
        SFR       ACC,4                 ; [CPU_ALU] |338| 
        MOVL      P,ACC                 ; [CPU_ALU] |338| 
        MOVB      AH,#0                 ; [CPU_ALU] |338| 
        MOV       AL,PL                 ; [CPU_ALU] |338| 
        MOV       PH,AH                 ; [CPU_ALU] |338| 
        ANDB      AL,#0x01              ; [CPU_ALU] |338| 
        MOV       PL,AL                 ; [CPU_ALU] |338| 
        MOVL      ACC,P                 ; [CPU_ALU] |338| 
        ADDB      ACC,#1                ; [CPU_ALU] |338| 
        LSL       ACC,1                 ; [CPU_ALU] |338| 
        MOVL      P,ACC                 ; [CPU_ALU] |338| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |338| 
        LSL       ACC,1                 ; [CPU_ALU] |338| 
        SFR       ACC,6                 ; [CPU_ALU] |338| 
        LSL       ACC,6                 ; [CPU_ALU] |338| 
        ADDL      ACC,P                 ; [CPU_ALU] |338| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |338| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |338| 
        MOV       AL,AR6                ; [CPU_ALU] |338| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |338| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |338| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |338| 
        MOVP      T,AL                  ; [CPU_ALU] 
        LSRL      ACC,T                 ; [CPU_ALU] |338| 
        MOVL      P,ACC                 ; [CPU_ALU] |338| 
        MOV       AL,PL                 ; [CPU_ALU] |338| 
        ANDB      AL,#0x03              ; [CPU_ALU] |338| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_FPU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x155)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:GPIO_getPadConfig"
	.clink
	.global	||GPIO_getPadConfig||

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("GPIO_getPadConfig")
	.dwattr $C$DW$61, DW_AT_low_pc(||GPIO_getPadConfig||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("GPIO_getPadConfig")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$61, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0xea)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 235,column 1,is_stmt,address ||GPIO_getPadConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getPadConfig||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("pin")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getPadConfig             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_getPadConfig||:
;* AR6   assigned to pin
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("pin")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to gpioBaseAddr
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to pinMask
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("pinMask")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to pinTypeRes
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("pinTypeRes")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |235| 
	.dwpsn	file "../src_driver/gpio.c",line 245,column 5,is_stmt,isa 0
        AND       AL,#65504             ; [CPU_ALU] |245| 
        LSL       ACC,1                 ; [CPU_ALU] |245| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |245| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |245| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |245| 
	.dwpsn	file "../src_driver/gpio.c",line 247,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |247| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |247| 
        MOV       T,AL                  ; [CPU_ALU] |247| 
        MOVB      ACC,#1                ; [CPU_ALU] |247| 
	.dwpsn	file "../src_driver/gpio.c",line 254,column 5,is_stmt,isa 0
        ADDB      XAR5,#18              ; [CPU_ALU] |254| 
	.dwpsn	file "../src_driver/gpio.c",line 247,column 5,is_stmt,isa 0
        LSLL      ACC,T                 ; [CPU_ALU] |247| 
        MOVL      XAR7,ACC              ; [CPU_FPU] |247| 
	.dwpsn	file "../src_driver/gpio.c",line 254,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[0]          ; [CPU_ALU] |254| 
        AND       AH,*+XAR5[1]          ; [CPU_ALU] |254| 
        TEST      ACC                   ; [CPU_ALU] |254| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |254| 
        ; branchcc occurs ; [] |254| 
	.dwpsn	file "../src_driver/gpio.c",line 249,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |249| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L18||:    
	.dwpsn	file "../src_driver/gpio.c",line 256,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |256| 
||$C$L19||:    
	.dwpsn	file "../src_driver/gpio.c",line 262,column 5,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |262| 
	.dwpsn	file "../src_driver/gpio.c",line 256,column 9,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |256| 
	.dwpsn	file "../src_driver/gpio.c",line 262,column 5,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |262| 
        ADDB      XAR5,#12              ; [CPU_ALU] |262| 
        AND       AL,*+XAR5[0]          ; [CPU_ALU] |262| 
        AND       AH,*+XAR5[1]          ; [CPU_ALU] |262| 
        TEST      ACC                   ; [CPU_ALU] |262| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |262| 
        ; branchcc occurs ; [] |262| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 264,column 9,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |264| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |264| 
||$C$L20||:    
	.dwpsn	file "../src_driver/gpio.c",line 270,column 5,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |270| 
        ADDB      XAR4,#16              ; [CPU_ALU] |270| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |270| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |270| 
        TEST      ACC                   ; [CPU_ALU] |270| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 272,column 9,is_stmt,isa 0
        ORB       AL,#0x02              ; [CPU_ALU] |272| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |272| 
||$C$L21||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:GPIO_getDirectionMode"
	.clink
	.global	||GPIO_getDirectionMode||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("GPIO_getDirectionMode")
	.dwattr $C$DW$68, DW_AT_low_pc(||GPIO_getDirectionMode||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("GPIO_getDirectionMode")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$68, DW_AT_decl_file("../src_driver/gpio.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$68, DW_AT_decl_column(0x01)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src_driver/gpio.c",line 95,column 1,is_stmt,address ||GPIO_getDirectionMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getDirectionMode||
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("pin")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getDirectionMode         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_getDirectionMode||:
;* AR6   assigned to pin
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("pin")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |95| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../src_driver/gpio.c",line 106,column 5,is_stmt,isa 0
        SFR       ACC,5                 ; [CPU_ALU] |106| 
        MOVB      XAR0,#10              ; [CPU_FPU] |106| 
        LSL       ACC,5                 ; [CPU_ALU] |106| 
        LSL       ACC,1                 ; [CPU_ALU] |106| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |106| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |106| 
        MOV       AL,AR6                ; [CPU_ALU] |106| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |106| 
        MOV       T,AL                  ; [CPU_ALU] |106| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |106| 
        LSRL      ACC,T                 ; [CPU_ALU] |106| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |106| 
        MOV       AL,AR7                ; [CPU_ALU] |106| 
        ANDB      AL,#0x01              ; [CPU_ALU] |106| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_FPU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("../src_driver/gpio.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68


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
$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("XBAR_INPUT1")
	.dwattr $C$DW$72, DW_AT_const_value(0x00)
	.dwattr $C$DW$72, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("XBAR_INPUT2")
	.dwattr $C$DW$73, DW_AT_const_value(0x01)
	.dwattr $C$DW$73, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("XBAR_INPUT3")
	.dwattr $C$DW$74, DW_AT_const_value(0x02)
	.dwattr $C$DW$74, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("XBAR_INPUT4")
	.dwattr $C$DW$75, DW_AT_const_value(0x03)
	.dwattr $C$DW$75, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xce)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("XBAR_INPUT5")
	.dwattr $C$DW$76, DW_AT_const_value(0x04)
	.dwattr $C$DW$76, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("XBAR_INPUT6")
	.dwattr $C$DW$77, DW_AT_const_value(0x05)
	.dwattr $C$DW$77, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("XBAR_INPUT7")
	.dwattr $C$DW$78, DW_AT_const_value(0x06)
	.dwattr $C$DW$78, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("XBAR_INPUT8")
	.dwattr $C$DW$79, DW_AT_const_value(0x07)
	.dwattr $C$DW$79, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("XBAR_INPUT9")
	.dwattr $C$DW$80, DW_AT_const_value(0x08)
	.dwattr $C$DW$80, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("XBAR_INPUT10")
	.dwattr $C$DW$81, DW_AT_const_value(0x09)
	.dwattr $C$DW$81, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("XBAR_INPUT11")
	.dwattr $C$DW$82, DW_AT_const_value(0x0a)
	.dwattr $C$DW$82, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("XBAR_INPUT12")
	.dwattr $C$DW$83, DW_AT_const_value(0x0b)
	.dwattr $C$DW$83, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("XBAR_INPUT13")
	.dwattr $C$DW$84, DW_AT_const_value(0x0c)
	.dwattr $C$DW$84, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("XBAR_INPUT14")
	.dwattr $C$DW$85, DW_AT_const_value(0x0d)
	.dwattr $C$DW$85, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("XBAR_InputNum")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$86, DW_AT_const_value(0x00)
	.dwattr $C$DW$86, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$87, DW_AT_const_value(0x01)
	.dwattr $C$DW$87, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$88	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$22)

$C$DW$T$23	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$88)

	.dwendtag $C$DW$TU$23


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("GPIO_INT_XINT1")
	.dwattr $C$DW$89, DW_AT_const_value(0x00)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("GPIO_INT_XINT2")
	.dwattr $C$DW$90, DW_AT_const_value(0x01)
	.dwattr $C$DW$90, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("GPIO_INT_XINT3")
	.dwattr $C$DW$91, DW_AT_const_value(0x02)
	.dwattr $C$DW$91, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("GPIO_INT_XINT4")
	.dwattr $C$DW$92, DW_AT_const_value(0x03)
	.dwattr $C$DW$92, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("GPIO_INT_XINT5")
	.dwattr $C$DW$93, DW_AT_const_value(0x04)
	.dwattr $C$DW$93, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("GPIO_ExternalIntNum")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$94	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$29)

$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$94)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$95, DW_AT_const_value(0x00)
	.dwattr $C$DW$95, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x97)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$96, DW_AT_const_value(0x01)
	.dwattr $C$DW$96, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x98)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$97, DW_AT_const_value(0x02)
	.dwattr $C$DW$97, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x99)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$98, DW_AT_const_value(0x03)
	.dwattr $C$DW$98, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$99	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$32)

$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$99)

	.dwendtag $C$DW$TU$33


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$100, DW_AT_const_value(0x00)
	.dwattr $C$DW$100, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$101, DW_AT_const_value(0x01)
	.dwattr $C$DW$101, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$102, DW_AT_const_value(0x02)
	.dwattr $C$DW$102, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$103, DW_AT_const_value(0x03)
	.dwattr $C$DW$103, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$36, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$104	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$37)

$C$DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$104)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("GPIO_ANALOG_DISABLED")
	.dwattr $C$DW$105, DW_AT_const_value(0x00)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("GPIO_ANALOG_ENABLED")
	.dwattr $C$DW$106, DW_AT_const_value(0x01)
	.dwattr $C$DW$106, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("GPIO_AnalogMode")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$107	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$40)

$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$107)

	.dwendtag $C$DW$TU$41


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


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$25


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$108	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$25)

$C$DW$T$62	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$108)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$109	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$25)

$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$109)

	.dwendtag $C$DW$TU$64


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

