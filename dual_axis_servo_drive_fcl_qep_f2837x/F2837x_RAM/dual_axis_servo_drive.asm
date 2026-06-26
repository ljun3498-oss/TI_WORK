;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Fri Jun 26 17:11:20 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("FCL_runPICtrl_M1")
	.dwattr $C$DW$1, DW_AT_linkage_name("FCL_runPICtrl_M1")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$3, DW_AT_linkage_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0d)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$5, DW_AT_linkage_name("FCL_resetController")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$7, DW_AT_linkage_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0d)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$9, DW_AT_linkage_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0d)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("Device_init")
	.dwattr $C$DW$11, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$12, DW_AT_linkage_name("HAL_setParams")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x180)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0d)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$150)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$14, DW_AT_linkage_name("HAL_setMotorParams")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x185)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$138)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("HAL_SCI_init")
	.dwattr $C$DW$16, DW_AT_linkage_name("HAL_SCI_init")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("..\sources\HAL_sci_init.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x57)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$16


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$17, DW_AT_linkage_name("initMotorParameters")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0xec)
	.dwattr $C$DW$17, DW_AT_decl_column(0x0d)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$155)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$138)

	.dwendtag $C$DW$17


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("initControlVars")
	.dwattr $C$DW$20, DW_AT_linkage_name("initControlVars")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0d)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("resetControlVars")
	.dwattr $C$DW$22, DW_AT_linkage_name("resetControlVars")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$22, DW_AT_decl_column(0x0d)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$24, DW_AT_linkage_name("DLOG_4CH_F_init")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$126)

	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$26, DW_AT_linkage_name("HAL_setupInterrupts")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$26, DW_AT_decl_column(0x0d)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$138)

	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$28, DW_AT_linkage_name("runOffsetsCalculation")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$28, DW_AT_decl_column(0x0d)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$155)

	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$30, DW_AT_linkage_name("HAL_enableInterrupts")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x111)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0d)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$138)

	.dwendtag $C$DW$30


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$32, DW_AT_linkage_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$126)

	.dwendtag $C$DW$32

	.global	||serialCommsTimer||
	.data
	.align	1
	.elfsym	||serialCommsTimer||,SYM_SIZE(1),SYM_BLOCKED(1)
||serialCommsTimer||:
	.bits		0,16
			; serialCommsTimer @ 0

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("serialCommsTimer")
	.dwattr $C$DW$34, DW_AT_linkage_name("serialCommsTimer")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr ||serialCommsTimer||]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$34, DW_AT_decl_column(0x0a)

	.global	||m1_pos_idx||
	.data
	.align	1
	.elfsym	||m1_pos_idx||,SYM_SIZE(1),SYM_BLOCKED(1)
||m1_pos_idx||:
	.bits		0,16
			; m1_pos_idx @ 0

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("m1_pos_idx")
	.dwattr $C$DW$35, DW_AT_linkage_name("m1_pos_idx")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr ||m1_pos_idx||]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$35, DW_AT_decl_column(0x0a)

	.global	||m1_pos_sample_head||
	.data
	.align	1
	.elfsym	||m1_pos_sample_head||,SYM_SIZE(1),SYM_BLOCKED(1)
||m1_pos_sample_head||:
	.bits		0,16
			; m1_pos_sample_head @ 0

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("m1_pos_sample_head")
	.dwattr $C$DW$36, DW_AT_linkage_name("m1_pos_sample_head")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr ||m1_pos_sample_head||]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$36, DW_AT_decl_column(0x13)

	.global	||m1_pos_sample_tail||
	.data
	.align	1
	.elfsym	||m1_pos_sample_tail||,SYM_SIZE(1),SYM_BLOCKED(1)
||m1_pos_sample_tail||:
	.bits		0,16
			; m1_pos_sample_tail @ 0

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("m1_pos_sample_tail")
	.dwattr $C$DW$37, DW_AT_linkage_name("m1_pos_sample_tail")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr ||m1_pos_sample_tail||]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$37, DW_AT_decl_column(0x0a)

	.global	||m1_pos_sample_overflow||
	.data
	.align	1
	.elfsym	||m1_pos_sample_overflow||,SYM_SIZE(1),SYM_BLOCKED(1)
||m1_pos_sample_overflow||:
	.bits		0,16
			; m1_pos_sample_overflow @ 0

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("m1_pos_sample_overflow")
	.dwattr $C$DW$38, DW_AT_linkage_name("m1_pos_sample_overflow")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr ||m1_pos_sample_overflow||]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$38, DW_AT_decl_column(0x0a)

	.global	||m1_customSpeedActive||
	.data
	.align	1
	.elfsym	||m1_customSpeedActive||,SYM_SIZE(1),SYM_BLOCKED(1)
||m1_customSpeedActive||:
	.bits		0,16
			; m1_customSpeedActive @ 0

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("m1_customSpeedActive")
	.dwattr $C$DW$39, DW_AT_linkage_name("m1_customSpeedActive")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr ||m1_customSpeedActive||]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0xca)
	.dwattr $C$DW$39, DW_AT_decl_column(0x06)

	.global	||m2_pos_idx||
	.data
	.align	1
	.elfsym	||m2_pos_idx||,SYM_SIZE(1),SYM_BLOCKED(1)
||m2_pos_idx||:
	.bits		0,16
			; m2_pos_idx @ 0

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("m2_pos_idx")
	.dwattr $C$DW$40, DW_AT_linkage_name("m2_pos_idx")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr ||m2_pos_idx||]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$40, DW_AT_decl_column(0x0a)

	.global	||m2_pos_sample_head||
	.data
	.align	1
	.elfsym	||m2_pos_sample_head||,SYM_SIZE(1),SYM_BLOCKED(1)
||m2_pos_sample_head||:
	.bits		0,16
			; m2_pos_sample_head @ 0

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("m2_pos_sample_head")
	.dwattr $C$DW$41, DW_AT_linkage_name("m2_pos_sample_head")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr ||m2_pos_sample_head||]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$41, DW_AT_decl_column(0x13)

	.global	||m2_pos_sample_tail||
	.data
	.align	1
	.elfsym	||m2_pos_sample_tail||,SYM_SIZE(1),SYM_BLOCKED(1)
||m2_pos_sample_tail||:
	.bits		0,16
			; m2_pos_sample_tail @ 0

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("m2_pos_sample_tail")
	.dwattr $C$DW$42, DW_AT_linkage_name("m2_pos_sample_tail")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr ||m2_pos_sample_tail||]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0a)

	.global	||m2_pos_sample_overflow||
	.data
	.align	1
	.elfsym	||m2_pos_sample_overflow||,SYM_SIZE(1),SYM_BLOCKED(1)
||m2_pos_sample_overflow||:
	.bits		0,16
			; m2_pos_sample_overflow @ 0

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("m2_pos_sample_overflow")
	.dwattr $C$DW$43, DW_AT_linkage_name("m2_pos_sample_overflow")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr ||m2_pos_sample_overflow||]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0a)

	.global	||m2_customSpeedActive||
	.data
	.align	1
	.elfsym	||m2_customSpeedActive||,SYM_SIZE(1),SYM_BLOCKED(1)
||m2_customSpeedActive||:
	.bits		0,16
			; m2_customSpeedActive @ 0

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("m2_customSpeedActive")
	.dwattr $C$DW$44, DW_AT_linkage_name("m2_customSpeedActive")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||m2_customSpeedActive||]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)

	.global	||clkPrescale||
	.data
	.align	1
	.elfsym	||clkPrescale||,SYM_SIZE(1),SYM_BLOCKED(1)
||clkPrescale||:
	.bits		0x14,16
			; clkPrescale @ 0

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("clkPrescale")
	.dwattr $C$DW$45, DW_AT_linkage_name("clkPrescale")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr ||clkPrescale||]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0a)

	.global	||sampWin||
	.data
	.align	1
	.elfsym	||sampWin||,SYM_SIZE(1),SYM_BLOCKED(1)
||sampWin||:
	.bits		0x1e,16
			; sampWin @ 0

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("sampWin")
	.dwattr $C$DW$46, DW_AT_linkage_name("sampWin")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr ||sampWin||]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0a)

	.global	||thresh||
	.data
	.align	1
	.elfsym	||thresh||,SYM_SIZE(1),SYM_BLOCKED(1)
||thresh||:
	.bits		0x12,16
			; thresh @ 0

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("thresh")
	.dwattr $C$DW$47, DW_AT_linkage_name("thresh")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||thresh||]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0xda)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0a)

	.global	||enableFlag||
	.data
	.align	1
	.elfsym	||enableFlag||,SYM_SIZE(1),SYM_BLOCKED(1)
||enableFlag||:
	.bits		0x1,16
			; enableFlag @ 0

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("enableFlag")
	.dwattr $C$DW$48, DW_AT_linkage_name("enableFlag")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr ||enableFlag||]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$48, DW_AT_decl_column(0x13)

	.global	||backTicker||
	.data
	.align	1
	.elfsym	||backTicker||,SYM_SIZE(1),SYM_BLOCKED(1)
||backTicker||:
	.bits		0,16
			; backTicker @ 0

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("backTicker")
	.dwattr $C$DW$49, DW_AT_linkage_name("backTicker")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr ||backTicker||]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0a)

	.global	||led1Cnt||
	.data
	.align	1
	.elfsym	||led1Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led1Cnt||:
	.bits		0,16
			; led1Cnt @ 0

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("led1Cnt")
	.dwattr $C$DW$50, DW_AT_linkage_name("led1Cnt")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||led1Cnt||]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0a)

	.global	||led2Cnt||
	.data
	.align	1
	.elfsym	||led2Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led2Cnt||:
	.bits		0,16
			; led2Cnt @ 0

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("led2Cnt")
	.dwattr $C$DW$51, DW_AT_linkage_name("led2Cnt")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||led2Cnt||]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0a)

	.global	||runMotor||
	.data
	.align	1
	.elfsym	||runMotor||,SYM_SIZE(1),SYM_BLOCKED(1)
||runMotor||:
	.bits		0,16
			; runMotor @ 0

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("runMotor")
	.dwattr $C$DW$52, DW_AT_linkage_name("runMotor")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||runMotor||]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$52, DW_AT_decl_column(0x10)

	.global	||ctrlState||
	.data
	.align	1
	.elfsym	||ctrlState||,SYM_SIZE(1),SYM_BLOCKED(1)
||ctrlState||:
	.bits		0,16
			; ctrlState @ 0

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("ctrlState")
	.dwattr $C$DW$53, DW_AT_linkage_name("ctrlState")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||ctrlState||]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0d)

	.global	||flagSyncRun||
	.data
	.align	1
	.elfsym	||flagSyncRun||,SYM_SIZE(1),SYM_BLOCKED(1)
||flagSyncRun||:
	.bits		0,16
			; flagSyncRun @ 0

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("flagSyncRun")
	.dwattr $C$DW$54, DW_AT_linkage_name("flagSyncRun")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||flagSyncRun||]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$54, DW_AT_decl_column(0x06)

	.global	||Alpha_State_Ptr||
	.bss	||Alpha_State_Ptr||,2,1,1
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("Alpha_State_Ptr")
	.dwattr $C$DW$55, DW_AT_linkage_name("Alpha_State_Ptr")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||Alpha_State_Ptr||]
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0x97)
	.dwattr $C$DW$55, DW_AT_decl_column(0x08)

	.global	||A_Task_Ptr||
	.bss	||A_Task_Ptr||,2,1,1
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("A_Task_Ptr")
	.dwattr $C$DW$56, DW_AT_linkage_name("A_Task_Ptr")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||A_Task_Ptr||]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x98)
	.dwattr $C$DW$56, DW_AT_decl_column(0x08)

	.global	||B_Task_Ptr||
	.bss	||B_Task_Ptr||,2,1,1
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("B_Task_Ptr")
	.dwattr $C$DW$57, DW_AT_linkage_name("B_Task_Ptr")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||B_Task_Ptr||]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x99)
	.dwattr $C$DW$57, DW_AT_decl_column(0x08)

	.global	||C_Task_Ptr||
	.bss	||C_Task_Ptr||,2,1,1
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("C_Task_Ptr")
	.dwattr $C$DW$58, DW_AT_linkage_name("C_Task_Ptr")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||C_Task_Ptr||]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$58, DW_AT_decl_column(0x08)

	.global	||m1_custom_speed_pu||
	.data
	.align	2
	.elfsym	||m1_custom_speed_pu||,SYM_SIZE(2),SYM_BLOCKED(1)
||m1_custom_speed_pu||:
	.xfloat	$strtod("0x0p+0")		; m1_custom_speed_pu @ 0

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("m1_custom_speed_pu")
	.dwattr $C$DW$59, DW_AT_linkage_name("m1_custom_speed_pu")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||m1_custom_speed_pu||]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0b)

	.global	||m2_custom_speed_pu||
	.data
	.align	2
	.elfsym	||m2_custom_speed_pu||,SYM_SIZE(2),SYM_BLOCKED(1)
||m2_custom_speed_pu||:
	.xfloat	$strtod("0x0p+0")		; m2_custom_speed_pu @ 0

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("m2_custom_speed_pu")
	.dwattr $C$DW$60, DW_AT_linkage_name("m2_custom_speed_pu")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||m2_custom_speed_pu||]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0xce)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0b)

	.global	||VdTesting||
	.data
	.align	2
	.elfsym	||VdTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VdTesting||:
	.xfloat	$strtod("0x1.47ae14p-7")		; VdTesting @ 0

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("VdTesting")
	.dwattr $C$DW$61, DW_AT_linkage_name("VdTesting")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr ||VdTesting||]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0b)

	.global	||VqTesting||
	.data
	.align	2
	.elfsym	||VqTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VqTesting||:
	.xfloat	$strtod("0x1.99999ap-5")		; VqTesting @ 0

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("VqTesting")
	.dwattr $C$DW$62, DW_AT_linkage_name("VqTesting")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr ||VqTesting||]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0b)

	.global	||posPtrMax||
	.data
	.align	2
	.elfsym	||posPtrMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||posPtrMax||:
	.xfloat	$strtod("0x1p+2")		; posPtrMax @ 0

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("posPtrMax")
	.dwattr $C$DW$63, DW_AT_linkage_name("posPtrMax")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr ||posPtrMax||]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0xec)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0b)

	.global	||dlogCh1||
	.data
	.align	2
	.elfsym	||dlogCh1||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh1||:
	.xfloat	$strtod("0x0p+0")		; dlogCh1 @ 0

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("dlogCh1")
	.dwattr $C$DW$64, DW_AT_linkage_name("dlogCh1")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr ||dlogCh1||]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0b)

	.global	||dlogCh2||
	.data
	.align	2
	.elfsym	||dlogCh2||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh2||:
	.xfloat	$strtod("0x0p+0")		; dlogCh2 @ 0

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("dlogCh2")
	.dwattr $C$DW$65, DW_AT_linkage_name("dlogCh2")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr ||dlogCh2||]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0b)

	.global	||dlogCh3||
	.data
	.align	2
	.elfsym	||dlogCh3||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh3||:
	.xfloat	$strtod("0x0p+0")		; dlogCh3 @ 0

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("dlogCh3")
	.dwattr $C$DW$66, DW_AT_linkage_name("dlogCh3")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr ||dlogCh3||]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0b)

	.global	||dlogCh4||
	.data
	.align	2
	.elfsym	||dlogCh4||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh4||:
	.xfloat	$strtod("0x0p+0")		; dlogCh4 @ 0

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("dlogCh4")
	.dwattr $C$DW$67, DW_AT_linkage_name("dlogCh4")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr ||dlogCh4||]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0b)

	.global	||halHandle||
	.bss	||halHandle||,2,1,1
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("halHandle")
	.dwattr $C$DW$68, DW_AT_linkage_name("halHandle")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr ||halHandle||]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0f)

	.global	||FCL_cycleCount||
||FCL_cycleCount||:	.usect	".bss:FCL_cycleCount",2,0,0
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("FCL_cycleCount")
	.dwattr $C$DW$69, DW_AT_linkage_name("FCL_cycleCount")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr ||FCL_cycleCount||]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0x103)
	.dwattr $C$DW$69, DW_AT_decl_column(0x13)

	.global	||speedRef||
	.data
	.align	2
	.elfsym	||speedRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||speedRef||:
	.xfloat	$strtod("0x1p-1")		; speedRef @ 0

$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("speedRef")
	.dwattr $C$DW$70, DW_AT_linkage_name("speedRef")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr ||speedRef||]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x106)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0b)

	.global	||IdRef||
	.data
	.align	2
	.elfsym	||IdRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef||:
	.xfloat	$strtod("0x0p+0")		; IdRef @ 0

$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("IdRef")
	.dwattr $C$DW$71, DW_AT_linkage_name("IdRef")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr ||IdRef||]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x107)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0b)

	.global	||IqRef||
	.data
	.align	2
	.elfsym	||IqRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IqRef||:
	.xfloat	$strtod("0x1.99999ap-4")		; IqRef @ 0

$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("IqRef")
	.dwattr $C$DW$72, DW_AT_linkage_name("IqRef")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr ||IqRef||]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x108)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0b)

	.global	||rampDelayMax||
	.data
	.align	2
	.elfsym	||rampDelayMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||rampDelayMax||:
	.bits		0,32
			; rampDelayMax @ 0

$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("rampDelayMax")
	.dwattr $C$DW$73, DW_AT_linkage_name("rampDelayMax")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr ||rampDelayMax||]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0x109)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0a)


$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("HAL_init")
	.dwattr $C$DW$74, DW_AT_linkage_name("HAL_init")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x119)
	.dwattr $C$DW$74, DW_AT_decl_column(0x13)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$3)

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$140)

	.dwendtag $C$DW$74


$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$77, DW_AT_linkage_name("HAL_MTR_init")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x122)
	.dwattr $C$DW$77, DW_AT_decl_column(0x17)
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$3)

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$140)

	.dwendtag $C$DW$77


$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$80, DW_AT_linkage_name("FCL_getSwVersion")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$80, DW_AT_declaration
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla_dm.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x37)
	.dwattr $C$DW$80, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$80


$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("__eallow")
	.dwattr $C$DW$81, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$81, DW_AT_declaration
	.dwattr $C$DW$81, DW_AT_external
	.dwendtag $C$DW$81


$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("__edis")
	.dwattr $C$DW$82, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
	.dwendtag $C$DW$82

	.global	||vTimer0||
	.sect	".data:vTimer0", RW
	.align	1
	.elfsym	||vTimer0||,SYM_SIZE(4)
||vTimer0||:
	.bits		0,16
			; vTimer0[0] @ 0
	.space	48

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("vTimer0")
	.dwattr $C$DW$83, DW_AT_linkage_name("vTimer0")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr ||vTimer0||]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0a)

	.global	||vTimer1||
	.sect	".data:vTimer1", RW
	.align	1
	.elfsym	||vTimer1||,SYM_SIZE(4)
||vTimer1||:
	.bits		0,16
			; vTimer1[0] @ 0
	.space	48

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("vTimer1")
	.dwattr $C$DW$84, DW_AT_linkage_name("vTimer1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr ||vTimer1||]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0a)

	.global	||vTimer2||
	.sect	".data:vTimer2", RW
	.align	1
	.elfsym	||vTimer2||,SYM_SIZE(4)
||vTimer2||:
	.bits		0,16
			; vTimer2[0] @ 0
	.space	48

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("vTimer2")
	.dwattr $C$DW$85, DW_AT_linkage_name("vTimer2")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr ||vTimer2||]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0a)

	.global	||halMtrHandle||
||halMtrHandle||:	.usect	".bss:halMtrHandle",4,0,1
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("halMtrHandle")
	.dwattr $C$DW$86, DW_AT_linkage_name("halMtrHandle")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr ||halMtrHandle||]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0xff)
	.dwattr $C$DW$86, DW_AT_decl_column(0x10)

	.global	||adc_raw||
||adc_raw||:	.usect	".bss:adc_raw",6,0,0
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("adc_raw")
	.dwattr $C$DW$87, DW_AT_linkage_name("adc_raw")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr ||adc_raw||]
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$87, DW_AT_decl_column(0x12)

	.global	||posArray||
	.sect	".data:posArray", RW
	.align	2
	.elfsym	||posArray||,SYM_SIZE(16)
||posArray||:
	.xfloat	$strtod("0x1.4p+1")		; posArray[0] @ 0
	.xfloat	$strtod("-0x1.4p+1")		; posArray[1] @ 32
	.xfloat	$strtod("0x1.cp+1")		; posArray[2] @ 64
	.xfloat	$strtod("-0x1.cp+1")		; posArray[3] @ 96
	.xfloat	$strtod("0x1.4p+2")		; posArray[4] @ 128
	.xfloat	$strtod("-0x1.4p+2")		; posArray[5] @ 160
	.xfloat	$strtod("0x1p+3")		; posArray[6] @ 192
	.xfloat	$strtod("-0x1p+3")		; posArray[7] @ 224

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("posArray")
	.dwattr $C$DW$88, DW_AT_linkage_name("posArray")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr ||posArray||]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0b)

	.global	||dlog_4ch1||
	.bss	||dlog_4ch1||,26,1,1
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("dlog_4ch1")
	.dwattr $C$DW$89, DW_AT_linkage_name("dlog_4ch1")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_addr ||dlog_4ch1||]
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

	.global	||hal||
	.bss	||hal||,34,1,1
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("hal")
	.dwattr $C$DW$90, DW_AT_linkage_name("hal")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_addr ||hal||]
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0f)

	.global	||halMtr||
||halMtr||:	.usect	".bss:halMtr",36,0,1
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("halMtr")
	.dwattr $C$DW$91, DW_AT_linkage_name("halMtr")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_addr ||halMtr||]
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0x100)
	.dwattr $C$DW$91, DW_AT_decl_column(0x10)

	.global	||m1_pos_sample_queue||
	.sect	".data:m1_pos_sample_queue", RW
	.align	2
	.elfsym	||m1_pos_sample_queue||,SYM_SIZE(128)
||m1_pos_sample_queue||:
	.xfloat	$strtod("0x0p+0")		; m1_pos_sample_queue[0] @ 0
	.space	2016

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("m1_pos_sample_queue")
	.dwattr $C$DW$92, DW_AT_linkage_name("m1_pos_sample_queue")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_addr ||m1_pos_sample_queue||]
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0b)

	.global	||m2_pos_sample_queue||
	.sect	".data:m2_pos_sample_queue", RW
	.align	2
	.elfsym	||m2_pos_sample_queue||,SYM_SIZE(128)
||m2_pos_sample_queue||:
	.xfloat	$strtod("0x0p+0")		; m2_pos_sample_queue[0] @ 0
	.space	2016

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("m2_pos_sample_queue")
	.dwattr $C$DW$93, DW_AT_linkage_name("m2_pos_sample_queue")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_addr ||m2_pos_sample_queue||]
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0b)

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("fclVars")
	.dwattr $C$DW$94, DW_AT_linkage_name("fclVars")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$94, DW_AT_decl_column(0x13)

	.global	||m1_pos_history||
	.sect	".data:m1_pos_history", RW
	.align	2
	.elfsym	||m1_pos_history||,SYM_SIZE(400)
||m1_pos_history||:
	.xfloat	$strtod("0x0p+0")		; m1_pos_history[0] @ 0
	.space	6368

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("m1_pos_history")
	.dwattr $C$DW$95, DW_AT_linkage_name("m1_pos_history")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_addr ||m1_pos_history||]
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0b)

	.global	||m2_pos_history||
	.sect	".data:m2_pos_history", RW
	.align	2
	.elfsym	||m2_pos_history||,SYM_SIZE(400)
||m2_pos_history||:
	.xfloat	$strtod("0x0p+0")		; m2_pos_history[0] @ 0
	.space	6368

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("m2_pos_history")
	.dwattr $C$DW$96, DW_AT_linkage_name("m2_pos_history")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_addr ||m2_pos_history||]
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH1||
	.sect	".data:DBUFF_4CH1", RW
	.align	2
	.elfsym	||DBUFF_4CH1||,SYM_SIZE(400)
||DBUFF_4CH1||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH1[0] @ 0
	.space	6368

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("DBUFF_4CH1")
	.dwattr $C$DW$97, DW_AT_linkage_name("DBUFF_4CH1")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_addr ||DBUFF_4CH1||]
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$97, DW_AT_decl_line(0xef)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH2||
	.sect	".data:DBUFF_4CH2", RW
	.align	2
	.elfsym	||DBUFF_4CH2||,SYM_SIZE(400)
||DBUFF_4CH2||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH2[0] @ 0
	.space	6368

$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("DBUFF_4CH2")
	.dwattr $C$DW$98, DW_AT_linkage_name("DBUFF_4CH2")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr ||DBUFF_4CH2||]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH3||
	.sect	".data:DBUFF_4CH3", RW
	.align	2
	.elfsym	||DBUFF_4CH3||,SYM_SIZE(400)
||DBUFF_4CH3||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH3[0] @ 0
	.space	6368

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("DBUFF_4CH3")
	.dwattr $C$DW$99, DW_AT_linkage_name("DBUFF_4CH3")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr ||DBUFF_4CH3||]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH4||
	.sect	".data:DBUFF_4CH4", RW
	.align	2
	.elfsym	||DBUFF_4CH4||,SYM_SIZE(400)
||DBUFF_4CH4||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH4[0] @ 0
	.space	6368

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("DBUFF_4CH4")
	.dwattr $C$DW$100, DW_AT_linkage_name("DBUFF_4CH4")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr ||DBUFF_4CH4||]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0b)

	.global	||motorVars||
	.sect	"ClaData", RW
	.align	2
	.elfsym	||motorVars||,SYM_SIZE(676)
