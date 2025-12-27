;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:17 2025                 *
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
	.dwattr $C$DW$1, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$3, DW_AT_linkage_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0d)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$5, DW_AT_linkage_name("FCL_resetController")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$7, DW_AT_linkage_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0d)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$9, DW_AT_linkage_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0d)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("Device_init")
	.dwattr $C$DW$11, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$12, DW_AT_linkage_name("HAL_setParams")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x180)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0d)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$143)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$14, DW_AT_linkage_name("HAL_setMotorParams")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x185)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$129)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$16, DW_AT_linkage_name("initMotorParameters")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0xec)
	.dwattr $C$DW$16, DW_AT_decl_column(0x0d)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$148)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$129)

	.dwendtag $C$DW$16


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("initControlVars")
	.dwattr $C$DW$19, DW_AT_linkage_name("initControlVars")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$19, DW_AT_decl_column(0x0d)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$19


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$21, DW_AT_linkage_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x179)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0e)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$129)

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$173)

	.dwendtag $C$DW$21


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("resetControlVars")
	.dwattr $C$DW$24, DW_AT_linkage_name("resetControlVars")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$24, DW_AT_decl_column(0x0d)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$26, DW_AT_linkage_name("DLOG_4CH_F_init")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$121)

	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$28, DW_AT_linkage_name("HAL_setupInterrupts")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$28, DW_AT_decl_column(0x0d)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$129)

	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$30, DW_AT_linkage_name("runOffsetsCalculation")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0d)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$148)

	.dwendtag $C$DW$30


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$32, DW_AT_linkage_name("HAL_enableInterrupts")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x111)
	.dwattr $C$DW$32, DW_AT_decl_column(0x0d)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$129)

	.dwendtag $C$DW$32


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$34, DW_AT_linkage_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$121)

	.dwendtag $C$DW$34


$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$36, DW_AT_linkage_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$36, DW_AT_decl_column(0x0d)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$129)

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$170)

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$170)

	.dwendtag $C$DW$36


$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$40, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$40, DW_AT_decl_column(0x01)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$22)

	.dwendtag $C$DW$40

	.global	||serialCommsTimer||
	.data
	.align	1
	.elfsym	||serialCommsTimer||,SYM_SIZE(1),SYM_BLOCKED(1)
||serialCommsTimer||:
	.bits		0,16
			; serialCommsTimer @ 0

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("serialCommsTimer")
	.dwattr $C$DW$42, DW_AT_linkage_name("serialCommsTimer")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr ||serialCommsTimer||]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x86)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0a)

	.global	||clkPrescale||
	.data
	.align	1
	.elfsym	||clkPrescale||,SYM_SIZE(1),SYM_BLOCKED(1)
||clkPrescale||:
	.bits		0x14,16
			; clkPrescale @ 0

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("clkPrescale")
	.dwattr $C$DW$43, DW_AT_linkage_name("clkPrescale")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr ||clkPrescale||]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0a)

	.global	||sampWin||
	.data
	.align	1
	.elfsym	||sampWin||,SYM_SIZE(1),SYM_BLOCKED(1)
||sampWin||:
	.bits		0x1e,16
			; sampWin @ 0

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("sampWin")
	.dwattr $C$DW$44, DW_AT_linkage_name("sampWin")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||sampWin||]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0a)

	.global	||thresh||
	.data
	.align	1
	.elfsym	||thresh||,SYM_SIZE(1),SYM_BLOCKED(1)
||thresh||:
	.bits		0x12,16
			; thresh @ 0

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("thresh")
	.dwattr $C$DW$45, DW_AT_linkage_name("thresh")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr ||thresh||]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0a)

	.global	||enableFlag||
	.data
	.align	1
	.elfsym	||enableFlag||,SYM_SIZE(1),SYM_BLOCKED(1)
||enableFlag||:
	.bits		0,16
			; enableFlag @ 0

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("enableFlag")
	.dwattr $C$DW$46, DW_AT_linkage_name("enableFlag")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr ||enableFlag||]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$46, DW_AT_decl_column(0x13)

	.global	||backTicker||
	.data
	.align	1
	.elfsym	||backTicker||,SYM_SIZE(1),SYM_BLOCKED(1)
||backTicker||:
	.bits		0,16
			; backTicker @ 0

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("backTicker")
	.dwattr $C$DW$47, DW_AT_linkage_name("backTicker")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||backTicker||]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0a)

	.global	||led1Cnt||
	.data
	.align	1
	.elfsym	||led1Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led1Cnt||:
	.bits		0,16
			; led1Cnt @ 0

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("led1Cnt")
	.dwattr $C$DW$48, DW_AT_linkage_name("led1Cnt")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr ||led1Cnt||]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0a)

	.global	||led2Cnt||
	.data
	.align	1
	.elfsym	||led2Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led2Cnt||:
	.bits		0,16
			; led2Cnt @ 0

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("led2Cnt")
	.dwattr $C$DW$49, DW_AT_linkage_name("led2Cnt")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr ||led2Cnt||]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0a)

	.global	||runMotor||
	.data
	.align	1
	.elfsym	||runMotor||,SYM_SIZE(1),SYM_BLOCKED(1)
||runMotor||:
	.bits		0,16
			; runMotor @ 0

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("runMotor")
	.dwattr $C$DW$50, DW_AT_linkage_name("runMotor")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||runMotor||]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$50, DW_AT_decl_column(0x10)

	.global	||ctrlState||
	.data
	.align	1
	.elfsym	||ctrlState||,SYM_SIZE(1),SYM_BLOCKED(1)
||ctrlState||:
	.bits		0,16
			; ctrlState @ 0

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("ctrlState")
	.dwattr $C$DW$51, DW_AT_linkage_name("ctrlState")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||ctrlState||]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0d)

	.global	||flagSyncRun||
	.data
	.align	1
	.elfsym	||flagSyncRun||,SYM_SIZE(1),SYM_BLOCKED(1)
||flagSyncRun||:
	.bits		0,16
			; flagSyncRun @ 0

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("flagSyncRun")
	.dwattr $C$DW$52, DW_AT_linkage_name("flagSyncRun")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||flagSyncRun||]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0xda)
	.dwattr $C$DW$52, DW_AT_decl_column(0x06)

	.global	||Alpha_State_Ptr||
	.bss	||Alpha_State_Ptr||,2,1,1
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("Alpha_State_Ptr")
	.dwattr $C$DW$53, DW_AT_linkage_name("Alpha_State_Ptr")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||Alpha_State_Ptr||]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$53, DW_AT_decl_column(0x08)

	.global	||A_Task_Ptr||
	.bss	||A_Task_Ptr||,2,1,1
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("A_Task_Ptr")
	.dwattr $C$DW$54, DW_AT_linkage_name("A_Task_Ptr")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||A_Task_Ptr||]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$54, DW_AT_decl_column(0x08)

	.global	||B_Task_Ptr||
	.bss	||B_Task_Ptr||,2,1,1
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("B_Task_Ptr")
	.dwattr $C$DW$55, DW_AT_linkage_name("B_Task_Ptr")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||B_Task_Ptr||]
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0x80)
	.dwattr $C$DW$55, DW_AT_decl_column(0x08)

	.global	||C_Task_Ptr||
	.bss	||C_Task_Ptr||,2,1,1
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("C_Task_Ptr")
	.dwattr $C$DW$56, DW_AT_linkage_name("C_Task_Ptr")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||C_Task_Ptr||]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x81)
	.dwattr $C$DW$56, DW_AT_decl_column(0x08)

	.global	||VdTesting||
	.data
	.align	2
	.elfsym	||VdTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VdTesting||:
	.xfloat	$strtod("0x0p+0")		; VdTesting @ 0

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("VdTesting")
	.dwattr $C$DW$57, DW_AT_linkage_name("VdTesting")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||VdTesting||]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$57, DW_AT_decl_column(0x0b)

	.global	||VqTesting||
	.data
	.align	2
	.elfsym	||VqTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VqTesting||:
	.xfloat	$strtod("0x1.99999ap-4")		; VqTesting @ 0

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("VqTesting")
	.dwattr $C$DW$58, DW_AT_linkage_name("VqTesting")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||VqTesting||]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0b)

	.global	||posPtrMax||
	.data
	.align	2
	.elfsym	||posPtrMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||posPtrMax||:
	.xfloat	$strtod("0x1p+2")		; posPtrMax @ 0

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("posPtrMax")
	.dwattr $C$DW$59, DW_AT_linkage_name("posPtrMax")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||posPtrMax||]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0xae)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0b)

	.global	||dlogCh1||
	.data
	.align	2
	.elfsym	||dlogCh1||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh1||:
	.xfloat	$strtod("0x0p+0")		; dlogCh1 @ 0

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("dlogCh1")
	.dwattr $C$DW$60, DW_AT_linkage_name("dlogCh1")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||dlogCh1||]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0b)

	.global	||dlogCh2||
	.data
	.align	2
	.elfsym	||dlogCh2||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh2||:
	.xfloat	$strtod("0x0p+0")		; dlogCh2 @ 0

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("dlogCh2")
	.dwattr $C$DW$61, DW_AT_linkage_name("dlogCh2")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr ||dlogCh2||]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0b)

	.global	||dlogCh3||
	.data
	.align	2
	.elfsym	||dlogCh3||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh3||:
	.xfloat	$strtod("0x0p+0")		; dlogCh3 @ 0

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("dlogCh3")
	.dwattr $C$DW$62, DW_AT_linkage_name("dlogCh3")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr ||dlogCh3||]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0b)

	.global	||dlogCh4||
	.data
	.align	2
	.elfsym	||dlogCh4||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh4||:
	.xfloat	$strtod("0x0p+0")		; dlogCh4 @ 0

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("dlogCh4")
	.dwattr $C$DW$63, DW_AT_linkage_name("dlogCh4")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr ||dlogCh4||]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0b)

	.global	||halHandle||
	.bss	||halHandle||,2,1,1
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("halHandle")
	.dwattr $C$DW$64, DW_AT_linkage_name("halHandle")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr ||halHandle||]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0f)

	.global	||FCL_cycleCount||
||FCL_cycleCount||:	.usect	".bss:FCL_cycleCount",2,0,0
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("FCL_cycleCount")
	.dwattr $C$DW$65, DW_AT_linkage_name("FCL_cycleCount")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr ||FCL_cycleCount||]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$65, DW_AT_decl_column(0x13)

	.global	||speedRef||
	.data
	.align	2
	.elfsym	||speedRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||speedRef||:
	.xfloat	$strtod("0x1.99999ap-4")		; speedRef @ 0

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("speedRef")
	.dwattr $C$DW$66, DW_AT_linkage_name("speedRef")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr ||speedRef||]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0b)

	.global	||IdRef||
	.data
	.align	2
	.elfsym	||IdRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef||:
	.xfloat	$strtod("0x0p+0")		; IdRef @ 0

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("IdRef")
	.dwattr $C$DW$67, DW_AT_linkage_name("IdRef")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr ||IdRef||]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0b)

	.global	||IqRef||
	.data
	.align	2
	.elfsym	||IqRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IqRef||:
	.xfloat	$strtod("0x1.99999ap-4")		; IqRef @ 0

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("IqRef")
	.dwattr $C$DW$68, DW_AT_linkage_name("IqRef")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr ||IqRef||]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0b)

	.global	||rampDelayMax||
	.data
	.align	2
	.elfsym	||rampDelayMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||rampDelayMax||:
	.bits		0,32
			; rampDelayMax @ 0

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("rampDelayMax")
	.dwattr $C$DW$69, DW_AT_linkage_name("rampDelayMax")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr ||rampDelayMax||]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0a)


$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("HAL_init")
	.dwattr $C$DW$70, DW_AT_linkage_name("HAL_init")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x119)
	.dwattr $C$DW$70, DW_AT_decl_column(0x13)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$3)

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$132)

	.dwendtag $C$DW$70


$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$73, DW_AT_linkage_name("HAL_MTR_init")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$73, DW_AT_declaration
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x122)
	.dwattr $C$DW$73, DW_AT_decl_column(0x17)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$3)

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$132)

	.dwendtag $C$DW$73


$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$76, DW_AT_linkage_name("FCL_getSwVersion")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla_dm.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x37)
	.dwattr $C$DW$76, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$76


$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("__eallow")
	.dwattr $C$DW$77, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
	.dwendtag $C$DW$77


$C$DW$78	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$78, DW_AT_name("__edis")
	.dwattr $C$DW$78, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
	.dwendtag $C$DW$78

	.global	||vTimer0||
	.sect	".data:vTimer0", RW
	.align	1
	.elfsym	||vTimer0||,SYM_SIZE(4)
||vTimer0||:
	.bits		0,16
			; vTimer0[0] @ 0
	.space	48

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("vTimer0")
	.dwattr $C$DW$79, DW_AT_linkage_name("vTimer0")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr ||vTimer0||]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x83)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0a)

	.global	||vTimer1||
	.sect	".data:vTimer1", RW
	.align	1
	.elfsym	||vTimer1||,SYM_SIZE(4)
||vTimer1||:
	.bits		0,16
			; vTimer1[0] @ 0
	.space	48

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("vTimer1")
	.dwattr $C$DW$80, DW_AT_linkage_name("vTimer1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr ||vTimer1||]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0x84)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0a)

	.global	||vTimer2||
	.sect	".data:vTimer2", RW
	.align	1
	.elfsym	||vTimer2||,SYM_SIZE(4)
||vTimer2||:
	.bits		0,16
			; vTimer2[0] @ 0
	.space	48

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("vTimer2")
	.dwattr $C$DW$81, DW_AT_linkage_name("vTimer2")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr ||vTimer2||]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0x85)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0a)

	.global	||halMtrHandle||
||halMtrHandle||:	.usect	".bss:halMtrHandle",4,0,1
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("halMtrHandle")
	.dwattr $C$DW$82, DW_AT_linkage_name("halMtrHandle")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr ||halMtrHandle||]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$82, DW_AT_decl_line(0xca)
	.dwattr $C$DW$82, DW_AT_decl_column(0x10)

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

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("posArray")
	.dwattr $C$DW$83, DW_AT_linkage_name("posArray")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr ||posArray||]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0xad)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0b)

	.global	||dlog_4ch1||
	.bss	||dlog_4ch1||,26,1,1
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("dlog_4ch1")
	.dwattr $C$DW$84, DW_AT_linkage_name("dlog_4ch1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr ||dlog_4ch1||]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

	.global	||hal||
	.bss	||hal||,34,1,1
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("hal")
	.dwattr $C$DW$85, DW_AT_linkage_name("hal")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr ||hal||]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0f)

	.global	||halMtr||
||halMtr||:	.usect	".bss:halMtr",36,0,1
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("halMtr")
	.dwattr $C$DW$86, DW_AT_linkage_name("halMtr")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr ||halMtr||]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$86, DW_AT_decl_column(0x10)

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("fclVars")
	.dwattr $C$DW$87, DW_AT_linkage_name("fclVars")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$87, DW_AT_decl_column(0x13)

	.global	||DBUFF_4CH1||
	.sect	".data:DBUFF_4CH1", RW
	.align	2
	.elfsym	||DBUFF_4CH1||,SYM_SIZE(400)
||DBUFF_4CH1||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH1[0] @ 0
	.space	6368

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("DBUFF_4CH1")
	.dwattr $C$DW$88, DW_AT_linkage_name("DBUFF_4CH1")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr ||DBUFF_4CH1||]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH2||
	.sect	".data:DBUFF_4CH2", RW
	.align	2
	.elfsym	||DBUFF_4CH2||,SYM_SIZE(400)
||DBUFF_4CH2||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH2[0] @ 0
	.space	6368

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("DBUFF_4CH2")
	.dwattr $C$DW$89, DW_AT_linkage_name("DBUFF_4CH2")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_addr ||DBUFF_4CH2||]
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH3||
	.sect	".data:DBUFF_4CH3", RW
	.align	2
	.elfsym	||DBUFF_4CH3||,SYM_SIZE(400)
||DBUFF_4CH3||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH3[0] @ 0
	.space	6368

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("DBUFF_4CH3")
	.dwattr $C$DW$90, DW_AT_linkage_name("DBUFF_4CH3")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_addr ||DBUFF_4CH3||]
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH4||
	.sect	".data:DBUFF_4CH4", RW
	.align	2
	.elfsym	||DBUFF_4CH4||,SYM_SIZE(400)
||DBUFF_4CH4||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH4[0] @ 0
	.space	6368

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("DBUFF_4CH4")
	.dwattr $C$DW$91, DW_AT_linkage_name("DBUFF_4CH4")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_addr ||DBUFF_4CH4||]
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0b)

	.global	||motorVars||
	.sect	"ClaData", RW
	.align	2
	.elfsym	||motorVars||,SYM_SIZE(664)
