;***************************************************************
;* TMS320x280xx Control Law Accelerator G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:17 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320x280xx Control Law Accelerator G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("fclVars")
	.dwattr $C$DW$1, DW_AT_linkage_name("fclVars")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$1, DW_AT_decl_column(0x13)

;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\optcla.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{7B3CDFE2-DF6C-40BD-B9AB-5DB075E59EC3} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{1066D5D5-9EF8-4DCF-9F85-56F1B73EE5B1} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\aciacla.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{2B962B12-C8B4-4310-950F-2CC81064B031} 
	.sect	"Cla1Prog:Cla1Task8"
	.align	 2
	.clink
	.global	Cla1Task8

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("Cla1Task8")
	.dwattr $C$DW$2, DW_AT_low_pc(Cla1Task8)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_linkage_name("Cla1Task8")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$2, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$2, DW_AT_decl_column(0x12)
	.dwattr $C$DW$2, DW_AT_TI_interrupt
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 461,column 1,is_stmt,address Cla1Task8,isa 0

	.dwfde $C$DW$CIE, Cla1Task8

;***************************************************************
;* FNAME: Cla1Task8                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task8:
;* MAR0  assigned to $O$U10
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 466,column 5,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |466| 
        MMOV32    MR1,@fclVars+82       ; [CPU_FPU] |466| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |466| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L3,EQ              ; [CPU_FPU] |466| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |466| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 471,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |471| 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR1,#0                ; [CPU_FPU] |471| 
        MMOVXI    MR1,#1024             ; [CPU_FPU] |471| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |471| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |471| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |471| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |471| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L1,EQ              ; [CPU_FPU] |471| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |471| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 473,column 13,is_stmt,isa 0
        MMOVXI    MR0,#240              ; [CPU_FPU] |473| 
        MMOV16    @fclVars+152,MR0      ; [CPU_FPU] |473| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 474,column 13,is_stmt,isa 0
        MMOV32    MR0,*MAR0+[#8]        ; [CPU_FPU] |474| 
        MMOV32    @fclVars+142,MR0      ; [CPU_FPU] |474| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 479,column 13,is_stmt,isa 0
        MMOVXI    MR0,#1024             ; [CPU_FPU] |479| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |479| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L1:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 486,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |486| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |486| 
        MMOVXI    MR1,#2048             ; [CPU_FPU] |486| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |486| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |486| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |486| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L3,EQ              ; [CPU_FPU] |486| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |486| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 488,column 13,is_stmt,isa 0
        MMOVXI    MR0,#2048             ; [CPU_FPU] |488| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |488| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 493,column 13,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |493| 
        MMOVXI    MR1,#12               ; [CPU_FPU] |493| 
        MMOVZ16   MR0,*MAR0+[#28]       ; [CPU_FPU] |493| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |493| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |493| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |493| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L2,NEQ             ; [CPU_FPU] |493| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |493| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 500,column 18,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |500| 
        MMOVZ16   MR1,*MAR0+[#32]       ; [CPU_FPU] |500| 
        MMOVXI    MR0,#65535            ; [CPU_FPU] |500| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |500| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L3,EQ              ; [CPU_FPU] |500| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |500| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 505,column 17,is_stmt,isa 0
        MMOVZ16   MR0,*MAR0+[#32]       ; [CPU_FPU] |505| 
        MBCNDD    $C$L3,UNC             ; [CPU_FPU] |505| 
        MMOV16    @fclVars+141,MR0      ; [CPU_FPU] |505| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] |505| 
$C$L2:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 498,column 17,is_stmt,isa 0
        MMOVXI    MR0,#12               ; [CPU_FPU] |498| 
        MMOV16    *MAR0+[#28],MR0       ; [CPU_FPU] |498| 
$C$L3:    
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x205)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	"Cla1Prog:Cla1Task7"
	.align	 2
	.clink
	.global	Cla1Task7

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("Cla1Task7")
	.dwattr $C$DW$4, DW_AT_low_pc(Cla1Task7)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_linkage_name("Cla1Task7")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$4, DW_AT_decl_column(0x12)
	.dwattr $C$DW$4, DW_AT_TI_interrupt
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 436,column 1,is_stmt,address Cla1Task7,isa 0

	.dwfde $C$DW$CIE, Cla1Task7

;***************************************************************
;* FNAME: Cla1Task7                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task7:
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 441,column 5,is_stmt,isa 0
        MMOV32    MR0,@fclVars+94       ; [CPU_FPU] |441| 
        MMOV32    MR1,@fclVars+84       ; [CPU_FPU] |441| 
        MMOV32    MR2,@fclVars+86       ; [CPU_FPU] |441| 

        MMOV32    MR1,@fclVars+92       ; [CPU_FPU] |441| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |441| 

        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |441| 

        MMOV32    MR0,@fclVars+90       ; [CPU_FPU] |441| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |441| 

        MMOV32    MR1,@fclVars+96       ; [CPU_FPU] |441| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |441| 

        MMOV32    MR0,@fclVars+120      ; [CPU_FPU] |441| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |441| 

        MMOV32    MR0,@fclVars+132      ; [CPU_FPU] |441| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |441| 

        MMINF32   MR0,MR1               ; [CPU_FPU] |441| 
        MMOV32    MR1,@fclVars+134      ; [CPU_FPU] |441| 
        MMAXF32   MR1,MR0               ; [CPU_FPU] |441| 
        MMOV32    @fclVars+120,MR1      ; [CPU_FPU] |441| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x1c7)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	"Cla1Prog:Cla1Task6"
	.align	 2
	.clink
	.global	Cla1Task6

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("Cla1Task6")
	.dwattr $C$DW$6, DW_AT_low_pc(Cla1Task6)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("Cla1Task6")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$6, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x12)
	.dwattr $C$DW$6, DW_AT_TI_interrupt
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 415,column 1,is_stmt,address Cla1Task6,isa 0

	.dwfde $C$DW$CIE, Cla1Task6

;***************************************************************
;* FNAME: Cla1Task6                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task6:
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 420,column 5,is_stmt,isa 0
        MMOV32    MR0,@fclVars+118      ; [CPU_FPU] |420| 
        MMOV32    MR1,@fclVars+128      ; [CPU_FPU] |420| 

        MMOV32    MR1,@fclVars+122      ; [CPU_FPU] |420| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |420| 

        MMOV32    MR0,@fclVars+120      ; [CPU_FPU] |420| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |420| 

        MMOV32    MR0,@fclVars+132      ; [CPU_FPU] |420| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |420| 

        MMINF32   MR0,MR1               ; [CPU_FPU] |420| 
        MMOV32    MR1,@fclVars+134      ; [CPU_FPU] |420| 
        MMAXF32   MR1,MR0               ; [CPU_FPU] |420| 
        MMOV32    @fclVars+120,MR1      ; [CPU_FPU] |420| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x1ad)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	"Cla1Prog:Cla1Task5"
	.align	 2
	.clink
	.global	Cla1Task5

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Cla1Task5")
	.dwattr $C$DW$8, DW_AT_low_pc(Cla1Task5)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_linkage_name("Cla1Task5")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$8, DW_AT_decl_line(0x128)
	.dwattr $C$DW$8, DW_AT_decl_column(0x12)
	.dwattr $C$DW$8, DW_AT_TI_interrupt
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 297,column 1,is_stmt,address Cla1Task5,isa 0

	.dwfde $C$DW$CIE, Cla1Task5

