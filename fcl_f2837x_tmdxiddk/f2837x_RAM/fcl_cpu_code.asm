;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Thu Jan 22 11:16:45 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\fcl_f2837x_tmdxiddk\f2837x_RAM")
	.global	||lsw||
||lsw||:	.usect	"ClaData",1,1,0
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("lsw")
	.dwattr $C$DW$1, DW_AT_linkage_name("lsw")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||lsw||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$1, DW_AT_decl_column(0x11)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("FCL_cycleCount")
	.dwattr $C$DW$2, DW_AT_linkage_name("FCL_cycleCount")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$2, DW_AT_decl_column(0x1a)

	.global	||currentSenV||
	.bss	||currentSenV||,2,1,1
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("currentSenV")
	.dwattr $C$DW$3, DW_AT_linkage_name("currentSenV")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||currentSenV||]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x43)
	.dwattr $C$DW$3, DW_AT_decl_column(0x11)

	.global	||currentSenW||
	.bss	||currentSenW||,2,1,1
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("currentSenW")
	.dwattr $C$DW$4, DW_AT_linkage_name("currentSenW")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||currentSenW||]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x44)
	.dwattr $C$DW$4, DW_AT_decl_column(0x11)

	.global	||pangle||
||pangle||:	.usect	"ClaData",2,1,1
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("pangle")
	.dwattr $C$DW$5, DW_AT_linkage_name("pangle")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||pangle||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x11)

	.global	||ClaQep||
||ClaQep||:	.usect	"ClaData",2,1,1
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("ClaQep")
	.dwattr $C$DW$6, DW_AT_linkage_name("ClaQep")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||ClaQep||]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0e)

	.global	||speedWePrev||
	.bss	||speedWePrev||,2,1,1
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("speedWePrev")
	.dwattr $C$DW$7, DW_AT_linkage_name("speedWePrev")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||speedWePrev||]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x63)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0b)

	.global	||speedWe||
||speedWe||:	.usect	"ClaData",2,1,1
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("speedWe")
	.dwattr $C$DW$8, DW_AT_linkage_name("speedWe")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||speedWe||]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x64)
	.dwattr $C$DW$8, DW_AT_decl_column(0x0b)

	.global	||curA_PPBRESULT||
	.bss	||curA_PPBRESULT||,2,1,1
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("curA_PPBRESULT")
	.dwattr $C$DW$9, DW_AT_linkage_name("curA_PPBRESULT")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||curA_PPBRESULT||]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x67)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0a)

	.global	||curB_PPBRESULT||
	.bss	||curB_PPBRESULT||,2,1,1
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("curB_PPBRESULT")
	.dwattr $C$DW$10, DW_AT_linkage_name("curB_PPBRESULT")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||curB_PPBRESULT||]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x67)
	.dwattr $C$DW$10, DW_AT_decl_column(0x1a)

	.global	||AdcIntFlag||
	.bss	||AdcIntFlag||,2,1,1
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("AdcIntFlag")
	.dwattr $C$DW$11, DW_AT_linkage_name("AdcIntFlag")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||AdcIntFlag||]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x68)
	.dwattr $C$DW$11, DW_AT_decl_column(0x1f)

	.global	||pwmCompA||
	.bss	||pwmCompA||,2,1,1
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pwmCompA")
	.dwattr $C$DW$12, DW_AT_linkage_name("pwmCompA")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||pwmCompA||]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0c)

	.global	||pwmCompB||
	.bss	||pwmCompB||,2,1,1
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("pwmCompB")
	.dwattr $C$DW$13, DW_AT_linkage_name("pwmCompB")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||pwmCompB||]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$13, DW_AT_decl_column(0x0c)

	.global	||pwmCompC||
	.bss	||pwmCompC||,2,1,1
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("pwmCompC")
	.dwattr $C$DW$14, DW_AT_linkage_name("pwmCompC")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||pwmCompC||]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0c)


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("expf")
	.dwattr $C$DW$15, DW_AT_linkage_name("expf")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x198)
	.dwattr $C$DW$15, DW_AT_decl_column(0x1a)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$15

	.global	||clarke1||
	.bss	||clarke1||,10,1,1
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("clarke1")
	.dwattr $C$DW$17, DW_AT_linkage_name("clarke1")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr ||clarke1||]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x41)
	.dwattr $C$DW$17, DW_AT_decl_column(0x11)

	.global	||clarke2||
	.bss	||clarke2||,10,1,1
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("clarke2")
	.dwattr $C$DW$18, DW_AT_linkage_name("clarke2")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr ||clarke2||]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x42)
	.dwattr $C$DW$18, DW_AT_decl_column(0x11)

	.global	||rg1||
||rg1||:	.usect	"ClaData",12,1,1
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("rg1")
	.dwattr $C$DW$19, DW_AT_linkage_name("rg1")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr ||rg1||]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x57)
	.dwattr $C$DW$19, DW_AT_decl_column(0x11)

	.global	||park1||
	.bss	||park1||,14,1,1
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("park1")
	.dwattr $C$DW$20, DW_AT_linkage_name("park1")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr ||park1||]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$20, DW_AT_decl_column(0x11)

	.global	||D_cpu||
	.bss	||D_cpu||,14,1,1
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("D_cpu")
	.dwattr $C$DW$21, DW_AT_linkage_name("D_cpu")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr ||D_cpu||]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0e)

	.global	||Q_cla||
||Q_cla||:	.usect	"ClaData",14,1,1
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("Q_cla")
	.dwattr $C$DW$22, DW_AT_linkage_name("Q_cla")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr ||Q_cla||]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$22, DW_AT_decl_column(0x0e)

	.global	||svgen1||
	.bss	||svgen1||,18,1,1
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("svgen1")
	.dwattr $C$DW$23, DW_AT_linkage_name("svgen1")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr ||svgen1||]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x48)
	.dwattr $C$DW$23, DW_AT_decl_column(0x11)

	.global	||qep1||
||qep1||:	.usect	"ClaData",18,1,1
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("qep1")
	.dwattr $C$DW$24, DW_AT_linkage_name("qep1")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr ||qep1||]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x50)
	.dwattr $C$DW$24, DW_AT_decl_column(0x11)

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("speed1")
	.dwattr $C$DW$25, DW_AT_linkage_name("speed1")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$25, DW_AT_decl_column(0x17)

	.global	||pi_id||
	.bss	||pi_id||,22,1,1
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("pi_id")
	.dwattr $C$DW$26, DW_AT_linkage_name("pi_id")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr ||pi_id||]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x53)
	.dwattr $C$DW$26, DW_AT_decl_column(0x14)

	.global	||pi_iq||
||pi_iq||:	.usect	"ClaData",22,1,1
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("pi_iq")
	.dwattr $C$DW$27, DW_AT_linkage_name("pi_iq")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr ||pi_iq||]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x54)
	.dwattr $C$DW$27, DW_AT_decl_column(0x14)

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$28, DW_AT_linkage_name("PieCtrlRegs")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x2b6)
	.dwattr $C$DW$28, DW_AT_decl_column(0x26)

	.global	||FCL_params||
	.bss	||FCL_params||,32,1,1
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("FCL_params")
	.dwattr $C$DW$29, DW_AT_linkage_name("FCL_params")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr ||FCL_params||]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$29, DW_AT_decl_column(0x12)

	.sblock	".bss"
	.sblock	"ClaData"
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{E890C7EE-9B19-41CA-A228-B9068D728567} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{97F11A26-0C80-4E30-B9FE-B89065D077C9} 
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{E3D88E43-D43B-4D5F-B6B1-CD5F1A339936} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("__signbitl")
	.dwattr $C$DW$30, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$30, DW_AT_decl_column(0x18)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("e")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]


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
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("e")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 3,is_stmt,isa 0
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
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__signbitf")
	.dwattr $C$DW$35, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$35, DW_AT_decl_column(0x18)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("f")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("f")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 3,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |366| 
        MOVB      XAR6,#0               ; [CPU_ALU] |366| 
        ANDB      AL,#0                 ; [CPU_ALU] |366| 
        AND       AH,#32768             ; [CPU_ALU] |366| 
        TEST      ACC                   ; [CPU_ALU] |366| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |366| 
        MOV       AL,AR6                ; [CPU_ALU] |366| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("__signbit")
	.dwattr $C$DW$39, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$39, DW_AT_decl_column(0x18)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("d")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]


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
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("d")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 3,is_stmt,isa 0
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
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$44, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x103)
	.dwattr $C$DW$44, DW_AT_decl_column(0x10)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 260,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("x")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sqrtf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sqrtf||:
;* R0    assigned to x
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("x")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 261,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |261| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$48, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$48, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x108)
	.dwattr $C$DW$48, DW_AT_decl_column(0x10)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("x")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("x")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$52, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$52, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$52, DW_AT_decl_column(0x10)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("y")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("x")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("y")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("x")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 286,column 3,is_stmt,isa 0
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
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$58, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$58, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xee)
	.dwattr $C$DW$58, DW_AT_decl_column(0x10)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 239,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("x")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("y")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("y")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 240,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |240| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$63, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$63, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$63, DW_AT_decl_column(0x10)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 233,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("x")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("y")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("y")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 234,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |234| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$68, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$68, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$68, DW_AT_decl_column(0x10)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("x")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("x")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$72, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x112)
	.dwattr $C$DW$72, DW_AT_decl_column(0x10)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("x")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("x")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 276,column 3,is_stmt,isa 0
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
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$76, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$76, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x117)
	.dwattr $C$DW$76, DW_AT_decl_column(0x10)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("y")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("x")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("y")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("x")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 281,column 3,is_stmt,isa 0
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
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("__isnormall")
	.dwattr $C$DW$82, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$82, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x167)
	.dwattr $C$DW$82, DW_AT_decl_column(0x18)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("e")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]


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
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("e")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 0
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
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |360| 
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
||$C$L1||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("__isnormalf")
	.dwattr $C$DW$87, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$87, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x163)
	.dwattr $C$DW$87, DW_AT_decl_column(0x18)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("f")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("f")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L2||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("__isnormal")
	.dwattr $C$DW$91, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$91, DW_AT_decl_column(0x18)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("d")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]


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
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("d")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 3,is_stmt,isa 0
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
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |352| 
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
||$C$L3||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("__isnanl")
	.dwattr $C$DW$96, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$96, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$96, DW_AT_decl_column(0x18)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("e")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]


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
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("e")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 3,is_stmt,isa 0
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
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |348| 
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
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("__isnanf")
	.dwattr $C$DW$101, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$101, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x158)
	.dwattr $C$DW$101, DW_AT_decl_column(0x18)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("f")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("f")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L5||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("__isnan")
	.dwattr $C$DW$105, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x155)
	.dwattr $C$DW$105, DW_AT_decl_column(0x18)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("d")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]


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
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("d")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 3,is_stmt,isa 0
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
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |342| 
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
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("__isinfl")
	.dwattr $C$DW$110, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$110, DW_AT_decl_column(0x18)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("e")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]


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
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("e")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 3,is_stmt,isa 0
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
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |379| 
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
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$110, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("__isinff")
	.dwattr $C$DW$115, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x176)
	.dwattr $C$DW$115, DW_AT_decl_column(0x18)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("f")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("f")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L8||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("__isinf")
	.dwattr $C$DW$119, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x178)
	.dwattr $C$DW$119, DW_AT_decl_column(0x18)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("d")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


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
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("d")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 3,is_stmt,isa 0
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
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |377| 
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
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("__isfinitel")
	.dwattr $C$DW$124, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x152)
	.dwattr $C$DW$124, DW_AT_decl_column(0x18)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("e")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg12]


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
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("e")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 3,is_stmt,isa 0
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
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("__isfinitef")
	.dwattr $C$DW$128, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$128, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x150)
	.dwattr $C$DW$128, DW_AT_decl_column(0x18)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("f")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("f")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |337| 
        AND       PH,#0x7f80            ; [CPU_ALU] |337| 
        MOVZ      AR7,PH                ; [CPU_ALU] |337| 
        MOV       ACC,#32640            ; [CPU_ALU] |337| 
        MOVB      XAR6,#0               ; [CPU_ALU] |337| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |337| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |337| 
        MOV       AL,AR6                ; [CPU_ALU] |337| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("__isfinite")
	.dwattr $C$DW$132, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$132, DW_AT_decl_column(0x18)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("d")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg12]


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
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("d")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 3,is_stmt,isa 0
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
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$136, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$136, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$136, DW_AT_decl_column(0x18)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("e")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("e")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("e")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |431| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |431| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |431| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |431| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 432,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |432| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |432| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 436,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        LSR64     ACC:P,T               ; [CPU_ALU] |436| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |436| 
        MOVZ      AR6,PL                ; [CPU_ALU] |436| 
        MOV       ACC,#32752            ; [CPU_ALU] |436| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |436| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |436| 
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
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L10||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L11||:    
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
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L12||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L13||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L14||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$144	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$144, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$144, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$144, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$144, DW_AT_decl_column(0x18)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("f")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("f")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L16||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L17||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$144, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("__fpclassify")
	.dwattr $C$DW$152, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$152, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$152, DW_AT_decl_column(0x18)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("d")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("d")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("d")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |414| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |414| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |414| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |414| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 415,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |415| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |415| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 419,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        LSR64     ACC:P,T               ; [CPU_ALU] |419| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |419| 
        MOVZ      AR6,PL                ; [CPU_ALU] |419| 
        MOV       ACC,#32752            ; [CPU_ALU] |419| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |419| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |419| 
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
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L19||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L20||:    
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
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L21||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L22||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L22||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L23||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".TI.ramfunc:FCL_runSDFMPICtrl"
	.clink
	.global	||FCL_runSDFMPICtrl||

$C$DW$160	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$160, DW_AT_name("FCL_runSDFMPICtrl")
	.dwattr $C$DW$160, DW_AT_low_pc(||FCL_runSDFMPICtrl||)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_linkage_name("FCL_runSDFMPICtrl")
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$160, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$160, DW_AT_decl_column(0x06)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 456,column 1,is_stmt,address ||FCL_runSDFMPICtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runSDFMPICtrl||

;***************************************************************
;* FNAME: FCL_runSDFMPICtrl             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runSDFMPICtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R1    assigned to $O$C7
;* R0    assigned to $O$C8
;* R2    assigned to $O$v4
;* R2    assigned to $O$v3
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R1    assigned to park1Sine
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("park1Sine")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("park1Cosine")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("piidc")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("piids")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L24||:    
        MOVW      DP,#||PieCtrlRegs||+23 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 468,column 5,is_stmt,isa 0
        TBIT      @$BLOCKED(||PieCtrlRegs||)+23,#0 ; [CPU_ALU] |468| 
        B         ||$C$L24||,NTC        ; [CPU_ALU] |468| 
        ; branchcc occurs ; [] |468| 
        MOVW      DP,#||currentSenW||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0
        MOV32     R1H,@||currentSenW||  ; [CPU_FPU] |475| 
        MOVIZ     R3H,#16147            ; [CPU_FPU] |475| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 468,column 5,is_stmt,isa 0
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |468| 
        MOVW      DP,#||currentSenV||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0
        MOVXI     R3H,#52538            ; [CPU_FPU] |475| 

        MOV32     R2H,@||currentSenV||  ; [CPU_FPU] |475| 
||      ADDF32    R4H,R1H,R1H           ; [CPU_FPU] |475| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 468,column 5,is_stmt,isa 0
        SINPUF32  R1H,R0H               ; [CPU_FPU] |468| 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |468| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |475| 
        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |475| 
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 477,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |477| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 477,column 5,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |477| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 477,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |477| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |477| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 475,column 5,is_stmt,isa 0

        SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |477| 
||      MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |475| 

        MOVW      DP,#||pi_id||+4       ; [CPU_ARAU] 

        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |475| 
||      MOV32     @$BLOCKED(||pi_id||)+4,R2H ; [CPU_FPU] |477| 

        MOVW      DP,#||pi_iq||+4       ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_iq||)+4,R3H ; [CPU_FPU] |475| 
  IACK  #0x0002
        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 485,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||pi_id||)+14 ; [CPU_FPU] |485| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |485| 
        MOV32     R4H,@$BLOCKED(||pi_id||)+8 ; [CPU_FPU] |485| 
        ADDF32    R3H,R4H,R2H           ; [CPU_FPU] |485| 
        MOV32     R6H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |485| 

        ADDF32    R2H,R3H,R6H           ; [CPU_FPU] |485| 
||      MOV32     R7H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |485| 

        MOV32     R4H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |485| 
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |485| 
        MINF32    R4H,R2H               ; [CPU_FPU] |485| 
        MOV32     R2H,R4H               ; [CPU_FPU] |485| 
        MAXF32    R2H,R7H               ; [CPU_FPU] |485| 

        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |487| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |485| 

        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |488| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |485| 

||$C$L25||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 494,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |494| 
        TBIT      AL,#1                 ; [CPU_ALU] |494| 
        B         ||$C$L25||,NTC        ; [CPU_ALU] |494| 
        ; branchcc occurs ; [] |494| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 500,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |500| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |508| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |500| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |508| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |500| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |500| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 508,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |508| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 500,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |500| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 508,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |508| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |508| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |508| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |508| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |508| 
        MOV32     R4H,R2H               ; [CPU_FPU] |508| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |508| 
        MOV32     R5H,R2H               ; [CPU_FPU] |508| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |508| 
        MINF32    R5H,R3H               ; [CPU_FPU] |508| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |508| 
        MINF32    R5H,R1H               ; [CPU_FPU] |508| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |508| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |508| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |508| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |508| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |508| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |508| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |508| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |508| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |508| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |508| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |508| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |508| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |508| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |508| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 510,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |510| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$160, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x201)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$160

	.sect	".TI.ramfunc:FCL_runSDFMComplexCtrl"
	.clink
	.global	||FCL_runSDFMComplexCtrl||

$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("FCL_runSDFMComplexCtrl")
	.dwattr $C$DW$166, DW_AT_low_pc(||FCL_runSDFMComplexCtrl||)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_linkage_name("FCL_runSDFMComplexCtrl")
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$166, DW_AT_decl_line(0x36b)
	.dwattr $C$DW$166, DW_AT_decl_column(0x06)
	.dwattr $C$DW$166, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 876,column 1,is_stmt,address ||FCL_runSDFMComplexCtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runSDFMComplexCtrl||

;***************************************************************
;* FNAME: FCL_runSDFMComplexCtrl        FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runSDFMComplexCtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R2    assigned to $O$C7
;* R3    assigned to $O$C8
;* R1    assigned to $O$C9
;* R0    assigned to $O$C10
;* R2    assigned to $O$v5
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R1    assigned to park1Sine
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("park1Sine")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("park1Cosine")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("piidc")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("piids")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L26||:    
        MOVW      DP,#||PieCtrlRegs||+23 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 888,column 5,is_stmt,isa 0
        TBIT      @$BLOCKED(||PieCtrlRegs||)+23,#0 ; [CPU_ALU] |888| 
        B         ||$C$L26||,NTC        ; [CPU_ALU] |888| 
        ; branchcc occurs ; [] |888| 
        MOVW      DP,#||currentSenW||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        MOV32     R1H,@||currentSenW||  ; [CPU_FPU] |894| 
        MOVIZ     R3H,#16147            ; [CPU_FPU] |894| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 888,column 5,is_stmt,isa 0

        ADDF32    R4H,R1H,R1H           ; [CPU_FPU] |894| 
||      MOV32     R0H,@||pangle||       ; [CPU_FPU] |888| 

        MOVW      DP,#||currentSenV||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        MOVXI     R3H,#52538            ; [CPU_FPU] |894| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 888,column 5,is_stmt,isa 0
        SINPUF32  R1H,R0H               ; [CPU_FPU] |888| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        MOV32     R2H,@||currentSenV||  ; [CPU_FPU] |894| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 888,column 5,is_stmt,isa 0
        COSPUF32  R0H,R0H               ; [CPU_FPU] |888| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |894| 
        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |894| 
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |894| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 896,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |896| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |894| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 896,column 5,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |896| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |896| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |896| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |894| 
||      SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |894| 

        MOVW      DP,#||Q_cla||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 896,column 5,is_stmt,isa 0
        SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |896| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |894| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 896,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+8,R2H ; [CPU_FPU] |896| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 894,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+10,R3H ; [CPU_FPU] |894| 
  IACK  #0x0004
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||D_cpu||)+2 ; [CPU_FPU] |126| 

        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |126| 