||motorVars||:
	.bits		0,32
			; motorVars[0].posCntr @ 0
	.bits		0x1388,32
			; motorVars[0].posCntrMax @ 32
	.xfloat	$strtod("0x1.0624dep-10")		; motorVars[0].posSlewRate @ 64
	.xfloat	$strtod("0x1.f4p+7")		; motorVars[0].baseFreq @ 96
	.xfloat	$strtod("0x1p+3")		; motorVars[0].poles @ 128
	.xfloat	$strtod("0x1.a36e2ep-14")		; motorVars[0].Ts @ 160
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
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.Speed @ 2400
	.bits		0,32
			; motorVars[0].speed.BaseRpm @ 2432
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K1 @ 2464
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K2 @ 2496
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.K3 @ 2528
	.bits		0,32
			; motorVars[0].speed.SpeedRpm @ 2560
	.xfloat	$strtod("0x0p+0")		; motorVars[0].speed.Tmp @ 2592
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.ref @ 2624
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.fbk @ 2656
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.err @ 2688
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.out @ 2720
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.carryOver @ 2752
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_id.Kp @ 2784
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[0].pi_id.Ki @ 2816
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.Kerr @ 2848
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_id.KerrOld @ 2880
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_id.Umax @ 2912
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pi_id.Umin @ 2944
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Ref @ 2976
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Fbk @ 3008
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Out @ 3040
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.Kp @ 3072
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.Ki @ 3104
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.Umax @ 3136
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pi_pos.Umin @ 3168
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.up @ 3200
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.ui @ 3232
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.v1 @ 3264
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pi_pos.i1 @ 3296
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pi_pos.w1 @ 3328
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Ref @ 3360
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Fbk @ 3392
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.Out @ 3424
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.c1 @ 3456
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.term.c2 @ 3488
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Kr @ 3520
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Kp @ 3552
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.param.Ki @ 3584
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.param.Kd @ 3616
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Km @ 3648
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.param.Umax @ 3680
	.xfloat	$strtod("-0x1p+0")		; motorVars[0].pid_spd.param.Umin @ 3712
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.up @ 3744
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.ui @ 3776
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.ud @ 3808
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.v1 @ 3840
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.i1 @ 3872
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.d1 @ 3904
	.xfloat	$strtod("0x0p+0")		; motorVars[0].pid_spd.data.d2 @ 3936
	.xfloat	$strtod("0x1p+0")		; motorVars[0].pid_spd.data.w1 @ 3968
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.carrierMid @ 4000
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.adcScale @ 4032
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.cmidsqrt3 @ 4064
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.tSamp @ 4096
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Rd @ 4128
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Rq @ 4160
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Ld @ 4192
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Lq @ 4224
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Vbase @ 4256
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Ibase @ 4288
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.wccD @ 4320
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.wccQ @ 4352
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Vdcbus @ 4384
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.BemfK @ 4416
	.xfloat	$strtod("0x0p+0")		; motorVars[0].FCL_params.Wbase @ 4448
	.bits	||fclVars||,32		; motorVars[0].ptrFCL @ 4480
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ualpha @ 4512
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ubeta @ 4544
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Ta @ 4576
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Tb @ 4608
	.xfloat	$strtod("0x0p+0")		; motorVars[0].svgen.Tc @ 4640
	.space	128
	.xfloat	$strtod("0x0p+0")		; motorVars[0].Vdcbus @ 4800
	.xfloat	$strtod("0x0p+0")		; motorVars[0].VdcbusMax @ 4832
	.xfloat	$strtod("0x0p+0")		; motorVars[0].VdcbusMin @ 4864
	.bits		0,32
			; motorVars[0].isrTicker @ 4896
	.xfloat	$strtod("0x0p+0")		; motorVars[0].fclLatencyInMicroSec @ 4928
	.bits		0,16
			; motorVars[0].fclClrCntr @ 4960
	.bits		0,16
			; motorVars[0].fclCycleCountMax @ 4976
	.bits		0xa,16
			; motorVars[0].speedLoopPrescaler @ 4992
	.bits		0x1,16
			; motorVars[0].speedLoopCount @ 5008
	.bits		0,16
			; motorVars[0].alignCntr @ 5024
	.bits		0x7d0,16
			; motorVars[0].alignCnt @ 5040
	.bits		0x2,16
			; motorVars[0].posPtrMax @ 5056
	.bits		0,16
			; motorVars[0].posPtr @ 5072
	.bits		0x4bd,16
			; motorVars[0].currentThreshHi @ 5088
	.bits		0x4bd,16
			; motorVars[0].currentThreshLo @ 5104
	.bits		0,16
			; motorVars[0].drvEnableGateGPIO @ 5120
	.bits		0,16
			; motorVars[0].drvFaultTripGPIO @ 5136
	.bits		0,16
			; motorVars[0].drvClearFaultGPIO @ 5152
	.bits		0,16
			; motorVars[0].tripCountDMC @ 5168
	.bits		0,16
			; motorVars[0].tripFlagDMC @ 5184
	.bits		0,16
			; motorVars[0].tripFlagPrev @ 5200
	.bits		0,16
			; motorVars[0].runMotor @ 5216
	.bits		0,16
			; motorVars[0].ctrlState @ 5232
	.bits		0,16
			; motorVars[0].clearTripFlagDMC @ 5248
	.bits		0,16
			; motorVars[0].lsw2EntryFlag @ 5264
	.bits		0,16
			; motorVars[0].offsetDoneFlag @ 5280
	.bits		0,16
			; motorVars[0].sfraEnableFlag @ 5296
	.bits		0,32
			; motorVars[1].posCntr @ 5312
	.bits		0x1388,32
			; motorVars[1].posCntrMax @ 5344
	.xfloat	$strtod("0x1.0624dep-10")		; motorVars[1].posSlewRate @ 5376
	.xfloat	$strtod("0x1.f4p+7")		; motorVars[1].baseFreq @ 5408
	.xfloat	$strtod("0x1p+3")		; motorVars[1].poles @ 5440
	.xfloat	$strtod("0x1.a36e2ep-14")		; motorVars[1].Ts @ 5472
	.xfloat	$strtod("0x0p+0")		; motorVars[1].maxModIndex @ 5504
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageLimit @ 5536
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentLimit @ 5568
	.xfloat	$strtod("0x0p+0")		; motorVars[1].tempIdRef @ 5600
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[1].IdRef_start @ 5632
	.xfloat	$strtod("0x0p+0")		; motorVars[1].IdRef_run @ 5664
	.xfloat	$strtod("0x0p+0")		; motorVars[1].IdRef @ 5696
	.xfloat	$strtod("0x1.99999ap-5")		; motorVars[1].IqRef @ 5728
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[1].speedRef @ 5760
	.xfloat	$strtod("0x0p+0")		; motorVars[1].positionRef @ 5792
	.xfloat	$strtod("0x1.47ae14p-6")		; motorVars[1].lsw1Speed @ 5824
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentAs @ 5856
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentBs @ 5888
	.xfloat	$strtod("0x0p+0")		; motorVars[1].offset_currentCs @ 5920
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentAs @ 5952
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentBs @ 5984
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentCs @ 6016
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentScale @ 6048
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageScale @ 6080
	.xfloat	$strtod("0x0p+0")		; motorVars[1].adcScale @ 6112
	.xfloat	$strtod("0x0p+0")		; motorVars[1].currentInvSF @ 6144
	.xfloat	$strtod("0x0p+0")		; motorVars[1].voltageInvSF @ 6176
	.xfloat	$strtod("0x0p+0")		; motorVars[1].posElecTheta @ 6208
	.xfloat	$strtod("0x0p+0")		; motorVars[1].posMechTheta @ 6240
	.bits		0x436a,32
			; motorVars[1].pwmCompA @ 6272
	.bits		0x446a,32
			; motorVars[1].pwmCompB @ 6304
	.bits		0x456a,32
			; motorVars[1].pwmCompC @ 6336
	.bits		0xb51,32
			; motorVars[1].curA_PPBRESULT @ 6368
	.bits		0xb31,32
			; motorVars[1].curB_PPBRESULT @ 6400
	.bits		0xb11,32
			; motorVars[1].curC_PPBRESULT @ 6432
	.bits		0xb71,32
			; motorVars[1].volDC_PPBRESULT @ 6464
	.bits		0x7401,32
			; motorVars[1].AdcIntFlag @ 6496
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.cosWTs @ 6528
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.sinWTs @ 6560
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.expVal @ 6592
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.kDirect @ 6624
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.idErr @ 6656
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.iqErr @ 6688
	.xfloat	$strtod("0x0p+0")		; motorVars[1].D_cpu.carryOver @ 6720
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.TargetValue @ 6752
	.bits		0x1,32
			; motorVars[1].rc.RampDelayMax @ 6784
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].rc.RampLowLimit @ 6816
	.xfloat	$strtod("0x1p+0")		; motorVars[1].rc.RampHighLimit @ 6848
	.bits		0,32
			; motorVars[1].rc.RampDelayCount @ 6880
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.SetpointValue @ 6912
	.bits		0,32
			; motorVars[1].rc.EqualFlag @ 6944
	.xfloat	$strtod("0x0p+0")		; motorVars[1].rc.Tmp @ 6976
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.As @ 7008
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Bs @ 7040
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Cs @ 7072
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Alpha @ 7104
	.xfloat	$strtod("0x0p+0")		; motorVars[1].clarke.Beta @ 7136
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Alpha @ 7168
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Beta @ 7200
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Angle @ 7232
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Ds @ 7264
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Qs @ 7296
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Sine @ 7328
	.xfloat	$strtod("0x0p+0")		; motorVars[1].park.Cosine @ 7360
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Alpha @ 7392
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Beta @ 7424
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Angle @ 7456
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Ds @ 7488
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Qs @ 7520
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Sine @ 7552
	.xfloat	$strtod("0x0p+0")		; motorVars[1].ipark.Cosine @ 7584
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.ElecTheta @ 7616
	.bits		0x1,32
			; motorVars[1].speed.DirectionQep @ 7648
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.OldElecTheta @ 7680
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.Speed @ 7712
	.bits		0,32
			; motorVars[1].speed.BaseRpm @ 7744
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K1 @ 7776
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K2 @ 7808
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.K3 @ 7840
	.bits		0,32
			; motorVars[1].speed.SpeedRpm @ 7872
	.xfloat	$strtod("0x0p+0")		; motorVars[1].speed.Tmp @ 7904
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.ref @ 7936
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.fbk @ 7968
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.err @ 8000
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.out @ 8032
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.carryOver @ 8064
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_id.Kp @ 8096
	.xfloat	$strtod("0x1.99999ap-4")		; motorVars[1].pi_id.Ki @ 8128
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.Kerr @ 8160
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_id.KerrOld @ 8192
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_id.Umax @ 8224
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pi_id.Umin @ 8256
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Ref @ 8288
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Fbk @ 8320
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Out @ 8352
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.Kp @ 8384
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.Ki @ 8416
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.Umax @ 8448
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pi_pos.Umin @ 8480
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.up @ 8512
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.ui @ 8544
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.v1 @ 8576
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pi_pos.i1 @ 8608
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pi_pos.w1 @ 8640
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Ref @ 8672
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Fbk @ 8704
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.Out @ 8736
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.c1 @ 8768
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.term.c2 @ 8800
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Kr @ 8832
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Kp @ 8864
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.param.Ki @ 8896
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.param.Kd @ 8928
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Km @ 8960
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.param.Umax @ 8992
	.xfloat	$strtod("-0x1p+0")		; motorVars[1].pid_spd.param.Umin @ 9024
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.up @ 9056
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.ui @ 9088
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.ud @ 9120
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.v1 @ 9152
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.i1 @ 9184
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.d1 @ 9216
	.xfloat	$strtod("0x0p+0")		; motorVars[1].pid_spd.data.d2 @ 9248
	.xfloat	$strtod("0x1p+0")		; motorVars[1].pid_spd.data.w1 @ 9280
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.carrierMid @ 9312
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.adcScale @ 9344
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.cmidsqrt3 @ 9376
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.tSamp @ 9408
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Rd @ 9440
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Rq @ 9472
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Ld @ 9504
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Lq @ 9536
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Vbase @ 9568
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Ibase @ 9600
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.wccD @ 9632
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.wccQ @ 9664
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Vdcbus @ 9696
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.BemfK @ 9728
	.xfloat	$strtod("0x0p+0")		; motorVars[1].FCL_params.Wbase @ 9760
	.bits	||fclVars||,32		; motorVars[1].ptrFCL @ 9792
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ualpha @ 9824
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ubeta @ 9856
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Ta @ 9888
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Tb @ 9920
	.xfloat	$strtod("0x0p+0")		; motorVars[1].svgen.Tc @ 9952
	.space	128
	.xfloat	$strtod("0x0p+0")		; motorVars[1].Vdcbus @ 10112
	.xfloat	$strtod("0x0p+0")		; motorVars[1].VdcbusMax @ 10144
	.xfloat	$strtod("0x0p+0")		; motorVars[1].VdcbusMin @ 10176
	.bits		0,32
			; motorVars[1].isrTicker @ 10208
	.xfloat	$strtod("0x0p+0")		; motorVars[1].fclLatencyInMicroSec @ 10240
	.bits		0,16
			; motorVars[1].fclClrCntr @ 10272
	.bits		0,16
			; motorVars[1].fclCycleCountMax @ 10288
	.bits		0xa,16
			; motorVars[1].speedLoopPrescaler @ 10304
	.bits		0x1,16
			; motorVars[1].speedLoopCount @ 10320
	.bits		0,16
			; motorVars[1].alignCntr @ 10336
	.bits		0x7d0,16
			; motorVars[1].alignCnt @ 10352
	.bits		0x2,16
			; motorVars[1].posPtrMax @ 10368
	.bits		0,16
			; motorVars[1].posPtr @ 10384
	.bits		0x4bd,16
			; motorVars[1].currentThreshHi @ 10400
	.bits		0x4bd,16
			; motorVars[1].currentThreshLo @ 10416
	.bits		0,16
			; motorVars[1].drvEnableGateGPIO @ 10432
	.bits		0,16
			; motorVars[1].drvFaultTripGPIO @ 10448
	.bits		0,16
			; motorVars[1].drvClearFaultGPIO @ 10464
	.bits		0,16
			; motorVars[1].tripCountDMC @ 10480
	.bits		0,16
			; motorVars[1].tripFlagDMC @ 10496
	.bits		0,16
			; motorVars[1].tripFlagPrev @ 10512
	.bits		0,16
			; motorVars[1].runMotor @ 10528
	.bits		0,16
			; motorVars[1].ctrlState @ 10544
	.bits		0,16
			; motorVars[1].clearTripFlagDMC @ 10560
	.bits		0,16
			; motorVars[1].lsw2EntryFlag @ 10576
	.bits		0,16
			; motorVars[1].offsetDoneFlag @ 10592
	.bits		0,16
			; motorVars[1].sfraEnableFlag @ 10608

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("motorVars")
	.dwattr $C$DW$92, DW_AT_linkage_name("motorVars")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_addr ||motorVars||]
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0e)

	.sblock	".bss"
	.sblock	".data"
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{F8D8E7D2-7D25-4302-9980-D305E7A716A6} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{DAB8D89F-C790-4CCD-AFC3-993AE34C17DF} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{496D6637-C91E-4FD9-BB03-27119B0C79D3} 
	.sect	".text:runSyncControl"
	.clink
	.global	||runSyncControl||

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("runSyncControl")
	.dwattr $C$DW$93, DW_AT_low_pc(||runSyncControl||)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_linkage_name("runSyncControl")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0x9cc)
	.dwattr $C$DW$93, DW_AT_decl_column(0x06)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2509,column 1,is_stmt,address ||runSyncControl||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2510,column 5,is_stmt,isa 0
        MOV       AL,@||flagSyncRun||   ; [CPU_ALU] |2510| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        B         ||$C$L4||,EQ          ; [CPU_ALU] |2510| 
        ; branchcc occurs ; [] |2510| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2512,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2512| 
        MOVL      XAR0,#324             ; [CPU_ALU] |2512| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2512| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |2512| 
        ; branchcc occurs ; [] |2512| 
        MOVL      XAR0,#656             ; [CPU_ALU] |2512| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2512| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |2512| 
        ; branchcc occurs ; [] |2512| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2517,column 13,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |2517| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2516,column 13,is_stmt,isa 0
        MOV32     R0H,@||speedRef||     ; [CPU_FPU] |2516| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2528,column 13,is_stmt,isa 0
        MOV       AL,@||ctrlState||     ; [CPU_ALU] |2528| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2529,column 13,is_stmt,isa 0
        MOV       AH,@||ctrlState||     ; [CPU_ALU] |2529| 
        MOVL      XAR1,#659             ; [CPU_ALU] |2529| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2517,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2517| 
        MOVW      DP,#||motorVars||+326 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2528,column 13,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2528| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2529,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR1],AH        ; [CPU_ALU] |2529| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2528,column 13,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2528| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2516,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2516| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2539,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+326 ; [CPU_ALU] |2539| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2516,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2516| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2539,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2539| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |2539| 
        ; branchcc occurs ; [] |2539| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] |2539| 
        ; branch occurs ; [] |2539| 
||$C$L1||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2533,column 13,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2533| 
        MOVW      DP,#||motorVars||+326 ; [CPU_ARAU] 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2533| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2539,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+326 ; [CPU_ALU] |2539| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2536,column 13,is_stmt,isa 0
        MOVL      XAR1,#360             ; [CPU_ALU] |2536| 
        ZERO      R0H                   ; [CPU_FPU] |2536| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2535,column 13,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2535| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2534,column 13,is_stmt,isa 0
        MOVL      XAR0,#659             ; [CPU_ALU] |2534| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2534| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2539,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2539| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2535,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2535| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2536,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |2536| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2535,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2535| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2539,column 9,is_stmt,isa 0
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |2539| 
        ; branchcc occurs ; [] |2539| 
||$C$L2||:    
        MOVW      DP,#||motorVars||+658 ; [CPU_ARAU] 
        MOV       AL,@||motorVars||+658 ; [CPU_ALU] |2539| 
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
        CMPB      AL,#1                 ; [CPU_ALU] |2539| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2542,column 13,is_stmt,isa 0
        MOVB      @||runMotor||,#1,EQ   ; [CPU_ALU] |2542| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] 
        ; branchcc occurs ; [] 
||$C$L3||:    
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2546,column 13,is_stmt,isa 0
        MOV       @||runMotor||,#0      ; [CPU_ALU] |2546| 
||$C$L4||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x9f7)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text:runMotorControl"
	.clink
	.global	||runMotorControl||

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("runMotorControl")
	.dwattr $C$DW$95, DW_AT_low_pc(||runMotorControl||)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_linkage_name("runMotorControl")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x954)
	.dwattr $C$DW$95, DW_AT_decl_column(0x06)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 1,is_stmt,address ||runMotorControl||,isa 0

	.dwfde $C$DW$CIE, ||runMotorControl||
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("pMotor")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("mtrHandle")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: runMotorControl               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||runMotorControl||:
;* AR7   assigned to $O$C6
;* AR7   assigned to $O$C7
;* PL    assigned to $O$C8
;* AR7   assigned to $O$C9
;* R0    assigned to $O$C10
;* AR6   assigned to $O$U27
;* AL    assigned to $O$R3
;* AL    assigned to $O$R4
;* AL    assigned to $O$R5
;* AR2   assigned to pMotor
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("pMotor")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to mtrHandle
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("mtrHandle")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg10]

;* AL    assigned to base
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("base")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("base")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("base")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("base")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("base")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("base")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("base")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("base")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("base")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("base")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("base")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("base")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]

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
        MOVL      XAR2,XAR4             ; [CPU_ALU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2395,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |2395| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2395| 
        MOVB      XAR0,#52              ; [CPU_ALU] |2395| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2395| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2395| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2395| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2397,column 5,is_stmt,isa 0
        MOVL      XAR1,#319             ; [CPU_ALU] |2397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2395,column 5,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |2395| 
        MOV32     ACC,R0H               ; [CPU_FPU] |2395| 
        ADD       AL,#2048              ; [CPU_ALU] |2395| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |2395| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2397,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |2397| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2397| 
        MOVB      XAR0,#52              ; [CPU_ALU] |2397| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2397| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 1,is_stmt,isa 0
        MOVL      XAR3,XAR5             ; [CPU_ALU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2397,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2389,column 1,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |2389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2400,column 5,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |2400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2397,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |2397| 
        MOV       AH,#2048              ; [CPU_ALU] |2397| 
        SUB       AH,AL                 ; [CPU_ALU] |2397| 
        MOV       *+XAR2[AR1],AH        ; [CPU_ALU] |2397| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2400,column 5,is_stmt,isa 0
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2400| 
        MOVL      XAR0,#319             ; [CPU_ALU] |2400| 
        MOV       AH,*+XAR2[AR0]        ; [CPU_ALU] |2400| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #||HAL_setupCMPSS_DACValue|| ; [CPU_ALU] |2400| 
        ; call occurs [#||HAL_setupCMPSS_DACValue||] ; [] |2400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2403,column 5,is_stmt,isa 0
        MOVL      XAR1,#274             ; [CPU_ALU] |2403| 
        MOVIZ     R1H,#15948            ; [CPU_FPU] |2403| 
        MOVIZ     R0H,#16204            ; [CPU_FPU] |2403| 
        MOVL      XAR0,#300             ; [CPU_ALU] |2403| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |2403| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2403| 
        MOV32     R3H,*+XAR2[AR1]       ; [CPU_FPU] |2403| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |2403| 
||      MOV32     R2H,*+XAR2[AR0]       ; [CPU_FPU] |2403| 

        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |2403| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |2403| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |2403| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2405,column 5,is_stmt,isa 0
        MOVL      XAR0,#302             ; [CPU_ALU] |2405| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2405| 
        MOVL      XAR0,#300             ; [CPU_ALU] |2405| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2405| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |2405| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2405| 
        B         ||$C$L5||,GT          ; [CPU_ALU] |2405| 
        ; branchcc occurs ; [] |2405| 
        MOVL      XAR0,#304             ; [CPU_ALU] |2405| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2405| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |2405| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2405| 
        B         ||$C$L5||,LT          ; [CPU_ALU] |2405| 
        ; branchcc occurs ; [] |2405| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2412,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2412| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2412| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2412| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |2412| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |2412| 
        ; branch occurs ; [] |2412| 
||$C$L5||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2408,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2408| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2408| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2408| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |2408| 
||$C$L6||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[0]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2416,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2416| 
        B         ||$C$L7||,TC          ; [CPU_ALU] |2416| 
        ; branchcc occurs ; [] |2416| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[2]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2416,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2416| 
        B         ||$C$L7||,TC          ; [CPU_ALU] |2416| 
        ; branchcc occurs ; [] |2416| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[4]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2416,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2416| 
        B         ||$C$L8||,NTC         ; [CPU_ALU] |2416| 
        ; branchcc occurs ; [] |2416| 
||$C$L7||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[0]         ; [CPU_ALU] |4643| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[2]         ; [CPU_ALU] |4643| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[4]         ; [CPU_ALU] |4643| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
        MOVZ      AR7,*+XAR2[AR0]       ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2428,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2428| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2428| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR6        ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2428,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2428| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |2428| 
||$C$L8||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2431,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2431| 
        ADD       ACC,#325 << 0         ; [CPU_ALU] |2431| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2431| 
        MOVL      XAR0,#324             ; [CPU_ALU] |2431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2433,column 5,is_stmt,isa 0
        MOVZ      AR6,*+XAR2[AR0]       ; [CPU_ALU] |2433| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2431,column 5,is_stmt,isa 0
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2431| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |2431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2433,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |2433| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |2433| 
        ; branchcc occurs ; [] |2433| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOV       PL,*+XAR2[AR0]        ; [CPU_ALU] |473| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,PL,#0x001f         ; [CPU_ALU] |473| 
        MOVZ      AR4,PL                ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2436,column 9,is_stmt,isa 0
        MOVL      XAR1,#327             ; [CPU_ALU] |2436| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       T,AL                  ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2435,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2435| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |473| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2436,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR1],#4,UNC    ; [CPU_ALU] |2436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2435,column 9,is_stmt,isa 0
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2435| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |473| 
        MOVL      *+XAR4[2],XAR7        ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2442,column 5,is_stmt,isa 0
        B         ||$C$L9||,EQ          ; [CPU_ALU] |2442| 
        ; branchcc occurs ; [] |2442| 
        MOVL      XAR0,#328             ; [CPU_ALU] |2442| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2442| 
        CMPB      AL,#1                 ; [CPU_ALU] |2442| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |2442| 
        ; branchcc occurs ; [] |2442| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2444,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2444| 
        ADD       ACC,#323 << 0         ; [CPU_ALU] |2444| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2444| 
        INC       *+XAR4[0]             ; [CPU_ALU] |2444| 
||$C$L9||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2448,column 5,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |2448| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2448| 
        CMPB      AL,#1                 ; [CPU_ALU] |2448| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |2448| 
        ; branchcc occurs ; [] |2448| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2451,column 9,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |2451| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |2451| 
        ; call occurs [#||SysCtl_delay||] ; [] |2451| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[4]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR3[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR3[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2476,column 9,is_stmt,isa 0
        MOVL      XAR0,#324             ; [CPU_ALU] |2476| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2476| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2477,column 9,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |2477| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2477| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2479,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |2479| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |2479| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2478,column 9,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2478| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2478| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2479,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |2479| 
||$C$L10||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2482,column 5,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2482| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2482| 
        CMPB      AL,#1                 ; [CPU_ALU] |2482| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |2482| 
        ; branchcc occurs ; [] |2482| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2494,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2494| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2494| 
        CMPB      AL,#1                 ; [CPU_ALU] |2494| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |2494| 
        ; branchcc occurs ; [] |2494| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2496,column 13,is_stmt,isa 0
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2496| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
        MOVZ      AR7,*+XAR2[AR0]       ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |473| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2499,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |2499| 
        ; branch occurs ; [] |2499| 
||$C$L11||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2484,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2484| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2484| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |2484| 
        ; branchcc occurs ; [] |2484| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2486,column 13,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |2486| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |469| 
        MOVZ      AR7,*+XAR2[AR0]       ; [CPU_ALU] |469| 
        MOVB      ACC,#1                ; [CPU_ALU] |469| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |469| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |469| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |469| 
        MOV       T,AL                  ; [CPU_ALU] |469| 
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
||$C$L12||:    
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
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x9c8)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text:ramper"
	.clink
	.global	||ramper||

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("ramper")
	.dwattr $C$DW$115, DW_AT_low_pc(||ramper||)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_linkage_name("ramper")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$115, DW_AT_decl_line(0x920)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2337,column 1,is_stmt,address ||ramper||,isa 0

	.dwfde $C$DW$CIE, ||ramper||
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("in")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("out")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("rampDelta")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x33]


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
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("in")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to out
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("out")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to rampDelta
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("rampDelta")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2342,column 5,is_stmt,isa 0
        SUBF32    R4H,R0H,R1H           ; [CPU_FPU] |2342| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2344,column 9,is_stmt,isa 0
        CMPF32    R4H,R2H               ; [CPU_FPU] |2344| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2344| 
        B         ||$C$L13||,LEQ        ; [CPU_ALU] |2344| 
        ; branchcc occurs ; [] |2344| 
        ADDF32    R0H,R2H,R1H           ; [CPU_FPU] |2344| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |2344| 
        ; branch occurs ; [] |2344| 
||$C$L13||:    
        MOV32     R3H,R2H               ; [CPU_FPU] |2344| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |2344| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |2344| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2344| 
        B         ||$C$L14||,GEQ        ; [CPU_ALU] |2344| 
        ; branchcc occurs ; [] |2344| 
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |2344| 
        NOP       ; [CPU_ALU] 
||$C$L14||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x932)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text:refPosGen"
	.clink
	.global	||refPosGen||

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("refPosGen")
	.dwattr $C$DW$123, DW_AT_low_pc(||refPosGen||)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_linkage_name("refPosGen")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x937)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2360,column 1,is_stmt,address ||refPosGen||,isa 0

	.dwfde $C$DW$CIE, ||refPosGen||