||motorVars||:
	.bits		0,32
			; motorVars[0].posCntr @ 0
	.bits		0x1388,32
			; motorVars[0].posCntrMax @ 32
	.xfloat	$strtod("0x1.0624dep-10")		; motorVars[0].posSlewRate @ 64
	.xfloat	$strtod("0x1.9p+7")		; motorVars[0].baseFreq @ 96
	.xfloat	$strtod("0x1p+3")		; motorVars[0].poles @ 128
	.xfloat	$strtod("0x1.a36e2ep-15")		; motorVars[0].Ts @ 160
	.xfloat	$strtod("0x0p+0")		; motorVars[0].maxModIndex @ 192
	.xfloat	$strtod("0x0p+0")		; motorVars[0].voltageLimit @ 224
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentLimit @ 256
	.xfloat	$strtod("0x0p+0")		; motorVars[0].tempIdRef @ 288
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[0].IdRef_start @ 320
	.xfloat	$strtod("0x0p+0")		; motorVars[0].IdRef_run @ 352
	.xfloat	$strtod("0x0p+0")		; motorVars[0].IdRef @ 384
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[0].IqRef @ 416
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[0].speedRef @ 448
	.xfloat	$strtod("0x0p+0")		; motorVars[0].positionRef @ 480
	.xfloat	$strtod("0x1.47ae14p-6")		; motorVars[0].lsw1Speed @ 512
	.xfloat	$strtod("0x0p+0")		; motorVars[0].offset_currentAs @ 544
	.xfloat	$strtod("0x0p+0")		; motorVars[0].offset_currentBs @ 576
	.xfloat	$strtod("0x0p+0")		; motorVars[0].offset_currentCs @ 608
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentAs @ 640
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentBs @ 672
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentCs @ 704
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentScale @ 736
	.xfloat	$strtod("0x0p+0")		; motorVars[0].voltageScale @ 768
	.xfloat	$strtod("0x0p+0")		; motorVars[0].adcScale @ 800
	.xfloat	$strtod("0x0p+0")		; motorVars[0].currentInvSF @ 832
	.xfloat	$strtod("0x0p+0")		; motorVars[0].voltageInvSF @ 864
	.xfloat	$strtod("0x0p+0")		; motorVars[0].posElecTheta @ 896
	.xfloat	$strtod("0x0p+0")		; motorVars[0].posMechTheta @ 928
	.bits		0x406a,32
			; motorVars[0].pwmCompA @ 960
	.bits		0x416a,32
			; motorVars[0].pwmCompB @ 992
	.bits		0x426a,32
			; motorVars[0].pwmCompC @ 1024
	.bits		0xb50,32
			; motorVars[0].curA_PPBRESULT @ 1056
	.bits		0xb30,32
			; motorVars[0].curB_PPBRESULT @ 1088
	.bits		0xb10,32
			; motorVars[0].curC_PPBRESULT @ 1120
	.bits		0xb70,32
			; motorVars[0].volDC_PPBRESULT @ 1152
	.bits		0x7401,32
			; motorVars[0].AdcIntFlag @ 1184
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.cosWTs @ 1216
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.sinWTs @ 1248
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.expVal @ 1280
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.kDirect @ 1312
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.idErr @ 1344
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.iqErr @ 1376
	.xfloat	$strtod("0x0p+0")		; motorVars[0].D_cpu.carryOver @ 1408
	.xfloat	$strtod("0x0p+0")		; motorVars[0].rc.TargetValue @ 1440
	.bits		0x1,32
			; motorVars[0].rc.RampDelayMax @ 1472
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].rc.RampLowLimit @ 1504
	.xfloat	$strtod("0x1p+0")		; motorVars[0].rc.RampHighLimit @ 1536
	.bits		0,32
			; motorVars[0].rc.RampDelayCount @ 1568
	.xfloat	$strtod("0x0p+0")		; motorVars[0].rc.SetpointValue @ 1600
	.bits		0,32
			; motorVars[0].rc.EqualFlag @ 1632
	.xfloat	$strtod("0x0p+0")		; motorVars[0].rc.Tmp @ 1664
	.xfloat	$strtod("0x0p+0")		; motorVars[0].clarke.As @ 1696
	.xfloat	$strtod("0x0p+0")		; motorVars[0].clarke.Bs @ 1728
	.xfloat	$strtod("0x0p+0")		; motorVars[0].clarke.Cs @ 1760
	.xfloat	$strtod("0x0p+0")		; motorVars[0].clarke.Alpha @ 1792
	.xfloat	$strtod("0x0p+0")		; motorVars[0].clarke.Beta @ 1824
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Alpha @ 1856
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Beta @ 1888
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Angle @ 1920
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Ds @ 1952
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Qs @ 1984
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Sine @ 2016
	.xfloat	$strtod("0x0p+0")		; motorVars[0].park.Cosine @ 2048
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Alpha @ 2080
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Beta @ 2112
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Angle @ 2144
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Ds @ 2176
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Qs @ 2208
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Sine @ 2240
	.xfloat	$strtod("0x0p+0")		; motorVars[0].ipark.Cosine @ 2272
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.ElecTheta @ 2304
	.bits		0x1,32
			; motorVars[0].speed.DirectionQep @ 2336
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.OldElecTheta @ 2368
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.EdgeElecTheta @ 2400
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.Speed @ 2432
	.bits		0,32
			; motorVars[0].speed.BaseRpm @ 2464
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K1 @ 2496
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K2 @ 2528
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K3 @ 2560
	.bits		0,32
			; motorVars[0].speed.SpeedRpm @ 2592
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.Tmp @ 2624
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.SpeedT @ 2656
	.bits		0,16
			; motorVars[0].speed.EdgeCount @ 2688
	.space	16
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.ref @ 2720
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.fbk @ 2752
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.err @ 2784
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.out @ 2816
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.carryOver @ 2848
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_id.Kp @ 2880
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[0].pi_id.Ki @ 2912
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.Kerr @ 2944
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.KerrOld @ 2976
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_id.Umax @ 3008
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pi_id.Umin @ 3040
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Ref @ 3072
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Fbk @ 3104
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Out @ 3136
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.Kp @ 3168
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Ki @ 3200
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.Umax @ 3232
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pi_pos.Umin @ 3264
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.up @ 3296
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.ui @ 3328
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.v1 @ 3360
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.i1 @ 3392
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.w1 @ 3424
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Ref @ 3456
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Fbk @ 3488
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Out @ 3520
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.c1 @ 3552
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.c2 @ 3584
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Kr @ 3616
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Kp @ 3648
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.param.Ki @ 3680
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.param.Kd @ 3712
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Km @ 3744
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Umax @ 3776
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pid_spd.param.Umin @ 3808
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.up @ 3840
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.ui @ 3872
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.ud @ 3904
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.v1 @ 3936
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.i1 @ 3968
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.d1 @ 4000
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.d2 @ 4032
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.data.w1 @ 4064
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.carrierMid @ 4096
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.adcScale @ 4128
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.cmidsqrt3 @ 4160
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.tSamp @ 4192
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Rd @ 4224
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Rq @ 4256
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Ld @ 4288
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Lq @ 4320
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Vbase @ 4352
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Ibase @ 4384
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.wccD @ 4416
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.wccQ @ 4448
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Vdcbus @ 4480
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.BemfK @ 4512
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Wbase @ 4544
	.bits	||fclVars||,32		; motorVars[0].ptrFCL @ 4576
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ualpha @ 4608
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ubeta @ 4640
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ta @ 4672
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Tb @ 4704
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Tc @ 4736
	.space	128
	.xfloat	$strtod("0x0p+0")		; motorVars[0].Vdcbus @ 4896
	.xfloat	$strtod("0x0p+0")		; motorVars[0].VdcbusMax @ 4928
	.xfloat	$strtod("0x0p+0")		; motorVars[0].VdcbusMin @ 4960
	.bits		0,32
			; motorVars[0].isrTicker @ 4992
	.xfloat	$strtod("0x0p+0")		; motorVars[0].fclLatencyInMicroSec @ 5024
	.bits		0,16
			; motorVars[0].fclClrCntr @ 5056
	.bits		0,16
			; motorVars[0].fclCycleCountMax @ 5072
	.bits		0x1,16
			; motorVars[0].speedLoopPrescaler @ 5088
	.bits		0,16
			; motorVars[0].speedLoopCount @ 5104
	.bits		0,16
			; motorVars[0].alignCntr @ 5120
	.bits		0xc8,16
			; motorVars[0].alignCnt @ 5136
	.bits		0x2,16
			; motorVars[0].posPtrMax @ 5152
	.bits		0,16
			; motorVars[0].posPtr @ 5168
	.bits		0x2d0,16
			; motorVars[0].currentThreshHi @ 5184
	.bits		0x2d0,16
			; motorVars[0].currentThreshLo @ 5200
	.bits		0,16
			; motorVars[0].drvEnableGateGPIO @ 5216
	.bits		0,16
			; motorVars[0].drvFaultTripGPIO @ 5232
	.bits		0,16
			; motorVars[0].drvClearFaultGPIO @ 5248
	.bits		0,16
			; motorVars[0].tripCountDMC @ 5264
	.bits		0,16
			; motorVars[0].tripFlagDMC @ 5280
	.bits		0,16
			; motorVars[0].tripFlagPrev @ 5296
	.bits		0,16
			; motorVars[0].runMotor @ 5312
	.bits		0,16
			; motorVars[0].ctrlState @ 5328
	.bits		0,16
			; motorVars[0].clearTripFlagDMC @ 5344
	.bits		0,16
			; motorVars[0].lsw2EntryFlag @ 5360
	.bits		0,16
			; motorVars[0].offsetDoneFlag @ 5376
	.bits		0,16
			; motorVars[0].sfraEnableFlag @ 5392
	.bits		0,32
			; motorVars[1].posCntr @ 5408
	.bits		0x1388,32
			; motorVars[1].posCntrMax @ 5440
	.xfloat	$strtod("0x1.0624dep-10")		; motorVars[1].posSlewRate @ 5472
	.xfloat	$strtod("0x1.9p+7")		; motorVars[1].baseFreq @ 5504
	.xfloat	$strtod("0x1p+3")		; motorVars[1].poles @ 5536
	.xfloat	$strtod("0x1.a36e2ep-15")		; motorVars[1].Ts @ 5568
	.xfloat	$strtod("0x0p+0")		; motorVars[1].maxModIndex @ 5600
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageLimit @ 5632
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentLimit @ 5664
	.xfloat	$strtod("0x0p+0")		; motorVars[1].tempIdRef @ 5696
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[1].IdRef_start @ 5728
	.xfloat	$strtod("0x0p+0")		; motorVars[1].IdRef_run @ 5760
	.xfloat	$strtod("0x0p+0")		; motorVars[1].IdRef @ 5792
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[1].IqRef @ 5824
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[1].speedRef @ 5856
	.xfloat	$strtod("0x0p+0")		; motorVars[1].positionRef @ 5888
	.xfloat	$strtod("0x1.47ae14p-6")		; motorVars[1].lsw1Speed @ 5920
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentAs @ 5952
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentBs @ 5984
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentCs @ 6016
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentAs @ 6048
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentBs @ 6080
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentCs @ 6112
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentScale @ 6144
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageScale @ 6176
	.xfloat	$strtod("0x0p+0")		; motorVars[1].adcScale @ 6208
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentInvSF @ 6240
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageInvSF @ 6272
	.xfloat	$strtod("0x0p+0")		; motorVars[1].posElecTheta @ 6304
	.xfloat	$strtod("0x0p+0")		; motorVars[1].posMechTheta @ 6336
	.bits		0x436a,32
			; motorVars[1].pwmCompA @ 6368
	.bits		0x446a,32
			; motorVars[1].pwmCompB @ 6400
	.bits		0x456a,32
			; motorVars[1].pwmCompC @ 6432
	.bits		0xb51,32
			; motorVars[1].curA_PPBRESULT @ 6464
	.bits		0xb31,32
			; motorVars[1].curB_PPBRESULT @ 6496
	.bits		0xb11,32
			; motorVars[1].curC_PPBRESULT @ 6528
	.bits		0xb71,32
			; motorVars[1].volDC_PPBRESULT @ 6560
	.bits		0x7401,32
			; motorVars[1].AdcIntFlag @ 6592
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.cosWTs @ 6624
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.sinWTs @ 6656
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.expVal @ 6688
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.kDirect @ 6720
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.idErr @ 6752
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.iqErr @ 6784
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.carryOver @ 6816
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.TargetValue @ 6848
	.bits		0x1,32
			; motorVars[1].rc.RampDelayMax @ 6880
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].rc.RampLowLimit @ 6912
	.xfloat	$strtod("0x1p+0")		; motorVars[1].rc.RampHighLimit @ 6944
	.bits		0,32
			; motorVars[1].rc.RampDelayCount @ 6976
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.SetpointValue @ 7008
	.bits		0,32
			; motorVars[1].rc.EqualFlag @ 7040
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.Tmp @ 7072
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.As @ 7104
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Bs @ 7136
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Cs @ 7168
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Alpha @ 7200
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Beta @ 7232
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Alpha @ 7264
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Beta @ 7296
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Angle @ 7328
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Ds @ 7360
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Qs @ 7392
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Sine @ 7424
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Cosine @ 7456
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Alpha @ 7488
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Beta @ 7520
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Angle @ 7552
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Ds @ 7584
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Qs @ 7616
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Sine @ 7648
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Cosine @ 7680
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.ElecTheta @ 7712
	.bits		0x1,32
			; motorVars[1].speed.DirectionQep @ 7744
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.OldElecTheta @ 7776
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.EdgeElecTheta @ 7808
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.Speed @ 7840
	.bits		0,32
			; motorVars[1].speed.BaseRpm @ 7872
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K1 @ 7904
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K2 @ 7936
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K3 @ 7968
	.bits		0,32
			; motorVars[1].speed.SpeedRpm @ 8000
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.Tmp @ 8032
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.SpeedT @ 8064
	.bits		0,16
			; motorVars[1].speed.EdgeCount @ 8096
	.space	16
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.ref @ 8128
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.fbk @ 8160
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.err @ 8192
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.out @ 8224
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.carryOver @ 8256
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_id.Kp @ 8288
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[1].pi_id.Ki @ 8320
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.Kerr @ 8352
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.KerrOld @ 8384
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_id.Umax @ 8416
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pi_id.Umin @ 8448
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Ref @ 8480
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Fbk @ 8512
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Out @ 8544
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.Kp @ 8576
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Ki @ 8608
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.Umax @ 8640
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pi_pos.Umin @ 8672
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.up @ 8704
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.ui @ 8736
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.v1 @ 8768
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.i1 @ 8800
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.w1 @ 8832
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Ref @ 8864
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Fbk @ 8896
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Out @ 8928
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.c1 @ 8960
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.c2 @ 8992
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Kr @ 9024
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Kp @ 9056
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.param.Ki @ 9088
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.param.Kd @ 9120
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Km @ 9152
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Umax @ 9184
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pid_spd.param.Umin @ 9216
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.up @ 9248
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.ui @ 9280
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.ud @ 9312
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.v1 @ 9344
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.i1 @ 9376
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.d1 @ 9408
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.d2 @ 9440
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.data.w1 @ 9472
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.carrierMid @ 9504
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.adcScale @ 9536
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.cmidsqrt3 @ 9568
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.tSamp @ 9600
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Rd @ 9632
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Rq @ 9664
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Ld @ 9696
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Lq @ 9728
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Vbase @ 9760
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Ibase @ 9792
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.wccD @ 9824
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.wccQ @ 9856
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Vdcbus @ 9888
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.BemfK @ 9920
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Wbase @ 9952
	.bits	||fclVars||,32		; motorVars[1].ptrFCL @ 9984
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ualpha @ 10016
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ubeta @ 10048
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ta @ 10080
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Tb @ 10112
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Tc @ 10144
	.space	128
	.xfloat	$strtod("0x0p+0")		; motorVars[1].Vdcbus @ 10304
	.xfloat	$strtod("0x0p+0")		; motorVars[1].VdcbusMax @ 10336
	.xfloat	$strtod("0x0p+0")		; motorVars[1].VdcbusMin @ 10368
	.bits		0,32
			; motorVars[1].isrTicker @ 10400
	.xfloat	$strtod("0x0p+0")		; motorVars[1].fclLatencyInMicroSec @ 10432
	.bits		0,16
			; motorVars[1].fclClrCntr @ 10464
	.bits		0,16
			; motorVars[1].fclCycleCountMax @ 10480
	.bits		0x1,16
			; motorVars[1].speedLoopPrescaler @ 10496
	.bits		0,16
			; motorVars[1].speedLoopCount @ 10512
	.bits		0,16
			; motorVars[1].alignCntr @ 10528
	.bits		0xc8,16
			; motorVars[1].alignCnt @ 10544
	.bits		0x2,16
			; motorVars[1].posPtrMax @ 10560
	.bits		0,16
			; motorVars[1].posPtr @ 10576
	.bits		0x2d0,16
			; motorVars[1].currentThreshHi @ 10592
	.bits		0x2d0,16
			; motorVars[1].currentThreshLo @ 10608
	.bits		0,16
			; motorVars[1].drvEnableGateGPIO @ 10624
	.bits		0,16
			; motorVars[1].drvFaultTripGPIO @ 10640
	.bits		0,16
			; motorVars[1].drvClearFaultGPIO @ 10656
	.bits		0,16
			; motorVars[1].tripCountDMC @ 10672
	.bits		0,16
			; motorVars[1].tripFlagDMC @ 10688
	.bits		0,16
			; motorVars[1].tripFlagPrev @ 10704
	.bits		0,16
			; motorVars[1].runMotor @ 10720
	.bits		0,16
			; motorVars[1].ctrlState @ 10736
	.bits		0,16
			; motorVars[1].clearTripFlagDMC @ 10752
	.bits		0,16
			; motorVars[1].lsw2EntryFlag @ 10768
	.bits		0,16
			; motorVars[1].offsetDoneFlag @ 10784
	.bits		0,16
			; motorVars[1].sfraEnableFlag @ 10800

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("motorVars")
	.dwattr $C$DW$101, DW_AT_linkage_name("motorVars")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr ||motorVars||]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0e)

	.sblock	".bss"
	.sblock	".data"
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{16C9E46B-C7F8-4897-9BA7-041D77347B56} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{9F9D95E4-9715-4C9C-8835-85B8193213B2} 
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{286FD26F-E861-410D-88C9-D3BA33ADA38E} 
	.sect	".text:runSyncControl"
	.clink
	.global	||runSyncControl||

$C$DW$102	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$102, DW_AT_name("runSyncControl")
	.dwattr $C$DW$102, DW_AT_low_pc(||runSyncControl||)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_linkage_name("runSyncControl")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x99e)
	.dwattr $C$DW$102, DW_AT_decl_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2463,column 1,is_stmt,address ||runSyncControl||,isa 0

	.dwfde $C$DW$CIE, ||runSyncControl||

;***************************************************************
;* FNAME: runSyncControl                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||runSyncControl||:
;* AR4   assigned to $O$C1
;* AR4   assigned to $O$C2
;* R0    assigned to $O$C3
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||flagSyncRun||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2464,column 5,is_stmt,isa 0
        MOV       AL,@||flagSyncRun||   ; [CPU_ALU] |2464| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        B         ||$C$L4||,EQ          ; [CPU_ALU] |2464| 
        ; branchcc occurs ; [] |2464| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2467,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2467| 
        MOVL      XAR0,#330             ; [CPU_ALU] |2467| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2467| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |2467| 
        ; branchcc occurs ; [] |2467| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2472,column 13,is_stmt,isa 0
        MOVL      XAR0,#366             ; [CPU_ALU] |2472| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2471,column 13,is_stmt,isa 0
        MOV32     R0H,@||speedRef||     ; [CPU_FPU] |2471| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 13,is_stmt,isa 0
        MOV       AL,@||ctrlState||     ; [CPU_ALU] |2483| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2484,column 13,is_stmt,isa 0
        MOV       AH,@||ctrlState||     ; [CPU_ALU] |2484| 
        MOVL      XAR1,#671             ; [CPU_ALU] |2484| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2472,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2472| 
        MOVW      DP,#||motorVars||+332 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 13,is_stmt,isa 0
        MOVL      XAR0,#333             ; [CPU_ALU] |2483| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2484,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR1],AH        ; [CPU_ALU] |2484| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2483| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2471,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2471| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2495,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+332 ; [CPU_ALU] |2495| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2471,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2471| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2495,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2495| 
        B         ||$C$L2||,NEQ         ; [CPU_ALU] |2495| 
        ; branchcc occurs ; [] |2495| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] |2495| 
        ; branch occurs ; [] |2495| 
||$C$L1||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2488,column 13,is_stmt,isa 0
        MOVL      XAR0,#333             ; [CPU_ALU] |2488| 
        MOVW      DP,#||motorVars||+332 ; [CPU_ARAU] 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2488| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2495,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+332 ; [CPU_ALU] |2495| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2491,column 13,is_stmt,isa 0
        MOVL      XAR1,#366             ; [CPU_ALU] |2491| 
        ZERO      R0H                   ; [CPU_FPU] |2491| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2490,column 13,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2490| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2489,column 13,is_stmt,isa 0
        MOVL      XAR0,#671             ; [CPU_ALU] |2489| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2489| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2495,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2495| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2490,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2490| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2491,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |2491| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2490,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2490| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2495,column 9,is_stmt,isa 0
        B         ||$C$L3||,EQ          ; [CPU_ALU] |2495| 
        ; branchcc occurs ; [] |2495| 
||$C$L2||:    
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2501,column 13,is_stmt,isa 0
        MOV       @||runMotor||,#0      ; [CPU_ALU] |2501| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] |2501| 
        ; branch occurs ; [] |2501| 
||$C$L3||:    
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2497,column 13,is_stmt,isa 0
        MOVB      @||runMotor||,#1,UNC  ; [CPU_ALU] |2497| 
||$C$L4||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$102, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x9ca)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text:runMotorControl"
	.clink
	.global	||runMotorControl||

$C$DW$104	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$104, DW_AT_name("runMotorControl")
	.dwattr $C$DW$104, DW_AT_low_pc(||runMotorControl||)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_linkage_name("runMotorControl")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0x80a)
	.dwattr $C$DW$104, DW_AT_decl_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2059,column 1,is_stmt,address ||runMotorControl||,isa 0

	.dwfde $C$DW$CIE, ||runMotorControl||
$C$DW$105	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$105, DW_AT_name("pMotor")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg12]

$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("mtrHandle")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: runMotorControl               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||runMotorControl||:
;* AR7   assigned to $O$C1
;* AR7   assigned to $O$C2
;* AR4   assigned to pMotor
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("pMotor")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2077,column 5,is_stmt,isa 0
        MOVL      XAR0,#306             ; [CPU_ALU] |2077| 
        MOVIZ     R0H,#16204            ; [CPU_FPU] |2077| 
        MOVIZ     R1H,#15948            ; [CPU_FPU] |2077| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |2077| 
        MOVL      XAR1,#280             ; [CPU_ALU] |2077| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2152,column 5,is_stmt,isa 0
        MOVL      XAR0,#333             ; [CPU_ALU] |2152| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2077,column 5,is_stmt,isa 0
        MOVXI     R0H,#52429            ; [CPU_FPU] |2077| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |2077| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2152,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2152| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2077,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |2077| 
||      MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |2077| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |2077| 
        MOVL      XAR0,#306             ; [CPU_ALU] |2077| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |2077| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2152,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2152| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2077,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2077| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2152,column 5,is_stmt,isa 0
        B         ||$C$L5||,EQ          ; [CPU_ALU] |2152| 
        ; branchcc occurs ; [] |2152| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2164,column 9,is_stmt,isa 0
        MOVL      XAR0,#332             ; [CPU_ALU] |2164| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2164| 
        CMPB      AL,#1                 ; [CPU_ALU] |2164| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |2164| 
        ; branchcc occurs ; [] |2164| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2166,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2166| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |473| 
        MOVZ      AR7,*+XAR4[AR0]       ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |473| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2169,column 13,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |2169| 
        ; branch occurs ; [] |2169| 
||$C$L5||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2154,column 9,is_stmt,isa 0
        MOVL      XAR0,#332             ; [CPU_ALU] |2154| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2154| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |2154| 
        ; branchcc occurs ; [] |2154| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2156,column 13,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |2156| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |469| 
        MOVZ      AR7,*+XAR4[AR0]       ; [CPU_ALU] |469| 
        MOVB      ACC,#1                ; [CPU_ALU] |469| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |469| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |469| 
        MOV       T,AL                  ; [CPU_ALU] |469| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |469| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |469| 
        LSLL      ACC,T                 ; [CPU_ALU] |469| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |469| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |469| 
        SFR       ACC,5                 ; [CPU_ALU] |469| 
        LSL       ACC,2                 ; [CPU_ALU] |469| 
        LSL       ACC,1                 ; [CPU_ALU] |469| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |469| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |469| 
        MOVL      *+XAR4[4],XAR6        ; [CPU_ALU] |469| 
||$C$L6||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$104, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x87e)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text:ramper"
	.clink
	.global	||ramper||

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("ramper")
	.dwattr $C$DW$109, DW_AT_low_pc(||ramper||)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_linkage_name("ramper")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x7ce)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1999,column 1,is_stmt,address ||ramper||,isa 0

	.dwfde $C$DW$CIE, ||ramper||
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("in")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("out")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_name("rampDelta")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x33]


;***************************************************************
;* FNAME: ramper                        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||ramper||:
;* R4    assigned to $O$K3
;* R0    assigned to in
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("in")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to out
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("out")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to rampDelta
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("rampDelta")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2004,column 5,is_stmt,isa 0
        SUBF32    R4H,R0H,R1H           ; [CPU_FPU] |2004| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2006,column 9,is_stmt,isa 0
        CMPF32    R4H,R2H               ; [CPU_FPU] |2006| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2006| 
        B         ||$C$L7||,LEQ         ; [CPU_ALU] |2006| 
        ; branchcc occurs ; [] |2006| 
        ADDF32    R0H,R2H,R1H           ; [CPU_FPU] |2006| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |2006| 
        ; branch occurs ; [] |2006| 
||$C$L7||:    
        MOV32     R3H,R2H               ; [CPU_FPU] |2006| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |2006| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |2006| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2006| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |2006| 
        ; branchcc occurs ; [] |2006| 
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |2006| 
        NOP       ; [CPU_ALU] 
||$C$L8||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x7e0)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text:refPosGen"
	.clink
	.global	||refPosGen||

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("refPosGen")
	.dwattr $C$DW$117, DW_AT_low_pc(||refPosGen||)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_linkage_name("refPosGen")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x7ea)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2027,column 1,is_stmt,address ||refPosGen||,isa 0

	.dwfde $C$DW$CIE, ||refPosGen||
$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("out")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("pMotor")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: refPosGen                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||refPosGen||:
;* R4    assigned to $O$C16
;* R0    assigned to out
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("out")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2b]

;* AR4   assigned to pMotor
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("pMotor")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]

;* R4    assigned to in
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("in")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2028,column 18,is_stmt,isa 0
        MOVL      XAR0,#323             ; [CPU_ALU] |2028| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#||posArray||    ; [CPU_ARAU] |2028| 
        MOV       ACC,*+XAR4[AR0] << 1  ; [CPU_ALU] |2028| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |2028| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2030,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |2030| 
        MOV32     R1H,R0H               ; [CPU_FPU] |2030| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2028,column 18,is_stmt,isa 0
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |2028| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2030,column 5,is_stmt,isa 0
        MOV32     R0H,R4H               ; [CPU_FPU] |2030| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("ramper")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |2030| 
        ; call occurs [#||ramper||] ; [] |2030| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2032,column 5,is_stmt,isa 0
        CMPF32    R4H,R0H               ; [CPU_FPU] |2032| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2032| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |2032| 
        ; branchcc occurs ; [] |2032| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2034,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2034| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |2034| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2036,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |2036| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |2036| 
        B         ||$C$L9||,HIS         ; [CPU_ALU] |2036| 
        ; branchcc occurs ; [] |2036| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2040,column 13,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2040| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2042,column 13,is_stmt,isa 0
        MOVL      XAR0,#322             ; [CPU_ALU] |2042| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2038,column 13,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |2038| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2040,column 13,is_stmt,isa 0
        ADD       ACC,#323 << 0         ; [CPU_ALU] |2040| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2040| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2042,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2042| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2038,column 13,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |2038| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2042,column 13,is_stmt,isa 0
        MOVL      XAR0,#323             ; [CPU_ALU] |2042| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2040,column 13,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |2040| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2042,column 13,is_stmt,isa 0
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |2042| 
        B         ||$C$L9||,HI          ; [CPU_ALU] |2042| 
        ; branchcc occurs ; [] |2042| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2044,column 17,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2044| 
||$C$L9||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x802)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text:motor2ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor2ControlISR||

$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("motor2ControlISR")
	.dwattr $C$DW$125, DW_AT_low_pc(||motor2ControlISR||)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_linkage_name("motor2ControlISR")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x7ad)
	.dwattr $C$DW$125, DW_AT_decl_column(0x12)
	.dwattr $C$DW$125, DW_AT_TI_interrupt
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(-42)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1966,column 1,is_stmt,address ||motor2ControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motor2ControlISR||

;***************************************************************
;* FNAME: motor2ControlISR              FR SIZE:  40           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto, 36 SOE     *
;***************************************************************

||motor2ControlISR||:
;* R0    assigned to $O$C6
;* AR5   assigned to $O$C7
;* R0    assigned to $O$C8
;* R1    assigned to $O$C9
;* AR4   assigned to $O$C10
;* R1    assigned to $O$C11
;* R2    assigned to $O$C12
;* R4    assigned to $O$C13
;* R4    assigned to $O$C14
;* R3    assigned to $O$C15
;* R1    assigned to $O$C16
;* R0    assigned to $O$C17
;* AR4   assigned to $O$C18
;* AR6   assigned to $O$C19
;* AH    assigned to $O$C20
;* R0    assigned to $O$C21
;* AR5   assigned to $O$C22
;* AR4   assigned to $O$C23
;* R1    assigned to $O$C24
;* AR4   assigned to $O$C25
;* R2    assigned to $O$C26
;* AR4   assigned to $O$C27
;* AR4   assigned to $O$C28
;* AR2   assigned to $O$C29
;* AL    assigned to $O$C30
;* AR4   assigned to $O$C31
;* AR1   assigned to $O$C32
;* AL    assigned to $O$U59
;* AR6   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR5   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR3   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR7   assigned to $O$K1
;* AR4   assigned to $O$K177
;* AR6   assigned to $O$K177
;* AR4   assigned to $O$K177
;* R0    assigned to $O$U116
;* AR4   assigned to $O$U178
;* AR5   assigned to $O$K198
;* R4    assigned to $O$U262
;* AR4   assigned to $O$U275
;* PL    assigned to $O$y92
;* R2    assigned to $O$v1
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* R1    assigned to vdc
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("vdc")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x2f]

;* AR5   assigned to in
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("in")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg14]

;* R0    assigned to mechTheta
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("mechTheta")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to mechTheta
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("mechTheta")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x2b]

;* AR6   assigned to nextHead
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("nextHead")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg16]

;* R0    assigned to mechTheta
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("mechTheta")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to old_pos
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("old_pos")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to new_pos
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("new_pos")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to delta_turns
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("delta_turns")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x2f]

;* AR7   assigned to windowSamples
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("windowSamples")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg18]

;* AL    assigned to oldIdx
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("oldIdx")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg0]

;* R1    assigned to refAbs
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("refAbs")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to speedAbs
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("speedAbs")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to speedAbs
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("speedAbs")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x33]

;* R0    assigned to refAbs
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("refAbs")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to blend
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("blend")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to oldKp
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("oldKp")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to newKp
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("newKp")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to newKi
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("newKi")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x33]