||      MOV32     R5H,@$BLOCKED(||D_cpu||) ; [CPU_FPU] |126| 

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |126| 
        NOP       ; [CPU_ALU] 
        SUBF32    R3H,R2H,R3H           ; [CPU_FPU] |126| 
        MOV32     R6H,@$BLOCKED(||D_cpu||)+6 ; [CPU_FPU] |126| 
        MPYF32    R2H,R3H,R6H           ; [CPU_FPU] |126| 
        MOV32     R7H,@$BLOCKED(||D_cpu||)+12 ; [CPU_FPU] |126| 
        ADDF32    R3H,R7H,R2H           ; [CPU_FPU] |126| 
        MOV32     R4H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |126| 

        ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |126| 
||      MOV32     R5H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |133| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MOV32     R6H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |133| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MINF32    R5H,R2H               ; [CPU_FPU] |133| 
        MOV32     R2H,R5H               ; [CPU_FPU] |133| 
        MAXF32    R2H,R6H               ; [CPU_FPU] |133| 

        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |904| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R5H ; [CPU_FPU] |133| 

        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |905| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |133| 

||$C$L27||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 911,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |911| 
        TBIT      AL,#2                 ; [CPU_ALU] |911| 
        B         ||$C$L27||,NTC        ; [CPU_ALU] |911| 
        ; branchcc occurs ; [] |911| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 917,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |917| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |925| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |917| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |925| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |917| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |917| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 925,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |925| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 917,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |917| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 925,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |925| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |925| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |925| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |925| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |925| 
        MOV32     R4H,R2H               ; [CPU_FPU] |925| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |925| 
        MOV32     R5H,R2H               ; [CPU_FPU] |925| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |925| 
        MINF32    R5H,R3H               ; [CPU_FPU] |925| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |925| 
        MINF32    R5H,R1H               ; [CPU_FPU] |925| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |925| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |925| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |925| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |925| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |925| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |925| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |925| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |925| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |925| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |925| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |925| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |925| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |925| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |925| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 926,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |926| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$166, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x3a0)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$166

	.sect	".TI.ramfunc:FCL_runSDFMAbsEncPICtrl"
	.clink
	.global	||FCL_runSDFMAbsEncPICtrl||

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("FCL_runSDFMAbsEncPICtrl")
	.dwattr $C$DW$172, DW_AT_low_pc(||FCL_runSDFMAbsEncPICtrl||)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_linkage_name("FCL_runSDFMAbsEncPICtrl")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$172, DW_AT_decl_line(0x247)
	.dwattr $C$DW$172, DW_AT_decl_column(0x06)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 584,column 1,is_stmt,address ||FCL_runSDFMAbsEncPICtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runSDFMAbsEncPICtrl||

;***************************************************************
;* FNAME: FCL_runSDFMAbsEncPICtrl       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runSDFMAbsEncPICtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R1    assigned to $O$C7
;* R0    assigned to $O$C8
;* R2    assigned to $O$v4
;* R2    assigned to $O$v3
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R1    assigned to park1Sine
$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("park1Sine")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("park1Cosine")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("piidc")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("piids")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||currentSenW||   ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0
        MOV32     R1H,@||currentSenW||  ; [CPU_FPU] |603| 
        MOVIZ     R3H,#16147            ; [CPU_FPU] |603| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 596,column 5,is_stmt,isa 0
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |596| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVW      DP,#||currentSenV||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0

        MOV32     R2H,@||currentSenV||  ; [CPU_FPU] |603| 
||      ADDF32    R4H,R1H,R1H           ; [CPU_FPU] |603| 

        MOVXI     R3H,#52538            ; [CPU_FPU] |603| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 596,column 5,is_stmt,isa 0
        SINPUF32  R1H,R0H               ; [CPU_FPU] |596| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |596| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0

        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |603| 
||      MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10

        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |603| 
||      MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |603| 

        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |603| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 605,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |605| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |603| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 605,column 5,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |605| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |603| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 605,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |605| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 603,column 5,is_stmt,isa 0

        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |603| 
||      MOV32     R4H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |605| 

        MOVW      DP,#||pi_iq||+4       ; [CPU_ARAU] 

        MOV32     @$BLOCKED(||pi_iq||)+4,R3H ; [CPU_FPU] |603| 
||      SUBF32    R2H,R4H,R2H           ; [CPU_FPU] |605| 

        MOVW      DP,#||pi_id||+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 605,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+4,R2H ; [CPU_FPU] |605| 
  IACK  #0x0002
	.dwpsn	file "../sources/fcl_cpu_code.c",line 612,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||pi_id||)+14 ; [CPU_FPU] |612| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |612| 
        MOV32     R3H,@$BLOCKED(||pi_id||)+8 ; [CPU_FPU] |612| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |612| 
        MOV32     R2H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |612| 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |612| 
        MOV32     R4H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |612| 
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |612| 
        MOV32     R3H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |612| 
        MINF32    R2H,R4H               ; [CPU_FPU] |612| 
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |612| 
        MAXF32    R3H,R2H               ; [CPU_FPU] |612| 
        MOV32     R2H,R3H               ; [CPU_FPU] |612| 

        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |614| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R3H ; [CPU_FPU] |612| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 615,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |615| 
||$C$L28||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 621,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |621| 
        TBIT      AL,#1                 ; [CPU_ALU] |621| 
        B         ||$C$L28||,NTC        ; [CPU_ALU] |621| 
        ; branchcc occurs ; [] |621| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 627,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |627| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |635| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |627| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |635| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |627| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |627| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 635,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |635| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 627,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |627| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 635,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |635| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |635| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |635| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |635| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |635| 
        MOV32     R4H,R2H               ; [CPU_FPU] |635| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |635| 
        MOV32     R5H,R2H               ; [CPU_FPU] |635| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |635| 
        MINF32    R5H,R3H               ; [CPU_FPU] |635| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |635| 
        MINF32    R5H,R1H               ; [CPU_FPU] |635| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |635| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |635| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |635| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |635| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |635| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |635| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |635| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |635| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |635| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |635| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |635| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |635| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |635| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |635| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 637,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |637| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x280)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".TI.ramfunc:FCL_runSDFMAbsEncComplexCtrl"
	.clink
	.global	||FCL_runSDFMAbsEncComplexCtrl||

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("FCL_runSDFMAbsEncComplexCtrl")
	.dwattr $C$DW$178, DW_AT_low_pc(||FCL_runSDFMAbsEncComplexCtrl||)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_linkage_name("FCL_runSDFMAbsEncComplexCtrl")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$178, DW_AT_decl_line(0x3e1)
	.dwattr $C$DW$178, DW_AT_decl_column(0x06)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 994,column 1,is_stmt,address ||FCL_runSDFMAbsEncComplexCtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runSDFMAbsEncComplexCtrl||

;***************************************************************
;* FNAME: FCL_runSDFMAbsEncComplexCtrl  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runSDFMAbsEncComplexCtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R2    assigned to $O$C7
;* R3    assigned to $O$C8
;* R1    assigned to $O$C9
;* R0    assigned to $O$C10
;* R2    assigned to $O$v5
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R1    assigned to park1Sine
$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("park1Sine")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("park1Cosine")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("piidc")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("piids")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||currentSenW||   ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0
        MOV32     R1H,@||currentSenW||  ; [CPU_FPU] |1012| 
        MOVIZ     R3H,#16147            ; [CPU_FPU] |1012| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1006,column 5,is_stmt,isa 0
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |1006| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVW      DP,#||currentSenV||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0

        MOV32     R2H,@||currentSenV||  ; [CPU_FPU] |1012| 
||      ADDF32    R4H,R1H,R1H           ; [CPU_FPU] |1012| 

        MOVXI     R3H,#52538            ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1006,column 5,is_stmt,isa 0
        SINPUF32  R1H,R0H               ; [CPU_FPU] |1006| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |1006| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0

        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |1012| 
||      MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10

        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |1012| 
||      MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |1012| 

        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1014,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |1014| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1014,column 5,is_stmt,isa 0

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |1014| 
||      MOV32     R4H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |1014| 

        MOVW      DP,#||Q_cla||+10      ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |1014| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1014,column 5,is_stmt,isa 0
        SUBF32    R2H,R4H,R2H           ; [CPU_FPU] |1014| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1014,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+8,R2H ; [CPU_FPU] |1014| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1012,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+10,R3H ; [CPU_FPU] |1012| 
  IACK  #0x0004
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||D_cpu||)+2 ; [CPU_FPU] |126| 

        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |126| 
||      MOV32     R5H,@$BLOCKED(||D_cpu||) ; [CPU_FPU] |126| 

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |126| 
        NOP       ; [CPU_ALU] 
        SUBF32    R3H,R2H,R3H           ; [CPU_FPU] |126| 
        MOV32     R2H,@$BLOCKED(||D_cpu||)+6 ; [CPU_FPU] |126| 
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |126| 
        MOV32     R3H,@$BLOCKED(||D_cpu||)+12 ; [CPU_FPU] |126| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |126| 
        MOV32     R2H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |126| 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |133| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |133| 
        MINF32    R2H,R4H               ; [CPU_FPU] |133| 
        MOV32     @$BLOCKED(||pi_id||)+6,R2H ; [CPU_FPU] |133| 
        MAXF32    R3H,R2H               ; [CPU_FPU] |133| 
        MOV32     R2H,R3H               ; [CPU_FPU] |133| 

        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |1022| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R3H ; [CPU_FPU] |133| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1023,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |1023| 
||$C$L29||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1029,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |1029| 
        TBIT      AL,#2                 ; [CPU_ALU] |1029| 
        B         ||$C$L29||,NTC        ; [CPU_ALU] |1029| 
        ; branchcc occurs ; [] |1029| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1035,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |1035| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |1043| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |1035| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |1043| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |1035| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |1035| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1043,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |1043| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1035,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |1035| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1043,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |1043| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |1043| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |1043| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |1043| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |1043| 
        MOV32     R4H,R2H               ; [CPU_FPU] |1043| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |1043| 
        MOV32     R5H,R2H               ; [CPU_FPU] |1043| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |1043| 
        MINF32    R5H,R3H               ; [CPU_FPU] |1043| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |1043| 
        MINF32    R5H,R1H               ; [CPU_FPU] |1043| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |1043| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |1043| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |1043| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |1043| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |1043| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |1043| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |1043| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |1043| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |1043| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |1043| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |1043| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |1043| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |1043| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |1043| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1044,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |1044| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x416)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".TI.ramfunc:FCL_runQEPWrap"
	.clink
	.global	||FCL_runQEPWrap||

$C$DW$184	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$184, DW_AT_name("FCL_runQEPWrap")
	.dwattr $C$DW$184, DW_AT_low_pc(||FCL_runQEPWrap||)
	.dwattr $C$DW$184, DW_AT_high_pc(0x00)
	.dwattr $C$DW$184, DW_AT_linkage_name("FCL_runQEPWrap")
	.dwattr $C$DW$184, DW_AT_external
	.dwattr $C$DW$184, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$184, DW_AT_decl_line(0x30d)
	.dwattr $C$DW$184, DW_AT_decl_column(0x06)
	.dwattr $C$DW$184, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 782,column 1,is_stmt,address ||FCL_runQEPWrap||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runQEPWrap||

;***************************************************************
;* FNAME: FCL_runQEPWrap                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FCL_runQEPWrap||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
||$C$L30||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 786,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |786| 
        TBIT      AL,#0                 ; [CPU_ALU] |786| 
        B         ||$C$L30||,NTC        ; [CPU_ALU] |786| 
        ; branchcc occurs ; [] |786| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 648,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x1422)        ; [CPU_ALU] |648| 
        ORB       AL,#0x08              ; [CPU_ALU] |648| 
        MOV       *(0:0x1422),AL        ; [CPU_ALU] |648| 
 EDIS
||$C$L31||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 796,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |796| 
        TBIT      AL,#3                 ; [CPU_ALU] |796| 
        B         ||$C$L31||,NTC        ; [CPU_ALU] |796| 
        ; branchcc occurs ; [] |796| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 801,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |801| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       AH,#1024              ; [CPU_ALU] |379| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 801,column 5,is_stmt,isa 0
        AND       AL,#0xfff6            ; [CPU_ALU] |801| 
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |801| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AH        ; [CPU_ALU] |379| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$184, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$184, DW_AT_TI_end_line(0x328)
	.dwattr $C$DW$184, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$184

	.sect	".TI.ramfunc:FCL_runPICtrlWrap"
	.clink
	.global	||FCL_runPICtrlWrap||

$C$DW$186	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$186, DW_AT_name("FCL_runPICtrlWrap")
	.dwattr $C$DW$186, DW_AT_low_pc(||FCL_runPICtrlWrap||)
	.dwattr $C$DW$186, DW_AT_high_pc(0x00)
	.dwattr $C$DW$186, DW_AT_linkage_name("FCL_runPICtrlWrap")
	.dwattr $C$DW$186, DW_AT_external
	.dwattr $C$DW$186, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$186, DW_AT_decl_line(0x286)
	.dwattr $C$DW$186, DW_AT_decl_column(0x06)
	.dwattr $C$DW$186, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 647,column 1,is_stmt,address ||FCL_runPICtrlWrap||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runPICtrlWrap||

;***************************************************************
;* FNAME: FCL_runPICtrlWrap             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  8 SOE     *
;***************************************************************

||FCL_runPICtrlWrap||:
;* R4    assigned to $O$C2
;* R7    assigned to $O$C3
;* R3    assigned to $O$C4
;* R3    assigned to $O$C5
;* R2    assigned to $O$C6
;* R0    assigned to $O$C7
;* R1    assigned to $O$C8
;* R2    assigned to $O$C9
;* R6    assigned to $O$C10
;* R1    assigned to $O$C11
;* R0    assigned to $O$C12
;* R5    assigned to $O$C13
;* R5    assigned to $O$v12
;* R4    assigned to $O$v11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
  IACK  #0x0008
        MOVW      DP,#||FCL_params||+26 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 666,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16275            ; [CPU_FPU] |666| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+26 ; [CPU_FPU] |666| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |666| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |666| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |666| 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+20 ; [CPU_FPU] |666| 
        DIVF32    R2H,R1H,R0H           ; [CPU_FPU] |666| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 677,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |677| 
        MPYF32    R1H,R2H,R0H           ; [CPU_FPU] |677| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 676,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+24 ; [CPU_FPU] |676| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 677,column 5,is_stmt,isa 0
        MPYF32    R3H,R0H,R1H           ; [CPU_FPU] |677| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 667,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |667| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 677,column 5,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |677| 
        MOVW      DP,#||pi_iq||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 679,column 5,is_stmt,isa 0
        MPYF32    R7H,R3H,#16128        ; [CPU_FPU] |679| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 677,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+12,R3H ; [CPU_FPU] |677| 
        MOVW      DP,#||FCL_params||+16 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 676,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||FCL_params||)+16 ; [CPU_FPU] |676| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |676| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |676| 
        MOVW      DP,#||pi_iq||+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 679,column 5,is_stmt,isa 0
        SUBF32    R4H,R7H,R3H           ; [CPU_FPU] |679| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 681,column 5,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||pi_iq||)+4 ; [CPU_FPU] |681| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 679,column 5,is_stmt,isa 0

        MPYF32    R0H,R4H,R5H           ; [CPU_FPU] |681| 
||      MOV32     @$BLOCKED(||pi_iq||)+16,R4H ; [CPU_FPU] |679| 

        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 671,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_id||)+4 ; [CPU_FPU] |671| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 681,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |681| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 689,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |689| 
        SUBF32    R0H,R0H,R4H           ; [CPU_FPU] |689| 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||pi_id||)+2,R0H ; [CPU_FPU] |689| 
        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 690,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |690| 
        SUBF32    R0H,R0H,R5H           ; [CPU_FPU] |690| 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||pi_iq||)+2,R0H ; [CPU_FPU] |690| 
        MOVW      DP,#||FCL_params||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 667,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |667| 
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |667| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 666,column 5,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||FCL_params||)+22 ; [CPU_FPU] |666| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 667,column 5,is_stmt,isa 0
        MPYF32    R0H,R5H,R0H           ; [CPU_FPU] |667| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |667| 
        MOVW      DP,#||pi_id||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 669,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,#16128        ; [CPU_FPU] |669| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 667,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+12,R0H ; [CPU_FPU] |667| 
        MOVW      DP,#||speed1||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 681,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||speed1||)+6 ; [CPU_FPU] |681| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |681| 
        MOV32     R0H,@||speedWePrev||  ; [CPU_FPU] |681| 
        MOVW      DP,#||FCL_params||+28 ; [CPU_ARAU] 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |681| 

        MOV32     R0H,@$BLOCKED(||FCL_params||)+28 ; [CPU_FPU] |681| 
||      SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |681| 

        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 

        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |681| 
||      MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |681| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 683,column 5,is_stmt,isa 0
        MOV32     @||speedWePrev||,R1H  ; [CPU_FPU] |683| 
        MOVW      DP,#||FCL_params||+14 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 666,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+14 ; [CPU_FPU] |666| 
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |666| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |666| 
        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 669,column 5,is_stmt,isa 0
        ADDF32    R5H,R1H,R6H           ; [CPU_FPU] |669| 
        SUBF32    R2H,R6H,R1H           ; [CPU_FPU] |669| 
        MOV32     @$BLOCKED(||pi_id||)+14,R5H ; [CPU_FPU] |669| 

        ADDF32    R6H,R3H,R7H           ; [CPU_FPU] |679| 
||      MOV32     @$BLOCKED(||pi_id||)+16,R2H ; [CPU_FPU] |669| 

        MOVW      DP,#||pi_iq||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 679,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+14,R6H ; [CPU_FPU] |679| 
        MOVW      DP,#||pi_id||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 666,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+10,R1H ; [CPU_FPU] |666| 
        MOVW      DP,#||pi_iq||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 671,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_iq||)+10,R3H ; [CPU_FPU] |676| 
||      MPYF32    R4H,R2H,R4H           ; [CPU_FPU] |671| 

        MOVW      DP,#||pi_id||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 676,column 5,is_stmt,isa 0
        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |676| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 671,column 5,is_stmt,isa 0

        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |681| 
||      MOV32     @$BLOCKED(||pi_id||)+8,R4H ; [CPU_FPU] |671| 

        MOVW      DP,#||pi_iq||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 681,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+8,R0H ; [CPU_FPU] |681| 
||$C$L32||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 695,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |695| 
        TBIT      AL,#3                 ; [CPU_ALU] |695| 
        B         ||$C$L32||,NTC        ; [CPU_ALU] |695| 
        ; branchcc occurs ; [] |695| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 700,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |700| 
        AND       AL,#0xfff4            ; [CPU_ALU] |700| 
        SPM       #0                    ; [CPU_FPU] 
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |700| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$186, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$186, DW_AT_TI_end_line(0x2bf)
	.dwattr $C$DW$186, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$186

	.sect	".TI.ramfunc:FCL_runPICtrl"
	.clink
	.global	||FCL_runPICtrl||

$C$DW$188	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$188, DW_AT_name("FCL_runPICtrl")
	.dwattr $C$DW$188, DW_AT_low_pc(||FCL_runPICtrl||)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_linkage_name("FCL_runPICtrl")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$188, DW_AT_decl_line(0x186)
	.dwattr $C$DW$188, DW_AT_decl_column(0x06)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 391,column 1,is_stmt,address ||FCL_runPICtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runPICtrl||

;***************************************************************
;* FNAME: FCL_runPICtrl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runPICtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R0    assigned to $O$C6
;* AR4   assigned to $O$v7
;* R4    assigned to $O$v4
;* R2    assigned to $O$v3
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R7    assigned to clarke1Alpha
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("clarke1Alpha")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x47]

;* R3    assigned to clarke1Beta
$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("clarke1Beta")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to park1Sine
$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("park1Sine")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("park1Cosine")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("piidc")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("piids")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L33||:    
        MOVW      DP,#||PieCtrlRegs||+23 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 403,column 5,is_stmt,isa 0
        TBIT      @$BLOCKED(||PieCtrlRegs||)+23,#0 ; [CPU_ALU] |403| 
        B         ||$C$L33||,NTC        ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |403| 
        MOVW      DP,#||AdcIntFlag||    ; [CPU_ARAU] 
        MOVL      XAR4,@||AdcIntFlag||  ; [CPU_ALU] |403| 
        SINPUF32  R1H,R0H               ; [CPU_FPU] |403| 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |403| 