$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("out")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("pMotor")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg12]


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
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("out")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x2b]

;* AR4   assigned to pMotor
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("pMotor")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg12]

;* R4    assigned to in
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("in")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2361,column 18,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |2361| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#||posArray||    ; [CPU_ARAU] |2361| 
        MOV       ACC,*+XAR4[AR0] << 1  ; [CPU_ALU] |2361| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |2361| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2363,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |2363| 
        MOV32     R1H,R0H               ; [CPU_FPU] |2363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2361,column 18,is_stmt,isa 0
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |2361| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2363,column 5,is_stmt,isa 0
        MOV32     R0H,R4H               ; [CPU_FPU] |2363| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("ramper")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |2363| 
        ; call occurs [#||ramper||] ; [] |2363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2365,column 5,is_stmt,isa 0
        CMPF32    R4H,R0H               ; [CPU_FPU] |2365| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2365| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |2365| 
        ; branchcc occurs ; [] |2365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2367,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2367| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |2367| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2369,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |2369| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |2369| 
        B         ||$C$L15||,HIS        ; [CPU_ALU] |2369| 
        ; branchcc occurs ; [] |2369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2373,column 13,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2373| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2375,column 13,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |2375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2371,column 13,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |2371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2373,column 13,is_stmt,isa 0
        ADD       ACC,#317 << 0         ; [CPU_ALU] |2373| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2373| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2375,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2371,column 13,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |2371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2375,column 13,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |2375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2373,column 13,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |2373| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2375,column 13,is_stmt,isa 0
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |2375| 
        B         ||$C$L15||,HI         ; [CPU_ALU] |2375| 
        ; branchcc occurs ; [] |2375| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2377,column 17,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2377| 
||$C$L15||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x94f)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text:motor2ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor2ControlISR||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("motor2ControlISR")
	.dwattr $C$DW$131, DW_AT_low_pc(||motor2ControlISR||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("motor2ControlISR")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x8fe)
	.dwattr $C$DW$131, DW_AT_decl_column(0x12)
	.dwattr $C$DW$131, DW_AT_TI_interrupt
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2303,column 1,is_stmt,address ||motor2ControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motor2ControlISR||

;***************************************************************
;* FNAME: motor2ControlISR              FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 30 SOE     *
;***************************************************************

||motor2ControlISR||:
;* AR5   assigned to $O$C6
;* AR4   assigned to $O$C7
;* AR4   assigned to $O$C8
;* AR4   assigned to $O$C9
;* AR4   assigned to $O$C10
;* AR5   assigned to $O$C11
;* AR4   assigned to $O$C12
;* AR4   assigned to $O$C13
;* AR4   assigned to $O$C14
;* AR4   assigned to $O$C15
;* AR5   assigned to $O$C16
;* AR3   assigned to $O$C17
;* AL    assigned to $O$C18
;* AR4   assigned to $O$C19
;* AR4   assigned to $O$C20
;* AR2   assigned to $O$C21
;* AL    assigned to $O$U59
;* AR2   assigned to $O$K3
;* R0    assigned to $O$U116
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* R1    assigned to vdc
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("vdc")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x2f]