;* R0    assigned to $O$S1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 8, 8
	.dwcfi	save_reg_to_mem, 9, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 10, 10
	.dwcfi	save_reg_to_mem, 11, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 12
	.dwcfi	save_reg_to_mem, 13, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 14
	.dwcfi	save_reg_to_mem, 15, 15
	.dwcfi	cfa_offset, -16
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 16
	.dwcfi	save_reg_to_mem, 17, 17
	.dwcfi	cfa_offset, -18
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 18
	.dwcfi	save_reg_to_mem, 19, 19
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 26
	.dwcfi	cfa_offset, -26
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 28
	.dwcfi	cfa_offset, -28
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 30
	.dwcfi	cfa_offset, -30
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 32
	.dwcfi	cfa_offset, -32
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 34
	.dwcfi	cfa_offset, -34
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 36
	.dwcfi	cfa_offset, -36
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 38
	.dwcfi	cfa_offset, -38
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -42
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1320,column 5,is_stmt,isa 0
        MOVL      XAR1,#||motorVars||+338 ; [CPU_ARAU] |1320| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |1320| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M2|| ; [CPU_ALU] |1320| 
        ; call occurs [#||FCL_runPICtrl_M2||] ; [] |1320| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1320,column 5,is_stmt,isa 0
        MOVL      *-SP[4],XAR1          ; [CPU_ALU] |1320| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |187| 
        B         ||$C$L10||,HIS        ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |2207| 
        MOVB      ACC,#99               ; [CPU_ALU] |2207| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2207| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 190,column 9,is_stmt,isa 0
        SUBR      @||FCL_cycleCount||+1,AL ; [CPU_ALU] |190| 
||$C$L10||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |195| 
        MOVL      XAR7,#||motorVars||+655 ; [CPU_ARAU] |195| 
        CMP       AL,*+XAR7[0]          ; [CPU_ALU] |195| 
        B         ||$C$L11||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |197| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |197| 
||$C$L11||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+654 ; [CPU_ARAU] |201| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |201| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[1],#0          ; [CPU_ALU] |203| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |204| 
||$C$L12||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |1336| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR0,#410             ; [CPU_ALU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVL      XAR1,#655             ; [CPU_ALU] |208| 
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1336| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        UI16TOF32 R3H,*+XAR4[AR1]       ; [CPU_FPU] |208| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR0,#386             ; [CPU_ALU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        ADD       ACC,#107 << 2         ; [CPU_ALU] |1336| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVL      XAR1,#652             ; [CPU_ALU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R1H,*+XAR5[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |208| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |223| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        MOVL      XAR3,ACC              ; [CPU_ALU] |1336| 
        MOVB      XAR0,#190             ; [CPU_ALU] |1336| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R1H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1336| 
        MOV32     *+XAR3[AR0],R1H       ; [CPU_FPU] |1336| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1342,column 5,is_stmt,isa 0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M2|| ; [CPU_ALU] |1342| 
        ; call occurs [#||FCL_runPICtrlWrap_M2||] ; [] |1342| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1353,column 5,is_stmt,isa 0
        MOVB      XAR0,#242             ; [CPU_ALU] |1353| 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |1353| 
        CMPB      AL,#1                 ; [CPU_ALU] |1353| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |1353| 
        ; branchcc occurs ; [] |1353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1355,column 9,is_stmt,isa 0
        MOVB      XAR0,#196             ; [CPU_ALU] |1355| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |1355| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1355| 
        CMPB      AL,#2                 ; [CPU_ALU] |1355| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |1355| 
        ; branchcc occurs ; [] |1355| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1360,column 14,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |1360| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |1360| 
        ; branchcc occurs ; [] |1360| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1372,column 14,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1372| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |1372| 
        ; branchcc occurs ; [] |1372| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1378,column 13,is_stmt,isa 0
        MOVL      XAR0,#358             ; [CPU_ALU] |1378| 
        MOVL      XAR1,#362             ; [CPU_ALU] |1378| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |1378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1375,column 13,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |1375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1378,column 13,is_stmt,isa 0
        MOVL      *+XAR2[AR1],ACC       ; [CPU_ALU] |1378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1375,column 13,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |1375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1381,column 13,is_stmt,isa 0
        MOVL      XAR1,#356             ; [CPU_ALU] |1381| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |1381| 
        MOV32     R1H,*+XAR2[AR1]       ; [CPU_FPU] |1381| 
        ADD       ACC,#181 << 1         ; [CPU_ALU] |1381| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1374,column 13,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |1374| 
        MOV32     *+XAR3[0],R3H         ; [CPU_FPU] |1374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1375,column 13,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R2H       ; [CPU_FPU] |1375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1381,column 13,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |1381| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |1381| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1381| 
        B         ||$C$L21||,LT         ; [CPU_ALU] |1381| 
        ; branchcc occurs ; [] |1381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1383,column 17,is_stmt,isa 0
        ADD       ACC,#37 << 3          ; [CPU_ALU] |1383| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1385,column 17,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1385| 
        ADD       ACC,#39 << 4          ; [CPU_ALU] |1385| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1385| 
        MOVB      XAR0,#35              ; [CPU_ALU] |1385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1383,column 17,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1385,column 17,is_stmt,isa 0
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |1385| 
        MOVL      XAR0,#658             ; [CPU_ALU] |1385| 
        CMP       AL,*+XAR2[AR0]        ; [CPU_ALU] |1385| 
        B         ||$C$L21||,HI         ; [CPU_ALU] |1385| 
        ; branchcc occurs ; [] |1385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1390,column 21,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[0]        ; [CPU_ALU] |1390| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1387,column 21,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |1387| 
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |1387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1390,column 21,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1390| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |1390| 
        ; branch occurs ; [] |1390| 
||$C$L13||:    
        MOVW      DP,#||motorVars||+366 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1362,column 13,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+366 ; [CPU_FPU] |1362| 
        CMPF32    R0H,#0                ; [CPU_FPU] |1362| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1362| 
        B         ||$C$L14||,GT         ; [CPU_ALU] |1362| 
        ; branchcc occurs ; [] |1362| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |1362| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] |1362| 
        ; branch occurs ; [] |1362| 
||$C$L14||:    
        MOVIZ     R0H,#16256            ; [CPU_FPU] |1362| 
||$C$L15||:    
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1362| 
        MOVL      XAR0,#370             ; [CPU_ALU] |1362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 17,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1362,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |1362| 
        MOVL      XAR1,#428             ; [CPU_ALU] |1362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 17,is_stmt,isa 0
        MOVL      XAR0,#438             ; [CPU_ALU] |1368| 
        ADD       ACC,#39 << 4          ; [CPU_ALU] |1368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1362,column 13,is_stmt,isa 0
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 17,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |1368| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |1368| 
        MOVB      ACC,#20               ; [CPU_ALU] |1368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1362,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |1362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 17,is_stmt,isa 0
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |1368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1368| 
        MOVW      DP,#||motorVars||+624 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 17,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |1368| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |66| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOVB      ACC,#24               ; [CPU_ALU] |68| 
        ADDL      ACC,@||motorVars||+624 ; [CPU_ALU] |68| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |68| 
        MOVB      ACC,#22               ; [CPU_ALU] |68| 
        ADDL      ACC,@||motorVars||+624 ; [CPU_ALU] |68| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |68| 
        MOVB      ACC,#20               ; [CPU_ALU] |68| 
        ADDL      ACC,@||motorVars||+624 ; [CPU_ALU] |68| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |68| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR6[0]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L16||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L18||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L16||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L17||:    
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] 
||$C$L18||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |80| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L19||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1357,column 13,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1358,column 13,is_stmt,isa 0
        MOVL      XAR0,#366             ; [CPU_ALU] |1358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1357,column 13,is_stmt,isa 0
        MOVL      XAR1,#360             ; [CPU_ALU] |1357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1358,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1357,column 13,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR1]      ; [CPU_ALU] |1357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1358,column 13,is_stmt,isa 0
        MOVL      XAR0,#428             ; [CPU_ALU] |1358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1357,column 13,is_stmt,isa 0
        MOVL      XAR1,#362             ; [CPU_ALU] |1357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1358,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1357,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |1357| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L20||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1397,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+356 ; [CPU_ARAU] |1397| 
        ZERO      R2H                   ; [CPU_FPU] |1397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1398,column 9,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |1398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1400,column 9,is_stmt,isa 0
        MOVB      XAR0,#72              ; [CPU_ALU] |1400| 
        ZERO      R0H                   ; [CPU_FPU] |1400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1397,column 9,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |1397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1398,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |1398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1400,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1400| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1402,column 9,is_stmt,isa 0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1402| 
        ; call occurs [#||FCL_resetController||] ; [] |1402| 
||$C$L21||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 75,column 2,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |75| 
        MOVL      XAR0,#438             ; [CPU_ALU] |75| 
        MOVL      XAR1,#428             ; [CPU_ALU] |75| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |75| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |75| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |75| 
        ADD       ACC,#109 << 2         ; [CPU_ALU] |75| 
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |75| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 78,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |78| 
        MOV32     R1H,R2H               ; [CPU_FPU] |78| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |78| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 75,column 2,is_stmt,isa 0
        MOV32     *+XAR5[6],R2H         ; [CPU_FPU] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 78,column 5,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 3,is_stmt,isa 0
        MOVL      XAR0,#430             ; [CPU_ALU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        ADDL      *+XAR5[0],ACC         ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVL      XAR0,#436             ; [CPU_ALU] |87| 
        CMPL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |87| 
        B         ||$C$L25||,HI         ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 4,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |89| 
        ADD       ACC,#219 << 1         ; [CPU_ALU] |89| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |89| 
        MOVL      XAR0,#428             ; [CPU_ALU] |89| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |89| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |89| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |89| 
        MOVST0    ZF, NF                ; [CPU_FPU] |89| 
        B         ||$C$L22||,GEQ        ; [CPU_ALU] |89| 
        ; branchcc occurs ; [] |89| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 95,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |95| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |95| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |95| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |95| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |95| 
        ; branch occurs ; [] |95| 
||$C$L22||:    
        MOVW      DP,#||motorVars||+438 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 91,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |91| 
        MOV32     R1H,@||motorVars||+438 ; [CPU_FPU] |91| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |91| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |91| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+438,R0H ; [CPU_FPU] |91| 
||$C$L23||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 98,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |98| 
        MOVW      DP,#||motorVars||+436 ; [CPU_ARAU] 
        MOVL      @||motorVars||+436,ACC ; [CPU_ALU] |98| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |98| 
        ; branch occurs ; [] |98| 
||$C$L24||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        MOVL      XAR0,#428             ; [CPU_ALU] |103| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |103| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |103| 
        ADD       ACC,#219 << 1         ; [CPU_ALU] |103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |103| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 104,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |104| 
        MOV       AH,#32767             ; [CPU_ALU] |104| 
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |103| 
||$C$L25||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOVL      XAR0,#438             ; [CPU_ALU] |111| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |111| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1413| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOVL      XAR1,#438             ; [CPU_ALU] |111| 
        MOVL      XAR0,#434             ; [CPU_ALU] |111| 
        MOVW      DP,#||motorVars||+624 ; [CPU_ARAU] 
        MOV32     R2H,*+XAR5[AR0]       ; [CPU_FPU] |111| 
        MOVL      XAR0,#432             ; [CPU_ALU] |111| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |111| 
        MINF32    R0H,R2H               ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOVL      XAR0,#624             ; [CPU_ALU] |1413| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1413| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1413| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR1],R0H       ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1414,column 5,is_stmt,isa 0
        MOVB      ACC,#56               ; [CPU_ALU] |1414| 
        ADDL      ACC,@||motorVars||+624 ; [CPU_ALU] |1414| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |1413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1414,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |1414| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOVL      XAR0,#394             ; [CPU_ALU] |1413| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |1413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1415,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |1415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1414,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |1414| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1415,column 5,is_stmt,isa 0
        ADD       ACC,#99 << 2          ; [CPU_ALU] |1415| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1416,column 5,is_stmt,isa 0
        MOVB      XAR0,#228             ; [CPU_ALU] |1416| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1415,column 5,is_stmt,isa 0
        MOVB      XAR1,#86              ; [CPU_ALU] |1415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1416,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |1416| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1414,column 5,is_stmt,isa 0
        MOVL      XAR0,#396             ; [CPU_ALU] |1414| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1415,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |1415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1414,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XAR7      ; [CPU_ALU] |1414| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1416,column 5,is_stmt,isa 0
        MOV       AL,*+XAR6[0]          ; [CPU_ALU] |1416| 
        CMPB      AL,#2                 ; [CPU_ALU] |1416| 
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |1416| 
        ; branchcc occurs ; [] |1416| 
        MOVW      DP,#||m2_customSpeedActive|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2348,column 5,is_stmt,isa 0
        MOV       AL,@||m2_customSpeedActive|| ; [CPU_ALU] |2348| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2345,column 1,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |2345| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2348,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2348| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |2348| 
        ; branchcc occurs ; [] |2348| 
        MOVB      XAR6,#24              ; [CPU_ALU] 
        MOVL      XAR4,#||m2_pos_history|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2331,column 19,is_stmt,isa 0
        RPTB      ||$C$L27||,AR6        ; [CPU_ALU] |2331| 
        ; repeat block starts ; [] 
||$C$L26||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2333,column 9,is_stmt,isa 0
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        ; repeat block ends ; [] 
||$C$L27||:    
        MOVW      DP,#||m2_pos_idx||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2339,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2339| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2336,column 5,is_stmt,isa 0
        MOV       @||m2_pos_idx||,#0    ; [CPU_ALU] |2336| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2337,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_head||,#0 ; [CPU_ALU] |2337| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2338,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_tail||,#0 ; [CPU_ALU] |2338| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2341,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_overflow||,#0 ; [CPU_ALU] |2341| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2351,column 9,is_stmt,isa 0
        MOVB      @||m2_customSpeedActive||,#1,UNC ; [CPU_ALU] |2351| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2339,column 5,is_stmt,isa 0
        MOV32     @||m2_custom_speed_pu||,R1H ; [CPU_FPU] |2339| 
||$C$L28||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2354,column 5,is_stmt,isa 0
        MOV       AL,@||m2_pos_sample_head|| ; [CPU_ALU] |2354| 
        ADDB      AL,#1                 ; [CPU_ALU] |2354| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |2354| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2356,column 5,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |2356| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2354,column 5,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_ALU] |2354| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2356,column 5,is_stmt,isa 0
        MOVU      ACC,@||m2_pos_sample_tail|| ; [CPU_ALU] |2356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |2356| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |2356| 
        ; branchcc occurs ; [] |2356| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2358,column 9,is_stmt,isa 0
        MOV       AL,@||m2_pos_sample_tail|| ; [CPU_ALU] |2358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2360,column 9,is_stmt,isa 0
        INC       @||m2_pos_sample_overflow|| ; [CPU_ALU] |2360| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2358,column 9,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |2358| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |2358| 
        MOV       @||m2_pos_sample_tail||,AL ; [CPU_ALU] |2358| 
||$C$L29||:    
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2363,column 5,is_stmt,isa 0
        MOVL      XAR5,#||m2_pos_sample_queue|| ; [CPU_ARAU] |2363| 
        MOV       ACC,@||m2_pos_sample_head|| << 1 ; [CPU_ALU] |2363| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |2363| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2364,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_head||,AR6 ; [CPU_ALU] |2364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVZ      AR6,@||m2_pos_sample_tail|| ; [CPU_ALU] |2283| 
        MOVU      ACC,@||m2_pos_sample_head|| ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2363,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |2363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |2283| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |2283| 
        ; branchcc occurs ; [] |2283| 
        MOV32     R2H,@||m2_custom_speed_pu|| ; [CPU_FPU] 
        MOVW      DP,#||motorVars||+492 ; [CPU_ARAU] 
        MOVL      XAR6,#||m2_pos_history|| ; [CPU_ARAU] 
        CLRC      SXM                   ; [CPU_ALU] 
        UI32TOF32 R4H,@||motorVars||+492 ; [CPU_FPU] 
||$C$L30||:    
        MOVW      DP,#||m2_pos_sample_tail|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOV       ACC,@||m2_pos_sample_tail|| << 1 ; [CPU_ALU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVIZ     R5H,#15172            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOVB      XAR0,#118             ; [CPU_ALU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        ADDL      ACC,XAR5              ; [CPU_ALU] |2285| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOV       AL,@||m2_pos_sample_tail|| ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVXI     R5H,#39846            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        ANDB      AL,#0x3f              ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+438 ; [CPU_ARAU] |2369| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOV       PL,AL                 ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOV       @||m2_pos_sample_tail||,AL ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2372,column 5,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |2372| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2374,column 9,is_stmt,isa 0
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |2374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2377,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2379,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2384,column 9,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |2384| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        CMPF32    R1H,R5H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR7,#200,LT          ; [CPU_ALU] |2389| 
        B         ||$C$L31||,LT         ; [CPU_ALU] |2389| 
        ; branchcc occurs ; [] |2389| 
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2389| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2389| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR7,#50,LT           ; [CPU_ALU] |2389| 
        MOVB      XAR7,#20,GEQ          ; [CPU_ALU] |2389| 
||$C$L31||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2290,column 9,is_stmt,isa 0
        MOV       AH,@||m2_pos_idx||    ; [CPU_ALU] |2290| 
        MOVB      AL,#200               ; [CPU_ALU] |2290| 
        SUB       AH,AR7                ; [CPU_ALU] |2290| 
        ADD       AL,AH                 ; [CPU_ALU] |2290| 
        CMPB      AL,#200               ; [CPU_ALU] |2290| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2293,column 13,is_stmt,isa 0
        MOV       AL,AH,HIS             ; [CPU_ALU] |2293| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2296,column 9,is_stmt,isa 0
        MOV       ACC,AL << 1           ; [CPU_ALU] |2296| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |2296| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2296| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        MOV       ACC,@||m2_pos_idx|| << 1 ; [CPU_ALU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2296,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |2296| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |2297| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2299,column 9,is_stmt,isa 0
        INC       @||m2_pos_idx||       ; [CPU_ALU] |2299| 
        MOV       AL,@||m2_pos_idx||    ; [CPU_ALU] |2299| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2299,column 9,is_stmt,isa 0
        CMPB      AL,#200               ; [CPU_ALU] |2299| 
        B         ||$C$L32||,LO         ; [CPU_ALU] |2299| 
        ; branchcc occurs ; [] |2299| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2302,column 13,is_stmt,isa 0
        MOV       @||m2_pos_idx||,#0    ; [CPU_ALU] |2302| 
||$C$L32||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2305,column 9,is_stmt,isa 0
        SUBF32    R1H,R3H,R0H           ; [CPU_FPU] |2305| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2306,column 9,is_stmt,isa 0
        CMPF32    R1H,#48896            ; [CPU_FPU] |2306| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2306| 
        B         ||$C$L33||,LT         ; [CPU_ALU] |2306| 
        ; branchcc occurs ; [] |2306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2310,column 14,is_stmt,isa 0
        CMPF32    R1H,#16128            ; [CPU_FPU] |2310| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2310| 
        B         ||$C$L34||,LEQ        ; [CPU_ALU] |2310| 
        ; branchcc occurs ; [] |2310| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2312,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |2312| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |2312| 
        ; branch occurs ; [] |2312| 
||$C$L33||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2308,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |2308| 
||$C$L34||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        MOVU      ACC,AR7               ; [CPU_ALU] |2319| 
        MOV32     R3H,ACC               ; [CPU_FPU] |2319| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |2319| 
        MOVIZ     R0H,#18834            ; [CPU_FPU] |2319| 
        MOVXI     R0H,#31744            ; [CPU_FPU] |2319| 
        DIVF32    R3H,R0H,R3H           ; [CPU_FPU] |2319| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVZ      AR7,PL                ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2322,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+490 ; [CPU_ARAU] |2322| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2323,column 9,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |2323| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        MOVIZ     R0H,#16217            ; [CPU_FPU] |2319| 
        DIVF32    R3H,R3H,R4H           ; [CPU_FPU] |2319| 
        MOVXI     R0H,#39322            ; [CPU_FPU] |2319| 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |2319| 
        MOVIZ     R1H,#15897            ; [CPU_FPU] |2319| 
        MOVXI     R1H,#39322            ; [CPU_FPU] |2319| 
        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVU      ACC,@||m2_pos_sample_head|| ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2322,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |2322| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2323,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |2323| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |2283| 
        ; branchcc occurs ; [] |2283| 
        MOV32     @||m2_custom_speed_pu||,R2H ; [CPU_FPU] 
        B         ||$C$L38||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L35||:    
        MOVW      DP,#||motorVars||+396 ; [CPU_ARAU] 
        MOVB      XAR6,#24              ; [CPU_ALU] 
        MOVL      XAR4,#||m2_pos_history|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2328,column 1,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+396 ; [CPU_FPU] |2328| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2331,column 19,is_stmt,isa 0
        RPTB      ||$C$L37||,AR6        ; [CPU_ALU] |2331| 
        ; repeat block starts ; [] 
||$C$L36||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2333,column 9,is_stmt,isa 0
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2333| 
        ; repeat block ends ; [] 
||$C$L37||:    
        MOVW      DP,#||m2_pos_idx||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2339,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2339| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1424,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1424| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2336,column 5,is_stmt,isa 0
        MOV       @||m2_pos_idx||,#0    ; [CPU_ALU] |2336| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2337,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_head||,#0 ; [CPU_ALU] |2337| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2338,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_tail||,#0 ; [CPU_ALU] |2338| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2340,column 5,is_stmt,isa 0
        MOV       @||m2_customSpeedActive||,#0 ; [CPU_ALU] |2340| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2341,column 5,is_stmt,isa 0
        MOV       @||m2_pos_sample_overflow||,#0 ; [CPU_ALU] |2341| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2339,column 5,is_stmt,isa 0
        MOV32     @||m2_custom_speed_pu||,R1H ; [CPU_FPU] |2339| 
        MOVW      DP,#||motorVars||+490 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1424,column 9,is_stmt,isa 0
        MOV32     @||motorVars||+490,R0H ; [CPU_FPU] |1424| 
||$C$L38||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1431,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1431| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1431| 
        ADD       ACC,#657 << 0         ; [CPU_ALU] |1431| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1431| 
        INC       *+XAR5[0]             ; [CPU_ALU] |1431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1433,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1433| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1431,column 5,is_stmt,isa 0
        MOVZ      AR6,*+XAR5[0]         ; [CPU_ALU] |1431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1433,column 5,is_stmt,isa 0
        ADD       ACC,#139 << 2         ; [CPU_ALU] |1433| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1433| 
        MOVB      XAR0,#100             ; [CPU_ALU] |1433| 
        MOV       AL,AR6                ; [CPU_ALU] |1433| 
        CMP       AL,*+XAR5[AR0]        ; [CPU_ALU] |1433| 
        B         ||$C$L46||,LO         ; [CPU_ALU] |1433| 
        ; branchcc occurs ; [] |1433| 
        MOVW      DP,#||m2_custom_speed_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 9,is_stmt,isa 0
        MOVL      XAR0,#438             ; [CPU_ALU] |1436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 9,is_stmt,isa 0
        MOVL      XAR6,@||m2_custom_speed_pu|| ; [CPU_ALU] |1435| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 9,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1436| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |1436| 
        ADD       ACC,#277 << 1         ; [CPU_ALU] |1436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 9,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |1435| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |1436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2405,column 21,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |2405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2427,column 9,is_stmt,isa 0
        MOVIZ     R3H,#15692            ; [CPU_FPU] |2427| 
        MOVXI     R3H,#52429            ; [CPU_FPU] |2427| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2402,column 24,is_stmt,isa 0
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |2402| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2405,column 21,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |2405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |1436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2410,column 5,is_stmt,isa 0
        CMPF32    R2H,#0                ; [CPU_FPU] |2410| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2412,column 9,is_stmt,isa 0
        NEGF32    R2H,R2H,LT            ; [CPU_FPU] |2412| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2415,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2417,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2417| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2422,column 9,is_stmt,isa 0
        MAXF32    R2H,R0H               ; [CPU_FPU] |2422| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2427,column 9,is_stmt,isa 0
        CMPF32    R2H,R3H               ; [CPU_FPU] |2427| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2427| 
        B         ||$C$L39||,GT         ; [CPU_ALU] |2427| 
        ; branchcc occurs ; [] |2427| 
        ZERO      R0H                   ; [CPU_FPU] |2427| 
        B         ||$C$L41||,UNC        ; [CPU_ALU] |2427| 
        ; branch occurs ; [] |2427| 
||$C$L39||:    
        MOVIZ     R0H,#15948            ; [CPU_FPU] |2427| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2427| 
        CMPF32    R2H,R0H               ; [CPU_FPU] |2427| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2427| 
        B         ||$C$L40||,LT         ; [CPU_ALU] |2427| 
        ; branchcc occurs ; [] |2427| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |2427| 
        B         ||$C$L41||,UNC        ; [CPU_ALU] |2427| 
        ; branch occurs ; [] |2427| 
||$C$L40||:    
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2427| 
        MOVIZ     R3H,#16597            ; [CPU_FPU] |2427| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2427| 
        SUBF32    R0H,R2H,R0H           ; [CPU_FPU] |2427| 
        MOVXI     R3H,#21845            ; [CPU_FPU] |2427| 
        MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |2427| 
||$C$L41||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVIZ     R4H,#48349            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVIZ     R5H,#48908            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15605            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVIZ     R6H,#16153            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        MOVIZ     R3H,#14979            ; [CPU_FPU] |2444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVXI     R4H,#12058            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVXI     R5H,#52429            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVXI     R2H,#49807            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVXI     R6H,#39322            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        MOVXI     R3H,#4719             ; [CPU_FPU] |2444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MPYF32    R4H,R4H,R0H           ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MPYF32    R5H,R5H,R0H           ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        ADDF32    R0H,R6H,R5H           ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        CMPF32    R1H,R3H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L43||,LEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R3H,#14979            ; [CPU_FPU] |2444| 
        MOVXI     R3H,#4719             ; [CPU_FPU] |2444| 
        CMPF32    R0H,R3H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L43||,LEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R3H,#14545            ; [CPU_FPU] |2444| 
        MOVXI     R3H,#46871            ; [CPU_FPU] |2444| 
        ADDF32    R3H,R3H,R1H           ; [CPU_FPU] |2444| 
        NOP       ; [CPU_ALU] 
        CMPF32    R0H,R3H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L42||,GT         ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R3H,#14545            ; [CPU_FPU] |2444| 
        MOVXI     R3H,#46871            ; [CPU_FPU] |2444| 
        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |2444| 
        NOP       ; [CPU_ALU] 
        CMPF32    R0H,R3H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L43||,GEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
||$C$L42||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2448,column 9,is_stmt,isa 0
        DIVF32    R3H,R1H,R0H           ; [CPU_FPU] |2448| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVW      DP,#||motorVars||+586 ; [CPU_ARAU] 
        MOV32     R1H,@||motorVars||+586 ; [CPU_FPU] |2448| 
        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |2448| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+586,R1H ; [CPU_FPU] |2448| 
||$C$L43||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2452,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2452| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVL      XAR0,#554             ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2452,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2452| 
        ADD       ACC,#141 << 2         ; [CPU_ALU] |2452| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2452| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
        MOVL      XAR0,#564             ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2454,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2454| 
        MOV32     *+XAR5[6],R1H         ; [CPU_FPU] |2454| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2455,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |2455| 
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |2455| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVL      XAR0,#570             ; [CPU_ALU] |123| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
        MOVL      XAR0,#572             ; [CPU_ALU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      MPYF32    R7H,R3H,R1H           ; [CPU_FPU] |116| 

        MOVL      XAR0,#556             ; [CPU_ALU] |116| 

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
||      MPYF32    R5H,R3H,R1H           ; [CPU_FPU] |123| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVL      XAR0,#560             ; [CPU_ALU] |123| 
        SUBF32    R6H,R5H,R1H           ; [CPU_FPU] |123| 
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
        MPYF32    R5H,R6H,R5H           ; [CPU_FPU] |123| 
        MOVL      XAR0,#590             ; [CPU_ALU] |123| 
        MPYF32    R5H,R5H,R4H           ; [CPU_FPU] |123| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
        SUBF32    R4H,R5H,R4H           ; [CPU_FPU] |123| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[AR0],R4H       ; [CPU_FPU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVL      XAR0,#588             ; [CPU_ALU] |124| 
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOVL      XAR0,#562             ; [CPU_ALU] |125| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |125| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2453,column 5,is_stmt,isa 0

        MPYF32    R5H,R4H,R5H           ; [CPU_FPU] |125| 
||      MOV32     *+XAR5[4],R2H         ; [CPU_FPU] |2453| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOVL      XAR0,#588             ; [CPU_ALU] |125| 
        MOV32     *+XAR4[AR0],R5H       ; [CPU_FPU] |125| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOVL      XAR0,#586             ; [CPU_ALU] |119| 
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        MOVL      XAR0,#568             ; [CPU_ALU] |119| 

        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
||      SUBF32    R6H,R3H,R1H           ; [CPU_FPU] |119| 

        MOVL      XAR0,#592             ; [CPU_ALU] |119| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        MPYF32    R3H,R6H,R3H           ; [CPU_FPU] |119| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVL      XAR1,#584             ; [CPU_ALU] |128| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |119| 
        MOVL      XAR0,#580             ; [CPU_ALU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2452,column 5,is_stmt,isa 0

        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |119| 
||      MOV32     *+XAR5[2],R0H         ; [CPU_FPU] |2452| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2456,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16384            ; [CPU_FPU] |2456| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |119| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 120,column 2,is_stmt,isa 0
        MOVL      XAR0,#586             ; [CPU_ALU] |120| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0

        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |120| 
||      SUBF32    R1H,R7H,R1H           ; [CPU_FPU] |116| 

        MOVL      XAR0,#578             ; [CPU_ALU] |116| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |116| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVL      XAR0,#582             ; [CPU_ALU] |124| 
        MOV32     *+XAR4[AR0],R4H       ; [CPU_FPU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVL      XAR0,#566             ; [CPU_ALU] |128| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |128| 
||      ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |128| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2456,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |2456| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |128| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2457,column 5,is_stmt,isa 0
        MOVIZ     R2H,#49152            ; [CPU_FPU] |2457| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2456,column 5,is_stmt,isa 0

        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |128| 
||      MOV32     *+XAR5[AR0],R3H       ; [CPU_FPU] |2456| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVL      XAR0,#574             ; [CPU_ALU] |131| 
        MOV32     R0H,R1H               ; [CPU_FPU] |131| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2457,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |2457| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |128| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MINF32    R0H,R3H               ; [CPU_FPU] |131| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2457,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |2457| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVL      XAR0,#576             ; [CPU_ALU] |131| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
        MOVL      XAR0,#558             ; [CPU_ALU] |131| 
        MAXF32    R0H,R2H               ; [CPU_FPU] |131| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        CMPF32    R0H,R1H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L44||,NEQ        ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |140| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |140| 
        ; branch occurs ; [] |140| 
||$C$L44||:    
        ZERO      R0H                   ; [CPU_FPU] |140| 
||$C$L45||:    
        MOVL      XAR4,#||motorVars||+592 ; [CPU_ARAU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1439,column 9,is_stmt,isa 0
        MOVB      XAR0,#65              ; [CPU_ALU] |1439| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1439,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |1439| 
||$C$L46||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1442,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+624 ; [CPU_ARAU] |1442| 
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |1442| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1442| 
        CMPB      AL,#2                 ; [CPU_ALU] |1442| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |1442| 
        ; branchcc occurs ; [] |1442| 
        MOVB      XAR0,#46              ; [CPU_ALU] |1442| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |1442| 
        B         ||$C$L48||,NEQ        ; [CPU_ALU] |1442| 
        ; branchcc occurs ; [] |1442| 
||$C$L47||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1446,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |1446| 
        MOVL      XAR4,#||motorVars||+578 ; [CPU_ARAU] |1446| 
        ZERO      R0H                   ; [CPU_FPU] |1446| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1446| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1447,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |1447| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1449,column 9,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |1449| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1450,column 9,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |1450| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1447,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1447| 
        MOVB      XAR0,#46              ; [CPU_ALU] 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1451,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |1451| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1448,column 9,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |1448| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1448| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] 
||$C$L48||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1458,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1458| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |1458| 
        ; branchcc occurs ; [] |1458| 
        CMPB      AL,#1                 ; [CPU_ALU] |1458| 
        B         ||$C$L49||,NEQ        ; [CPU_ALU] |1458| 
        ; branchcc occurs ; [] |1458| 
        MOVW      DP,#||motorVars||+364 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+364 ; [CPU_FPU] |1458| 
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1458| 
        ; branch occurs ; [] |1458| 
||$C$L49||:    
        MOVW      DP,#||motorVars||+558 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+558 ; [CPU_FPU] |1458| 
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1458| 
        ; branch occurs ; [] |1458| 
||$C$L50||:    
        ZERO      R0H                   ; [CPU_FPU] |1458| 
||$C$L51||:    
        MOVB      ACC,#32               ; [CPU_ALU] |1458| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |1458| 
        MOVL      XAR0,#624             ; [CPU_ALU] |1458| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1463| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1458,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1458| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1458| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 5,is_stmt,isa 0
        MOVXI     R2H,#50604            ; [CPU_FPU] |1463| 
        MOVL      XAR1,#362             ; [CPU_ALU] |1463| 
        MOVL      XAR0,#356             ; [CPU_ALU] |1463| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1458,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |1458| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |1463| 
        MOV32     R0H,*+XAR5[AR1]       ; [CPU_FPU] |1463| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("ramper")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1463| 
        ; call occurs [#||ramper||] ; [] |1463| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1465,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |1465| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1465,column 5,is_stmt,isa 0
        ADD       ACC,#127 << 2         ; [CPU_ALU] |1465| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |1465| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR7,#2               ; [CPU_ALU] |819| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       PL,#1028              ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |1463| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1983,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |1983| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR7       ; [CPU_ALU] |819| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1983,column 5,is_stmt,isa 0
        ADDB      ACC,#142              ; [CPU_ALU] |1983| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1983| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1465,column 5,is_stmt,isa 0
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |1465| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),PL        ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1983,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1983| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |1983| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -38
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -36
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -34
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -32
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -30
	.dwcfi	restore_reg, 59
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -28
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -26
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 12
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 10
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 8
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$125, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x7c0)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text:motor1ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor1ControlISR||

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("motor1ControlISR")
	.dwattr $C$DW$150, DW_AT_low_pc(||motor1ControlISR||)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_linkage_name("motor1ControlISR")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0x758)
	.dwattr $C$DW$150, DW_AT_decl_column(0x12)
	.dwattr $C$DW$150, DW_AT_TI_interrupt
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-40)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1881,column 1,is_stmt,address ||motor1ControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motor1ControlISR||

;***************************************************************
;* FNAME: motor1ControlISR              FR SIZE:  38           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto, 34 SOE     *
;***************************************************************

||motor1ControlISR||:
;* AR4   assigned to $O$C6
;* AR2   assigned to $O$C7
;* R0    assigned to $O$C8
;* R1    assigned to $O$C9
;* R2    assigned to $O$C10
;* R3    assigned to $O$C11
;* R5    assigned to $O$C12
;* R6    assigned to $O$C13
;* R3    assigned to $O$C14
;* R0    assigned to $O$C15
;* AR4   assigned to $O$C16
;* AH    assigned to $O$C17
;* AR4   assigned to $O$C18
;* AR4   assigned to $O$C19
;* R1    assigned to $O$C20
;* AR5   assigned to $O$C21
;* R2    assigned to $O$C22
;* AR4   assigned to $O$C23
;* AR4   assigned to $O$C24
;* AL    assigned to $O$C25
;* AR2   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AL    assigned to $O$U40
;* AR4   assigned to $O$K143
;* AR6   assigned to $O$K143
;* AR4   assigned to $O$K143
;* R0    assigned to $O$U81
;* AR4   assigned to $O$U144
;* AR5   assigned to $O$K163
;* AR4   assigned to $O$U235
;* AR5   assigned to $O$U38
;* PL    assigned to $O$y123
;* R4    assigned to $O$v1
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* R0    assigned to vdc
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("vdc")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2b]