||$C$L34||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |403| 
        B         ||$C$L34||,NTC        ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
 NOP
        MOVW      DP,#||curA_PPBRESULT|| ; [CPU_ARAU] 
        MOVL      XAR5,@||curA_PPBRESULT|| ; [CPU_ALU] |403| 
        MOVL      XAR4,@||curB_PPBRESULT|| ; [CPU_ALU] |403| 
        MOVIZ     R6H,#16147            ; [CPU_FPU] |403| 
        MOVW      DP,#||FCL_params||+2  ; [CPU_ARAU] 
        I16TOF32  R4H,*+XAR5[0]         ; [CPU_FPU] |403| 
        I16TOF32  R3H,*+XAR4[0]         ; [CPU_FPU] |403| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+2 ; [CPU_FPU] |403| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |403| 
        MPYF32    R7H,R2H,R4H           ; [CPU_FPU] |403| 
        MPYF32    R4H,R3H,#16384        ; [CPU_FPU] |403| 
        MOVXI     R6H,#52538            ; [CPU_FPU] |403| 
        ADDF32    R4H,R4H,R7H           ; [CPU_FPU] |403| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R6H,R4H           ; [CPU_FPU] |403| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 410,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R7H           ; [CPU_FPU] |410| 
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |410| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 412,column 5,is_stmt,isa 0
        MPYF32    R4H,R0H,R7H           ; [CPU_FPU] |412| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |412| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 410,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |410| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 412,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |412| 
||      ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |412| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 410,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |410| 
||      SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |412| 

        MOVW      DP,#||pi_id||+4       ; [CPU_ARAU] 

        MOV32     @$BLOCKED(||pi_id||)+4,R2H ; [CPU_FPU] |412| 
||      SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |410| 

        MOVW      DP,#||pi_iq||+4       ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_iq||)+4,R3H ; [CPU_FPU] |410| 
  IACK  #0x0002
        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 420,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||pi_id||)+14 ; [CPU_FPU] |420| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |420| 
        MOV32     R4H,@$BLOCKED(||pi_id||)+8 ; [CPU_FPU] |420| 
        ADDF32    R3H,R4H,R2H           ; [CPU_FPU] |420| 
        MOV32     R6H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |420| 

        ADDF32    R4H,R3H,R6H           ; [CPU_FPU] |420| 
||      MOV32     R7H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |420| 

        MOV32     R5H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |420| 
        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |420| 
        MINF32    R7H,R4H               ; [CPU_FPU] |420| 
        MOV32     R4H,R7H               ; [CPU_FPU] |420| 
        MAXF32    R4H,R5H               ; [CPU_FPU] |420| 

        MPYF32    R3H,R0H,R4H           ; [CPU_FPU] |422| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R7H ; [CPU_FPU] |420| 

        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |420| 
||      MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |423| 

||$C$L35||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 429,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |429| 
        TBIT      AL,#1                 ; [CPU_ALU] |429| 
        B         ||$C$L35||,NTC        ; [CPU_ALU] |429| 
        ; branchcc occurs ; [] |429| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 435,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |435| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |443| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |435| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |443| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |435| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |435| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 443,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |443| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 435,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |435| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 443,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |443| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |443| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |443| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |443| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |443| 
        MOV32     R4H,R2H               ; [CPU_FPU] |443| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |443| 
        MOV32     R5H,R2H               ; [CPU_FPU] |443| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |443| 
        MINF32    R5H,R3H               ; [CPU_FPU] |443| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |443| 
        MINF32    R5H,R1H               ; [CPU_FPU] |443| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |443| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |443| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |443| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |443| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |443| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |443| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |443| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |443| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |443| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |443| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |443| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |443| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |443| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |443| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 445,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |445| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$188, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x1c0)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".TI.ramfunc:FCL_runComplexCtrlWrap"
	.clink
	.global	||FCL_runComplexCtrlWrap||

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("FCL_runComplexCtrlWrap")
	.dwattr $C$DW$196, DW_AT_low_pc(||FCL_runComplexCtrlWrap||)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_linkage_name("FCL_runComplexCtrlWrap")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$196, DW_AT_decl_line(0x41c)
	.dwattr $C$DW$196, DW_AT_decl_column(0x06)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1053,column 1,is_stmt,address ||FCL_runComplexCtrlWrap||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runComplexCtrlWrap||

;***************************************************************
;* FNAME: FCL_runComplexCtrlWrap        FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  8 SOE     *
;***************************************************************

||FCL_runComplexCtrlWrap||:
;* R6    assigned to $O$C3
;* R4    assigned to $O$C4
;* R7    assigned to $O$C5
;* R7    assigned to $O$C6
;* R1    assigned to $O$C7
;* R1    assigned to $O$C8
;* R0    assigned to $O$C9
;* R0    assigned to $O$C10
;* R3    assigned to $O$C11
;* R5    assigned to $O$v6
;* R0    assigned to $O$v6
;* R3    assigned to $O$v10
;* R2    assigned to $O$v9
;* R1    assigned to $O$v5
;* R0    assigned to $O$v4
;* R4    assigned to invZbase
$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("invZbase")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
        MOVW      DP,#||FCL_params||+26 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1055,column 24,is_stmt,isa 0
        MOVIZ     R0H,#16275            ; [CPU_FPU] |1055| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+26 ; [CPU_FPU] |1055| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |1055| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1055| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |1055| 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+20 ; [CPU_FPU] |1055| 
        DIVF32    R4H,R1H,R0H           ; [CPU_FPU] |1055| 
  IACK  #0x0008
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1063,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+30 ; [CPU_FPU] |1063| 
        MOVW      DP,#||speed1||+6      ; [CPU_ARAU] 
        MOV32     R2H,@$BLOCKED(||speed1||)+6 ; [CPU_FPU] |1063| 
        SPM       #0                    ; [CPU_ALU] 
        MOVW      DP,#||FCL_params||+8  ; [CPU_ARAU] 
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |1063| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1063| 

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |1063| 
||      MOV32     R3H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |1066| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1066,column 5,is_stmt,isa 0
        MOV32     R2H,@$BLOCKED(||FCL_params||)+14 ; [CPU_FPU] |1066| 
        DIVF32    R2H,R3H,R2H           ; [CPU_FPU] |1066| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1063,column 5,is_stmt,isa 0
        DIV2PIF32 R5H,R0H               ; [CPU_FPU] |1063| 
        MOVW      DP,#||Q_cla||         ; [CPU_ARAU] 
        COSPUF32  R3H,R5H               ; [CPU_FPU] |1063| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1064,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |1064| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1066,column 5,is_stmt,isa 0
        NEGF32    R2H,R2H               ; [CPU_FPU] |1066| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1064,column 5,is_stmt,isa 0
        SINPUF32  R0H,R0H               ; [CPU_FPU] |1064| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1063,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||),R3H ; [CPU_FPU] |1063| 
        MOVW      DP,#||D_cpu||         ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||D_cpu||),R3H ; [CPU_FPU] |1063| 
        MOVW      DP,#||Q_cla||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1064,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+2,R0H ; [CPU_FPU] |1064| 
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 

        MPYF32    R0H,R1H,R2H           ; [CPU_FPU] |1066| 
||      MOV32     @$BLOCKED(||D_cpu||)+2,R0H ; [CPU_FPU] |1064| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1066,column 5,is_stmt,isa 0
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("expf")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #||expf||             ; [CPU_ALU] |1066| 
        ; call occurs [#||expf||] ; [] |1066| 
        MOVW      DP,#||FCL_params||+16 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1067,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+16 ; [CPU_FPU] |1067| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |1067| 
        DIVF32    R1H,R2H,R1H           ; [CPU_FPU] |1067| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1067| 
        MOVW      DP,#||D_cpu||+4       ; [CPU_ARAU] 
        NEGF32    R1H,R1H               ; [CPU_FPU] |1067| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1066,column 5,is_stmt,isa 0

        MPYF32    R0H,R2H,R1H           ; [CPU_FPU] |1067| 
||      MOV32     @$BLOCKED(||D_cpu||)+4,R0H ; [CPU_FPU] |1066| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1067,column 5,is_stmt,isa 0
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("expf")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #||expf||             ; [CPU_ALU] |1067| 
        ; call occurs [#||expf||] ; [] |1067| 
        MOVW      DP,#||speed1||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1083,column 5,is_stmt,isa 0
        MOV32     R6H,@$BLOCKED(||speed1||)+6 ; [CPU_FPU] |1083| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
        MOV32     R1H,@||speedWePrev||  ; [CPU_FPU] |1083| 
        MOVW      DP,#||FCL_params||+28 ; [CPU_ARAU] 
        SUBF32    R2H,R6H,R1H           ; [CPU_FPU] |1083| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+28 ; [CPU_FPU] |1083| 
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |1083| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MOV32     *-SP[4],R1H           ; [CPU_FPU] |1083| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1092,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |1092| 
        MOVW      DP,#||Q_cla||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1082,column 5,is_stmt,isa 0
        MOV32     R2H,@$BLOCKED(||Q_cla||)+8 ; [CPU_FPU] |1082| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1092,column 5,is_stmt,isa 0
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |1092| 
        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
        MOV32     *-SP[6],R1H           ; [CPU_FPU] |1092| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1093,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |1093| 
        MOVW      DP,#||Q_cla||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1083,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||Q_cla||)+10 ; [CPU_FPU] |1083| 
        MOVW      DP,#||FCL_params||+8  ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1093,column 5,is_stmt,isa 0
        SUBF32    R1H,R1H,R3H           ; [CPU_FPU] |1093| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1069,column 5,is_stmt,isa 0
        MOV32     R7H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1069| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1093,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |1093| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1069,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+22 ; [CPU_FPU] |1069| 
        MPYF32    R1H,R7H,R1H           ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIV2PIF32 R1H,R1H               ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R1H,R1H               ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R1H,R1H,R1H           ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        SUBF32    R1H,#16384,R1H        ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R5H,R1H               ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |1069| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1067,column 5,is_stmt,isa 0

        MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |1069| 
||      MOV32     *-SP[2],R0H           ; [CPU_FPU] |1067| 

        MOVW      DP,#||D_cpu||+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1069,column 5,is_stmt,isa 0

        MOV32     R5H,@$BLOCKED(||D_cpu||)+4 ; [CPU_FPU] |1069| 
||      MPYF32    R0H,R5H,R1H           ; [CPU_FPU] |1069| 

        SUBF32    R1H,#16256,R5H        ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R1H,R0H,R1H           ; [CPU_FPU] |1069| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||D_cpu||)+6,R1H ; [CPU_FPU] |1069| 
        MOVW      DP,#||FCL_params||+24 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1072,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+24 ; [CPU_FPU] |1072| 
        MPYF32    R7H,R7H,R0H           ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIV2PIF32 R7H,R7H               ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R7H,R7H               ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R7H,R7H,R7H           ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        SUBF32    R7H,#16384,R7H        ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R0H,R7H               ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
        MOV32     R7H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |1072| 
        MPYF32    R4H,R4H,R7H           ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 

        MOV32     R0H,*-SP[2]           ; [CPU_FPU] |1072| 
||      MPYF32    R4H,R0H,R4H           ; [CPU_FPU] |1072| 

        SUBF32    R7H,#16256,R0H        ; [CPU_FPU] |1072| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1098,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |1098| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1072,column 5,is_stmt,isa 0
        DIVF32    R4H,R4H,R7H           ; [CPU_FPU] |1072| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1098,column 5,is_stmt,isa 0
        AND       AL,#0xfffa            ; [CPU_ALU] |1098| 
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |1098| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1082,column 5,is_stmt,isa 0
        NEGF32    R1H,R1H               ; [CPU_FPU] |1082| 
        MOVW      DP,#||Q_cla||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1072,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+6,R4H ; [CPU_FPU] |1072| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1082,column 5,is_stmt,isa 0

        MOV32     @||speedWePrev||,R6H  ; [CPU_FPU] |1086| 
||      MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |1082| 

        MOVW      DP,#||Q_cla||+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1083,column 5,is_stmt,isa 0
        NEGF32    R4H,R4H               ; [CPU_FPU] |1083| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1067,column 5,is_stmt,isa 0

        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |1083| 
||      MOV32     @$BLOCKED(||Q_cla||)+4,R0H ; [CPU_FPU] |1067| 

        MOVW      DP,#||pi_id||+2       ; [CPU_ARAU] 

        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |1067| 
||      MPYF32    R2H,R0H,R3H           ; [CPU_FPU] |1083| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1092,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+2,R0H ; [CPU_FPU] |1092| 
        MOVW      DP,#||pi_iq||+2       ; [CPU_ARAU] 
        MOV32     R0H,*-SP[8]           ; [CPU_FPU] |1092| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1082,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_iq||)+2,R0H ; [CPU_FPU] |1093| 
||      MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |1082| 

        MOVW      DP,#||D_cpu||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1098,column 5,is_stmt,isa 0
        MOV32     R0H,*-SP[4]           ; [CPU_FPU] |1098| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1082,column 5,is_stmt,isa 0

        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |1083| 
||      MOV32     @$BLOCKED(||D_cpu||)+12,R1H ; [CPU_FPU] |1082| 

        MOVW      DP,#||Q_cla||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1083,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+12,R0H ; [CPU_FPU] |1083| 
||$C$L36||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1104,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |1104| 
        TBIT      AL,#3                 ; [CPU_ALU] |1104| 
        B         ||$C$L36||,NTC        ; [CPU_ALU] |1104| 
        ; branchcc occurs ; [] |1104| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1105,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |1105| 
        AND       AL,#0xfff7            ; [CPU_ALU] |1105| 
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |1105| 
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x454)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".TI.ramfunc:FCL_runComplexCtrl"
	.clink
	.global	||FCL_runComplexCtrl||

$C$DW$201	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$201, DW_AT_name("FCL_runComplexCtrl")
	.dwattr $C$DW$201, DW_AT_low_pc(||FCL_runComplexCtrl||)
	.dwattr $C$DW$201, DW_AT_high_pc(0x00)
	.dwattr $C$DW$201, DW_AT_linkage_name("FCL_runComplexCtrl")
	.dwattr $C$DW$201, DW_AT_external
	.dwattr $C$DW$201, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$201, DW_AT_decl_line(0x32f)
	.dwattr $C$DW$201, DW_AT_decl_column(0x06)
	.dwattr $C$DW$201, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 816,column 1,is_stmt,address ||FCL_runComplexCtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runComplexCtrl||

;***************************************************************
;* FNAME: FCL_runComplexCtrl            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runComplexCtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R2    assigned to $O$C7
;* R0    assigned to $O$C8
;* AR4   assigned to $O$v8
;* R4    assigned to $O$v5
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R7    assigned to clarke1Alpha
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("clarke1Alpha")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x47]

;* R3    assigned to clarke1Beta
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("clarke1Beta")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to park1Sine
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("park1Sine")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("park1Cosine")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("piidc")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("piids")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L37||:    
        MOVW      DP,#||PieCtrlRegs||+23 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 828,column 5,is_stmt,isa 0
        TBIT      @$BLOCKED(||PieCtrlRegs||)+23,#0 ; [CPU_ALU] |828| 
        B         ||$C$L37||,NTC        ; [CPU_ALU] |828| 
        ; branchcc occurs ; [] |828| 
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |828| 
        MOVW      DP,#||AdcIntFlag||    ; [CPU_ARAU] 
        MOVL      XAR4,@||AdcIntFlag||  ; [CPU_ALU] |828| 
        SINPUF32  R1H,R0H               ; [CPU_FPU] |828| 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |828| 
||$C$L38||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |828| 
        B         ||$C$L38||,NTC        ; [CPU_ALU] |828| 
        ; branchcc occurs ; [] |828| 
 NOP
        MOVW      DP,#||curA_PPBRESULT|| ; [CPU_ARAU] 
        MOVL      XAR5,@||curA_PPBRESULT|| ; [CPU_ALU] |828| 
        MOVL      XAR4,@||curB_PPBRESULT|| ; [CPU_ALU] |828| 
        MOVIZ     R6H,#16147            ; [CPU_FPU] |828| 
        MOVW      DP,#||FCL_params||+2  ; [CPU_ARAU] 
        I16TOF32  R4H,*+XAR5[0]         ; [CPU_FPU] |828| 
        I16TOF32  R3H,*+XAR4[0]         ; [CPU_FPU] |828| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+2 ; [CPU_FPU] |828| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |828| 
        MPYF32    R7H,R2H,R4H           ; [CPU_FPU] |828| 
        MPYF32    R4H,R3H,#16384        ; [CPU_FPU] |828| 
        MOVXI     R6H,#52538            ; [CPU_FPU] |828| 
        ADDF32    R4H,R4H,R7H           ; [CPU_FPU] |828| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R6H,R4H           ; [CPU_FPU] |828| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 834,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R7H           ; [CPU_FPU] |834| 
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |834| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 836,column 5,is_stmt,isa 0
        MPYF32    R4H,R0H,R7H           ; [CPU_FPU] |836| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |836| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 834,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |834| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 836,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |836| 
||      ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |836| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 834,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |834| 
||      SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |836| 

        MOVW      DP,#||Q_cla||+8       ; [CPU_ARAU] 
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |834| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 836,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+8,R2H ; [CPU_FPU] |836| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 834,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+10,R3H ; [CPU_FPU] |834| 
  IACK  #0x0004
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||D_cpu||)+2 ; [CPU_FPU] |126| 

        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |126| 
||      MOV32     R5H,@$BLOCKED(||D_cpu||) ; [CPU_FPU] |126| 

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |126| 
        NOP       ; [CPU_ALU] 
        SUBF32    R3H,R2H,R3H           ; [CPU_FPU] |126| 
        MOV32     R6H,@$BLOCKED(||D_cpu||)+6 ; [CPU_FPU] |126| 
        MPYF32    R2H,R3H,R6H           ; [CPU_FPU] |126| 
        MOV32     R7H,@$BLOCKED(||D_cpu||)+12 ; [CPU_FPU] |126| 
        ADDF32    R3H,R7H,R2H           ; [CPU_FPU] |126| 
        MOV32     R5H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |126| 

        ADDF32    R4H,R3H,R5H           ; [CPU_FPU] |126| 
||      MOV32     R6H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |133| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MOV32     R7H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |133| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MINF32    R6H,R4H               ; [CPU_FPU] |133| 
        MOV32     R4H,R6H               ; [CPU_FPU] |133| 
        MAXF32    R4H,R7H               ; [CPU_FPU] |133| 

        MPYF32    R3H,R0H,R4H           ; [CPU_FPU] |844| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R6H ; [CPU_FPU] |133| 

        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |133| 
||      MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |845| 

||$C$L39||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 851,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |851| 
        TBIT      AL,#2                 ; [CPU_ALU] |851| 
        B         ||$C$L39||,NTC        ; [CPU_ALU] |851| 
        ; branchcc occurs ; [] |851| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 857,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |857| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |865| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |857| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |865| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |857| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |857| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 865,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |865| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 857,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |857| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 865,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |865| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |865| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |865| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |865| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |865| 
        MOV32     R4H,R2H               ; [CPU_FPU] |865| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |865| 
        MOV32     R5H,R2H               ; [CPU_FPU] |865| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |865| 
        MINF32    R5H,R3H               ; [CPU_FPU] |865| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |865| 
        MINF32    R5H,R1H               ; [CPU_FPU] |865| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |865| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |865| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |865| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |865| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |865| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |865| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |865| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |865| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |865| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |865| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |865| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |865| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |865| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |865| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 866,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |866| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$201, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$201, DW_AT_TI_end_line(0x364)
	.dwattr $C$DW$201, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$201

	.sect	".TI.ramfunc:FCL_runAbsEncPICtrlWrap"
	.clink
	.global	||FCL_runAbsEncPICtrlWrap||