;* AR4   assigned to in
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("in")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg12]

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
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -34
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1586,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||+332 ; [CPU_ARAU] |1586| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1586| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M2|| ; [CPU_ALU] |1586| 
        ; call occurs [#||FCL_runPICtrl_M2||] ; [] |1586| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |187| 
        B         ||$C$L16||,HIS        ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |2207| 
        MOVB      ACC,#99               ; [CPU_ALU] |2207| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2207| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |2207| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 190,column 9,is_stmt,isa 0
        SUBR      @||FCL_cycleCount||+1,AL ; [CPU_ALU] |190| 
||$C$L16||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |195| 
        MOVW      DP,#||motorVars||+643 ; [CPU_ARAU] 
        CMP       AL,@||motorVars||+643 ; [CPU_ALU] |195| 
        B         ||$C$L17||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |197| 
        MOVW      DP,#||motorVars||+643 ; [CPU_ARAU] 
        MOV       @||motorVars||+643,AL ; [CPU_ALU] |197| 
||$C$L17||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |201| 
        MOVL      XAR0,#642             ; [CPU_ALU] |201| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |201| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
        MOVW      DP,#||motorVars||+642 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOVL      XAR0,#643             ; [CPU_ALU] |203| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       @||motorVars||+642,#0 ; [CPU_ALU] |204| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |203| 
||$C$L18||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR0,#404             ; [CPU_ALU] |223| 
        MOVL      XAR1,#380             ; [CPU_ALU] |223| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVL      XAR0,#643             ; [CPU_ALU] |208| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1602,column 5,is_stmt,isa 0
        MOVL      XAR3,#||motorVars||   ; [CPU_ARAU] |1602| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        UI16TOF32 R3H,*+XAR4[AR0]       ; [CPU_FPU] |208| 
        MOVL      XAR1,#640             ; [CPU_ALU] |208| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R1H,*+XAR5[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1602,column 5,is_stmt,isa 0
        MOVL      XAR0,#606             ; [CPU_ALU] |1602| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |208| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |223| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |208| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R1H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1608,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1608| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1602,column 5,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R1H       ; [CPU_FPU] |1602| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1608,column 5,is_stmt,isa 0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M2|| ; [CPU_ALU] |1608| 
        ; call occurs [#||FCL_runPICtrlWrap_M2||] ; [] |1608| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1620,column 5,is_stmt,isa 0
        MOVL      XAR0,#658             ; [CPU_ALU] |1620| 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |1620| 
        CMPB      AL,#1                 ; [CPU_ALU] |1620| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |1620| 
        ; branchcc occurs ; [] |1620| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1622,column 9,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1622| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |1622| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1622| 
        CMPB      AL,#2                 ; [CPU_ALU] |1622| 
        B         ||$C$L25||,EQ         ; [CPU_ALU] |1622| 
        ; branchcc occurs ; [] |1622| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1627,column 14,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |1627| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |1627| 
        ; branchcc occurs ; [] |1627| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1639,column 14,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1639| 
        B         ||$C$L27||,NEQ        ; [CPU_ALU] |1639| 
        ; branchcc occurs ; [] |1639| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1641,column 13,is_stmt,isa 0
        MOVL      XAR0,#422             ; [CPU_ALU] |1641| 
        ZERO      R0H                   ; [CPU_FPU] |1641| 
        MOV32     *+XAR3[AR0],R0H       ; [CPU_FPU] |1641| 
        MOVW      DP,#||motorVars||+356 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1642,column 13,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |1642| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1645,column 13,is_stmt,isa 0
        MOVL      XAR0,#352             ; [CPU_ALU] |1645| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |1645| 
        MOVL      XAR0,#356             ; [CPU_ALU] |1645| 
        MOVL      *+XAR3[AR0],ACC       ; [CPU_ALU] |1645| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1648,column 13,is_stmt,isa 0
        MOVL      XAR0,#350             ; [CPU_ALU] |1648| 
        MOV32     R1H,*+XAR3[AR0]       ; [CPU_FPU] |1648| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1642,column 13,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |1642| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1648,column 13,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+356 ; [CPU_FPU] |1648| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1642,column 13,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R2H       ; [CPU_FPU] |1642| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1648,column 13,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |1648| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1648| 
        B         ||$C$L27||,LT         ; [CPU_ALU] |1648| 
        ; branchcc occurs ; [] |1648| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1650,column 17,is_stmt,isa 0
        MOVL      ACC,XAR3              ; [CPU_ALU] |1650| 
        ADD       ACC,#323 << 1         ; [CPU_ALU] |1650| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1650| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1652,column 17,is_stmt,isa 0
        MOVL      XAR0,#647             ; [CPU_ALU] |1652| 
        MOVW      DP,#||motorVars||+646 ; [CPU_ARAU] 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |1652| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1650,column 17,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1650| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1652,column 17,is_stmt,isa 0
        CMP       AL,@||motorVars||+646 ; [CPU_ALU] |1652| 
        B         ||$C$L27||,HI         ; [CPU_ALU] |1652| 
        ; branchcc occurs ; [] |1652| 
        MOVW      DP,#||motorVars||+612 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1657,column 21,is_stmt,isa 0
        MOVL      XAR4,@||motorVars||+612 ; [CPU_ALU] |1657| 
        MOVW      DP,#||motorVars||+646 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1654,column 21,is_stmt,isa 0
        MOV       @||motorVars||+646,#0 ; [CPU_ALU] |1654| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1657,column 21,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1657| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] |1657| 
        ; branch occurs ; [] |1657| 
||$C$L19||:    
        MOVW      DP,#||motorVars||+360 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1629,column 13,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+360 ; [CPU_FPU] |1629| 
        CMPF32    R0H,#0                ; [CPU_FPU] |1629| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1629| 
        B         ||$C$L20||,GT         ; [CPU_ALU] |1629| 
        ; branchcc occurs ; [] |1629| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |1629| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |1629| 
        ; branch occurs ; [] |1629| 
||$C$L20||:    
        MOVIZ     R0H,#16256            ; [CPU_FPU] |1629| 
||$C$L21||:    
        MOVL      XAR0,#364             ; [CPU_ALU] |1629| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |1629| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |1629| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1635,column 17,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1635| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1629,column 13,is_stmt,isa 0
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1629| 
        MOVL      XAR0,#422             ; [CPU_ALU] |1629| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |1629| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1635,column 17,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |1635| 
        MOVL      XAR6,*+XAR5[AR0]      ; [CPU_ALU] |1635| 
        MOVL      XAR0,#612             ; [CPU_ALU] |1635| 
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1635| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1635| 
        MOVW      DP,#||motorVars||+612 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1635,column 17,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |1635| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        ADDL      ACC,@||motorVars||+612 ; [CPU_ALU] |66| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L22||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L24||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L22||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L23||:    
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] 
||$C$L24||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |80| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L25||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1624,column 13,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1624| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1625,column 13,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |1625| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1624,column 13,is_stmt,isa 0
        MOVL      XAR1,#354             ; [CPU_ALU] |1624| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1625,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1625| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1624,column 13,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR1]      ; [CPU_ALU] |1624| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1625,column 13,is_stmt,isa 0
        MOVL      XAR0,#422             ; [CPU_ALU] |1625| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1624,column 13,is_stmt,isa 0
        MOVL      XAR1,#356             ; [CPU_ALU] |1624| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1625,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1625| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1624,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |1624| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L26||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1664,column 9,is_stmt,isa 0
        MOVL      XAR0,#356             ; [CPU_ALU] |1664| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1664| 
        ZERO      R0H                   ; [CPU_FPU] |1664| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1665,column 9,is_stmt,isa 0
        MOVL      XAR1,#350             ; [CPU_ALU] |1665| 
        ZERO      R1H                   ; [CPU_FPU] |1665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1664,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1664| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1665,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |1665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1667,column 9,is_stmt,isa 0
        MOVL      XAR0,#422             ; [CPU_ALU] |1667| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1667| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1669,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1669| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1669| 
        ; call occurs [#||FCL_resetController||] ; [] |1669| 
||$C$L27||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |73| 
        MOVL      XAR0,#432             ; [CPU_ALU] |73| 
        MOVL      XAR1,#422             ; [CPU_ALU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |76| 
        MOVW      DP,#||motorVars||+436 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |73| 
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |73| 
        MOVL      XAR0,#436             ; [CPU_ALU] |73| 
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVXI     R0H,#55872            ; [CPU_FPU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+436 ; [CPU_FPU] |76| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |76| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L30||,LT         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |83| 
        ADD       ACC,#215 << 1         ; [CPU_ALU] |83| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |83| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      XAR0,#424             ; [CPU_ALU] |85| 
        MOVW      DP,#||motorVars||+430 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
        ADDL      *+XAR5[0],ACC         ; [CPU_ALU] |83| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |85| 
        CMPL      ACC,@||motorVars||+430 ; [CPU_ALU] |85| 
        B         ||$C$L31||,HI         ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
        MOVW      DP,#||motorVars||+432 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 4,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+432 ; [CPU_FPU] |87| 
        MOVW      DP,#||motorVars||+422 ; [CPU_ARAU] 
        MOV32     R1H,@||motorVars||+422 ; [CPU_FPU] |87| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |87| 
        MOVST0    ZF, NF                ; [CPU_FPU] |87| 
        B         ||$C$L28||,GEQ        ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
        MOVW      DP,#||motorVars||+432 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 93,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |93| 
        MOV32     R1H,@||motorVars||+432 ; [CPU_FPU] |93| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |93| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |93| 
        B         ||$C$L29||,UNC        ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L28||:    
        MOVW      DP,#||motorVars||+432 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |89| 
        MOV32     R1H,@||motorVars||+432 ; [CPU_FPU] |89| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |89| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
||$C$L29||:    
        MOV32     @||motorVars||+432,R0H ; [CPU_FPU] |89| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 96,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |96| 
        MOVW      DP,#||motorVars||+430 ; [CPU_ARAU] 
        MOVL      @||motorVars||+430,ACC ; [CPU_ALU] |96| 
        B         ||$C$L31||,UNC        ; [CPU_ALU] |96| 
        ; branch occurs ; [] |96| 
||$C$L30||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR0,#422             ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |102| 
        MOV       AH,#32767             ; [CPU_ALU] |102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |101| 
        MOVL      XAR1,#432             ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOVL      XAR0,#434             ; [CPU_ALU] |102| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |101| 
||$C$L31||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVL      XAR0,#428             ; [CPU_ALU] |109| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |109| 
        MOV32     R2H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1680,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1680| 
        MOVW      DP,#||motorVars||+432 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |109| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MOVL      XAR0,#426             ; [CPU_ALU] |109| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MINF32    R0H,R2H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1680,column 5,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1680| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1680,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1680| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1680| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     @||motorVars||+432,R0H ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1680,column 5,is_stmt,isa 0
        MOVL      XAR0,#388             ; [CPU_ALU] |1680| 
        MOVW      DP,#||motorVars||+612 ; [CPU_ARAU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1680| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |1680| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVL      XAR0,#480             ; [CPU_ALU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1681,column 5,is_stmt,isa 0
        MOVB      ACC,#56               ; [CPU_ALU] |1681| 
        ADDL      ACC,@||motorVars||+612 ; [CPU_ALU] |1681| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |76| 
        MOVW      DP,#||motorVars||+388 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1681,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |1681| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1682,column 5,is_stmt,isa 0
        MOVL      XAR1,#476             ; [CPU_ALU] |1682| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVL      XAR0,#494             ; [CPU_ALU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1682,column 5,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+388 ; [CPU_ALU] |1682| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1681,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |1681| 
        MOVW      DP,#||motorVars||+476 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1682,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR1],ACC       ; [CPU_ALU] |1682| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1681,column 5,is_stmt,isa 0
        MOVL      XAR1,#390             ; [CPU_ALU] |1681| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+476 ; [CPU_FPU] |76| 
        MOVW      DP,#||motorVars||+494 ; [CPU_ARAU] 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1681,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR1],XAR6      ; [CPU_ALU] |1681| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+494 ; [CPU_FPU] |78| 
        CMPF32    R0H,#48896            ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L32||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 82,column 7,is_stmt,isa 0
        CMPF32    R0H,#16128            ; [CPU_FPU] |82| 
        MOVST0    ZF, NF                ; [CPU_FPU] |82| 
        B         ||$C$L34||,LEQ        ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 84,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |84| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L32||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 80,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |80| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
||$C$L33||:    
        MOV32     @||motorVars||+494,R0H ; [CPU_FPU] |80| 
||$C$L34||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |87| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      XAR1,#476             ; [CPU_ALU] |104| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR0,#486             ; [CPU_ALU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1704,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1704| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1704,column 5,is_stmt,isa 0
        ADD       ACC,#645 << 0         ; [CPU_ALU] |1704| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR0,#482             ; [CPU_ALU] |87| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR1]      ; [CPU_FPU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1704,column 5,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |1704| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVL      XAR0,#488             ; [CPU_ALU] |87| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
||      MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |87| 

        MOVL      XAR0,#490             ; [CPU_ALU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1704,column 5,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |1704| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |87| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |87| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1706,column 5,is_stmt,isa 0
        MOVL      XAR0,#644             ; [CPU_ALU] |1706| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MPYF32    R1H,R3H,R2H           ; [CPU_FPU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1706,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1706| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |87| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      XAR0,#480             ; [CPU_ALU] |104| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     @||motorVars||+494,R0H ; [CPU_FPU] |87| 
        MOVW      DP,#||motorVars||+482 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |104| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MAXF32    R0H,#49024            ; [CPU_FPU] |94| 
        MINF32    R0H,#16256            ; [CPU_FPU] |94| 
        MOV32     @||motorVars||+482,R0H ; [CPU_FPU] |94| 
        MOVW      DP,#||motorVars||+645 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1706,column 5,is_stmt,isa 0
        CMP       AL,@||motorVars||+645 ; [CPU_ALU] |1706| 
        B         ||$C$L37||,HI         ; [CPU_ALU] |1706| 
        ; branchcc occurs ; [] |1706| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1714,column 9,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |1714| 
        MOVL      XAR1,#542             ; [CPU_ALU] |1714| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1714| 
        MOVW      DP,#||motorVars||+482 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVL      XAR0,#552             ; [CPU_ALU] |116| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1714,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1714| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1718,column 9,is_stmt,isa 0
        MOVL      XAR0,#544             ; [CPU_ALU] |1718| 
        MOVL      ACC,@||motorVars||+482 ; [CPU_ALU] |1718| 
        MOVW      DP,#||motorVars||+542 ; [CPU_ARAU] 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1718| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+542 ; [CPU_FPU] |116| 
        MOVW      DP,#||motorVars||+544 ; [CPU_ARAU] 
        MOVL      XAR0,#566             ; [CPU_ALU] |116| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |116| 
        MOV32     R0H,@||motorVars||+544 ; [CPU_FPU] |116| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |116| 
        MOVW      DP,#||motorVars||+542 ; [CPU_ARAU] 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |116| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOVL      XAR0,#550             ; [CPU_ALU] |125| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+542 ; [CPU_FPU] |119| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |125| 
        MOVW      DP,#||motorVars||+544 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOVL      XAR0,#580             ; [CPU_ALU] |119| 
        MOV32     R0H,@||motorVars||+544 ; [CPU_FPU] |119| 
        MOVW      DP,#||motorVars||+566 ; [CPU_ARAU] 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
||      SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |119| 

        MOVL      XAR0,#556             ; [CPU_ALU] |119| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
||      MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |119| 

        MOVL      XAR0,#574             ; [CPU_ALU] |119| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |119| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |119| 
        MOVL      XAR0,#568             ; [CPU_ALU] |119| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |119| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVL      XAR0,#560             ; [CPU_ALU] |123| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+566 ; [CPU_FPU] |128| 
        MOVW      DP,#||motorVars||+568 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVL      XAR0,#548             ; [CPU_ALU] |123| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+568 ; [CPU_FPU] |128| 
        MOVW      DP,#||motorVars||+542 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0

        MOV32     R1H,@||motorVars||+542 ; [CPU_FPU] |123| 
||      ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |128| 

        MOVW      DP,#||motorVars||+544 ; [CPU_ARAU] 

        MOV32     R1H,@||motorVars||+544 ; [CPU_FPU] |123| 
||      MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |123| 

        MOVW      DP,#||motorVars||+578 ; [CPU_ARAU] 

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      SUBF32    R2H,R2H,R1H           ; [CPU_FPU] |123| 

        MOVL      XAR0,#558             ; [CPU_ALU] |123| 

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |123| 

        MOVL      XAR0,#578             ; [CPU_ALU] |123| 

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |123| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVL      XAR0,#576             ; [CPU_ALU] |124| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0

        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |124| 
||      SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |123| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVL      XAR0,#570             ; [CPU_ALU] |124| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0

        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |124| 
||      MOV32     @||motorVars||+578,R1H ; [CPU_FPU] |123| 

        MOVW      DP,#||motorVars||+570 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |124| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVL      XAR0,#554             ; [CPU_ALU] |128| 
        MOV32     R1H,@||motorVars||+570 ; [CPU_FPU] |128| 
        MOVW      DP,#||motorVars||+572 ; [CPU_ARAU] 
        ADDF32    R1H,R1H,R0H           ; [CPU_FPU] |128| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |128| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |128| 
        MOVL      XAR0,#572             ; [CPU_ALU] |128| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |128| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVL      XAR0,#562             ; [CPU_ALU] |131| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
        MOV32     R0H,@||motorVars||+572 ; [CPU_FPU] |131| 
        MOVL      XAR0,#564             ; [CPU_ALU] |131| 
        MOVW      DP,#||motorVars||+568 ; [CPU_ARAU] 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 120,column 2,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+568 ; [CPU_ALU] |120| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MINF32    R0H,R2H               ; [CPU_FPU] |131| 
        MOVW      DP,#||motorVars||+570 ; [CPU_ARAU] 
        MOVL      XAR0,#546             ; [CPU_ALU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     R3H,@||motorVars||+570 ; [CPU_FPU] |125| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |131| 
        MOVW      DP,#||motorVars||+572 ; [CPU_ARAU] 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+572 ; [CPU_FPU] |140| 
        MOVW      DP,#||motorVars||+546 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0

        MOV32     R1H,@||motorVars||+546 ; [CPU_FPU] |140| 
||      MPYF32    R2H,R4H,R3H           ; [CPU_FPU] |125| 

        MOVW      DP,#||motorVars||+574 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 120,column 2,is_stmt,isa 0
        MOVL      @||motorVars||+574,ACC ; [CPU_ALU] |120| 
        MOVW      DP,#||motorVars||+576 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     @||motorVars||+576,R2H ; [CPU_FPU] |125| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L35||,EQ         ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        ZERO      R0H                   ; [CPU_FPU] |140| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] |140| 
        ; branch occurs ; [] |140| 
||$C$L35||:    
        MOVIZ     R0H,#16256            ; [CPU_FPU] |140| 
||$C$L36||:    
        MOVL      XAR1,#580             ; [CPU_ALU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1721,column 9,is_stmt,isa 0
        MOVL      XAR0,#645             ; [CPU_ALU] |1721| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1721,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |1721| 
||$C$L37||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1724,column 5,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1724| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1724| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1724| 
        CMPB      AL,#2                 ; [CPU_ALU] |1724| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |1724| 
        ; branchcc occurs ; [] |1724| 
        MOVL      XAR0,#658             ; [CPU_ALU] |1724| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |1724| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |1724| 
        ; branchcc occurs ; [] |1724| 
||$C$L38||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1727,column 9,is_stmt,isa 0
        MOVL      XAR0,#576             ; [CPU_ALU] |1727| 
        ZERO      R0H                   ; [CPU_FPU] |1727| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1727| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1731,column 9,is_stmt,isa 0
        MOVL      XAR1,#568             ; [CPU_ALU] |1731| 
        ZERO      R1H                   ; [CPU_FPU] |1731| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1728,column 9,is_stmt,isa 0
        MOVL      XAR0,#578             ; [CPU_ALU] |1728| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1728| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1729,column 9,is_stmt,isa 0
        MOVL      XAR0,#574             ; [CPU_ALU] |1729| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1729| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1730,column 9,is_stmt,isa 0
        MOVL      XAR0,#570             ; [CPU_ALU] |1730| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1730| 
        MOVL      XAR0,#612             ; [CPU_ALU] 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1731,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |1731| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1732,column 9,is_stmt,isa 0
        MOVL      XAR0,#566             ; [CPU_ALU] |1732| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1732| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] 
||$C$L39||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1753,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1753| 
        B         ||$C$L41||,EQ         ; [CPU_ALU] |1753| 
        ; branchcc occurs ; [] |1753| 
        CMPB      AL,#1                 ; [CPU_ALU] |1753| 
        B         ||$C$L40||,NEQ        ; [CPU_ALU] |1753| 
        ; branchcc occurs ; [] |1753| 
        MOVW      DP,#||motorVars||+358 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+358 ; [CPU_FPU] |1753| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] |1753| 
        ; branch occurs ; [] |1753| 
||$C$L40||:    
        MOVW      DP,#||motorVars||+546 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+546 ; [CPU_FPU] |1753| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] |1753| 
        ; branch occurs ; [] |1753| 
||$C$L41||:    
        ZERO      R0H                   ; [CPU_FPU] |1753| 
||$C$L42||:    
        MOVB      ACC,#32               ; [CPU_ALU] |1753| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |1753| 
        MOVL      XAR0,#612             ; [CPU_ALU] |1753| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1759,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1759| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1753,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1753| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1753| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1759,column 5,is_stmt,isa 0
        MOVXI     R2H,#50604            ; [CPU_FPU] |1759| 
        MOVL      XAR1,#356             ; [CPU_ALU] |1759| 
        MOVL      XAR0,#350             ; [CPU_ALU] |1759| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1753,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |1753| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1759,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |1759| 
        MOV32     R0H,*+XAR5[AR1]       ; [CPU_FPU] |1759| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("ramper")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1759| 
        ; call occurs [#||ramper||] ; [] |1759| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |4872| 
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR6,#2               ; [CPU_ALU] |819| 
        MOVW      DP,#||motorVars||+350 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVL      XAR7,#1028            ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1759,column 5,is_stmt,isa 0
        MOV32     @||motorVars||+350,R0H ; [CPU_FPU] |1759| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2328,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |2328| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2328,column 5,is_stmt,isa 0
        ADD       ACC,#319 << 1         ; [CPU_ALU] |2328| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2328,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2328| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1761,column 5,is_stmt,isa 0
        MOVL      XAR0,#496             ; [CPU_ALU] |1761| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2328,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2328| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |2328| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1761,column 5,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+350 ; [CPU_ALU] |1761| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |1761| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -32
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
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x919)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:motor1ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor1ControlISR||

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("motor1ControlISR")
	.dwattr $C$DW$139, DW_AT_low_pc(||motor1ControlISR||)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_linkage_name("motor1ControlISR")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$139, DW_AT_decl_line(0x86b)
	.dwattr $C$DW$139, DW_AT_decl_column(0x12)
	.dwattr $C$DW$139, DW_AT_TI_interrupt
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2156,column 1,is_stmt,address ||motor1ControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motor1ControlISR||

;***************************************************************
;* FNAME: motor1ControlISR              FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 30 SOE     *
;***************************************************************

||motor1ControlISR||:
;* AR1   assigned to $O$C6
;* R0    assigned to $O$C7
;* R1    assigned to $O$C8
;* AR4   assigned to $O$C9
;* R3    assigned to $O$C10
;* R0    assigned to $O$C11
;* R2    assigned to $O$C12
;* R2    assigned to $O$C13
;* R1    assigned to $O$C14
;* R0    assigned to $O$C15
;* R0    assigned to $O$C16
;* R0    assigned to $O$C17
;* AR5   assigned to $O$C18
;* AR4   assigned to $O$C19
;* R1    assigned to $O$C20
;* AR5   assigned to $O$C21
;* R2    assigned to $O$C22
;* AR4   assigned to $O$C23
;* AR4   assigned to $O$C24
;* AL    assigned to $O$C25
;* AR1   assigned to $O$K1
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
;* R0    assigned to $O$U81
;* AR5   assigned to $O$U38
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* R0    assigned to vdc
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("vdc")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2b]

;* AR5   assigned to in
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("in")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg14]

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
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -34
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1397,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1397| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("FCL_runPICtrl_M1")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M1|| ; [CPU_ALU] |1397| 
        ; call occurs [#||FCL_runPICtrl_M1||] ; [] |1397| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount|| ; [CPU_ALU] |187| 
        B         ||$C$L43||,HIS        ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |2207| 
        MOVB      ACC,#99               ; [CPU_ALU] |2207| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2207| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |2207| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 190,column 9,is_stmt,isa 0
        SUBR      @||FCL_cycleCount||,AL ; [CPU_ALU] |190| 
||$C$L43||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |195| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |195| 
        MOVL      XAR0,#311             ; [CPU_ALU] |195| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |195| 
        B         ||$C$L44||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |197| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |197| 
||$C$L44||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR0,#310             ; [CPU_ALU] |201| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |201| 
        B         ||$C$L45||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOVL      XAR1,#311             ; [CPU_ALU] |203| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |204| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |203| 
||$C$L45||:    
        MOVW      DP,#||motorVars||+311 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        UI16TOF32 R1H,@||motorVars||+311 ; [CPU_FPU] |208| 
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+72  ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR4,@||motorVars||+72 ; [CPU_ALU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |1413| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+48  ; [CPU_ARAU] 

        MOV32     R1H,@||motorVars||+48 ; [CPU_FPU] |223| 
||      MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |208| 

        MOVW      DP,#||motorVars||+308 ; [CPU_ARAU] 
        MOV32     @||motorVars||+308,R0H ; [CPU_FPU] |208| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOVL      XAR0,#274             ; [CPU_ALU] |1413| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1419,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1419| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1413,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1419,column 5,is_stmt,isa 0
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M1|| ; [CPU_ALU] |1419| 
        ; call occurs [#||FCL_runPICtrlWrap_M1||] ; [] |1419| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1431,column 5,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |1431| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1431| 
        CMPB      AL,#1                 ; [CPU_ALU] |1431| 
        B         ||$C$L53||,NEQ        ; [CPU_ALU] |1431| 
        ; branchcc occurs ; [] |1431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1433,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1433| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |1433| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1433| 
        CMPB      AL,#2                 ; [CPU_ALU] |1433| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |1433| 
        ; branchcc occurs ; [] |1433| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1438,column 14,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |1438| 
        B         ||$C$L46||,EQ         ; [CPU_ALU] |1438| 
        ; branchcc occurs ; [] |1438| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1450,column 14,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1450| 
        B         ||$C$L54||,NEQ        ; [CPU_ALU] |1450| 
        ; branchcc occurs ; [] |1450| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1459,column 13,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1459| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |1459| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1456,column 13,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |1456| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1452,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1452| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1456,column 13,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |1456| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |1456| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1453,column 13,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |1453| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1452,column 13,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |1452| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1456,column 13,is_stmt,isa 0
        MOVL      *+XAR2[AR1],ACC       ; [CPU_ALU] |1456| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1452,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1452| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1459,column 13,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1459| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |1459| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1453,column 13,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1453| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1459,column 13,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |1459| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1453,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |1453| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1459,column 13,is_stmt,isa 0
        MOVST0    ZF, NF                ; [CPU_FPU] |1459| 
        B         ||$C$L54||,LT         ; [CPU_ALU] |1459| 
        ; branchcc occurs ; [] |1459| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1461,column 17,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1461| 
        ADD       ACC,#157 << 1         ; [CPU_ALU] |1461| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1461| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 17,is_stmt,isa 0
        MOVL      XAR0,#315             ; [CPU_ALU] |1463| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1463| 
        MOVL      XAR0,#314             ; [CPU_ALU] |1463| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1461,column 17,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1461| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1463,column 17,is_stmt,isa 0
        CMP       AL,*+XAR2[AR0]        ; [CPU_ALU] |1463| 
        B         ||$C$L54||,HI         ; [CPU_ALU] |1463| 
        ; branchcc occurs ; [] |1463| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1468,column 21,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1468| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |1468| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1465,column 21,is_stmt,isa 0
        MOVL      XAR0,#314             ; [CPU_ALU] |1465| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |1465| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1468,column 21,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1468| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] |1468| 
        ; branch occurs ; [] |1468| 
||$C$L46||:    
        MOVW      DP,#||motorVars||+28  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1440,column 13,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+28 ; [CPU_FPU] |1440| 
        CMPF32    R0H,#0                ; [CPU_FPU] |1440| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1440| 
        B         ||$C$L47||,GT         ; [CPU_ALU] |1440| 
        ; branchcc occurs ; [] |1440| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |1440| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] |1440| 
        ; branch occurs ; [] |1440| 
||$C$L47||:    
        MOVIZ     R0H,#16256            ; [CPU_FPU] |1440| 
||$C$L48||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1446,column 17,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1446| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1440,column 13,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1440| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVL      XAR1,#280             ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1446,column 17,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1446| 
        MOVB      XAR0,#100             ; [CPU_ALU] |1446| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1446| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |1446| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1440,column 13,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |1440| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1440,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |1440| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1446,column 17,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |1446| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1440,column 13,is_stmt,isa 0
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1440| 
        MOVB      XAR0,#90              ; [CPU_ALU] |1440| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1440| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |68| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L49||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L51||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L50||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L49||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L50||:    
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] 
||$C$L51||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |80| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L52||:    
        MOVW      DP,#||motorVars||+22  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 13,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+22 ; [CPU_ALU] |1435| 
        MOVW      DP,#||motorVars||+28  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 13,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+28 ; [CPU_ALU] |1436| 
        MOVW      DP,#||motorVars||+24  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 13,is_stmt,isa 0
        MOVL      @||motorVars||+24,XAR6 ; [CPU_ALU] |1435| 
        MOVW      DP,#||motorVars||+90  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1436,column 13,is_stmt,isa 0
        MOVL      @||motorVars||+90,ACC ; [CPU_ALU] |1436| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L53||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1475,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1475| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1475| 
        ZERO      R0H                   ; [CPU_FPU] |1475| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1476,column 9,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |1476| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1475,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1475| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1476,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1476| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1476| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1478,column 9,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |1478| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1476,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1476| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1478,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1478| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1480,column 9,is_stmt,isa 0
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1480| 
        ; call occurs [#||FCL_resetController||] ; [] |1480| 
||$C$L54||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |73| 
        MOVB      XAR0,#100             ; [CPU_ALU] |73| 
        MOVB      XAR1,#90              ; [CPU_ALU] |73| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |73| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |73| 
        MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |73| 
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        ADDB      XAR4,#98              ; [CPU_ALU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOV32     R1H,R2H               ; [CPU_FPU] |76| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |76| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |73| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L57||,LT         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |85| 
        MOVB      XAR1,#98              ; [CPU_ALU] |85| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |83| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |85| 
        CMPL      ACC,*+XAR5[AR1]       ; [CPU_ALU] |85| 
        B         ||$C$L58||,HI         ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 4,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |87| 
        MOVB      XAR0,#90              ; [CPU_ALU] |87| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |87| 
        ADDB      XAR4,#100             ; [CPU_ALU] |87| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |87| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |87| 
        MOVST0    ZF, NF                ; [CPU_FPU] |87| 
        B         ||$C$L55||,GEQ        ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 93,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |93| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |93| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |93| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |93| 
        B         ||$C$L56||,UNC        ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L55||:    
        MOVW      DP,#||motorVars||+100 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |89| 
        MOV32     R1H,@||motorVars||+100 ; [CPU_FPU] |89| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |89| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+100,R0H ; [CPU_FPU] |89| 
||$C$L56||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 96,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |96| 
        MOVW      DP,#||motorVars||+98  ; [CPU_ARAU] 
        MOVL      @||motorVars||+98,ACC ; [CPU_ALU] |96| 
        B         ||$C$L58||,UNC        ; [CPU_ALU] |96| 
        ; branch occurs ; [] |96| 
||$C$L57||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |101| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AH,#32767             ; [CPU_ALU] |102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        ADDB      XAR4,#100             ; [CPU_ALU] |101| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |101| 
||$C$L58||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |109| 
        MOV32     R2H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MOVB      XAR0,#100             ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1491,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1491| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MOVB      XAR1,#100             ; [CPU_ALU] |109| 
        MOVB      XAR0,#94              ; [CPU_ALU] |109| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1491,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1491| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MINF32    R0H,R2H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1491,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1491| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1491,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |1491| 
        MOVB      XAR0,#56              ; [CPU_ALU] |1491| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR1],R0H       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 5,is_stmt,isa 0
        MOVB      XAR1,#144             ; [CPU_ALU] |1493| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1491,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1491| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |1491| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1492| 
        MOVB      ACC,#56               ; [CPU_ALU] |1492| 
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1492| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |1493| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |1492| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1493| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVB      XAR0,#148             ; [CPU_ALU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR1],ACC       ; [CPU_ALU] |1493| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |1492| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVB      XAR1,#144             ; [CPU_ALU] |76| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |76| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |76| 
        MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |76| 
        ADDB      ACC,#162              ; [CPU_ALU] |76| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |76| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 5,is_stmt,isa 0
        MOVB      XAR0,#58              ; [CPU_ALU] |1492| 
        MOVL      *+XAR5[AR0],XAR6      ; [CPU_ALU] |1492| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |76| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        CMPF32    R0H,#48896            ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L59||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 82,column 7,is_stmt,isa 0
        CMPF32    R0H,#16128            ; [CPU_FPU] |82| 
        MOVST0    ZF, NF                ; [CPU_FPU] |82| 
        B         ||$C$L60||,LEQ        ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 84,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |84| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |84| 
        B         ||$C$L60||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L59||:    
        MOVW      DP,#||motorVars||+162 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 80,column 3,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+162 ; [CPU_FPU] |80| 
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |80| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+162,R0H ; [CPU_FPU] |80| 
||$C$L60||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1518,column 5,is_stmt,isa 0
        MOVL      XAR0,#312             ; [CPU_ALU] |1518| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1516,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1516| 
        ADD       ACC,#313 << 0         ; [CPU_ALU] |1516| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1516| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1518,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1518| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVB      XAR0,#162             ; [CPU_ALU] |87| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#154             ; [CPU_ALU] |87| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#150             ; [CPU_ALU] |87| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#156             ; [CPU_ALU] |87| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
||      MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |87| 

        MOVB      XAR0,#158             ; [CPU_ALU] |87| 

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
||      MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |87| 

        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |87| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |87| 
        MOVB      XAR0,#162             ; [CPU_ALU] |87| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |87| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MOVB      XAR0,#150             ; [CPU_ALU] |94| 
        MAXF32    R0H,#49024            ; [CPU_FPU] |94| 
        MINF32    R0H,#16256            ; [CPU_FPU] |94| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |94| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVB      XAR0,#144             ; [CPU_ALU] |104| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1516,column 5,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |1516| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVB      XAR0,#148             ; [CPU_ALU] |104| 
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |104| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1518,column 5,is_stmt,isa 0
        MOVL      XAR0,#313             ; [CPU_ALU] |1518| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |1518| 
        B         ||$C$L63||,HI         ; [CPU_ALU] |1518| 
        ; branchcc occurs ; [] |1518| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1526,column 9,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1526| 
        MOVB      XAR1,#210             ; [CPU_ALU] |1526| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1526| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1530,column 9,is_stmt,isa 0
        MOVB      XAR0,#150             ; [CPU_ALU] |1530| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1526,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1526| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1530,column 9,is_stmt,isa 0
        MOVB      XAR1,#212             ; [CPU_ALU] |1530| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1530| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#228             ; [CPU_ALU] |123| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1530,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1530| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVB      XAR0,#210             ; [CPU_ALU] |116| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
        MOVB      XAR0,#212             ; [CPU_ALU] |116| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR1,#246             ; [CPU_ALU] |123| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
||      MPYF32    R2H,R1H,R0H           ; [CPU_FPU] |123| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 123,column 2,is_stmt,isa 0
        MOVB      XAR0,#216             ; [CPU_ALU] |123| 

        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
||      SUBF32    R3H,R2H,R0H           ; [CPU_FPU] |123| 

        MOVB      XAR0,#226             ; [CPU_ALU] |123| 
        MPYF32    R3H,R3H,R2H           ; [CPU_FPU] |123| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |123| 
        MPYF32    R3H,R3H,R2H           ; [CPU_FPU] |123| 
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |123| 
        SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |123| 
        MOVB      XAR0,#246             ; [CPU_ALU] |123| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |123| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVB      XAR0,#244             ; [CPU_ALU] |124| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |124| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOVB      XAR0,#218             ; [CPU_ALU] |125| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |124| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 125,column 2,is_stmt,isa 0
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |125| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |125| 
        MOVB      XAR0,#244             ; [CPU_ALU] |125| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |125| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 116,column 2,is_stmt,isa 0
        MOVB      XAR0,#220             ; [CPU_ALU] |116| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |116| 
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |116| 
        NOP       ; [CPU_ALU] 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |116| 
        MOVB      XAR0,#234             ; [CPU_ALU] |116| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |116| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        MOVB      XAR0,#224             ; [CPU_ALU] |119| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        MOVB      XAR0,#242             ; [CPU_ALU] |119| 

        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
||      SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |119| 

        MOVB      XAR0,#248             ; [CPU_ALU] |119| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |119| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |119| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |119| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVB      XAR1,#240             ; [CPU_ALU] |128| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 119,column 2,is_stmt,isa 0
        ADDF32    R0H,R0H,R5H           ; [CPU_FPU] |119| 
        MOVB      XAR0,#236             ; [CPU_ALU] |119| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |119| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 120,column 2,is_stmt,isa 0
        MOVB      XAR0,#242             ; [CPU_ALU] |120| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |120| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 124,column 2,is_stmt,isa 0
        MOVB      XAR0,#238             ; [CPU_ALU] |124| 

        ADDF32    R0H,R0H,R3H           ; [CPU_FPU] |128| 
||      MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |124| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOVB      XAR0,#222             ; [CPU_ALU] |128| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |128| 
||      ADDF32    R1H,R2H,R0H           ; [CPU_FPU] |128| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVB      XAR0,#230             ; [CPU_ALU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0

        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |128| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |131| 

	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MOVB      XAR0,#232             ; [CPU_ALU] |131| 
        MOV32     R0H,R1H               ; [CPU_FPU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 128,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |128| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 131,column 5,is_stmt,isa 0
        MINF32    R0H,R2H               ; [CPU_FPU] |131| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |131| 
        MOVB      XAR0,#214             ; [CPU_ALU] |131| 
        MAXF32    R0H,R2H               ; [CPU_FPU] |131| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |131| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        CMPF32    R0H,R1H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L61||,NEQ        ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |140| 
        B         ||$C$L62||,UNC        ; [CPU_ALU] |140| 
        ; branch occurs ; [] |140| 
||$C$L61||:    
        ZERO      R0H                   ; [CPU_FPU] |140| 
||$C$L62||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1533,column 9,is_stmt,isa 0
        MOVL      XAR1,#313             ; [CPU_ALU] |1533| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOVB      XAR0,#248             ; [CPU_ALU] |140| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1533,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |1533| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h",line 140,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |140| 
||$C$L63||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1536,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1536| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1536| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1536| 
        CMPB      AL,#2                 ; [CPU_ALU] |1536| 
        B         ||$C$L64||,NEQ        ; [CPU_ALU] |1536| 
        ; branchcc occurs ; [] |1536| 
        MOVL      XAR0,#326             ; [CPU_ALU] |1536| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |1536| 
        B         ||$C$L65||,NEQ        ; [CPU_ALU] |1536| 
        ; branchcc occurs ; [] |1536| 
||$C$L64||:    
        MOVL      XAR0,#280             ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1539,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1539| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] 
        MOVB      XAR0,#244             ; [CPU_ALU] |1539| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1539| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1540,column 9,is_stmt,isa 0
        MOVB      XAR0,#246             ; [CPU_ALU] |1540| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1540| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1541,column 9,is_stmt,isa 0
        MOVB      XAR0,#242             ; [CPU_ALU] |1541| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1541| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1542,column 9,is_stmt,isa 0
        MOVB      XAR0,#238             ; [CPU_ALU] |1542| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1542| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1544,column 9,is_stmt,isa 0
        MOVB      XAR0,#234             ; [CPU_ALU] |1544| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1544| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 9,is_stmt,isa 0
        MOVB      XAR0,#236             ; [CPU_ALU] |1543| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1543| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] 
||$C$L65||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1565,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1565| 
        B         ||$C$L67||,EQ         ; [CPU_ALU] |1565| 
        ; branchcc occurs ; [] |1565| 
        CMPB      AL,#1                 ; [CPU_ALU] |1565| 
        B         ||$C$L66||,NEQ        ; [CPU_ALU] |1565| 
        ; branchcc occurs ; [] |1565| 
        MOVW      DP,#||motorVars||+26  ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+26 ; [CPU_FPU] |1565| 
        B         ||$C$L68||,UNC        ; [CPU_ALU] |1565| 
        ; branch occurs ; [] |1565| 
||$C$L66||:    
        MOVW      DP,#||motorVars||+214 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+214 ; [CPU_FPU] |1565| 
        B         ||$C$L68||,UNC        ; [CPU_ALU] |1565| 
        ; branch occurs ; [] |1565| 
||$C$L67||:    
        ZERO      R0H                   ; [CPU_FPU] |1565| 
||$C$L68||:    
        MOVB      XAR0,#32              ; [CPU_ALU] |1565| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1571,column 5,is_stmt,isa 0
        MOVL      XAR1,#||motorVars||   ; [CPU_ARAU] |1571| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1565,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |1565| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1571,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1571| 
        MOVB      XAR0,#24              ; [CPU_ALU] |1571| 
        MOV32     R0H,*+XAR1[AR0]       ; [CPU_FPU] |1571| 
        MOVXI     R2H,#50604            ; [CPU_FPU] |1571| 
        MOVB      XAR0,#18              ; [CPU_ALU] |1571| 
        MOV32     R1H,*+XAR1[AR0]       ; [CPU_FPU] |1571| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("ramper")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1571| 
        ; call occurs [#||ramper||] ; [] |1571| 
        MOVW      DP,#||dlogCh3||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 5,is_stmt,isa 0
        MOVL      XAR0,#388             ; [CPU_ALU] |2229| 
        MOVL      XAR6,*+XAR1[AR0]      ; [CPU_ALU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2230,column 5,is_stmt,isa 0
        MOVL      XAR0,#482             ; [CPU_ALU] |2230| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |2230| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1571,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1571| 
        MOV32     *+XAR1[AR0],R0H       ; [CPU_FPU] |1571| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1573,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |1573| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2229,column 5,is_stmt,isa 0
        MOVL      @||dlogCh3||,XAR6     ; [CPU_ALU] |2229| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1573,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[AR0]      ; [CPU_ALU] |1573| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2227,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |2227| 
        MOVL      P,*+XAR1[AR0]         ; [CPU_ALU] |2227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 5,is_stmt,isa 0
        MOVB      XAR0,#150             ; [CPU_ALU] |2228| 
        MOVL      XAR7,*+XAR1[AR0]      ; [CPU_ALU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2230,column 5,is_stmt,isa 0
        MOVL      @||dlogCh4||,ACC      ; [CPU_ALU] |2230| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1573,column 5,is_stmt,isa 0
        MOVB      XAR0,#164             ; [CPU_ALU] |1573| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2227,column 5,is_stmt,isa 0
        MOVL      @||dlogCh1||,P        ; [CPU_ALU] |2227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2228,column 5,is_stmt,isa 0
        MOVL      @||dlogCh2||,XAR7     ; [CPU_ALU] |2228| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1573,column 5,is_stmt,isa 0
        MOVL      *+XAR1[AR0],XAR4      ; [CPU_ALU] |1573| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2290,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |2290| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_FUNC||  ; [CPU_ALU] |2290| 
        ; call occurs [#||DLOG_4CH_F_FUNC||] ; [] |2290| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |4872| 
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |819| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVL      XAR7,#1028            ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2295,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |2295| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2295,column 5,is_stmt,isa 0
        ADD       ACC,#153 << 1         ; [CPU_ALU] |2295| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |2295| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2295,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2295| 
        ADDL      *+XAR1[0],ACC         ; [CPU_ALU] |2295| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -32
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
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x8f9)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text:C3"
	.clink
	.global	||C3||

$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("C3")
	.dwattr $C$DW$148, DW_AT_low_pc(||C3||)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_linkage_name("C3")
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0x289)
	.dwattr $C$DW$148, DW_AT_decl_column(0x06)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 651,column 1,is_stmt,address ||C3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 655,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |655| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |655| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$148, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0x291)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	".text:C2"
	.clink
	.global	||C2||

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("C2")
	.dwattr $C$DW$150, DW_AT_low_pc(||C2||)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_linkage_name("C2")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$150, DW_AT_decl_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 640,column 1,is_stmt,address ||C2||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 644,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C3||          ; [CPU_ARAU] |644| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |644| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x286)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text:B3"
	.clink
	.global	||B3||

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("B3")
	.dwattr $C$DW$152, DW_AT_low_pc(||B3||)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_linkage_name("B3")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0x258)
	.dwattr $C$DW$152, DW_AT_decl_column(0x06)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 602,column 1,is_stmt,address ||B3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 606,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |606| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |606| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x260)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text:B2"
	.clink
	.global	||B2||

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("B2")
	.dwattr $C$DW$154, DW_AT_low_pc(||B2||)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_linkage_name("B2")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$154, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$154, DW_AT_decl_column(0x06)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 591,column 1,is_stmt,address ||B2||,isa 0

	.dwfde $C$DW$CIE, ||B2||

;***************************************************************
;* FNAME: B2                            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||B2||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 595,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B3||          ; [CPU_ARAU] |595| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |595| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x255)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text:A3"
	.clink
	.global	||A3||