;***************************************************************
;* FNAME: Cla1Task5                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task5:
;* MR0   assigned to $O$C3
;* MR0   assigned to $O$C4
;* MR0   assigned to $O$C5
;* MR0   assigned to $O$C6
;* MR0   assigned to $O$C7
;* MR0   assigned to $O$C8
;* MAR0  assigned to $O$U15
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 304,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |304| 
        MMOV32    MR0,@fclVars+82       ; [CPU_FPU] |304| 
        MMOVXI    MR1,#2                ; [CPU_FPU] |304| 
        MCMP32    MR1,MR0               ; [CPU_FPU] |304| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L6,EQ              ; [CPU_FPU] |304| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |304| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 322,column 10,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |322| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |322| 
        MCMP32    MR1,MR0               ; [CPU_FPU] |322| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L5,NEQ             ; [CPU_FPU] |322| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |322| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 333,column 9,is_stmt,isa 0
        MEALLOW   ; [CPU_FPU] |333| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 338,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |338| 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR1,#0                ; [CPU_FPU] |338| 
        MMOVXI    MR1,#1024             ; [CPU_FPU] |338| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |338| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |338| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |338| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |338| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L4,EQ              ; [CPU_FPU] |338| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |338| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 345,column 13,is_stmt,isa 0
        MMOV32    MR0,*MAR0+[#8]        ; [CPU_FPU] |345| 
        MMOV32    *MAR0+[#2],MR0        ; [CPU_FPU] |345| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 351,column 13,is_stmt,isa 0
        MMOVXI    MR1,#512              ; [CPU_FPU] |351| 
        MMOVZ16   MR0,*MAR0+[#21]       ; [CPU_FPU] |351| 
        MOR32     MR0,MR1,MR0           ; [CPU_FPU] |351| 
        MMOV16    *MAR0+[#21],MR0       ; [CPU_FPU] |351| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 356,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |356| 
        MMOVXI    MR0,#2                ; [CPU_FPU] |356| 
        MMOV32    @fclVars+82,MR0       ; [CPU_FPU] |356| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L4:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 366,column 9,is_stmt,isa 0
        MMOV32    MR0,@fclVars+146      ; [CPU_FPU] |366| 
        MUI32TOF32 MR1,*MAR0+[#12]      ; [CPU_FPU] |366| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |366| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 372,column 9,is_stmt,isa 0
        MUI16TOF32 MR1,@fclVars+149     ; [CPU_FPU] |372| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 366,column 9,is_stmt,isa 0

        MMPYF32   MR0,MR0,MR1           ; [CPU_FPU] |372| 
||      MMOV32    @fclVars+138,MR0      ; [CPU_FPU] |366| 

	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 372,column 9,is_stmt,isa 0
        MF32TOI32 MR1,MR0               ; [CPU_FPU] |372| 
        MI32TOF32 MR1,MR1               ; [CPU_FPU] |372| 
        MSUBF32   MR0,MR0,MR1           ; [CPU_FPU] |372| 
        MBCNDD    $C$L7,UNC             ; [CPU_FPU] 
        MMOV32    @fclVars+136,MR0      ; [CPU_FPU] |372| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 375,column 9,is_stmt,isa 0
        MMOV32    MR0,@fclVars+110      ; [CPU_FPU] |375| 
        ; branch occurs ; [] 
$C$L5:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 385,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |385| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |385| 
        MMOV32    *MAR0,MR0             ; [CPU_FPU] |385| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 391,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |391| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVXI    MR0,#1024             ; [CPU_FPU] |391| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |391| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 397,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |397| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVXI    MR1,#64767            ; [CPU_FPU] |397| 
        MMOVZ16   MR0,*MAR0+[#21]       ; [CPU_FPU] |397| 
        MAND32    MR0,MR1,MR0           ; [CPU_FPU] |397| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 399,column 9,is_stmt,isa 0
        MBCNDD    $C$L7,UNC             ; [CPU_FPU] |399| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 397,column 9,is_stmt,isa 0
        MMOV16    *MAR0+[#21],MR0       ; [CPU_FPU] |397| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 399,column 9,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |399| 
        ; branch occurs ; [] |399| 
$C$L6:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 311,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+154     ; [CPU_FPU] |311| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOV32    MR0,@fclVars+146      ; [CPU_FPU] |311| 
        MUI32TOF32 MR1,*MAR0+[#12]      ; [CPU_FPU] |311| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |311| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 317,column 9,is_stmt,isa 0
        MUI16TOF32 MR1,@fclVars+149     ; [CPU_FPU] |317| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 311,column 9,is_stmt,isa 0

        MMPYF32   MR0,MR0,MR1           ; [CPU_FPU] |317| 
||      MMOV32    @fclVars+138,MR0      ; [CPU_FPU] |311| 

	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 317,column 9,is_stmt,isa 0
        MF32TOI32 MR1,MR0               ; [CPU_FPU] |317| 
        MI32TOF32 MR1,MR1               ; [CPU_FPU] |317| 
        MSUBF32   MR0,MR0,MR1           ; [CPU_FPU] |317| 
        MMOV32    @fclVars+136,MR0      ; [CPU_FPU] |317| 
$C$L7:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 320,column 9,is_stmt,isa 0
        MMOV32    @fclVars+100,MR0      ; [CPU_FPU] |320| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	"Cla1Prog:Cla1Task4"
	.align	 2
	.clink
	.global	Cla1Task4

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("Cla1Task4")
	.dwattr $C$DW$10, DW_AT_low_pc(Cla1Task4)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("Cla1Task4")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$10, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$10, DW_AT_decl_column(0x12)
	.dwattr $C$DW$10, DW_AT_TI_interrupt
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 231,column 1,is_stmt,address Cla1Task4,isa 0

	.dwfde $C$DW$CIE, Cla1Task4

;***************************************************************
;* FNAME: Cla1Task4                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task4:
;* MAR0  assigned to $O$U7
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 236,column 5,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |236| 
        MMOV32    MR1,@fclVars          ; [CPU_FPU] |236| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |236| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L10,EQ             ; [CPU_FPU] |236| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |236| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 241,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+72      ; [CPU_FPU] |241| 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR1,#0                ; [CPU_FPU] |241| 
        MMOVXI    MR1,#1024             ; [CPU_FPU] |241| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |241| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |241| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |241| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |241| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L8,EQ              ; [CPU_FPU] |241| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |241| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 243,column 13,is_stmt,isa 0
        MMOVXI    MR0,#240              ; [CPU_FPU] |243| 
        MMOV16    @fclVars+70,MR0       ; [CPU_FPU] |243| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 244,column 13,is_stmt,isa 0
        MMOV32    MR0,*MAR0+[#8]        ; [CPU_FPU] |244| 
        MMOV32    @fclVars+60,MR0       ; [CPU_FPU] |244| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 249,column 13,is_stmt,isa 0
        MMOVXI    MR0,#1024             ; [CPU_FPU] |249| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |249| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L8:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 256,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |256| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |256| 
        MMOVXI    MR1,#2048             ; [CPU_FPU] |256| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |256| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |256| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |256| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L10,EQ             ; [CPU_FPU] |256| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 258,column 13,is_stmt,isa 0
        MMOVXI    MR0,#2048             ; [CPU_FPU] |258| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |258| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 263,column 13,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |263| 
        MMOVXI    MR1,#12               ; [CPU_FPU] |263| 
        MMOVZ16   MR0,*MAR0+[#28]       ; [CPU_FPU] |263| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |263| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |263| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |263| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L9,NEQ             ; [CPU_FPU] |263| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |263| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 270,column 18,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |270| 
        MMOVZ16   MR1,*MAR0+[#32]       ; [CPU_FPU] |270| 
        MMOVXI    MR0,#65535            ; [CPU_FPU] |270| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |270| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L10,EQ             ; [CPU_FPU] |270| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 275,column 17,is_stmt,isa 0
        MMOVZ16   MR0,*MAR0+[#32]       ; [CPU_FPU] |275| 
        MBCNDD    $C$L10,UNC            ; [CPU_FPU] |275| 
        MMOV16    @fclVars+59,MR0       ; [CPU_FPU] |275| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] |275| 
$C$L9:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 268,column 17,is_stmt,isa 0
        MMOVXI    MR0,#12               ; [CPU_FPU] |268| 
        MMOV16    *MAR0+[#28],MR0       ; [CPU_FPU] |268| 
$C$L10:    
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	"Cla1Prog:Cla1Task3"
	.align	 2
	.clink
	.global	Cla1Task3

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("Cla1Task3")
	.dwattr $C$DW$12, DW_AT_low_pc(Cla1Task3)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("Cla1Task3")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$12, DW_AT_decl_line(0xca)
	.dwattr $C$DW$12, DW_AT_decl_column(0x12)
	.dwattr $C$DW$12, DW_AT_TI_interrupt
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 203,column 1,is_stmt,address Cla1Task3,isa 0

	.dwfde $C$DW$CIE, Cla1Task3

;***************************************************************
;* FNAME: Cla1Task3                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task3:
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 208,column 5,is_stmt,isa 0
        MMOV32    MR0,@fclVars+12       ; [CPU_FPU] |208| 
        MMOV32    MR1,@fclVars+2        ; [CPU_FPU] |208| 
        MMOV32    MR2,@fclVars+4        ; [CPU_FPU] |208| 

        MMOV32    MR1,@fclVars+10       ; [CPU_FPU] |208| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |208| 

        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |208| 

        MMOV32    MR0,@fclVars+8        ; [CPU_FPU] |208| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |208| 

        MMOV32    MR1,@fclVars+14       ; [CPU_FPU] |208| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |208| 

        MMOV32    MR0,@fclVars+38       ; [CPU_FPU] |208| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |208| 

        MADDF32   MR0,MR0,MR1           ; [CPU_FPU] |208| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |208| 
        MMOV32    MR1,MR0               ; [CPU_FPU] |208| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 216,column 5,is_stmt,isa 0
        MMOV32    MR0,@fclVars+50       ; [CPU_FPU] |216| 
        MMINF32   MR0,MR1               ; [CPU_FPU] |216| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |216| 
        MMOV32    MR1,MR0               ; [CPU_FPU] |216| 
        MMOV32    MR0,@fclVars+52       ; [CPU_FPU] |216| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |216| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |216| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0xe1)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	"Cla1Prog:Cla1Task2"
	.align	 2
	.clink
	.global	Cla1Task2

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("Cla1Task2")
	.dwattr $C$DW$14, DW_AT_low_pc(Cla1Task2)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("Cla1Task2")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$14, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$14, DW_AT_decl_column(0x12)
	.dwattr $C$DW$14, DW_AT_TI_interrupt
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 183,column 1,is_stmt,address Cla1Task2,isa 0

	.dwfde $C$DW$CIE, Cla1Task2

;***************************************************************
;* FNAME: Cla1Task2                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task2:
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 188,column 5,is_stmt,isa 0
        MMOV32    MR0,@fclVars+36       ; [CPU_FPU] |188| 
        MMOV32    MR1,@fclVars+46       ; [CPU_FPU] |188| 

        MMOV32    MR1,@fclVars+40       ; [CPU_FPU] |188| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |188| 

        MMOV32    MR0,@fclVars+38       ; [CPU_FPU] |188| 
||      MADDF32   MR1,MR1,MR0           ; [CPU_FPU] |188| 

        MADDF32   MR0,MR0,MR1           ; [CPU_FPU] |188| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |188| 
        MMOV32    MR1,MR0               ; [CPU_FPU] |188| 
        MMOV32    MR0,@fclVars+50       ; [CPU_FPU] |188| 
        MMINF32   MR0,MR1               ; [CPU_FPU] |188| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |188| 
        MMOV32    MR1,MR0               ; [CPU_FPU] |188| 
        MMOV32    MR0,@fclVars+52       ; [CPU_FPU] |188| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |188| 
        MMOV32    @fclVars+38,MR0       ; [CPU_FPU] |188| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	"Cla1Prog:Cla1Task1"
	.align	 2
	.clink
	.global	Cla1Task1

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("Cla1Task1")
	.dwattr $C$DW$16, DW_AT_low_pc(Cla1Task1)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("Cla1Task1")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$16, DW_AT_decl_line(0x40)
	.dwattr $C$DW$16, DW_AT_decl_column(0x12)
	.dwattr $C$DW$16, DW_AT_TI_interrupt
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 65,column 1,is_stmt,address Cla1Task1,isa 0

	.dwfde $C$DW$CIE, Cla1Task1

;***************************************************************
;* FNAME: Cla1Task1                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task1:
;* MR0   assigned to $O$C1
;* MR0   assigned to $O$C2
;* MR0   assigned to $O$C3
;* MAR0  assigned to $O$U12
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 73,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |73| 
        MMOV32    MR0,@fclVars          ; [CPU_FPU] |73| 
        MMOVXI    MR1,#2                ; [CPU_FPU] |73| 
        MCMP32    MR1,MR0               ; [CPU_FPU] |73| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L13,EQ             ; [CPU_FPU] |73| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |73| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 91,column 10,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |91| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |91| 
        MCMP32    MR1,MR0               ; [CPU_FPU] |91| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L12,NEQ            ; [CPU_FPU] |91| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |91| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 102,column 9,is_stmt,isa 0
        MEALLOW   ; [CPU_FPU] |102| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 107,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+72      ; [CPU_FPU] |107| 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR1,#0                ; [CPU_FPU] |107| 
        MMOVXI    MR1,#1024             ; [CPU_FPU] |107| 
        MMOVZ16   MR0,*MAR0+[#25]       ; [CPU_FPU] |107| 
        MAND32    MR1,MR1,MR0           ; [CPU_FPU] |107| 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |107| 
        MCMP32    MR0,MR1               ; [CPU_FPU] |107| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L11,EQ             ; [CPU_FPU] |107| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |107| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 114,column 13,is_stmt,isa 0
        MMOV32    MR0,*MAR0+[#8]        ; [CPU_FPU] |114| 
        MMOV32    *MAR0+[#2],MR0        ; [CPU_FPU] |114| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 120,column 13,is_stmt,isa 0
        MMOVXI    MR1,#512              ; [CPU_FPU] |120| 
        MMOVZ16   MR0,*MAR0+[#21]       ; [CPU_FPU] |120| 
        MOR32     MR0,MR1,MR0           ; [CPU_FPU] |120| 
        MMOV16    *MAR0+[#21],MR0       ; [CPU_FPU] |120| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 125,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |125| 
        MMOVXI    MR0,#2                ; [CPU_FPU] |125| 
        MMOV32    @fclVars,MR0          ; [CPU_FPU] |125| 
$C$L11:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 135,column 9,is_stmt,isa 0
        MMOV32    MR0,@fclVars+64       ; [CPU_FPU] |135| 
        MUI32TOF32 MR1,*MAR0+[#12]      ; [CPU_FPU] |135| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |135| 
        MMOV32    @fclVars+56,MR0       ; [CPU_FPU] |135| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 138,column 9,is_stmt,isa 0
        MUI16TOF32 MR0,@fclVars+67      ; [CPU_FPU] |138| 
        MMOV32    MR1,@fclVars+56       ; [CPU_FPU] |138| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |138| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 141,column 9,is_stmt,isa 0
        MF32TOI32 MR1,MR0               ; [CPU_FPU] |141| 
        MI32TOF32 MR1,MR1               ; [CPU_FPU] |141| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 138,column 9,is_stmt,isa 0

        MSUBF32   MR0,MR0,MR1           ; [CPU_FPU] |141| 
||      MMOV32    @fclVars+54,MR0       ; [CPU_FPU] |138| 

        MBCNDD    $C$L14,UNC            ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 141,column 9,is_stmt,isa 0
        MMOV32    @fclVars+54,MR0       ; [CPU_FPU] |141| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 144,column 9,is_stmt,isa 0
        MMOV32    MR0,@fclVars+28       ; [CPU_FPU] |144| 
        ; branch occurs ; [] 
$C$L12:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 153,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+72      ; [CPU_FPU] |153| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR0,#0                ; [CPU_FPU] |153| 
        MMOV32    *MAR0,MR0             ; [CPU_FPU] |153| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 159,column 9,is_stmt,isa 0
        MMOVXI    MR0,#1024             ; [CPU_FPU] |159| 
        MMOV16    *MAR0+[#26],MR0       ; [CPU_FPU] |159| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 165,column 9,is_stmt,isa 0
        MMOVXI    MR1,#64767            ; [CPU_FPU] |165| 
        MMOVZ16   MR0,*MAR0+[#21]       ; [CPU_FPU] |165| 
        MAND32    MR0,MR1,MR0           ; [CPU_FPU] |165| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 167,column 9,is_stmt,isa 0
        MBCNDD    $C$L14,UNC            ; [CPU_FPU] |167| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 165,column 9,is_stmt,isa 0
        MMOV16    *MAR0+[#21],MR0       ; [CPU_FPU] |165| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 167,column 9,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |167| 
        ; branch occurs ; [] |167| 
$C$L13:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 80,column 9,is_stmt,isa 0
        MMOV16    MAR0,@fclVars+72      ; [CPU_FPU] |80| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOV32    MR0,@fclVars+64       ; [CPU_FPU] |80| 
        MUI32TOF32 MR1,*MAR0+[#12]      ; [CPU_FPU] |80| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |80| 
        MMOV32    @fclVars+56,MR0       ; [CPU_FPU] |80| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 83,column 9,is_stmt,isa 0
        MUI16TOF32 MR0,@fclVars+67      ; [CPU_FPU] |83| 
        MMOV32    MR1,@fclVars+56       ; [CPU_FPU] |83| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |83| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 86,column 9,is_stmt,isa 0
        MF32TOI32 MR1,MR0               ; [CPU_FPU] |86| 
        MI32TOF32 MR1,MR1               ; [CPU_FPU] |86| 
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 83,column 9,is_stmt,isa 0

        MSUBF32   MR0,MR0,MR1           ; [CPU_FPU] |86| 
||      MMOV32    @fclVars+54,MR0       ; [CPU_FPU] |83| 

	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 86,column 9,is_stmt,isa 0
        MMOV32    @fclVars+54,MR0       ; [CPU_FPU] |86| 
$C$L14:    
	.dwpsn	file "../sources/fcl_cla_code_dm.cla",line 89,column 9,is_stmt,isa 0
        MMOV32    @fclVars+18,MR0       ; [CPU_FPU] |89| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../sources/fcl_cla_code_dm.cla")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xb1)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	fclVars
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 7
	.dwcfi	cfa_register, 10
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 5
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$18	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$18, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$18, DW_AT_const_value(0x00)
	.dwattr $C$DW$18, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x40)
	.dwattr $C$DW$18, DW_AT_decl_column(0x05)

$C$DW$19	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$19, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$19, DW_AT_const_value(0x01)
	.dwattr $C$DW$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x41)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)

$C$DW$20	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$20, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$20, DW_AT_const_value(0x02)
	.dwattr $C$DW$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x42)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$43


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_name("Freq")
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x25)
	.dwattr $C$DW$21, DW_AT_decl_column(0x1d)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$22, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x26)
	.dwattr $C$DW$22, DW_AT_decl_column(0x1d)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("Angle")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x27)
	.dwattr $C$DW$23, DW_AT_decl_column(0x1d)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("Gain")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x28)
	.dwattr $C$DW$24, DW_AT_decl_column(0x1d)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("Out")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x29)
	.dwattr $C$DW$25, DW_AT_decl_column(0x1d)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("Offset")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$26, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$45


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x16)
$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("ref")
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$27, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x18)
	.dwattr $C$DW$27, DW_AT_decl_column(0x10)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("fbk")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$28, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x19)
	.dwattr $C$DW$28, DW_AT_decl_column(0x10)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("err")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$29, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$29, DW_AT_decl_column(0x10)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("out")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$30, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$30, DW_AT_decl_column(0x10)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("carryOver")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$31, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$31, DW_AT_decl_column(0x10)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("Kp")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$32, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$32, DW_AT_decl_column(0x10)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("Ki")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$33, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$33, DW_AT_decl_column(0x10)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("Kerr")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$34, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$34, DW_AT_decl_column(0x10)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("KerrOld")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$35, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x20)
	.dwattr $C$DW$35, DW_AT_decl_column(0x10)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("Umax")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$36, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x21)
	.dwattr $C$DW$36, DW_AT_decl_column(0x10)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("Umin")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$37, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x22)
	.dwattr $C$DW$37, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$21, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$46, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x12)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("ElecTheta")
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$38, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$38, DW_AT_decl_column(0x0f)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("MechTheta")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$39, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$39, DW_AT_decl_column(0x0f)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$40, DW_AT_name("DirectionQep")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$40, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$40, DW_AT_decl_column(0x0f)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$41, DW_AT_name("QepPeriod")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$41, DW_AT_decl_column(0x0f)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$42, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x21)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0f)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$43, DW_AT_name("RawTheta")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x22)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0f)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("MechScaler")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x23)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0f)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$45, DW_AT_name("LineEncoder")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x24)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0f)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$46, DW_AT_name("PolePairs")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x25)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0f)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$47, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x26)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0f)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x28)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("QEP")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$47, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$47


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x22)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$49, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$49, DW_AT_decl_column(0x2e)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$50, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$50, DW_AT_decl_column(0x2e)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$51, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$51, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$51, DW_AT_decl_column(0x2e)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$52, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0xde)
	.dwattr $C$DW$52, DW_AT_decl_column(0x2e)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$53, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$53, DW_AT_decl_column(0x2e)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$54, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$54, DW_AT_decl_column(0x2e)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$55, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$55, DW_AT_decl_column(0x2e)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$56, DW_AT_name("QUTMR")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$56, DW_AT_decl_column(0x2e)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$57, DW_AT_name("QUPRD")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$57, DW_AT_decl_column(0x2e)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$58, DW_AT_name("QWDTMR")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$58, DW_AT_decl_column(0x2e)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$59, DW_AT_name("QWDPRD")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$59, DW_AT_decl_column(0x2e)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$60, DW_AT_name("QDECCTL")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$60, DW_AT_decl_column(0x2e)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$61, DW_AT_name("QEPCTL")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$61, DW_AT_decl_column(0x2e)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$62, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$62, DW_AT_decl_column(0x2e)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$63, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$63, DW_AT_decl_column(0x2e)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$64, DW_AT_name("QEINT")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xea)
	.dwattr $C$DW$64, DW_AT_decl_column(0x2e)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$65, DW_AT_name("QFLG")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$65, DW_AT_decl_column(0x2e)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$66, DW_AT_name("QCLR")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xec)
	.dwattr $C$DW$66, DW_AT_decl_column(0x2e)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$67, DW_AT_name("QFRC")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xed)
	.dwattr $C$DW$67, DW_AT_decl_column(0x2e)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$68, DW_AT_name("QEPSTS")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xee)
	.dwattr $C$DW$68, DW_AT_decl_column(0x2e)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$69, DW_AT_name("QCTMR")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xef)
	.dwattr $C$DW$69, DW_AT_decl_column(0x2e)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$70, DW_AT_name("QCPRD")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$70, DW_AT_decl_column(0x2e)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$71, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$71, DW_AT_decl_column(0x2e)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$72, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$72, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$59, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$73	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$59)