$C$DW$209	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$209, DW_AT_name("FCL_runAbsEncPICtrlWrap")
	.dwattr $C$DW$209, DW_AT_low_pc(||FCL_runAbsEncPICtrlWrap||)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_linkage_name("FCL_runAbsEncPICtrlWrap")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$209, DW_AT_decl_line(0x2c5)
	.dwattr $C$DW$209, DW_AT_decl_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 710,column 1,is_stmt,address ||FCL_runAbsEncPICtrlWrap||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runAbsEncPICtrlWrap||

;***************************************************************
;* FNAME: FCL_runAbsEncPICtrlWrap       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||FCL_runAbsEncPICtrlWrap||:
;* R2    assigned to $O$C1
;* R3    assigned to $O$C2
;* R4    assigned to $O$C3
;* R0    assigned to $O$C4
;* R2    assigned to $O$C5
;* R0    assigned to $O$C6
;* R0    assigned to $O$C7
;* R2    assigned to $O$C8
;* R1    assigned to $O$C9
;* R4    assigned to $O$C10
;* R3    assigned to $O$C11
;* R3    assigned to $O$C12
;* R1    assigned to $O$C13
;* R0    assigned to $O$v12
;* R3    assigned to $O$v11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||FCL_params||+26 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 724,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16147            ; [CPU_FPU] |724| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+26 ; [CPU_FPU] |724| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |724| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |724| 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+20 ; [CPU_FPU] |724| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |724| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 753,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |753| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 725,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |725| 
        MPYF32    R2H,R0H,R1H           ; [CPU_FPU] |725| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 724,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+22 ; [CPU_FPU] |724| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 725,column 5,is_stmt,isa 0
        MPYF32    R3H,R1H,R2H           ; [CPU_FPU] |725| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |725| 

        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |725| 
||      MOV32     *SP++,R4H             ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#||pi_id||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 727,column 5,is_stmt,isa 0
        MPYF32    R4H,R3H,#16128        ; [CPU_FPU] |727| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 725,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+12,R3H ; [CPU_FPU] |725| 
        MOVW      DP,#||FCL_params||+14 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 724,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||FCL_params||)+14 ; [CPU_FPU] |724| 
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |724| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 753,column 5,is_stmt,isa 0
        AND       AL,#0xfffd            ; [CPU_ALU] |753| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 724,column 5,is_stmt,isa 0

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |724| 
||      MOV32     *SP++,R5H             ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVW      DP,#||pi_id||+10      ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_id||)+10,R3H ; [CPU_FPU] |724| 
        MOVW      DP,#||FCL_params||+12 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 727,column 5,is_stmt,isa 0

        ADDF32    R6H,R3H,R4H           ; [CPU_FPU] |727| 
||      MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8

        MOV32     R3H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |735| 
||      SUBF32    R1H,R4H,R3H           ; [CPU_FPU] |727| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 734,column 5,is_stmt,isa 0

        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |735| 
||      MOV32     R4H,@$BLOCKED(||FCL_params||)+16 ; [CPU_FPU] |734| 

        MOV32     R0H,@$BLOCKED(||FCL_params||)+24 ; [CPU_FPU] |734| 
||      MPYF32    R4H,R0H,R4H           ; [CPU_FPU] |734| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 735,column 5,is_stmt,isa 0
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |735| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 753,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |753| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 735,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |735| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 734,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |734| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 737,column 5,is_stmt,isa 0
        MPYF32    R4H,R2H,#16128        ; [CPU_FPU] |737| 
        MOVW      DP,#||pi_iq||+16      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 734,column 5,is_stmt,isa 0

        SUBF32    R3H,R4H,R0H           ; [CPU_FPU] |737| 
||      MOV32     @$BLOCKED(||pi_iq||)+10,R0H ; [CPU_FPU] |734| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 735,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+12,R2H ; [CPU_FPU] |735| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 737,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+16,R3H ; [CPU_FPU] |737| 

        MOV32     R0H,@$BLOCKED(||pi_iq||)+4 ; [CPU_FPU] |739| 
||      ADDF32    R5H,R0H,R4H           ; [CPU_FPU] |737| 

        MOVW      DP,#||speedWe||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 739,column 5,is_stmt,isa 0
        MOV32     R2H,@||speedWe||      ; [CPU_FPU] |739| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
        MOV32     R4H,@||speedWePrev||  ; [CPU_FPU] |739| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 741,column 5,is_stmt,isa 0
        MOV32     @||speedWePrev||,R2H  ; [CPU_FPU] |741| 
        MOVW      DP,#||FCL_params||+28 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 739,column 5,is_stmt,isa 0

        MOV32     R2H,@$BLOCKED(||FCL_params||)+28 ; [CPU_FPU] |739| 
||      SUBF32    R4H,R2H,R4H           ; [CPU_FPU] |739| 

        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 727,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+14,R6H ; [CPU_FPU] |727| 
        MOVW      DP,#||pi_iq||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 737,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_iq||)+14,R5H ; [CPU_FPU] |737| 
||      MPYF32    R3H,R3H,R0H           ; [CPU_FPU] |739| 

        MOVW      DP,#||pi_id||+16      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 727,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_id||)+16,R1H ; [CPU_FPU] |727| 
||      MPYF32    R2H,R4H,R2H           ; [CPU_FPU] |739| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 747,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |747| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 729,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||)+4 ; [CPU_FPU] |729| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |739| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 747,column 5,is_stmt,isa 0
        SUBF32    R4H,R4H,R3H           ; [CPU_FPU] |747| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 729,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |748| 
||      MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |729| 

        MOVW      DP,#||pi_id||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 747,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_id||)+2,R4H ; [CPU_FPU] |747| 
||      SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |748| 

        MOVW      DP,#||pi_iq||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 748,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+2,R0H ; [CPU_FPU] |748| 
        MOVW      DP,#||pi_id||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 729,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+8,R1H ; [CPU_FPU] |729| 
        MOVW      DP,#||pi_iq||+8       ; [CPU_ARAU] 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
	.dwpsn	file "../sources/fcl_cpu_code.c",line 739,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+8,R2H ; [CPU_FPU] |739| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$209, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x2f2)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".TI.ramfunc:FCL_runAbsEncPICtrl"
	.clink
	.global	||FCL_runAbsEncPICtrl||

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("FCL_runAbsEncPICtrl")
	.dwattr $C$DW$211, DW_AT_low_pc(||FCL_runAbsEncPICtrl||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_linkage_name("FCL_runAbsEncPICtrl")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$211, DW_AT_decl_line(0x207)
	.dwattr $C$DW$211, DW_AT_decl_column(0x06)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 520,column 1,is_stmt,address ||FCL_runAbsEncPICtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runAbsEncPICtrl||

;***************************************************************
;* FNAME: FCL_runAbsEncPICtrl           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runAbsEncPICtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R0    assigned to $O$C6
;* AR4   assigned to $O$v7
;* R4    assigned to $O$v4
;* R2    assigned to $O$v3
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R7    assigned to clarke1Alpha
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("clarke1Alpha")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x47]

;* R3    assigned to clarke1Beta
$C$DW$213	.dwtag  DW_TAG_variable
	.dwattr $C$DW$213, DW_AT_name("clarke1Beta")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to park1Sine
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("park1Sine")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("park1Cosine")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("piidc")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("piids")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_cpu_code.c",line 532,column 5,is_stmt,isa 0
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |532| 
        MOVW      DP,#||AdcIntFlag||    ; [CPU_ARAU] 
        SINPUF32  R1H,R0H               ; [CPU_FPU] |532| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR4,@||AdcIntFlag||  ; [CPU_ALU] |532| 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |532| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L40||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |532| 
        B         ||$C$L40||,NTC        ; [CPU_ALU] |532| 
        ; branchcc occurs ; [] |532| 
 NOP
        MOVW      DP,#||curA_PPBRESULT|| ; [CPU_ARAU] 
        MOVL      XAR5,@||curA_PPBRESULT|| ; [CPU_ALU] |532| 
        MOVL      XAR4,@||curB_PPBRESULT|| ; [CPU_ALU] |532| 
        MOVIZ     R6H,#16147            ; [CPU_FPU] |532| 
        MOVW      DP,#||FCL_params||+2  ; [CPU_ARAU] 
        I16TOF32  R4H,*+XAR5[0]         ; [CPU_FPU] |532| 
        I16TOF32  R3H,*+XAR4[0]         ; [CPU_FPU] |532| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+2 ; [CPU_FPU] |532| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |532| 
        MPYF32    R7H,R2H,R4H           ; [CPU_FPU] |532| 
        MPYF32    R4H,R3H,#16384        ; [CPU_FPU] |532| 
        MOVXI     R6H,#52538            ; [CPU_FPU] |532| 
        ADDF32    R4H,R4H,R7H           ; [CPU_FPU] |532| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R6H,R4H           ; [CPU_FPU] |532| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 539,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R7H           ; [CPU_FPU] |539| 
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |539| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 541,column 5,is_stmt,isa 0
        MPYF32    R4H,R0H,R7H           ; [CPU_FPU] |541| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |541| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 539,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |539| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 541,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |541| 
||      ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |541| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 539,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |539| 
||      SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |541| 

        MOVW      DP,#||pi_id||+4       ; [CPU_ARAU] 

        MOV32     @$BLOCKED(||pi_id||)+4,R2H ; [CPU_FPU] |541| 
||      SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |539| 

        MOVW      DP,#||pi_iq||+4       ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_iq||)+4,R3H ; [CPU_FPU] |539| 
  IACK  #0x0002
        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 548,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||pi_id||)+14 ; [CPU_FPU] |548| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |548| 
        MOV32     R4H,@$BLOCKED(||pi_id||)+8 ; [CPU_FPU] |548| 
        ADDF32    R3H,R4H,R2H           ; [CPU_FPU] |548| 
        MOV32     R6H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |548| 

        ADDF32    R4H,R3H,R6H           ; [CPU_FPU] |548| 
||      MOV32     R7H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |548| 

        MOV32     R5H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |548| 
        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |548| 
        MINF32    R7H,R4H               ; [CPU_FPU] |548| 
        MOV32     R4H,R7H               ; [CPU_FPU] |548| 
        MAXF32    R4H,R5H               ; [CPU_FPU] |548| 

        MPYF32    R3H,R0H,R4H           ; [CPU_FPU] |550| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R7H ; [CPU_FPU] |548| 

        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |548| 
||      MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |551| 

||$C$L41||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 557,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |557| 
        TBIT      AL,#1                 ; [CPU_ALU] |557| 
        B         ||$C$L41||,NTC        ; [CPU_ALU] |557| 
        ; branchcc occurs ; [] |557| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 563,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |563| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |571| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |563| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |571| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |563| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |563| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 571,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |571| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 563,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |563| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 571,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |571| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |571| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |571| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |571| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |571| 
        MOV32     R4H,R2H               ; [CPU_FPU] |571| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |571| 
        MOV32     R5H,R2H               ; [CPU_FPU] |571| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |571| 
        MINF32    R5H,R3H               ; [CPU_FPU] |571| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |571| 
        MINF32    R5H,R1H               ; [CPU_FPU] |571| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |571| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |571| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |571| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |571| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |571| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |571| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |571| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |571| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |571| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |571| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |571| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |571| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |571| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |571| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 573,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |573| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x240)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".TI.ramfunc:FCL_runAbsEncComplexCtrlWrap"
	.clink
	.global	||FCL_runAbsEncComplexCtrlWrap||

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("FCL_runAbsEncComplexCtrlWrap")
	.dwattr $C$DW$219, DW_AT_low_pc(||FCL_runAbsEncComplexCtrlWrap||)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_linkage_name("FCL_runAbsEncComplexCtrlWrap")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$219, DW_AT_decl_line(0x45a)
	.dwattr $C$DW$219, DW_AT_decl_column(0x06)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1115,column 1,is_stmt,address ||FCL_runAbsEncComplexCtrlWrap||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runAbsEncComplexCtrlWrap||

;***************************************************************
;* FNAME: FCL_runAbsEncComplexCtrlWrap  FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  8 SOE     *
;***************************************************************

||FCL_runAbsEncComplexCtrlWrap||:
;* R6    assigned to $O$C3
;* R1    assigned to $O$C4
;* R4    assigned to $O$C5
;* R1    assigned to $O$C6
;* R2    assigned to $O$C7
;* R3    assigned to $O$C8
;* R2    assigned to $O$C9
;* R2    assigned to $O$C10
;* R1    assigned to $O$C11
;* R5    assigned to $O$v10
;* R4    assigned to $O$v9
;* R0    assigned to $O$v6
;* R2    assigned to $O$v5
;* R3    assigned to $O$v4
;* R4    assigned to invZbase
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("invZbase")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
        MOVW      DP,#||FCL_params||+30 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1120,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+30 ; [CPU_FPU] |1120| 
        MOVW      DP,#||speedWe||       ; [CPU_ARAU] 
        MOV32     R2H,@||speedWe||      ; [CPU_FPU] |1120| 
        MOVW      DP,#||FCL_params||+8  ; [CPU_ARAU] 

        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |1120| 
||      MOV32     R3H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1120| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1123,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||FCL_params||)+14 ; [CPU_FPU] |1123| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1117,column 24,is_stmt,isa 0

        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |1120| 
||      MOV32     R4H,@$BLOCKED(||FCL_params||)+26 ; [CPU_FPU] |1117| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1123,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |1123| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |1123| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1120,column 5,is_stmt,isa 0
        DIV2PIF32 R1H,R2H               ; [CPU_FPU] |1120| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1117,column 24,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||FCL_params||)+20 ; [CPU_FPU] |1117| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1120,column 5,is_stmt,isa 0
        COSPUF32  R1H,R1H               ; [CPU_FPU] |1120| 
        MOVW      DP,#||Q_cla||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1121,column 5,is_stmt,isa 0
        DIV2PIF32 R2H,R2H               ; [CPU_FPU] |1121| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1123,column 5,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |1123| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1120,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||),R1H ; [CPU_FPU] |1120| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1121,column 5,is_stmt,isa 0
        SINPUF32  R2H,R2H               ; [CPU_FPU] |1121| 
        MOVW      DP,#||D_cpu||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1120,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||D_cpu||),R1H ; [CPU_FPU] |1120| 
        MOVW      DP,#||Q_cla||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1121,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+2,R2H ; [CPU_FPU] |1121| 
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 

        MOV32     @$BLOCKED(||D_cpu||)+2,R2H ; [CPU_FPU] |1121| 
||      MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |1123| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1123,column 5,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("expf")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||expf||             ; [CPU_ALU] |1123| 
        ; call occurs [#||expf||] ; [] |1123| 
        MOVW      DP,#||FCL_params||+16 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1124,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+16 ; [CPU_FPU] |1124| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |1124| 
        DIVF32    R1H,R2H,R1H           ; [CPU_FPU] |1124| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1124| 
        MOVW      DP,#||D_cpu||+4       ; [CPU_ARAU] 
        NEGF32    R1H,R1H               ; [CPU_FPU] |1124| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1123,column 5,is_stmt,isa 0

        MPYF32    R0H,R2H,R1H           ; [CPU_FPU] |1124| 
||      MOV32     @$BLOCKED(||D_cpu||)+4,R0H ; [CPU_FPU] |1123| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1124,column 5,is_stmt,isa 0
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("expf")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #||expf||             ; [CPU_ALU] |1124| 
        ; call occurs [#||expf||] ; [] |1124| 
        MOVW      DP,#||Q_cla||+4       ; [CPU_ARAU] 
        MOV32     R3H,R0H               ; [CPU_FPU] |1124| 
        MOV32     @$BLOCKED(||Q_cla||)+4,R0H ; [CPU_FPU] |1124| 
        MOVW      DP,#||FCL_params||+8  ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1126,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||FCL_params||)+8 ; [CPU_FPU] |1126| 
        MOV32     R0H,@$BLOCKED(||FCL_params||)+22 ; [CPU_FPU] |1126| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |1126| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIV2PIF32 R2H,R0H               ; [CPU_FPU] |1126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1117,column 24,is_stmt,isa 0
        MOVIZ     R0H,#16275            ; [CPU_FPU] |1117| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1126,column 5,is_stmt,isa 0
        COSPUF32  R2H,R2H               ; [CPU_FPU] |1126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1117,column 24,is_stmt,isa 0
        MOVXI     R0H,#13107            ; [CPU_FPU] |1117| 
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |1117| 
        NOP       ; [CPU_ALU] 
        MPYF32    R4H,R0H,#16128        ; [CPU_FPU] |1117| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1126,column 5,is_stmt,isa 0
        ADDF32    R0H,R2H,R2H           ; [CPU_FPU] |1126| 
        NOP       ; [CPU_ALU] 
        SUBF32    R0H,#16384,R0H        ; [CPU_FPU] |1126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1117,column 24,is_stmt,isa 0
        DIVF32    R4H,R5H,R4H           ; [CPU_FPU] |1117| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1126,column 5,is_stmt,isa 0
        SQRTF32   R6H,R0H               ; [CPU_FPU] |1126| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+10 ; [CPU_FPU] |1126| 
        MOVW      DP,#||D_cpu||+4       ; [CPU_ARAU] 

        MOV32     R0H,@$BLOCKED(||D_cpu||)+4 ; [CPU_FPU] |1126| 
||      MPYF32    R5H,R4H,R2H           ; [CPU_FPU] |1126| 

        SUBF32    R2H,#16256,R0H        ; [CPU_FPU] |1126| 
        MPYF32    R5H,R6H,R5H           ; [CPU_FPU] |1126| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R2H,R5H,R2H           ; [CPU_FPU] |1126| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||D_cpu||)+6,R2H ; [CPU_FPU] |1126| 
        MOVW      DP,#||FCL_params||+24 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1129,column 5,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||FCL_params||)+24 ; [CPU_FPU] |1129| 
        MPYF32    R5H,R1H,R5H           ; [CPU_FPU] |1129| 
        MOV32     R1H,@$BLOCKED(||FCL_params||)+12 ; [CPU_FPU] |1129| 
        MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |1129| 
        DIV2PIF32 R4H,R5H               ; [CPU_FPU] |1129| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R4H,R4H               ; [CPU_FPU] |1129| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R4H,R4H,R4H           ; [CPU_FPU] |1129| 
        NOP       ; [CPU_ALU] 
        SUBF32    R4H,#16384,R4H        ; [CPU_FPU] |1129| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R4H,R4H               ; [CPU_FPU] |1129| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |1129| 
        SUBF32    R4H,#16256,R3H        ; [CPU_FPU] |1129| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1155,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |1155| 
        AND       AL,#0xfffb            ; [CPU_ALU] |1155| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1129,column 5,is_stmt,isa 0
        DIVF32    R1H,R1H,R4H           ; [CPU_FPU] |1129| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1155,column 5,is_stmt,isa 0
        MOV       *(0:0x0cf7),AL        ; [CPU_ALU] |1155| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1139,column 5,is_stmt,isa 0
        NEGF32    R2H,R2H               ; [CPU_FPU] |1139| 
        MOVW      DP,#||Q_cla||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1140,column 5,is_stmt,isa 0
        MOV32     R6H,@||speedWe||      ; [CPU_FPU] |1140| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1129,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+6,R1H ; [CPU_FPU] |1129| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1140,column 5,is_stmt,isa 0
        MOV32     R4H,@||speedWePrev||  ; [CPU_FPU] |1140| 
        MOVW      DP,#||FCL_params||+28 ; [CPU_ARAU] 
        SUBF32    R5H,R6H,R4H           ; [CPU_FPU] |1140| 
        NEGF32    R1H,R1H               ; [CPU_FPU] |1140| 
        MOV32     R4H,@$BLOCKED(||FCL_params||)+28 ; [CPU_FPU] |1140| 
        MPYF32    R4H,R5H,R4H           ; [CPU_FPU] |1140| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MOV32     *-SP[2],R4H           ; [CPU_FPU] |1140| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1149,column 5,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |1149| 
        MOVW      DP,#||Q_cla||+8       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1139,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||Q_cla||)+8 ; [CPU_FPU] |1139| 
        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1149,column 5,is_stmt,isa 0
        SUBF32    R5H,R5H,R4H           ; [CPU_FPU] |1149| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1139,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |1150| 
||      MPYF32    R2H,R4H,R2H           ; [CPU_FPU] |1139| 

        MOVW      DP,#||Q_cla||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1149,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R5H           ; [CPU_FPU] |1149| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1139,column 5,is_stmt,isa 0

        MOV32     R5H,@$BLOCKED(||Q_cla||)+10 ; [CPU_FPU] |1140| 
||      MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |1139| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1140,column 5,is_stmt,isa 0
        MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |1140| 
        MOVW      DP,#||pi_id||+2       ; [CPU_ARAU] 
        MPYF32    R2H,R3H,R1H           ; [CPU_FPU] |1140| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] 

        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |1140| 