;* AR5   assigned to in
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("in")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg14]

;* R0    assigned to mechTheta
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("mechTheta")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to mechTheta
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("mechTheta")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x2b]

;* AR6   assigned to nextHead
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("nextHead")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg16]

;* R0    assigned to mechTheta
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("mechTheta")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to old_pos
$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("old_pos")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to new_pos
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("new_pos")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to delta_turns
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("delta_turns")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x2f]

;* AR7   assigned to windowSamples
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("windowSamples")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg18]

;* AL    assigned to oldIdx
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("oldIdx")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]

;* R1    assigned to refAbs
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("refAbs")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to speedAbs
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("speedAbs")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to speedAbs
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("speedAbs")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to refAbs
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("refAbs")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to blend
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("blend")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to oldKp
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("oldKp")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to newKp
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("newKp")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x2f]

;* R5    assigned to newKi
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("newKi")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x3f]

;* R0    assigned to $O$S1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 8, 8
	.dwcfi	save_reg_to_mem, 9, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 10
	.dwcfi	save_reg_to_mem, 13, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 12
	.dwcfi	save_reg_to_mem, 15, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 14
	.dwcfi	save_reg_to_mem, 17, 15
	.dwcfi	cfa_offset, -16
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 16
	.dwcfi	save_reg_to_mem, 19, 17
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 26
	.dwcfi	cfa_offset, -26
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 28
	.dwcfi	cfa_offset, -28
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 30
	.dwcfi	cfa_offset, -30
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 32
	.dwcfi	cfa_offset, -32
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 34
	.dwcfi	cfa_offset, -34
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 36
	.dwcfi	cfa_offset, -36
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -40
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1162,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1162| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("FCL_runPICtrl_M1")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M1|| ; [CPU_ALU] |1162| 
        ; call occurs [#||FCL_runPICtrl_M1||] ; [] |1162| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount|| ; [CPU_ALU] |187| 
        B         ||$C$L52||,HIS        ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |2207| 
        MOVB      ACC,#99               ; [CPU_ALU] |2207| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2207| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 190,column 9,is_stmt,isa 0
        SUBR      @||FCL_cycleCount||,AL ; [CPU_ALU] |190| 
||$C$L52||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |195| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |195| 
        MOVL      XAR0,#317             ; [CPU_ALU] |195| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |195| 
        B         ||$C$L53||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |197| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |197| 
||$C$L53||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |201| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |201| 
        B         ||$C$L54||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOVL      XAR1,#317             ; [CPU_ALU] |203| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |203| 
||$C$L54||:    
        MOVW      DP,#||motorVars||+317 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        UI16TOF32 R1H,@||motorVars||+317 ; [CPU_FPU] |208| 
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+72  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR4,@||motorVars||+72 ; [CPU_ALU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1178,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |1178| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+48  ; [CPU_ARAU] 

        MOV32     R1H,@||motorVars||+48 ; [CPU_FPU] |223| 
||      MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |208| 

        MOVW      DP,#||motorVars||+314 ; [CPU_ARAU] 
        MOV32     @||motorVars||+314,R0H ; [CPU_FPU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1178,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1178| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1184,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1184| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1178,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1178| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1184,column 5,is_stmt,isa 0
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M1|| ; [CPU_ALU] |1184| 
        ; call occurs [#||FCL_runPICtrlWrap_M1||] ; [] |1184| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1195,column 5,is_stmt,isa 0
        MOVL      XAR0,#332             ; [CPU_ALU] |1195| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1195| 
        CMPB      AL,#1                 ; [CPU_ALU] |1195| 
        B         ||$C$L62||,NEQ        ; [CPU_ALU] |1195| 
        ; branchcc occurs ; [] |1195| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1197,column 9,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |1197| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |1197| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1197| 
        CMPB      AL,#2                 ; [CPU_ALU] |1197| 
        B         ||$C$L61||,EQ         ; [CPU_ALU] |1197| 
        ; branchcc occurs ; [] |1197| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1202,column 14,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |1202| 
        B         ||$C$L55||,EQ         ; [CPU_ALU] |1202| 
        ; branchcc occurs ; [] |1202| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1214,column 14,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1214| 
        B         ||$C$L63||,NEQ        ; [CPU_ALU] |1214| 
        ; branchcc occurs ; [] |1214| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1223,column 13,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1223| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |1223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1220,column 13,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |1220| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1216,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1216| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1220,column 13,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |1220| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |1220| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1217,column 13,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |1217| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1216,column 13,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |1216| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1220,column 13,is_stmt,isa 0
        MOVL      *+XAR2[AR1],ACC       ; [CPU_ALU] |1220| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1216,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1216| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1223,column 13,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1223| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |1223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1217,column 13,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1217| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1223,column 13,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |1223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1217,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |1217| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1223,column 13,is_stmt,isa 0
        MOVST0    ZF, NF                ; [CPU_FPU] |1223| 
        B         ||$C$L63||,LT         ; [CPU_ALU] |1223| 
        ; branchcc occurs ; [] |1223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1225,column 17,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1225| 
        ADD       ACC,#5 << 6           ; [CPU_ALU] |1225| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1227,column 17,is_stmt,isa 0
        MOVL      XAR0,#321             ; [CPU_ALU] |1227| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1227| 
        MOVL      XAR0,#320             ; [CPU_ALU] |1227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1225,column 17,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1227,column 17,is_stmt,isa 0
        CMP       AL,*+XAR2[AR0]        ; [CPU_ALU] |1227| 
        B         ||$C$L63||,HI         ; [CPU_ALU] |1227| 
        ; branchcc occurs ; [] |1227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1232,column 21,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |1232| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |1232| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1229,column 21,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |1229| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |1229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1232,column 21,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1232| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] |1232| 
        ; branch occurs ; [] |1232| 
||$C$L55||:    
        MOVW      DP,#||motorVars||+28  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1204,column 13,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+28 ; [CPU_FPU] |1204| 
        CMPF32    R0H,#0                ; [CPU_FPU] |1204| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1204| 
        B         ||$C$L56||,GT         ; [CPU_ALU] |1204| 
        ; branchcc occurs ; [] |1204| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |1204| 
        B         ||$C$L57||,UNC        ; [CPU_ALU] |1204| 
        ; branch occurs ; [] |1204| 
||$C$L56||:    
        MOVIZ     R0H,#16256            ; [CPU_FPU] |1204| 
||$C$L57||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1210,column 17,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1210| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1204,column 13,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVL      XAR1,#286             ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1210,column 17,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1210| 
        MOVB      XAR0,#100             ; [CPU_ALU] |1210| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1210| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |1210| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1204,column 13,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |1204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1204,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |1204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1210,column 17,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |1210| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1204,column 13,is_stmt,isa 0
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1204| 
        MOVB      XAR0,#90              ; [CPU_ALU] |1204| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |68| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L58||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L60||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L59||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L58||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L59||:    
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] 
||$C$L60||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |80| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L61||:    
        MOVW      DP,#||motorVars||+22  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1199,column 13,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+22 ; [CPU_ALU] |1199| 
        MOVW      DP,#||motorVars||+28  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1200,column 13,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+28 ; [CPU_ALU] |1200| 
        MOVW      DP,#||motorVars||+24  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1199,column 13,is_stmt,isa 0
        MOVL      @||motorVars||+24,XAR6 ; [CPU_ALU] |1199| 
        MOVW      DP,#||motorVars||+90  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1200,column 13,is_stmt,isa 0
        MOVL      @||motorVars||+90,ACC ; [CPU_ALU] |1200| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L62||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1239,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1239| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1239| 
        ZERO      R0H                   ; [CPU_FPU] |1239| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1240,column 9,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |1240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1239,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1239| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1240,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1240| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1242,column 9,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |1242| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1240,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1242,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1242| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1244,column 9,is_stmt,isa 0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1244| 
        ; call occurs [#||FCL_resetController||] ; [] |1244| 
||$C$L63||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 75,column 2,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |75| 
        MOVB      XAR0,#100             ; [CPU_ALU] |75| 
        MOVB      XAR1,#90              ; [CPU_ALU] |75| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |75| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |75| 
        MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |75| 
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 78,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 75,column 2,is_stmt,isa 0
        ADDB      XAR4,#98              ; [CPU_ALU] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 78,column 5,is_stmt,isa 0
        MOV32     R1H,R2H               ; [CPU_FPU] |78| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |78| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 75,column 2,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 78,column 5,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L66||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 3,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |87| 
        MOVB      XAR1,#98              ; [CPU_ALU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |87| 
        CMPL      ACC,*+XAR5[AR1]       ; [CPU_ALU] |87| 
        B         ||$C$L67||,HI         ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 4,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |89| 
        MOVB      XAR0,#90              ; [CPU_ALU] |89| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |89| 
        ADDB      XAR4,#100             ; [CPU_ALU] |89| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |89| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |89| 
        MOVST0    ZF, NF                ; [CPU_FPU] |89| 
        B         ||$C$L64||,GEQ        ; [CPU_ALU] |89| 
        ; branchcc occurs ; [] |89| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 95,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |95| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |95| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |95| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |95| 
        B         ||$C$L65||,UNC        ; [CPU_ALU] |95| 
        ; branch occurs ; [] |95| 
||$C$L64||:    
        MOVW      DP,#||motorVars||+100 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 91,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |91| 
        MOV32     R1H,@||motorVars||+100 ; [CPU_FPU] |91| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |91| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |91| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+100,R0H ; [CPU_FPU] |91| 
||$C$L65||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 98,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |98| 
        MOVW      DP,#||motorVars||+98  ; [CPU_ARAU] 
        MOVL      @||motorVars||+98,ACC ; [CPU_ALU] |98| 
        B         ||$C$L67||,UNC        ; [CPU_ALU] |98| 
        ; branch occurs ; [] |98| 
||$C$L66||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |103| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |103| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 104,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |103| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 104,column 3,is_stmt,isa 0
        MOV       AH,#32767             ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        ADDB      XAR4,#100             ; [CPU_ALU] |103| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 104,column 3,is_stmt,isa 0
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 103,column 6,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |103| 
||$C$L67||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |111| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |111| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |111| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |111| 
        MOVB      XAR0,#94              ; [CPU_ALU] |111| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MINF32    R0H,R2H               ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOVB      XAR1,#100             ; [CPU_ALU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 111,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |111| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1255,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |1255| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1255| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1256,column 5,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |1256| 
        MOVB      ACC,#56               ; [CPU_ALU] |1256| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1256| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1256| 
        MOVL      XAR6,*+XAR5[0]        ; [CPU_ALU] |1256| 
        MOVB      XAR1,#58              ; [CPU_ALU] |1256| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1259,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1259| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1257,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |1257| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1256,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |1256| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1257,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1257| 
        MOVB      XAR0,#144             ; [CPU_ALU] |1257| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1257| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1259,column 5,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1259| 
        CMPB      AL,#2                 ; [CPU_ALU] |1259| 
        B         ||$C$L78||,NEQ        ; [CPU_ALU] |1259| 
        ; branchcc occurs ; [] |1259| 
        MOVW      DP,#||m1_customSpeedActive|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2251,column 1,is_stmt,isa 0
        MOVB      XAR0,#58              ; [CPU_ALU] |2251| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2254,column 5,is_stmt,isa 0
        MOV       AL,@||m1_customSpeedActive|| ; [CPU_ALU] |2254| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2251,column 1,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2251| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2254,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2254| 
        B         ||$C$L68||,NEQ        ; [CPU_ALU] |2254| 
        ; branchcc occurs ; [] |2254| 
        MOV32     R4H,@||m1_custom_speed_pu|| ; [CPU_FPU] 
        B         ||$C$L71||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L68||:    
        MOVB      XAR6,#24              ; [CPU_ALU] 
        MOVL      XAR4,#||m1_pos_history|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2237,column 19,is_stmt,isa 0
        RPTB      ||$C$L70||,AR6        ; [CPU_ALU] |2237| 
        ; repeat block starts ; [] 
||$C$L69||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2239,column 9,is_stmt,isa 0
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        ; repeat block ends ; [] 
||$C$L70||:    
        MOVW      DP,#||m1_pos_idx||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2245,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2245| 
        ZERO      R4H                   ; [CPU_FPU] |2245| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2242,column 5,is_stmt,isa 0
        MOV       @||m1_pos_idx||,#0    ; [CPU_ALU] |2242| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2243,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_head||,#0 ; [CPU_ALU] |2243| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2244,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_tail||,#0 ; [CPU_ALU] |2244| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2247,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_overflow||,#0 ; [CPU_ALU] |2247| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2257,column 9,is_stmt,isa 0
        MOVB      @||m1_customSpeedActive||,#1,UNC ; [CPU_ALU] |2257| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2245,column 5,is_stmt,isa 0
        MOV32     @||m1_custom_speed_pu||,R1H ; [CPU_FPU] |2245| 
||$C$L71||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2260,column 5,is_stmt,isa 0
        MOV       AL,@||m1_pos_sample_head|| ; [CPU_ALU] |2260| 
        ADDB      AL,#1                 ; [CPU_ALU] |2260| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |2260| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2262,column 5,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |2262| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2260,column 5,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_ALU] |2260| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2262,column 5,is_stmt,isa 0
        MOVU      ACC,@||m1_pos_sample_tail|| ; [CPU_ALU] |2262| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |2262| 
        B         ||$C$L72||,NEQ        ; [CPU_ALU] |2262| 
        ; branchcc occurs ; [] |2262| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2264,column 9,is_stmt,isa 0
        MOV       AL,@||m1_pos_sample_tail|| ; [CPU_ALU] |2264| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2266,column 9,is_stmt,isa 0
        INC       @||m1_pos_sample_overflow|| ; [CPU_ALU] |2266| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2264,column 9,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |2264| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |2264| 
        MOV       @||m1_pos_sample_tail||,AL ; [CPU_ALU] |2264| 
||$C$L72||:    
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2269,column 5,is_stmt,isa 0
        MOVL      XAR5,#||m1_pos_sample_queue|| ; [CPU_ARAU] |2269| 
        MOV       ACC,@||m1_pos_sample_head|| << 1 ; [CPU_ALU] |2269| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |2269| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2269| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2270,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_head||,AR6 ; [CPU_ALU] |2270| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVZ      AR6,@||m1_pos_sample_tail|| ; [CPU_ALU] |2189| 
        MOVU      ACC,@||m1_pos_sample_head|| ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2269,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |2269| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |2189| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |2189| 
        ; branchcc occurs ; [] |2189| 
        MOVL      XAR6,#||m1_pos_history|| ; [CPU_ARAU] 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L73||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        MOV       ACC,@||m1_pos_sample_tail|| << 1 ; [CPU_ALU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVIZ     R3H,#15172            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        ADDL      ACC,XAR5              ; [CPU_ALU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVB      XAR1,#100             ; [CPU_ALU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        MOV       AL,@||m1_pos_sample_tail|| ; [CPU_ALU] |2192| 
        ADDB      AL,#1                 ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVXI     R3H,#39846            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        ANDB      AL,#0x3f              ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        MOV       PL,AL                 ; [CPU_ALU] |2192| 
        MOV       @||m1_pos_sample_tail||,AL ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2372,column 5,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |2372| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2374,column 9,is_stmt,isa 0
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |2374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2377,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2379,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2384,column 9,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |2384| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        CMPF32    R1H,R3H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR7,#200,LT          ; [CPU_ALU] |2389| 
        B         ||$C$L74||,LT         ; [CPU_ALU] |2389| 
        ; branchcc occurs ; [] |2389| 
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2389| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2389| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR7,#50,LT           ; [CPU_ALU] |2389| 
        MOVB      XAR7,#20,GEQ          ; [CPU_ALU] |2389| 
||$C$L74||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2196,column 9,is_stmt,isa 0
        MOV       AH,@||m1_pos_idx||    ; [CPU_ALU] |2196| 
        MOVB      AL,#200               ; [CPU_ALU] |2196| 
        SUB       AH,AR7                ; [CPU_ALU] |2196| 
        ADD       AL,AH                 ; [CPU_ALU] |2196| 
        CMPB      AL,#200               ; [CPU_ALU] |2196| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2199,column 13,is_stmt,isa 0
        MOV       AL,AH,HIS             ; [CPU_ALU] |2199| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2202,column 9,is_stmt,isa 0
        MOV       ACC,AL << 1           ; [CPU_ALU] |2202| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |2202| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2202| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        MOV       ACC,@||m1_pos_idx|| << 1 ; [CPU_ALU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2202,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |2202| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |2203| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2205,column 9,is_stmt,isa 0
        INC       @||m1_pos_idx||       ; [CPU_ALU] |2205| 
        MOV       AL,@||m1_pos_idx||    ; [CPU_ALU] |2205| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2205,column 9,is_stmt,isa 0
        CMPB      AL,#200               ; [CPU_ALU] |2205| 
        B         ||$C$L75||,LO         ; [CPU_ALU] |2205| 
        ; branchcc occurs ; [] |2205| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2208,column 13,is_stmt,isa 0
        MOV       @||m1_pos_idx||,#0    ; [CPU_ALU] |2208| 
||$C$L75||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2211,column 9,is_stmt,isa 0
        SUBF32    R1H,R2H,R0H           ; [CPU_FPU] |2211| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2212,column 9,is_stmt,isa 0
        CMPF32    R1H,#48896            ; [CPU_FPU] |2212| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2212| 
        B         ||$C$L76||,LT         ; [CPU_ALU] |2212| 
        ; branchcc occurs ; [] |2212| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2216,column 14,is_stmt,isa 0
        CMPF32    R1H,#16128            ; [CPU_FPU] |2216| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2216| 
        B         ||$C$L77||,LEQ        ; [CPU_ALU] |2216| 
        ; branchcc occurs ; [] |2216| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2218,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |2218| 
        B         ||$C$L77||,UNC        ; [CPU_ALU] |2218| 
        ; branch occurs ; [] |2218| 
||$C$L76||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2214,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |2214| 
||$C$L77||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        MOVU      ACC,AR7               ; [CPU_ALU] |2225| 
        MOV32     R2H,ACC               ; [CPU_FPU] |2225| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#18834            ; [CPU_FPU] |2225| 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |2225| 
        MOVB      XAR0,#154             ; [CPU_ALU] |2225| 
        MOVXI     R0H,#31744            ; [CPU_FPU] |2225| 
        DIVF32    R3H,R0H,R2H           ; [CPU_FPU] |2225| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVZ      AR7,PL                ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 9,is_stmt,isa 0
        MOVB      XAR1,#152             ; [CPU_ALU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        UI32TOF32 R2H,*+XAR4[AR0]       ; [CPU_FPU] |2225| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVU      ACC,@||m1_pos_sample_head|| ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        MOVIZ     R0H,#16217            ; [CPU_FPU] |2225| 
        DIVF32    R2H,R3H,R2H           ; [CPU_FPU] |2225| 
        MOVXI     R0H,#39322            ; [CPU_FPU] |2225| 
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |2225| 
        MOVIZ     R1H,#15897            ; [CPU_FPU] |2225| 
        MOVXI     R1H,#39322            ; [CPU_FPU] |2225| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        ADDF32    R4H,R1H,R0H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 9,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R4H       ; [CPU_FPU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R4H       ; [CPU_FPU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |2189| 
        ; branchcc occurs ; [] |2189| 
        MOV32     @||m1_custom_speed_pu||,R4H ; [CPU_FPU] 
        B         ||$C$L81||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L78||:    
        MOVW      DP,#||motorVars||+58  ; [CPU_ARAU] 
        MOVB      XAR6,#24              ; [CPU_ALU] 
        MOVL      XAR4,#||m1_pos_history|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2234,column 1,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+58 ; [CPU_FPU] |2234| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2237,column 19,is_stmt,isa 0
        RPTB      ||$C$L80||,AR6        ; [CPU_ALU] |2237| 
        ; repeat block starts ; [] 
||$C$L79||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2239,column 9,is_stmt,isa 0
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |2239| 
        ; repeat block ends ; [] 
||$C$L80||:    
        MOVW      DP,#||m1_pos_idx||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2245,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2245| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1267,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1267| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2242,column 5,is_stmt,isa 0
        MOV       @||m1_pos_idx||,#0    ; [CPU_ALU] |2242| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2243,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_head||,#0 ; [CPU_ALU] |2243| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2244,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_tail||,#0 ; [CPU_ALU] |2244| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2246,column 5,is_stmt,isa 0
        MOV       @||m1_customSpeedActive||,#0 ; [CPU_ALU] |2246| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2247,column 5,is_stmt,isa 0
        MOV       @||m1_pos_sample_overflow||,#0 ; [CPU_ALU] |2247| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2245,column 5,is_stmt,isa 0
        ZERO      R4H                   ; [CPU_FPU] |2245| 
        MOV32     @||m1_custom_speed_pu||,R1H ; [CPU_FPU] |2245| 
        MOVW      DP,#||motorVars||+152 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1267,column 9,is_stmt,isa 0
        MOV32     @||motorVars||+152,R0H ; [CPU_FPU] |1267| 
||$C$L81||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1274,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1274| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1274| 
        ADD       ACC,#319 << 0         ; [CPU_ALU] |1274| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1274| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1276,column 5,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |1276| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1276| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1274,column 5,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |1274| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1276,column 5,is_stmt,isa 0
        MOVL      XAR0,#319             ; [CPU_ALU] |1276| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |1276| 
        B         ||$C$L89||,HI         ; [CPU_ALU] |1276| 
        ; branchcc occurs ; [] |1276| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1279,column 9,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1279| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1279| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2427,column 9,is_stmt,isa 0
        MOVIZ     R3H,#15692            ; [CPU_FPU] |2427| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1279,column 9,is_stmt,isa 0
        MOVB      XAR0,#216             ; [CPU_ALU] |1279| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1279| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1278,column 9,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |1278| 
        MOV32     *+XAR4[AR0],R4H       ; [CPU_FPU] |1278| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2427,column 9,is_stmt,isa 0
        MOVXI     R3H,#52429            ; [CPU_FPU] |2427| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2402,column 24,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |2402| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |2402| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2405,column 21,is_stmt,isa 0
        MOVB      XAR0,#228             ; [CPU_ALU] |2405| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |2405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2403,column 22,is_stmt,isa 0
        MOVB      XAR0,#216             ; [CPU_ALU] |2403| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2403| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2410,column 5,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |2410| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2412,column 9,is_stmt,isa 0
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |2412| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2415,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2415| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2417,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2417| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2422,column 9,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |2422| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2427,column 9,is_stmt,isa 0
        CMPF32    R1H,R3H               ; [CPU_FPU] |2427| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2427| 
        B         ||$C$L82||,GT         ; [CPU_ALU] |2427| 
        ; branchcc occurs ; [] |2427| 
        ZERO      R0H                   ; [CPU_FPU] |2427| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |2427| 
        ; branch occurs ; [] |2427| 
||$C$L82||:    
        MOVIZ     R0H,#15948            ; [CPU_FPU] |2427| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2427| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2427| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2427| 
        B         ||$C$L83||,LT         ; [CPU_ALU] |2427| 
        ; branchcc occurs ; [] |2427| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |2427| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |2427| 
        ; branch occurs ; [] |2427| 
||$C$L83||:    
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2427| 
        MOVIZ     R3H,#16597            ; [CPU_FPU] |2427| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2427| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |2427| 
        MOVXI     R3H,#21845            ; [CPU_FPU] |2427| 
        MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |2427| 
||$C$L84||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVIZ     R6H,#48908            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVIZ     R1H,#48349            ; [CPU_FPU] |2441| 
        MOVIZ     R5H,#15605            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVIZ     R7H,#16153            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        MOVIZ     R3H,#14979            ; [CPU_FPU] |2444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVXI     R6H,#52429            ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MOVXI     R1H,#12058            ; [CPU_FPU] |2441| 
        MOVXI     R5H,#49807            ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        MOVXI     R7H,#39322            ; [CPU_FPU] |2439| 
        MPYF32    R6H,R6H,R0H           ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        MOVXI     R3H,#4719             ; [CPU_FPU] |2444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2441,column 5,is_stmt,isa 0
        ADDF32    R5H,R5H,R0H           ; [CPU_FPU] |2441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2439,column 5,is_stmt,isa 0
        ADDF32    R1H,R7H,R6H           ; [CPU_FPU] |2439| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 5,is_stmt,isa 0
        CMPF32    R2H,R3H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L86||,LEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R0H,#14979            ; [CPU_FPU] |2444| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |2444| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L86||,LEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R0H,#14545            ; [CPU_FPU] |2444| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |2444| 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |2444| 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L85||,GT         ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
        MOVIZ     R0H,#14545            ; [CPU_FPU] |2444| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |2444| 
        SUBF32    R0H,R2H,R0H           ; [CPU_FPU] |2444| 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2444| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2444| 
        B         ||$C$L86||,GEQ        ; [CPU_ALU] |2444| 
        ; branchcc occurs ; [] |2444| 
||$C$L85||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2448,column 9,is_stmt,isa 0
        DIVF32    R2H,R2H,R1H           ; [CPU_FPU] |2448| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVW      DP,#||motorVars||+248 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+248 ; [CPU_FPU] |2448| 
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |2448| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+248,R0H ; [CPU_FPU] |2448| 
||$C$L86||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2455,column 5,is_stmt,isa 0
        MOVB      XAR0,#226             ; [CPU_ALU] |2455| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |2455| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2455| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVB      XAR0,#216             ; [CPU_ALU] |116| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
        MOVB      XAR0,#226             ; [CPU_ALU] |116| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
        MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2454,column 5,is_stmt,isa 0
        MOVB      XAR0,#232             ; [CPU_ALU] |2454| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2454,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |2454| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVB      XAR1,#246             ; [CPU_ALU] |128| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2454,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2454| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2456,column 5,is_stmt,isa 0
        MOVB      XAR0,#236             ; [CPU_ALU] |2456| 
        MOVIZ     R0H,#16384            ; [CPU_FPU] |2456| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2456| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |116| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2453,column 5,is_stmt,isa 0
        MOVB      XAR0,#230             ; [CPU_ALU] |2453| 
        MOV32     *+XAR4[AR0],R5H       ; [CPU_FPU] |2453| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOVB      XAR0,#230             ; [CPU_ALU] |119| 
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        MOVB      XAR0,#248             ; [CPU_ALU] |119| 
        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2452,column 5,is_stmt,isa 0
        MOVB      XAR0,#228             ; [CPU_ALU] |2452| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2452| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVB      XAR0,#228             ; [CPU_ALU] |128| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |128| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#234             ; [CPU_ALU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0

        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      SUBF32    R6H,R3H,R0H           ; [CPU_FPU] |119| 

        MOVB      XAR0,#254             ; [CPU_ALU] |119| 

        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
||      MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |123| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#222             ; [CPU_ALU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MPYF32    R6H,R6H,R3H           ; [CPU_FPU] |119| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0

        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      SUBF32    R3H,R2H,R0H           ; [CPU_FPU] |123| 

        MOVB      XAR0,#232             ; [CPU_ALU] |123| 
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0

        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      MPYF32    R3H,R6H,R5H           ; [CPU_FPU] |119| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#252             ; [CPU_ALU] |123| 

        MOV32     R2H,*-SP[4]           ; [CPU_FPU] |123| 
||      MPYF32    R5H,R2H,R5H           ; [CPU_FPU] |123| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      SUBF32    R2H,R2H,R0H           ; [CPU_FPU] |116| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVB      XAR0,#250             ; [CPU_ALU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |124| 
||      SUBF32    R6H,R5H,R0H           ; [CPU_FPU] |123| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVB      XAR0,#236             ; [CPU_ALU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0

        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
||      ADDF32    R3H,R3H,R7H           ; [CPU_FPU] |119| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVB      XAR0,#240             ; [CPU_ALU] |116| 

        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |116| 
||      ADDF32    R5H,R0H,R6H           ; [CPU_FPU] |124| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOVB      XAR0,#242             ; [CPU_ALU] |119| 

        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |119| 
||      ADDF32    R0H,R3H,R2H           ; [CPU_FPU] |128| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 120,column 2,is_stmt,isa 0
        MOVB      XAR0,#248             ; [CPU_ALU] |120| 

        ADDF32    R0H,R0H,R5H           ; [CPU_FPU] |128| 
||      MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |120| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#252             ; [CPU_ALU] |123| 

        MPYF32    R1H,R0H,R1H           ; [CPU_FPU] |128| 
||      MOV32     *+XAR4[AR0],R6H       ; [CPU_FPU] |123| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVB      XAR0,#244             ; [CPU_ALU] |124| 
        MOV32     *+XAR4[AR0],R5H       ; [CPU_FPU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOVB      XAR0,#224             ; [CPU_ALU] |125| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |125| 
        MOVB      XAR0,#250             ; [CPU_ALU] |125| 

        MPYF32    R2H,R5H,R2H           ; [CPU_FPU] |125| 
||      MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |128| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MINF32    R0H,R7H               ; [CPU_FPU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |125| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2457,column 5,is_stmt,isa 0
        MOVB      XAR0,#238             ; [CPU_ALU] |2457| 
        MOVIZ     R2H,#49152            ; [CPU_FPU] |2457| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |2457| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVB      XAR0,#238             ; [CPU_ALU] |131| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
        MOVB      XAR0,#220             ; [CPU_ALU] |131| 
        MAXF32    R0H,R2H               ; [CPU_FPU] |131| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        CMPF32    R0H,R1H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L87||,NEQ        ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |140| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] |140| 
        ; branch occurs ; [] |140| 
||$C$L87||:    
        ZERO      R0H                   ; [CPU_FPU] |140| 
||$C$L88||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1282,column 9,is_stmt,isa 0
        MOVL      XAR1,#319             ; [CPU_ALU] |1282| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOVB      XAR0,#254             ; [CPU_ALU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1282,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |1282| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |140| 
||$C$L89||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1285,column 5,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |1285| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1285| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1285| 
        CMPB      AL,#2                 ; [CPU_ALU] |1285| 
        B         ||$C$L90||,NEQ        ; [CPU_ALU] |1285| 
        ; branchcc occurs ; [] |1285| 
        MOVL      XAR0,#332             ; [CPU_ALU] |1285| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |1285| 
        B         ||$C$L91||,NEQ        ; [CPU_ALU] |1285| 
        ; branchcc occurs ; [] |1285| 
||$C$L90||:    
        MOVL      XAR0,#286             ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1289,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1289| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] 
        MOVB      XAR0,#250             ; [CPU_ALU] |1289| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1289| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1290,column 9,is_stmt,isa 0
        MOVB      XAR0,#252             ; [CPU_ALU] |1290| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1290| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1291,column 9,is_stmt,isa 0
        MOVB      XAR0,#248             ; [CPU_ALU] |1291| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1291| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1292,column 9,is_stmt,isa 0
        MOVB      XAR0,#244             ; [CPU_ALU] |1292| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1292| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1294,column 9,is_stmt,isa 0
        MOVB      XAR0,#240             ; [CPU_ALU] |1294| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1294| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1293,column 9,is_stmt,isa 0
        MOVB      XAR0,#242             ; [CPU_ALU] |1293| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1293| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] 
||$C$L91||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1301,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1301| 
        B         ||$C$L93||,EQ         ; [CPU_ALU] |1301| 
        ; branchcc occurs ; [] |1301| 
        CMPB      AL,#1                 ; [CPU_ALU] |1301| 
        B         ||$C$L92||,NEQ        ; [CPU_ALU] |1301| 
        ; branchcc occurs ; [] |1301| 
        MOVW      DP,#||motorVars||+26  ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+26 ; [CPU_FPU] |1301| 
        B         ||$C$L94||,UNC        ; [CPU_ALU] |1301| 
        ; branch occurs ; [] |1301| 
||$C$L92||:    
        MOVW      DP,#||motorVars||+220 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+220 ; [CPU_FPU] |1301| 
        B         ||$C$L94||,UNC        ; [CPU_ALU] |1301| 
        ; branch occurs ; [] |1301| 
||$C$L93||:    
        ZERO      R0H                   ; [CPU_FPU] |1301| 
||$C$L94||:    
        MOVB      XAR0,#32              ; [CPU_ALU] |1301| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |1301| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1306,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1306| 
        MOVB      XAR0,#24              ; [CPU_ALU] |1306| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |1306| 
        MOVB      XAR0,#18              ; [CPU_ALU] |1306| 
        MOVXI     R2H,#50604            ; [CPU_FPU] |1306| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |1306| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("ramper")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1306| 
        ; call occurs [#||ramper||] ; [] |1306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOVB      XAR1,#170             ; [CPU_ALU] |1308| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1306,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1306| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1308| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |1308| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVL      XAR0,#286             ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR1],ACC       ; [CPU_ALU] |1308| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1910,column 5,is_stmt,isa 0
        MOVB      XAR1,#56              ; [CPU_ALU] |1910| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |330| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |330| 
        MOVW      DP,#||hal||+12        ; [CPU_ARAU] 
        MOVB      XAR0,#12              ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1910,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR2[AR1]      ; [CPU_ALU] |1910| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |330| 
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |330| 
        MOVL      XAR4,#||hal||         ; [CPU_ARAU] |330| 
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |330| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |330| 
        F32TOUI16 R1H,R0H               ; [CPU_FPU] |330| 
        MOVB      XAR0,#14              ; [CPU_ALU] |330| 
        ADDF32    R0H,R4H,#16256        ; [CPU_FPU] |330| 
        MOV32     ACC,R1H               ; [CPU_FPU] |330| 
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |330| 
        MOVL      XAR4,*+XAR4[AR0]      ; [CPU_ALU] |330| 
        MOV       AH,AL                 ; [CPU_ALU] |330| 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |330| 
        AND       AH,#0x0fff            ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1912,column 5,is_stmt,isa 0
        MOVL      XAR0,#394             ; [CPU_ALU] |1912| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV32     XAR6,R0H              ; [CPU_FPU] |330| 
        AND       AL,*+XAR5[3],#0xf000  ; [CPU_ALU] |330| 
        OR        AH,AL                 ; [CPU_ALU] |330| 
        MOVL      XAR5,@$BLOCKED(||hal||)+12 ; [CPU_ALU] |330| 
        AND       AR6,#0x0fff           ; [CPU_ALU] |330| 
        MOVW      DP,#||m2_custom_speed_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1913,column 5,is_stmt,isa 0
        MOVL      P,@||m2_custom_speed_pu|| ; [CPU_ALU] |1913| 
        MOVW      DP,#||hal||+14        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV       *+XAR5[3],AH          ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1912,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR2[AR0]      ; [CPU_ALU] |1912| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[3],#0xf000  ; [CPU_ALU] |330| 
        MOVL      XAR4,@$BLOCKED(||hal||)+14 ; [CPU_ALU] |330| 
        OR        AR6,AL                ; [CPU_ALU] |330| 
        MOVW      DP,#||dlogCh2||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1911,column 5,is_stmt,isa 0
        MOV32     @||dlogCh2||,R4H      ; [CPU_FPU] |1911| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1913,column 5,is_stmt,isa 0
        MOVL      @||dlogCh4||,P        ; [CPU_ALU] |1913| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1912,column 5,is_stmt,isa 0
        MOVL      @||dlogCh3||,XAR5     ; [CPU_ALU] |1912| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1910,column 5,is_stmt,isa 0
        MOVL      @||dlogCh1||,XAR7     ; [CPU_ALU] |1910| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV       *+XAR4[3],AR6         ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1952,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |1952| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_FUNC||  ; [CPU_ALU] |1952| 
        ; call occurs [#||DLOG_4CH_F_FUNC||] ; [] |1952| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |4872| 
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |819| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVL      XAR7,#1028            ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1957,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1957| 
        ADD       ACC,#39 << 3          ; [CPU_ALU] |1957| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1957,column 5,is_stmt,isa 0
        MOVL      XAR2,ACC              ; [CPU_ALU] |1957| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1957,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1957| 
        ADDL      *+XAR2[0],ACC         ; [CPU_ALU] |1957| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -36
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -34
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -32
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -30
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -28
	.dwcfi	restore_reg, 59
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -26
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 12
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 8
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x7a7)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text:C3"
	.clink
	.global	||C3||

$C$DW$176	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$176, DW_AT_name("C3")
	.dwattr $C$DW$176, DW_AT_low_pc(||C3||)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_linkage_name("C3")
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$176, DW_AT_decl_line(0x332)
	.dwattr $C$DW$176, DW_AT_decl_column(0x06)
	.dwattr $C$DW$176, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 819,column 1,is_stmt,address ||C3||,isa 0

	.dwfde $C$DW$CIE, ||C3||

;***************************************************************
;* FNAME: C3                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||C3||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 823,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |823| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |823| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$176, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x339)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	".text:C2"
	.clink
	.global	||C2||

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("C2")
	.dwattr $C$DW$178, DW_AT_low_pc(||C2||)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_linkage_name("C2")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$178, DW_AT_decl_line(0x323)
	.dwattr $C$DW$178, DW_AT_decl_column(0x06)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 804,column 1,is_stmt,address ||C2||,isa 0

	.dwfde $C$DW$CIE, ||C2||

;***************************************************************
;* FNAME: C2                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||C2||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 808,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C3||          ; [CPU_ARAU] |808| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |808| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x32a)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text:B3"
	.clink
	.global	||B3||

$C$DW$180	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$180, DW_AT_name("B3")
	.dwattr $C$DW$180, DW_AT_low_pc(||B3||)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_linkage_name("B3")
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$180, DW_AT_decl_line(0x2f5)
	.dwattr $C$DW$180, DW_AT_decl_column(0x06)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 758,column 1,is_stmt,address ||B3||,isa 0

	.dwfde $C$DW$CIE, ||B3||

;***************************************************************
;* FNAME: B3                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||B3||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 762,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |762| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |762| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$180, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x2fc)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text:HAL_SCI_generateWaveforms"
	.clink
	.global	||HAL_SCI_generateWaveforms||

$C$DW$182	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$182, DW_AT_name("HAL_SCI_generateWaveforms")
	.dwattr $C$DW$182, DW_AT_low_pc(||HAL_SCI_generateWaveforms||)
	.dwattr $C$DW$182, DW_AT_high_pc(0x00)
	.dwattr $C$DW$182, DW_AT_linkage_name("HAL_SCI_generateWaveforms")
	.dwattr $C$DW$182, DW_AT_external
	.dwattr $C$DW$182, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$182, DW_AT_decl_line(0x2c2)
	.dwattr $C$DW$182, DW_AT_decl_column(0x06)
	.dwattr $C$DW$182, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 707,column 1,is_stmt,address ||HAL_SCI_generateWaveforms||,isa 0

	.dwfde $C$DW$CIE, ||HAL_SCI_generateWaveforms||
$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("ch0")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]

$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("ch1")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg14]

$C$DW$185	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$185, DW_AT_name("ch2")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: HAL_SCI_generateWaveforms     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||HAL_SCI_generateWaveforms||:
;* AR4   assigned to ch0
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("ch0")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to ch1
$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("ch1")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to ch2
$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("ch2")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||motorVars||+220 ; [CPU_ARAU] 
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |707| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 708,column 5,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+220 ; [CPU_ALU] |708| 
        MOVW      DP,#||motorVars||+286 ; [CPU_ARAU] 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |708| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 709,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |709| 
        ADDL      ACC,@||motorVars||+286 ; [CPU_ALU] |709| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |709| 
        MOVW      DP,#||m1_custom_speed_pu|| ; [CPU_ARAU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |709| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |709| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 710,column 5,is_stmt,isa 0
        MOVL      ACC,@||m1_custom_speed_pu|| ; [CPU_ALU] |710| 
        MOVL      *+XAR6[0],ACC         ; [CPU_ALU] |710| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$182, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$182, DW_AT_TI_end_line(0x2c7)
	.dwattr $C$DW$182, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$182

	.sect	".text:HAL_SCI_prepareWaveformData"
	.clink
	.global	||HAL_SCI_prepareWaveformData||

$C$DW$190	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$190, DW_AT_name("HAL_SCI_prepareWaveformData")
	.dwattr $C$DW$190, DW_AT_low_pc(||HAL_SCI_prepareWaveformData||)
	.dwattr $C$DW$190, DW_AT_high_pc(0x00)
	.dwattr $C$DW$190, DW_AT_linkage_name("HAL_SCI_prepareWaveformData")
	.dwattr $C$DW$190, DW_AT_external
	.dwattr $C$DW$190, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$190, DW_AT_decl_line(0x2cf)
	.dwattr $C$DW$190, DW_AT_decl_column(0x06)
	.dwattr $C$DW$190, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 721,column 1,is_stmt,address ||HAL_SCI_prepareWaveformData||,isa 0

	.dwfde $C$DW$CIE, ||HAL_SCI_prepareWaveformData||
$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_name("ch0")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("ch1")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("ch2")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x33]