$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$73)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x10)

	.dwendtag $C$DW$TU$49


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$74, DW_AT_name("UPPS")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$74, DW_AT_bit_size(0x04)
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0c)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$75, DW_AT_name("CCPS")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$75, DW_AT_bit_size(0x03)
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0c)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$76, DW_AT_name("rsvd1")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$76, DW_AT_bit_size(0x08)
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0c)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$77, DW_AT_name("CEN")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x60)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$30, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$78, DW_AT_name("all")
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x64)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0d)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$79, DW_AT_name("bit")
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x65)
	.dwattr $C$DW$79, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$31, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$80, DW_AT_name("INT")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$81, DW_AT_name("PCE")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0c)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$82, DW_AT_name("PHE")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0c)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$83, DW_AT_name("QDC")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0c)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$84, DW_AT_name("WTO")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$85, DW_AT_name("PCU")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0c)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$86, DW_AT_name("PCO")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0c)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$87, DW_AT_name("PCR")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$88, DW_AT_name("PCM")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$89, DW_AT_name("SEL")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$90, DW_AT_name("IEL")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0c)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$91, DW_AT_name("UTO")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xab)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0c)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$92, DW_AT_name("rsvd1")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$92, DW_AT_bit_size(0x04)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xac)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$32, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$93, DW_AT_name("all")
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0d)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$94, DW_AT_name("bit")
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$94, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$33, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$95, DW_AT_name("rsvd1")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$95, DW_AT_bit_size(0x05)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x37)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$96, DW_AT_name("QSP")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x38)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$97, DW_AT_name("QIP")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x39)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0c)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$98, DW_AT_name("QBP")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0c)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$99, DW_AT_name("QAP")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$100, DW_AT_name("IGATE")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$101, DW_AT_name("SWAP")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0c)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$102, DW_AT_name("XCR")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0c)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$103, DW_AT_name("SPSEL")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0c)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$104, DW_AT_name("SOEN")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x40)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0c)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$105, DW_AT_name("QSRC")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$105, DW_AT_bit_size(0x02)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x41)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$34, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$106, DW_AT_name("all")
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x45)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0d)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$107, DW_AT_name("bit")
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x46)
	.dwattr $C$DW$107, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$35, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$108, DW_AT_name("rsvd1")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x76)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$109, DW_AT_name("PCE")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x77)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0c)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$110, DW_AT_name("QPE")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x78)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0c)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$111, DW_AT_name("QDC")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x79)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0c)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$112, DW_AT_name("WTO")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0c)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$113, DW_AT_name("PCU")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$114, DW_AT_name("PCO")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$115, DW_AT_name("PCR")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$116, DW_AT_name("PCM")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$117, DW_AT_name("SEL")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$118, DW_AT_name("IEL")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x80)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$119, DW_AT_name("UTO")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x81)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$120, DW_AT_name("rsvd2")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$120, DW_AT_bit_size(0x04)
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x82)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$36, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$121, DW_AT_name("all")
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x86)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0d)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$122, DW_AT_name("bit")
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x87)
	.dwattr $C$DW$122, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$37, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$123, DW_AT_name("WDE")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0c)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$124, DW_AT_name("UTE")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0c)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$125, DW_AT_name("QCLM")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$126, DW_AT_name("QPEN")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0c)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$127, DW_AT_name("IEL")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$127, DW_AT_bit_size(0x02)
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0c)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$128, DW_AT_name("SEL")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0c)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$129, DW_AT_name("SWI")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x50)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0c)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$130, DW_AT_name("IEI")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$130, DW_AT_bit_size(0x02)
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x51)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$131, DW_AT_name("SEI")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$131, DW_AT_bit_size(0x02)
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x52)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0c)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$132, DW_AT_name("PCRM")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$132, DW_AT_bit_size(0x02)
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x53)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0c)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$133, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$133, DW_AT_bit_size(0x02)
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x54)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$38, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$134, DW_AT_name("all")
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x58)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0d)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$135, DW_AT_name("bit")
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x59)
	.dwattr $C$DW$135, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$39, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$136, DW_AT_name("PCEF")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0xca)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0c)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$137, DW_AT_name("FIMF")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0c)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$138, DW_AT_name("CDEF")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$139, DW_AT_name("COEF")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$140, DW_AT_name("QDLF")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xce)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0c)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$141, DW_AT_name("QDF")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$142, DW_AT_name("FIDF")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$143, DW_AT_name("UPEVNT")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$144, DW_AT_name("rsvd1")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$144, DW_AT_bit_size(0x08)
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$40, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$145, DW_AT_name("all")
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0d)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$146, DW_AT_name("bit")
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$146, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$41, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$147, DW_AT_name("INT")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0c)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$148, DW_AT_name("PCE")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0c)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$149, DW_AT_name("PHE")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$150, DW_AT_name("QDC")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$151, DW_AT_name("WTO")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0c)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$152, DW_AT_name("PCU")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x90)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0c)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$153, DW_AT_name("PCO")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x91)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0c)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$154, DW_AT_name("PCR")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x92)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$155, DW_AT_name("PCM")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x93)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$156, DW_AT_name("SEL")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x94)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$157, DW_AT_name("IEL")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x95)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0c)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$158, DW_AT_name("UTO")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x96)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0c)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$159, DW_AT_name("rsvd1")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$159, DW_AT_bit_size(0x04)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x97)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$52, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$160, DW_AT_name("all")
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0d)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$161, DW_AT_name("bit")
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$161, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$53, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$162, DW_AT_name("rsvd1")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0c)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$163, DW_AT_name("PCE")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0c)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$164, DW_AT_name("PHE")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0c)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$165, DW_AT_name("QDC")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0c)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$166, DW_AT_name("WTO")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0c)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$167, DW_AT_name("PCU")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0xba)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0c)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$168, DW_AT_name("PCO")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0c)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$169, DW_AT_name("PCR")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0c)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$170, DW_AT_name("PCM")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0c)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$171, DW_AT_name("SEL")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$172, DW_AT_name("IEL")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$172, DW_AT_decl_column(0x0c)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$173, DW_AT_name("UTO")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0c)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$174, DW_AT_name("rsvd2")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$174, DW_AT_bit_size(0x04)
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$54, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$175, DW_AT_name("all")
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$175, DW_AT_decl_column(0x0d)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$176, DW_AT_name("bit")
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$176, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$55, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$177, DW_AT_name("PCSPW")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$177, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x69)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0c)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$178, DW_AT_name("PCE")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0c)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$179, DW_AT_name("PCPOL")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$179, DW_AT_decl_column(0x0c)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$180, DW_AT_name("PCLOAD")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$180, DW_AT_decl_column(0x0c)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$181, DW_AT_name("PCSHDW")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$181, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$56, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$182, DW_AT_name("all")
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x71)
	.dwattr $C$DW$182, DW_AT_decl_column(0x0d)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$183, DW_AT_name("bit")
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x72)
	.dwattr $C$DW$183, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$57, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("_FCL_Vars_t_")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x52)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$184, DW_AT_name("lsw")
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$184, DW_AT_decl_column(0x12)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$185, DW_AT_name("Q_cla")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x81)
	.dwattr $C$DW$185, DW_AT_decl_column(0x11)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("speedWePrev")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x82)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0f)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("pangle")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x83)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0f)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$188, DW_AT_name("rg")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x84)
	.dwattr $C$DW$188, DW_AT_decl_column(0x12)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$189, DW_AT_name("pi_iq")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x85)
	.dwattr $C$DW$189, DW_AT_decl_column(0x18)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$190, DW_AT_name("qep")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x86)
	.dwattr $C$DW$190, DW_AT_decl_column(0x09)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$191, DW_AT_name("ptrQEP")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x87)
	.dwattr $C$DW$191, DW_AT_decl_column(0x20)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$192, DW_AT_name("taskCount")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x88)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$51, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("FCL_Vars_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$66, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_byte_size(0xa4)
$C$DW$193	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$193, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


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
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x02)

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
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

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


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("Uint16")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$29, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\common\include\F2837xD_Cla_typedefs.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$29


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$23


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$10


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3d)
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


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$11


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x3e)
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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x08)
$C$DW$194	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$194, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("int32")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$78, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\common\include\F2837xD_Cla_typedefs.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$78


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("Uint32")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$58, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\common\include\F2837xD_Cla_typedefs.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$58


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/inc/hw_types.h")
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


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("motPars")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x0e)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("cosWTs")
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0f)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("sinWTs")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0f)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("expVal")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0f)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("kDirect")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0f)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("idErr")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x50)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0f)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("iqErr")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x51)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0f)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("carryOver")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x52)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$60, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$44, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44