||      ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |1140| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 1149,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||pi_id||)+2,R1H ; [CPU_FPU] |1149| 
||      SUBF32    R7H,R7H,R5H           ; [CPU_FPU] |1150| 

        MOVW      DP,#||pi_iq||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1150,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+2,R7H ; [CPU_FPU] |1150| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1143,column 5,is_stmt,isa 0
        MOV32     @||speedWePrev||,R6H  ; [CPU_FPU] |1143| 
        MOVW      DP,#||D_cpu||+12      ; [CPU_ARAU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1139,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||D_cpu||)+12,R0H ; [CPU_FPU] |1139| 
        MOVW      DP,#||Q_cla||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 1140,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+12,R2H ; [CPU_FPU] |1140| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x486)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".TI.ramfunc:FCL_runAbsEncComplexCtrl"
	.clink
	.global	||FCL_runAbsEncComplexCtrl||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("FCL_runAbsEncComplexCtrl")
	.dwattr $C$DW$224, DW_AT_low_pc(||FCL_runAbsEncComplexCtrl||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("FCL_runAbsEncComplexCtrl")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$224, DW_AT_decl_line(0x3a6)
	.dwattr $C$DW$224, DW_AT_decl_column(0x06)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 935,column 1,is_stmt,address ||FCL_runAbsEncComplexCtrl||,isa 0

	.dwfde $C$DW$CIE, ||FCL_runAbsEncComplexCtrl||

;***************************************************************
;* FNAME: FCL_runAbsEncComplexCtrl      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_runAbsEncComplexCtrl||:
;* R3    assigned to $O$C1
;* R7    assigned to $O$C2
;* R3    assigned to $O$C3
;* R4    assigned to $O$C4
;* R2    assigned to $O$C5
;* R3    assigned to $O$C6
;* R2    assigned to $O$C7
;* R0    assigned to $O$C8
;* AR4   assigned to $O$v8
;* R4    assigned to $O$v5
;* R2    assigned to $O$CSU$svgen2$Ualpha
;* R1    assigned to $O$CSU$svgen2$Tb
;* R0    assigned to $O$CSU$svgen2$tmp2
;* R0    assigned to $O$CSU$svgen2$tmp1
;* R7    assigned to clarke1Alpha
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("clarke1Alpha")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x47]

;* R3    assigned to clarke1Beta
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("clarke1Beta")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to park1Sine
$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("park1Sine")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to park1Cosine
$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("park1Cosine")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to piidc
$C$DW$229	.dwtag  DW_TAG_variable
	.dwattr $C$DW$229, DW_AT_name("piidc")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to piids
$C$DW$230	.dwtag  DW_TAG_variable
	.dwattr $C$DW$230, DW_AT_name("piids")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_cpu_code.c",line 947,column 5,is_stmt,isa 0
        MOV32     R0H,@||pangle||       ; [CPU_FPU] |947| 
        MOVW      DP,#||AdcIntFlag||    ; [CPU_ARAU] 
        SINPUF32  R1H,R0H               ; [CPU_FPU] |947| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR4,@||AdcIntFlag||  ; [CPU_ALU] |947| 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |947| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L42||:    
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |947| 
        B         ||$C$L42||,NTC        ; [CPU_ALU] |947| 
        ; branchcc occurs ; [] |947| 
 NOP
        MOVW      DP,#||curA_PPBRESULT|| ; [CPU_ARAU] 
        MOVL      XAR5,@||curA_PPBRESULT|| ; [CPU_ALU] |947| 
        MOVL      XAR4,@||curB_PPBRESULT|| ; [CPU_ALU] |947| 
        MOVIZ     R6H,#16147            ; [CPU_FPU] |947| 
        MOVW      DP,#||FCL_params||+2  ; [CPU_ARAU] 
        I16TOF32  R4H,*+XAR5[0]         ; [CPU_FPU] |947| 
        I16TOF32  R3H,*+XAR4[0]         ; [CPU_FPU] |947| 
        MOV32     R2H,@$BLOCKED(||FCL_params||)+2 ; [CPU_FPU] |947| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |947| 
        MPYF32    R7H,R2H,R4H           ; [CPU_FPU] |947| 
        MPYF32    R4H,R3H,#16384        ; [CPU_FPU] |947| 
        MOVXI     R6H,#52538            ; [CPU_FPU] |947| 
        ADDF32    R4H,R4H,R7H           ; [CPU_FPU] |947| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
        MPYF32    R3H,R6H,R4H           ; [CPU_FPU] |947| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 953,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R7H           ; [CPU_FPU] |953| 
        MPYF32    R6H,R0H,R3H           ; [CPU_FPU] |953| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 955,column 5,is_stmt,isa 0
        MPYF32    R4H,R0H,R7H           ; [CPU_FPU] |955| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |955| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 953,column 5,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |953| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 955,column 5,is_stmt,isa 0

        MOV32     R3H,@$BLOCKED(||pi_id||) ; [CPU_FPU] |955| 
||      ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |955| 

        MOVW      DP,#||pi_iq||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 953,column 5,is_stmt,isa 0

        MOV32     R7H,@$BLOCKED(||pi_iq||) ; [CPU_FPU] |953| 
||      SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |955| 

        MOVW      DP,#||Q_cla||+8       ; [CPU_ARAU] 
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |953| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 955,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+8,R2H ; [CPU_FPU] |955| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 953,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+10,R3H ; [CPU_FPU] |953| 
  IACK  #0x0004
        MOVW      DP,#||D_cpu||+2       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||D_cpu||)+2 ; [CPU_FPU] |126| 

        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |126| 
||      MOV32     R5H,@$BLOCKED(||D_cpu||) ; [CPU_FPU] |126| 

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |126| 
        NOP       ; [CPU_ALU] 
        SUBF32    R3H,R2H,R3H           ; [CPU_FPU] |126| 
        MOV32     R6H,@$BLOCKED(||D_cpu||)+6 ; [CPU_FPU] |126| 
        MPYF32    R2H,R3H,R6H           ; [CPU_FPU] |126| 
        MOV32     R7H,@$BLOCKED(||D_cpu||)+12 ; [CPU_FPU] |126| 
        ADDF32    R3H,R7H,R2H           ; [CPU_FPU] |126| 
        MOV32     R5H,@$BLOCKED(||pi_id||)+6 ; [CPU_FPU] |126| 

        ADDF32    R4H,R3H,R5H           ; [CPU_FPU] |126| 
||      MOV32     R6H,@$BLOCKED(||pi_id||)+18 ; [CPU_FPU] |133| 

	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MOV32     R7H,@$BLOCKED(||pi_id||)+20 ; [CPU_FPU] |133| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 126,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |126| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 133,column 5,is_stmt,isa 0
        MINF32    R6H,R4H               ; [CPU_FPU] |133| 
        MOV32     R4H,R6H               ; [CPU_FPU] |133| 
        MAXF32    R4H,R7H               ; [CPU_FPU] |133| 

        MPYF32    R3H,R0H,R4H           ; [CPU_FPU] |963| 
||      MOV32     @$BLOCKED(||pi_id||)+6,R6H ; [CPU_FPU] |133| 

        MOV32     @$BLOCKED(||pi_id||)+6,R4H ; [CPU_FPU] |133| 
||      MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |964| 

||$C$L43||:    
	.dwpsn	file "../sources/fcl_cpu_code.c",line 970,column 11,is_stmt,isa 0
        MOV       AL,*(0:0x0cf7)        ; [CPU_ALU] |970| 
        TBIT      AL,#2                 ; [CPU_ALU] |970| 
        B         ||$C$L43||,NTC        ; [CPU_ALU] |970| 
        ; branchcc occurs ; [] |970| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 976,column 5,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||pi_iq||)+6 ; [CPU_FPU] |976| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 

        MOV32     R6H,@$BLOCKED(||FCL_params||)+6 ; [CPU_FPU] |984| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |976| 

        MPYF32    R5H,R0H,R4H           ; [CPU_FPU] |984| 
||      MOV32     R7H,@$BLOCKED(||FCL_params||) ; [CPU_FPU] |976| 

        MOVW      DP,#||pwmCompA||      ; [CPU_ARAU] 
        SUBF32    R1H,R3H,R1H           ; [CPU_FPU] |976| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 984,column 5,is_stmt,isa 0
        ADDF32    R3H,R2H,R5H           ; [CPU_FPU] |984| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 976,column 5,is_stmt,isa 0
        MPYF32    R2H,R7H,R1H           ; [CPU_FPU] |976| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 984,column 5,is_stmt,isa 0
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |984| 
        MOVL      XAR6,@||pwmCompA||    ; [CPU_ALU] |984| 
        SUBF32    R0H,R3H,R2H           ; [CPU_FPU] |984| 
        MOVL      XAR5,@||pwmCompB||    ; [CPU_ALU] |984| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |984| 
        MOV32     R4H,R2H               ; [CPU_FPU] |984| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |984| 
        MOV32     R5H,R2H               ; [CPU_FPU] |984| 
        MAXF32    R4H,R3H               ; [CPU_FPU] |984| 
        MINF32    R5H,R3H               ; [CPU_FPU] |984| 
        MAXF32    R4H,R1H               ; [CPU_FPU] |984| 
        MINF32    R5H,R1H               ; [CPU_FPU] |984| 
        ADDF32    R0H,R5H,R4H           ; [CPU_FPU] |984| 
        MOVL      XAR4,@||pwmCompC||    ; [CPU_ALU] |984| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |984| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |984| 
        SPM       #0                    ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |984| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |984| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |984| 
        F32TOUI32 R2H,R2H               ; [CPU_FPU] |984| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |984| 
        F32TOUI32 R1H,R3H               ; [CPU_FPU] |984| 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |984| 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |984| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |984| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |984| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 985,column 5,is_stmt,isa 0
        MOV       @||FCL_cycleCount||,*(0:0x4004) ; [CPU_ALU] |985| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x3db)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".TI.ramfunc:FCL_resetController"
	.clink
	.global	||FCL_resetController||

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$232, DW_AT_low_pc(||FCL_resetController||)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_linkage_name("FCL_resetController")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$232, DW_AT_decl_line(0x178)
	.dwattr $C$DW$232, DW_AT_decl_column(0x06)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 377,column 1,is_stmt,address ||FCL_resetController||,isa 0

	.dwfde $C$DW$CIE, ||FCL_resetController||

;***************************************************************
;* FNAME: FCL_resetController           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||FCL_resetController||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/fcl_cpu_code.c",line 378,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |378| 
        MOVW      DP,#||pi_id||+6       ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     @$BLOCKED(||pi_id||)+6,R0H ; [CPU_FPU] |378| 
        MOV32     @$BLOCKED(||pi_id||)+8,R0H ; [CPU_FPU] |378| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/fcl_cpu_code.c",line 380,column 5,is_stmt,isa 0
        ZERO      R4H                   ; [CPU_FPU] |380| 
        MOVW      DP,#||pi_iq||+6       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 381,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |381| 
        ZERO      R2H                   ; [CPU_FPU] |381| 
        ZERO      R1H                   ; [CPU_FPU] |381| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 380,column 5,is_stmt,isa 0
        ZERO      R5H                   ; [CPU_FPU] |380| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../sources/fcl_cpu_code.c",line 379,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+6,R0H ; [CPU_FPU] |379| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 380,column 5,is_stmt,isa 0
        ZERO      R6H                   ; [CPU_FPU] |380| 
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../sources/fcl_cpu_code.c",line 379,column 5,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |379| 
        MOV32     @$BLOCKED(||pi_iq||)+8,R7H ; [CPU_FPU] |379| 
        MOVW      DP,#||D_cpu||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 380,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||D_cpu||)+10,R6H ; [CPU_FPU] |380| 
        MOV32     @$BLOCKED(||D_cpu||)+8,R5H ; [CPU_FPU] |380| 
        MOV32     @$BLOCKED(||D_cpu||)+12,R4H ; [CPU_FPU] |380| 
        MOVW      DP,#||Q_cla||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 381,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||Q_cla||)+10,R3H ; [CPU_FPU] |381| 
        MOV32     @$BLOCKED(||Q_cla||)+8,R2H ; [CPU_FPU] |381| 
        MOV32     @$BLOCKED(||Q_cla||)+12,R1H ; [CPU_FPU] |381| 
        MOVW      DP,#||speedWePrev||   ; [CPU_ARAU] 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
	.dwpsn	file "../sources/fcl_cpu_code.c",line 383,column 5,is_stmt,isa 0
        MOV32     @||speedWePrev||,R0H  ; [CPU_FPU] |383| 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x180)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text:FCL_initQEP"
	.clink
	.global	||FCL_initQEP||

$C$DW$234	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$234, DW_AT_name("FCL_initQEP")
	.dwattr $C$DW$234, DW_AT_low_pc(||FCL_initQEP||)
	.dwattr $C$DW$234, DW_AT_high_pc(0x00)
	.dwattr $C$DW$234, DW_AT_linkage_name("FCL_initQEP")
	.dwattr $C$DW$234, DW_AT_external
	.dwattr $C$DW$234, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$234, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$234, DW_AT_decl_column(0x06)
	.dwattr $C$DW$234, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 366,column 1,is_stmt,address ||FCL_initQEP||,isa 0

	.dwfde $C$DW$CIE, ||FCL_initQEP||
$C$DW$235	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$235, DW_AT_name("baseA")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FCL_initQEP                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FCL_initQEP||:
;* AL    assigned to baseA
$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("baseA")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||ClaQep||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 367,column 5,is_stmt,isa 0
        MOVL      @||ClaQep||,ACC       ; [CPU_ALU] |367| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$234, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$234, DW_AT_TI_end_line(0x172)
	.dwattr $C$DW$234, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$234

	.sect	".text:FCL_initPWM"
	.clink
	.global	||FCL_initPWM||

$C$DW$238	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$238, DW_AT_name("FCL_initPWM")
	.dwattr $C$DW$238, DW_AT_low_pc(||FCL_initPWM||)
	.dwattr $C$DW$238, DW_AT_high_pc(0x00)
	.dwattr $C$DW$238, DW_AT_linkage_name("FCL_initPWM")
	.dwattr $C$DW$238, DW_AT_external
	.dwattr $C$DW$238, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$238, DW_AT_decl_line(0x152)
	.dwattr $C$DW$238, DW_AT_decl_column(0x06)
	.dwattr $C$DW$238, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 339,column 1,is_stmt,address ||FCL_initPWM||,isa 0

	.dwfde $C$DW$CIE, ||FCL_initPWM||
$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_name("baseA")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg0]

$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("baseB")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_breg20 -4]

$C$DW$241	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$241, DW_AT_name("baseC")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: FCL_initPWM                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FCL_initPWM||:
;* AR6   assigned to $O$C1
;* AR5   assigned to $O$C2
;* AR4   assigned to $O$C3
;* AL    assigned to baseA
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("baseA")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg0]

;* AR7   assigned to baseB
$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("baseB")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to baseC
$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("baseC")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2398| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 339,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[4]          ; [CPU_ALU] |339| 
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |339| 
        MOVW      DP,#||pwmCompC||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 343,column 5,is_stmt,isa 0
        ADDB      ACC,#106              ; [CPU_ALU] |343| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        MOVL      XAR5,XAR7             ; [CPU_ALU] |2398| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 345,column 5,is_stmt,isa 0
        MOVL      XAR0,XAR6             ; [CPU_ALU] |345| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        ADDB      XAR4,#8               ; [CPU_ALU] |2398| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 343,column 5,is_stmt,isa 0
        MOVL      @||pwmCompA||,ACC     ; [CPU_FPU] |343| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |2398| 
        ADDB      XAR5,#8               ; [CPU_ALU] |2398| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 345,column 5,is_stmt,isa 0
        ADDB      XAR0,#106             ; [CPU_ALU] |345| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 344,column 5,is_stmt,isa 0
        ADDB      XAR7,#106             ; [CPU_ALU] |344| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        ADDB      XAR6,#8               ; [CPU_ALU] |2398| 
        OR        *+XAR5[0],#0x0010     ; [CPU_ALU] |2398| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 345,column 5,is_stmt,isa 0
        MOVL      @||pwmCompC||,XAR0    ; [CPU_ALU] |345| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 344,column 5,is_stmt,isa 0
        MOVL      @||pwmCompB||,XAR7    ; [CPU_ALU] |344| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2398,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0010     ; [CPU_ALU] |2398| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$238, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$238, DW_AT_TI_end_line(0x15c)
	.dwattr $C$DW$238, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$238

	.sect	".text:FCL_initADC"
	.clink
	.global	||FCL_initADC||

$C$DW$246	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$246, DW_AT_name("FCL_initADC")
	.dwattr $C$DW$246, DW_AT_low_pc(||FCL_initADC||)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_linkage_name("FCL_initADC")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$246, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$246, DW_AT_decl_column(0x06)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 353,column 1,is_stmt,address ||FCL_initADC||,isa 0

	.dwfde $C$DW$CIE, ||FCL_initADC||
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_name("resultBaseA")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg0]

$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("baseA_PPB")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg12]

$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_name("resultBaseB")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_breg20 -4]

$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_name("baseB_PPB")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg14]

$C$DW$251	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$251, DW_AT_name("basePhaseW")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: FCL_initADC                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FCL_initADC||:
;* AR6   assigned to resultBaseA
$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("resultBaseA")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to baseA_PPB
$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("baseA_PPB")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to baseB_PPB
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("baseB_PPB")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg14]

;* AL    assigned to basePhaseW
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("basePhaseW")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |353| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 358,column 5,is_stmt,isa 0
        MOV       ACC,AR4 << #1         ; [CPU_ALU] |358| 
        ORB       AL,#0x10              ; [CPU_ALU] |358| 
        MOVZ      AR7,AL                ; [CPU_ALU] |358| 
        MOVW      DP,#||curA_PPBRESULT|| ; [CPU_ARAU] 
        MOVL      ACC,XAR6              ; [CPU_ALU] |358| 
        ADDU      ACC,AR7               ; [CPU_ALU] |358| 
        MOVL      @||curA_PPBRESULT||,ACC ; [CPU_ALU] |358| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 359,column 5,is_stmt,isa 0
        MOV       ACC,AR5 << #1         ; [CPU_ALU] |359| 
        ORB       AL,#0x10              ; [CPU_ALU] |359| 
        MOVZ      AR7,AL                ; [CPU_ALU] |359| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 353,column 1,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |353| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 359,column 5,is_stmt,isa 0
        ADDU      ACC,AR7               ; [CPU_ALU] |359| 
        MOVL      @||curB_PPBRESULT||,ACC ; [CPU_ALU] |359| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 353,column 1,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |353| 
	.dwpsn	file "../sources/fcl_cpu_code.c",line 360,column 5,is_stmt,isa 0
        ADDB      ACC,#3                ; [CPU_ALU] |360| 
        MOVL      @||AdcIntFlag||,ACC   ; [CPU_ALU] |360| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$246, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x16b)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text:FCL_getSwVersion"
	.clink
	.global	||FCL_getSwVersion||

$C$DW$257	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$257, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$257, DW_AT_low_pc(||FCL_getSwVersion||)
	.dwattr $C$DW$257, DW_AT_high_pc(0x00)
	.dwattr $C$DW$257, DW_AT_linkage_name("FCL_getSwVersion")
	.dwattr $C$DW$257, DW_AT_external
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$257, DW_AT_decl_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$257, DW_AT_decl_line(0x300)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$257, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_cpu_code.c",line 769,column 1,is_stmt,address ||FCL_getSwVersion||,isa 0

	.dwfde $C$DW$CIE, ||FCL_getSwVersion||