$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_name("buffer")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg12]

$C$DW$195	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$195, DW_AT_name("size")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: HAL_SCI_prepareWaveformData   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||HAL_SCI_prepareWaveformData||:
$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("c")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to ch0
$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("ch0")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to ch1
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("ch1")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to ch2
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("ch2")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x33]

;* AR4   assigned to buffer
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("buffer")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to size
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("size")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 725,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |725| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 726,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |726| 
        ANDB      AL,#0xff              ; [CPU_ALU] |726| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |726| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 738,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |738| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 727,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |727| 
        LSR       AL,8                  ; [CPU_ALU] |727| 
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |727| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 728,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |728| 
        ANDB      AL,#0xff              ; [CPU_ALU] |728| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |728| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 729,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |729| 
        LSR       AL,8                  ; [CPU_ALU] |729| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 731,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R1H           ; [CPU_FPU] |731| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 729,column 5,is_stmt,isa 0
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |729| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 732,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |732| 
        ANDB      AL,#0xff              ; [CPU_ALU] |732| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |732| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 733,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |733| 
        LSR       AL,8                  ; [CPU_ALU] |733| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |733| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 734,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |734| 
        ANDB      AL,#0xff              ; [CPU_ALU] |734| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |734| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 735,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |735| 
        LSR       AL,8                  ; [CPU_ALU] |735| 
        MOV       *+XAR4[7],AL          ; [CPU_ALU] |735| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 737,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R2H           ; [CPU_FPU] |737| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 738,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |738| 
        ANDB      AL,#0xff              ; [CPU_ALU] |738| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |738| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 739,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |739| 
        MOV       AL,*-SP[2]            ; [CPU_ALU] |739| 
        LSR       AL,8                  ; [CPU_ALU] |739| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |739| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 740,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |740| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |740| 
        ANDB      AL,#0xff              ; [CPU_ALU] |740| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |740| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 741,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |741| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |741| 
        LSR       AL,8                  ; [CPU_ALU] |741| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |741| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 743,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |743| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |743| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 744,column 5,is_stmt,isa 0
        MOVB      XAR0,#13              ; [CPU_ALU] |744| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |744| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 745,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |745| 
        MOVB      *+XAR4[AR0],#128,UNC  ; [CPU_ALU] |745| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 746,column 5,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |746| 
        MOVB      *+XAR4[AR0],#127,UNC  ; [CPU_ALU] |746| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 748,column 5,is_stmt,isa 0
        MOVB      *+XAR5[0],#16,UNC     ; [CPU_ALU] |748| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$190, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$190, DW_AT_TI_end_line(0x2ed)
	.dwattr $C$DW$190, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$190

	.sect	".text:B2"
	.clink
	.global	||B2||

$C$DW$203	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$203, DW_AT_name("B2")
	.dwattr $C$DW$203, DW_AT_low_pc(||B2||)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_linkage_name("B2")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$203, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$203, DW_AT_decl_column(0x06)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(-28)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 670,column 1,is_stmt,address ||B2||,isa 0

	.dwfde $C$DW$CIE, ||B2||

;***************************************************************
;* FNAME: B2                            FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 23 Auto,  0 SOE     *
;***************************************************************

||B2||:
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("ch0")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_breg20 -4]

$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("ch1")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_breg20 -6]

$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("ch2")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg20 -8]

$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("buffer")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_breg20 -24]

$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("size")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_breg20 -25]

;* AR4   assigned to $O$U24
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#26                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -28
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 957,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x721a)        ; [CPU_ALU] |957| 
        LSR       AL,8                  ; [CPU_ALU] |957| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |957| 
        B         ||$C$L96||,NEQ        ; [CPU_ALU] |957| 
        ; branchcc occurs ; [] |957| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 683,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |683| 
        MOVZ      AR5,SP                ; [CPU_ALU] |683| 
        SUBB      XAR4,#8               ; [CPU_ARAU] |683| 
        MOVU      ACC,AR4               ; [CPU_ALU] |683| 
        MOVZ      AR4,SP                ; [CPU_ALU] |683| 
        SUBB      XAR5,#6               ; [CPU_ARAU] |683| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |683| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |683| 
        SUBB      XAR4,#4               ; [CPU_ARAU] |683| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |683| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("HAL_SCI_generateWaveforms")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #||HAL_SCI_generateWaveforms|| ; [CPU_ALU] |683| 
        ; call occurs [#||HAL_SCI_generateWaveforms||] ; [] |683| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 686,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |686| 
        MOVZ      AR5,SP                ; [CPU_ALU] |686| 
        MOV32     R0H,*-SP[4]           ; [CPU_FPU] |686| 
        MOV32     R1H,*-SP[6]           ; [CPU_FPU] |686| 
        MOV32     R2H,*-SP[8]           ; [CPU_FPU] |686| 
        SUBB      XAR4,#24              ; [CPU_ARAU] |686| 
        SUBB      XAR5,#25              ; [CPU_ARAU] |686| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |686| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |686| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("HAL_SCI_prepareWaveformData")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #||HAL_SCI_prepareWaveformData|| ; [CPU_ALU] |686| 
        ; call occurs [#||HAL_SCI_prepareWaveformData||] ; [] |686| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 689,column 20,is_stmt,isa 0
        MOV       AL,*-SP[25]           ; [CPU_ALU] |689| 
        B         ||$C$L96||,EQ         ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVZ      AR6,*-SP[25]          ; [CPU_ALU] 
        SUBB      XAR4,#24              ; [CPU_ARAU] 
        MOVZ      AR4,AR4               ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L95||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 1136,column 1,is_stmt,isa 0
        MOV       *(0:0x7219),*XAR4++   ; [CPU_ALU] |1136| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 689,column 20,is_stmt,isa 0
        BANZ      ||$C$L95||,AR6--      ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
||$C$L96||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 697,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B3||          ; [CPU_ARAU] |697| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        SUBB      SP,#26                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |697| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$203, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x2bb)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text:A3"
	.clink
	.global	||A3||

$C$DW$212	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$212, DW_AT_name("A3")
	.dwattr $C$DW$212, DW_AT_low_pc(||A3||)
	.dwattr $C$DW$212, DW_AT_high_pc(0x00)
	.dwattr $C$DW$212, DW_AT_linkage_name("A3")
	.dwattr $C$DW$212, DW_AT_external
	.dwattr $C$DW$212, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$212, DW_AT_decl_line(0x270)
	.dwattr $C$DW$212, DW_AT_decl_column(0x06)
	.dwattr $C$DW$212, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 625,column 1,is_stmt,address ||A3||,isa 0

	.dwfde $C$DW$CIE, ||A3||

;***************************************************************
;* FNAME: A3                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||A3||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||led1Cnt||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 626,column 5,is_stmt,isa 0
        INC       @||led1Cnt||          ; [CPU_ALU] |626| 
        CMP       @||led1Cnt||,#800     ; [CPU_ALU] |626| 
        B         ||$C$L97||,LO         ; [CPU_ALU] |626| 
        ; branchcc occurs ; [] |626| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 630,column 9,is_stmt,isa 0
        MOV       @||led1Cnt||,#0       ; [CPU_ALU] |630| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f0e),ACC       ; [CPU_FPU] |505| 
||$C$L97||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 638,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |638| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |638| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$212, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$212, DW_AT_TI_end_line(0x280)
	.dwattr $C$DW$212, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$212

	.sect	".text:A2"
	.clink
	.global	||A2||

$C$DW$214	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$214, DW_AT_name("A2")
	.dwattr $C$DW$214, DW_AT_low_pc(||A2||)
	.dwattr $C$DW$214, DW_AT_high_pc(0x00)
	.dwattr $C$DW$214, DW_AT_linkage_name("A2")
	.dwattr $C$DW$214, DW_AT_external
	.dwattr $C$DW$214, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$214, DW_AT_decl_line(0x25f)
	.dwattr $C$DW$214, DW_AT_decl_column(0x06)
	.dwattr $C$DW$214, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 608,column 1,is_stmt,address ||A2||,isa 0

	.dwfde $C$DW$CIE, ||A2||

;***************************************************************
;* FNAME: A2                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||A2||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 610,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+338 ; [CPU_ARAU] |610| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("runMotorControl")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #||runMotorControl||  ; [CPU_ALU] |610| 
        ; call occurs [#||runMotorControl||] ; [] |610| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 614,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A3||          ; [CPU_ARAU] |614| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |614| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$214, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$214, DW_AT_TI_end_line(0x268)
	.dwattr $C$DW$214, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$214

	.sect	".text:C1"
	.clink
	.global	||C1||

$C$DW$217	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$217, DW_AT_name("C1")
	.dwattr $C$DW$217, DW_AT_low_pc(||C1||)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_linkage_name("C1")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$217, DW_AT_decl_line(0x30a)
	.dwattr $C$DW$217, DW_AT_decl_column(0x06)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 779,column 1,is_stmt,address ||C1||,isa 0

	.dwfde $C$DW$CIE, ||C1||

;***************************************************************
;* FNAME: C1                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||C1||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||led2Cnt||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 780,column 5,is_stmt,isa 0
        INC       @||led2Cnt||          ; [CPU_ALU] |780| 
        CMP       @||led2Cnt||,#400     ; [CPU_ALU] |780| 
        B         ||$C$L98||,LO         ; [CPU_ALU] |780| 
        ; branchcc occurs ; [] |780| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |505| 
        MOV       AH,#32768             ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 784,column 9,is_stmt,isa 0
        MOV       @||led2Cnt||,#0       ; [CPU_ALU] |784| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f06),ACC       ; [CPU_FPU] |505| 
||$C$L98||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 791,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C2||          ; [CPU_ARAU] |791| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |791| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$217, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x31b)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text:B1"
	.clink
	.global	||B1||

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("B1")
	.dwattr $C$DW$219, DW_AT_low_pc(||B1||)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_linkage_name("B1")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$219, DW_AT_decl_line(0x28e)
	.dwattr $C$DW$219, DW_AT_decl_column(0x06)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 655,column 1,is_stmt,address ||B1||,isa 0

	.dwfde $C$DW$CIE, ||B1||

;***************************************************************
;* FNAME: B1                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||B1||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 659,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B2||          ; [CPU_ARAU] |659| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |659| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x295)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".text:A1"
	.clink
	.global	||A1||

$C$DW$221	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$221, DW_AT_name("A1")
	.dwattr $C$DW$221, DW_AT_low_pc(||A1||)
	.dwattr $C$DW$221, DW_AT_high_pc(0x00)
	.dwattr $C$DW$221, DW_AT_linkage_name("A1")
	.dwattr $C$DW$221, DW_AT_external
	.dwattr $C$DW$221, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$221, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$221, DW_AT_decl_column(0x06)
	.dwattr $C$DW$221, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 591,column 1,is_stmt,address ||A1||,isa 0

	.dwfde $C$DW$CIE, ||A1||

;***************************************************************
;* FNAME: A1                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||A1||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 593,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |593| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("runMotorControl")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #||runMotorControl||  ; [CPU_ALU] |593| 
        ; call occurs [#||runMotorControl||] ; [] |593| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 597,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A2||          ; [CPU_ARAU] |597| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |597| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$221, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x257)
	.dwattr $C$DW$221, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$221

	.sect	".text:A0"
	.clink
	.global	||A0||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("A0")
	.dwattr $C$DW$224, DW_AT_low_pc(||A0||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("A0")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$224, DW_AT_decl_line(0x205)
	.dwattr $C$DW$224, DW_AT_decl_column(0x06)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 518,column 1,is_stmt,address ||A0||,isa 0

	.dwfde $C$DW$CIE, ||A0||

;***************************************************************
;* FNAME: A0                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||A0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L99||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 525,column 9,is_stmt,isa 0
        MOVL      XAR7,@||A_Task_Ptr||  ; [CPU_ALU] |525| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 525,column 9,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_call
	.dwattr $C$DW$225, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |525| 
        ; call occurs [XAR7] ; [] |525| 
        MOVW      DP,#||vTimer0||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 528,column 9,is_stmt,isa 0
        INC       @||vTimer0||          ; [CPU_ALU] |528| 
        MOVW      DP,#||serialCommsTimer|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 529,column 9,is_stmt,isa 0
        INC       @||serialCommsTimer|| ; [CPU_ALU] |529| 
||$C$L99||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 532,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B0||          ; [CPU_ARAU] |532| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |532| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x215)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text:B0"
	.clink
	.global	||B0||

$C$DW$227	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$227, DW_AT_name("B0")
	.dwattr $C$DW$227, DW_AT_low_pc(||B0||)
	.dwattr $C$DW$227, DW_AT_high_pc(0x00)
	.dwattr $C$DW$227, DW_AT_linkage_name("B0")
	.dwattr $C$DW$227, DW_AT_external
	.dwattr $C$DW$227, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$227, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$227, DW_AT_decl_column(0x06)
	.dwattr $C$DW$227, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 542,column 1,is_stmt,address ||B0||,isa 0

	.dwfde $C$DW$CIE, ||B0||

;***************************************************************
;* FNAME: B0                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||B0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L100||,NTC       ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 549,column 9,is_stmt,isa 0
        MOVL      XAR7,@||B_Task_Ptr||  ; [CPU_ALU] |549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 549,column 9,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_call
	.dwattr $C$DW$228, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |549| 
        ; call occurs [XAR7] ; [] |549| 
        MOVW      DP,#||vTimer1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 551,column 9,is_stmt,isa 0
        INC       @||vTimer1||          ; [CPU_ALU] |551| 
||$C$L100||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 554,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C0||          ; [CPU_ARAU] |554| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |554| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$227, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$227, DW_AT_TI_end_line(0x22b)
	.dwattr $C$DW$227, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$227

	.sect	".text:C0"
	.clink
	.global	||C0||

$C$DW$230	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$230, DW_AT_name("C0")
	.dwattr $C$DW$230, DW_AT_low_pc(||C0||)
	.dwattr $C$DW$230, DW_AT_high_pc(0x00)
	.dwattr $C$DW$230, DW_AT_linkage_name("C0")
	.dwattr $C$DW$230, DW_AT_external
	.dwattr $C$DW$230, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$230, DW_AT_decl_line(0x233)
	.dwattr $C$DW$230, DW_AT_decl_column(0x06)
	.dwattr $C$DW$230, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 564,column 1,is_stmt,address ||C0||,isa 0

	.dwfde $C$DW$CIE, ||C0||

;***************************************************************
;* FNAME: C0                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||C0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L101||,NTC       ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 571,column 9,is_stmt,isa 0
        MOVL      XAR7,@||C_Task_Ptr||  ; [CPU_ALU] |571| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 571,column 9,is_stmt,isa 0
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_call
	.dwattr $C$DW$231, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |571| 
        ; call occurs [XAR7] ; [] |571| 
        MOVW      DP,#||vTimer2||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 574,column 9,is_stmt,isa 0
        INC       @||vTimer2||          ; [CPU_ALU] |574| 
||$C$L101||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 577,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |577| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |577| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$230, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$230, DW_AT_TI_end_line(0x242)
	.dwattr $C$DW$230, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$230

	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$233	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$233, DW_AT_name("main")
	.dwattr $C$DW$233, DW_AT_low_pc(||main||)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_linkage_name("main")
	.dwattr $C$DW$233, DW_AT_external
	.dwattr $C$DW$233, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$233, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$233, DW_AT_decl_column(0x06)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 286,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||

;***************************************************************
;* FNAME: main                          FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto, 10 SOE     *
;***************************************************************

||main||:
;* AR7   assigned to $O$C1
;* AH    assigned to $O$C2
;* AH    assigned to $O$C3
;* AR7   assigned to $O$C4
;* AR2   assigned to $O$C5
;* AL    assigned to $O$C6
;* AR2   assigned to $O$C7
;* AR1   assigned to $O$C8
;* AR4   assigned to $O$K19
;* AR4   assigned to $O$K19
;* AR4   assigned to $O$K19
;* AR4   assigned to $O$K19
;* AR4   assigned to $O$K19
;* AR5   assigned to $O$K19
;* AR1   assigned to $O$K19
;* AR3   assigned to $O$K287
;* AR2   assigned to $O$K363
;* R4    assigned to $O$U386
;* AR7   assigned to $O$y2855
;* AR7   assigned to $O$y2802
;* R2    assigned to $O$v3
;* R2    assigned to $O$v2
;* AR5   assigned to handle
$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("handle")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("base")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("base")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("base")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("base")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("base")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("base")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("base")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("base")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("base")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to handle
$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("handle")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$245	.dwtag  DW_TAG_variable
	.dwattr $C$DW$245, DW_AT_name("base")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("base")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$247	.dwtag  DW_TAG_variable
	.dwattr $C$DW$247, DW_AT_name("base")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$248	.dwtag  DW_TAG_variable
	.dwattr $C$DW$248, DW_AT_name("base")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("base")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("base")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("base")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("base")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("base")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg12]

;* R0    assigned to old_pos
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("old_pos")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to new_pos
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("new_pos")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to delta_turns
$C$DW$256	.dwtag  DW_TAG_variable
	.dwattr $C$DW$256, DW_AT_name("delta_turns")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x2f]

;* AR6   assigned to windowSamples
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("windowSamples")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg16]

;* AL    assigned to oldIdx
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("oldIdx")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg0]

;* R1    assigned to refAbs
$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("refAbs")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to speedAbs
$C$DW$260	.dwtag  DW_TAG_variable
	.dwattr $C$DW$260, DW_AT_name("speedAbs")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to old_pos
$C$DW$261	.dwtag  DW_TAG_variable
	.dwattr $C$DW$261, DW_AT_name("old_pos")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to new_pos