$C$DW$156	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$156, DW_AT_name("A3")
	.dwattr $C$DW$156, DW_AT_low_pc(||A3||)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_linkage_name("A3")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$156, DW_AT_decl_line(0x220)
	.dwattr $C$DW$156, DW_AT_decl_column(0x06)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 546,column 1,is_stmt,address ||A3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 547,column 5,is_stmt,isa 0
        INC       @||led1Cnt||          ; [CPU_ALU] |547| 
        CMP       @||led1Cnt||,#800     ; [CPU_ALU] |547| 
        B         ||$C$L69||,LO         ; [CPU_ALU] |547| 
        ; branchcc occurs ; [] |547| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 551,column 9,is_stmt,isa 0
        MOV       @||led1Cnt||,#0       ; [CPU_ALU] |551| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f0e),ACC       ; [CPU_FPU] |505| 
||$C$L69||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 559,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |559| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |559| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$156, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x231)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$156

	.sect	".text:A2"
	.clink
	.global	||A2||

$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("A2")
	.dwattr $C$DW$158, DW_AT_low_pc(||A2||)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_linkage_name("A2")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$158, DW_AT_decl_line(0x213)
	.dwattr $C$DW$158, DW_AT_decl_column(0x06)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 533,column 1,is_stmt,address ||A2||,isa 0

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
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 535,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||+332 ; [CPU_ARAU] |535| 
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |535| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("runMotorControl")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #||runMotorControl||  ; [CPU_ALU] |535| 
        ; call occurs [#||runMotorControl||] ; [] |535| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 539,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A3||          ; [CPU_ARAU] |539| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |539| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$158, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x21d)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

	.sect	".text:C1"
	.clink
	.global	||C1||

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("C1")
	.dwattr $C$DW$161, DW_AT_low_pc(||C1||)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_linkage_name("C1")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$161, DW_AT_decl_line(0x269)
	.dwattr $C$DW$161, DW_AT_decl_column(0x06)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 619,column 1,is_stmt,address ||C1||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 620,column 5,is_stmt,isa 0
        INC       @||led2Cnt||          ; [CPU_ALU] |620| 
        CMP       @||led2Cnt||,#400     ; [CPU_ALU] |620| 
        B         ||$C$L70||,LO         ; [CPU_ALU] |620| 
        ; branchcc occurs ; [] |620| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |505| 
        MOV       AH,#32768             ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 624,column 9,is_stmt,isa 0
        MOV       @||led2Cnt||,#0       ; [CPU_ALU] |624| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f06),ACC       ; [CPU_FPU] |505| 
||$C$L70||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 631,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C2||          ; [CPU_ARAU] |631| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |631| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x27b)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text:B1"
	.clink
	.global	||B1||

$C$DW$163	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$163, DW_AT_name("B1")
	.dwattr $C$DW$163, DW_AT_low_pc(||B1||)
	.dwattr $C$DW$163, DW_AT_high_pc(0x00)
	.dwattr $C$DW$163, DW_AT_linkage_name("B1")
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$163, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$163, DW_AT_decl_column(0x06)
	.dwattr $C$DW$163, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 572,column 1,is_stmt,address ||B1||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 584,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B2||          ; [CPU_ARAU] |584| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |584| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$163, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x24a)
	.dwattr $C$DW$163, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$163

	.sect	".text:A1"
	.clink
	.global	||A1||

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("A1")
	.dwattr $C$DW$165, DW_AT_low_pc(||A1||)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_linkage_name("A1")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$165, DW_AT_decl_line(0x206)
	.dwattr $C$DW$165, DW_AT_decl_column(0x06)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 520,column 1,is_stmt,address ||A1||,isa 0

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
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 522,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |522| 
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |522| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("runMotorControl")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #||runMotorControl||  ; [CPU_ALU] |522| 
        ; call occurs [#||runMotorControl||] ; [] |522| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 526,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A2||          ; [CPU_ARAU] |526| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |526| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x210)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text:A0"
	.clink
	.global	||A0||

$C$DW$168	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$168, DW_AT_name("A0")
	.dwattr $C$DW$168, DW_AT_low_pc(||A0||)
	.dwattr $C$DW$168, DW_AT_high_pc(0x00)
	.dwattr $C$DW$168, DW_AT_linkage_name("A0")
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$168, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$168, DW_AT_decl_column(0x06)
	.dwattr $C$DW$168, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 463,column 1,is_stmt,address ||A0||,isa 0

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
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L71||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 470,column 9,is_stmt,isa 0
        MOVL      XAR7,@||A_Task_Ptr||  ; [CPU_ALU] |470| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 470,column 9,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_call
	.dwattr $C$DW$169, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |470| 
        ; call occurs [XAR7] ; [] |470| 
        MOVW      DP,#||vTimer0||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 473,column 9,is_stmt,isa 0
        INC       @||vTimer0||          ; [CPU_ALU] |473| 
        MOVW      DP,#||serialCommsTimer|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 474,column 9,is_stmt,isa 0
        INC       @||serialCommsTimer|| ; [CPU_ALU] |474| 
||$C$L71||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 477,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B0||          ; [CPU_ARAU] |477| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |477| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$168, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x1de)
	.dwattr $C$DW$168, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$168

	.sect	".text:B0"
	.clink
	.global	||B0||

$C$DW$171	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$171, DW_AT_name("B0")
	.dwattr $C$DW$171, DW_AT_low_pc(||B0||)
	.dwattr $C$DW$171, DW_AT_high_pc(0x00)
	.dwattr $C$DW$171, DW_AT_linkage_name("B0")
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$171, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$171, DW_AT_decl_column(0x06)
	.dwattr $C$DW$171, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 481,column 1,is_stmt,address ||B0||,isa 0

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
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L72||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 488,column 9,is_stmt,isa 0
        MOVL      XAR7,@||B_Task_Ptr||  ; [CPU_ALU] |488| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 488,column 9,is_stmt,isa 0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_call
	.dwattr $C$DW$172, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |488| 
        ; call occurs [XAR7] ; [] |488| 
        MOVW      DP,#||vTimer1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 490,column 9,is_stmt,isa 0
        INC       @||vTimer1||          ; [CPU_ALU] |490| 
||$C$L72||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 493,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C0||          ; [CPU_ARAU] |493| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |493| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$171, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x1ee)
	.dwattr $C$DW$171, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$171

	.sect	".text:C0"
	.clink
	.global	||C0||

$C$DW$174	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$174, DW_AT_name("C0")
	.dwattr $C$DW$174, DW_AT_low_pc(||C0||)
	.dwattr $C$DW$174, DW_AT_high_pc(0x00)
	.dwattr $C$DW$174, DW_AT_linkage_name("C0")
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$174, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$174, DW_AT_decl_column(0x06)
	.dwattr $C$DW$174, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 1,is_stmt,address ||C0||,isa 0

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
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 401,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |401| 
        TBIT      AL,#15                ; [CPU_ALU] |401| 
        B         ||$C$L73||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 504,column 9,is_stmt,isa 0
        MOVL      XAR7,@||C_Task_Ptr||  ; [CPU_ALU] |504| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 504,column 9,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_call
	.dwattr $C$DW$175, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |504| 
        ; call occurs [XAR7] ; [] |504| 
        MOVW      DP,#||vTimer2||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 507,column 9,is_stmt,isa 0
        INC       @||vTimer2||          ; [CPU_ALU] |507| 
||$C$L73||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 510,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |510| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |510| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$174, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x1ff)
	.dwattr $C$DW$174, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$174

	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$177	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$177, DW_AT_name("main")
	.dwattr $C$DW$177, DW_AT_low_pc(||main||)
	.dwattr $C$DW$177, DW_AT_high_pc(0x00)
	.dwattr $C$DW$177, DW_AT_linkage_name("main")
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$177, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$177, DW_AT_decl_column(0x06)
	.dwattr $C$DW$177, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 232,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||

;***************************************************************
;* FNAME: main                          FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