;***************************************************************
;* FNAME: FCL_getSwVersion              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FCL_getSwVersion||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/fcl_cpu_code.c",line 773,column 5,is_stmt,isa 0
        MOVB      ACC,#7                ; [CPU_ALU] |773| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$257, DW_AT_TI_end_file("../sources/fcl_cpu_code.c")
	.dwattr $C$DW$257, DW_AT_TI_end_line(0x306)
	.dwattr $C$DW$257, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$257

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||FCL_cycleCount||
	.global	||expf||
	.global	||speed1||
	.global	||PieCtrlRegs||
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
	.group    "__relaxed_sqrtf", 1
	.gmember  ".text:__relaxed_sqrtf"
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

$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114

$C$DW$T$114	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$259, DW_AT_const_value(0x00)
	.dwattr $C$DW$259, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x111)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$260, DW_AT_const_value(0x02)
	.dwattr $C$DW$260, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x112)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$261, DW_AT_const_value(0x05)
	.dwattr $C$DW$261, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x113)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$262, DW_AT_const_value(0x07)
	.dwattr $C$DW$262, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x114)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$114

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116

$C$DW$T$116	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x01)
$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("ADC_PPB_NUMBER1")
	.dwattr $C$DW$263, DW_AT_const_value(0x00)
	.dwattr $C$DW$263, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x134)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("ADC_PPB_NUMBER2")
	.dwattr $C$DW$264, DW_AT_const_value(0x01)
	.dwattr $C$DW$264, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x135)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("ADC_PPB_NUMBER3")
	.dwattr $C$DW$265, DW_AT_const_value(0x02)
	.dwattr $C$DW$265, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x136)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("ADC_PPB_NUMBER4")
	.dwattr $C$DW$266, DW_AT_const_value(0x03)
	.dwattr $C$DW$266, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x137)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$116

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117
$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("ADC_PPBNumber")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$267	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$117)

$C$DW$T$118	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$267)

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$268	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$117)

$C$DW$T$119	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$268)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120

$C$DW$T$120	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x01)
$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$269, DW_AT_const_value(0x00)
	.dwattr $C$DW$269, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x40)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$270, DW_AT_const_value(0x01)
	.dwattr $C$DW$270, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x41)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$271, DW_AT_const_value(0x02)
	.dwattr $C$DW$271, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x42)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$120

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$121


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x14)
$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("ElecTheta")
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$272, DW_AT_decl_column(0x12)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$273, DW_AT_name("DirectionQep")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$273, DW_AT_decl_column(0x11)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$274, DW_AT_decl_column(0x12)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("Speed")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$275, DW_AT_decl_column(0x12)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$276, DW_AT_name("BaseRpm")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$276, DW_AT_decl_column(0x11)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("K1")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x30)
	.dwattr $C$DW$277, DW_AT_decl_column(0x12)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("K2")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x31)
	.dwattr $C$DW$278, DW_AT_decl_column(0x12)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("K3")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x32)
	.dwattr $C$DW$279, DW_AT_decl_column(0x12)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$280, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x33)
	.dwattr $C$DW$280, DW_AT_decl_column(0x10)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("Tmp")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x34)
	.dwattr $C$DW$281, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$122


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x0a)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("As")
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$282, DW_AT_decl_column(0x1e)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("Bs")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$283, DW_AT_decl_column(0x12)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("Cs")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$284, DW_AT_decl_column(0x12)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("Alpha")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$285, DW_AT_decl_column(0x12)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("Beta")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$286, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123
$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$123


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0e)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("Alpha")
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x29)
	.dwattr $C$DW$287, DW_AT_decl_column(0x1e)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("Beta")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$288, DW_AT_decl_column(0x12)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("Angle")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$289, DW_AT_decl_column(0x12)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("Ds")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$290, DW_AT_decl_column(0x12)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("Qs")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$291, DW_AT_decl_column(0x12)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("Sine")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$292, DW_AT_decl_column(0x12)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("Cosine")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$293, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("PARK")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$124


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x12)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("Ualpha")
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$294, DW_AT_decl_column(0x10)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("Ubeta")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$295, DW_AT_decl_column(0x10)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("Ta")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$296, DW_AT_decl_column(0x10)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("Tb")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$297, DW_AT_decl_column(0x10)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("Tc")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$298, DW_AT_decl_column(0x10)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("tmp1")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x30)
	.dwattr $C$DW$299, DW_AT_decl_column(0x10)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("tmp2")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x31)
	.dwattr $C$DW$300, DW_AT_decl_column(0x10)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("tmp3")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x32)
	.dwattr $C$DW$301, DW_AT_decl_column(0x10)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$302, DW_AT_name("VecSector")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x33)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125
$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$125


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x12)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("ElecTheta")
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$303, DW_AT_decl_column(0x0f)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("MechTheta")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$304, DW_AT_decl_column(0x0f)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$305, DW_AT_name("DirectionQep")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0f)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$306, DW_AT_name("QepPeriod")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0f)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x21)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0f)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$308, DW_AT_name("RawTheta")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x22)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0f)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("MechScaler")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x23)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0f)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$310, DW_AT_name("LineEncoder")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x24)
	.dwattr $C$DW$310, DW_AT_decl_column(0x0f)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$311, DW_AT_name("PolePairs")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x25)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0f)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$312, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x26)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0f)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$313, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x28)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("QEP")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$126


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x16)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("ref")
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x18)
	.dwattr $C$DW$314, DW_AT_decl_column(0x10)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("fbk")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x19)
	.dwattr $C$DW$315, DW_AT_decl_column(0x10)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("err")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$316, DW_AT_decl_column(0x10)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("out")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$317, DW_AT_decl_column(0x10)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("carryOver")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$318, DW_AT_decl_column(0x10)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("Kp")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$319, DW_AT_decl_column(0x10)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("Ki")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$320, DW_AT_decl_column(0x10)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("Kerr")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$321, DW_AT_decl_column(0x10)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("KerrOld")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x20)
	.dwattr $C$DW$322, DW_AT_decl_column(0x10)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("Umax")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x21)
	.dwattr $C$DW$323, DW_AT_decl_column(0x10)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("Umin")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x22)
	.dwattr $C$DW$324, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$31, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127
$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$127


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x0c)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("Freq")
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x25)
	.dwattr $C$DW$325, DW_AT_decl_column(0x1d)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x26)
	.dwattr $C$DW$326, DW_AT_decl_column(0x1d)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("Angle")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x27)
	.dwattr $C$DW$327, DW_AT_decl_column(0x1d)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("Gain")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x28)
	.dwattr $C$DW$328, DW_AT_decl_column(0x1d)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("Out")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x29)
	.dwattr $C$DW$329, DW_AT_decl_column(0x1d)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("Offset")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$330, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$128


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$331, DW_AT_name("ptr")
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$331, DW_AT_decl_column(0x20)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$332, DW_AT_name("pad")
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129
$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("CLA_QEP_PTR")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$129


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$333, DW_AT_name("ADCINT1")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x62)
	.dwattr $C$DW$333, DW_AT_decl_column(0x0c)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$334, DW_AT_name("ADCINT2")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x63)
	.dwattr $C$DW$334, DW_AT_decl_column(0x0c)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$335, DW_AT_name("ADCINT3")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x64)
	.dwattr $C$DW$335, DW_AT_decl_column(0x0c)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$336, DW_AT_name("ADCINT4")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x65)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0c)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$337, DW_AT_name("rsvd1")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$337, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x66)
	.dwattr $C$DW$337, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$338, DW_AT_name("all")
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0d)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$339, DW_AT_name("bit")
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$339, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$38, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$340	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$38)

$C$DW$T$130	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$340)

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131
$C$DW$T$131	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$131


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x22)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$341, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$341, DW_AT_decl_column(0x2e)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$342, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$342, DW_AT_decl_column(0x2e)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$343, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$343, DW_AT_decl_column(0x2e)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$344, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xde)
	.dwattr $C$DW$344, DW_AT_decl_column(0x2e)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$345, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$345, DW_AT_decl_column(0x2e)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$346, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$346, DW_AT_decl_column(0x2e)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$347, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$347, DW_AT_decl_column(0x2e)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$348, DW_AT_name("QUTMR")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$348, DW_AT_decl_column(0x2e)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$349, DW_AT_name("QUPRD")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$349, DW_AT_decl_column(0x2e)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$350, DW_AT_name("QWDTMR")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$350, DW_AT_decl_column(0x2e)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$351, DW_AT_name("QWDPRD")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$351, DW_AT_decl_column(0x2e)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$352, DW_AT_name("QDECCTL")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$352, DW_AT_decl_column(0x2e)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$353, DW_AT_name("QEPCTL")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$353, DW_AT_decl_column(0x2e)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$354, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$354, DW_AT_decl_column(0x2e)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$355, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$355, DW_AT_decl_column(0x2e)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$356, DW_AT_name("QEINT")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xea)
	.dwattr $C$DW$356, DW_AT_decl_column(0x2e)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$357, DW_AT_name("QFLG")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$357, DW_AT_decl_column(0x2e)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$358, DW_AT_name("QCLR")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0xec)
	.dwattr $C$DW$358, DW_AT_decl_column(0x2e)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$359, DW_AT_name("QFRC")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0xed)
	.dwattr $C$DW$359, DW_AT_decl_column(0x2e)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$360, DW_AT_name("QEPSTS")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0xee)
	.dwattr $C$DW$360, DW_AT_decl_column(0x2e)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$361, DW_AT_name("QCTMR")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0xef)
	.dwattr $C$DW$361, DW_AT_decl_column(0x2e)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$362, DW_AT_name("QCPRD")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$362, DW_AT_decl_column(0x2e)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$363, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$363, DW_AT_decl_column(0x2e)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$364, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$364, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$40, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$365	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$40)