$C$DW$262	.dwtag  DW_TAG_variable
	.dwattr $C$DW$262, DW_AT_name("new_pos")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to delta_turns
$C$DW$263	.dwtag  DW_TAG_variable
	.dwattr $C$DW$263, DW_AT_name("delta_turns")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x2f]

;* AR6   assigned to windowSamples
$C$DW$264	.dwtag  DW_TAG_variable
	.dwattr $C$DW$264, DW_AT_name("windowSamples")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg16]

;* AL    assigned to oldIdx
$C$DW$265	.dwtag  DW_TAG_variable
	.dwattr $C$DW$265, DW_AT_name("oldIdx")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg0]

;* R1    assigned to refAbs
$C$DW$266	.dwtag  DW_TAG_variable
	.dwattr $C$DW$266, DW_AT_name("refAbs")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to speedAbs
$C$DW$267	.dwtag  DW_TAG_variable
	.dwattr $C$DW$267, DW_AT_name("speedAbs")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x2b]

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
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 288,column 5,is_stmt,isa 0
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("Device_init")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |288| 
        ; call occurs [#||Device_init||] ; [] |288| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 291,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |291| 
        MOVL      XAR4,#||hal||         ; [CPU_ARAU] |291| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("HAL_init")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #||HAL_init||         ; [CPU_ALU] |291| 
        ; call occurs [#||HAL_init||] ; [] |291| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 294,column 5,is_stmt,isa 0
        MOVL      XAR1,#||halMtr||      ; [CPU_ARAU] |294| 
        MOVW      DP,#||halHandle||     ; [CPU_ARAU] 
        MOVB      ACC,#18               ; [CPU_ALU] |294| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 291,column 5,is_stmt,isa 0
        MOVL      @||halHandle||,XAR4   ; [CPU_ALU] |291| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 294,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |294| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |294| 
        ; call occurs [#||HAL_MTR_init||] ; [] |294| 
        MOVL      XAR2,#||halMtrHandle|| ; [CPU_ARAU] |294| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 298,column 5,is_stmt,isa 0
        ADDB      XAR1,#18              ; [CPU_ALU] |298| 
        MOVB      ACC,#18               ; [CPU_ALU] |298| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 294,column 5,is_stmt,isa 0
        MOVL      *+XAR2[0],XAR4        ; [CPU_FPU] |294| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 298,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |298| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |298| 
        ; call occurs [#||HAL_MTR_init||] ; [] |298| 
        MOVL      *+XAR2[2],XAR4        ; [CPU_ALU] |298| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1025,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1025| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1030| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1031,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1031| 
        MOVW      DP,#||halHandle||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 305,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halHandle||   ; [CPU_ALU] |305| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #||HAL_setParams||    ; [CPU_ALU] |305| 
        ; call occurs [#||HAL_setParams||] ; [] |305| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 308,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |308| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |308| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |308| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 311,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |311| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |311| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |311| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 314,column 5,is_stmt,isa 0
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("HAL_SCI_init")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #||HAL_SCI_init||     ; [CPU_ALU] |314| 
        ; call occurs [#||HAL_SCI_init||] ; [] |314| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 320,column 5,is_stmt,isa 0
        MOVL      XAR1,#||motorVars||   ; [CPU_ARAU] |320| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |320| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |320| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |320| 
        ; call occurs [#||initMotorParameters||] ; [] |320| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 323,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |323| 
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |323| 
        ADD       ACC,#169 << 1         ; [CPU_ALU] |323| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |323| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |323| 
        ; call occurs [#||initMotorParameters||] ; [] |323| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 326,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |326| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("initControlVars")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |326| 
        ; call occurs [#||initControlVars||] ; [] |326| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 329,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |329| 
        ADD       ACC,#169 << 1         ; [CPU_ALU] |329| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |329| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("initControlVars")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |329| 
        ; call occurs [#||initControlVars||] ; [] |329| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |348| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("resetControlVars")
	.dwattr $C$DW$280, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |348| 
        ; call occurs [#||resetControlVars||] ; [] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 351,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |351| 
        ADD       ACC,#169 << 1         ; [CPU_ALU] |351| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |351| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |351| 
        ADD       ACC,#169 << 1         ; [CPU_ALU] |351| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |351| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("resetControlVars")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |351| 
        ; call occurs [#||resetControlVars||] ; [] |351| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        ADDL      ACC,@||halMtrHandle|| ; [CPU_ALU] |239| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4540| 
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        ADDL      ACC,@||halMtrHandle||+2 ; [CPU_ALU] |239| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4540| 
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOVIZ     R4H,#15948            ; [CPU_FPU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15820            ; [CPU_FPU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 388,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14979            ; [CPU_FPU] |388| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOVL      XAR0,#340             ; [CPU_ALU] |387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 382,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16128            ; [CPU_FPU] |382| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 383,column 5,is_stmt,isa 0
        MOVIZ     R5H,#16128            ; [CPU_FPU] |383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOVL      XAR4,#5000            ; [CPU_ARAU] |387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOVXI     R4H,#52429            ; [CPU_FPU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOVXI     R3H,#52429            ; [CPU_FPU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16128            ; [CPU_FPU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 388,column 5,is_stmt,isa 0
        MOVXI     R2H,#4719             ; [CPU_FPU] |388| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOVL      *+XAR1[AR0],XAR4      ; [CPU_ALU] |387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 382,column 5,is_stmt,isa 0
        MOVL      XAR0,#366             ; [CPU_ALU] |382| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 361,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |361| 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |361| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 382,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R0H       ; [CPU_FPU] |382| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 383,column 5,is_stmt,isa 0
        MOVL      XAR0,#370             ; [CPU_ALU] |383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 362,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |362| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 383,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R5H       ; [CPU_FPU] |383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOVL      XAR0,#358             ; [CPU_ALU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R4H       ; [CPU_FPU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOVL      XAR0,#364             ; [CPU_ALU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 371,column 5,is_stmt,isa 0
        MOVIZ     R5H,#16128            ; [CPU_FPU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 368,column 5,is_stmt,isa 0
        MOVIZ     R4H,#15948            ; [CPU_FPU] |368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R3H       ; [CPU_FPU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 388,column 5,is_stmt,isa 0
        MOVL      XAR0,#342             ; [CPU_ALU] |388| 
        MOVW      DP,#||posPtrMax||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 375,column 5,is_stmt,isa 0
        MOVL      XAR4,#5000            ; [CPU_ARAU] |375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 369,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15820            ; [CPU_FPU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 368,column 5,is_stmt,isa 0
        MOVXI     R4H,#52429            ; [CPU_FPU] |368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 388,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R2H       ; [CPU_FPU] |388| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 374,column 5,is_stmt,isa 0
        MOV32     R2H,@||posPtrMax||    ; [CPU_FPU] |374| 
        F32TOUI16 R0H,R2H               ; [CPU_FPU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 369,column 5,is_stmt,isa 0
        MOVXI     R3H,#52429            ; [CPU_FPU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 374,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 376,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14979            ; [CPU_FPU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 375,column 5,is_stmt,isa 0
        MOVL      *+XAR1[2],XAR4        ; [CPU_ALU] |375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 376,column 5,is_stmt,isa 0
        MOVXI     R0H,#4719             ; [CPU_FPU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R1H       ; [CPU_FPU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 371,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 394,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |394| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 376,column 5,is_stmt,isa 0
        MOV32     *+XAR1[4],R0H         ; [CPU_FPU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 371,column 5,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R5H       ; [CPU_FPU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 368,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |368| 
        MOV32     *+XAR1[AR0],R4H       ; [CPU_FPU] |368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 369,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |369| 
        MOV32     *+XAR1[AR0],R3H       ; [CPU_FPU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 386,column 5,is_stmt,isa 0
        MOVL      XAR0,#660             ; [CPU_ALU] |386| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |386| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 385,column 5,is_stmt,isa 0
        MOVL      XAR0,#661             ; [CPU_ALU] |385| 
        MOV       *+XAR1[AR0],#0        ; [CPU_ALU] |385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 389,column 5,is_stmt,isa 0
        MOVL      XAR0,#654             ; [CPU_ALU] |389| 
        MOVB      *+XAR1[AR0],#1,UNC    ; [CPU_ALU] |389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 373,column 5,is_stmt,isa 0
        MOVL      XAR0,#323             ; [CPU_ALU] |373| 
        MOV       *+XAR1[AR0],#0        ; [CPU_ALU] |373| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 377,column 5,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |377| 
        MOVB      *+XAR1[AR0],#1,UNC    ; [CPU_ALU] |377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 374,column 5,is_stmt,isa 0
        MOVL      XAR0,#322             ; [CPU_ALU] |374| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 394,column 5,is_stmt,isa 0
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$282, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_init||  ; [CPU_ALU] |394| 
        ; call occurs [#||DLOG_4CH_F_init||] ; [] |394| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 396,column 5,is_stmt,isa 0
        MOVL      XAR3,#||dlogCh2||     ; [CPU_ARAU] |396| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 397,column 5,is_stmt,isa 0
        MOVL      XAR2,#||dlogCh3||     ; [CPU_ARAU] |397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 405,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |405| 
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 395,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlogCh1||     ; [CPU_ARAU] |395| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 398,column 5,is_stmt,isa 0
        MOVL      XAR0,#||dlogCh4||     ; [CPU_ARAU] |398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 399,column 5,is_stmt,isa 0
        MOVL      XAR7,#||DBUFF_4CH1||  ; [CPU_ARAU] |399| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 400,column 5,is_stmt,isa 0
        MOVL      XAR6,#||DBUFF_4CH2||  ; [CPU_ARAU] |400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 401,column 5,is_stmt,isa 0
        MOVL      XAR5,#||DBUFF_4CH3||  ; [CPU_ARAU] |401| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 405,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 416,column 11,is_stmt,isa 0
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |416| 
        MOVW      DP,#||dlog_4ch1||+23  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 395,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||),XAR4 ; [CPU_ALU] |395| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 403,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+23,#200,UNC ; [CPU_ALU] |403| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 404,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+21,#5,UNC ; [CPU_ALU] |404| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 406,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+20,#2,UNC ; [CPU_ALU] |406| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 396,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+2,XAR3 ; [CPU_ALU] |396| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 397,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+4,XAR2 ; [CPU_ALU] |397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 398,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+6,XAR0 ; [CPU_ALU] |398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 399,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+8,XAR7 ; [CPU_ALU] |399| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 400,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+10,XAR6 ; [CPU_ALU] |400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 401,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+12,XAR5 ; [CPU_ALU] |401| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 405,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||dlog_4ch1||)+18,R0H ; [CPU_FPU] |405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 402,column 5,is_stmt,isa 0
        MOVL      XAR4,#||DBUFF_4CH4||  ; [CPU_ARAU] |402| 
        MOVL      @$BLOCKED(||dlog_4ch1||)+14,XAR4 ; [CPU_ALU] |402| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 416,column 11,is_stmt,isa 0
        B         ||$C$L103||,NEQ       ; [CPU_ALU] |416| 
        ; branchcc occurs ; [] |416| 
||$C$L102||:    
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |416| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 418,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |418| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 416,column 11,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |416| 
        B         ||$C$L102||,EQ        ; [CPU_ALU] |416| 
        ; branchcc occurs ; [] |416| 
||$C$L103||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 422,column 11,is_stmt,isa 0
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |422| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |422| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |422| 
        MOVB      ACC,#8                ; [CPU_ALU] |422| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |422| 
        B         ||$C$L105||,EQ        ; [CPU_ALU] |422| 
        ; branchcc occurs ; [] |422| 
||$C$L104||:    
        MOVW      DP,#||backTicker||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 424,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |424| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 422,column 11,is_stmt,isa 0
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$284, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |422| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |422| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |422| 
        MOVB      ACC,#8                ; [CPU_ALU] |422| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |422| 
        B         ||$C$L104||,NEQ       ; [CPU_ALU] |422| 
        ; branchcc occurs ; [] |422| 
||$C$L105||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 428,column 5,is_stmt,isa 0
        MOVL      XAR2,#||halMtrHandle|| ; [CPU_ARAU] |428| 
        MOVL      XAR4,*+XAR2[0]        ; [CPU_ALU] |428| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$285, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |428| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |428| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 431,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR2[2]        ; [CPU_ALU] |431| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$286, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |431| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 434,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |434| 
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$287, DW_AT_TI_call

        LCR       #||runOffsetsCalculation|| ; [CPU_ALU] |434| 
        ; call occurs [#||runOffsetsCalculation||] ; [] |434| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |434| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 437,column 5,is_stmt,isa 0
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$288, DW_AT_TI_call

        LCR       #||runOffsetsCalculation|| ; [CPU_ALU] |437| 
        ; call occurs [#||runOffsetsCalculation||] ; [] |437| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 440,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |440| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$289, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |440| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |440| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 443,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |443| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$290, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |443| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |443| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 448,column 5,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |448| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |473| 
        MOVL      XAR0,#664             ; [CPU_ALU] |473| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |473| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOVZ      AR4,*+XAR5[AR0]       ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 448,column 5,is_stmt,isa 0
        MOVL      XAR0,#334             ; [CPU_ALU] |448| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 448,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |448| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 449,column 5,is_stmt,isa 0
        MOVL      XAR0,#672             ; [CPU_ALU] |449| 
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |449| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |473| 
 clrc INTM
 clrc DBGM
        MOVW      DP,#||flagSyncRun||   ; [CPU_ARAU] 
        MOVL      XAR3,#||m1_pos_history|| ; [CPU_ARAU] 
        MOVL      XAR2,#||m2_pos_history|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 464,column 5,is_stmt,isa 0
        MOVB      @||flagSyncRun||,#1,UNC ; [CPU_ALU] |464| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 465,column 5,is_stmt,isa 0
        MOVB      @||ctrlState||,#1,UNC ; [CPU_ALU] |465| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 466,column 5,is_stmt,isa 0
        MOVB      @||runMotor||,#1,UNC  ; [CPU_ALU] |466| 
        MOVL      XAR4,#||m2_pos_sample_queue|| ; [CPU_ARAU] 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] 
        MOVL      XAR4,#||m1_pos_sample_queue|| ; [CPU_ARAU] 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] 
||$C$L106||:    
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 480,column 9,is_stmt,isa 0
        MOVL      XAR7,@||Alpha_State_Ptr|| ; [CPU_ALU] |480| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_call
	.dwattr $C$DW$291, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |480| 
        ; call occurs [XAR7] ; [] |480| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 483,column 9,is_stmt,isa 0
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("runSyncControl")
	.dwattr $C$DW$292, DW_AT_TI_call

        LCR       #||runSyncControl||   ; [CPU_ALU] |483| 
        ; call occurs [#||runSyncControl||] ; [] |483| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVZ      AR6,@||m1_pos_sample_tail|| ; [CPU_ALU] |2189| 
        MOVU      ACC,@||m1_pos_sample_head|| ; [CPU_ALU] |2189| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |2189| 
        B         ||$C$L112||,EQ        ; [CPU_ALU] |2189| 
        ; branchcc occurs ; [] |2189| 
        MOV32     R2H,@||m1_custom_speed_pu|| ; [CPU_FPU] 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L107||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        MOV       ACC,@||m1_pos_sample_tail|| << 1 ; [CPU_ALU] |2191| 
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVIZ     R4H,#15172            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVB      XAR1,#100             ; [CPU_ALU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |2191| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVXI     R4H,#39846            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        MOV       AL,@||m1_pos_sample_tail|| ; [CPU_ALU] |2192| 
        ADDB      AL,#1                 ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2191,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |2191| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        ANDB      AL,#0x3f              ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2192,column 9,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |2192| 
        MOV       @||m1_pos_sample_tail||,AL ; [CPU_ALU] |2192| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2372,column 5,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |2372| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2374,column 9,is_stmt,isa 0
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |2374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2377,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2379,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2384,column 9,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |2384| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        CMPF32    R1H,R4H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR6,#200,LT          ; [CPU_ALU] |2389| 
        B         ||$C$L108||,LT        ; [CPU_ALU] |2389| 
        ; branchcc occurs ; [] |2389| 
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2389| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2389| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR6,#50,LT           ; [CPU_ALU] |2389| 
        MOVB      XAR6,#20,GEQ          ; [CPU_ALU] |2389| 
||$C$L108||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2196,column 9,is_stmt,isa 0
        MOV       AH,@||m1_pos_idx||    ; [CPU_ALU] |2196| 
        MOVB      AL,#200               ; [CPU_ALU] |2196| 
        SUB       AH,AR6                ; [CPU_ALU] |2196| 
        ADD       AL,AH                 ; [CPU_ALU] |2196| 
        CMPB      AL,#200               ; [CPU_ALU] |2196| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2199,column 13,is_stmt,isa 0
        MOV       AL,AH,HIS             ; [CPU_ALU] |2199| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2202,column 9,is_stmt,isa 0
        MOV       ACC,AL << 1           ; [CPU_ALU] |2202| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |2202| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2202| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        MOV       ACC,@||m1_pos_idx|| << 1 ; [CPU_ALU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2202,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |2202| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        ADDL      ACC,XAR3              ; [CPU_ALU] |2203| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2205,column 9,is_stmt,isa 0
        INC       @||m1_pos_idx||       ; [CPU_ALU] |2205| 
        MOV       AL,@||m1_pos_idx||    ; [CPU_ALU] |2205| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2203,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |2203| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2205,column 9,is_stmt,isa 0
        CMPB      AL,#200               ; [CPU_ALU] |2205| 
        B         ||$C$L109||,LO        ; [CPU_ALU] |2205| 
        ; branchcc occurs ; [] |2205| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2208,column 13,is_stmt,isa 0
        MOV       @||m1_pos_idx||,#0    ; [CPU_ALU] |2208| 
||$C$L109||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2211,column 9,is_stmt,isa 0
        SUBF32    R1H,R3H,R0H           ; [CPU_FPU] |2211| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2212,column 9,is_stmt,isa 0
        CMPF32    R1H,#48896            ; [CPU_FPU] |2212| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2212| 
        B         ||$C$L110||,LT        ; [CPU_ALU] |2212| 
        ; branchcc occurs ; [] |2212| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2216,column 14,is_stmt,isa 0
        CMPF32    R1H,#16128            ; [CPU_FPU] |2216| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2216| 
        B         ||$C$L111||,LEQ       ; [CPU_ALU] |2216| 
        ; branchcc occurs ; [] |2216| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2218,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |2218| 
        B         ||$C$L111||,UNC       ; [CPU_ALU] |2218| 
        ; branch occurs ; [] |2218| 
||$C$L110||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2214,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |2214| 
||$C$L111||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        MOVU      ACC,AR6               ; [CPU_ALU] |2225| 
        MOV32     R3H,ACC               ; [CPU_FPU] |2225| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#18834            ; [CPU_FPU] |2225| 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |2225| 
        MOVB      XAR0,#154             ; [CPU_ALU] |2225| 
        MOVXI     R0H,#31744            ; [CPU_FPU] |2225| 
        DIVF32    R4H,R0H,R3H           ; [CPU_FPU] |2225| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2225| 
        UI32TOF32 R5H,*+XAR4[AR0]       ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVZ      AR6,AR7               ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 9,is_stmt,isa 0
        MOVB      XAR1,#152             ; [CPU_ALU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        MPYF32    R4H,R1H,R4H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        MOVU      ACC,@||m1_pos_sample_head|| ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16217            ; [CPU_FPU] |2225| 
        DIVF32    R3H,R4H,R5H           ; [CPU_FPU] |2225| 
        MOVXI     R1H,#39322            ; [CPU_FPU] |2225| 
        MPYF32    R0H,R1H,R2H           ; [CPU_FPU] |2225| 
        MOVIZ     R5H,#15897            ; [CPU_FPU] |2225| 
        MOVXI     R5H,#39322            ; [CPU_FPU] |2225| 
        MPYF32    R1H,R5H,R3H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 9,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2225,column 9,is_stmt,isa 0
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |2225| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |2189| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R2H       ; [CPU_FPU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2189,column 11,is_stmt,isa 0
        B         ||$C$L107||,NEQ       ; [CPU_ALU] |2189| 
        ; branchcc occurs ; [] |2189| 
        MOV32     @||m1_custom_speed_pu||,R2H ; [CPU_FPU] 
||$C$L112||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVZ      AR6,@||m2_pos_sample_tail|| ; [CPU_ALU] |2283| 
        MOVU      ACC,@||m2_pos_sample_head|| ; [CPU_ALU] |2283| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |2283| 
        B         ||$C$L118||,EQ        ; [CPU_ALU] |2283| 
        ; branchcc occurs ; [] |2283| 
        MOV32     R2H,@||m2_custom_speed_pu|| ; [CPU_FPU] 
        MOVW      DP,#||motorVars||+492 ; [CPU_ARAU] 
        CLRC      SXM                   ; [CPU_ALU] 
        UI32TOF32 R4H,@||motorVars||+492 ; [CPU_FPU] 
||$C$L113||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |2285| 
        MOVW      DP,#||m2_pos_sample_tail|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVIZ     R5H,#15172            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOV       ACC,@||m2_pos_sample_tail|| << 1 ; [CPU_ALU] |2285| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        MOVXI     R5H,#39846            ; [CPU_FPU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOVB      XAR0,#118             ; [CPU_ALU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOV       AL,@||m2_pos_sample_tail|| ; [CPU_ALU] |2286| 
        ADDB      AL,#1                 ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2285,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |2285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        ANDB      AL,#0x3f              ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 22,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+438 ; [CPU_ARAU] |2369| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2370,column 24,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2286,column 9,is_stmt,isa 0
        MOV       @||m2_pos_sample_tail||,AL ; [CPU_ALU] |2286| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2372,column 5,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |2372| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2374,column 9,is_stmt,isa 0
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |2374| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2377,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |2377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2379,column 9,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |2379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2384,column 9,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |2384| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 9,is_stmt,isa 0
        CMPF32    R1H,R5H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR6,#200,LT          ; [CPU_ALU] |2389| 
        B         ||$C$L114||,LT        ; [CPU_ALU] |2389| 
        ; branchcc occurs ; [] |2389| 
        MOVIZ     R0H,#15692            ; [CPU_FPU] |2389| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2389| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |2389| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2389| 
        MOVB      XAR6,#50,LT           ; [CPU_ALU] |2389| 
        MOVB      XAR6,#20,GEQ          ; [CPU_ALU] |2389| 
||$C$L114||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2290,column 9,is_stmt,isa 0
        MOV       AH,@||m2_pos_idx||    ; [CPU_ALU] |2290| 
        MOVB      AL,#200               ; [CPU_ALU] |2290| 
        SUB       AH,AR6                ; [CPU_ALU] |2290| 
        ADD       AL,AH                 ; [CPU_ALU] |2290| 
        CMPB      AL,#200               ; [CPU_ALU] |2290| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2293,column 13,is_stmt,isa 0
        MOV       AL,AH,HIS             ; [CPU_ALU] |2293| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2296,column 9,is_stmt,isa 0
        MOV       ACC,AL << 1           ; [CPU_ALU] |2296| 
        ADDL      ACC,XAR2              ; [CPU_ALU] |2296| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2296| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        MOV       ACC,@||m2_pos_idx|| << 1 ; [CPU_ALU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2296,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |2296| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        ADDL      ACC,XAR2              ; [CPU_ALU] |2297| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2299,column 9,is_stmt,isa 0
        INC       @||m2_pos_idx||       ; [CPU_ALU] |2299| 
        MOV       AL,@||m2_pos_idx||    ; [CPU_ALU] |2299| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2297,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |2297| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2299,column 9,is_stmt,isa 0
        CMPB      AL,#200               ; [CPU_ALU] |2299| 
        B         ||$C$L115||,LO        ; [CPU_ALU] |2299| 
        ; branchcc occurs ; [] |2299| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2302,column 13,is_stmt,isa 0
        MOV       @||m2_pos_idx||,#0    ; [CPU_ALU] |2302| 
||$C$L115||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2305,column 9,is_stmt,isa 0
        SUBF32    R1H,R3H,R0H           ; [CPU_FPU] |2305| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2306,column 9,is_stmt,isa 0
        CMPF32    R1H,#48896            ; [CPU_FPU] |2306| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2306| 
        B         ||$C$L116||,LT        ; [CPU_ALU] |2306| 
        ; branchcc occurs ; [] |2306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2310,column 14,is_stmt,isa 0
        CMPF32    R1H,#16128            ; [CPU_FPU] |2310| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2310| 
        B         ||$C$L117||,LEQ       ; [CPU_ALU] |2310| 
        ; branchcc occurs ; [] |2310| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2312,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |2312| 
        B         ||$C$L117||,UNC       ; [CPU_ALU] |2312| 
        ; branch occurs ; [] |2312| 
||$C$L116||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2308,column 13,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |2308| 
||$C$L117||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        MOVU      ACC,AR6               ; [CPU_ALU] |2319| 
        MOV32     R3H,ACC               ; [CPU_FPU] |2319| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R3H,R3H               ; [CPU_FPU] |2319| 
        MOVIZ     R0H,#18834            ; [CPU_FPU] |2319| 
        MOVXI     R0H,#31744            ; [CPU_FPU] |2319| 
        DIVF32    R3H,R0H,R3H           ; [CPU_FPU] |2319| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R5H,#16217            ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVZ      AR6,AR7               ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2322,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+490 ; [CPU_ARAU] |2322| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2323,column 9,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |2323| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        DIVF32    R3H,R3H,R4H           ; [CPU_FPU] |2319| 
        MOVXI     R5H,#39322            ; [CPU_FPU] |2319| 
        MPYF32    R0H,R5H,R2H           ; [CPU_FPU] |2319| 
        MOVIZ     R5H,#15897            ; [CPU_FPU] |2319| 
        MOVXI     R5H,#39322            ; [CPU_FPU] |2319| 
        MPYF32    R1H,R5H,R3H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        MOVU      ACC,@||m2_pos_sample_head|| ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2319,column 9,is_stmt,isa 0
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |2319| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |2283| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2322,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |2322| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2323,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |2323| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2283,column 11,is_stmt,isa 0
        B         ||$C$L113||,NEQ       ; [CPU_ALU] |2283| 
        ; branchcc occurs ; [] |2283| 
        MOV32     @||m2_custom_speed_pu||,R2H ; [CPU_FPU] 
||$C$L118||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 496,column 9,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |496| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |496| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |496| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 9,is_stmt,isa 0
        MOVB      XAR0,#68              ; [CPU_ALU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 496,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |496| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 496,column 9,is_stmt,isa 0
        MOVL      XAR7,#||adc_raw||     ; [CPU_ARAU] |496| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |496| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 9,is_stmt,isa 0
        MOVB      XAR0,#70              ; [CPU_ALU] |498| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |498| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 9,is_stmt,isa 0
        MOV       *+XAR7[1],AL          ; [CPU_ALU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 501,column 9,is_stmt,isa 0
        MOVL      XAR0,#404             ; [CPU_ALU] |501| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |498| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 501,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |501| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 9,is_stmt,isa 0
        MOV       *+XAR7[2],AL          ; [CPU_ALU] |498| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 502,column 9,is_stmt,isa 0
        MOVL      XAR0,#406             ; [CPU_ALU] |502| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 501,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |501| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 502,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |502| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 501,column 9,is_stmt,isa 0
        MOV       *+XAR7[3],AL          ; [CPU_ALU] |501| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 503,column 9,is_stmt,isa 0
        MOVL      XAR0,#408             ; [CPU_ALU] |503| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 502,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |502| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 503,column 9,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[AR0]      ; [CPU_ALU] |503| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 502,column 9,is_stmt,isa 0
        MOV       *+XAR7[4],AL          ; [CPU_ALU] |502| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 503,column 9,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |503| 
        MOV       *+XAR7[5],AL          ; [CPU_ALU] |503| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 504,column 5,is_stmt,isa 0
        B         ||$C$L106||,UNC       ; [CPU_ALU] |504| 
        ; branch occurs ; [] |504| 
	.dwattr $C$DW$233, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x1f9)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$293	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$293, DW_AT_name("__signbitl")
	.dwattr $C$DW$293, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$293, DW_AT_high_pc(0x00)
	.dwattr $C$DW$293, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$293, DW_AT_external
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$293, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$293, DW_AT_decl_column(0x18)
	.dwattr $C$DW$293, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$294	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$294, DW_AT_name("e")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg12]


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
$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("e")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg12]

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
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$293, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$293, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$293, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$293

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$298	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$298, DW_AT_name("__signbitf")
	.dwattr $C$DW$298, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$298, DW_AT_high_pc(0x00)
	.dwattr $C$DW$298, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$298, DW_AT_external
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$298, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$298, DW_AT_decl_column(0x18)
	.dwattr $C$DW$298, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("f")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$300	.dwtag  DW_TAG_variable
	.dwattr $C$DW$300, DW_AT_name("f")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$298, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$298, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$298, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$298

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$302	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$302, DW_AT_name("__signbit")
	.dwattr $C$DW$302, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$302, DW_AT_high_pc(0x00)
	.dwattr $C$DW$302, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$302, DW_AT_external
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$302, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$302, DW_AT_decl_column(0x18)
	.dwattr $C$DW$302, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$303	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$303, DW_AT_name("d")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg12]


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
$C$DW$304	.dwtag  DW_TAG_variable
	.dwattr $C$DW$304, DW_AT_name("d")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg12]

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
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$305, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$302, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$302, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$302, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$302

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$307	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$307, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$307, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$307, DW_AT_high_pc(0x00)
	.dwattr $C$DW$307, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$307, DW_AT_external
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$307, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x103)
	.dwattr $C$DW$307, DW_AT_decl_column(0x10)
	.dwattr $C$DW$307, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 260,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$308	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$308, DW_AT_name("x")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$309	.dwtag  DW_TAG_variable
	.dwattr $C$DW$309, DW_AT_name("x")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 261,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |261| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$307, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$307, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$307, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$307

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$311	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$311, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$311, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$311, DW_AT_high_pc(0x00)
	.dwattr $C$DW$311, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$311, DW_AT_external
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$311, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x108)
	.dwattr $C$DW$311, DW_AT_decl_column(0x10)
	.dwattr $C$DW$311, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$312	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$312, DW_AT_name("x")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$313	.dwtag  DW_TAG_variable
	.dwattr $C$DW$313, DW_AT_name("x")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$311, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$311, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$311, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$311

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$315	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$315, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$315, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$315, DW_AT_high_pc(0x00)
	.dwattr $C$DW$315, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$315, DW_AT_external
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$315, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$315, DW_AT_decl_column(0x10)
	.dwattr $C$DW$315, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$316	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$316, DW_AT_name("y")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$317	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$317, DW_AT_name("x")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$318	.dwtag  DW_TAG_variable
	.dwattr $C$DW$318, DW_AT_name("y")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$319	.dwtag  DW_TAG_variable
	.dwattr $C$DW$319, DW_AT_name("x")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$315, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$315, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$315, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$315

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$321	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$321, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$321, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$321, DW_AT_high_pc(0x00)
	.dwattr $C$DW$321, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$321, DW_AT_external
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$321, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$321, DW_AT_decl_column(0x10)
	.dwattr $C$DW$321, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$322	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$322, DW_AT_name("x")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$323	.dwtag  DW_TAG_variable
	.dwattr $C$DW$323, DW_AT_name("x")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$321, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$321, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$321, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$321

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$325	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$325, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$325, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$325, DW_AT_high_pc(0x00)
	.dwattr $C$DW$325, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$325, DW_AT_external
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$325, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x112)
	.dwattr $C$DW$325, DW_AT_decl_column(0x10)
	.dwattr $C$DW$325, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$326	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$326, DW_AT_name("x")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$327	.dwtag  DW_TAG_variable
	.dwattr $C$DW$327, DW_AT_name("x")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$325, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$325, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$325, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$325

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$329	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$329, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$329, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$329, DW_AT_high_pc(0x00)
	.dwattr $C$DW$329, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$329, DW_AT_external
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$329, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x117)
	.dwattr $C$DW$329, DW_AT_decl_column(0x10)
	.dwattr $C$DW$329, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$330	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$330, DW_AT_name("y")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$331	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$331, DW_AT_name("x")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("y")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("x")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$329, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$329, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$329, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$329

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$335	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$335, DW_AT_name("__isnormall")
	.dwattr $C$DW$335, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$335, DW_AT_high_pc(0x00)
	.dwattr $C$DW$335, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$335, DW_AT_external
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$335, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x167)
	.dwattr $C$DW$335, DW_AT_decl_column(0x18)
	.dwattr $C$DW$335, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$336	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$336, DW_AT_name("e")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg12]


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
$C$DW$337	.dwtag  DW_TAG_variable
	.dwattr $C$DW$337, DW_AT_name("e")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg12]

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
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$338, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L119||,EQ        ; [CPU_ALU] |360| 
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
||$C$L119||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$335, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$335, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$335, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$335

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$340	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$340, DW_AT_name("__isnormalf")
	.dwattr $C$DW$340, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$340, DW_AT_high_pc(0x00)
	.dwattr $C$DW$340, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$340, DW_AT_external
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$340, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x163)
	.dwattr $C$DW$340, DW_AT_decl_column(0x18)
	.dwattr $C$DW$340, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$341	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$341, DW_AT_name("f")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("f")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L120||,EQ        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L120||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$340, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$340, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$340, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$340

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$344	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$344, DW_AT_name("__isnormal")
	.dwattr $C$DW$344, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$344, DW_AT_high_pc(0x00)
	.dwattr $C$DW$344, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$344, DW_AT_external
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$344, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$344, DW_AT_decl_column(0x18)
	.dwattr $C$DW$344, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$345	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$345, DW_AT_name("d")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg12]


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
$C$DW$346	.dwtag  DW_TAG_variable
	.dwattr $C$DW$346, DW_AT_name("d")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg12]

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
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$347, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L121||,EQ        ; [CPU_ALU] |352| 
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
||$C$L121||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$344, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$344, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$344, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$344

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$349	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$349, DW_AT_name("__isnanl")
	.dwattr $C$DW$349, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$349, DW_AT_high_pc(0x00)
	.dwattr $C$DW$349, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$349, DW_AT_external
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$349, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$349, DW_AT_decl_column(0x18)
	.dwattr $C$DW$349, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$350	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$350, DW_AT_name("e")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg12]


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
$C$DW$351	.dwtag  DW_TAG_variable
	.dwattr $C$DW$351, DW_AT_name("e")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L122||,NEQ       ; [CPU_ALU] |348| 
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
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$352, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L122||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$349, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$349, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$349, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$349

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$354	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$354, DW_AT_name("__isnanf")
	.dwattr $C$DW$354, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$354, DW_AT_high_pc(0x00)
	.dwattr $C$DW$354, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$354, DW_AT_external
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$354, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x158)
	.dwattr $C$DW$354, DW_AT_decl_column(0x18)
	.dwattr $C$DW$354, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$355	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$355, DW_AT_name("f")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("f")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L123||,NEQ       ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L123||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$354, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$354, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$354, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$354

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$358	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$358, DW_AT_name("__isnan")
	.dwattr $C$DW$358, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$358, DW_AT_high_pc(0x00)
	.dwattr $C$DW$358, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$358, DW_AT_external
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$358, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x155)
	.dwattr $C$DW$358, DW_AT_decl_column(0x18)
	.dwattr $C$DW$358, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$359	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$359, DW_AT_name("d")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg12]


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
$C$DW$360	.dwtag  DW_TAG_variable
	.dwattr $C$DW$360, DW_AT_name("d")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L124||,NEQ       ; [CPU_ALU] |342| 
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
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$361, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L124||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$358, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$358, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$358, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$358

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$363	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$363, DW_AT_name("__isinfl")
	.dwattr $C$DW$363, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$363, DW_AT_high_pc(0x00)
	.dwattr $C$DW$363, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$363, DW_AT_external
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$363, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$363, DW_AT_decl_column(0x18)
	.dwattr $C$DW$363, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$364	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$364, DW_AT_name("e")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_reg12]


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
$C$DW$365	.dwtag  DW_TAG_variable
	.dwattr $C$DW$365, DW_AT_name("e")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L125||,NEQ       ; [CPU_ALU] |379| 
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
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$366, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L125||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$363, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$363, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$363, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$363

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$368	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$368, DW_AT_name("__isinff")
	.dwattr $C$DW$368, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$368, DW_AT_high_pc(0x00)
	.dwattr $C$DW$368, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$368, DW_AT_external
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$368, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x176)
	.dwattr $C$DW$368, DW_AT_decl_column(0x18)
	.dwattr $C$DW$368, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$369	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$369, DW_AT_name("f")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$370	.dwtag  DW_TAG_variable
	.dwattr $C$DW$370, DW_AT_name("f")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L126||,NEQ       ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L126||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$368, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$368, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$368, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$368

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$372	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$372, DW_AT_name("__isinf")
	.dwattr $C$DW$372, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$372, DW_AT_high_pc(0x00)
	.dwattr $C$DW$372, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$372, DW_AT_external
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$372, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x178)
	.dwattr $C$DW$372, DW_AT_decl_column(0x18)
	.dwattr $C$DW$372, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$373	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$373, DW_AT_name("d")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg12]


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
$C$DW$374	.dwtag  DW_TAG_variable
	.dwattr $C$DW$374, DW_AT_name("d")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L127||,NEQ       ; [CPU_ALU] |377| 
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
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$375, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L127||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$372, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$372, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$372, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$372

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$377	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$377, DW_AT_name("__isfinitel")
	.dwattr $C$DW$377, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$377, DW_AT_high_pc(0x00)
	.dwattr $C$DW$377, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$377, DW_AT_external
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$377, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x152)
	.dwattr $C$DW$377, DW_AT_decl_column(0x18)
	.dwattr $C$DW$377, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$378	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$378, DW_AT_name("e")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg12]


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
$C$DW$379	.dwtag  DW_TAG_variable
	.dwattr $C$DW$379, DW_AT_name("e")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg12]

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
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$377, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$377, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$377, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$377

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$381	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$381, DW_AT_name("__isfinitef")
	.dwattr $C$DW$381, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$381, DW_AT_high_pc(0x00)
	.dwattr $C$DW$381, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$381, DW_AT_external
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$381, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x150)
	.dwattr $C$DW$381, DW_AT_decl_column(0x18)
	.dwattr $C$DW$381, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$382	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$382, DW_AT_name("f")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$383	.dwtag  DW_TAG_variable
	.dwattr $C$DW$383, DW_AT_name("f")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$381, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$381, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$381, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$381

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$385	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$385, DW_AT_name("__isfinite")
	.dwattr $C$DW$385, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$385, DW_AT_high_pc(0x00)
	.dwattr $C$DW$385, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$385, DW_AT_external
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$385, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$385, DW_AT_decl_column(0x18)
	.dwattr $C$DW$385, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$386	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$386, DW_AT_name("d")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg12]


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
$C$DW$387	.dwtag  DW_TAG_variable
	.dwattr $C$DW$387, DW_AT_name("d")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg12]

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
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$385, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$385, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$385, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$385

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$389	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$389, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$389, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$389, DW_AT_high_pc(0x00)
	.dwattr $C$DW$389, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$389, DW_AT_external
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$389, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$389, DW_AT_decl_column(0x18)
	.dwattr $C$DW$389, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$390	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$390, DW_AT_name("e")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$391	.dwtag  DW_TAG_variable
	.dwattr $C$DW$391, DW_AT_name("e")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$392	.dwtag  DW_TAG_variable
	.dwattr $C$DW$392, DW_AT_name("e")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L129||,NEQ       ; [CPU_ALU] |436| 
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
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$393, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L128||,EQ        ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L132||,UNC       ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L128||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L132||,UNC       ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L129||:    
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
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$394, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L130||,EQ        ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L132||,UNC       ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L130||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$395, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L131||,EQ        ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L132||,UNC       ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L131||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L132||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$389, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$389, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$389, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$389

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$397	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$397, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$397, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$397, DW_AT_high_pc(0x00)
	.dwattr $C$DW$397, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$397, DW_AT_external
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$397, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$397, DW_AT_decl_column(0x18)
	.dwattr $C$DW$397, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$398	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$398, DW_AT_name("f")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$399	.dwtag  DW_TAG_variable
	.dwattr $C$DW$399, DW_AT_name("f")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L134||,NEQ       ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L133||,EQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L133||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L134||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L135||,EQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L135||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L136||,EQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L136||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$397, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$397, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$397, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$397

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$405	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$405, DW_AT_name("__fpclassify")
	.dwattr $C$DW$405, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$405, DW_AT_high_pc(0x00)
	.dwattr $C$DW$405, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$405, DW_AT_external
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$405, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$405, DW_AT_decl_column(0x18)
	.dwattr $C$DW$405, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$406	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$406, DW_AT_name("d")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$407	.dwtag  DW_TAG_variable
	.dwattr $C$DW$407, DW_AT_name("d")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$408	.dwtag  DW_TAG_variable
	.dwattr $C$DW$408, DW_AT_name("d")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L138||,NEQ       ; [CPU_ALU] |419| 
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
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$409, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L137||,EQ        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L141||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L137||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L141||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L138||:    
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
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$410, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L139||,EQ        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L141||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L139||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$411, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L140||,EQ        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L141||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L140||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L141||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$405, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$405, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$405, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$405

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||FCL_runPICtrl_M1||
	.global	||FCL_runPICtrlWrap_M1||
	.global	||FCL_resetController||
	.global	||FCL_runPICtrl_M2||
	.global	||FCL_runPICtrlWrap_M2||
	.global	||Device_init||
	.global	||HAL_setParams||
	.global	||HAL_setMotorParams||
	.global	||HAL_SCI_init||
	.global	||initMotorParameters||
	.global	||initControlVars||
	.global	||resetControlVars||
	.global	||DLOG_4CH_F_init||
	.global	||HAL_setupInterrupts||
	.global	||runOffsetsCalculation||
	.global	||HAL_enableInterrupts||
	.global	||DLOG_4CH_F_FUNC||
	.global	||HAL_init||
	.global	||HAL_MTR_init||
	.global	||FCL_getSwVersion||
	.global	||fclVars||
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