||main||:
;* AR7   assigned to $O$C1
;* AR1   assigned to $O$C2
;* AL    assigned to $O$C3
;* AR2   assigned to $O$C4
;* AR1   assigned to $O$C5
;* AR5   assigned to $O$K19
;* AR2   assigned to $O$K19
;* AR5   assigned to handle
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("handle")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("base")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("base")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("base")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("base")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("base")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("base")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("base")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("base")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("base")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to handle
$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("handle")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("base")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("base")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("base")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("base")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("base")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("base")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("base")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("base")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("base")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 234,column 5,is_stmt,isa 0
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("Device_init")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |234| 
        ; call occurs [#||Device_init||] ; [] |234| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 237,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |237| 
        MOVL      XAR4,#||hal||         ; [CPU_ARAU] |237| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("HAL_init")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #||HAL_init||         ; [CPU_ALU] |237| 
        ; call occurs [#||HAL_init||] ; [] |237| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 240,column 5,is_stmt,isa 0
        MOVL      XAR1,#||halMtr||      ; [CPU_ARAU] |240| 
        MOVW      DP,#||halHandle||     ; [CPU_ARAU] 
        MOVB      ACC,#18               ; [CPU_ALU] |240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 237,column 5,is_stmt,isa 0
        MOVL      @||halHandle||,XAR4   ; [CPU_ALU] |237| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 240,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |240| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |240| 
        ; call occurs [#||HAL_MTR_init||] ; [] |240| 
        MOVL      XAR2,#||halMtrHandle|| ; [CPU_ARAU] |240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 244,column 5,is_stmt,isa 0
        ADDB      XAR1,#18              ; [CPU_ALU] |244| 
        MOVB      ACC,#18               ; [CPU_ALU] |244| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 240,column 5,is_stmt,isa 0
        MOVL      *+XAR2[0],XAR4        ; [CPU_FPU] |240| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 244,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |244| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |244| 
        ; call occurs [#||HAL_MTR_init||] ; [] |244| 
        MOVL      *+XAR2[2],XAR4        ; [CPU_ALU] |244| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1025,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1025| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1030| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1031,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1031| 
        MOVW      DP,#||halHandle||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 253,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halHandle||   ; [CPU_ALU] |253| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #||HAL_setParams||    ; [CPU_ALU] |253| 
        ; call occurs [#||HAL_setParams||] ; [] |253| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 256,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |256| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |256| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |256| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |259| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |259| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |259| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 265,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |265| 
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |265| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |265| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |265| 
        ; call occurs [#||initMotorParameters||] ; [] |265| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 268,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |268| 
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |268| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |268| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |268| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |268| 
        ; call occurs [#||initMotorParameters||] ; [] |268| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 271,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |271| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("initControlVars")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |271| 
        ; call occurs [#||initControlVars||] ; [] |271| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 274,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |274| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |274| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |274| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("initControlVars")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |274| 
        ; call occurs [#||initControlVars||] ; [] |274| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 277,column 5,is_stmt,isa 0
        MOVL      XAR1,#348             ; [CPU_ALU] |277| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 276,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |276| 
        MOVIZ     R0H,#16656            ; [CPU_FPU] |276| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 277,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16656            ; [CPU_FPU] |277| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 276,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |276| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 281,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |281| 
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |281| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 277,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R1H       ; [CPU_FPU] |277| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 281,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |281| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #||HAL_setupMotorFaultProtection|| ; [CPU_ALU] |281| 
        ; call occurs [#||HAL_setupMotorFaultProtection||] ; [] |281| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 285,column 5,is_stmt,isa 0
        MOVL      XAR0,#348             ; [CPU_ALU] |285| 
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |285| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |285| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #||HAL_setupMotorFaultProtection|| ; [CPU_ALU] |285| 
        ; call occurs [#||HAL_setupMotorFaultProtection||] ; [] |285| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 299,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |299| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("resetControlVars")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |299| 
        ; call occurs [#||resetControlVars||] ; [] |299| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 302,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |302| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |302| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |302| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |302| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |302| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |302| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("resetControlVars")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |302| 
        ; call occurs [#||resetControlVars||] ; [] |302| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |239| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        ADDL      ACC,@||halMtrHandle|| ; [CPU_ALU] |239| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |239| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4540| 
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |239| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h",line 239,column 1,is_stmt,isa 0
        ADDL      ACC,@||halMtrHandle||+2 ; [CPU_ALU] |239| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |239| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4540| 
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[4]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 362,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15948            ; [CPU_FPU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15820            ; [CPU_FPU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15820            ; [CPU_FPU] |364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 365,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15523            ; [CPU_FPU] |365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 369,column 5,is_stmt,isa 0
        MOVL      XAR0,#334             ; [CPU_ALU] |369| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      XAR4,#5000            ; [CPU_ARAU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 362,column 5,is_stmt,isa 0
        MOVXI     R0H,#52429            ; [CPU_FPU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOVXI     R3H,#52429            ; [CPU_FPU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 365,column 5,is_stmt,isa 0
        MOVXI     R1H,#55050            ; [CPU_FPU] |365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 369,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |369| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 362,column 5,is_stmt,isa 0
        MOVL      XAR0,#352             ; [CPU_ALU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 345,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |345| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 362,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 345,column 5,is_stmt,isa 0
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |345| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOVL      XAR0,#358             ; [CPU_ALU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 346,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |346| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 363,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |363| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 346,column 5,is_stmt,isa 0
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |346| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVIZ     R3H,#14979            ; [CPU_FPU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 364,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |364| 
        MOVW      DP,#||led1Cnt||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 365,column 5,is_stmt,isa 0
        MOVL      XAR0,#364             ; [CPU_ALU] |365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVXI     R3H,#4719             ; [CPU_FPU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 347,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |347| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 351,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15948            ; [CPU_FPU] |351| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 365,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVL      XAR0,#336             ; [CPU_ALU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15820            ; [CPU_FPU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 351,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |351| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 311,column 5,is_stmt,isa 0
        MOV       @||led1Cnt||,#0       ; [CPU_ALU] |311| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 312,column 5,is_stmt,isa 0
        MOV       @||led2Cnt||,#0       ; [CPU_ALU] |312| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 353,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15820            ; [CPU_FPU] |353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 351,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |351| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOVXI     R1H,#52429            ; [CPU_FPU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 347,column 5,is_stmt,isa 0
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |347| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 353,column 5,is_stmt,isa 0
        MOVXI     R3H,#52429            ; [CPU_FPU] |353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 348,column 5,is_stmt,isa 0
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |348| 
        MOVW      DP,#||posPtrMax||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 351,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |351| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 357,column 5,is_stmt,isa 0
        MOV32     R2H,@||posPtrMax||    ; [CPU_FPU] |357| 
        F32TOUI16 R0H,R2H               ; [CPU_FPU] |357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 358,column 5,is_stmt,isa 0
        MOVL      XAR4,#5000            ; [CPU_ARAU] |358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 357,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 358,column 5,is_stmt,isa 0
        MOVL      *+XAR2[2],XAR4        ; [CPU_ALU] |358| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 359,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14979            ; [CPU_FPU] |359| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |359| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 376,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 353,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 354,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15523            ; [CPU_FPU] |354| 
        MOVXI     R1H,#55050            ; [CPU_FPU] |354| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 359,column 5,is_stmt,isa 0
        MOV32     *+XAR2[4],R0H         ; [CPU_FPU] |359| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 353,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 368,column 5,is_stmt,isa 0
        MOVL      XAR0,#648             ; [CPU_ALU] |368| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |368| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 367,column 5,is_stmt,isa 0
        MOVL      XAR0,#649             ; [CPU_ALU] |367| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |367| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 371,column 5,is_stmt,isa 0
        MOVL      XAR0,#642             ; [CPU_ALU] |371| 
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |371| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 356,column 5,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |356| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |356| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 360,column 5,is_stmt,isa 0
        MOVL      XAR0,#310             ; [CPU_ALU] |360| 
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |360| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 354,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |354| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |354| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 357,column 5,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |357| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |357| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 376,column 5,is_stmt,isa 0
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_init||  ; [CPU_ALU] |376| 
        ; call occurs [#||DLOG_4CH_F_init||] ; [] |376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 378,column 5,is_stmt,isa 0
        MOVL      XAR3,#||dlogCh2||     ; [CPU_ARAU] |378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 379,column 5,is_stmt,isa 0
        MOVL      XAR1,#||dlogCh3||     ; [CPU_ARAU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |387| 
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 377,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlogCh1||     ; [CPU_ARAU] |377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOVL      XAR0,#||dlogCh4||     ; [CPU_ARAU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOVL      XAR7,#||DBUFF_4CH1||  ; [CPU_ARAU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 382,column 5,is_stmt,isa 0
        MOVL      XAR6,#||DBUFF_4CH2||  ; [CPU_ARAU] |382| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 383,column 5,is_stmt,isa 0
        MOVL      XAR5,#||DBUFF_4CH3||  ; [CPU_ARAU] |383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 398,column 11,is_stmt,isa 0
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |398| 
        MOVW      DP,#||dlog_4ch1||+23  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 377,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||),XAR4 ; [CPU_ALU] |377| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 385,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+23,#200,UNC ; [CPU_ALU] |385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 386,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+21,#5,UNC ; [CPU_ALU] |386| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 388,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+20,#2,UNC ; [CPU_ALU] |388| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 378,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+2,XAR3 ; [CPU_ALU] |378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 379,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+4,XAR1 ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 380,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+6,XAR0 ; [CPU_ALU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 381,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+8,XAR7 ; [CPU_ALU] |381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 382,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+10,XAR6 ; [CPU_ALU] |382| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 383,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+12,XAR5 ; [CPU_ALU] |383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 387,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||dlog_4ch1||)+18,R0H ; [CPU_FPU] |387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 384,column 5,is_stmt,isa 0
        MOVL      XAR4,#||DBUFF_4CH4||  ; [CPU_ARAU] |384| 
        MOVL      @$BLOCKED(||dlog_4ch1||)+14,XAR4 ; [CPU_ALU] |384| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 398,column 11,is_stmt,isa 0
        B         ||$C$L75||,NEQ        ; [CPU_ALU] |398| 
        ; branchcc occurs ; [] |398| 
||$C$L74||:    
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 400,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |400| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 398,column 11,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |398| 
        B         ||$C$L74||,EQ         ; [CPU_ALU] |398| 
        ; branchcc occurs ; [] |398| 
||$C$L75||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 404,column 11,is_stmt,isa 0
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |404| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |404| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |404| 
        MOVB      ACC,#8                ; [CPU_ALU] |404| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |404| 
        B         ||$C$L77||,EQ         ; [CPU_ALU] |404| 
        ; branchcc occurs ; [] |404| 
||$C$L76||:    
        MOVW      DP,#||backTicker||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 406,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |406| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 404,column 11,is_stmt,isa 0
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |404| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |404| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |404| 
        MOVB      ACC,#8                ; [CPU_ALU] |404| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |404| 
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |404| 
        ; branchcc occurs ; [] |404| 
||$C$L77||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 410,column 5,is_stmt,isa 0
        MOVL      XAR1,#||halMtrHandle|| ; [CPU_ARAU] |410| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |410| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |410| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |410| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 413,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[2]        ; [CPU_ALU] |413| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |413| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 416,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |416| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #||runOffsetsCalculation|| ; [CPU_ALU] |416| 
        ; call occurs [#||runOffsetsCalculation||] ; [] |416| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |416| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 419,column 5,is_stmt,isa 0
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #||runOffsetsCalculation|| ; [CPU_ALU] |419| 
        ; call occurs [#||runOffsetsCalculation||] ; [] |419| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 422,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |422| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |422| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |422| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 425,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |425| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |425| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |425| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 428,column 5,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |428| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |473| 
        MOVL      XAR0,#652             ; [CPU_ALU] |473| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOVL      XAR0,#660             ; [CPU_ALU] |429| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |429| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 428,column 5,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |428| 
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |428| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |473| 
 clrc INTM
 clrc DBGM
||$C$L78||:    
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 450,column 9,is_stmt,isa 0
        MOVL      XAR7,@||Alpha_State_Ptr|| ; [CPU_ALU] |450| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_call
	.dwattr $C$DW$222, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |450| 
        ; call occurs [XAR7] ; [] |450| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 453,column 9,is_stmt,isa 0
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("runSyncControl")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #||runSyncControl||   ; [CPU_ALU] |453| 
        ; call occurs [#||runSyncControl||] ; [] |453| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 454,column 5,is_stmt,isa 0
        B         ||$C$L78||,UNC        ; [CPU_ALU] |454| 
        ; branch occurs ; [] |454| 
	.dwattr $C$DW$177, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$177, DW_AT_TI_end_line(0x1c7)
	.dwattr $C$DW$177, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$177

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("__signbitl")
	.dwattr $C$DW$224, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$224, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$224, DW_AT_decl_column(0x18)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("e")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]


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
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("e")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg12]

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
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$229	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$229, DW_AT_name("__signbitf")
	.dwattr $C$DW$229, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$229, DW_AT_high_pc(0x00)
	.dwattr $C$DW$229, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$229, DW_AT_external
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$229, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$229, DW_AT_decl_column(0x18)
	.dwattr $C$DW$229, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_name("f")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$231	.dwtag  DW_TAG_variable
	.dwattr $C$DW$231, DW_AT_name("f")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$229, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$229, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$229, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$229

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$233	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$233, DW_AT_name("__signbit")
	.dwattr $C$DW$233, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$233, DW_AT_external
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$233, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$233, DW_AT_decl_column(0x18)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("d")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg12]


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
$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("d")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg12]

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
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$233, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$238	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$238, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$238, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$238, DW_AT_high_pc(0x00)
	.dwattr $C$DW$238, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$238, DW_AT_external
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$238, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x103)
	.dwattr $C$DW$238, DW_AT_decl_column(0x10)
	.dwattr $C$DW$238, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 260,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_name("x")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("x")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 261,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |261| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$238, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$238, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$238, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$238

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$242	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$242, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$242, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$242, DW_AT_high_pc(0x00)
	.dwattr $C$DW$242, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$242, DW_AT_external
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$242, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x108)
	.dwattr $C$DW$242, DW_AT_decl_column(0x10)
	.dwattr $C$DW$242, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$243	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$243, DW_AT_name("x")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("x")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$242, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$242, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$242

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$246	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$246, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$246, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$246, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$246, DW_AT_decl_column(0x10)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_name("y")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("x")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("y")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("x")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$246, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$252	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$252, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$252, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$252, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$252, DW_AT_decl_column(0x10)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$253	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$253, DW_AT_name("x")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("x")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$252, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$256	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$256, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$256, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$256, DW_AT_high_pc(0x00)
	.dwattr $C$DW$256, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$256, DW_AT_external
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$256, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x112)
	.dwattr $C$DW$256, DW_AT_decl_column(0x10)
	.dwattr $C$DW$256, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_name("x")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("x")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$256, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$256, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$256

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$260	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$260, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$260, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$260, DW_AT_high_pc(0x00)
	.dwattr $C$DW$260, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$260, DW_AT_external
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$260, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x117)
	.dwattr $C$DW$260, DW_AT_decl_column(0x10)
	.dwattr $C$DW$260, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$261	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$261, DW_AT_name("y")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$262	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$262, DW_AT_name("x")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$263	.dwtag  DW_TAG_variable
	.dwattr $C$DW$263, DW_AT_name("y")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$264	.dwtag  DW_TAG_variable
	.dwattr $C$DW$264, DW_AT_name("x")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$260, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$260, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$260, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$260

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$266	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$266, DW_AT_name("__isnormall")
	.dwattr $C$DW$266, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$266, DW_AT_high_pc(0x00)
	.dwattr $C$DW$266, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$266, DW_AT_external
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$266, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x167)
	.dwattr $C$DW$266, DW_AT_decl_column(0x18)
	.dwattr $C$DW$266, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$267	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$267, DW_AT_name("e")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg12]


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
$C$DW$268	.dwtag  DW_TAG_variable
	.dwattr $C$DW$268, DW_AT_name("e")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg12]

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
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |360| 
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
||$C$L79||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$266, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$266, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$266, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$266

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("__isnormalf")
	.dwattr $C$DW$271, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$271, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x163)
	.dwattr $C$DW$271, DW_AT_decl_column(0x18)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("f")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$273	.dwtag  DW_TAG_variable
	.dwattr $C$DW$273, DW_AT_name("f")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L80||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$275	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$275, DW_AT_name("__isnormal")
	.dwattr $C$DW$275, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$275, DW_AT_high_pc(0x00)
	.dwattr $C$DW$275, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$275, DW_AT_external
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$275, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$275, DW_AT_decl_column(0x18)
	.dwattr $C$DW$275, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$276	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$276, DW_AT_name("d")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg12]


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
$C$DW$277	.dwtag  DW_TAG_variable
	.dwattr $C$DW$277, DW_AT_name("d")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg12]

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
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |352| 
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
||$C$L81||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$275, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$275, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$275, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$275

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("__isnanl")
	.dwattr $C$DW$280, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$280, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$280, DW_AT_decl_column(0x18)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("e")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg12]


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
$C$DW$282	.dwtag  DW_TAG_variable
	.dwattr $C$DW$282, DW_AT_name("e")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L82||,NEQ        ; [CPU_ALU] |348| 
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
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L82||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$285	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$285, DW_AT_name("__isnanf")
	.dwattr $C$DW$285, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$285, DW_AT_high_pc(0x00)
	.dwattr $C$DW$285, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$285, DW_AT_external
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$285, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x158)
	.dwattr $C$DW$285, DW_AT_decl_column(0x18)
	.dwattr $C$DW$285, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("f")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("f")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L83||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L83||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$285, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$285, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$285

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$289	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$289, DW_AT_name("__isnan")
	.dwattr $C$DW$289, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$289, DW_AT_high_pc(0x00)
	.dwattr $C$DW$289, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$289, DW_AT_external
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$289, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x155)
	.dwattr $C$DW$289, DW_AT_decl_column(0x18)
	.dwattr $C$DW$289, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_name("d")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg12]


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
$C$DW$291	.dwtag  DW_TAG_variable
	.dwattr $C$DW$291, DW_AT_name("d")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L84||,NEQ        ; [CPU_ALU] |342| 
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
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$292, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L84||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$289, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$289, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$289

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$294	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$294, DW_AT_name("__isinfl")
	.dwattr $C$DW$294, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$294, DW_AT_high_pc(0x00)
	.dwattr $C$DW$294, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$294, DW_AT_external
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$294, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$294, DW_AT_decl_column(0x18)
	.dwattr $C$DW$294, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_name("e")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg12]


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
$C$DW$296	.dwtag  DW_TAG_variable
	.dwattr $C$DW$296, DW_AT_name("e")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L85||,NEQ        ; [CPU_ALU] |379| 
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
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$297, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L85||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$294, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$294, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$294, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$294

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$299	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$299, DW_AT_name("__isinff")
	.dwattr $C$DW$299, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$299, DW_AT_high_pc(0x00)
	.dwattr $C$DW$299, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$299, DW_AT_external
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$299, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x176)
	.dwattr $C$DW$299, DW_AT_decl_column(0x18)
	.dwattr $C$DW$299, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("f")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$301	.dwtag  DW_TAG_variable
	.dwattr $C$DW$301, DW_AT_name("f")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L86||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L86||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$299, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$299, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$299, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$299

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$303	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$303, DW_AT_name("__isinf")
	.dwattr $C$DW$303, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$303, DW_AT_high_pc(0x00)
	.dwattr $C$DW$303, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$303, DW_AT_external
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$303, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x178)
	.dwattr $C$DW$303, DW_AT_decl_column(0x18)
	.dwattr $C$DW$303, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$304	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$304, DW_AT_name("d")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg12]


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
$C$DW$305	.dwtag  DW_TAG_variable
	.dwattr $C$DW$305, DW_AT_name("d")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L87||,NEQ        ; [CPU_ALU] |377| 
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
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$306, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L87||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$303, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$303, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$303, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$303

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$308	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$308, DW_AT_name("__isfinitel")
	.dwattr $C$DW$308, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$308, DW_AT_high_pc(0x00)
	.dwattr $C$DW$308, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$308, DW_AT_external
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$308, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x152)
	.dwattr $C$DW$308, DW_AT_decl_column(0x18)
	.dwattr $C$DW$308, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$309	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$309, DW_AT_name("e")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg12]


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
$C$DW$310	.dwtag  DW_TAG_variable
	.dwattr $C$DW$310, DW_AT_name("e")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg12]

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
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$308, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$308, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$308, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$308

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$312	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$312, DW_AT_name("__isfinitef")
	.dwattr $C$DW$312, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$312, DW_AT_high_pc(0x00)
	.dwattr $C$DW$312, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$312, DW_AT_external
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$312, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x150)
	.dwattr $C$DW$312, DW_AT_decl_column(0x18)
	.dwattr $C$DW$312, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_name("f")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$314	.dwtag  DW_TAG_variable
	.dwattr $C$DW$314, DW_AT_name("f")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$312, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$312, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$312, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$312

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$316	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$316, DW_AT_name("__isfinite")
	.dwattr $C$DW$316, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$316, DW_AT_high_pc(0x00)
	.dwattr $C$DW$316, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$316, DW_AT_external
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$316, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$316, DW_AT_decl_column(0x18)
	.dwattr $C$DW$316, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$317	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$317, DW_AT_name("d")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg12]


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
$C$DW$318	.dwtag  DW_TAG_variable
	.dwattr $C$DW$318, DW_AT_name("d")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg12]

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
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$316, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$316, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$316, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$316

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$320	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$320, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$320, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$320, DW_AT_high_pc(0x00)
	.dwattr $C$DW$320, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$320, DW_AT_external
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$320, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$320, DW_AT_decl_column(0x18)
	.dwattr $C$DW$320, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$321	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$321, DW_AT_name("e")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$322	.dwtag  DW_TAG_variable
	.dwattr $C$DW$322, DW_AT_name("e")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$323	.dwtag  DW_TAG_variable
	.dwattr $C$DW$323, DW_AT_name("e")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |436| 
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
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$324, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L88||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L88||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L89||:    
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
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$325, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L90||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L90||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L91||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L91||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L92||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$320, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$320, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$320, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$320

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$328	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$328, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$328, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$328, DW_AT_high_pc(0x00)
	.dwattr $C$DW$328, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$328, DW_AT_external
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$328, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$328, DW_AT_decl_column(0x18)
	.dwattr $C$DW$328, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$329	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$329, DW_AT_name("f")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$330	.dwtag  DW_TAG_variable
	.dwattr $C$DW$330, DW_AT_name("f")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L94||,NEQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L93||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L93||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L94||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L95||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L95||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L96||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L96||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$328, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$328, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$328, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$328

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$336	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$336, DW_AT_name("__fpclassify")
	.dwattr $C$DW$336, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$336, DW_AT_high_pc(0x00)
	.dwattr $C$DW$336, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$336, DW_AT_external
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$336, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$336, DW_AT_decl_column(0x18)
	.dwattr $C$DW$336, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_name("d")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$338	.dwtag  DW_TAG_variable
	.dwattr $C$DW$338, DW_AT_name("d")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$339	.dwtag  DW_TAG_variable
	.dwattr $C$DW$339, DW_AT_name("d")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L98||,NEQ        ; [CPU_ALU] |419| 
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
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$340, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L97||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L101||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L97||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L101||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L98||:    
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
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$341, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L99||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L101||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L99||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$342, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L101||,UNC       ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L100||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L101||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$336, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$336, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$336, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$336

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
	.global	||initMotorParameters||
	.global	||initControlVars||
	.global	||HAL_setupMotorFaultProtection||
	.global	||resetControlVars||
	.global	||DLOG_4CH_F_init||
	.global	||HAL_setupInterrupts||
	.global	||runOffsetsCalculation||
	.global	||HAL_enableInterrupts||
	.global	||DLOG_4CH_F_FUNC||
	.global	||HAL_setupCMPSS_DACValue||
	.global	||SysCtl_delay||
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

$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$344	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$344, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$344, DW_AT_const_value(0x00)
	.dwattr $C$DW$344, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x40)
	.dwattr $C$DW$344, DW_AT_decl_column(0x05)