$C$DW$T$33	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$365)

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$34


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$366, DW_AT_name("ACK1")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x41)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$367, DW_AT_name("ACK2")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x42)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$368, DW_AT_name("ACK3")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x43)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$369, DW_AT_name("ACK4")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x44)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$370, DW_AT_name("ACK5")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x45)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$371, DW_AT_name("ACK6")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x46)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$372, DW_AT_name("ACK7")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x47)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0c)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$373, DW_AT_name("ACK8")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x48)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$374, DW_AT_name("ACK9")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x49)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$375, DW_AT_name("ACK10")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$376, DW_AT_name("ACK11")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$377, DW_AT_name("ACK12")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$378, DW_AT_name("rsvd1")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$378, DW_AT_bit_size(0x04)
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$41, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$379, DW_AT_name("all")
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x51)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0d)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$380, DW_AT_name("bit")
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x52)
	.dwattr $C$DW$380, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$381, DW_AT_name("ENPIE")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x37)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$382, DW_AT_name("PIEVECT")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$382, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x38)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$383, DW_AT_name("all")
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0d)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$384, DW_AT_name("bit")
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$384, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$44, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("PIEIER10_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$385, DW_AT_name("INTx1")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x206)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$386, DW_AT_name("INTx2")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x207)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$387, DW_AT_name("INTx3")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x208)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$388, DW_AT_name("INTx4")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x209)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$389, DW_AT_name("INTx5")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$390, DW_AT_name("INTx6")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$391, DW_AT_name("INTx7")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x20c)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$392, DW_AT_name("INTx8")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$393, DW_AT_name("INTx9")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0c)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$394, DW_AT_name("INTx10")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x20f)
	.dwattr $C$DW$394, DW_AT_decl_column(0x0c)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$395, DW_AT_name("INTx11")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x210)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$396, DW_AT_name("INTx12")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x211)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$397, DW_AT_name("INTx13")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x212)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$398, DW_AT_name("INTx14")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x213)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$399, DW_AT_name("INTx15")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x214)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$400, DW_AT_name("INTx16")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x215)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x205)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("PIEIER10_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$401, DW_AT_name("all")
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x219)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0d)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$402, DW_AT_name("bit")
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$402, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$46, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x218)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("PIEIER11_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$403, DW_AT_name("INTx1")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x236)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$404, DW_AT_name("INTx2")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x237)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$405, DW_AT_name("INTx3")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x238)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$406, DW_AT_name("INTx4")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x239)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0c)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$407, DW_AT_name("INTx5")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0c)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$408, DW_AT_name("INTx6")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$409, DW_AT_name("INTx7")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0c)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$410, DW_AT_name("INTx8")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$411, DW_AT_name("INTx9")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$412, DW_AT_name("INTx10")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$413, DW_AT_name("INTx11")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x240)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$414, DW_AT_name("INTx12")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x241)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$415, DW_AT_name("INTx13")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x242)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0c)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$416, DW_AT_name("INTx14")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x243)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$417, DW_AT_name("INTx15")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x244)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0c)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$418, DW_AT_name("INTx16")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x245)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$47, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x235)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("PIEIER11_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$419, DW_AT_name("all")
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x249)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0d)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$420, DW_AT_name("bit")
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$420, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$48, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("PIEIER12_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$421, DW_AT_name("INTx1")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x266)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$422, DW_AT_name("INTx2")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x267)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$423, DW_AT_name("INTx3")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x268)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$424, DW_AT_name("INTx4")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x269)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$425, DW_AT_name("INTx5")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0c)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$426, DW_AT_name("INTx6")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x26b)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0c)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$427, DW_AT_name("INTx7")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0c)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$428, DW_AT_name("INTx8")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$429, DW_AT_name("INTx9")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$430, DW_AT_name("INTx10")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x26f)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$431, DW_AT_name("INTx11")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x270)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$432, DW_AT_name("INTx12")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x271)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$433, DW_AT_name("INTx13")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x272)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0c)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$434, DW_AT_name("INTx14")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x273)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$435, DW_AT_name("INTx15")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x274)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$436, DW_AT_name("INTx16")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x275)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x265)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("PIEIER12_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$437, DW_AT_name("all")
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x279)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0d)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$438, DW_AT_name("bit")
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$438, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$50, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x278)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("PIEIER1_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$439, DW_AT_name("INTx1")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x56)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$440, DW_AT_name("INTx2")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x57)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$441, DW_AT_name("INTx3")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x58)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$442, DW_AT_name("INTx4")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x59)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$443, DW_AT_name("INTx5")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$444, DW_AT_name("INTx6")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$445, DW_AT_name("INTx7")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0c)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$446, DW_AT_name("INTx8")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0c)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$447, DW_AT_name("INTx9")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0c)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$448, DW_AT_name("INTx10")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$449, DW_AT_name("INTx11")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x60)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0c)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$450, DW_AT_name("INTx12")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x61)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0c)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$451, DW_AT_name("INTx13")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x62)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$452, DW_AT_name("INTx14")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x63)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$453, DW_AT_name("INTx15")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x64)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$454, DW_AT_name("INTx16")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x65)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("PIEIER1_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$455, DW_AT_name("all")
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x69)
	.dwattr $C$DW$455, DW_AT_decl_column(0x0d)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$456, DW_AT_name("bit")
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$456, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$52, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("PIEIER2_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$457, DW_AT_name("INTx1")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x86)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0c)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$458, DW_AT_name("INTx2")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x87)
	.dwattr $C$DW$458, DW_AT_decl_column(0x0c)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$459, DW_AT_name("INTx3")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x88)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0c)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$460, DW_AT_name("INTx4")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x89)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0c)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$461, DW_AT_name("INTx5")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0c)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$462, DW_AT_name("INTx6")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$462, DW_AT_decl_column(0x0c)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$463, DW_AT_name("INTx7")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0c)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$464, DW_AT_name("INTx8")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0c)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$465, DW_AT_name("INTx9")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0c)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$466, DW_AT_name("INTx10")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0c)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$467, DW_AT_name("INTx11")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x90)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0c)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$468, DW_AT_name("INTx12")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x91)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$469, DW_AT_name("INTx13")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x92)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0c)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$470, DW_AT_name("INTx14")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x93)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0c)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$471, DW_AT_name("INTx15")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x94)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0c)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$472, DW_AT_name("INTx16")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x95)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("PIEIER2_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$473, DW_AT_name("all")
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x99)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0d)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$474, DW_AT_name("bit")
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$474, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$54, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("PIEIER3_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$475, DW_AT_name("INTx1")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0c)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$476, DW_AT_name("INTx2")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0c)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$477, DW_AT_name("INTx3")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$478, DW_AT_name("INTx4")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$479, DW_AT_name("INTx5")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0xba)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$480, DW_AT_name("INTx6")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0c)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$481, DW_AT_name("INTx7")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0c)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$482, DW_AT_name("INTx8")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$482, DW_AT_decl_column(0x0c)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$483, DW_AT_name("INTx9")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0c)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$484, DW_AT_name("INTx10")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0c)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$485, DW_AT_name("INTx11")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0c)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$486, DW_AT_name("INTx12")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0c)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$487, DW_AT_name("INTx13")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0c)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$488, DW_AT_name("INTx14")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$489, DW_AT_name("INTx15")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$490, DW_AT_name("INTx16")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("PIEIER3_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$491, DW_AT_name("all")
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0d)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$492, DW_AT_name("bit")
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0xca)
	.dwattr $C$DW$492, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$56, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("PIEIER4_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$493, DW_AT_name("INTx1")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0c)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$494, DW_AT_name("INTx2")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0c)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$495, DW_AT_name("INTx3")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0c)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$496, DW_AT_name("INTx4")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$496, DW_AT_decl_column(0x0c)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$497, DW_AT_name("INTx5")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0xea)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0c)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$498, DW_AT_name("INTx6")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0c)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$499, DW_AT_name("INTx7")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0xec)
	.dwattr $C$DW$499, DW_AT_decl_column(0x0c)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$500, DW_AT_name("INTx8")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0xed)
	.dwattr $C$DW$500, DW_AT_decl_column(0x0c)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$501, DW_AT_name("INTx9")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0xee)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0c)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$502, DW_AT_name("INTx10")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0xef)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0c)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$503, DW_AT_name("INTx11")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0c)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$504, DW_AT_name("INTx12")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0c)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$505, DW_AT_name("INTx13")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0c)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$506, DW_AT_name("INTx14")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0c)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$507, DW_AT_name("INTx15")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0c)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$508, DW_AT_name("INTx16")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("PIEIER4_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$509, DW_AT_name("all")
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0d)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$510, DW_AT_name("bit")
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$510, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$58, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("PIEIER5_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$511, DW_AT_name("INTx1")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x116)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$512, DW_AT_name("INTx2")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x117)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0c)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$513, DW_AT_name("INTx3")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x118)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0c)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$514, DW_AT_name("INTx4")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x119)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0c)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$515, DW_AT_name("INTx5")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$516, DW_AT_name("INTx6")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0c)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$517, DW_AT_name("INTx7")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0c)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$518, DW_AT_name("INTx8")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$518, DW_AT_decl_column(0x0c)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$519, DW_AT_name("INTx9")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$520, DW_AT_name("INTx10")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$521, DW_AT_name("INTx11")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x120)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$522, DW_AT_name("INTx12")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x121)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$523, DW_AT_name("INTx13")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x122)
	.dwattr $C$DW$523, DW_AT_decl_column(0x0c)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$524, DW_AT_name("INTx14")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x123)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0c)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$525, DW_AT_name("INTx15")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x124)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0c)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$526, DW_AT_name("INTx16")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x125)
	.dwattr $C$DW$526, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$59, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("PIEIER5_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$527, DW_AT_name("all")
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x129)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0d)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$528, DW_AT_name("bit")
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$528, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$60, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x128)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("PIEIER6_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$529, DW_AT_name("INTx1")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x146)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0c)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$530, DW_AT_name("INTx2")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x147)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0c)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$531, DW_AT_name("INTx3")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x148)
	.dwattr $C$DW$531, DW_AT_decl_column(0x0c)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$532, DW_AT_name("INTx4")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x149)
	.dwattr $C$DW$532, DW_AT_decl_column(0x0c)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$533, DW_AT_name("INTx5")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0c)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$534, DW_AT_name("INTx6")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0c)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$535, DW_AT_name("INTx7")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0c)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$536, DW_AT_name("INTx8")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$536, DW_AT_decl_column(0x0c)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$537, DW_AT_name("INTx9")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0c)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$538, DW_AT_name("INTx10")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0c)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$539, DW_AT_name("INTx11")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x150)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0c)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$540, DW_AT_name("INTx12")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x151)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0c)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$541, DW_AT_name("INTx13")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x152)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0c)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$542, DW_AT_name("INTx14")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x153)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0c)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$543, DW_AT_name("INTx15")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x154)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0c)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$544, DW_AT_name("INTx16")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x155)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$61, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x145)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("PIEIER6_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$545, DW_AT_name("all")
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x159)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0d)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$546, DW_AT_name("bit")
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$546, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$62, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("PIEIER7_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$547, DW_AT_name("INTx1")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x176)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0c)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$548, DW_AT_name("INTx2")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x177)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0c)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$549, DW_AT_name("INTx3")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x178)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0c)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$550, DW_AT_name("INTx4")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x179)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0c)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$551, DW_AT_name("INTx5")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0c)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$552, DW_AT_name("INTx6")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0c)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$553, DW_AT_name("INTx7")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0c)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$554, DW_AT_name("INTx8")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$555, DW_AT_name("INTx9")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$556, DW_AT_name("INTx10")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$557, DW_AT_name("INTx11")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x180)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$558, DW_AT_name("INTx12")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x181)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0c)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$559, DW_AT_name("INTx13")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x182)
	.dwattr $C$DW$559, DW_AT_decl_column(0x0c)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$560, DW_AT_name("INTx14")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x183)
	.dwattr $C$DW$560, DW_AT_decl_column(0x0c)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$561, DW_AT_name("INTx15")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x184)
	.dwattr $C$DW$561, DW_AT_decl_column(0x0c)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$562, DW_AT_name("INTx16")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x185)
	.dwattr $C$DW$562, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$63, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x175)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("PIEIER7_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$563, DW_AT_name("all")
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x189)
	.dwattr $C$DW$563, DW_AT_decl_column(0x0d)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$564, DW_AT_name("bit")
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$564, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$64, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("PIEIER8_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$565, DW_AT_name("INTx1")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$565, DW_AT_decl_column(0x0c)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$566, DW_AT_name("INTx2")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$566, DW_AT_decl_column(0x0c)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$567, DW_AT_name("INTx3")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$567, DW_AT_decl_column(0x0c)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$568, DW_AT_name("INTx4")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$568, DW_AT_decl_column(0x0c)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$569, DW_AT_name("INTx5")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$569, DW_AT_decl_column(0x0c)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$570, DW_AT_name("INTx6")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$570, DW_AT_decl_column(0x0c)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$571, DW_AT_name("INTx7")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$571, DW_AT_decl_column(0x0c)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$572, DW_AT_name("INTx8")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$572, DW_AT_decl_column(0x0c)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$573, DW_AT_name("INTx9")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$573, DW_AT_decl_column(0x0c)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$574, DW_AT_name("INTx10")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$574, DW_AT_decl_column(0x0c)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$575, DW_AT_name("INTx11")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$575, DW_AT_decl_column(0x0c)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$576, DW_AT_name("INTx12")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$576, DW_AT_decl_column(0x0c)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$577, DW_AT_name("INTx13")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$577, DW_AT_decl_column(0x0c)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$578, DW_AT_name("INTx14")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$578, DW_AT_decl_column(0x0c)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$579, DW_AT_name("INTx15")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$579, DW_AT_decl_column(0x0c)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$580, DW_AT_name("INTx16")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$580, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$65, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("PIEIER8_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$581, DW_AT_name("all")
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$581, DW_AT_decl_column(0x0d)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$582, DW_AT_name("bit")
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$582, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$66, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("PIEIER9_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$583, DW_AT_name("INTx1")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0c)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$584, DW_AT_name("INTx2")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$584, DW_AT_decl_column(0x0c)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$585, DW_AT_name("INTx3")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$585, DW_AT_decl_column(0x0c)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$586, DW_AT_name("INTx4")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0c)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$587, DW_AT_name("INTx5")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0c)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$588, DW_AT_name("INTx6")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0c)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$589, DW_AT_name("INTx7")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0c)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$590, DW_AT_name("INTx8")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0c)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$591, DW_AT_name("INTx9")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0c)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$592, DW_AT_name("INTx10")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0c)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$593, DW_AT_name("INTx11")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0c)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$594, DW_AT_name("INTx12")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0c)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$595, DW_AT_name("INTx13")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0c)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$596, DW_AT_name("INTx14")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0c)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$597, DW_AT_name("INTx15")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0c)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$598, DW_AT_name("INTx16")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$67, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("PIEIER9_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$599, DW_AT_name("all")
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0d)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$600, DW_AT_name("bit")
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$600, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$68, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("PIEIFR10_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$601, DW_AT_name("INTx1")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0c)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$602, DW_AT_name("INTx2")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0c)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$603, DW_AT_name("INTx3")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x220)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0c)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$604, DW_AT_name("INTx4")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x221)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0c)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$605, DW_AT_name("INTx5")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x222)
	.dwattr $C$DW$605, DW_AT_decl_column(0x0c)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$606, DW_AT_name("INTx6")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x223)
	.dwattr $C$DW$606, DW_AT_decl_column(0x0c)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$607, DW_AT_name("INTx7")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x224)
	.dwattr $C$DW$607, DW_AT_decl_column(0x0c)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$608, DW_AT_name("INTx8")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x225)
	.dwattr $C$DW$608, DW_AT_decl_column(0x0c)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$609, DW_AT_name("INTx9")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x226)
	.dwattr $C$DW$609, DW_AT_decl_column(0x0c)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$610, DW_AT_name("INTx10")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x227)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$611, DW_AT_name("INTx11")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x228)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$612, DW_AT_name("INTx12")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x229)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$613, DW_AT_name("INTx13")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$614, DW_AT_name("INTx14")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$615, DW_AT_name("INTx15")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0c)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$616, DW_AT_name("INTx16")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$616, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$69, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("PIEIFR10_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$617, DW_AT_name("all")
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x231)
	.dwattr $C$DW$617, DW_AT_decl_column(0x0d)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$618, DW_AT_name("bit")
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x232)
	.dwattr $C$DW$618, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x230)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("PIEIFR11_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$619, DW_AT_name("INTx1")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$619, DW_AT_decl_column(0x0c)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$620, DW_AT_name("INTx2")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$620, DW_AT_decl_column(0x0c)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$621, DW_AT_name("INTx3")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x250)
	.dwattr $C$DW$621, DW_AT_decl_column(0x0c)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$622, DW_AT_name("INTx4")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x251)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0c)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$623, DW_AT_name("INTx5")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x252)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0c)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$624, DW_AT_name("INTx6")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x253)
	.dwattr $C$DW$624, DW_AT_decl_column(0x0c)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$625, DW_AT_name("INTx7")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x254)
	.dwattr $C$DW$625, DW_AT_decl_column(0x0c)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$626, DW_AT_name("INTx8")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x255)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0c)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$627, DW_AT_name("INTx9")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x256)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0c)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$628, DW_AT_name("INTx10")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x257)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0c)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$629, DW_AT_name("INTx11")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x258)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0c)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$630, DW_AT_name("INTx12")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x259)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0c)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$631, DW_AT_name("INTx13")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0c)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$632, DW_AT_name("INTx14")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0c)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$633, DW_AT_name("INTx15")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$633, DW_AT_decl_column(0x0c)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$634, DW_AT_name("INTx16")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$634, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$71, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("PIEIFR11_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$635, DW_AT_name("all")
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x261)
	.dwattr $C$DW$635, DW_AT_decl_column(0x0d)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$636, DW_AT_name("bit")
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x262)
	.dwattr $C$DW$636, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x260)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("PIEIFR12_BITS")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$637, DW_AT_name("INTx1")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$637, DW_AT_decl_column(0x0c)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$638, DW_AT_name("INTx2")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0c)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$639, DW_AT_name("INTx3")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x280)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0c)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$640, DW_AT_name("INTx4")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x281)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0c)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$641, DW_AT_name("INTx5")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x282)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0c)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$642, DW_AT_name("INTx6")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x283)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0c)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$643, DW_AT_name("INTx7")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x284)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0c)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$644, DW_AT_name("INTx8")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x285)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$645, DW_AT_name("INTx9")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x286)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$646, DW_AT_name("INTx10")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x287)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0c)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$647, DW_AT_name("INTx11")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x288)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0c)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$648, DW_AT_name("INTx12")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x289)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$649, DW_AT_name("INTx13")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$650, DW_AT_name("INTx14")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x28b)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$651, DW_AT_name("INTx15")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$652, DW_AT_name("INTx16")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x28d)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$73, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x27d)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_name("PIEIFR12_REG")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$653, DW_AT_name("all")
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x291)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0d)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$654, DW_AT_name("bit")
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x292)
	.dwattr $C$DW$654, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x290)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("PIEIFR1_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$655, DW_AT_name("INTx1")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$656, DW_AT_name("INTx2")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$657, DW_AT_name("INTx3")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x70)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0c)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$658, DW_AT_name("INTx4")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x71)
	.dwattr $C$DW$658, DW_AT_decl_column(0x0c)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$659, DW_AT_name("INTx5")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x72)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$660, DW_AT_name("INTx6")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x73)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$661, DW_AT_name("INTx7")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x74)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$662, DW_AT_name("INTx8")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x75)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$663, DW_AT_name("INTx9")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x76)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$664, DW_AT_name("INTx10")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x77)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$665, DW_AT_name("INTx11")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x78)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$666, DW_AT_name("INTx12")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x79)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$667, DW_AT_name("INTx13")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$668, DW_AT_name("INTx14")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$669, DW_AT_name("INTx15")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$670, DW_AT_name("INTx16")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$75, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("PIEIFR1_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$671, DW_AT_name("all")
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x81)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0d)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$672, DW_AT_name("bit")
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x82)
	.dwattr $C$DW$672, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$76, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("PIEIFR2_BITS")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$673, DW_AT_name("INTx1")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0c)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$674, DW_AT_name("INTx2")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$675, DW_AT_name("INTx3")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$676, DW_AT_name("INTx4")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0c)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$677, DW_AT_name("INTx5")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$678, DW_AT_name("INTx6")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$679, DW_AT_name("INTx7")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$680, DW_AT_name("INTx8")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$681, DW_AT_name("INTx9")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$682, DW_AT_name("INTx10")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$683, DW_AT_name("INTx11")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$684, DW_AT_name("INTx12")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$685, DW_AT_name("INTx13")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$686, DW_AT_name("INTx14")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0xab)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$687, DW_AT_name("INTx15")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0xac)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$688, DW_AT_name("INTx16")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0xad)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$77, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$78, DW_AT_name("PIEIFR2_REG")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$689, DW_AT_name("all")
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0d)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$690, DW_AT_name("bit")
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$690, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$78, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("PIEIFR3_BITS")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$691, DW_AT_name("INTx1")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0xce)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$692, DW_AT_name("INTx2")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$693, DW_AT_name("INTx3")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$694, DW_AT_name("INTx4")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$695, DW_AT_name("INTx5")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$696, DW_AT_name("INTx6")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$697, DW_AT_name("INTx7")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0c)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$698, DW_AT_name("INTx8")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$698, DW_AT_decl_column(0x0c)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$699, DW_AT_name("INTx9")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$700, DW_AT_name("INTx10")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0c)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$701, DW_AT_name("INTx11")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$701, DW_AT_decl_column(0x0c)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$702, DW_AT_name("INTx12")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0c)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$703, DW_AT_name("INTx13")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0xda)
	.dwattr $C$DW$703, DW_AT_decl_column(0x0c)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$704, DW_AT_name("INTx14")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0c)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$705, DW_AT_name("INTx15")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$706, DW_AT_name("INTx16")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$79, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$80, DW_AT_name("PIEIFR3_REG")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$707, DW_AT_name("all")
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0d)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$708, DW_AT_name("bit")
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$708, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$80, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("PIEIFR4_BITS")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$709, DW_AT_name("INTx1")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$710, DW_AT_name("INTx2")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0xff)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0c)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$711, DW_AT_name("INTx3")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x100)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0c)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$712, DW_AT_name("INTx4")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x101)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0c)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$713, DW_AT_name("INTx5")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x102)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0c)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$714, DW_AT_name("INTx6")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x103)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0c)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$715, DW_AT_name("INTx7")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x104)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0c)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$716, DW_AT_name("INTx8")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x105)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$717, DW_AT_name("INTx9")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x106)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$718, DW_AT_name("INTx10")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x107)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$719, DW_AT_name("INTx11")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x108)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$720, DW_AT_name("INTx12")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x109)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$721, DW_AT_name("INTx13")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$722, DW_AT_name("INTx14")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$723, DW_AT_name("INTx15")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$724, DW_AT_name("INTx16")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$81, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$82, DW_AT_name("PIEIFR4_REG")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$725, DW_AT_name("all")
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x111)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0d)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$726, DW_AT_name("bit")
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x112)
	.dwattr $C$DW$726, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$82, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("PIEIFR5_BITS")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$727, DW_AT_name("INTx1")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$728, DW_AT_name("INTx2")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0c)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$729, DW_AT_name("INTx3")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x130)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0c)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$730, DW_AT_name("INTx4")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x131)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0c)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$731, DW_AT_name("INTx5")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x132)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0c)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$732, DW_AT_name("INTx6")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x133)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$733, DW_AT_name("INTx7")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x134)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$734, DW_AT_name("INTx8")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x135)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$735, DW_AT_name("INTx9")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x136)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0c)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$736, DW_AT_name("INTx10")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x137)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0c)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$737, DW_AT_name("INTx11")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x138)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$738, DW_AT_name("INTx12")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x139)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$739, DW_AT_name("INTx13")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$740, DW_AT_name("INTx14")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$741, DW_AT_name("INTx15")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0c)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$742, DW_AT_name("INTx16")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$83, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$84, DW_AT_name("PIEIFR5_REG")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$743, DW_AT_name("all")
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x141)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0d)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$744, DW_AT_name("bit")
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x142)
	.dwattr $C$DW$744, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$84, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_name("PIEIFR6_BITS")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$745, DW_AT_name("INTx1")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0c)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$746, DW_AT_name("INTx2")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$747, DW_AT_name("INTx3")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x160)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$748, DW_AT_name("INTx4")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x161)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0c)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$749, DW_AT_name("INTx5")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x162)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0c)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$750, DW_AT_name("INTx6")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x163)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$751, DW_AT_name("INTx7")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x164)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0c)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$752, DW_AT_name("INTx8")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x165)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0c)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$753, DW_AT_name("INTx9")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x166)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0c)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$754, DW_AT_name("INTx10")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x167)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$755, DW_AT_name("INTx11")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x168)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0c)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$756, DW_AT_name("INTx12")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x169)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0c)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$757, DW_AT_name("INTx13")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0c)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$758, DW_AT_name("INTx14")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0c)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$759, DW_AT_name("INTx15")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0c)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$760, DW_AT_name("INTx16")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$85, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$86, DW_AT_name("PIEIFR6_REG")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$761, DW_AT_name("all")
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x171)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0d)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$762, DW_AT_name("bit")
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x172)
	.dwattr $C$DW$762, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$86, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x170)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("PIEIFR7_BITS")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$763, DW_AT_name("INTx1")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0c)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$764, DW_AT_name("INTx2")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0c)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$765, DW_AT_name("INTx3")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x190)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0c)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$766, DW_AT_name("INTx4")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x191)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0c)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$767, DW_AT_name("INTx5")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x192)
	.dwattr $C$DW$767, DW_AT_decl_column(0x0c)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$768, DW_AT_name("INTx6")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x193)
	.dwattr $C$DW$768, DW_AT_decl_column(0x0c)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$769, DW_AT_name("INTx7")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x194)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0c)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$770, DW_AT_name("INTx8")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x195)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0c)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$771, DW_AT_name("INTx9")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x196)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0c)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$772, DW_AT_name("INTx10")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x197)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0c)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$773, DW_AT_name("INTx11")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x198)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0c)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$774, DW_AT_name("INTx12")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x199)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0c)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$775, DW_AT_name("INTx13")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$776, DW_AT_name("INTx14")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0c)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$777, DW_AT_name("INTx15")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0c)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$778, DW_AT_name("INTx16")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$87, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$88, DW_AT_name("PIEIFR7_REG")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$779, DW_AT_name("all")
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0d)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$780, DW_AT_name("bit")
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$780, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$88, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("PIEIFR8_BITS")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$781, DW_AT_name("INTx1")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0c)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$782, DW_AT_name("INTx2")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0c)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$783, DW_AT_name("INTx3")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$783, DW_AT_decl_column(0x0c)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$784, DW_AT_name("INTx4")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$784, DW_AT_bit_size(0x01)
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0c)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$785, DW_AT_name("INTx5")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0c)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$786, DW_AT_name("INTx6")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0c)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$787, DW_AT_name("INTx7")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0c)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$788, DW_AT_name("INTx8")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0c)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$789, DW_AT_name("INTx9")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0c)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$790, DW_AT_name("INTx10")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0c)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$791, DW_AT_name("INTx11")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0c)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$792, DW_AT_name("INTx12")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0c)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$793, DW_AT_name("INTx13")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0c)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$794, DW_AT_name("INTx14")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0c)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$795, DW_AT_name("INTx15")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0c)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$796, DW_AT_name("INTx16")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$89, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90

$C$DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$90, DW_AT_name("PIEIFR8_REG")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$797, DW_AT_name("all")
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0d)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$798, DW_AT_name("bit")
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$798, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$90, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$90

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$91, DW_AT_name("PIEIFR9_BITS")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$799, DW_AT_name("INTx1")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0c)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$800, DW_AT_name("INTx2")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0c)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$801, DW_AT_name("INTx3")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0c)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$802, DW_AT_name("INTx4")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0c)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$803, DW_AT_name("INTx5")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0c)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$804, DW_AT_name("INTx6")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0c)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$805, DW_AT_name("INTx7")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0c)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$806, DW_AT_name("INTx8")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0c)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$807, DW_AT_name("INTx9")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0c)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$808, DW_AT_name("INTx10")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0c)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$809, DW_AT_name("INTx11")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0c)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$810, DW_AT_name("INTx12")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0c)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$811, DW_AT_name("INTx13")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0c)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$812, DW_AT_name("INTx14")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0c)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$813, DW_AT_name("INTx15")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0c)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$814, DW_AT_name("INTx16")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$91, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$92, DW_AT_name("PIEIFR9_REG")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$815, DW_AT_name("all")
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x201)
	.dwattr $C$DW$815, DW_AT_decl_column(0x0d)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$816, DW_AT_name("bit")
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x202)
	.dwattr $C$DW$816, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$92, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x200)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x1a)
$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$817, DW_AT_name("PIECTRL")
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x296)
	.dwattr $C$DW$817, DW_AT_decl_column(0x2e)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$818, DW_AT_name("PIEACK")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x297)
	.dwattr $C$DW$818, DW_AT_decl_column(0x2e)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$819, DW_AT_name("PIEIER1")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x298)
	.dwattr $C$DW$819, DW_AT_decl_column(0x2e)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$820, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x299)
	.dwattr $C$DW$820, DW_AT_decl_column(0x2e)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$821, DW_AT_name("PIEIER2")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$821, DW_AT_decl_column(0x2e)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$822, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$822, DW_AT_decl_column(0x2e)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$823, DW_AT_name("PIEIER3")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$823, DW_AT_decl_column(0x2e)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$824, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$824, DW_AT_decl_column(0x2e)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$825, DW_AT_name("PIEIER4")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$825, DW_AT_decl_column(0x2e)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$826, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$826, DW_AT_decl_column(0x2e)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$827, DW_AT_name("PIEIER5")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$827, DW_AT_decl_column(0x2e)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$828, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0x2a1)
	.dwattr $C$DW$828, DW_AT_decl_column(0x2e)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$829, DW_AT_name("PIEIER6")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x2a2)
	.dwattr $C$DW$829, DW_AT_decl_column(0x2e)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$830, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$830, DW_AT_decl_column(0x2e)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$831, DW_AT_name("PIEIER7")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x2a4)
	.dwattr $C$DW$831, DW_AT_decl_column(0x2e)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$832, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$832, DW_AT_decl_column(0x2e)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$833, DW_AT_name("PIEIER8")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x2a6)
	.dwattr $C$DW$833, DW_AT_decl_column(0x2e)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$834, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x2a7)
	.dwattr $C$DW$834, DW_AT_decl_column(0x2e)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$835, DW_AT_name("PIEIER9")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$835, DW_AT_decl_column(0x2e)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$836, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0x2a9)
	.dwattr $C$DW$836, DW_AT_decl_column(0x2e)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$837, DW_AT_name("PIEIER10")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0x2aa)
	.dwattr $C$DW$837, DW_AT_decl_column(0x2e)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$838, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$838, DW_AT_decl_column(0x2e)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$839, DW_AT_name("PIEIER11")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$839, DW_AT_decl_column(0x2e)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$840, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$840, DW_AT_decl_column(0x2e)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$841, DW_AT_name("PIEIER12")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x2ae)
	.dwattr $C$DW$841, DW_AT_decl_column(0x2e)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$842, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x2af)
	.dwattr $C$DW$842, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$93, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_piectrl.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x295)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133