$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$413, DW_AT_const_value(0x00)
	.dwattr $C$DW$413, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x40)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$414, DW_AT_const_value(0x01)
	.dwattr $C$DW$414, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x41)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$415, DW_AT_const_value(0x02)
	.dwattr $C$DW$415, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x42)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("MOTOR_STOP")
	.dwattr $C$DW$416, DW_AT_const_value(0x00)
	.dwattr $C$DW$416, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("MOTOR_RUN")
	.dwattr $C$DW$417, DW_AT_const_value(0x01)
	.dwattr $C$DW$417, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$105, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("MotorRunStop_e")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("CTRL_STOP")
	.dwattr $C$DW$418, DW_AT_const_value(0x00)
	.dwattr $C$DW$418, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x64)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("CTRL_RUN")
	.dwattr $C$DW$419, DW_AT_const_value(0x01)
	.dwattr $C$DW$419, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x65)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("CTRL_BRAKE")
	.dwattr $C$DW$420, DW_AT_const_value(0x02)
	.dwattr $C$DW$420, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x66)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("CTRL_RESET")
	.dwattr $C$DW$421, DW_AT_const_value(0x03)
	.dwattr $C$DW$421, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x67)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("CTRL_FAULT")
	.dwattr $C$DW$422, DW_AT_const_value(0x04)
	.dwattr $C$DW$422, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x68)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$107, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("CtrlState_e")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$108


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$423, DW_AT_const_value(0x00)
	.dwattr $C$DW$423, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x126)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$424, DW_AT_const_value(0x01)
	.dwattr $C$DW$424, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x127)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$425, DW_AT_const_value(0x02)
	.dwattr $C$DW$425, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x128)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$426, DW_AT_const_value(0x03)
	.dwattr $C$DW$426, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x129)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$427, DW_AT_const_value(0x00)
	.dwattr $C$DW$427, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x183)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$428, DW_AT_const_value(0x200)
	.dwattr $C$DW$428, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x184)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$429, DW_AT_const_value(0x300)
	.dwattr $C$DW$429, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x185)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$430, DW_AT_const_value(0x400)
	.dwattr $C$DW$430, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x186)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$431, DW_AT_const_value(0x500)
	.dwattr $C$DW$431, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x187)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

$C$DW$432	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$432, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$432, DW_AT_const_value(0x1000)
	.dwattr $C$DW$432, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x188)
	.dwattr $C$DW$432, DW_AT_decl_column(0x05)

$C$DW$433	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$433, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$433, DW_AT_const_value(0x1200)
	.dwattr $C$DW$433, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x189)
	.dwattr $C$DW$433, DW_AT_decl_column(0x05)

$C$DW$434	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$434, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$434, DW_AT_const_value(0x1300)
	.dwattr $C$DW$434, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$434, DW_AT_decl_column(0x05)

$C$DW$435	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$435, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$435, DW_AT_const_value(0x01)
	.dwattr $C$DW$435, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$435, DW_AT_decl_column(0x05)

$C$DW$436	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$436, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$436, DW_AT_const_value(0x101)
	.dwattr $C$DW$436, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$436, DW_AT_decl_column(0x05)

$C$DW$437	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$437, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$437, DW_AT_const_value(0x02)
	.dwattr $C$DW$437, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$437, DW_AT_decl_column(0x05)

$C$DW$438	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$438, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$438, DW_AT_const_value(0x102)
	.dwattr $C$DW$438, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$438, DW_AT_decl_column(0x05)

$C$DW$439	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$439, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$439, DW_AT_const_value(0x202)
	.dwattr $C$DW$439, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$439, DW_AT_decl_column(0x05)

$C$DW$440	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$440, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$440, DW_AT_const_value(0x302)
	.dwattr $C$DW$440, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x190)
	.dwattr $C$DW$440, DW_AT_decl_column(0x05)

$C$DW$441	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$441, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$441, DW_AT_const_value(0x402)
	.dwattr $C$DW$441, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x191)
	.dwattr $C$DW$441, DW_AT_decl_column(0x05)

$C$DW$442	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$442, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$442, DW_AT_const_value(0x502)
	.dwattr $C$DW$442, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x192)
	.dwattr $C$DW$442, DW_AT_decl_column(0x05)

$C$DW$443	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$443, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$443, DW_AT_const_value(0x602)
	.dwattr $C$DW$443, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x193)
	.dwattr $C$DW$443, DW_AT_decl_column(0x05)

$C$DW$444	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$444, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$444, DW_AT_const_value(0x702)
	.dwattr $C$DW$444, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x194)
	.dwattr $C$DW$444, DW_AT_decl_column(0x05)

$C$DW$445	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$445, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$445, DW_AT_const_value(0x802)
	.dwattr $C$DW$445, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x195)
	.dwattr $C$DW$445, DW_AT_decl_column(0x05)

$C$DW$446	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$446, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$446, DW_AT_const_value(0x902)
	.dwattr $C$DW$446, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x196)
	.dwattr $C$DW$446, DW_AT_decl_column(0x05)

$C$DW$447	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$447, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$447, DW_AT_const_value(0xa02)
	.dwattr $C$DW$447, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x197)
	.dwattr $C$DW$447, DW_AT_decl_column(0x05)

$C$DW$448	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$448, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$448, DW_AT_const_value(0xb02)
	.dwattr $C$DW$448, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x198)
	.dwattr $C$DW$448, DW_AT_decl_column(0x05)

$C$DW$449	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$449, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$449, DW_AT_const_value(0x03)
	.dwattr $C$DW$449, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x199)
	.dwattr $C$DW$449, DW_AT_decl_column(0x05)

$C$DW$450	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$450, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$450, DW_AT_const_value(0x103)
	.dwattr $C$DW$450, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$450, DW_AT_decl_column(0x05)

$C$DW$451	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$451, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$451, DW_AT_const_value(0x203)
	.dwattr $C$DW$451, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)

$C$DW$452	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$452, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$452, DW_AT_const_value(0x303)
	.dwattr $C$DW$452, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)

$C$DW$453	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$453, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$453, DW_AT_const_value(0x403)
	.dwattr $C$DW$453, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)

$C$DW$454	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$454, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$454, DW_AT_const_value(0x503)
	.dwattr $C$DW$454, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$454, DW_AT_decl_column(0x05)

$C$DW$455	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$455, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$455, DW_AT_const_value(0x04)
	.dwattr $C$DW$455, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$455, DW_AT_decl_column(0x05)

$C$DW$456	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$456, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$456, DW_AT_const_value(0x104)
	.dwattr $C$DW$456, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$456, DW_AT_decl_column(0x05)

$C$DW$457	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$457, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$457, DW_AT_const_value(0x204)
	.dwattr $C$DW$457, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$457, DW_AT_decl_column(0x05)

$C$DW$458	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$458, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$458, DW_AT_const_value(0x06)
	.dwattr $C$DW$458, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$458, DW_AT_decl_column(0x05)

$C$DW$459	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$459, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$459, DW_AT_const_value(0x106)
	.dwattr $C$DW$459, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$459, DW_AT_decl_column(0x05)

$C$DW$460	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$460, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$460, DW_AT_const_value(0x07)
	.dwattr $C$DW$460, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$460, DW_AT_decl_column(0x05)

$C$DW$461	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$461, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$461, DW_AT_const_value(0x107)
	.dwattr $C$DW$461, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$461, DW_AT_decl_column(0x05)

$C$DW$462	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$462, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$462, DW_AT_const_value(0x207)
	.dwattr $C$DW$462, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$462, DW_AT_decl_column(0x05)

$C$DW$463	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$463, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$463, DW_AT_const_value(0x307)
	.dwattr $C$DW$463, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$463, DW_AT_decl_column(0x05)

$C$DW$464	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$464, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$464, DW_AT_const_value(0x08)
	.dwattr $C$DW$464, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$464, DW_AT_decl_column(0x05)

$C$DW$465	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$465, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$465, DW_AT_const_value(0x108)
	.dwattr $C$DW$465, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$465, DW_AT_decl_column(0x05)

$C$DW$466	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$466, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$466, DW_AT_const_value(0x208)
	.dwattr $C$DW$466, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$466, DW_AT_decl_column(0x05)

$C$DW$467	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$467, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$467, DW_AT_const_value(0x09)
	.dwattr $C$DW$467, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$467, DW_AT_decl_column(0x05)

$C$DW$468	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$468, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$468, DW_AT_const_value(0x109)
	.dwattr $C$DW$468, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$468, DW_AT_decl_column(0x05)

$C$DW$469	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$469, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$469, DW_AT_const_value(0x0a)
	.dwattr $C$DW$469, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$469, DW_AT_decl_column(0x05)

$C$DW$470	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$470, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$470, DW_AT_const_value(0x10a)
	.dwattr $C$DW$470, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$470, DW_AT_decl_column(0x05)

$C$DW$471	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$471, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$471, DW_AT_const_value(0x0b)
	.dwattr $C$DW$471, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$471, DW_AT_decl_column(0x05)

$C$DW$472	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$472, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$472, DW_AT_const_value(0x10b)
	.dwattr $C$DW$472, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$472, DW_AT_decl_column(0x05)

$C$DW$473	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$473, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$473, DW_AT_const_value(0x100b)
	.dwattr $C$DW$473, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$473, DW_AT_decl_column(0x05)

$C$DW$474	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$474, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$474, DW_AT_const_value(0x0c)
	.dwattr $C$DW$474, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$474, DW_AT_decl_column(0x05)

$C$DW$475	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$475, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$475, DW_AT_const_value(0x0d)
	.dwattr $C$DW$475, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$475, DW_AT_decl_column(0x05)

$C$DW$476	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$476, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$476, DW_AT_const_value(0x10d)
	.dwattr $C$DW$476, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$476, DW_AT_decl_column(0x05)

$C$DW$477	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$477, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$477, DW_AT_const_value(0x20d)
	.dwattr $C$DW$477, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$477, DW_AT_decl_column(0x05)

$C$DW$478	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$478, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$478, DW_AT_const_value(0x30d)
	.dwattr $C$DW$478, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$478, DW_AT_decl_column(0x05)

$C$DW$479	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$479, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$479, DW_AT_const_value(0x0e)
	.dwattr $C$DW$479, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$479, DW_AT_decl_column(0x05)

$C$DW$480	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$480, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$480, DW_AT_const_value(0x10e)
	.dwattr $C$DW$480, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$480, DW_AT_decl_column(0x05)

$C$DW$481	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$481, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$481, DW_AT_const_value(0x20e)
	.dwattr $C$DW$481, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$481, DW_AT_decl_column(0x05)

$C$DW$482	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$482, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$482, DW_AT_const_value(0x30e)
	.dwattr $C$DW$482, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$482, DW_AT_decl_column(0x05)

$C$DW$483	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$483, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$483, DW_AT_const_value(0x40e)
	.dwattr $C$DW$483, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$483, DW_AT_decl_column(0x05)

$C$DW$484	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$484, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$484, DW_AT_const_value(0x50e)
	.dwattr $C$DW$484, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$484, DW_AT_decl_column(0x05)

$C$DW$485	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$485, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$485, DW_AT_const_value(0x60e)
	.dwattr $C$DW$485, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$485, DW_AT_decl_column(0x05)

$C$DW$486	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$486, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$486, DW_AT_const_value(0x70e)
	.dwattr $C$DW$486, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$486, DW_AT_decl_column(0x05)

$C$DW$487	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$487, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$487, DW_AT_const_value(0x1010)
	.dwattr $C$DW$487, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$487, DW_AT_decl_column(0x05)

$C$DW$488	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$488, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$488, DW_AT_const_value(0x1110)
	.dwattr $C$DW$488, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$488, DW_AT_decl_column(0x05)

$C$DW$489	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$489, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$489, DW_AT_const_value(0x1210)
	.dwattr $C$DW$489, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$489, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$113, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$490	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$490, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$490, DW_AT_const_value(0x00)
	.dwattr $C$DW$490, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x84)
	.dwattr $C$DW$490, DW_AT_decl_column(0x05)

$C$DW$491	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$491, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$491, DW_AT_const_value(0x01)
	.dwattr $C$DW$491, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x85)
	.dwattr $C$DW$491, DW_AT_decl_column(0x05)

$C$DW$492	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$492, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$492, DW_AT_const_value(0x02)
	.dwattr $C$DW$492, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x86)
	.dwattr $C$DW$492, DW_AT_decl_column(0x05)

$C$DW$493	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$493, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$493, DW_AT_const_value(0x03)
	.dwattr $C$DW$493, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x87)
	.dwattr $C$DW$493, DW_AT_decl_column(0x05)

$C$DW$494	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$494, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$494, DW_AT_const_value(0x04)
	.dwattr $C$DW$494, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x88)
	.dwattr $C$DW$494, DW_AT_decl_column(0x05)

$C$DW$495	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$495, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$495, DW_AT_const_value(0x05)
	.dwattr $C$DW$495, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x89)
	.dwattr $C$DW$495, DW_AT_decl_column(0x05)

$C$DW$496	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$496, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$496, DW_AT_const_value(0x06)
	.dwattr $C$DW$496, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$496, DW_AT_decl_column(0x05)

$C$DW$497	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$497, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$497, DW_AT_const_value(0x07)
	.dwattr $C$DW$497, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$497, DW_AT_decl_column(0x05)

$C$DW$498	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$498, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$498, DW_AT_const_value(0x08)
	.dwattr $C$DW$498, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$498, DW_AT_decl_column(0x05)

$C$DW$499	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$499, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$499, DW_AT_const_value(0x09)
	.dwattr $C$DW$499, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$499, DW_AT_decl_column(0x05)

$C$DW$500	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$500, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$500, DW_AT_const_value(0x0a)
	.dwattr $C$DW$500, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$500, DW_AT_decl_column(0x05)

$C$DW$501	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$501, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$501, DW_AT_const_value(0x0b)
	.dwattr $C$DW$501, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$501, DW_AT_decl_column(0x05)

$C$DW$502	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$502, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$502, DW_AT_const_value(0x0c)
	.dwattr $C$DW$502, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x90)
	.dwattr $C$DW$502, DW_AT_decl_column(0x05)

$C$DW$503	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$503, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$503, DW_AT_const_value(0x0d)
	.dwattr $C$DW$503, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x91)
	.dwattr $C$DW$503, DW_AT_decl_column(0x05)

$C$DW$504	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$504, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$504, DW_AT_const_value(0x0e)
	.dwattr $C$DW$504, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x92)
	.dwattr $C$DW$504, DW_AT_decl_column(0x05)

$C$DW$505	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$505, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$505, DW_AT_const_value(0x0f)
	.dwattr $C$DW$505, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x93)
	.dwattr $C$DW$505, DW_AT_decl_column(0x05)

$C$DW$506	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$506, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$506, DW_AT_const_value(0x10)
	.dwattr $C$DW$506, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x94)
	.dwattr $C$DW$506, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$116


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118

$C$DW$T$118	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x01)
$C$DW$507	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$507, DW_AT_name("MTR_1")
	.dwattr $C$DW$507, DW_AT_const_value(0x00)
	.dwattr $C$DW$507, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$507, DW_AT_decl_column(0x03)

$C$DW$508	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$508, DW_AT_name("MTR_2")
	.dwattr $C$DW$508, DW_AT_const_value(0x01)
	.dwattr $C$DW$508, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$508, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$118

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("MOTOR_Num_e")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$119


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("Freq")
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x29)
	.dwattr $C$DW$509, DW_AT_decl_column(0x1d)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$510, DW_AT_decl_column(0x11)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("Angle")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$511, DW_AT_decl_column(0x11)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("Gain")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$512, DW_AT_decl_column(0x11)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("Out")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$513, DW_AT_decl_column(0x11)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("Offset")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$514, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("RAMPGEN")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$121


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("TargetValue")
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0f)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$516, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0f)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0f)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x30)
	.dwattr $C$DW$518, DW_AT_decl_column(0x0f)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$519, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x31)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("SetpointValue")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x32)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$521, DW_AT_name("EqualFlag")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x33)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("Tmp")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x34)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$94


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0a)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("Ref")
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$523, DW_AT_decl_column(0x1e)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("Fbk")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$524, DW_AT_decl_column(0x12)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("Out")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$525, DW_AT_decl_column(0x12)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("c1")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$526, DW_AT_decl_column(0x12)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("c2")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$527, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$27


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x0e)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("Kr")
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x32)
	.dwattr $C$DW$528, DW_AT_decl_column(0x1e)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("Kp")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x33)
	.dwattr $C$DW$529, DW_AT_decl_column(0x12)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("Ki")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x34)
	.dwattr $C$DW$530, DW_AT_decl_column(0x12)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("Kd")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x35)
	.dwattr $C$DW$531, DW_AT_decl_column(0x12)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("Km")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x36)
	.dwattr $C$DW$532, DW_AT_decl_column(0x12)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("Umax")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x37)
	.dwattr $C$DW$533, DW_AT_decl_column(0x12)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("Umin")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x38)
	.dwattr $C$DW$534, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$28


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x10)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("up")
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$535, DW_AT_decl_column(0x1e)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("ui")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$536, DW_AT_decl_column(0x12)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("ud")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$537, DW_AT_decl_column(0x12)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("v1")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$538, DW_AT_decl_column(0x12)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("i1")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$539, DW_AT_decl_column(0x12)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("d1")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x40)
	.dwattr $C$DW$540, DW_AT_decl_column(0x12)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("d2")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x41)
	.dwattr $C$DW$541, DW_AT_decl_column(0x12)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("w1")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x42)
	.dwattr $C$DW$542, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x28)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$543, DW_AT_name("term")
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x46)
	.dwattr $C$DW$543, DW_AT_decl_column(0x21)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$544, DW_AT_name("param")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x47)
	.dwattr $C$DW$544, DW_AT_decl_column(0x16)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$545, DW_AT_name("data")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x48)
	.dwattr $C$DW$545, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$100


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x1a)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$546, DW_AT_name("input_ptr1")
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0d)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$547, DW_AT_name("input_ptr2")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0d)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$548, DW_AT_name("input_ptr3")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0d)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$549, DW_AT_name("input_ptr4")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0d)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$550, DW_AT_name("output_ptr1")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x40)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0d)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$551, DW_AT_name("output_ptr2")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x41)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0d)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$552, DW_AT_name("output_ptr3")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x42)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0d)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$553, DW_AT_name("output_ptr4")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x43)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0d)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("prev_value")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x44)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("trig_value")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x45)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$556, DW_AT_name("status")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x46)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0a)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$557, DW_AT_name("pre_scalar")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x47)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0a)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$558, DW_AT_name("skip_count")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x48)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0a)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$559, DW_AT_name("size")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x49)
	.dwattr $C$DW$559, DW_AT_decl_column(0x0a)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$560, DW_AT_name("count")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$560, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125