$C$DW$345	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$345, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$345, DW_AT_const_value(0x01)
	.dwattr $C$DW$345, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x41)
	.dwattr $C$DW$345, DW_AT_decl_column(0x05)

$C$DW$346	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$346, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$346, DW_AT_const_value(0x02)
	.dwattr $C$DW$346, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x42)
	.dwattr $C$DW$346, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$72, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$73


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102

$C$DW$T$102	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$347	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$347, DW_AT_name("MOTOR_STOP")
	.dwattr $C$DW$347, DW_AT_const_value(0x00)
	.dwattr $C$DW$347, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$347, DW_AT_decl_column(0x05)

$C$DW$348	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$348, DW_AT_name("MOTOR_RUN")
	.dwattr $C$DW$348, DW_AT_const_value(0x01)
	.dwattr $C$DW$348, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$348, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$102, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$102

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("MotorRunStop_e")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$349	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$349, DW_AT_name("CTRL_STOP")
	.dwattr $C$DW$349, DW_AT_const_value(0x00)
	.dwattr $C$DW$349, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x64)
	.dwattr $C$DW$349, DW_AT_decl_column(0x05)

$C$DW$350	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$350, DW_AT_name("CTRL_RUN")
	.dwattr $C$DW$350, DW_AT_const_value(0x01)
	.dwattr $C$DW$350, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x65)
	.dwattr $C$DW$350, DW_AT_decl_column(0x05)

$C$DW$351	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$351, DW_AT_name("CTRL_BRAKE")
	.dwattr $C$DW$351, DW_AT_const_value(0x02)
	.dwattr $C$DW$351, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x66)
	.dwattr $C$DW$351, DW_AT_decl_column(0x05)

$C$DW$352	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$352, DW_AT_name("CTRL_RESET")
	.dwattr $C$DW$352, DW_AT_const_value(0x03)
	.dwattr $C$DW$352, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x67)
	.dwattr $C$DW$352, DW_AT_decl_column(0x05)

$C$DW$353	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$353, DW_AT_name("CTRL_FAULT")
	.dwattr $C$DW$353, DW_AT_const_value(0x04)
	.dwattr $C$DW$353, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x68)
	.dwattr $C$DW$353, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$104, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("CtrlState_e")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$105


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$354, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$354, DW_AT_const_value(0x00)
	.dwattr $C$DW$354, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x126)
	.dwattr $C$DW$354, DW_AT_decl_column(0x05)

$C$DW$355	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$355, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$355, DW_AT_const_value(0x01)
	.dwattr $C$DW$355, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x127)
	.dwattr $C$DW$355, DW_AT_decl_column(0x05)

$C$DW$356	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$356, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$356, DW_AT_const_value(0x02)
	.dwattr $C$DW$356, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x128)
	.dwattr $C$DW$356, DW_AT_decl_column(0x05)

$C$DW$357	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$357, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$357, DW_AT_const_value(0x03)
	.dwattr $C$DW$357, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x129)
	.dwattr $C$DW$357, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$108, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109
$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$358	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$358, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$358, DW_AT_const_value(0x00)
	.dwattr $C$DW$358, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x183)
	.dwattr $C$DW$358, DW_AT_decl_column(0x05)

$C$DW$359	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$359, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$359, DW_AT_const_value(0x200)
	.dwattr $C$DW$359, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x184)
	.dwattr $C$DW$359, DW_AT_decl_column(0x05)

$C$DW$360	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$360, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$360, DW_AT_const_value(0x300)
	.dwattr $C$DW$360, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x185)
	.dwattr $C$DW$360, DW_AT_decl_column(0x05)

$C$DW$361	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$361, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$361, DW_AT_const_value(0x400)
	.dwattr $C$DW$361, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x186)
	.dwattr $C$DW$361, DW_AT_decl_column(0x05)

$C$DW$362	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$362, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$362, DW_AT_const_value(0x500)
	.dwattr $C$DW$362, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x187)
	.dwattr $C$DW$362, DW_AT_decl_column(0x05)

$C$DW$363	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$363, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$363, DW_AT_const_value(0x1000)
	.dwattr $C$DW$363, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x188)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)

$C$DW$364	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$364, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$364, DW_AT_const_value(0x1200)
	.dwattr $C$DW$364, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x189)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)

$C$DW$365	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$365, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$365, DW_AT_const_value(0x1300)
	.dwattr $C$DW$365, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$365, DW_AT_decl_column(0x05)

$C$DW$366	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$366, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$366, DW_AT_const_value(0x01)
	.dwattr $C$DW$366, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$366, DW_AT_decl_column(0x05)

$C$DW$367	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$367, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$367, DW_AT_const_value(0x101)
	.dwattr $C$DW$367, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$367, DW_AT_decl_column(0x05)

$C$DW$368	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$368, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$368, DW_AT_const_value(0x02)
	.dwattr $C$DW$368, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)

$C$DW$369	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$369, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$369, DW_AT_const_value(0x102)
	.dwattr $C$DW$369, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)

$C$DW$370	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$370, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$370, DW_AT_const_value(0x202)
	.dwattr $C$DW$370, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)

$C$DW$371	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$371, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$371, DW_AT_const_value(0x302)
	.dwattr $C$DW$371, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x190)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)

$C$DW$372	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$372, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$372, DW_AT_const_value(0x402)
	.dwattr $C$DW$372, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x191)
	.dwattr $C$DW$372, DW_AT_decl_column(0x05)

$C$DW$373	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$373, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$373, DW_AT_const_value(0x502)
	.dwattr $C$DW$373, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x192)
	.dwattr $C$DW$373, DW_AT_decl_column(0x05)

$C$DW$374	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$374, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$374, DW_AT_const_value(0x602)
	.dwattr $C$DW$374, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x193)
	.dwattr $C$DW$374, DW_AT_decl_column(0x05)

$C$DW$375	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$375, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$375, DW_AT_const_value(0x702)
	.dwattr $C$DW$375, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x194)
	.dwattr $C$DW$375, DW_AT_decl_column(0x05)

$C$DW$376	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$376, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$376, DW_AT_const_value(0x802)
	.dwattr $C$DW$376, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x195)
	.dwattr $C$DW$376, DW_AT_decl_column(0x05)

$C$DW$377	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$377, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$377, DW_AT_const_value(0x902)
	.dwattr $C$DW$377, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x196)
	.dwattr $C$DW$377, DW_AT_decl_column(0x05)

$C$DW$378	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$378, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$378, DW_AT_const_value(0xa02)
	.dwattr $C$DW$378, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x197)
	.dwattr $C$DW$378, DW_AT_decl_column(0x05)

$C$DW$379	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$379, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$379, DW_AT_const_value(0xb02)
	.dwattr $C$DW$379, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x198)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)

$C$DW$380	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$380, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$380, DW_AT_const_value(0x03)
	.dwattr $C$DW$380, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x199)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)

$C$DW$381	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$381, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$381, DW_AT_const_value(0x103)
	.dwattr $C$DW$381, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$381, DW_AT_decl_column(0x05)

$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$382, DW_AT_const_value(0x203)
	.dwattr $C$DW$382, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$383, DW_AT_const_value(0x303)
	.dwattr $C$DW$383, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$383, DW_AT_decl_column(0x05)

$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$384, DW_AT_const_value(0x403)
	.dwattr $C$DW$384, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$384, DW_AT_decl_column(0x05)

$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$385, DW_AT_const_value(0x503)
	.dwattr $C$DW$385, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$385, DW_AT_decl_column(0x05)

$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$386, DW_AT_const_value(0x04)
	.dwattr $C$DW$386, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$386, DW_AT_decl_column(0x05)

$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$387, DW_AT_const_value(0x104)
	.dwattr $C$DW$387, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$387, DW_AT_decl_column(0x05)

$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$388, DW_AT_const_value(0x204)
	.dwattr $C$DW$388, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$389, DW_AT_const_value(0x06)
	.dwattr $C$DW$389, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$390, DW_AT_const_value(0x106)
	.dwattr $C$DW$390, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$391, DW_AT_const_value(0x07)
	.dwattr $C$DW$391, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$392, DW_AT_const_value(0x107)
	.dwattr $C$DW$392, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$393, DW_AT_const_value(0x207)
	.dwattr $C$DW$393, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$394, DW_AT_const_value(0x307)
	.dwattr $C$DW$394, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$395, DW_AT_const_value(0x08)
	.dwattr $C$DW$395, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$396, DW_AT_const_value(0x108)
	.dwattr $C$DW$396, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$397, DW_AT_const_value(0x208)
	.dwattr $C$DW$397, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$398, DW_AT_const_value(0x09)
	.dwattr $C$DW$398, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$399, DW_AT_const_value(0x109)
	.dwattr $C$DW$399, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$400, DW_AT_const_value(0x0a)
	.dwattr $C$DW$400, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$401, DW_AT_const_value(0x10a)
	.dwattr $C$DW$401, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$402, DW_AT_const_value(0x0b)
	.dwattr $C$DW$402, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$403, DW_AT_const_value(0x10b)
	.dwattr $C$DW$403, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$404, DW_AT_const_value(0x100b)
	.dwattr $C$DW$404, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$405, DW_AT_const_value(0x0c)
	.dwattr $C$DW$405, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$406, DW_AT_const_value(0x0d)
	.dwattr $C$DW$406, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$407, DW_AT_const_value(0x10d)
	.dwattr $C$DW$407, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$408, DW_AT_const_value(0x20d)
	.dwattr $C$DW$408, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$409, DW_AT_const_value(0x30d)
	.dwattr $C$DW$409, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$410, DW_AT_const_value(0x0e)
	.dwattr $C$DW$410, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$410, DW_AT_decl_column(0x05)

$C$DW$411	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$411, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$411, DW_AT_const_value(0x10e)
	.dwattr $C$DW$411, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$411, DW_AT_decl_column(0x05)

$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$412, DW_AT_const_value(0x20e)
	.dwattr $C$DW$412, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$412, DW_AT_decl_column(0x05)

$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$413, DW_AT_const_value(0x30e)
	.dwattr $C$DW$413, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$414, DW_AT_const_value(0x40e)
	.dwattr $C$DW$414, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$415, DW_AT_const_value(0x50e)
	.dwattr $C$DW$415, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$416, DW_AT_const_value(0x60e)
	.dwattr $C$DW$416, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$417, DW_AT_const_value(0x70e)
	.dwattr $C$DW$417, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$418, DW_AT_const_value(0x1010)
	.dwattr $C$DW$418, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$419, DW_AT_const_value(0x1110)
	.dwattr $C$DW$419, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$420, DW_AT_const_value(0x1210)
	.dwattr $C$DW$420, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$110, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("MTR_1")
	.dwattr $C$DW$421, DW_AT_const_value(0x00)
	.dwattr $C$DW$421, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$421, DW_AT_decl_column(0x03)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("MTR_2")
	.dwattr $C$DW$422, DW_AT_const_value(0x01)
	.dwattr $C$DW$422, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$422, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$112, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("MOTOR_Num_e")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$113


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("Freq")
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x29)
	.dwattr $C$DW$423, DW_AT_decl_column(0x1d)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$424, DW_AT_decl_column(0x11)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("Angle")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$425, DW_AT_decl_column(0x11)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("Gain")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$426, DW_AT_decl_column(0x11)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("Out")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$427, DW_AT_decl_column(0x11)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("Offset")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$428, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("RAMPGEN")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$114, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$T$115	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$115


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("TargetValue")
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0f)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$430, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0f)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0f)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0f)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$433, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0c)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("SetpointValue")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x30)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$435, DW_AT_name("EqualFlag")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x31)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("Tmp")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x32)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$91, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$91


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x14)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("ElecTheta")
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$437, DW_AT_decl_column(0x12)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$438, DW_AT_name("DirectionQep")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$438, DW_AT_decl_column(0x11)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$439, DW_AT_decl_column(0x12)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("Speed")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$440, DW_AT_decl_column(0x12)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$441, DW_AT_name("BaseRpm")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$441, DW_AT_decl_column(0x11)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("K1")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x30)
	.dwattr $C$DW$442, DW_AT_decl_column(0x12)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("K2")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x31)
	.dwattr $C$DW$443, DW_AT_decl_column(0x12)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("K3")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x32)
	.dwattr $C$DW$444, DW_AT_decl_column(0x12)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$445, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x33)
	.dwattr $C$DW$445, DW_AT_decl_column(0x10)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("Tmp")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x34)
	.dwattr $C$DW$446, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$95, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$95


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x0a)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("Ref")
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$447, DW_AT_decl_column(0x1e)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("Fbk")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$448, DW_AT_decl_column(0x12)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("Out")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$449, DW_AT_decl_column(0x12)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("c1")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$450, DW_AT_decl_column(0x12)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("c2")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$451, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$30


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0e)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("Kr")
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x32)
	.dwattr $C$DW$452, DW_AT_decl_column(0x1e)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("Kp")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x33)
	.dwattr $C$DW$453, DW_AT_decl_column(0x12)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("Ki")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x34)
	.dwattr $C$DW$454, DW_AT_decl_column(0x12)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("Kd")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x35)
	.dwattr $C$DW$455, DW_AT_decl_column(0x12)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("Km")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x36)
	.dwattr $C$DW$456, DW_AT_decl_column(0x12)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("Umax")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x37)
	.dwattr $C$DW$457, DW_AT_decl_column(0x12)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("Umin")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x38)
	.dwattr $C$DW$458, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$31


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x10)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("up")
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$459, DW_AT_decl_column(0x1e)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("ui")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$460, DW_AT_decl_column(0x12)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("ud")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$461, DW_AT_decl_column(0x12)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("v1")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$462, DW_AT_decl_column(0x12)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("i1")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$463, DW_AT_decl_column(0x12)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("d1")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x40)
	.dwattr $C$DW$464, DW_AT_decl_column(0x12)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("d2")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x41)
	.dwattr $C$DW$465, DW_AT_decl_column(0x12)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("w1")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x42)
	.dwattr $C$DW$466, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x28)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$467, DW_AT_name("term")
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x46)
	.dwattr $C$DW$467, DW_AT_decl_column(0x21)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$468, DW_AT_name("param")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x47)
	.dwattr $C$DW$468, DW_AT_decl_column(0x16)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$469, DW_AT_name("data")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x48)
	.dwattr $C$DW$469, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$97, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$97


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x1a)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$470, DW_AT_name("input_ptr1")
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0d)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$471, DW_AT_name("input_ptr2")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0d)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$472, DW_AT_name("input_ptr3")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0d)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$473, DW_AT_name("input_ptr4")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0d)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$474, DW_AT_name("output_ptr1")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x40)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0d)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$475, DW_AT_name("output_ptr2")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x41)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0d)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$476, DW_AT_name("output_ptr3")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x42)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0d)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$477, DW_AT_name("output_ptr4")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x43)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0d)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("prev_value")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x44)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("trig_value")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x45)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$480, DW_AT_name("status")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x46)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0a)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$481, DW_AT_name("pre_scalar")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x47)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0a)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$482, DW_AT_name("skip_count")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x48)
	.dwattr $C$DW$482, DW_AT_decl_column(0x0a)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$483, DW_AT_name("size")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x49)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0a)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$484, DW_AT_name("count")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("DLOG_4CH_F")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$120, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$121


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0a)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("As")
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$485, DW_AT_decl_column(0x1e)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("Bs")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$486, DW_AT_decl_column(0x12)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("Cs")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$487, DW_AT_decl_column(0x12)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("Alpha")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$488, DW_AT_decl_column(0x12)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("Beta")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$489, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$38, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$92, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$92


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0e)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("Alpha")
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x29)
	.dwattr $C$DW$490, DW_AT_decl_column(0x1e)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("Beta")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$491, DW_AT_decl_column(0x12)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("Angle")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$492, DW_AT_decl_column(0x12)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("Ds")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$493, DW_AT_decl_column(0x12)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("Qs")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$494, DW_AT_decl_column(0x12)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("Sine")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$495, DW_AT_decl_column(0x12)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("Cosine")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$496, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$39, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("PARK")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$93, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$93


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x0e)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("Alpha")
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x29)
	.dwattr $C$DW$497, DW_AT_decl_column(0x1e)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("Beta")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$498, DW_AT_decl_column(0x12)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("Angle")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$499, DW_AT_decl_column(0x12)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("Ds")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$500, DW_AT_decl_column(0x12)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("Qs")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$501, DW_AT_decl_column(0x12)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("Sine")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$502, DW_AT_decl_column(0x12)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("Cosine")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$503, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$40, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("IPARK")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$94, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$94


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x16)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("ref")
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x18)
	.dwattr $C$DW$504, DW_AT_decl_column(0x10)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("fbk")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x19)
	.dwattr $C$DW$505, DW_AT_decl_column(0x10)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("err")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$506, DW_AT_decl_column(0x10)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("out")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$507, DW_AT_decl_column(0x10)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("carryOver")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$508, DW_AT_decl_column(0x10)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("Kp")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$509, DW_AT_decl_column(0x10)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("Ki")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$510, DW_AT_decl_column(0x10)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("Kerr")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$511, DW_AT_decl_column(0x10)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("KerrOld")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x20)
	.dwattr $C$DW$512, DW_AT_decl_column(0x10)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("Umax")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x21)
	.dwattr $C$DW$513, DW_AT_decl_column(0x10)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("Umin")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x22)
	.dwattr $C$DW$514, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$76, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x18)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("Ref")
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$515, DW_AT_decl_column(0x1e)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("Fbk")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$516, DW_AT_decl_column(0x12)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("Out")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$517, DW_AT_decl_column(0x12)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("Kp")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$518, DW_AT_decl_column(0x12)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("Ki")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$519, DW_AT_decl_column(0x12)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("Umax")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$520, DW_AT_decl_column(0x12)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("Umin")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x30)
	.dwattr $C$DW$521, DW_AT_decl_column(0x12)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("up")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x31)
	.dwattr $C$DW$522, DW_AT_decl_column(0x12)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("ui")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x32)
	.dwattr $C$DW$523, DW_AT_decl_column(0x12)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("v1")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x33)
	.dwattr $C$DW$524, DW_AT_decl_column(0x12)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("i1")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x34)
	.dwattr $C$DW$525, DW_AT_decl_column(0x12)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("w1")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x35)
	.dwattr $C$DW$526, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$96, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$96


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0c)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("Freq")
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x25)
	.dwattr $C$DW$527, DW_AT_decl_column(0x1d)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x26)
	.dwattr $C$DW$528, DW_AT_decl_column(0x1d)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("Angle")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x27)
	.dwattr $C$DW$529, DW_AT_decl_column(0x1d)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("Gain")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x28)
	.dwattr $C$DW$530, DW_AT_decl_column(0x1d)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("Out")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x29)
	.dwattr $C$DW$531, DW_AT_decl_column(0x1d)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("Offset")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$532, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$75, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$75


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x12)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("ElecTheta")
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0f)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("MechTheta")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0f)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$535, DW_AT_name("DirectionQep")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0f)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$536, DW_AT_name("QepPeriod")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$536, DW_AT_decl_column(0x0f)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$537, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x21)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0f)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$538, DW_AT_name("RawTheta")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x22)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0f)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("MechScaler")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x23)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0f)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$540, DW_AT_name("LineEncoder")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x24)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0f)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$541, DW_AT_name("PolePairs")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x25)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0f)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$542, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x26)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0f)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$543, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x28)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77
$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("QEP")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$77, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$77


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x12)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("Ualpha")
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$544, DW_AT_decl_column(0x10)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("Ubeta")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$545, DW_AT_decl_column(0x10)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("Ta")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$546, DW_AT_decl_column(0x10)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("Tb")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$547, DW_AT_decl_column(0x10)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("Tc")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$548, DW_AT_decl_column(0x10)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("tmp1")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x30)
	.dwattr $C$DW$549, DW_AT_decl_column(0x10)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("tmp2")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x31)
	.dwattr $C$DW$550, DW_AT_decl_column(0x10)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("tmp3")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x32)
	.dwattr $C$DW$551, DW_AT_decl_column(0x10)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$552, DW_AT_name("VecSector")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x33)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$47, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$101, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$101


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$553, DW_AT_name("ADCINT1")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x62)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0c)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$554, DW_AT_name("ADCINT2")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x63)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$555, DW_AT_name("ADCINT3")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x64)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$556, DW_AT_name("ADCINT4")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x65)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$557, DW_AT_name("rsvd1")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$557, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x66)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$558, DW_AT_name("all")
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0d)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$559, DW_AT_name("bit")
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$559, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$50, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$560	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$50)