$C$DW$843	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$93)

$C$DW$T$133	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$843)

	.dwendtag $C$DW$TU$133


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$844, DW_AT_name("UPPS")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$844, DW_AT_bit_size(0x04)
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0c)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$845, DW_AT_name("CCPS")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$845, DW_AT_bit_size(0x03)
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0c)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$846, DW_AT_name("rsvd1")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$846, DW_AT_bit_size(0x08)
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0c)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$847, DW_AT_name("CEN")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x60)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$94, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$94

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$848, DW_AT_name("all")
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x64)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0d)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$849, DW_AT_name("bit")
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x65)
	.dwattr $C$DW$849, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$95, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96

$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$850, DW_AT_name("INT")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0c)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$851, DW_AT_name("PCE")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0c)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$852, DW_AT_name("PHE")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0c)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$853, DW_AT_name("QDC")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0c)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$854, DW_AT_name("WTO")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0c)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$855, DW_AT_name("PCU")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0c)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$856, DW_AT_name("PCO")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0c)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$857, DW_AT_name("PCR")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0c)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$858, DW_AT_name("PCM")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0c)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$859, DW_AT_name("SEL")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0c)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$860, DW_AT_name("IEL")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0c)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$861, DW_AT_name("UTO")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0xab)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0c)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$862, DW_AT_name("rsvd1")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$862, DW_AT_bit_size(0x04)
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0xac)
	.dwattr $C$DW$862, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$96, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$96

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$863, DW_AT_name("all")
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$863, DW_AT_decl_column(0x0d)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$864, DW_AT_name("bit")
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$864, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$97, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$865, DW_AT_name("rsvd1")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$865, DW_AT_bit_size(0x05)
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x37)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0c)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$866, DW_AT_name("QSP")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x38)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0c)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$867, DW_AT_name("QIP")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$867, DW_AT_bit_size(0x01)
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x39)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0c)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$868, DW_AT_name("QBP")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$868, DW_AT_bit_size(0x01)
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0c)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$869, DW_AT_name("QAP")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0c)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$870, DW_AT_name("IGATE")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$870, DW_AT_bit_size(0x01)
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0c)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$871, DW_AT_name("SWAP")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$871, DW_AT_bit_size(0x01)
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0c)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$872, DW_AT_name("XCR")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$872, DW_AT_bit_size(0x01)
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$872, DW_AT_decl_column(0x0c)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$873, DW_AT_name("SPSEL")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$873, DW_AT_bit_size(0x01)
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$873, DW_AT_decl_column(0x0c)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$874, DW_AT_name("SOEN")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$874, DW_AT_bit_size(0x01)
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0x40)
	.dwattr $C$DW$874, DW_AT_decl_column(0x0c)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$875, DW_AT_name("QSRC")
	.dwattr $C$DW$875, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$875, DW_AT_bit_size(0x02)
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0x41)
	.dwattr $C$DW$875, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$98, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$98

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$876, DW_AT_name("all")
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0x45)
	.dwattr $C$DW$876, DW_AT_decl_column(0x0d)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$877, DW_AT_name("bit")
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0x46)
	.dwattr $C$DW$877, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$99, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$878, DW_AT_name("rsvd1")
	.dwattr $C$DW$878, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$878, DW_AT_bit_size(0x01)
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0x76)
	.dwattr $C$DW$878, DW_AT_decl_column(0x0c)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$879, DW_AT_name("PCE")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$879, DW_AT_bit_size(0x01)
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x77)
	.dwattr $C$DW$879, DW_AT_decl_column(0x0c)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$880, DW_AT_name("QPE")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$880, DW_AT_bit_size(0x01)
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x78)
	.dwattr $C$DW$880, DW_AT_decl_column(0x0c)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$881, DW_AT_name("QDC")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$881, DW_AT_bit_size(0x01)
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x79)
	.dwattr $C$DW$881, DW_AT_decl_column(0x0c)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$882, DW_AT_name("WTO")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$882, DW_AT_bit_size(0x01)
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$882, DW_AT_decl_column(0x0c)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$883, DW_AT_name("PCU")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$883, DW_AT_bit_size(0x01)
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$883, DW_AT_decl_column(0x0c)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$884, DW_AT_name("PCO")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$884, DW_AT_bit_size(0x01)
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$884, DW_AT_decl_column(0x0c)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$885, DW_AT_name("PCR")
	.dwattr $C$DW$885, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$885, DW_AT_bit_size(0x01)
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$885, DW_AT_decl_column(0x0c)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$886, DW_AT_name("PCM")
	.dwattr $C$DW$886, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$886, DW_AT_bit_size(0x01)
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$886, DW_AT_decl_column(0x0c)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$887, DW_AT_name("SEL")
	.dwattr $C$DW$887, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$887, DW_AT_bit_size(0x01)
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$887, DW_AT_decl_column(0x0c)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$888, DW_AT_name("IEL")
	.dwattr $C$DW$888, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$888, DW_AT_bit_size(0x01)
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0x80)
	.dwattr $C$DW$888, DW_AT_decl_column(0x0c)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$889, DW_AT_name("UTO")
	.dwattr $C$DW$889, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$889, DW_AT_bit_size(0x01)
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0x81)
	.dwattr $C$DW$889, DW_AT_decl_column(0x0c)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$890, DW_AT_name("rsvd2")
	.dwattr $C$DW$890, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$890, DW_AT_bit_size(0x04)
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x82)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$100, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$891, DW_AT_name("all")
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x86)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0d)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$892, DW_AT_name("bit")
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x87)
	.dwattr $C$DW$892, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$101, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$893, DW_AT_name("WDE")
	.dwattr $C$DW$893, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$893, DW_AT_bit_size(0x01)
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$893, DW_AT_decl_column(0x0c)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$894, DW_AT_name("UTE")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$894, DW_AT_bit_size(0x01)
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0c)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$895, DW_AT_name("QCLM")
	.dwattr $C$DW$895, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$895, DW_AT_bit_size(0x01)
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0c)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$896, DW_AT_name("QPEN")
	.dwattr $C$DW$896, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$896, DW_AT_bit_size(0x01)
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$896, DW_AT_decl_column(0x0c)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$897, DW_AT_name("IEL")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$897, DW_AT_bit_size(0x02)
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$897, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$897, DW_AT_decl_column(0x0c)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$898, DW_AT_name("SEL")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$898, DW_AT_bit_size(0x01)
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0c)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$899, DW_AT_name("SWI")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$899, DW_AT_bit_size(0x01)
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x50)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0c)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$900, DW_AT_name("IEI")
	.dwattr $C$DW$900, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$900, DW_AT_bit_size(0x02)
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x51)
	.dwattr $C$DW$900, DW_AT_decl_column(0x0c)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$901, DW_AT_name("SEI")
	.dwattr $C$DW$901, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$901, DW_AT_bit_size(0x02)
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x52)
	.dwattr $C$DW$901, DW_AT_decl_column(0x0c)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$902, DW_AT_name("PCRM")
	.dwattr $C$DW$902, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$902, DW_AT_bit_size(0x02)
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x53)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0c)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$903, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$903, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$903, DW_AT_bit_size(0x02)
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x54)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$102, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$102

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$904, DW_AT_name("all")
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x58)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0d)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$905, DW_AT_name("bit")
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x59)
	.dwattr $C$DW$905, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$103, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$906, DW_AT_name("PCEF")
	.dwattr $C$DW$906, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$906, DW_AT_bit_size(0x01)
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$906, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0xca)
	.dwattr $C$DW$906, DW_AT_decl_column(0x0c)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$907, DW_AT_name("FIMF")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$907, DW_AT_bit_size(0x01)
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$907, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$907, DW_AT_decl_column(0x0c)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$908, DW_AT_name("CDEF")
	.dwattr $C$DW$908, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$908, DW_AT_bit_size(0x01)
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$908, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$908, DW_AT_decl_column(0x0c)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$909, DW_AT_name("COEF")
	.dwattr $C$DW$909, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$909, DW_AT_bit_size(0x01)
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$909, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$909, DW_AT_decl_column(0x0c)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$910, DW_AT_name("QDLF")
	.dwattr $C$DW$910, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$910, DW_AT_bit_size(0x01)
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$910, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0xce)
	.dwattr $C$DW$910, DW_AT_decl_column(0x0c)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$911, DW_AT_name("QDF")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$911, DW_AT_bit_size(0x01)
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$911, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$911, DW_AT_decl_column(0x0c)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$912, DW_AT_name("FIDF")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$912, DW_AT_bit_size(0x01)
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$912, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$912, DW_AT_decl_column(0x0c)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$913, DW_AT_name("UPEVNT")
	.dwattr $C$DW$913, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$913, DW_AT_bit_size(0x01)
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$913, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$913, DW_AT_decl_column(0x0c)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$914, DW_AT_name("rsvd1")
	.dwattr $C$DW$914, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$914, DW_AT_bit_size(0x08)
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$914, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$914, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$104, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$915, DW_AT_name("all")
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$915, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$915, DW_AT_decl_column(0x0d)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$916, DW_AT_name("bit")
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$916, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$916, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$105, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$917, DW_AT_name("INT")
	.dwattr $C$DW$917, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$917, DW_AT_bit_size(0x01)
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$917, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$917, DW_AT_decl_column(0x0c)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$918, DW_AT_name("PCE")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$918, DW_AT_bit_size(0x01)
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$918, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$918, DW_AT_decl_column(0x0c)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$919, DW_AT_name("PHE")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$919, DW_AT_bit_size(0x01)
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$919, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$919, DW_AT_decl_column(0x0c)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$920, DW_AT_name("QDC")
	.dwattr $C$DW$920, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$920, DW_AT_bit_size(0x01)
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$920, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$920, DW_AT_decl_column(0x0c)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$921, DW_AT_name("WTO")
	.dwattr $C$DW$921, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$921, DW_AT_bit_size(0x01)
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$921, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$921, DW_AT_decl_column(0x0c)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$922, DW_AT_name("PCU")
	.dwattr $C$DW$922, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$922, DW_AT_bit_size(0x01)
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$922, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0x90)
	.dwattr $C$DW$922, DW_AT_decl_column(0x0c)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$923, DW_AT_name("PCO")
	.dwattr $C$DW$923, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$923, DW_AT_bit_size(0x01)
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$923, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0x91)
	.dwattr $C$DW$923, DW_AT_decl_column(0x0c)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$924, DW_AT_name("PCR")
	.dwattr $C$DW$924, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$924, DW_AT_bit_size(0x01)
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$924, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x92)
	.dwattr $C$DW$924, DW_AT_decl_column(0x0c)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$925, DW_AT_name("PCM")
	.dwattr $C$DW$925, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$925, DW_AT_bit_size(0x01)
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$925, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x93)
	.dwattr $C$DW$925, DW_AT_decl_column(0x0c)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$926, DW_AT_name("SEL")
	.dwattr $C$DW$926, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$926, DW_AT_bit_size(0x01)
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$926, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x94)
	.dwattr $C$DW$926, DW_AT_decl_column(0x0c)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$927, DW_AT_name("IEL")
	.dwattr $C$DW$927, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$927, DW_AT_bit_size(0x01)
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$927, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x95)
	.dwattr $C$DW$927, DW_AT_decl_column(0x0c)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$928, DW_AT_name("UTO")
	.dwattr $C$DW$928, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$928, DW_AT_bit_size(0x01)
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$928, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x96)
	.dwattr $C$DW$928, DW_AT_decl_column(0x0c)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$929, DW_AT_name("rsvd1")
	.dwattr $C$DW$929, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$929, DW_AT_bit_size(0x04)
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$929, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x97)
	.dwattr $C$DW$929, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$106, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$930, DW_AT_name("all")
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$930, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$930, DW_AT_decl_column(0x0d)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$931, DW_AT_name("bit")
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$931, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$931, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$107, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$932, DW_AT_name("rsvd1")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$932, DW_AT_bit_size(0x01)
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$932, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$932, DW_AT_decl_column(0x0c)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$933, DW_AT_name("PCE")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$933, DW_AT_bit_size(0x01)
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$933, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$933, DW_AT_decl_column(0x0c)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$934, DW_AT_name("PHE")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$934, DW_AT_bit_size(0x01)
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$934, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$934, DW_AT_decl_column(0x0c)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$935, DW_AT_name("QDC")
	.dwattr $C$DW$935, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$935, DW_AT_bit_size(0x01)
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$935, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$935, DW_AT_decl_column(0x0c)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$936, DW_AT_name("WTO")
	.dwattr $C$DW$936, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$936, DW_AT_bit_size(0x01)
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$936, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$936, DW_AT_decl_column(0x0c)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$937, DW_AT_name("PCU")
	.dwattr $C$DW$937, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$937, DW_AT_bit_size(0x01)
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$937, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0xba)
	.dwattr $C$DW$937, DW_AT_decl_column(0x0c)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$938, DW_AT_name("PCO")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$938, DW_AT_bit_size(0x01)
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$938, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$938, DW_AT_decl_column(0x0c)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$939, DW_AT_name("PCR")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$939, DW_AT_bit_size(0x01)
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$939, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$939, DW_AT_decl_column(0x0c)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$940, DW_AT_name("PCM")
	.dwattr $C$DW$940, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$940, DW_AT_bit_size(0x01)
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$940, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$940, DW_AT_decl_column(0x0c)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$941, DW_AT_name("SEL")
	.dwattr $C$DW$941, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$941, DW_AT_bit_size(0x01)
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$941, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$941, DW_AT_decl_column(0x0c)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$942, DW_AT_name("IEL")
	.dwattr $C$DW$942, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$942, DW_AT_bit_size(0x01)
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$942, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$942, DW_AT_decl_column(0x0c)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$943, DW_AT_name("UTO")
	.dwattr $C$DW$943, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$943, DW_AT_bit_size(0x01)
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$943, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$943, DW_AT_decl_column(0x0c)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$944, DW_AT_name("rsvd2")
	.dwattr $C$DW$944, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$944, DW_AT_bit_size(0x04)
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$944, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$944, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$108, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$945, DW_AT_name("all")
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$945, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$945, DW_AT_decl_column(0x0d)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$946, DW_AT_name("bit")
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$946, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$946, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$109, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$947, DW_AT_name("PCSPW")
	.dwattr $C$DW$947, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$947, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$947, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x69)
	.dwattr $C$DW$947, DW_AT_decl_column(0x0c)

$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$948, DW_AT_name("PCE")
	.dwattr $C$DW$948, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$948, DW_AT_bit_size(0x01)
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$948, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$948, DW_AT_decl_column(0x0c)

$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$949, DW_AT_name("PCPOL")
	.dwattr $C$DW$949, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$949, DW_AT_bit_size(0x01)
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$949, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$949, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$949, DW_AT_decl_column(0x0c)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$950, DW_AT_name("PCLOAD")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$950, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$950, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$950, DW_AT_decl_column(0x0c)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$951, DW_AT_name("PCSHDW")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$951, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$951, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$951, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$110, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$952, DW_AT_name("all")
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$952, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$952, DW_AT_decl_line(0x71)
	.dwattr $C$DW$952, DW_AT_decl_column(0x0d)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$953, DW_AT_name("bit")
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$953, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$953, DW_AT_decl_line(0x72)
	.dwattr $C$DW$953, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$111, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x20)
$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$954, DW_AT_name("carrierMid")
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$954, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$954, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$954, DW_AT_decl_column(0x11)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$955, DW_AT_name("adcScale")
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$955, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$955, DW_AT_decl_line(0x50)
	.dwattr $C$DW$955, DW_AT_decl_column(0x11)

$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("sdfmScale")
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$956, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$956, DW_AT_decl_line(0x51)
	.dwattr $C$DW$956, DW_AT_decl_column(0x11)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$957, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$957, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$957, DW_AT_decl_line(0x52)
	.dwattr $C$DW$957, DW_AT_decl_column(0x11)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$958, DW_AT_name("tSamp")
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$958, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$958, DW_AT_decl_line(0x54)
	.dwattr $C$DW$958, DW_AT_decl_column(0x11)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$959, DW_AT_name("Rd")
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$959, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$959, DW_AT_decl_line(0x55)
	.dwattr $C$DW$959, DW_AT_decl_column(0x11)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$960, DW_AT_name("Rq")
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$960, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$960, DW_AT_decl_line(0x56)
	.dwattr $C$DW$960, DW_AT_decl_column(0x11)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$961, DW_AT_name("Ld")
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$961, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$961, DW_AT_decl_line(0x57)
	.dwattr $C$DW$961, DW_AT_decl_column(0x11)

$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$962, DW_AT_name("Lq")
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$962, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$962, DW_AT_decl_line(0x58)
	.dwattr $C$DW$962, DW_AT_decl_column(0x11)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$963, DW_AT_name("Vbase")
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$963, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$963, DW_AT_decl_line(0x59)
	.dwattr $C$DW$963, DW_AT_decl_column(0x11)

$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$964, DW_AT_name("Ibase")
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$964, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$964, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$964, DW_AT_decl_column(0x11)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$965, DW_AT_name("wccD")
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$965, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$965, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$965, DW_AT_decl_column(0x11)

$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$966, DW_AT_name("wccQ")
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$966, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$966, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$966, DW_AT_decl_column(0x11)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$967, DW_AT_name("Vdcbus")
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$967, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$967, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$967, DW_AT_decl_column(0x11)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$968, DW_AT_name("BemfK")
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$968, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$968, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$968, DW_AT_decl_column(0x11)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$969, DW_AT_name("Wbase")
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$969, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$969, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$969, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$135


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


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146
$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$146, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("int16_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$147


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("Uint16")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$36


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151
$C$DW$970	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$28)

$C$DW$T$151	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$970)

	.dwendtag $C$DW$TU$151


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("int32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$23


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("Uint32")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$39


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$21


$C$DW$TU$156	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$156
$C$DW$T$156	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$156, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$156


$C$DW$TU$157	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$157
$C$DW$971	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$21)

$C$DW$T$157	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$971)

	.dwendtag $C$DW$TU$157


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


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161
$C$DW$972	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$16)

$C$DW$T$161	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$972)

	.dwendtag $C$DW$TU$161


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
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


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162
$C$DW$T$162	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$162, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$162


$C$DW$TU$163	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$163
$C$DW$973	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$162)

$C$DW$T$163	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$973)

	.dwendtag $C$DW$TU$163


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$164	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$164
$C$DW$T$164	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$164, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$164


$C$DW$TU$165	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$165
$C$DW$974	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$164)

$C$DW$T$165	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$974)

	.dwendtag $C$DW$TU$165


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_name("motPars")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x0e)
$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$975, DW_AT_name("cosWTs")
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$975, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$975, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$975, DW_AT_decl_column(0x0f)

$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$976, DW_AT_name("sinWTs")
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$976, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$976, DW_AT_decl_line(0x40)
	.dwattr $C$DW$976, DW_AT_decl_column(0x0f)

$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$977, DW_AT_name("expVal")
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$977, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$977, DW_AT_decl_line(0x41)
	.dwattr $C$DW$977, DW_AT_decl_column(0x0f)

$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$978, DW_AT_name("kDirect")
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$978, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$978, DW_AT_decl_line(0x42)
	.dwattr $C$DW$978, DW_AT_decl_column(0x0f)

$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$979, DW_AT_name("idErr")
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$979, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$979, DW_AT_decl_line(0x43)
	.dwattr $C$DW$979, DW_AT_decl_column(0x0f)

$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$980, DW_AT_name("iqErr")
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$980, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$980, DW_AT_decl_line(0x44)
	.dwattr $C$DW$980, DW_AT_decl_column(0x0f)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$981, DW_AT_name("carryOver")
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$981, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$981, DW_AT_decl_line(0x45)
	.dwattr $C$DW$981, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$166	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$166
$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/cpu_cla_shared.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$166