$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("DLOG_4CH_F")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$126


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x0a)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("As")
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$561, DW_AT_decl_column(0x1e)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("Bs")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$562, DW_AT_decl_column(0x12)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("Cs")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$563, DW_AT_decl_column(0x12)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("Alpha")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$564, DW_AT_decl_column(0x12)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("Beta")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$565, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$95


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0e)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("Alpha")
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x29)
	.dwattr $C$DW$566, DW_AT_decl_column(0x1e)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("Beta")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$567, DW_AT_decl_column(0x12)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("Angle")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$568, DW_AT_decl_column(0x12)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("Ds")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$569, DW_AT_decl_column(0x12)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("Qs")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$570, DW_AT_decl_column(0x12)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("Sine")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$571, DW_AT_decl_column(0x12)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("Cosine")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$572, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("PARK")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$96


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0e)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("Alpha")
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x29)
	.dwattr $C$DW$573, DW_AT_decl_column(0x1e)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("Beta")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$574, DW_AT_decl_column(0x12)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("Angle")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$575, DW_AT_decl_column(0x12)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("Ds")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$576, DW_AT_decl_column(0x12)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("Qs")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$577, DW_AT_decl_column(0x12)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("Sine")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$578, DW_AT_decl_column(0x12)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("Cosine")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$579, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("IPARK")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$97


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x1a)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("ElecTheta")
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$580, DW_AT_decl_column(0x12)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$581, DW_AT_name("DirectionQep")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$581, DW_AT_decl_column(0x11)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$582, DW_AT_decl_column(0x12)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("EdgeElecTheta")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0d)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("Speed")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$584, DW_AT_decl_column(0x12)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$585, DW_AT_name("BaseRpm")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x30)
	.dwattr $C$DW$585, DW_AT_decl_column(0x11)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("K1")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x31)
	.dwattr $C$DW$586, DW_AT_decl_column(0x12)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("K2")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x32)
	.dwattr $C$DW$587, DW_AT_decl_column(0x12)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("K3")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x33)
	.dwattr $C$DW$588, DW_AT_decl_column(0x12)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$589, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x34)
	.dwattr $C$DW$589, DW_AT_decl_column(0x10)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("Tmp")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x35)
	.dwattr $C$DW$590, DW_AT_decl_column(0x12)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("SpeedT")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x36)
	.dwattr $C$DW$591, DW_AT_decl_column(0x11)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$592, DW_AT_name("EdgeCount")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x37)
	.dwattr $C$DW$592, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$98


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x16)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("ref")
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x18)
	.dwattr $C$DW$593, DW_AT_decl_column(0x10)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("fbk")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x19)
	.dwattr $C$DW$594, DW_AT_decl_column(0x10)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("err")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$595, DW_AT_decl_column(0x10)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("out")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$596, DW_AT_decl_column(0x10)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("carryOver")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$597, DW_AT_decl_column(0x10)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("Kp")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$598, DW_AT_decl_column(0x10)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("Ki")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$599, DW_AT_decl_column(0x10)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("Kerr")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$600, DW_AT_decl_column(0x10)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("KerrOld")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x20)
	.dwattr $C$DW$601, DW_AT_decl_column(0x10)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("Umax")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x21)
	.dwattr $C$DW$602, DW_AT_decl_column(0x10)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("Umin")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x22)
	.dwattr $C$DW$603, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$79


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x18)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("Ref")
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$604, DW_AT_decl_column(0x1e)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("Fbk")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$605, DW_AT_decl_column(0x12)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("Out")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$606, DW_AT_decl_column(0x12)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("Kp")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$607, DW_AT_decl_column(0x12)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("Ki")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$608, DW_AT_decl_column(0x12)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("Umax")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$609, DW_AT_decl_column(0x12)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("Umin")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x30)
	.dwattr $C$DW$610, DW_AT_decl_column(0x12)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("up")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x31)
	.dwattr $C$DW$611, DW_AT_decl_column(0x12)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("ui")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x32)
	.dwattr $C$DW$612, DW_AT_decl_column(0x12)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("v1")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x33)
	.dwattr $C$DW$613, DW_AT_decl_column(0x12)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("i1")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x34)
	.dwattr $C$DW$614, DW_AT_decl_column(0x12)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("w1")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x35)
	.dwattr $C$DW$615, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$99


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x0c)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("Freq")
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x25)
	.dwattr $C$DW$616, DW_AT_decl_column(0x1d)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x26)
	.dwattr $C$DW$617, DW_AT_decl_column(0x1d)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("Angle")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x27)
	.dwattr $C$DW$618, DW_AT_decl_column(0x1d)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("Gain")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x28)
	.dwattr $C$DW$619, DW_AT_decl_column(0x1d)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("Out")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x29)
	.dwattr $C$DW$620, DW_AT_decl_column(0x1d)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("Offset")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$621, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$78


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x12)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("ElecTheta")
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0f)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("MechTheta")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0f)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$624, DW_AT_name("DirectionQep")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$624, DW_AT_decl_column(0x0f)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$625, DW_AT_name("QepPeriod")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$625, DW_AT_decl_column(0x0f)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$626, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x21)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0f)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$627, DW_AT_name("RawTheta")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x22)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0f)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("MechScaler")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x23)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0f)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$629, DW_AT_name("LineEncoder")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x24)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0f)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$630, DW_AT_name("PolePairs")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x25)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0f)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$631, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x26)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0f)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$632, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x28)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("QEP")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x12)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("Ualpha")
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$633, DW_AT_decl_column(0x10)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("Ubeta")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$634, DW_AT_decl_column(0x10)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("Ta")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$635, DW_AT_decl_column(0x10)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("Tb")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$636, DW_AT_decl_column(0x10)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("Tc")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$637, DW_AT_decl_column(0x10)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("tmp1")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x30)
	.dwattr $C$DW$638, DW_AT_decl_column(0x10)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("tmp2")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x31)
	.dwattr $C$DW$639, DW_AT_decl_column(0x10)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("tmp3")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x32)
	.dwattr $C$DW$640, DW_AT_decl_column(0x10)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$641, DW_AT_name("VecSector")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x33)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$104


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x03)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$642, DW_AT_name("iu")
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$642, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0d)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$643, DW_AT_name("iv")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$643, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0d)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$644, DW_AT_name("iw")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$644, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$48, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("ADC_RAW_VALUES_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$128, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x06)
$C$DW$645	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$645, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$646, DW_AT_name("f")
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$646, DW_AT_decl_line(0x2d2)
	.dwattr $C$DW$646, DW_AT_decl_column(0x13)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$647, DW_AT_name("u")
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$647, DW_AT_decl_line(0x2d2)
	.dwattr $C$DW$647, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$50, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x2d2)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$648, DW_AT_name("ADCINT1")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x62)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$649, DW_AT_name("ADCINT2")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x63)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$650, DW_AT_name("ADCINT3")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x64)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$651, DW_AT_name("ADCINT4")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x65)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$652, DW_AT_name("rsvd1")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$652, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x66)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$52, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$653, DW_AT_name("all")
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0d)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$654, DW_AT_name("bit")
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$654, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$53, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$655	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$53)

$C$DW$T$92	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$655)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$93


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x22)
$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$656, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$656, DW_AT_decl_column(0x2e)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$657, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$657, DW_AT_decl_column(0x2e)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$658, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$658, DW_AT_decl_column(0x2e)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$659, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0xde)
	.dwattr $C$DW$659, DW_AT_decl_column(0x2e)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$660, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$660, DW_AT_decl_column(0x2e)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$661, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$661, DW_AT_decl_column(0x2e)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$662, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$662, DW_AT_decl_column(0x2e)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$663, DW_AT_name("QUTMR")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$663, DW_AT_decl_column(0x2e)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$664, DW_AT_name("QUPRD")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$664, DW_AT_decl_column(0x2e)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$665, DW_AT_name("QWDTMR")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$665, DW_AT_decl_column(0x2e)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$666, DW_AT_name("QWDPRD")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$666, DW_AT_decl_column(0x2e)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$667, DW_AT_name("QDECCTL")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$667, DW_AT_decl_column(0x2e)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$668, DW_AT_name("QEPCTL")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$668, DW_AT_decl_column(0x2e)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$669, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$669, DW_AT_decl_column(0x2e)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$670, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$670, DW_AT_decl_column(0x2e)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$671, DW_AT_name("QEINT")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0xea)
	.dwattr $C$DW$671, DW_AT_decl_column(0x2e)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$672, DW_AT_name("QFLG")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$672, DW_AT_decl_column(0x2e)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$673, DW_AT_name("QCLR")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0xec)
	.dwattr $C$DW$673, DW_AT_decl_column(0x2e)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$674, DW_AT_name("QFRC")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0xed)
	.dwattr $C$DW$674, DW_AT_decl_column(0x2e)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$675, DW_AT_name("QEPSTS")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0xee)
	.dwattr $C$DW$675, DW_AT_decl_column(0x2e)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$676, DW_AT_name("QCTMR")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0xef)
	.dwattr $C$DW$676, DW_AT_decl_column(0x2e)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$677, DW_AT_name("QCPRD")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$677, DW_AT_decl_column(0x2e)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$678, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$678, DW_AT_decl_column(0x2e)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$679, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$679, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$55, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$680	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$55)

$C$DW$T$81	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$680)

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$82


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$681, DW_AT_name("UPPS")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$681, DW_AT_bit_size(0x04)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$682, DW_AT_name("CCPS")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$682, DW_AT_bit_size(0x03)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$683, DW_AT_name("rsvd1")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$683, DW_AT_bit_size(0x08)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$684, DW_AT_name("CEN")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x60)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$56, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$685, DW_AT_name("all")
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x64)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0d)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$686, DW_AT_name("bit")
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x65)
	.dwattr $C$DW$686, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$57, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$687, DW_AT_name("INT")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$688, DW_AT_name("PCE")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$689, DW_AT_name("PHE")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$690, DW_AT_name("QDC")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$691, DW_AT_name("WTO")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$692, DW_AT_name("PCU")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$693, DW_AT_name("PCO")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$694, DW_AT_name("PCR")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$695, DW_AT_name("PCM")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$696, DW_AT_name("SEL")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$697, DW_AT_name("IEL")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0c)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$698, DW_AT_name("UTO")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0xab)
	.dwattr $C$DW$698, DW_AT_decl_column(0x0c)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$699, DW_AT_name("rsvd1")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$699, DW_AT_bit_size(0x04)
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0xac)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$58, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$700, DW_AT_name("all")
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0d)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$701, DW_AT_name("bit")
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$701, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$59, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$702, DW_AT_name("rsvd1")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$702, DW_AT_bit_size(0x05)
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x37)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0c)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$703, DW_AT_name("QSP")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x38)
	.dwattr $C$DW$703, DW_AT_decl_column(0x0c)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$704, DW_AT_name("QIP")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x39)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0c)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$705, DW_AT_name("QBP")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$706, DW_AT_name("QAP")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$707, DW_AT_name("IGATE")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0c)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$708, DW_AT_name("SWAP")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$708, DW_AT_decl_column(0x0c)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$709, DW_AT_name("XCR")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$710, DW_AT_name("SPSEL")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0c)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$711, DW_AT_name("SOEN")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x40)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0c)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$712, DW_AT_name("QSRC")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$712, DW_AT_bit_size(0x02)
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x41)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$60, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$713, DW_AT_name("all")
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x45)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0d)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$714, DW_AT_name("bit")
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x46)
	.dwattr $C$DW$714, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$61, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$715, DW_AT_name("rsvd1")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x76)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0c)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$716, DW_AT_name("PCE")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x77)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$717, DW_AT_name("QPE")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x78)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$718, DW_AT_name("QDC")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x79)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$719, DW_AT_name("WTO")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$720, DW_AT_name("PCU")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$721, DW_AT_name("PCO")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$722, DW_AT_name("PCR")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$723, DW_AT_name("PCM")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$724, DW_AT_name("SEL")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$725, DW_AT_name("IEL")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x80)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0c)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$726, DW_AT_name("UTO")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x81)
	.dwattr $C$DW$726, DW_AT_decl_column(0x0c)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$727, DW_AT_name("rsvd2")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$727, DW_AT_bit_size(0x04)
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x82)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$728, DW_AT_name("all")
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x86)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0d)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$729, DW_AT_name("bit")
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x87)
	.dwattr $C$DW$729, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$63, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$730, DW_AT_name("WDE")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0c)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$731, DW_AT_name("UTE")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0c)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$732, DW_AT_name("QCLM")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$733, DW_AT_name("QPEN")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$734, DW_AT_name("IEL")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$734, DW_AT_bit_size(0x02)
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$735, DW_AT_name("SEL")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0c)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$736, DW_AT_name("SWI")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x50)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0c)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$737, DW_AT_name("IEI")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$737, DW_AT_bit_size(0x02)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x51)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$738, DW_AT_name("SEI")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$738, DW_AT_bit_size(0x02)
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x52)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$739, DW_AT_name("PCRM")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$739, DW_AT_bit_size(0x02)
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x53)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$740, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$740, DW_AT_bit_size(0x02)
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x54)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$741, DW_AT_name("all")
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x58)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0d)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$742, DW_AT_name("bit")
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x59)
	.dwattr $C$DW$742, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$65, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$743, DW_AT_name("PCEF")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0xca)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0c)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$744, DW_AT_name("FIMF")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0c)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$745, DW_AT_name("CDEF")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0c)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$746, DW_AT_name("COEF")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$747, DW_AT_name("QDLF")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0xce)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$748, DW_AT_name("QDF")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0c)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$749, DW_AT_name("FIDF")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0c)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$750, DW_AT_name("UPEVNT")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$751, DW_AT_name("rsvd1")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$751, DW_AT_bit_size(0x08)
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$752, DW_AT_name("all")
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0d)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$753, DW_AT_name("bit")
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$753, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$67, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$754, DW_AT_name("INT")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$755, DW_AT_name("PCE")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0c)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$756, DW_AT_name("PHE")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0c)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$757, DW_AT_name("QDC")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0c)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$758, DW_AT_name("WTO")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0c)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$759, DW_AT_name("PCU")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x90)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0c)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$760, DW_AT_name("PCO")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x91)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0c)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$761, DW_AT_name("PCR")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x92)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0c)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$762, DW_AT_name("PCM")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x93)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0c)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$763, DW_AT_name("SEL")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x94)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0c)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$764, DW_AT_name("IEL")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x95)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0c)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$765, DW_AT_name("UTO")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x96)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0c)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$766, DW_AT_name("rsvd1")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$766, DW_AT_bit_size(0x04)
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x97)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$767, DW_AT_name("all")
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$767, DW_AT_decl_column(0x0d)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$768, DW_AT_name("bit")
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$768, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$69, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$769, DW_AT_name("rsvd1")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0c)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$770, DW_AT_name("PCE")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0c)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$771, DW_AT_name("PHE")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0c)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$772, DW_AT_name("QDC")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0c)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$773, DW_AT_name("WTO")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0c)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$774, DW_AT_name("PCU")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0xba)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0c)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$775, DW_AT_name("PCO")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$776, DW_AT_name("PCR")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0c)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$777, DW_AT_name("PCM")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0c)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$778, DW_AT_name("SEL")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0c)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$779, DW_AT_name("IEL")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0c)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$780, DW_AT_name("UTO")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0c)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$781, DW_AT_name("rsvd2")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$781, DW_AT_bit_size(0x04)
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$782, DW_AT_name("all")
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0d)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$783, DW_AT_name("bit")
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$783, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$71, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$784, DW_AT_name("PCSPW")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$784, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x69)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0c)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$785, DW_AT_name("PCE")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0c)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$786, DW_AT_name("PCPOL")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0c)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$787, DW_AT_name("PCLOAD")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0c)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$788, DW_AT_name("PCSHDW")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$789, DW_AT_name("all")
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x71)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0d)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$790, DW_AT_name("bit")
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x72)
	.dwattr $C$DW$790, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$73, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x1e)
$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("carrierMid")
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x38)
	.dwattr $C$DW$791, DW_AT_decl_column(0x11)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("adcScale")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x39)
	.dwattr $C$DW$792, DW_AT_decl_column(0x11)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$793, DW_AT_decl_column(0x11)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("tSamp")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$794, DW_AT_decl_column(0x11)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("Rd")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$795, DW_AT_decl_column(0x11)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("Rq")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$796, DW_AT_decl_column(0x11)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("Ld")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$797, DW_AT_decl_column(0x11)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("Lq")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x40)
	.dwattr $C$DW$798, DW_AT_decl_column(0x11)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("Vbase")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x41)
	.dwattr $C$DW$799, DW_AT_decl_column(0x11)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("Ibase")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x42)
	.dwattr $C$DW$800, DW_AT_decl_column(0x11)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("wccD")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x43)
	.dwattr $C$DW$801, DW_AT_decl_column(0x11)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("wccQ")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x44)
	.dwattr $C$DW$802, DW_AT_decl_column(0x11)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("Vdcbus")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x45)
	.dwattr $C$DW$803, DW_AT_decl_column(0x11)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("BemfK")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x46)
	.dwattr $C$DW$804, DW_AT_decl_column(0x11)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("Wbase")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x47)
	.dwattr $C$DW$805, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$101


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("_FCL_Vars_t_")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x52)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$806, DW_AT_name("lsw")
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$806, DW_AT_decl_column(0x12)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$807, DW_AT_name("Q_cla")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x81)
	.dwattr $C$DW$807, DW_AT_decl_column(0x11)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("speedWePrev")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x82)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0f)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("pangle")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x83)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0f)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$810, DW_AT_name("rg")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x84)
	.dwattr $C$DW$810, DW_AT_decl_column(0x12)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$811, DW_AT_name("pi_iq")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x85)
	.dwattr $C$DW$811, DW_AT_decl_column(0x18)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$812, DW_AT_name("qep")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x86)
	.dwattr $C$DW$812, DW_AT_decl_column(0x09)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$813, DW_AT_name("ptrQEP")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x87)
	.dwattr $C$DW$813, DW_AT_decl_column(0x20)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$814, DW_AT_name("taskCount")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x88)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$84, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("FCL_Vars_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$103


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132

$C$DW$T$132	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$132, DW_AT_byte_size(0xa4)
$C$DW$815	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$815, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$132

	.dwendtag $C$DW$TU$132


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("_HAL_MTR_Obj_")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x12)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$816, DW_AT_name("pwmHandle")
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0d)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$817, DW_AT_name("cmpssHandle")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0d)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$818, DW_AT_name("spiHandle")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0d)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$819, DW_AT_name("qepHandle")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0d)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$820, DW_AT_name("flagEnablePWM")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("HAL_MTR_Obj")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136

$C$DW$T$136	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x24)
$C$DW$821	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$821, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$136

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137
$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138
$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("HAL_MTR_Handle")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$138


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142

$C$DW$T$142	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x04)
$C$DW$822	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$822, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$142

	.dwendtag $C$DW$TU$142


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("_HAL_Obj_")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x22)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$823, DW_AT_name("claHandle")
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x87)
	.dwattr $C$DW$823, DW_AT_decl_column(0x11)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$824, DW_AT_name("timerHandle")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x89)
	.dwattr $C$DW$824, DW_AT_decl_column(0x11)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$825, DW_AT_name("sciHandle")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$825, DW_AT_decl_column(0x11)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$826, DW_AT_name("dacHandle")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$826, DW_AT_decl_column(0x11)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$827, DW_AT_name("adcHandle")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$827, DW_AT_decl_column(0x11)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$828, DW_AT_name("adcResult")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0x90)
	.dwattr $C$DW$828, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148
$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("HAL_Obj")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$148


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149
$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$149


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150
$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("HAL_Handle")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$150


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("_MOTOR_Vars_t_")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x152)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$829, DW_AT_name("posCntr")
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x139)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0e)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$830, DW_AT_name("posCntrMax")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0e)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("posSlewRate")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0f)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("baseFreq")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0f)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("poles")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0f)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("Ts")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x140)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0f)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("maxModIndex")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x141)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0f)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("voltageLimit")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0x143)
	.dwattr $C$DW$836, DW_AT_decl_column(0x0f)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("currentLimit")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0x144)
	.dwattr $C$DW$837, DW_AT_decl_column(0x0f)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("tempIdRef")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0x146)
	.dwattr $C$DW$838, DW_AT_decl_column(0x0f)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("IdRef_start")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0x147)
	.dwattr $C$DW$839, DW_AT_decl_column(0x0f)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("IdRef_run")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0x148)
	.dwattr $C$DW$840, DW_AT_decl_column(0x0f)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("IdRef")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x149)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0f)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("IqRef")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0f)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("speedRef")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0f)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("positionRef")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0f)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("lsw1Speed")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0f)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("offset_currentAs")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x151)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0f)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("offset_currentBs")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x152)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0f)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("offset_currentCs")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x153)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0f)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("currentAs")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x155)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0f)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("currentBs")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0x156)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0f)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("currentCs")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0x157)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0f)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("currentScale")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0x159)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0f)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("voltageScale")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0f)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("adcScale")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0f)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("currentInvSF")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0f)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("voltageInvSF")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0f)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("posElecTheta")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0f)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("posMechTheta")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0x160)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0f)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$859, DW_AT_name("pwmCompA")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0x162)
	.dwattr $C$DW$859, DW_AT_decl_column(0x18)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$860, DW_AT_name("pwmCompB")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x163)
	.dwattr $C$DW$860, DW_AT_decl_column(0x18)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$861, DW_AT_name("pwmCompC")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x164)
	.dwattr $C$DW$861, DW_AT_decl_column(0x18)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$862, DW_AT_name("curA_PPBRESULT")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x166)
	.dwattr $C$DW$862, DW_AT_decl_column(0x17)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$863, DW_AT_name("curB_PPBRESULT")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x167)
	.dwattr $C$DW$863, DW_AT_decl_column(0x17)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$864, DW_AT_name("curC_PPBRESULT")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x168)
	.dwattr $C$DW$864, DW_AT_decl_column(0x17)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$865, DW_AT_name("volDC_PPBRESULT")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x169)
	.dwattr $C$DW$865, DW_AT_decl_column(0x17)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$866, DW_AT_name("AdcIntFlag")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$866, DW_AT_decl_column(0x23)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$867, DW_AT_name("D_cpu")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$867, DW_AT_decl_column(0x11)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$868, DW_AT_name("rc")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0d)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$869, DW_AT_name("clarke")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0c)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$870, DW_AT_name("park")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x170)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0a)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$871, DW_AT_name("ipark")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0x171)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0b)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$872, DW_AT_name("speed")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0x172)
	.dwattr $C$DW$872, DW_AT_decl_column(0x14)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$873, DW_AT_name("pi_id")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0x174)
	.dwattr $C$DW$873, DW_AT_decl_column(0x18)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$874, DW_AT_name("pi_pos")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0x175)
	.dwattr $C$DW$874, DW_AT_decl_column(0x13)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$875, DW_AT_name("pid_spd")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0x176)
	.dwattr $C$DW$875, DW_AT_decl_column(0x15)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$876, DW_AT_name("FCL_params")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0x178)
	.dwattr $C$DW$876, DW_AT_decl_column(0x16)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$877, DW_AT_name("ptrFCL")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x11e]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0x179)
	.dwattr $C$DW$877, DW_AT_decl_column(0x12)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$878, DW_AT_name("svgen")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x120]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$878, DW_AT_decl_column(0x0b)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$879, DW_AT_name("Vdcbus")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$879, DW_AT_decl_column(0x0f)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("VdcbusMax")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$880, DW_AT_decl_column(0x0f)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("VdcbusMin")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$881, DW_AT_decl_column(0x0f)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$882, DW_AT_name("isrTicker")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x181)
	.dwattr $C$DW$882, DW_AT_decl_column(0x0e)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("fclLatencyInMicroSec")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x183)
	.dwattr $C$DW$883, DW_AT_decl_column(0x0f)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$884, DW_AT_name("fclClrCntr")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x184)
	.dwattr $C$DW$884, DW_AT_decl_column(0x0f)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$885, DW_AT_name("fclCycleCountMax")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x13d]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x185)
	.dwattr $C$DW$885, DW_AT_decl_column(0x0f)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$886, DW_AT_name("speedLoopPrescaler")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0x187)
	.dwattr $C$DW$886, DW_AT_decl_column(0x0e)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$887, DW_AT_name("speedLoopCount")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0x188)
	.dwattr $C$DW$887, DW_AT_decl_column(0x0e)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$888, DW_AT_name("alignCntr")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0x189)
	.dwattr $C$DW$888, DW_AT_decl_column(0x0e)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$889, DW_AT_name("alignCnt")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x141]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$889, DW_AT_decl_column(0x0e)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$890, DW_AT_name("posPtrMax")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0e)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$891, DW_AT_name("posPtr")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x143]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0e)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$892, DW_AT_name("currentThreshHi")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$892, DW_AT_decl_column(0x0e)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$893, DW_AT_name("currentThreshLo")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x145]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$893, DW_AT_decl_column(0x0e)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$894, DW_AT_name("drvEnableGateGPIO")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x191)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0e)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$895, DW_AT_name("drvFaultTripGPIO")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x147]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x192)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0e)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$896, DW_AT_name("drvClearFaultGPIO")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x193)
	.dwattr $C$DW$896, DW_AT_decl_column(0x0e)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$897, DW_AT_name("tripCountDMC")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x149]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$897, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x195)
	.dwattr $C$DW$897, DW_AT_decl_column(0x0e)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$898, DW_AT_name("tripFlagDMC")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x196)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0e)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$899, DW_AT_name("tripFlagPrev")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x14b]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x197)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0e)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$900, DW_AT_name("runMotor")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x199)
	.dwattr $C$DW$900, DW_AT_decl_column(0x15)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$901, DW_AT_name("ctrlState")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x14d]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$901, DW_AT_decl_column(0x15)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$902, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x14e]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0a)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$903, DW_AT_name("lsw2EntryFlag")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x14f]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0a)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$904, DW_AT_name("offsetDoneFlag")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x150]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0a)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$905, DW_AT_name("sfraEnableFlag")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x151]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$905, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154
$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("MOTOR_Vars_t")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$154, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$154


$C$DW$TU$155	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$155
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$155


$C$DW$TU$156	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$156
$C$DW$906	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$155)

$C$DW$T$156	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$906)

	.dwendtag $C$DW$TU$156


$C$DW$TU$157	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$157

$C$DW$T$157	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x2a4)
$C$DW$907	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$907, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$157

	.dwendtag $C$DW$TU$157


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$3	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$3
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$3


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161

$C$DW$T$161	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$161

	.dwendtag $C$DW$TU$161


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162
$C$DW$T$162	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$162, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$162


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


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("int16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$33


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("Uint16")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$51


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$41


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$908	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$908, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$186	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$186
$C$DW$T$186	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$186, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$186


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202
$C$DW$909	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$186)

$C$DW$T$202	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$909)

	.dwendtag $C$DW$TU$202


$C$DW$TU$205	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$205

$C$DW$T$205	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x04)
$C$DW$910	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$910, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$205

	.dwendtag $C$DW$TU$205


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206

$C$DW$T$206	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x10)
$C$DW$911	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$911, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$206

	.dwendtag $C$DW$TU$206


$C$DW$TU$207	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$207
$C$DW$912	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$41)

$C$DW$T$207	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$912)

	.dwendtag $C$DW$TU$207


$C$DW$TU$208	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$208

$C$DW$T$208	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$T$208, DW_AT_byte_size(0x02)
$C$DW$913	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$913, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$208

	.dwendtag $C$DW$TU$208


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$38, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int32_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$39


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("Uint32")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$54


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x08)
$C$DW$914	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$914, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x06)
$C$DW$915	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$915, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x04)
$C$DW$916	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$916, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$917	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$22)

$C$DW$T$90	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$917)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$91


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139
$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("size_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$139, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/stdlib.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140
$C$DW$918	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$139)

$C$DW$T$140	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$918)

	.dwendtag $C$DW$TU$140


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


$C$DW$TU$183	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$183
$C$DW$T$183	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$183, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$183


$C$DW$TU$215	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$215
$C$DW$919	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$183)

$C$DW$T$215	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$919)

	.dwendtag $C$DW$TU$215


$C$DW$TU$224	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$224
$C$DW$920	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$16)

$C$DW$T$224	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$920)

	.dwendtag $C$DW$TU$224


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$31


$C$DW$TU$228	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$228

$C$DW$T$228	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x190)
$C$DW$921	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$921, DW_AT_upper_bound(0xc7)

	.dwendtag $C$DW$T$228

	.dwendtag $C$DW$TU$228


$C$DW$TU$229	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$229

$C$DW$T$229	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x80)
$C$DW$922	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$922, DW_AT_upper_bound(0x3f)

	.dwendtag $C$DW$T$229

	.dwendtag $C$DW$TU$229


$C$DW$TU$230	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$230

$C$DW$T$230	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x10)
$C$DW$923	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$923, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$230

	.dwendtag $C$DW$TU$230


$C$DW$TU$231	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$231
$C$DW$924	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$19)

$C$DW$T$231	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$924)

	.dwendtag $C$DW$TU$231


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$232	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$232
$C$DW$T$232	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$232, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$232


$C$DW$TU$233	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$233
$C$DW$925	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$232)

$C$DW$T$233	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$925)

	.dwendtag $C$DW$TU$233


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$234	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$234
$C$DW$T$234	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$234, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$234


$C$DW$TU$235	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$235
$C$DW$926	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$234)

$C$DW$T$235	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$926)

	.dwendtag $C$DW$TU$235


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$86, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$86, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$86


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("motPars")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x0e)
$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$927, DW_AT_name("cosWTs")
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$927, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$927, DW_AT_decl_column(0x0f)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$928, DW_AT_name("sinWTs")
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$928, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$928, DW_AT_decl_column(0x0f)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$929, DW_AT_name("expVal")
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$929, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$929, DW_AT_decl_column(0x0f)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$930, DW_AT_name("kDirect")
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$930, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$930, DW_AT_decl_column(0x0f)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$931, DW_AT_name("idErr")
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$931, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x50)
	.dwattr $C$DW$931, DW_AT_decl_column(0x0f)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$932, DW_AT_name("iqErr")
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$932, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x51)
	.dwattr $C$DW$932, DW_AT_decl_column(0x0f)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$933, DW_AT_name("carryOver")
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$933, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x52)
	.dwattr $C$DW$933, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$110, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77
$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$77