$C$DW$T$89	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$560)

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$90


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x22)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$561, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$561, DW_AT_decl_column(0x2e)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$562, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$562, DW_AT_decl_column(0x2e)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$563, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$563, DW_AT_decl_column(0x2e)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$564, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0xde)
	.dwattr $C$DW$564, DW_AT_decl_column(0x2e)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$565, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$565, DW_AT_decl_column(0x2e)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$566, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$566, DW_AT_decl_column(0x2e)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$567, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$567, DW_AT_decl_column(0x2e)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$568, DW_AT_name("QUTMR")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$568, DW_AT_decl_column(0x2e)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$569, DW_AT_name("QUPRD")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$569, DW_AT_decl_column(0x2e)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$570, DW_AT_name("QWDTMR")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$570, DW_AT_decl_column(0x2e)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$571, DW_AT_name("QWDPRD")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$571, DW_AT_decl_column(0x2e)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$572, DW_AT_name("QDECCTL")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$572, DW_AT_decl_column(0x2e)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$573, DW_AT_name("QEPCTL")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$573, DW_AT_decl_column(0x2e)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$574, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$574, DW_AT_decl_column(0x2e)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$575, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$575, DW_AT_decl_column(0x2e)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$576, DW_AT_name("QEINT")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0xea)
	.dwattr $C$DW$576, DW_AT_decl_column(0x2e)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$577, DW_AT_name("QFLG")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$577, DW_AT_decl_column(0x2e)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$578, DW_AT_name("QCLR")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0xec)
	.dwattr $C$DW$578, DW_AT_decl_column(0x2e)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$579, DW_AT_name("QFRC")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0xed)
	.dwattr $C$DW$579, DW_AT_decl_column(0x2e)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$580, DW_AT_name("QEPSTS")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0xee)
	.dwattr $C$DW$580, DW_AT_decl_column(0x2e)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$581, DW_AT_name("QCTMR")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0xef)
	.dwattr $C$DW$581, DW_AT_decl_column(0x2e)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$582, DW_AT_name("QCPRD")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$582, DW_AT_decl_column(0x2e)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$583, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$583, DW_AT_decl_column(0x2e)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$584, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$584, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$52, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$585	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$52)

$C$DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$585)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$79


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$586, DW_AT_name("UPPS")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$586, DW_AT_bit_size(0x04)
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0c)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$587, DW_AT_name("CCPS")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$587, DW_AT_bit_size(0x03)
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0c)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$588, DW_AT_name("rsvd1")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$588, DW_AT_bit_size(0x08)
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0c)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$589, DW_AT_name("CEN")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x60)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$590, DW_AT_name("all")
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x64)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0d)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$591, DW_AT_name("bit")
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x65)
	.dwattr $C$DW$591, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$54, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$592, DW_AT_name("INT")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0c)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$593, DW_AT_name("PCE")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0c)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$594, DW_AT_name("PHE")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0c)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$595, DW_AT_name("QDC")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0c)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$596, DW_AT_name("WTO")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0c)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$597, DW_AT_name("PCU")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0c)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$598, DW_AT_name("PCO")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0c)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$599, DW_AT_name("PCR")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0c)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$600, DW_AT_name("PCM")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$600, DW_AT_decl_column(0x0c)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$601, DW_AT_name("SEL")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0c)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$602, DW_AT_name("IEL")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0c)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$603, DW_AT_name("UTO")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0xab)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0c)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$604, DW_AT_name("rsvd1")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$604, DW_AT_bit_size(0x04)
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0xac)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$605, DW_AT_name("all")
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$605, DW_AT_decl_column(0x0d)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$606, DW_AT_name("bit")
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$606, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$56, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$607, DW_AT_name("rsvd1")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$607, DW_AT_bit_size(0x05)
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x37)
	.dwattr $C$DW$607, DW_AT_decl_column(0x0c)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$608, DW_AT_name("QSP")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x38)
	.dwattr $C$DW$608, DW_AT_decl_column(0x0c)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$609, DW_AT_name("QIP")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x39)
	.dwattr $C$DW$609, DW_AT_decl_column(0x0c)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$610, DW_AT_name("QBP")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$611, DW_AT_name("QAP")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$612, DW_AT_name("IGATE")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$613, DW_AT_name("SWAP")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$614, DW_AT_name("XCR")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$615, DW_AT_name("SPSEL")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0c)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$616, DW_AT_name("SOEN")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x40)
	.dwattr $C$DW$616, DW_AT_decl_column(0x0c)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$617, DW_AT_name("QSRC")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$617, DW_AT_bit_size(0x02)
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x41)
	.dwattr $C$DW$617, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$618, DW_AT_name("all")
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x45)
	.dwattr $C$DW$618, DW_AT_decl_column(0x0d)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$619, DW_AT_name("bit")
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x46)
	.dwattr $C$DW$619, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$58, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$620, DW_AT_name("rsvd1")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x76)
	.dwattr $C$DW$620, DW_AT_decl_column(0x0c)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$621, DW_AT_name("PCE")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x77)
	.dwattr $C$DW$621, DW_AT_decl_column(0x0c)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$622, DW_AT_name("QPE")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x78)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0c)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$623, DW_AT_name("QDC")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x79)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0c)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$624, DW_AT_name("WTO")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$624, DW_AT_decl_column(0x0c)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$625, DW_AT_name("PCU")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$625, DW_AT_decl_column(0x0c)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$626, DW_AT_name("PCO")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0c)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$627, DW_AT_name("PCR")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0c)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$628, DW_AT_name("PCM")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0c)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$629, DW_AT_name("SEL")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0c)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$630, DW_AT_name("IEL")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x80)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0c)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$631, DW_AT_name("UTO")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x81)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0c)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$632, DW_AT_name("rsvd2")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$632, DW_AT_bit_size(0x04)
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x82)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$59, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$633, DW_AT_name("all")
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x86)
	.dwattr $C$DW$633, DW_AT_decl_column(0x0d)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$634, DW_AT_name("bit")
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x87)
	.dwattr $C$DW$634, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$60, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$635, DW_AT_name("WDE")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$635, DW_AT_decl_column(0x0c)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$636, DW_AT_name("UTE")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$636, DW_AT_decl_column(0x0c)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$637, DW_AT_name("QCLM")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$637, DW_AT_decl_column(0x0c)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$638, DW_AT_name("QPEN")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0c)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$639, DW_AT_name("IEL")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$639, DW_AT_bit_size(0x02)
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0c)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$640, DW_AT_name("SEL")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0c)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$641, DW_AT_name("SWI")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x50)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0c)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$642, DW_AT_name("IEI")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$642, DW_AT_bit_size(0x02)
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x51)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0c)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$643, DW_AT_name("SEI")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$643, DW_AT_bit_size(0x02)
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x52)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0c)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$644, DW_AT_name("PCRM")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$644, DW_AT_bit_size(0x02)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x53)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$645, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$645, DW_AT_bit_size(0x02)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x54)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$61, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$646, DW_AT_name("all")
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x58)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0d)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$647, DW_AT_name("bit")
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x59)
	.dwattr $C$DW$647, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$62, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$648, DW_AT_name("PCEF")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0xca)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$649, DW_AT_name("FIMF")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$650, DW_AT_name("CDEF")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$651, DW_AT_name("COEF")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$652, DW_AT_name("QDLF")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0xce)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$653, DW_AT_name("QDF")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0c)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$654, DW_AT_name("FIDF")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0c)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$655, DW_AT_name("UPEVNT")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$656, DW_AT_name("rsvd1")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$656, DW_AT_bit_size(0x08)
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$63, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$657, DW_AT_name("all")
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0d)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$658, DW_AT_name("bit")
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$658, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$64, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$659, DW_AT_name("INT")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$660, DW_AT_name("PCE")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$661, DW_AT_name("PHE")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$662, DW_AT_name("QDC")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$663, DW_AT_name("WTO")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$664, DW_AT_name("PCU")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x90)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$665, DW_AT_name("PCO")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x91)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$666, DW_AT_name("PCR")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x92)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$667, DW_AT_name("PCM")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x93)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$668, DW_AT_name("SEL")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x94)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$669, DW_AT_name("IEL")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x95)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$670, DW_AT_name("UTO")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x96)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$671, DW_AT_name("rsvd1")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$671, DW_AT_bit_size(0x04)
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x97)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$65, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$672, DW_AT_name("all")
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0d)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$673, DW_AT_name("bit")
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$673, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$66, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$674, DW_AT_name("rsvd1")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$675, DW_AT_name("PCE")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$676, DW_AT_name("PHE")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0c)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$677, DW_AT_name("QDC")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$678, DW_AT_name("WTO")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$679, DW_AT_name("PCU")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xba)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$680, DW_AT_name("PCO")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$681, DW_AT_name("PCR")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$682, DW_AT_name("PCM")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$683, DW_AT_name("SEL")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$684, DW_AT_name("IEL")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$685, DW_AT_name("UTO")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$686, DW_AT_name("rsvd2")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$686, DW_AT_bit_size(0x04)
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$67, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$687, DW_AT_name("all")
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0d)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$688, DW_AT_name("bit")
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$688, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$68, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$689, DW_AT_name("PCSPW")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$689, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x69)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$690, DW_AT_name("PCE")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$691, DW_AT_name("PCPOL")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$692, DW_AT_name("PCLOAD")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$693, DW_AT_name("PCSHDW")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$69, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$694, DW_AT_name("all")
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x71)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0d)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$695, DW_AT_name("bit")
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x72)
	.dwattr $C$DW$695, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$70, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x1e)
$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("carrierMid")
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x38)
	.dwattr $C$DW$696, DW_AT_decl_column(0x11)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("adcScale")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x39)
	.dwattr $C$DW$697, DW_AT_decl_column(0x11)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$698, DW_AT_decl_column(0x11)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("tSamp")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$699, DW_AT_decl_column(0x11)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("Rd")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$700, DW_AT_decl_column(0x11)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("Rq")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$701, DW_AT_decl_column(0x11)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("Ld")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$702, DW_AT_decl_column(0x11)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("Lq")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x40)
	.dwattr $C$DW$703, DW_AT_decl_column(0x11)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("Vbase")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x41)
	.dwattr $C$DW$704, DW_AT_decl_column(0x11)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("Ibase")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x42)
	.dwattr $C$DW$705, DW_AT_decl_column(0x11)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("wccD")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x43)
	.dwattr $C$DW$706, DW_AT_decl_column(0x11)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("wccQ")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x44)
	.dwattr $C$DW$707, DW_AT_decl_column(0x11)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("Vdcbus")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x45)
	.dwattr $C$DW$708, DW_AT_decl_column(0x11)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("BemfK")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x46)
	.dwattr $C$DW$709, DW_AT_decl_column(0x11)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("Wbase")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x47)
	.dwattr $C$DW$710, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$71, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$98, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("_FCL_Vars_t_")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x52)
$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$711, DW_AT_name("lsw")
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$711, DW_AT_decl_column(0x12)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$712, DW_AT_name("Q_cla")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x81)
	.dwattr $C$DW$712, DW_AT_decl_column(0x11)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("speedWePrev")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x82)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0f)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("pangle")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x83)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0f)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$715, DW_AT_name("rg")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x84)
	.dwattr $C$DW$715, DW_AT_decl_column(0x12)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$716, DW_AT_name("pi_iq")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x85)
	.dwattr $C$DW$716, DW_AT_decl_column(0x18)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$717, DW_AT_name("qep")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x86)
	.dwattr $C$DW$717, DW_AT_decl_column(0x09)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$718, DW_AT_name("ptrQEP")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x87)
	.dwattr $C$DW$718, DW_AT_decl_column(0x20)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$719, DW_AT_name("taskCount")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x88)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$81, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("FCL_Vars_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$99, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$100


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$123, DW_AT_byte_size(0xa4)
$C$DW$720	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$720, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("_HAL_MTR_Obj_")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x12)
$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$721, DW_AT_name("pwmHandle")
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0d)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$722, DW_AT_name("cmpssHandle")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0d)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$723, DW_AT_name("spiHandle")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0d)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$724, DW_AT_name("qepHandle")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0d)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$725, DW_AT_name("flagEnablePWM")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$84, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("HAL_MTR_Obj")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$126, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x24)
$C$DW$726	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$726, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129
$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("HAL_MTR_Handle")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$727	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$129)

$C$DW$T$130	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$727)

	.dwendtag $C$DW$TU$130


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134

$C$DW$T$134	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x04)
$C$DW$728	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$728, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$134

	.dwendtag $C$DW$TU$134


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("_HAL_Obj_")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x22)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$729, DW_AT_name("claHandle")
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x87)
	.dwattr $C$DW$729, DW_AT_decl_column(0x11)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$730, DW_AT_name("timerHandle")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x89)
	.dwattr $C$DW$730, DW_AT_decl_column(0x11)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$731, DW_AT_name("sciHandle")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$731, DW_AT_decl_column(0x11)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$732, DW_AT_name("dacHandle")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$732, DW_AT_decl_column(0x11)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$733, DW_AT_name("adcHandle")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$733, DW_AT_decl_column(0x11)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$734, DW_AT_name("adcResult")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x90)
	.dwattr $C$DW$734, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$86, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$141	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$141
$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("HAL_Obj")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$141, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$141


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142
$C$DW$T$142	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$142, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$142


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143
$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("HAL_Handle")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$143


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("_MOTOR_Vars_t_")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x14c)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$735, DW_AT_name("posCntr")
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x139)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0e)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$736, DW_AT_name("posCntrMax")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0e)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("posSlewRate")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0f)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("baseFreq")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0f)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("poles")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0f)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("Ts")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x140)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0f)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("maxModIndex")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x141)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0f)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("voltageLimit")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x143)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0f)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("currentLimit")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x144)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0f)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("tempIdRef")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x146)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0f)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("IdRef_start")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x147)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0f)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("IdRef_run")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x148)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0f)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("IdRef")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x149)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0f)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("IqRef")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0f)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("speedRef")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0f)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("positionRef")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0f)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("lsw1Speed")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0f)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("offset_currentAs")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x151)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0f)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("offset_currentBs")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x152)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0f)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("offset_currentCs")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x153)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0f)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("currentAs")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x155)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0f)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("currentBs")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x156)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0f)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("currentCs")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x157)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0f)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("currentScale")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x159)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0f)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("voltageScale")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0f)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("adcScale")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0f)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("currentInvSF")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0f)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("voltageInvSF")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0f)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("posElecTheta")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0f)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("posMechTheta")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x160)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0f)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$765, DW_AT_name("pwmCompA")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x162)
	.dwattr $C$DW$765, DW_AT_decl_column(0x18)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$766, DW_AT_name("pwmCompB")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x163)
	.dwattr $C$DW$766, DW_AT_decl_column(0x18)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$767, DW_AT_name("pwmCompC")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x164)
	.dwattr $C$DW$767, DW_AT_decl_column(0x18)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$768, DW_AT_name("curA_PPBRESULT")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x166)
	.dwattr $C$DW$768, DW_AT_decl_column(0x17)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$769, DW_AT_name("curB_PPBRESULT")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x167)
	.dwattr $C$DW$769, DW_AT_decl_column(0x17)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$770, DW_AT_name("curC_PPBRESULT")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x168)
	.dwattr $C$DW$770, DW_AT_decl_column(0x17)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$771, DW_AT_name("volDC_PPBRESULT")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x169)
	.dwattr $C$DW$771, DW_AT_decl_column(0x17)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$772, DW_AT_name("AdcIntFlag")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$772, DW_AT_decl_column(0x23)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$773, DW_AT_name("D_cpu")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$773, DW_AT_decl_column(0x11)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$774, DW_AT_name("rc")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0d)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$775, DW_AT_name("clarke")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$776, DW_AT_name("park")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x170)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0a)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$777, DW_AT_name("ipark")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x171)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0b)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$778, DW_AT_name("speed")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x172)
	.dwattr $C$DW$778, DW_AT_decl_column(0x14)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$779, DW_AT_name("pi_id")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x174)
	.dwattr $C$DW$779, DW_AT_decl_column(0x18)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$780, DW_AT_name("pi_pos")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x175)
	.dwattr $C$DW$780, DW_AT_decl_column(0x13)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$781, DW_AT_name("pid_spd")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x176)
	.dwattr $C$DW$781, DW_AT_decl_column(0x15)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$782, DW_AT_name("FCL_params")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x178)
	.dwattr $C$DW$782, DW_AT_decl_column(0x16)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$783, DW_AT_name("ptrFCL")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x118]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x179)
	.dwattr $C$DW$783, DW_AT_decl_column(0x12)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$784, DW_AT_name("svgen")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0b)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("Vdcbus")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0f)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("VdcbusMax")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0f)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("VdcbusMin")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x130]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0f)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$788, DW_AT_name("isrTicker")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x181)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0e)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("fclLatencyInMicroSec")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x183)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0f)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$790, DW_AT_name("fclClrCntr")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x184)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0f)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$791, DW_AT_name("fclCycleCountMax")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x137]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x185)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0f)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$792, DW_AT_name("speedLoopPrescaler")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x187)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0e)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$793, DW_AT_name("speedLoopCount")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x139]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x188)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0e)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$794, DW_AT_name("alignCntr")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x189)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0e)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$795, DW_AT_name("alignCnt")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x13b]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0e)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$796, DW_AT_name("posPtrMax")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0e)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$797, DW_AT_name("posPtr")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x13d]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0e)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$798, DW_AT_name("currentThreshHi")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0e)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$799, DW_AT_name("currentThreshLo")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0e)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$800, DW_AT_name("drvEnableGateGPIO")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x191)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0e)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$801, DW_AT_name("drvFaultTripGPIO")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x141]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x192)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0e)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$802, DW_AT_name("drvClearFaultGPIO")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x193)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0e)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$803, DW_AT_name("tripCountDMC")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x143]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x195)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0e)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$804, DW_AT_name("tripFlagDMC")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x196)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0e)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$805, DW_AT_name("tripFlagPrev")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x145]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x197)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0e)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$806, DW_AT_name("runMotor")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x199)
	.dwattr $C$DW$806, DW_AT_decl_column(0x15)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$807, DW_AT_name("ctrlState")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x147]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$807, DW_AT_decl_column(0x15)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$808, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0a)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$809, DW_AT_name("lsw2EntryFlag")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x149]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0a)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$810, DW_AT_name("offsetDoneFlag")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0a)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$811, DW_AT_name("sfraEnableFlag")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x14b]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$106, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("MOTOR_Vars_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$147, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$147


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148
$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$148


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149
$C$DW$812	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$148)

$C$DW$T$149	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$812)

	.dwendtag $C$DW$TU$149


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150

$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x298)
$C$DW$813	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$813, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$150

	.dwendtag $C$DW$TU$150


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


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154

$C$DW$T$154	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$154

	.dwendtag $C$DW$TU$154


$C$DW$TU$155	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$155
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$155


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


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("int16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$36


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("Uint16")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$48, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$48


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$44, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$45


$C$DW$TU$194	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$194

$C$DW$T$194	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x04)
$C$DW$814	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$814, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$194

	.dwendtag $C$DW$TU$194


$C$DW$TU$170	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$170
$C$DW$815	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$45)

$C$DW$T$170	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$815)

	.dwendtag $C$DW$TU$170


$C$DW$TU$195	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$195
$C$DW$816	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$45)

$C$DW$T$195	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$816)

	.dwendtag $C$DW$TU$195


$C$DW$TU$196	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$196

$C$DW$T$196	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x02)
$C$DW$817	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$817, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$196

	.dwendtag $C$DW$TU$196


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("int32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$25


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("Uint32")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$51, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$51


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


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x08)
$C$DW$818	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$818, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x06)
$C$DW$819	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$819, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x04)
$C$DW$820	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$820, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87
$C$DW$821	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$22)

$C$DW$T$87	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$821)

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$88


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131
$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("size_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$131, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/stdlib.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$822	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$131)

$C$DW$T$132	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$822)

	.dwendtag $C$DW$TU$132


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


$C$DW$TU$212	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$212
$C$DW$823	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$16)

$C$DW$T$212	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$823)

	.dwendtag $C$DW$TU$212


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$34


$C$DW$TU$217	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$217

$C$DW$T$217	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$217, DW_AT_byte_size(0x10)
$C$DW$824	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$824, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$217

	.dwendtag $C$DW$TU$217


$C$DW$TU$218	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$218

$C$DW$T$218	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$218, DW_AT_byte_size(0x190)
$C$DW$825	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$825, DW_AT_upper_bound(0xc7)

	.dwendtag $C$DW$T$218

	.dwendtag $C$DW$TU$218


$C$DW$TU$173	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$173
$C$DW$826	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)

$C$DW$T$173	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$826)

	.dwendtag $C$DW$TU$173


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$219	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$219
$C$DW$T$219	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$219, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$219


$C$DW$TU$220	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$220
$C$DW$827	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$219)

$C$DW$T$220	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$827)

	.dwendtag $C$DW$TU$220


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$221	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$221
$C$DW$T$221	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$221, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$221


$C$DW$TU$222	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$222
$C$DW$828	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$221)

$C$DW$T$222	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$828)

	.dwendtag $C$DW$TU$222


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83
$C$DW$T$83	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$83, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$83, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$83


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_name("motPars")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x0e)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("cosWTs")
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0f)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("sinWTs")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0f)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("expVal")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0f)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("kDirect")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0f)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("idErr")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x50)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0f)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("iqErr")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x51)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0f)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("carryOver")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x52)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$107, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$74, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$74

