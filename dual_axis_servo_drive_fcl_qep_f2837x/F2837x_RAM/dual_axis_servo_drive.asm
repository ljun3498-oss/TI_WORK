;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Fri Apr  3 17:22:04 2026                 *
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
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$152)

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
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$152)

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
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$152)

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
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$152)

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
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$152)

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
	.dwattr $C$DW$12, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$12, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x124)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$12


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("Board_init")
	.dwattr $C$DW$13, DW_AT_linkage_name("Board_init")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("..\sources\motorboard.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$13, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$13


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$14, DW_AT_linkage_name("HAL_setParams")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x180)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$147)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$16, DW_AT_linkage_name("HAL_setMotorParams")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x185)
	.dwattr $C$DW$16, DW_AT_decl_column(0x0d)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$133)

	.dwendtag $C$DW$16


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$18, DW_AT_linkage_name("initMotorParameters")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0xec)
	.dwattr $C$DW$18, DW_AT_decl_column(0x0d)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$152)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$133)

	.dwendtag $C$DW$18


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("initControlVars")
	.dwattr $C$DW$21, DW_AT_linkage_name("initControlVars")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0d)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$152)

	.dwendtag $C$DW$21


$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$23, DW_AT_linkage_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x179)
	.dwattr $C$DW$23, DW_AT_decl_column(0x0e)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$133)

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$176)

	.dwendtag $C$DW$23


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("resetControlVars")
	.dwattr $C$DW$26, DW_AT_linkage_name("resetControlVars")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$26, DW_AT_decl_column(0x0d)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$152)

	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$28, DW_AT_linkage_name("DLOG_4CH_F_init")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$28, DW_AT_decl_column(0x06)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$125)

	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$30, DW_AT_linkage_name("HAL_setupInterrupts")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0d)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$133)

	.dwendtag $C$DW$30


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$32, DW_AT_linkage_name("runOffsetsCalculation")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$32, DW_AT_decl_column(0x0d)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$152)

	.dwendtag $C$DW$32


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$34, DW_AT_linkage_name("HAL_enableInterrupts")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x111)
	.dwattr $C$DW$34, DW_AT_decl_column(0x0d)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$133)

	.dwendtag $C$DW$34


$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$36, DW_AT_linkage_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$36, DW_AT_decl_column(0x06)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$125)

	.dwendtag $C$DW$36


$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$38, DW_AT_linkage_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$38, DW_AT_decl_column(0x0d)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$133)

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$173)

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$173)

	.dwendtag $C$DW$38


$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$42, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$22)

	.dwendtag $C$DW$42

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("uvw_u")
	.dwattr $C$DW$44, DW_AT_linkage_name("uvw_u")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("..\sources\uvw.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$44, DW_AT_decl_column(0x19)

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("uvw_v")
	.dwattr $C$DW$45, DW_AT_linkage_name("uvw_v")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("..\sources\uvw.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$45, DW_AT_decl_column(0x19)

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("uvw_w")
	.dwattr $C$DW$46, DW_AT_linkage_name("uvw_w")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("..\sources\uvw.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$46, DW_AT_decl_column(0x19)

	.global	||startModel||
	.sect	"ClaData", RW
	.align	1
	.elfsym	||startModel||,SYM_SIZE(1),SYM_BLOCKED(1)
||startModel||:
	.bits		0x1,16
			; startModel @ 0

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("startModel")
	.dwattr $C$DW$47, DW_AT_linkage_name("startModel")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||startModel||]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x48)
	.dwattr $C$DW$47, DW_AT_decl_column(0x13)

	.global	||serialCommsTimer||
	.data
	.align	1
	.elfsym	||serialCommsTimer||,SYM_SIZE(1),SYM_BLOCKED(1)
||serialCommsTimer||:
	.bits		0,16
			; serialCommsTimer @ 0

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("serialCommsTimer")
	.dwattr $C$DW$48, DW_AT_linkage_name("serialCommsTimer")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr ||serialCommsTimer||]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0xad)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0a)

	.global	||sciTxIndex||
	.data
	.align	1
	.elfsym	||sciTxIndex||,SYM_SIZE(1),SYM_BLOCKED(1)
||sciTxIndex||:
	.bits		0,16
			; sciTxIndex @ 0

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("sciTxIndex")
	.dwattr $C$DW$49, DW_AT_linkage_name("sciTxIndex")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr ||sciTxIndex||]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0a)

	.global	||sciTxCount||
	.data
	.align	1
	.elfsym	||sciTxCount||,SYM_SIZE(1),SYM_BLOCKED(1)
||sciTxCount||:
	.bits		0,16
			; sciTxCount @ 0

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("sciTxCount")
	.dwattr $C$DW$50, DW_AT_linkage_name("sciTxCount")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||sciTxCount||]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0xba)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0a)

	.global	||sciPrepCount||
	.data
	.align	1
	.elfsym	||sciPrepCount||,SYM_SIZE(1),SYM_BLOCKED(1)
||sciPrepCount||:
	.bits		0,16
			; sciPrepCount @ 0

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("sciPrepCount")
	.dwattr $C$DW$51, DW_AT_linkage_name("sciPrepCount")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||sciPrepCount||]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0a)

	.global	||sciTxBusy||
	.data
	.align	1
	.elfsym	||sciTxBusy||,SYM_SIZE(1),SYM_BLOCKED(1)
||sciTxBusy||:
	.bits		0,16
			; sciTxBusy @ 0

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("sciTxBusy")
	.dwattr $C$DW$52, DW_AT_linkage_name("sciTxBusy")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||sciTxBusy||]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0a)

	.global	||sciDataReady||
	.data
	.align	1
	.elfsym	||sciDataReady||,SYM_SIZE(1),SYM_BLOCKED(1)
||sciDataReady||:
	.bits		0,16
			; sciDataReady @ 0

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("sciDataReady")
	.dwattr $C$DW$53, DW_AT_linkage_name("sciDataReady")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||sciDataReady||]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0a)

	.global	||clkPrescale||
	.data
	.align	1
	.elfsym	||clkPrescale||,SYM_SIZE(1),SYM_BLOCKED(1)
||clkPrescale||:
	.bits		0x14,16
			; clkPrescale @ 0

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("clkPrescale")
	.dwattr $C$DW$54, DW_AT_linkage_name("clkPrescale")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||clkPrescale||]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0a)

	.global	||sampWin||
	.data
	.align	1
	.elfsym	||sampWin||,SYM_SIZE(1),SYM_BLOCKED(1)
||sampWin||:
	.bits		0x1e,16
			; sampWin @ 0

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("sampWin")
	.dwattr $C$DW$55, DW_AT_linkage_name("sampWin")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||sampWin||]
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$55, DW_AT_decl_column(0x0a)

	.global	||thresh||
	.data
	.align	1
	.elfsym	||thresh||,SYM_SIZE(1),SYM_BLOCKED(1)
||thresh||:
	.bits		0x12,16
			; thresh @ 0

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("thresh")
	.dwattr $C$DW$56, DW_AT_linkage_name("thresh")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||thresh||]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0a)

	.global	||enableFlag||
	.data
	.align	1
	.elfsym	||enableFlag||,SYM_SIZE(1),SYM_BLOCKED(1)
||enableFlag||:
	.bits		0x1,16
			; enableFlag @ 0

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("enableFlag")
	.dwattr $C$DW$57, DW_AT_linkage_name("enableFlag")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||enableFlag||]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$57, DW_AT_decl_column(0x13)

	.global	||backTicker||
	.data
	.align	1
	.elfsym	||backTicker||,SYM_SIZE(1),SYM_BLOCKED(1)
||backTicker||:
	.bits		0,16
			; backTicker @ 0

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("backTicker")
	.dwattr $C$DW$58, DW_AT_linkage_name("backTicker")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||backTicker||]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0xda)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0a)

	.global	||led1Cnt||
	.data
	.align	1
	.elfsym	||led1Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led1Cnt||:
	.bits		0,16
			; led1Cnt @ 0

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("led1Cnt")
	.dwattr $C$DW$59, DW_AT_linkage_name("led1Cnt")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||led1Cnt||]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0a)

	.global	||led2Cnt||
	.data
	.align	1
	.elfsym	||led2Cnt||,SYM_SIZE(1),SYM_BLOCKED(1)
||led2Cnt||:
	.bits		0,16
			; led2Cnt @ 0

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("led2Cnt")
	.dwattr $C$DW$60, DW_AT_linkage_name("led2Cnt")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||led2Cnt||]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0a)

	.global	||runMotor||
	.data
	.align	1
	.elfsym	||runMotor||,SYM_SIZE(1),SYM_BLOCKED(1)
||runMotor||:
	.bits		0,16
			; runMotor @ 0

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("runMotor")
	.dwattr $C$DW$61, DW_AT_linkage_name("runMotor")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr ||runMotor||]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$61, DW_AT_decl_column(0x10)

	.global	||ctrlState||
	.data
	.align	1
	.elfsym	||ctrlState||,SYM_SIZE(1),SYM_BLOCKED(1)
||ctrlState||:
	.bits		0,16
			; ctrlState @ 0

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("ctrlState")
	.dwattr $C$DW$62, DW_AT_linkage_name("ctrlState")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr ||ctrlState||]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0d)

	.global	||flagSyncRun||
	.data
	.align	1
	.elfsym	||flagSyncRun||,SYM_SIZE(1),SYM_BLOCKED(1)
||flagSyncRun||:
	.bits		0,16
			; flagSyncRun @ 0

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("flagSyncRun")
	.dwattr $C$DW$63, DW_AT_linkage_name("flagSyncRun")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr ||flagSyncRun||]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$63, DW_AT_decl_column(0x06)

	.global	||uvwStateMachine||
	.sect	"ClaData", RW
	.align	1
	.elfsym	||uvwStateMachine||,SYM_SIZE(2)
||uvwStateMachine||:
	.bits		0,16
			; uvwStateMachine[0] @ 0
	.bits		0,16
			; uvwStateMachine[1] @ 16

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("uvwStateMachine")
	.dwattr $C$DW$64, DW_AT_linkage_name("uvwStateMachine")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr ||uvwStateMachine||]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0x49)
	.dwattr $C$DW$64, DW_AT_decl_column(0x13)

	.global	||cal_Z_Offset_Count_M1||
	.sect	"ClaData", RW
	.align	2
	.elfsym	||cal_Z_Offset_Count_M1||,SYM_SIZE(2),SYM_BLOCKED(1)
||cal_Z_Offset_Count_M1||:
	.bits		0,32
			; cal_Z_Offset_Count_M1 @ 0

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("cal_Z_Offset_Count_M1")
	.dwattr $C$DW$65, DW_AT_linkage_name("cal_Z_Offset_Count_M1")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr ||cal_Z_Offset_Count_M1||]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0a)

	.global	||cal_Z_Offset_Count_M2||
	.sect	"ClaData", RW
	.align	2
	.elfsym	||cal_Z_Offset_Count_M2||,SYM_SIZE(2),SYM_BLOCKED(1)
||cal_Z_Offset_Count_M2||:
	.bits		0,32
			; cal_Z_Offset_Count_M2 @ 0

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("cal_Z_Offset_Count_M2")
	.dwattr $C$DW$66, DW_AT_linkage_name("cal_Z_Offset_Count_M2")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr ||cal_Z_Offset_Count_M2||]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0a)

	.global	||Alpha_State_Ptr||
	.bss	||Alpha_State_Ptr||,2,1,1
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("Alpha_State_Ptr")
	.dwattr $C$DW$67, DW_AT_linkage_name("Alpha_State_Ptr")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr ||Alpha_State_Ptr||]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$67, DW_AT_decl_column(0x08)

	.global	||A_Task_Ptr||
	.bss	||A_Task_Ptr||,2,1,1
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("A_Task_Ptr")
	.dwattr $C$DW$68, DW_AT_linkage_name("A_Task_Ptr")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr ||A_Task_Ptr||]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$68, DW_AT_decl_column(0x08)

	.global	||B_Task_Ptr||
	.bss	||B_Task_Ptr||,2,1,1
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("B_Task_Ptr")
	.dwattr $C$DW$69, DW_AT_linkage_name("B_Task_Ptr")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr ||B_Task_Ptr||]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$69, DW_AT_decl_column(0x08)

	.global	||C_Task_Ptr||
	.bss	||C_Task_Ptr||,2,1,1
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("C_Task_Ptr")
	.dwattr $C$DW$70, DW_AT_linkage_name("C_Task_Ptr")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr ||C_Task_Ptr||]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$70, DW_AT_decl_column(0x08)

	.global	||t||
	.data
	.align	2
	.elfsym	||t||,SYM_SIZE(2),SYM_BLOCKED(1)
||t||:
	.xfloat	$strtod("0x0p+0")		; t @ 0

$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("t")
	.dwattr $C$DW$71, DW_AT_linkage_name("t")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr ||t||]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$71, DW_AT_decl_column(0x07)

	.global	||amplitude||
	.data
	.align	2
	.elfsym	||amplitude||,SYM_SIZE(2),SYM_BLOCKED(1)
||amplitude||:
	.xfloat	$strtod("0x1.2p+3")		; amplitude @ 0

$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("amplitude")
	.dwattr $C$DW$72, DW_AT_linkage_name("amplitude")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr ||amplitude||]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$72, DW_AT_decl_column(0x07)

	.global	||period||
	.data
	.align	2
	.elfsym	||period||,SYM_SIZE(2),SYM_BLOCKED(1)
||period||:
	.xfloat	$strtod("0x1p+0")		; period @ 0

$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("period")
	.dwattr $C$DW$73, DW_AT_linkage_name("period")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr ||period||]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$73, DW_AT_decl_column(0x07)

	.global	||samplingRate||
	.data
	.align	2
	.elfsym	||samplingRate||,SYM_SIZE(2),SYM_BLOCKED(1)
||samplingRate||:
	.xfloat	$strtod("0x1.9p+6")		; samplingRate @ 0

$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("samplingRate")
	.dwattr $C$DW$74, DW_AT_linkage_name("samplingRate")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr ||samplingRate||]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$74, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$74, DW_AT_decl_column(0x07)

	.global	||dt||
	.bss	||dt||,2,1,1
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("dt")
	.dwattr $C$DW$75, DW_AT_linkage_name("dt")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr ||dt||]
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$75, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$75, DW_AT_decl_column(0x07)

	.global	||VdTesting||
	.data
	.align	2
	.elfsym	||VdTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VdTesting||:
	.xfloat	$strtod("0x1.47ae14p-7")		; VdTesting @ 0

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("VdTesting")
	.dwattr $C$DW$76, DW_AT_linkage_name("VdTesting")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr ||VdTesting||]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$76, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0b)

	.global	||VqTesting||
	.data
	.align	2
	.elfsym	||VqTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VqTesting||:
	.xfloat	$strtod("0x1.99999ap-5")		; VqTesting @ 0

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("VqTesting")
	.dwattr $C$DW$77, DW_AT_linkage_name("VqTesting")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr ||VqTesting||]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0b)

	.global	||posPtrMax||
	.data
	.align	2
	.elfsym	||posPtrMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||posPtrMax||:
	.xfloat	$strtod("0x1p+2")		; posPtrMax @ 0

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("posPtrMax")
	.dwattr $C$DW$78, DW_AT_linkage_name("posPtrMax")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr ||posPtrMax||]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$78, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0b)

	.global	||dlogCh1||
	.data
	.align	2
	.elfsym	||dlogCh1||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh1||:
	.xfloat	$strtod("0x0p+0")		; dlogCh1 @ 0

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("dlogCh1")
	.dwattr $C$DW$79, DW_AT_linkage_name("dlogCh1")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr ||dlogCh1||]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0xec)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0b)

	.global	||dlogCh2||
	.data
	.align	2
	.elfsym	||dlogCh2||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh2||:
	.xfloat	$strtod("0x0p+0")		; dlogCh2 @ 0

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("dlogCh2")
	.dwattr $C$DW$80, DW_AT_linkage_name("dlogCh2")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr ||dlogCh2||]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0xed)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0b)

	.global	||dlogCh3||
	.data
	.align	2
	.elfsym	||dlogCh3||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh3||:
	.xfloat	$strtod("0x0p+0")		; dlogCh3 @ 0

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("dlogCh3")
	.dwattr $C$DW$81, DW_AT_linkage_name("dlogCh3")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr ||dlogCh3||]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0xee)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0b)

	.global	||dlogCh4||
	.data
	.align	2
	.elfsym	||dlogCh4||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh4||:
	.xfloat	$strtod("0x0p+0")		; dlogCh4 @ 0

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("dlogCh4")
	.dwattr $C$DW$82, DW_AT_linkage_name("dlogCh4")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr ||dlogCh4||]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$82, DW_AT_decl_line(0xef)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0b)

	.global	||halHandle||
	.bss	||halHandle||,2,1,1
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("halHandle")
	.dwattr $C$DW$83, DW_AT_linkage_name("halHandle")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr ||halHandle||]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0f)

	.global	||FCL_cycleCount||
||FCL_cycleCount||:	.usect	".bss:FCL_cycleCount",2,0,0
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("FCL_cycleCount")
	.dwattr $C$DW$84, DW_AT_linkage_name("FCL_cycleCount")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr ||FCL_cycleCount||]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x105)
	.dwattr $C$DW$84, DW_AT_decl_column(0x13)

	.global	||speedRef||
	.data
	.align	2
	.elfsym	||speedRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||speedRef||:
	.xfloat	$strtod("0x1p-1")		; speedRef @ 0

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("speedRef")
	.dwattr $C$DW$85, DW_AT_linkage_name("speedRef")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr ||speedRef||]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x108)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0b)

	.global	||IdRef||
	.data
	.align	2
	.elfsym	||IdRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef||:
	.xfloat	$strtod("0x0p+0")		; IdRef @ 0

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("IdRef")
	.dwattr $C$DW$86, DW_AT_linkage_name("IdRef")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr ||IdRef||]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x109)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0b)

	.global	||IqRef||
	.data
	.align	2
	.elfsym	||IqRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IqRef||:
	.xfloat	$strtod("0x1.99999ap-4")		; IqRef @ 0

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("IqRef")
	.dwattr $C$DW$87, DW_AT_linkage_name("IqRef")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr ||IqRef||]
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0b)

	.global	||rampDelayMax||
	.data
	.align	2
	.elfsym	||rampDelayMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||rampDelayMax||:
	.bits		0,32
			; rampDelayMax @ 0

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("rampDelayMax")
	.dwattr $C$DW$88, DW_AT_linkage_name("rampDelayMax")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr ||rampDelayMax||]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0a)


$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("HAL_init")
	.dwattr $C$DW$89, DW_AT_linkage_name("HAL_init")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x119)
	.dwattr $C$DW$89, DW_AT_decl_column(0x13)
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$136)

	.dwendtag $C$DW$89


$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$92, DW_AT_linkage_name("HAL_MTR_init")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x122)
	.dwattr $C$DW$92, DW_AT_decl_column(0x17)
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)

$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$136)

	.dwendtag $C$DW$92


$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$95, DW_AT_linkage_name("FCL_getSwVersion")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cla_dm.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x37)
	.dwattr $C$DW$95, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$95


$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("__eallow")
	.dwattr $C$DW$96, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
	.dwendtag $C$DW$96


$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("__edis")
	.dwattr $C$DW$97, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
	.dwendtag $C$DW$97

	.global	||vTimer0||
	.sect	".data:vTimer0", RW
	.align	1
	.elfsym	||vTimer0||,SYM_SIZE(4)
||vTimer0||:
	.bits		0,16
			; vTimer0[0] @ 0
	.space	48

$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("vTimer0")
	.dwattr $C$DW$98, DW_AT_linkage_name("vTimer0")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr ||vTimer0||]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0a)

	.global	||vTimer1||
	.sect	".data:vTimer1", RW
	.align	1
	.elfsym	||vTimer1||,SYM_SIZE(4)
||vTimer1||:
	.bits		0,16
			; vTimer1[0] @ 0
	.space	48

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("vTimer1")
	.dwattr $C$DW$99, DW_AT_linkage_name("vTimer1")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr ||vTimer1||]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0xab)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0a)

	.global	||vTimer2||
	.sect	".data:vTimer2", RW
	.align	1
	.elfsym	||vTimer2||,SYM_SIZE(4)
||vTimer2||:
	.bits		0,16
			; vTimer2[0] @ 0
	.space	48

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("vTimer2")
	.dwattr $C$DW$100, DW_AT_linkage_name("vTimer2")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr ||vTimer2||]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0xac)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0a)

	.global	||halMtrHandle||
||halMtrHandle||:	.usect	".bss:halMtrHandle",4,0,1
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("halMtrHandle")
	.dwattr $C$DW$101, DW_AT_linkage_name("halMtrHandle")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr ||halMtrHandle||]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x101)
	.dwattr $C$DW$101, DW_AT_decl_column(0x10)

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

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("posArray")
	.dwattr $C$DW$102, DW_AT_linkage_name("posArray")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_addr ||posArray||]
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0b)

	.global	||dlog_4ch1||
	.bss	||dlog_4ch1||,26,1,1
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("dlog_4ch1")
	.dwattr $C$DW$103, DW_AT_linkage_name("dlog_4ch1")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr ||dlog_4ch1||]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$103, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0c)

	.global	||hal||
	.bss	||hal||,34,1,1
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("hal")
	.dwattr $C$DW$104, DW_AT_linkage_name("hal")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr ||hal||]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0xff)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0f)

	.global	||halMtr||
||halMtr||:	.usect	".bss:halMtr",36,0,1
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("halMtr")
	.dwattr $C$DW$105, DW_AT_linkage_name("halMtr")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr ||halMtr||]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$105, DW_AT_decl_line(0x102)
	.dwattr $C$DW$105, DW_AT_decl_column(0x10)

	.global	||sciTxBuffer||
||sciTxBuffer||:	.usect	".bss:sciTxBuffer",64,0,0
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("sciTxBuffer")
	.dwattr $C$DW$106, DW_AT_linkage_name("sciTxBuffer")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr ||sciTxBuffer||]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0a)

	.global	||sciPrepBuffer||
||sciPrepBuffer||:	.usect	".bss:sciPrepBuffer",64,0,0
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("sciPrepBuffer")
	.dwattr $C$DW$107, DW_AT_linkage_name("sciPrepBuffer")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr ||sciPrepBuffer||]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0a)

$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("fclVars")
	.dwattr $C$DW$108, DW_AT_linkage_name("fclVars")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$108, DW_AT_declaration
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$108, DW_AT_decl_column(0x13)

	.global	||DBUFF_4CH1||
	.sect	".data:DBUFF_4CH1", RW
	.align	2
	.elfsym	||DBUFF_4CH1||,SYM_SIZE(400)
||DBUFF_4CH1||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH1[0] @ 0
	.space	6368

$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("DBUFF_4CH1")
	.dwattr $C$DW$109, DW_AT_linkage_name("DBUFF_4CH1")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr ||DBUFF_4CH1||]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH2||
	.sect	".data:DBUFF_4CH2", RW
	.align	2
	.elfsym	||DBUFF_4CH2||,SYM_SIZE(400)
||DBUFF_4CH2||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH2[0] @ 0
	.space	6368

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("DBUFF_4CH2")
	.dwattr $C$DW$110, DW_AT_linkage_name("DBUFF_4CH2")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr ||DBUFF_4CH2||]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH3||
	.sect	".data:DBUFF_4CH3", RW
	.align	2
	.elfsym	||DBUFF_4CH3||,SYM_SIZE(400)
||DBUFF_4CH3||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH3[0] @ 0
	.space	6368

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("DBUFF_4CH3")
	.dwattr $C$DW$111, DW_AT_linkage_name("DBUFF_4CH3")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr ||DBUFF_4CH3||]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$111, DW_AT_decl_line(0xea)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH4||
	.sect	".data:DBUFF_4CH4", RW
	.align	2
	.elfsym	||DBUFF_4CH4||,SYM_SIZE(400)
||DBUFF_4CH4||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH4[0] @ 0
	.space	6368

$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("DBUFF_4CH4")
	.dwattr $C$DW$112, DW_AT_linkage_name("DBUFF_4CH4")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr ||DBUFF_4CH4||]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0b)

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
	.bits		0x333,16
			; motorVars[0].currentThreshHi @ 5088
	.bits		0x333,16
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
	.bits		0x1,16
			; motorVars[0].runMotor @ 5216
	.bits		0x1,16
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

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("motorVars")
	.dwattr $C$DW$113, DW_AT_linkage_name("motorVars")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr ||motorVars||]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0e)

	.sblock	".bss"
	.sblock	".data"
	.sblock	"ClaData"
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{B00CDF7C-9D4A-4141-B461-E68A4422D8DC} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{229E0DE6-895F-4FA2-A3EF-127787177C6E} 
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{380B37E3-32B2-453B-93D8-EE5AF0BAE27B} 
	.sect	".text:generateWaveforms"
	.clink
	.global	||generateWaveforms||

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("generateWaveforms")
	.dwattr $C$DW$114, DW_AT_low_pc(||generateWaveforms||)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_linkage_name("generateWaveforms")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0xb99)
	.dwattr $C$DW$114, DW_AT_decl_column(0x06)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2970,column 1,is_stmt,address ||generateWaveforms||,isa 0

	.dwfde $C$DW$CIE, ||generateWaveforms||
$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("ch0")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]

$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("ch1")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg14]

$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("ch2")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -4]


;***************************************************************
;* FNAME: generateWaveforms             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||generateWaveforms||:
;* R0    assigned to $O$C1
;* AR4   assigned to ch0
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("ch0")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to ch1
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("ch1")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg14]

;* AR7   assigned to ch2
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("ch2")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||motorVars||+66  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2972,column 5,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+66 ; [CPU_ALU] |2972| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2970,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[4]          ; [CPU_ALU] |2970| 
        MOVW      DP,#||motorVars||+252 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2972,column 5,is_stmt,isa 0
        I16TOF32  R0H,*+XAR6[0]         ; [CPU_FPU] |2972| 
        MOV32     R1H,@||motorVars||+252 ; [CPU_FPU] |2972| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2972| 
        MOVW      DP,#||motorVars||+68  ; [CPU_ARAU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |2972| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2973,column 5,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+68 ; [CPU_ALU] |2973| 
        MOVW      DP,#||motorVars||+252 ; [CPU_ARAU] 
        I16TOF32  R0H,*+XAR6[0]         ; [CPU_FPU] |2973| 
        MOV32     R1H,@||motorVars||+252 ; [CPU_FPU] |2973| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2973| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |2973| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2974,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |2974| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |2974| 
        NOP       ; [CPU_ALU] 
        NEGF32    R0H,R0H               ; [CPU_FPU] |2974| 
        MOV32     *+XAR7[0],R0H         ; [CPU_FPU] |2974| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0xb9f)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text:sendWaveformData"
	.clink
	.global	||sendWaveformData||

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("sendWaveformData")
	.dwattr $C$DW$122, DW_AT_low_pc(||sendWaveformData||)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_linkage_name("sendWaveformData")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0xb6b)
	.dwattr $C$DW$122, DW_AT_decl_column(0x06)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2924,column 1,is_stmt,address ||sendWaveformData||,isa 0

	.dwfde $C$DW$CIE, ||sendWaveformData||

;***************************************************************
;* FNAME: sendWaveformData              FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  2 SOE     *
;***************************************************************

||sendWaveformData||:
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("ch0")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg20 -4]

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("ch1")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg20 -6]

$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("ch2")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -8]

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("c")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -10]

;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2926,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |2926| 
        MOVZ      AR5,SP                ; [CPU_ALU] |2926| 
        SUBB      XAR4,#8               ; [CPU_ARAU] |2926| 
        MOVU      ACC,AR4               ; [CPU_ALU] |2926| 
        MOVZ      AR4,SP                ; [CPU_ALU] |2926| 
        SUBB      XAR5,#6               ; [CPU_ARAU] |2926| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |2926| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2926| 
        SUBB      XAR4,#4               ; [CPU_ARAU] |2926| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |2926| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("generateWaveforms")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||generateWaveforms|| ; [CPU_ALU] |2926| 
        ; call occurs [#||generateWaveforms||] ; [] |2926| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2954,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |2954| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2956,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |2956| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2933,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |2933| 
        MOVW      DP,#||sciPrepCount||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2934,column 5,is_stmt,isa 0
        MOVL      XAR4,#||sciPrepBuffer|| ; [CPU_ARAU] |2934| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2933,column 5,is_stmt,isa 0
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |2933| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2954,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2954| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2940,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |2940| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2934,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2934| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2955,column 5,is_stmt,isa 0
        MOVB      XAR0,#13              ; [CPU_ALU] |2955| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2934,column 5,is_stmt,isa 0
        ANDB      AL,#0xff              ; [CPU_ALU] |2934| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2955,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2955| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2934,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |2934| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2935,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2935| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2960,column 5,is_stmt,isa 0
        MOVB      @||sciPrepCount||,#16,UNC ; [CPU_ALU] |2960| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2961,column 5,is_stmt,isa 0
        MOVB      @||sciDataReady||,#1,UNC ; [CPU_ALU] |2961| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2935,column 5,is_stmt,isa 0
        LSR       AL,8                  ; [CPU_ALU] |2935| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2956,column 5,is_stmt,isa 0
        MOVB      *+XAR4[AR1],#128,UNC  ; [CPU_ALU] |2956| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2948,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |2948| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2935,column 5,is_stmt,isa 0
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |2935| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2936,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2936| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2936| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |2936| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2937,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2937| 
        LSR       AL,8                  ; [CPU_ALU] |2937| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |2937| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2940,column 5,is_stmt,isa 0
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |2940| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2941,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2941| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2941| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2947,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |2947| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2941,column 5,is_stmt,isa 0
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |2941| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2942,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2942| 
        LSR       AL,8                  ; [CPU_ALU] |2942| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |2942| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2943,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2943| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2943| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |2943| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2944,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2944| 
        LSR       AL,8                  ; [CPU_ALU] |2944| 
        MOV       *+XAR4[7],AL          ; [CPU_ALU] |2944| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2947,column 5,is_stmt,isa 0
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |2947| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2948,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2948| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2948| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2948| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2949,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |2949| 
        MOV       AL,*-SP[10]           ; [CPU_ALU] |2949| 
        LSR       AL,8                  ; [CPU_ALU] |2949| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2949| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2950,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |2950| 
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2950| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2950| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2950| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2957,column 5,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |2957| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2951,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |2951| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2957,column 5,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#127,UNC  ; [CPU_ALU] |2957| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2951,column 5,is_stmt,isa 0
        LSR       AL,8                  ; [CPU_ALU] |2951| 
        MOVB      XAR0,#11              ; [CPU_ALU] |2951| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2951| 
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0xb92)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text:runSyncControl"
	.clink
	.global	||runSyncControl||

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("runSyncControl")
	.dwattr $C$DW$129, DW_AT_low_pc(||runSyncControl||)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_linkage_name("runSyncControl")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$129, DW_AT_decl_line(0xafb)
	.dwattr $C$DW$129, DW_AT_decl_column(0x06)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2812,column 1,is_stmt,address ||runSyncControl||,isa 0

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
;* R1    assigned to $O$C3
;* R3    assigned to $O$C4
;* R0    assigned to $O$C5
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||flagSyncRun||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2813,column 5,is_stmt,isa 0
        MOV       AL,@||flagSyncRun||   ; [CPU_ALU] |2813| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        B         ||$C$L4||,EQ          ; [CPU_ALU] |2813| 
        ; branchcc occurs ; [] |2813| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2816,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |2816| 
        MOVL      XAR0,#324             ; [CPU_ALU] |2816| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2816| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |2816| 
        ; branchcc occurs ; [] |2816| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2821,column 13,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |2821| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2820,column 13,is_stmt,isa 0
        MOV32     R0H,@||speedRef||     ; [CPU_FPU] |2820| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2828,column 13,is_stmt,isa 0
        MOV32     R1H,@||IqRef||        ; [CPU_FPU] |2828| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2832,column 13,is_stmt,isa 0
        MOV       AL,@||ctrlState||     ; [CPU_ALU] |2832| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2825,column 13,is_stmt,isa 0
        MOV32     R3H,@||IdRef||        ; [CPU_FPU] |2825| 
        MOVB      XAR1,#22              ; [CPU_ALU] |2825| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2821,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2821| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2820,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2820| 
        MOVW      DP,#||motorVars||+326 ; [CPU_ARAU] 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |2820| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2826,column 13,is_stmt,isa 0
        MOVL      XAR0,#354             ; [CPU_ALU] |2826| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2825,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R3H       ; [CPU_FPU] |2825| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2826,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |2826| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2829,column 13,is_stmt,isa 0
        MOVL      XAR0,#358             ; [CPU_ALU] |2829| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2829| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2832,column 13,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2832| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2832| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2833,column 13,is_stmt,isa 0
        MOVL      XAR0,#659             ; [CPU_ALU] |2833| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2833| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2828,column 13,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |2828| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2844,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+326 ; [CPU_ALU] |2844| 
        CMPB      AL,#1                 ; [CPU_ALU] |2844| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2828,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2828| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2844,column 9,is_stmt,isa 0
        B         ||$C$L2||,NEQ         ; [CPU_ALU] |2844| 
        ; branchcc occurs ; [] |2844| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] |2844| 
        ; branch occurs ; [] |2844| 
||$C$L1||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2837,column 13,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2837| 
        MOVW      DP,#||motorVars||+326 ; [CPU_ARAU] 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2837| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2844,column 9,is_stmt,isa 0
        MOV       AL,@||motorVars||+326 ; [CPU_ALU] |2844| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2840,column 13,is_stmt,isa 0
        MOVL      XAR1,#360             ; [CPU_ALU] |2840| 
        ZERO      R0H                   ; [CPU_FPU] |2840| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2839,column 13,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |2839| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2838,column 13,is_stmt,isa 0
        MOVL      XAR0,#659             ; [CPU_ALU] |2838| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2838| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2844,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |2844| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2839,column 13,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |2839| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2840,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |2840| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2839,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |2839| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2844,column 9,is_stmt,isa 0
        B         ||$C$L3||,EQ          ; [CPU_ALU] |2844| 
        ; branchcc occurs ; [] |2844| 
||$C$L2||:    
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2850,column 13,is_stmt,isa 0
        MOV       @||runMotor||,#0      ; [CPU_ALU] |2850| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] |2850| 
        ; branch occurs ; [] |2850| 
||$C$L3||:    
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2846,column 13,is_stmt,isa 0
        MOVB      @||runMotor||,#1,UNC  ; [CPU_ALU] |2846| 
||$C$L4||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0xb27)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text:runMotorControl"
	.clink
	.global	||runMotorControl||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("runMotorControl")
	.dwattr $C$DW$131, DW_AT_low_pc(||runMotorControl||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("runMotorControl")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0xa79)
	.dwattr $C$DW$131, DW_AT_decl_column(0x06)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2682,column 1,is_stmt,address ||runMotorControl||,isa 0

	.dwfde $C$DW$CIE, ||runMotorControl||
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("pMotor")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg12]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("mtrHandle")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg14]


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
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("pMotor")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to mtrHandle
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("mtrHandle")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg10]

;* AL    assigned to base
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("base")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("base")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("base")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("base")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("base")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("base")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("base")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("base")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("base")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("base")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("base")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("base")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]

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
        MOVL      XAR2,XAR4             ; [CPU_ALU] |2682| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2688,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |2688| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2688| 
        MOVB      XAR0,#52              ; [CPU_ALU] |2688| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2688| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2688| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2688| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2690,column 5,is_stmt,isa 0
        MOVL      XAR1,#319             ; [CPU_ALU] |2690| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2688,column 5,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |2688| 
        MOV32     ACC,R0H               ; [CPU_FPU] |2688| 
        ADD       AL,#2048              ; [CPU_ALU] |2688| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |2688| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2690,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |2690| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2690| 
        MOVB      XAR0,#52              ; [CPU_ALU] |2690| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2690| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |2690| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2682,column 1,is_stmt,isa 0
        MOVL      XAR3,XAR5             ; [CPU_ALU] |2682| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2690,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2690| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2682,column 1,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |2682| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2693,column 5,is_stmt,isa 0
        MOVL      XAR0,#318             ; [CPU_ALU] |2693| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2690,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |2690| 
        MOV       AH,#2048              ; [CPU_ALU] |2690| 
        SUB       AH,AL                 ; [CPU_ALU] |2690| 
        MOV       *+XAR2[AR1],AH        ; [CPU_ALU] |2690| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2693,column 5,is_stmt,isa 0
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2693| 
        MOVL      XAR0,#319             ; [CPU_ALU] |2693| 
        MOV       AH,*+XAR2[AR0]        ; [CPU_ALU] |2693| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #||HAL_setupCMPSS_DACValue|| ; [CPU_ALU] |2693| 
        ; call occurs [#||HAL_setupCMPSS_DACValue||] ; [] |2693| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2697,column 5,is_stmt,isa 0
        MOVL      XAR1,#274             ; [CPU_ALU] |2697| 
        MOVIZ     R1H,#15948            ; [CPU_FPU] |2697| 
        MOVIZ     R0H,#16204            ; [CPU_FPU] |2697| 
        MOVL      XAR0,#300             ; [CPU_ALU] |2697| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |2697| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |2697| 
        MOV32     R3H,*+XAR2[AR1]       ; [CPU_FPU] |2697| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |2697| 
||      MOV32     R2H,*+XAR2[AR0]       ; [CPU_FPU] |2697| 

        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |2697| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |2697| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |2697| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2701,column 5,is_stmt,isa 0
        MOVL      XAR0,#302             ; [CPU_ALU] |2701| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2701| 
        MOVL      XAR0,#300             ; [CPU_ALU] |2701| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |2701| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |2701| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2701| 
        B         ||$C$L5||,GT          ; [CPU_ALU] |2701| 
        ; branchcc occurs ; [] |2701| 
        MOVL      XAR0,#304             ; [CPU_ALU] |2701| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |2701| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |2701| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2701| 
        B         ||$C$L5||,LT          ; [CPU_ALU] |2701| 
        ; branchcc occurs ; [] |2701| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2708,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2708| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2708| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2708| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |2708| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |2708| 
        ; branch occurs ; [] |2708| 
||$C$L5||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2704,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2704| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2704| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2704| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |2704| 
||$C$L6||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[0]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2714,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2714| 
        B         ||$C$L7||,TC          ; [CPU_ALU] |2714| 
        ; branchcc occurs ; [] |2714| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[2]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2714,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2714| 
        B         ||$C$L7||,TC          ; [CPU_ALU] |2714| 
        ; branchcc occurs ; [] |2714| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOVB      ACC,#147              ; [CPU_ALU] |4391| 
        ADDL      ACC,*+XAR3[4]         ; [CPU_ALU] |4391| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4391| 
        AND       AL,*+XAR4[0],#0x007f  ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2714,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2714| 
        B         ||$C$L8||,NTC         ; [CPU_ALU] |2714| 
        ; branchcc occurs ; [] |2714| 
||$C$L7||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[0]         ; [CPU_ALU] |4643| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[2]         ; [CPU_ALU] |4643| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4643,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[4]         ; [CPU_ALU] |4643| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2726,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2726| 
        ADD       ACC,#81 << 2          ; [CPU_ALU] |2726| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR6        ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2726,column 9,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2726| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |2726| 
||$C$L8||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2730,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2730| 
        ADD       ACC,#325 << 0         ; [CPU_ALU] |2730| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2730| 
        MOVL      XAR0,#324             ; [CPU_ALU] |2730| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2733,column 5,is_stmt,isa 0
        MOVZ      AR6,*+XAR2[AR0]       ; [CPU_ALU] |2733| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2730,column 5,is_stmt,isa 0
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2730| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |2730| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2733,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |2733| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |2733| 
        ; branchcc occurs ; [] |2733| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        MOV       PL,*+XAR2[AR0]        ; [CPU_ALU] |473| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,PL,#0x001f         ; [CPU_ALU] |473| 
        MOVZ      AR4,PL                ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2736,column 9,is_stmt,isa 0
        MOVL      XAR1,#327             ; [CPU_ALU] |2736| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       T,AL                  ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2735,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2735| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |473| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2736,column 9,is_stmt,isa 0
        MOVB      *+XAR2[AR1],#4,UNC    ; [CPU_ALU] |2736| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2735,column 9,is_stmt,isa 0
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2735| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |473| 
        MOVL      *+XAR4[2],XAR7        ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2743,column 5,is_stmt,isa 0
        B         ||$C$L9||,EQ          ; [CPU_ALU] |2743| 
        ; branchcc occurs ; [] |2743| 
        MOVL      XAR0,#328             ; [CPU_ALU] |2743| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2743| 
        CMPB      AL,#1                 ; [CPU_ALU] |2743| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |2743| 
        ; branchcc occurs ; [] |2743| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2745,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2745| 
        ADD       ACC,#323 << 0         ; [CPU_ALU] |2745| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2745| 
        INC       *+XAR4[0]             ; [CPU_ALU] |2745| 
||$C$L9||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2749,column 5,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |2749| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2749| 
        CMPB      AL,#1                 ; [CPU_ALU] |2749| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |2749| 
        ; branchcc occurs ; [] |2749| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2752,column 9,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |2752| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |2752| 
        ; call occurs [#||SysCtl_delay||] ; [] |2752| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[2]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR3[4]         ; [CPU_ALU] |4529| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x000c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR3[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |768| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR3[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |798| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2777,column 9,is_stmt,isa 0
        MOVL      XAR0,#324             ; [CPU_ALU] |2777| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2777| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2778,column 9,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |2778| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2778| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2780,column 9,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |2780| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |2780| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2779,column 9,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2779| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2779| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2780,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |2780| 
||$C$L10||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2784,column 5,is_stmt,isa 0
        MOVL      XAR0,#327             ; [CPU_ALU] |2784| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2784| 
        CMPB      AL,#1                 ; [CPU_ALU] |2784| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |2784| 
        ; branchcc occurs ; [] |2784| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2796,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2796| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2796| 
        CMPB      AL,#1                 ; [CPU_ALU] |2796| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |2796| 
        ; branchcc occurs ; [] |2796| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2798,column 13,is_stmt,isa 0
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |2798| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2801,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |2801| 
        ; branch occurs ; [] |2801| 
||$C$L11||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2786,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |2786| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |2786| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |2786| 
        ; branchcc occurs ; [] |2786| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2788,column 13,is_stmt,isa 0
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |2788| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
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
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0xaf6)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:ramper"
	.clink
	.global	||ramper||

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("ramper")
	.dwattr $C$DW$151, DW_AT_low_pc(||ramper||)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_linkage_name("ramper")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$151, DW_AT_decl_line(0xa3d)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2622,column 1,is_stmt,address ||ramper||,isa 0

	.dwfde $C$DW$CIE, ||ramper||
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("in")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("out")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("rampDelta")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x33]


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
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("in")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to out
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("out")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to rampDelta
$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("rampDelta")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2627,column 5,is_stmt,isa 0
        SUBF32    R4H,R0H,R1H           ; [CPU_FPU] |2627| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2629,column 9,is_stmt,isa 0
        CMPF32    R4H,R2H               ; [CPU_FPU] |2629| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2629| 
        B         ||$C$L13||,LEQ        ; [CPU_ALU] |2629| 
        ; branchcc occurs ; [] |2629| 
        ADDF32    R0H,R2H,R1H           ; [CPU_FPU] |2629| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |2629| 
        ; branch occurs ; [] |2629| 
||$C$L13||:    
        MOV32     R3H,R2H               ; [CPU_FPU] |2629| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |2629| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |2629| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2629| 
        B         ||$C$L14||,GEQ        ; [CPU_ALU] |2629| 
        ; branchcc occurs ; [] |2629| 
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |2629| 
        NOP       ; [CPU_ALU] 
||$C$L14||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0xa4f)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text:refPosGen"
	.clink
	.global	||refPosGen||

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("refPosGen")
	.dwattr $C$DW$159, DW_AT_low_pc(||refPosGen||)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_linkage_name("refPosGen")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$159, DW_AT_decl_line(0xa59)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2650,column 1,is_stmt,address ||refPosGen||,isa 0

	.dwfde $C$DW$CIE, ||refPosGen||
$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("out")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("pMotor")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg12]


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
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("out")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2b]

;* AR4   assigned to pMotor
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("pMotor")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg12]

;* R4    assigned to in
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("in")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2651,column 18,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |2651| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#||posArray||    ; [CPU_ARAU] |2651| 
        MOV       ACC,*+XAR4[AR0] << 1  ; [CPU_ALU] |2651| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |2651| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2653,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |2653| 
        MOV32     R1H,R0H               ; [CPU_FPU] |2653| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2651,column 18,is_stmt,isa 0
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |2651| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2653,column 5,is_stmt,isa 0
        MOV32     R0H,R4H               ; [CPU_FPU] |2653| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("ramper")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |2653| 
        ; call occurs [#||ramper||] ; [] |2653| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2655,column 5,is_stmt,isa 0
        CMPF32    R4H,R0H               ; [CPU_FPU] |2655| 
        MOVST0    ZF, NF                ; [CPU_FPU] |2655| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |2655| 
        ; branchcc occurs ; [] |2655| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2657,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2657| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |2657| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2659,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |2659| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |2659| 
        B         ||$C$L15||,HIS        ; [CPU_ALU] |2659| 
        ; branchcc occurs ; [] |2659| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2663,column 13,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2663| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2665,column 13,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |2665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2661,column 13,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |2661| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2663,column 13,is_stmt,isa 0
        ADD       ACC,#317 << 0         ; [CPU_ALU] |2663| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2663| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2665,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |2665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2661,column 13,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |2661| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2665,column 13,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |2665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2663,column 13,is_stmt,isa 0
        INC       *+XAR5[0]             ; [CPU_ALU] |2663| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2665,column 13,is_stmt,isa 0
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |2665| 
        B         ||$C$L15||,HI         ; [CPU_ALU] |2665| 
        ; branchcc occurs ; [] |2665| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2667,column 17,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |2667| 
||$C$L15||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0xa71)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text:motor2ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor2ControlISR||

$C$DW$167	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$167, DW_AT_name("motor2ControlISR")
	.dwattr $C$DW$167, DW_AT_low_pc(||motor2ControlISR||)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_linkage_name("motor2ControlISR")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$167, DW_AT_decl_line(0xa11)
	.dwattr $C$DW$167, DW_AT_decl_column(0x12)
	.dwattr $C$DW$167, DW_AT_TI_interrupt
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2578,column 1,is_stmt,address ||motor2ControlISR||,isa 0

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
;* AR4   assigned to $O$C6
;* AR4   assigned to $O$C7
;* AR5   assigned to $O$C8
;* AR5   assigned to $O$C9
;* AR4   assigned to $O$C10
;* AR4   assigned to $O$C11
;* AR4   assigned to $O$C12
;* AR4   assigned to $O$C13
;* AR4   assigned to $O$C14
;* AR4   assigned to $O$C15
;* AR3   assigned to $O$C16
;* AR4   assigned to $O$C17
;* AR4   assigned to $O$C18
;* AR2   assigned to $O$C19
;* AR2   assigned to $O$K3
;* AL    assigned to $O$U56
;* R0    assigned to $O$U135
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R0    assigned to $O$S1
;* R1    assigned to vdc
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("vdc")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x2f]

;* AR4   assigned to in
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("in")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg12]

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1455,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||+332 ; [CPU_ARAU] |1455| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1455| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("FCL_runPICtrl_M2")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M2|| ; [CPU_ALU] |1455| 
        ; call occurs [#||FCL_runPICtrl_M2||] ; [] |1455| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |187| 
        B         ||$C$L16||,HIS        ; [CPU_ALU] |187| 
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
||$C$L16||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |195| 
        MOVW      DP,#||motorVars||+643 ; [CPU_ARAU] 
        CMP       AL,@||motorVars||+643 ; [CPU_ALU] |195| 
        B         ||$C$L17||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        MOVW      DP,#||FCL_cycleCount||+1 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount||+1 ; [CPU_ALU] |197| 
        MOVW      DP,#||motorVars||+643 ; [CPU_ARAU] 
        MOV       @||motorVars||+643,AL ; [CPU_ALU] |197| 
||$C$L17||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |201| 
        MOVL      XAR0,#642             ; [CPU_ALU] |201| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |201| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOVL      XAR0,#643             ; [CPU_ALU] |203| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       @||motorVars||+642,#0 ; [CPU_ALU] |204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |203| 
||$C$L18||:    
        MOVW      DP,#||motorVars||+72  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVL      XAR0,#643             ; [CPU_ALU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR5,@||motorVars||+72 ; [CPU_ALU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
        UI16TOF32 R3H,*+XAR4[AR0]       ; [CPU_FPU] |208| 
        MOVL      XAR1,#640             ; [CPU_ALU] |208| 
        MOVW      DP,#||motorVars||+48  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1472,column 5,is_stmt,isa 0
        MOVL      XAR3,#||motorVars||   ; [CPU_ARAU] |1472| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R1H,*+XAR5[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |208| 
||      MOV32     R2H,@||motorVars||+48 ; [CPU_FPU] |223| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1472,column 5,is_stmt,isa 0
        MOVL      XAR0,#606             ; [CPU_ALU] |1472| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0

        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |223| 
||      MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |208| 

	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1478,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1478| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R1H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1472,column 5,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R1H       ; [CPU_FPU] |1472| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1478,column 5,is_stmt,isa 0
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("FCL_runPICtrlWrap_M2")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M2|| ; [CPU_ALU] |1478| 
        ; call occurs [#||FCL_runPICtrlWrap_M2||] ; [] |1478| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1489,column 5,is_stmt,isa 0
        MOVL      XAR0,#658             ; [CPU_ALU] |1489| 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |1489| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |1489| 
        ; branchcc occurs ; [] |1489| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1497,column 10,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1497| 
        MOVL      XAR4,*+XAR3[AR0]      ; [CPU_ALU] |1497| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1497| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |1497| 
        ; branchcc occurs ; [] |1497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1500,column 9,is_stmt,isa 0
        MOVL      XAR0,#352             ; [CPU_ALU] |1500| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |1500| 
        MOVL      XAR1,#356             ; [CPU_ALU] |1500| 
        MOVW      DP,#||motorVars||+356 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1503,column 9,is_stmt,isa 0
        MOVL      XAR0,#496             ; [CPU_ALU] |1503| 
        MOV32     R1H,*+XAR3[AR0]       ; [CPU_FPU] |1503| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1500,column 9,is_stmt,isa 0
        MOVL      *+XAR3[AR1],ACC       ; [CPU_ALU] |1500| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1503,column 9,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+356 ; [CPU_FPU] |1503| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |1503| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1503| 
        B         ||$C$L21||,LT         ; [CPU_ALU] |1503| 
        ; branchcc occurs ; [] |1503| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1505,column 13,is_stmt,isa 0
        MOVL      ACC,XAR3              ; [CPU_ALU] |1505| 
        ADD       ACC,#323 << 1         ; [CPU_ALU] |1505| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1507,column 13,is_stmt,isa 0
        MOVL      XAR0,#647             ; [CPU_ALU] |1507| 
        MOVW      DP,#||motorVars||+646 ; [CPU_ARAU] 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |1507| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1505,column 13,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1507,column 13,is_stmt,isa 0
        CMP       AL,@||motorVars||+646 ; [CPU_ALU] |1507| 
        B         ||$C$L21||,HI         ; [CPU_ALU] |1507| 
        ; branchcc occurs ; [] |1507| 
        MOVW      DP,#||motorVars||+612 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1512,column 17,is_stmt,isa 0
        MOVL      XAR4,@||motorVars||+612 ; [CPU_ALU] |1512| 
        MOVW      DP,#||motorVars||+646 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1509,column 17,is_stmt,isa 0
        MOV       @||motorVars||+646,#0 ; [CPU_ALU] |1509| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1512,column 17,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1512| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |1512| 
        ; branch occurs ; [] |1512| 
||$C$L19||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1516,column 10,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |1516| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |1516| 
        ; branchcc occurs ; [] |1516| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1519,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1519| 
        MOVL      XAR0,#354             ; [CPU_ALU] |1519| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1519| 
        MOVL      XAR0,#356             ; [CPU_ALU] |1519| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1519| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |1519| 
        ; branch occurs ; [] |1519| 
||$C$L20||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1492| 
        MOVL      XAR0,#612             ; [CPU_ALU] |1492| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1494,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1494| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1492| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 9,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |1493| 
        MOVL      XAR1,#496             ; [CPU_ALU] |1493| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1494,column 9,is_stmt,isa 0
        MOVL      XAR0,#356             ; [CPU_ALU] |1494| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1492,column 9,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |1492| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1493,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |1493| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1494,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1494| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1495,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1495| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1495| 
        ; call occurs [#||FCL_resetController||] ; [] |1495| 
||$C$L21||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1525,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1525| 
        MOVL      XAR0,#612             ; [CPU_ALU] |1525| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1525| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1525| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |1525| 
        ; branchcc occurs ; [] |1525| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1528,column 9,is_stmt,isa 0
        MOVL      XAR1,#422             ; [CPU_ALU] |1528| 
        ZERO      R1H                   ; [CPU_FPU] |1528| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1529,column 9,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |1529| 
        ZERO      R0H                   ; [CPU_FPU] |1529| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1528,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |1528| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1529,column 9,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1529| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1534,column 9,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |1534| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1534| 
        MOVL      XAR0,#422             ; [CPU_ALU] |1534| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1534| 
||$C$L23||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |73| 
        MOVL      XAR1,#422             ; [CPU_ALU] |73| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |73| 
        MOVW      DP,#||motorVars||+436 ; [CPU_ARAU] 
        MOVL      XAR0,#436             ; [CPU_ALU] |73| 
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVXI     R0H,#55872            ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+436 ; [CPU_FPU] |76| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |76| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L26||,LT         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |83| 
        ADD       ACC,#215 << 1         ; [CPU_ALU] |83| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      XAR0,#424             ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
        ADDL      *+XAR5[0],ACC         ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_FPU] |85| 
        CMPL      ACC,@||motorVars||+430 ; [CPU_ALU] |85| 
        B         ||$C$L27||,HI         ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 4,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+432 ; [CPU_FPU] |87| 
        MOV32     R1H,@||motorVars||+422 ; [CPU_FPU] |87| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |87| 
        MOVST0    ZF, NF                ; [CPU_FPU] |87| 
        B         ||$C$L24||,GEQ        ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 93,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |93| 
        MOV32     R1H,@||motorVars||+432 ; [CPU_FPU] |93| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |93| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |93| 
        B         ||$C$L25||,UNC        ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L24||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |89| 
        MOV32     R1H,@||motorVars||+432 ; [CPU_FPU] |89| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |89| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
||$C$L25||:    
        MOV32     @||motorVars||+432,R0H ; [CPU_FPU] |89| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 96,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |96| 
        MOVL      @||motorVars||+430,ACC ; [CPU_ALU] |96| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] |96| 
        ; branch occurs ; [] |96| 
||$C$L26||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR0,#422             ; [CPU_ALU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |102| 
        MOV       AH,#32767             ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |101| 
        MOVL      XAR1,#432             ; [CPU_ALU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOVL      XAR0,#434             ; [CPU_ALU] |102| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |101| 
||$C$L27||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVL      XAR0,#432             ; [CPU_ALU] |109| 
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |109| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1543| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVL      XAR0,#428             ; [CPU_ALU] |109| 
        MOV32     R2H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MOVL      XAR0,#426             ; [CPU_ALU] |109| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |109| 
        MINF32    R0H,R2H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 5,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1543| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1543| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     @||motorVars||+432,R0H ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 5,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+432 ; [CPU_FPU] |1543| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1543| 
        MOVW      DP,#||motorVars||+612 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1543,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |1543| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        ADDL      ACC,@||motorVars||+612 ; [CPU_ALU] |66| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |68| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L28||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L30||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L29||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L28||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L29||:    
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] 
||$C$L30||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1547,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1547| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |80| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1547,column 5,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1547| 
        ADDL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |1547| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1547| 
        MOVL      XAR0,#388             ; [CPU_ALU] |1547| 
        MOVW      DP,#||motorVars||+388 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1548,column 5,is_stmt,isa 0
        MOVL      XAR1,#476             ; [CPU_ALU] |1548| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1547,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1547| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |1547| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVL      XAR0,#480             ; [CPU_ALU] |76| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1548,column 5,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+388 ; [CPU_ALU] |1548| 
        MOVW      DP,#||motorVars||+476 ; [CPU_ARAU] 
        MOVL      *+XAR5[AR1],ACC       ; [CPU_ALU] |1548| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     R1H,@||motorVars||+476 ; [CPU_FPU] |76| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |76| 
        MOVL      XAR0,#494             ; [CPU_ALU] |76| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+494 ; [CPU_FPU] |78| 
        CMPF32    R0H,#48896            ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L31||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 82,column 7,is_stmt,isa 0
        CMPF32    R0H,#16128            ; [CPU_FPU] |82| 
        MOVST0    ZF, NF                ; [CPU_FPU] |82| 
        B         ||$C$L33||,LEQ        ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 84,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |84| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L31||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 80,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |80| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
||$C$L32||:    
        MOV32     @||motorVars||+494,R0H ; [CPU_FPU] |80| 
||$C$L33||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |87| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVL      XAR0,#486             ; [CPU_ALU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      XAR1,#480             ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVL      XAR0,#482             ; [CPU_ALU] |87| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVL      XAR0,#488             ; [CPU_ALU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
||      MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |87| 

        MOVL      XAR0,#490             ; [CPU_ALU] |87| 

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |87| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |87| 

        MPYF32    R1H,R3H,R2H           ; [CPU_FPU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1556,column 5,is_stmt,isa 0
        MOVL      XAR0,#612             ; [CPU_ALU] |1556| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1556,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1556| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     @||motorVars||+494,R0H ; [CPU_FPU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MAXF32    R0H,#49024            ; [CPU_FPU] |94| 
        MINF32    R0H,#16256            ; [CPU_FPU] |94| 
        MOV32     @||motorVars||+482,R0H ; [CPU_FPU] |94| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1556,column 5,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1556| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |1556| 
        ; branchcc occurs ; [] |1556| 
        ZERO      R0H                   ; [CPU_FPU] |1556| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |1556| 
        ; branch occurs ; [] |1556| 
||$C$L34||:    
        MOVW      DP,#||motorVars||+358 ; [CPU_ARAU] 
        MOV32     R0H,@||motorVars||+358 ; [CPU_FPU] |1556| 
||$C$L35||:    
        MOVB      ACC,#32               ; [CPU_ALU] |1556| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1556| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1562,column 5,is_stmt,isa 0
        MOVL      XAR0,#496             ; [CPU_FPU] |1562| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1556,column 5,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |1556| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1562,column 5,is_stmt,isa 0
        MOVL      XAR1,#356             ; [CPU_ALU] |1562| 
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1562| 
        MOVXI     R2H,#50604            ; [CPU_FPU] |1562| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1556,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |1556| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1562,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |1562| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |1562| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("ramper")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1562| 
        ; call occurs [#||ramper||] ; [] |1562| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |4872| 
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        MOVW      DP,#||motorVars||+496 ; [CPU_ARAU] 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1562,column 5,is_stmt,isa 0
        MOV32     @||motorVars||+496,R0H ; [CPU_FPU] |1562| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR6,#2               ; [CPU_ALU] |819| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2604,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2604| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2604,column 5,is_stmt,isa 0
        ADD       ACC,#319 << 1         ; [CPU_ALU] |2604| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2604,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2604| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVL      XAR7,#1028            ; [CPU_ALU] |379| 
        MOV       *(0:0x0ce1),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2604,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2604| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |2604| 
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
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$167, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0xa2f)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text:motor1ControlISR"
	.align	2
	.retain
	.retainrefs
	.global	||motor1ControlISR||

$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("motor1ControlISR")
	.dwattr $C$DW$175, DW_AT_low_pc(||motor1ControlISR||)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_linkage_name("motor1ControlISR")
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$175, DW_AT_decl_line(0x97c)
	.dwattr $C$DW$175, DW_AT_decl_column(0x12)
	.dwattr $C$DW$175, DW_AT_TI_interrupt
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(-32)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2429,column 1,is_stmt,address ||motor1ControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motor1ControlISR||

;***************************************************************
;* FNAME: motor1ControlISR              FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 28 SOE     *
;***************************************************************

||motor1ControlISR||:
;* AR5   assigned to $O$C6
;* R0    assigned to $O$C7
;* AR4   assigned to $O$C8
;* AR4   assigned to $O$C9
;* R0    assigned to $O$C10
;* R0    assigned to $O$C11
;* AR4   assigned to $O$C12
;* AR4   assigned to $O$C13
;* AR4   assigned to $O$C14
;* R1    assigned to $O$C15
;* AR5   assigned to $O$C16
;* R2    assigned to $O$C17
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
;* AR2   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR2   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR4   assigned to $O$K1
;* AR5   assigned to $O$U39
;* AR5   assigned to $O$U39
;* AL    assigned to $O$U41
;* R0    assigned to $O$U115
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* R2    assigned to $O$S1
;* R0    assigned to vdc
$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("vdc")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2b]

;* AR4   assigned to in
$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("in")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg12]

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
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -32
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1291,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1291| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("FCL_runPICtrl_M1")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #||FCL_runPICtrl_M1|| ; [CPU_ALU] |1291| 
        ; call occurs [#||FCL_runPICtrl_M1||] ; [] |1291| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1987,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |1987| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |1987| 
        MOVW      DP,#||FCL_cycleCount|| ; [CPU_ARAU] 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1987| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 187,column 5,is_stmt,isa 0
        CMP       AL,@||FCL_cycleCount|| ; [CPU_ALU] |187| 
        B         ||$C$L36||,HIS        ; [CPU_ALU] |187| 
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
||$C$L36||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 195,column 5,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |195| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |195| 
        MOVL      XAR0,#311             ; [CPU_ALU] |195| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |195| 
        B         ||$C$L37||,LOS        ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 197,column 9,is_stmt,isa 0
        MOV       AL,@||FCL_cycleCount|| ; [CPU_ALU] |197| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |197| 
||$C$L37||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 201,column 5,is_stmt,isa 0
        MOVL      XAR0,#310             ; [CPU_ALU] |201| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |201| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOVL      XAR1,#311             ; [CPU_ALU] |203| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 204,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |204| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 203,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |203| 
||$C$L38||:    
        MOVW      DP,#||motorVars||+311 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        UI16TOF32 R1H,@||motorVars||+311 ; [CPU_FPU] |208| 
        MOVIZ     R0H,#15395            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+72  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR4,@||motorVars||+72 ; [CPU_ALU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |1308| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 208,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |208| 
        MOVW      DP,#||motorVars||+48  ; [CPU_ARAU] 

        MOV32     R1H,@||motorVars||+48 ; [CPU_FPU] |223| 
||      MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |208| 

        MOVW      DP,#||motorVars||+308 ; [CPU_ARAU] 
        MOV32     @||motorVars||+308,R0H ; [CPU_FPU] |208| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[0]         ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOVL      XAR0,#274             ; [CPU_ALU] |1308| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 223,column 5,is_stmt,isa 0
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |223| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1326,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1326| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/dual_axis_servo_drive.h",line 227,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |227| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1308,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1308| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1326,column 5,is_stmt,isa 0
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("FCL_runPICtrlWrap_M1")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #||FCL_runPICtrlWrap_M1|| ; [CPU_ALU] |1326| 
        ; call occurs [#||FCL_runPICtrlWrap_M1||] ; [] |1326| 
        MOVW      DP,#||startModel||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1336,column 5,is_stmt,isa 0
        MOV       AL,@||startModel||    ; [CPU_ALU] |1336| 
        CMPB      AL,#1                 ; [CPU_ALU] |1336| 
        B         ||$C$L43||,EQ         ; [CPU_ALU] |1336| 
        ; branchcc occurs ; [] |1336| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1376,column 9,is_stmt,isa 0
        MOVL      XAR0,#326             ; [CPU_ALU] |1376| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1376| 
        B         ||$C$L40||,EQ         ; [CPU_ALU] |1376| 
        ; branchcc occurs ; [] |1376| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1383,column 14,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1383| 
        MOVL      XAR5,*+XAR2[AR0]      ; [CPU_ALU] |1383| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1383| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |1383| 
        ; branchcc occurs ; [] |1383| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1385,column 13,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |1385| 
        MOVB      XAR1,#24              ; [CPU_ALU] |1385| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |1385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1387,column 13,is_stmt,isa 0
        MOVB      XAR0,#164             ; [CPU_ALU] |1387| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |1387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1385,column 13,is_stmt,isa 0
        MOVL      *+XAR2[AR1],ACC       ; [CPU_ALU] |1385| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1387,column 13,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1387| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |1387| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |1387| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1387| 
        B         ||$C$L42||,LT         ; [CPU_ALU] |1387| 
        ; branchcc occurs ; [] |1387| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1389,column 17,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |1389| 
        ADD       ACC,#157 << 1         ; [CPU_ALU] |1389| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1391,column 17,is_stmt,isa 0
        MOVL      XAR0,#315             ; [CPU_ALU] |1391| 
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |1391| 
        MOVL      XAR0,#314             ; [CPU_ALU] |1391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1389,column 17,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |1389| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1391,column 17,is_stmt,isa 0
        CMP       AL,*+XAR2[AR0]        ; [CPU_ALU] |1391| 
        B         ||$C$L42||,HI         ; [CPU_ALU] |1391| 
        ; branchcc occurs ; [] |1391| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1394,column 21,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1394| 
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |1394| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1393,column 21,is_stmt,isa 0
        MOVL      XAR1,#314             ; [CPU_ALU] |1393| 
        MOV       *+XAR2[AR1],#0        ; [CPU_ALU] |1393| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1394,column 21,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |1394| 
        B         ||$C$L41||,UNC        ; [CPU_ALU] |1394| 
        ; branch occurs ; [] |1394| 
||$C$L39||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1398,column 14,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |1398| 
        B         ||$C$L42||,NEQ        ; [CPU_ALU] |1398| 
        ; branchcc occurs ; [] |1398| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1400,column 13,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+22 ; [CPU_ALU] |1400| 
        MOVL      @||motorVars||+24,ACC ; [CPU_ALU] |1400| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] |1400| 
        ; branch occurs ; [] |1400| 
||$C$L40||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1378,column 13,is_stmt,isa 0
        MOVL      XAR1,#280             ; [CPU_ALU] |1378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1380,column 13,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1378,column 13,is_stmt,isa 0
        MOVL      XAR4,*+XAR2[AR1]      ; [CPU_ALU] |1378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1380,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1379,column 13,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |1379| 
        MOVB      XAR1,#164             ; [CPU_ALU] |1379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1378,column 13,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |1378| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1380,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1380| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1381,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |1381| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1379,column 13,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R1H       ; [CPU_FPU] |1379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1381,column 13,is_stmt,isa 0
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1381| 
        ; call occurs [#||FCL_resetController||] ; [] |1381| 
        MOVL      XAR0,#280             ; [CPU_ALU] 
||$C$L41||:    
        MOVL      XAR5,*+XAR2[AR0]      ; [CPU_ALU] 
||$C$L42||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1406,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1406| 
        B         ||$C$L44||,NEQ        ; [CPU_ALU] |1406| 
        ; branchcc occurs ; [] |1406| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1408,column 13,is_stmt,isa 0
        MOVB      XAR1,#90              ; [CPU_ALU] |1408| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1408| 
        ZERO      R1H                   ; [CPU_FPU] |1408| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1409,column 13,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1409| 
        ZERO      R0H                   ; [CPU_FPU] |1409| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1408,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |1408| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1409,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1409| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L43||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1341,column 9,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1341| 
        MOVL      XAR0,#326             ; [CPU_ALU] |1341| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1341| 
        CMPB      AL,#1                 ; [CPU_ALU] |1341| 
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |1341| 
        ; branchcc occurs ; [] |1341| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1344,column 13,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1344| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1353,column 13,is_stmt,isa 0
        MOVL      XAR6,@||motorVars||+22 ; [CPU_ALU] |1353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1344,column 13,is_stmt,isa 0
        MOVL      XAR4,*+XAR4[AR0]      ; [CPU_ALU] |1344| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1347,column 13,is_stmt,isa 0
        MOV       AL,@||uvwStateMachine|| ; [CPU_ALU] |1347| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1349,column 17,is_stmt,isa 0
        MOVB      @||uvwStateMachine||,#1,EQ ; [CPU_ALU] |1349| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1353,column 13,is_stmt,isa 0
        MOVL      @||motorVars||+24,XAR6 ; [CPU_ALU] |1353| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1344,column 13,is_stmt,isa 0
        MOVB      *+XAR4[0],#2,UNC      ; [CPU_ALU] |1344| 
||$C$L44||:    
        MOVW      DP,#||motorVars||+28  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1356,column 13,is_stmt,isa 0
        MOVL      ACC,@||motorVars||+28 ; [CPU_ALU] |1356| 
        MOVW      DP,#||motorVars||+90  ; [CPU_ARAU] 
        MOVL      @||motorVars||+90,ACC ; [CPU_ALU] |1356| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L45||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1361,column 13,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1361| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1361| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1365,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1365| 
        MOVB      XAR0,#164             ; [CPU_ALU] |1365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1362,column 13,is_stmt,isa 0
        MOV       @||uvwStateMachine||,#0 ; [CPU_ALU] |1362| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1361,column 13,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |1361| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1365,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1365| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1364,column 13,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |1364| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1364| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1367,column 13,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |1367| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1367| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1366,column 13,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |1366| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |1366| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1368,column 13,is_stmt,isa 0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1368| 
        ; call occurs [#||FCL_resetController||] ; [] |1368| 
||$C$L46||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |73| 
        MOVB      XAR0,#100             ; [CPU_ALU] |73| 
        MOVB      XAR1,#90              ; [CPU_ALU] |73| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |73| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |73| 
        MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |73| 
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        ADDB      XAR4,#98              ; [CPU_ALU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOV32     R1H,R2H               ; [CPU_FPU] |76| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |76| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L49||,LT         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |85| 
        MOVB      XAR1,#98              ; [CPU_ALU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |85| 
        CMPL      ACC,*+XAR5[AR1]       ; [CPU_ALU] |85| 
        B         ||$C$L50||,HI         ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 4,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |87| 
        MOVB      XAR0,#90              ; [CPU_ALU] |87| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |87| 
        ADDB      XAR4,#100             ; [CPU_ALU] |87| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |87| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |87| 
        MOVST0    ZF, NF                ; [CPU_FPU] |87| 
        B         ||$C$L47||,GEQ        ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 93,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |93| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |93| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |93| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |93| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L47||:    
        MOVW      DP,#||motorVars||+100 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |89| 
        MOV32     R1H,@||motorVars||+100 ; [CPU_FPU] |89| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |89| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+100,R0H ; [CPU_FPU] |89| 
||$C$L48||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 96,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |96| 
        MOVW      DP,#||motorVars||+98  ; [CPU_ARAU] 
        MOVL      @||motorVars||+98,ACC ; [CPU_ALU] |96| 
        B         ||$C$L50||,UNC        ; [CPU_ALU] |96| 
        ; branch occurs ; [] |96| 
||$C$L49||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |101| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AH,#32767             ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        ADDB      XAR4,#100             ; [CPU_ALU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |101| 
||$C$L50||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |109| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |109| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1422,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1422| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |109| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |109| 
        MOVB      XAR0,#94              ; [CPU_ALU] |109| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |109| 
        MINF32    R0H,R2H               ; [CPU_FPU] |109| 
        MOVB      XAR0,#100             ; [CPU_ALU] |109| 
        MAXF32    R0H,R1H               ; [CPU_FPU] |109| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1422,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1422| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1422| 
        MOVB      XAR0,#100             ; [CPU_FPU] |1422| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1422| 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] |1422| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 66,column 1,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |66| 
        MOVL      XAR0,#280             ; [CPU_ALU] |66| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |66| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |66| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1422,column 5,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |1422| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |68| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |68| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |68| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |68| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |71| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L51||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L53||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L52||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L51||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |73| 
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L52||:    
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |73| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] 
||$C$L53||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |80| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |80| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1426,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1426| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |1426| 
        MOVL      XAR0,#280             ; [CPU_ALU] |1426| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1426| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |1426| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1427,column 5,is_stmt,isa 0
        MOVB      XAR1,#144             ; [CPU_ALU] |1427| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1426,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |1426| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |1426| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |1426| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1427,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |1427| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1427| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOVB      XAR0,#148             ; [CPU_ALU] |76| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1427,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |1427| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |76| 
        MOVB      XAR0,#144             ; [CPU_ALU] |76| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |76| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |76| 
        ADDB      ACC,#162              ; [CPU_ALU] |76| 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |76| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        CMPF32    R0H,#48896            ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        B         ||$C$L54||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 82,column 7,is_stmt,isa 0
        CMPF32    R0H,#16128            ; [CPU_FPU] |82| 
        MOVST0    ZF, NF                ; [CPU_FPU] |82| 
        B         ||$C$L55||,LEQ        ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 84,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |84| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |84| 
        B         ||$C$L55||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L54||:    
        MOVW      DP,#||motorVars||+162 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 80,column 3,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+162 ; [CPU_FPU] |80| 
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |80| 
        NOP       ; [CPU_ALU] 
        MOV32     @||motorVars||+162,R0H ; [CPU_FPU] |80| 
||$C$L55||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOVB      XAR0,#162             ; [CPU_ALU] |87| 
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |87| 
        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#154             ; [CPU_ALU] |87| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#150             ; [CPU_ALU] |87| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
        MOVB      XAR0,#156             ; [CPU_ALU] |87| 

        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |87| 
||      MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |87| 

        MOVB      XAR0,#158             ; [CPU_ALU] |87| 

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |87| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |87| 

        MPYF32    R1H,R3H,R2H           ; [CPU_FPU] |87| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |87| 
        MOVB      XAR0,#162             ; [CPU_ALU] |87| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |87| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |1435| 
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |1435| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVB      XAR0,#144             ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MAXF32    R0H,#49024            ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |104| 
        MOVB      XAR0,#148             ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MINF32    R0H,#16256            ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 104,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MOVB      XAR0,#150             ; [CPU_ALU] |94| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |94| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1435,column 5,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |1435| 
        B         ||$C$L56||,NEQ        ; [CPU_ALU] |1435| 
        ; branchcc occurs ; [] |1435| 
        ZERO      R2H                   ; [CPU_FPU] |1435| 
        B         ||$C$L57||,UNC        ; [CPU_ALU] |1435| 
        ; branch occurs ; [] |1435| 
||$C$L56||:    
        MOVW      DP,#||motorVars||+26  ; [CPU_ARAU] 
        MOV32     R2H,@||motorVars||+26 ; [CPU_FPU] |1435| 
||$C$L57||:    
        MOVB      XAR0,#32              ; [CPU_ALU] |1435| 
        MOVW      DP,#||motorVars||+24  ; [CPU_ARAU] 
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |1435| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1441,column 5,is_stmt,isa 0
        MOV32     R0H,@||motorVars||+24 ; [CPU_FPU] |1441| 
        MOVIZ     R2H,#14119            ; [CPU_FPU] |1441| 
        MOVW      DP,#||motorVars||+164 ; [CPU_ARAU] 
        MOV32     R1H,@||motorVars||+164 ; [CPU_FPU] |1441| 
        MOVXI     R2H,#50604            ; [CPU_FPU] |1441| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("ramper")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |1441| 
        ; call occurs [#||ramper||] ; [] |1441| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2480,column 5,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |2480| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVL      XAR5,#||hal||         ; [CPU_ARAU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2480,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR2[AR0]      ; [CPU_ALU] |2480| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 1441,column 5,is_stmt,isa 0
        MOVB      XAR0,#164             ; [CPU_ALU] |1441| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |1441| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |330| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2481,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |2481| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[3],#0xf000  ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2481,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR2[AR0]      ; [CPU_ALU] |2481| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2482,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |2482| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |2482| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        ADDF32    R1H,R0H,#16256        ; [CPU_FPU] |330| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,#17664        ; [CPU_FPU] |330| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |330| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |2483| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV32     XAR6,R1H              ; [CPU_FPU] |330| 
        MOVW      DP,#||hal||+12        ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2481,column 5,is_stmt,isa 0
        MOVB      XAR1,#28              ; [CPU_ALU] |2481| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 5,is_stmt,isa 0
        MOVL      P,*+XAR4[AR0]         ; [CPU_ALU] |2483| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV       AH,AR6                ; [CPU_ALU] |330| 
        AND       AH,#0x0fff            ; [CPU_ALU] |330| 
        MOVL      XAR6,@$BLOCKED(||hal||)+12 ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2481,column 5,is_stmt,isa 0
        MOVL      XT,*+XAR4[AR1]        ; [CPU_ALU] |2481| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVL      XAR0,#280             ; [CPU_ALU] |330| 
        OR        AH,AL                 ; [CPU_ALU] |330| 
        MOV       *+XAR6[3],AH          ; [CPU_ALU] |330| 
        MOVB      ACC,#34               ; [CPU_ALU] |330| 
        ADDL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |330| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |330| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |330| 
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |330| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,#17664        ; [CPU_FPU] |330| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |330| 
        MOVB      XAR0,#14              ; [CPU_ALU] |330| 
        MOVL      XAR4,*+XAR5[AR0]      ; [CPU_ALU] |330| 
        MOV32     ACC,R1H               ; [CPU_FPU] |330| 
        MOV       AH,AL                 ; [CPU_ALU] |330| 
        AND       AH,#0x0fff            ; [CPU_ALU] |330| 
        AND       AL,*+XAR4[3],#0xf000  ; [CPU_FPU] |330| 
        MOVL      XAR4,@$BLOCKED(||hal||)+14 ; [CPU_FPU] |330| 
        OR        AH,AL                 ; [CPU_ALU] |330| 
        MOVW      DP,#||dlogCh1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2482,column 5,is_stmt,isa 0
        MOV32     @||dlogCh3||,R0H      ; [CPU_FPU] |2482| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2481,column 5,is_stmt,isa 0
        MOVL      @||dlogCh2||,XT       ; [CPU_FPU] |2481| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2483,column 5,is_stmt,isa 0
        MOVL      @||dlogCh4||,P        ; [CPU_FPU] |2483| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2480,column 5,is_stmt,isa 0
        MOVL      @||dlogCh1||,XAR7     ; [CPU_FPU] |2480| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV       *+XAR4[3],AH          ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2564,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |2564| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_FUNC||  ; [CPU_ALU] |2564| 
        ; call occurs [#||DLOG_4CH_F_FUNC||] ; [] |2564| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2569,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |2569| 
        ADD       ACC,#153 << 1         ; [CPU_ALU] |2569| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2569,column 5,is_stmt,isa 0
        MOVL      XAR2,ACC              ; [CPU_ALU] |2569| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 2569,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2569| 
        ADDL      *+XAR2[0],ACC         ; [CPU_ALU] |2569| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -30
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
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$175, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0xa0b)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text:C3"
	.clink
	.global	||C3||

$C$DW$185	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$185, DW_AT_name("C3")
	.dwattr $C$DW$185, DW_AT_low_pc(||C3||)
	.dwattr $C$DW$185, DW_AT_high_pc(0x00)
	.dwattr $C$DW$185, DW_AT_linkage_name("C3")
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$185, DW_AT_decl_line(0x322)
	.dwattr $C$DW$185, DW_AT_decl_column(0x06)
	.dwattr $C$DW$185, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 803,column 1,is_stmt,address ||C3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 806,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |806| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |806| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$185, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$185, DW_AT_TI_end_line(0x328)
	.dwattr $C$DW$185, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$185

	.sect	".text:C2"
	.clink
	.global	||C2||

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("C2")
	.dwattr $C$DW$187, DW_AT_low_pc(||C2||)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_linkage_name("C2")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$187, DW_AT_decl_line(0x313)
	.dwattr $C$DW$187, DW_AT_decl_column(0x06)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 788,column 1,is_stmt,address ||C2||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 792,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C3||          ; [CPU_ARAU] |792| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |792| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x31a)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:B3"
	.clink
	.global	||B3||

$C$DW$189	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$189, DW_AT_name("B3")
	.dwattr $C$DW$189, DW_AT_low_pc(||B3||)
	.dwattr $C$DW$189, DW_AT_high_pc(0x00)
	.dwattr $C$DW$189, DW_AT_linkage_name("B3")
	.dwattr $C$DW$189, DW_AT_external
	.dwattr $C$DW$189, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$189, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$189, DW_AT_decl_column(0x06)
	.dwattr $C$DW$189, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 742,column 1,is_stmt,address ||B3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 746,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |746| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |746| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$189, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$189, DW_AT_TI_end_line(0x2ec)
	.dwattr $C$DW$189, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$189

	.sect	".text:B2"
	.clink
	.global	||B2||

$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("B2")
	.dwattr $C$DW$191, DW_AT_low_pc(||B2||)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_linkage_name("B2")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$191, DW_AT_decl_line(0x2c6)
	.dwattr $C$DW$191, DW_AT_decl_column(0x06)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 711,column 1,is_stmt,address ||B2||,isa 0

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
;* AR4   assigned to $O$U17
;* AR6   assigned to $O$L1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 957,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x721a)        ; [CPU_ALU] |957| 
        LSR       AL,8                  ; [CPU_ALU] |957| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |957| 
        B         ||$C$L59||,NEQ        ; [CPU_ALU] |957| 
        ; branchcc occurs ; [] |957| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 719,column 9,is_stmt,isa 0
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("sendWaveformData")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #||sendWaveformData|| ; [CPU_ALU] |719| 
        ; call occurs [#||sendWaveformData||] ; [] |719| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 723,column 20,is_stmt,isa 0
        MOV       AL,@||sciPrepCount||  ; [CPU_ALU] |723| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |723| 
        ; branchcc occurs ; [] |723| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h",line 1136,column 1,is_stmt,isa 0
        MOVZ      AR6,@||sciPrepCount|| ; [CPU_ALU] |1136| 
        MOVL      XAR4,#||sciPrepBuffer|| ; [CPU_ARAU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L58||:    
        MOV       *(0:0x7219),*XAR4++   ; [CPU_ALU] |1136| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 723,column 20,is_stmt,isa 0
        BANZ      ||$C$L58||,AR6--      ; [CPU_ALU] |723| 
        ; branchcc occurs ; [] |723| 
||$C$L59||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 731,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B3||          ; [CPU_ARAU] |731| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |731| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$191, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x2dd)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text:A3"
	.clink
	.global	||A3||

$C$DW$194	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$194, DW_AT_name("A3")
	.dwattr $C$DW$194, DW_AT_low_pc(||A3||)
	.dwattr $C$DW$194, DW_AT_high_pc(0x00)
	.dwattr $C$DW$194, DW_AT_linkage_name("A3")
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$194, DW_AT_decl_line(0x293)
	.dwattr $C$DW$194, DW_AT_decl_column(0x06)
	.dwattr $C$DW$194, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 660,column 1,is_stmt,address ||A3||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 662,column 5,is_stmt,isa 0
        INC       @||led1Cnt||          ; [CPU_ALU] |662| 
        CMP       @||led1Cnt||,#800     ; [CPU_ALU] |662| 
        B         ||$C$L60||,LO         ; [CPU_ALU] |662| 
        ; branchcc occurs ; [] |662| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 665,column 9,is_stmt,isa 0
        MOV       @||led1Cnt||,#0       ; [CPU_ALU] |665| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f0e),ACC       ; [CPU_FPU] |505| 
||$C$L60||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 671,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |671| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |671| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$194, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x2a1)
	.dwattr $C$DW$194, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$194

	.sect	".text:A2"
	.clink
	.global	||A2||

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("A2")
	.dwattr $C$DW$196, DW_AT_low_pc(||A2||)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_linkage_name("A2")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$196, DW_AT_decl_line(0x282)
	.dwattr $C$DW$196, DW_AT_decl_column(0x06)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 643,column 1,is_stmt,address ||A2||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 649,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A3||          ; [CPU_ARAU] |649| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |649| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x28b)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".text:C1"
	.clink
	.global	||C1||

$C$DW$198	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$198, DW_AT_name("C1")
	.dwattr $C$DW$198, DW_AT_low_pc(||C1||)
	.dwattr $C$DW$198, DW_AT_high_pc(0x00)
	.dwattr $C$DW$198, DW_AT_linkage_name("C1")
	.dwattr $C$DW$198, DW_AT_external
	.dwattr $C$DW$198, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$198, DW_AT_decl_line(0x2fa)
	.dwattr $C$DW$198, DW_AT_decl_column(0x06)
	.dwattr $C$DW$198, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 763,column 1,is_stmt,address ||C1||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 764,column 5,is_stmt,isa 0
        INC       @||led2Cnt||          ; [CPU_ALU] |764| 
        CMP       @||led2Cnt||,#400     ; [CPU_ALU] |764| 
        B         ||$C$L61||,LO         ; [CPU_ALU] |764| 
        ; branchcc occurs ; [] |764| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |505| 
        MOV       AH,#32768             ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 768,column 9,is_stmt,isa 0
        MOV       @||led2Cnt||,#0       ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f06),ACC       ; [CPU_FPU] |505| 
||$C$L61||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 775,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C2||          ; [CPU_ARAU] |775| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |775| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$198, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x30b)
	.dwattr $C$DW$198, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$198

	.sect	".text:B1"
	.clink
	.global	||B1||

$C$DW$200	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$200, DW_AT_name("B1")
	.dwattr $C$DW$200, DW_AT_low_pc(||B1||)
	.dwattr $C$DW$200, DW_AT_high_pc(0x00)
	.dwattr $C$DW$200, DW_AT_linkage_name("B1")
	.dwattr $C$DW$200, DW_AT_external
	.dwattr $C$DW$200, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$200, DW_AT_decl_line(0x2af)
	.dwattr $C$DW$200, DW_AT_decl_column(0x06)
	.dwattr $C$DW$200, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 688,column 1,is_stmt,address ||B1||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 700,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B2||          ; [CPU_ARAU] |700| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |700| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$200, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$200, DW_AT_TI_end_line(0x2be)
	.dwattr $C$DW$200, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$200

	.sect	".text:A1"
	.clink
	.global	||A1||

$C$DW$202	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$202, DW_AT_name("A1")
	.dwattr $C$DW$202, DW_AT_low_pc(||A1||)
	.dwattr $C$DW$202, DW_AT_high_pc(0x00)
	.dwattr $C$DW$202, DW_AT_linkage_name("A1")
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$202, DW_AT_decl_line(0x271)
	.dwattr $C$DW$202, DW_AT_decl_column(0x06)
	.dwattr $C$DW$202, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 626,column 1,is_stmt,address ||A1||,isa 0

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 628,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorVars||   ; [CPU_ARAU] |628| 
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |628| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("runMotorControl")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #||runMotorControl||  ; [CPU_ALU] |628| 
        ; call occurs [#||runMotorControl||] ; [] |628| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 632,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A2||          ; [CPU_ARAU] |632| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |632| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$202, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x27a)
	.dwattr $C$DW$202, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$202

	.sect	".text:A0"
	.clink
	.global	||A0||

$C$DW$205	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$205, DW_AT_name("A0")
	.dwattr $C$DW$205, DW_AT_low_pc(||A0||)
	.dwattr $C$DW$205, DW_AT_high_pc(0x00)
	.dwattr $C$DW$205, DW_AT_linkage_name("A0")
	.dwattr $C$DW$205, DW_AT_external
	.dwattr $C$DW$205, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$205, DW_AT_decl_line(0x228)
	.dwattr $C$DW$205, DW_AT_decl_column(0x06)
	.dwattr $C$DW$205, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 553,column 1,is_stmt,address ||A0||,isa 0

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
        B         ||$C$L62||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 560,column 9,is_stmt,isa 0
        MOVL      XAR7,@||A_Task_Ptr||  ; [CPU_ALU] |560| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 560,column 9,is_stmt,isa 0
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_call
	.dwattr $C$DW$206, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |560| 
        ; call occurs [XAR7] ; [] |560| 
        MOVW      DP,#||vTimer0||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 563,column 9,is_stmt,isa 0
        INC       @||vTimer0||          ; [CPU_ALU] |563| 
        MOVW      DP,#||serialCommsTimer|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 564,column 9,is_stmt,isa 0
        INC       @||serialCommsTimer|| ; [CPU_ALU] |564| 
||$C$L62||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 567,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B0||          ; [CPU_ARAU] |567| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |567| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$205, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x238)
	.dwattr $C$DW$205, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$205

	.sect	".text:B0"
	.clink
	.global	||B0||

$C$DW$208	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$208, DW_AT_name("B0")
	.dwattr $C$DW$208, DW_AT_low_pc(||B0||)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_linkage_name("B0")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$208, DW_AT_decl_line(0x240)
	.dwattr $C$DW$208, DW_AT_decl_column(0x06)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 577,column 1,is_stmt,address ||B0||,isa 0

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
        B         ||$C$L63||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 584,column 9,is_stmt,isa 0
        MOVL      XAR7,@||B_Task_Ptr||  ; [CPU_ALU] |584| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 584,column 9,is_stmt,isa 0
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_call
	.dwattr $C$DW$209, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |584| 
        ; call occurs [XAR7] ; [] |584| 
        MOVW      DP,#||vTimer1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 586,column 9,is_stmt,isa 0
        INC       @||vTimer1||          ; [CPU_ALU] |586| 
||$C$L63||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 589,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C0||          ; [CPU_ARAU] |589| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |589| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$208, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x24e)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text:C0"
	.clink
	.global	||C0||

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("C0")
	.dwattr $C$DW$211, DW_AT_low_pc(||C0||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_linkage_name("C0")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$211, DW_AT_decl_line(0x256)
	.dwattr $C$DW$211, DW_AT_decl_column(0x06)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 599,column 1,is_stmt,address ||C0||,isa 0

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
        B         ||$C$L64||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 606,column 9,is_stmt,isa 0
        MOVL      XAR7,@||C_Task_Ptr||  ; [CPU_ALU] |606| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 606,column 9,is_stmt,isa 0
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_call
	.dwattr $C$DW$212, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |606| 
        ; call occurs [XAR7] ; [] |606| 
        MOVW      DP,#||vTimer2||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 609,column 9,is_stmt,isa 0
        INC       @||vTimer2||          ; [CPU_ALU] |609| 
||$C$L64||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 612,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |612| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |612| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x265)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$214	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$214, DW_AT_name("main")
	.dwattr $C$DW$214, DW_AT_low_pc(||main||)
	.dwattr $C$DW$214, DW_AT_high_pc(0x00)
	.dwattr $C$DW$214, DW_AT_linkage_name("main")
	.dwattr $C$DW$214, DW_AT_external
	.dwattr $C$DW$214, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$214, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$214, DW_AT_decl_column(0x06)
	.dwattr $C$DW$214, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 288,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||

;***************************************************************
;* FNAME: main                          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||main||:
;* AR7   assigned to $O$C4
;* AR1   assigned to $O$C5
;* AL    assigned to $O$C6
;* AR2   assigned to $O$C7
;* AR1   assigned to $O$C8
;* AR5   assigned to $O$K23
;* AR2   assigned to $O$K23
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AR5   assigned to handle
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("handle")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("base")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("base")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("base")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("base")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("base")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("base")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("base")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("base")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("base")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to handle
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("handle")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to base
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("base")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg12]

;* AL    assigned to base
$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("base")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("base")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to base
$C$DW$229	.dwtag  DW_TAG_variable
	.dwattr $C$DW$229, DW_AT_name("base")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$230	.dwtag  DW_TAG_variable
	.dwattr $C$DW$230, DW_AT_name("base")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$231	.dwtag  DW_TAG_variable
	.dwattr $C$DW$231, DW_AT_name("base")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$232	.dwtag  DW_TAG_variable
	.dwattr $C$DW$232, DW_AT_name("base")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$233	.dwtag  DW_TAG_variable
	.dwattr $C$DW$233, DW_AT_name("base")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("base")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg12]

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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 290,column 5,is_stmt,isa 0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("Device_init")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |290| 
        ; call occurs [#||Device_init||] ; [] |290| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 295,column 5,is_stmt,isa 0
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |295| 
        ; call occurs [#||Device_initGPIO||] ; [] |295| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 296,column 5,is_stmt,isa 0
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("Board_init")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #||Board_init||       ; [CPU_ALU] |296| 
        ; call occurs [#||Board_init||] ; [] |296| 
 clrc INTM
 clrc DBGM
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 306,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |306| 
        MOVL      XAR4,#||hal||         ; [CPU_ARAU] |306| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("HAL_init")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #||HAL_init||         ; [CPU_ALU] |306| 
        ; call occurs [#||HAL_init||] ; [] |306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 307,column 5,is_stmt,isa 0
        MOVL      XAR1,#||halMtr||      ; [CPU_ARAU] |307| 
        MOVW      DP,#||halHandle||     ; [CPU_ARAU] 
        MOVB      ACC,#18               ; [CPU_ALU] |307| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 306,column 5,is_stmt,isa 0
        MOVL      @||halHandle||,XAR4   ; [CPU_ALU] |306| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 307,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |307| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |307| 
        ; call occurs [#||HAL_MTR_init||] ; [] |307| 
        MOVL      XAR2,#||halMtrHandle|| ; [CPU_ARAU] |307| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 308,column 5,is_stmt,isa 0
        ADDB      XAR1,#18              ; [CPU_ALU] |308| 
        MOVB      ACC,#18               ; [CPU_ALU] |308| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 307,column 5,is_stmt,isa 0
        MOVL      *+XAR2[0],XAR4        ; [CPU_FPU] |307| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 308,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |308| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #||HAL_MTR_init||     ; [CPU_ALU] |308| 
        ; call occurs [#||HAL_MTR_init||] ; [] |308| 
        MOVL      *+XAR2[2],XAR4        ; [CPU_ALU] |308| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 314,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halHandle||   ; [CPU_ALU] |314| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #||HAL_setParams||    ; [CPU_ALU] |314| 
        ; call occurs [#||HAL_setParams||] ; [] |314| 
 clrc INTM
 clrc DBGM
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 326,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |326| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |326| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |326| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 327,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |327| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #||HAL_setMotorParams|| ; [CPU_ALU] |327| 
        ; call occurs [#||HAL_setMotorParams||] ; [] |327| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
        MOVW      DP,#||samplingRate||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 333,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |333| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 338,column 5,is_stmt,isa 0
        MOVL      XAR2,#||motorVars||   ; [CPU_ARAU] |338| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 333,column 5,is_stmt,isa 0
        MOV32     R0H,@||samplingRate|| ; [CPU_FPU] |333| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |333| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 338,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |338| 
        MOVL      XAR5,@||halMtrHandle|| ; [CPU_ALU] |338| 
        MOVW      DP,#||dt||            ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 333,column 5,is_stmt,isa 0
        MOV32     @||dt||,R0H           ; [CPU_FPU] |333| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 338,column 5,is_stmt,isa 0
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |338| 
        ; call occurs [#||initMotorParameters||] ; [] |338| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 341,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |341| 
        MOVL      XAR5,@||halMtrHandle||+2 ; [CPU_ALU] |341| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |341| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |341| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("initMotorParameters")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #||initMotorParameters|| ; [CPU_ALU] |341| 
        ; call occurs [#||initMotorParameters||] ; [] |341| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 344,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |344| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("initControlVars")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |344| 
        ; call occurs [#||initControlVars||] ; [] |344| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 347,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |347| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |347| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |347| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("initControlVars")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #||initControlVars||  ; [CPU_ALU] |347| 
        ; call occurs [#||initControlVars||] ; [] |347| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOVL      XAR1,#348             ; [CPU_ALU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 350,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |350| 
        MOVIZ     R0H,#16656            ; [CPU_FPU] |350| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16656            ; [CPU_FPU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 350,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |350| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 355,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |355| 
        MOVB      XAR0,#16              ; [CPU_ALU] |355| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 352,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R1H       ; [CPU_FPU] |352| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 355,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |355| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #||HAL_setupMotorFaultProtection|| ; [CPU_ALU] |355| 
        ; call occurs [#||HAL_setupMotorFaultProtection||] ; [] |355| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 359,column 5,is_stmt,isa 0
        MOVL      XAR0,#348             ; [CPU_ALU] |359| 
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |359| 
        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |359| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #||HAL_setupMotorFaultProtection|| ; [CPU_ALU] |359| 
        ; call occurs [#||HAL_setupMotorFaultProtection||] ; [] |359| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 370,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |370| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("resetControlVars")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |370| 
        ; call occurs [#||resetControlVars||] ; [] |370| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 373,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |373| 
        ADD       ACC,#83 << 2          ; [CPU_ALU] |373| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |373| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("resetControlVars")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #||resetControlVars|| ; [CPU_ALU] |373| 
        ; call occurs [#||resetControlVars||] ; [] |373| 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15948            ; [CPU_FPU] |429| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 430,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15820            ; [CPU_FPU] |430| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 436,column 5,is_stmt,isa 0
        MOVL      XAR0,#334             ; [CPU_ALU] |436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 431,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16128            ; [CPU_FPU] |431| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 432,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16128            ; [CPU_FPU] |432| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 436,column 5,is_stmt,isa 0
        MOVL      XAR4,#5000            ; [CPU_ARAU] |436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |429| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 430,column 5,is_stmt,isa 0
        MOVXI     R1H,#52429            ; [CPU_FPU] |430| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 436,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |436| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 431,column 5,is_stmt,isa 0
        MOVL      XAR0,#360             ; [CPU_ALU] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 410,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |410| 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |410| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 431,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 432,column 5,is_stmt,isa 0
        MOVL      XAR0,#364             ; [CPU_ALU] |432| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 411,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |411| 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |411| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 432,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |432| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 412,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |412| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOVL      XAR0,#352             ; [CPU_ALU] |429| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 437,column 5,is_stmt,isa 0
        MOVIZ     R3H,#14979            ; [CPU_FPU] |437| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 412,column 5,is_stmt,isa 0
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |412| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 429,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |429| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 413,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 437,column 5,is_stmt,isa 0
        MOVXI     R3H,#4719             ; [CPU_FPU] |437| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 430,column 5,is_stmt,isa 0
        MOVL      XAR0,#358             ; [CPU_ALU] |430| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 413,column 5,is_stmt,isa 0
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |413| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 419,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16128            ; [CPU_FPU] |419| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 430,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |430| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 437,column 5,is_stmt,isa 0
        MOVL      XAR0,#336             ; [CPU_ALU] |437| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 424,column 5,is_stmt,isa 0
        MOVL      XAR4,#5000            ; [CPU_ARAU] |424| 
        MOVW      DP,#||posPtrMax||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 420,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16128            ; [CPU_FPU] |420| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 437,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |437| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 419,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |419| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 417,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15948            ; [CPU_FPU] |417| 
        MOVXI     R3H,#52429            ; [CPU_FPU] |417| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 424,column 5,is_stmt,isa 0
        MOVL      *+XAR2[2],XAR4        ; [CPU_ALU] |424| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 419,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |419| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 420,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |420| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 418,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15820            ; [CPU_FPU] |418| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 443,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |443| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 420,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |420| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 423,column 5,is_stmt,isa 0
        MOV32     R1H,@||posPtrMax||    ; [CPU_FPU] |423| 
        F32TOUI16 R0H,R1H               ; [CPU_FPU] |423| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 418,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |418| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 417,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |417| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 423,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |423| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 425,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14979            ; [CPU_FPU] |425| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |425| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 417,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |417| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 418,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |418| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 425,column 5,is_stmt,isa 0
        MOV32     *+XAR2[4],R0H         ; [CPU_FPU] |425| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 418,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |418| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 435,column 5,is_stmt,isa 0
        MOVL      XAR0,#648             ; [CPU_ALU] |435| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |435| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 434,column 5,is_stmt,isa 0
        MOVL      XAR0,#649             ; [CPU_ALU] |434| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |434| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 438,column 5,is_stmt,isa 0
        MOVL      XAR0,#642             ; [CPU_ALU] |438| 
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |438| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 422,column 5,is_stmt,isa 0
        MOVL      XAR0,#317             ; [CPU_ALU] |422| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |422| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 426,column 5,is_stmt,isa 0
        MOVL      XAR0,#310             ; [CPU_ALU] |426| 
        MOVB      *+XAR2[AR0],#1,UNC    ; [CPU_ALU] |426| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 423,column 5,is_stmt,isa 0
        MOVL      XAR0,#316             ; [CPU_ALU] |423| 
        MOV       *+XAR2[AR0],AL        ; [CPU_ALU] |423| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 443,column 5,is_stmt,isa 0
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_init||  ; [CPU_ALU] |443| 
        ; call occurs [#||DLOG_4CH_F_init||] ; [] |443| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 445,column 5,is_stmt,isa 0
        MOVL      XAR3,#||dlogCh2||     ; [CPU_ARAU] |445| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 446,column 5,is_stmt,isa 0
        MOVL      XAR1,#||dlogCh3||     ; [CPU_ARAU] |446| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 454,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |454| 
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 444,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlogCh1||     ; [CPU_ARAU] |444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 447,column 5,is_stmt,isa 0
        MOVL      XAR0,#||dlogCh4||     ; [CPU_ARAU] |447| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 448,column 5,is_stmt,isa 0
        MOVL      XAR7,#||DBUFF_4CH1||  ; [CPU_ARAU] |448| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 449,column 5,is_stmt,isa 0
        MOVL      XAR6,#||DBUFF_4CH2||  ; [CPU_ARAU] |449| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 450,column 5,is_stmt,isa 0
        MOVL      XAR5,#||DBUFF_4CH3||  ; [CPU_ARAU] |450| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 454,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |454| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 465,column 11,is_stmt,isa 0
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |465| 
        MOVW      DP,#||dlog_4ch1||+23  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 444,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||),XAR4 ; [CPU_ALU] |444| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 452,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+23,#200,UNC ; [CPU_ALU] |452| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 453,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+21,#5,UNC ; [CPU_ALU] |453| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 455,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+20,#2,UNC ; [CPU_ALU] |455| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 445,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+2,XAR3 ; [CPU_ALU] |445| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 446,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+4,XAR1 ; [CPU_ALU] |446| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 447,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+6,XAR0 ; [CPU_ALU] |447| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 448,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+8,XAR7 ; [CPU_ALU] |448| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 449,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+10,XAR6 ; [CPU_ALU] |449| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 450,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+12,XAR5 ; [CPU_ALU] |450| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 454,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||dlog_4ch1||)+18,R0H ; [CPU_FPU] |454| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 451,column 5,is_stmt,isa 0
        MOVL      XAR4,#||DBUFF_4CH4||  ; [CPU_ARAU] |451| 
        MOVL      @$BLOCKED(||dlog_4ch1||)+14,XAR4 ; [CPU_ALU] |451| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 465,column 11,is_stmt,isa 0
        B         ||$C$L66||,NEQ        ; [CPU_ALU] |465| 
        ; branchcc occurs ; [] |465| 
||$C$L65||:    
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |465| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 467,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |467| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 465,column 11,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |465| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |465| 
        ; branchcc occurs ; [] |465| 
||$C$L66||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 471,column 11,is_stmt,isa 0
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |471| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |471| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |471| 
        MOVB      ACC,#8                ; [CPU_ALU] |471| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |471| 
        B         ||$C$L68||,EQ         ; [CPU_ALU] |471| 
        ; branchcc occurs ; [] |471| 
||$C$L67||:    
        MOVW      DP,#||backTicker||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 473,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 471,column 11,is_stmt,isa 0
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |471| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |471| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |471| 
        MOVB      ACC,#8                ; [CPU_ALU] |471| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |471| 
        B         ||$C$L67||,NEQ        ; [CPU_ALU] |471| 
        ; branchcc occurs ; [] |471| 
||$C$L68||:    
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 477,column 5,is_stmt,isa 0
        MOVL      XAR1,#||halMtrHandle|| ; [CPU_ARAU] |477| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |477| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |477| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |477| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 480,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[2]        ; [CPU_ALU] |480| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #||HAL_setupInterrupts|| ; [CPU_ALU] |480| 
        ; call occurs [#||HAL_setupInterrupts||] ; [] |480| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 483,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |483| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("runOffsetsCalculation")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #||runOffsetsCalculation|| ; [CPU_ALU] |483| 
        ; call occurs [#||runOffsetsCalculation||] ; [] |483| 
        MOVW      DP,#||halMtrHandle||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 489,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle|| ; [CPU_ALU] |489| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |489| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |489| 
        MOVW      DP,#||halMtrHandle||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 492,column 5,is_stmt,isa 0
        MOVL      XAR4,@||halMtrHandle||+2 ; [CPU_ALU] |492| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #||HAL_enableInterrupts|| ; [CPU_ALU] |492| 
        ; call occurs [#||HAL_enableInterrupts||] ; [] |492| 
        MOVW      DP,#||samplingRate||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR0,#320             ; [CPU_ALU] |473| 
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 5,is_stmt,isa 0
        MOVL      XAR5,#||motorVars||   ; [CPU_ARAU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 508,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |508| 
        MOV32     R0H,@||samplingRate|| ; [CPU_FPU] |508| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |473| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVW      DP,#||dt||            ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 508,column 5,is_stmt,isa 0
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |508| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        AND       AL,AR7,#0x001f        ; [CPU_ALU] |473| 
        MOV       T,AL                  ; [CPU_ALU] |473| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |473| 
        MOVL      XAR0,#652             ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 508,column 5,is_stmt,isa 0
        MOV32     @||dt||,R0H           ; [CPU_FPU] |508| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |473| 
        LSLL      ACC,T                 ; [CPU_ALU] |473| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
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
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 5,is_stmt,isa 0
        MOVL      XAR0,#328             ; [CPU_ALU] |497| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 497,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |497| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 5,is_stmt,isa 0
        MOVL      XAR0,#660             ; [CPU_ALU] |498| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 498,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |498| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        SFR       ACC,5                 ; [CPU_ALU] |473| 
        LSL       ACC,2                 ; [CPU_ALU] |473| 
        LSL       ACC,1                 ; [CPU_ALU] |473| 
        ADD       ACC,#127 << 8         ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 513,column 5,is_stmt,isa 0
        MOVB      @||flagSyncRun||,#1,UNC ; [CPU_ALU] |513| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 514,column 5,is_stmt,isa 0
        MOVB      @||ctrlState||,#1,UNC ; [CPU_ALU] |514| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 515,column 5,is_stmt,isa 0
        MOVB      @||runMotor||,#1,UNC  ; [CPU_ALU] |515| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |473| 
||$C$L69||:    
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 529,column 9,is_stmt,isa 0
        MOVL      XAR7,@||Alpha_State_Ptr|| ; [CPU_ALU] |529| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_call
	.dwattr $C$DW$260, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |529| 
        ; call occurs [XAR7] ; [] |529| 
        MOVW      DP,#||uvw_u||         ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7f00)       ; [CPU_FPU] |431| 
        MOV       T,#17                 ; [CPU_ALU] |431| 
        MOVU      ACC,AH                ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 534,column 9,is_stmt,isa 0
        MOV       @||uvw_u||,AL         ; [CPU_ALU] |534| 
        MOVW      DP,#||uvw_v||         ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7f00)       ; [CPU_FPU] |431| 
        LSRL      ACC,T                 ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
        MOV       T,#18                 ; [CPU_ALU] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 535,column 9,is_stmt,isa 0
        MOV       @||uvw_v||,AL         ; [CPU_ALU] |535| 
        MOVW      DP,#||uvw_w||         ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7f00)       ; [CPU_FPU] |431| 
        LSRL      ACC,T                 ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 536,column 9,is_stmt,isa 0
        MOV       @||uvw_w||,AL         ; [CPU_ALU] |536| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 538,column 9,is_stmt,isa 0
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("runSyncControl")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||runSyncControl||   ; [CPU_ALU] |538| 
        ; call occurs [#||runSyncControl||] ; [] |538| 
	.dwpsn	file "../sources/dual_axis_servo_drive.c",line 539,column 5,is_stmt,isa 0
        B         ||$C$L69||,UNC        ; [CPU_ALU] |539| 
        ; branch occurs ; [] |539| 
	.dwattr $C$DW$214, DW_AT_TI_end_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$214, DW_AT_TI_end_line(0x21c)
	.dwattr $C$DW$214, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$214

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$262	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$262, DW_AT_name("__signbitl")
	.dwattr $C$DW$262, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$262, DW_AT_high_pc(0x00)
	.dwattr $C$DW$262, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$262, DW_AT_external
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$262, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$262, DW_AT_decl_column(0x18)
	.dwattr $C$DW$262, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_name("e")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg12]


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
$C$DW$264	.dwtag  DW_TAG_variable
	.dwattr $C$DW$264, DW_AT_name("e")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg12]

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
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$262, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$262, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$262

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$267	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$267, DW_AT_name("__signbitf")
	.dwattr $C$DW$267, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$267, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$267, DW_AT_decl_column(0x18)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_name("f")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$269	.dwtag  DW_TAG_variable
	.dwattr $C$DW$269, DW_AT_name("f")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$267

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("__signbit")
	.dwattr $C$DW$271, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$271, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$271, DW_AT_decl_column(0x18)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("d")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg12]


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
$C$DW$273	.dwtag  DW_TAG_variable
	.dwattr $C$DW$273, DW_AT_name("d")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg12]

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
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$276	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$276, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$276, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$276, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x103)
	.dwattr $C$DW$276, DW_AT_decl_column(0x10)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 260,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_name("x")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$278	.dwtag  DW_TAG_variable
	.dwattr $C$DW$278, DW_AT_name("x")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 261,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |261| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$276, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$280, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$280, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x108)
	.dwattr $C$DW$280, DW_AT_decl_column(0x10)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("x")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$282	.dwtag  DW_TAG_variable
	.dwattr $C$DW$282, DW_AT_name("x")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$284	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$284, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$284, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$284, DW_AT_high_pc(0x00)
	.dwattr $C$DW$284, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$284, DW_AT_external
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$284, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$284, DW_AT_decl_column(0x10)
	.dwattr $C$DW$284, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_name("y")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("x")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("y")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$288	.dwtag  DW_TAG_variable
	.dwattr $C$DW$288, DW_AT_name("x")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$284, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$284, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$284, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$284

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$290	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$290, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$290, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$290, DW_AT_high_pc(0x00)
	.dwattr $C$DW$290, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$290, DW_AT_external
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$290, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$290, DW_AT_decl_column(0x10)
	.dwattr $C$DW$290, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_name("x")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$292	.dwtag  DW_TAG_variable
	.dwattr $C$DW$292, DW_AT_name("x")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$290, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$290, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$290, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$290

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$294	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$294, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$294, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$294, DW_AT_high_pc(0x00)
	.dwattr $C$DW$294, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$294, DW_AT_external
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$294, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x112)
	.dwattr $C$DW$294, DW_AT_decl_column(0x10)
	.dwattr $C$DW$294, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_name("x")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$296	.dwtag  DW_TAG_variable
	.dwattr $C$DW$296, DW_AT_name("x")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$294, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$294, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$294, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$294

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$298	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$298, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$298, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$298, DW_AT_high_pc(0x00)
	.dwattr $C$DW$298, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$298, DW_AT_external
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$298, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x117)
	.dwattr $C$DW$298, DW_AT_decl_column(0x10)
	.dwattr $C$DW$298, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("y")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("x")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$301	.dwtag  DW_TAG_variable
	.dwattr $C$DW$301, DW_AT_name("y")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$302	.dwtag  DW_TAG_variable
	.dwattr $C$DW$302, DW_AT_name("x")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$298, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$298, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$298, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$298

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$304	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$304, DW_AT_name("__isnormall")
	.dwattr $C$DW$304, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$304, DW_AT_high_pc(0x00)
	.dwattr $C$DW$304, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$304, DW_AT_external
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$304, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x167)
	.dwattr $C$DW$304, DW_AT_decl_column(0x18)
	.dwattr $C$DW$304, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$305	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$305, DW_AT_name("e")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg12]


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
$C$DW$306	.dwtag  DW_TAG_variable
	.dwattr $C$DW$306, DW_AT_name("e")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg12]

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
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$307, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L70||,EQ         ; [CPU_ALU] |360| 
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
||$C$L70||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$304, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$304, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$304, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$304

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$309	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$309, DW_AT_name("__isnormalf")
	.dwattr $C$DW$309, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$309, DW_AT_high_pc(0x00)
	.dwattr $C$DW$309, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$309, DW_AT_external
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$309, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x163)
	.dwattr $C$DW$309, DW_AT_decl_column(0x18)
	.dwattr $C$DW$309, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$310	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$310, DW_AT_name("f")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$311	.dwtag  DW_TAG_variable
	.dwattr $C$DW$311, DW_AT_name("f")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L71||,EQ         ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L71||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$309, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$309, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$309, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$309

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$313	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$313, DW_AT_name("__isnormal")
	.dwattr $C$DW$313, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$313, DW_AT_high_pc(0x00)
	.dwattr $C$DW$313, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$313, DW_AT_external
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$313, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$313, DW_AT_decl_column(0x18)
	.dwattr $C$DW$313, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$314	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$314, DW_AT_name("d")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg12]


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
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("d")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg12]

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
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$316, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L72||,EQ         ; [CPU_ALU] |352| 
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
||$C$L72||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$313, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$313, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$313, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$313

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$318	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$318, DW_AT_name("__isnanl")
	.dwattr $C$DW$318, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$318, DW_AT_high_pc(0x00)
	.dwattr $C$DW$318, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$318, DW_AT_external
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$318, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$318, DW_AT_decl_column(0x18)
	.dwattr $C$DW$318, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$319	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$319, DW_AT_name("e")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg12]


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
$C$DW$320	.dwtag  DW_TAG_variable
	.dwattr $C$DW$320, DW_AT_name("e")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |348| 
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
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$321, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L73||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$318, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$318, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$318, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$318

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$323	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$323, DW_AT_name("__isnanf")
	.dwattr $C$DW$323, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$323, DW_AT_high_pc(0x00)
	.dwattr $C$DW$323, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$323, DW_AT_external
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$323, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x158)
	.dwattr $C$DW$323, DW_AT_decl_column(0x18)
	.dwattr $C$DW$323, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$324	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$324, DW_AT_name("f")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$325	.dwtag  DW_TAG_variable
	.dwattr $C$DW$325, DW_AT_name("f")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L74||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L74||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$323, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$323, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$323, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$323

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$327	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$327, DW_AT_name("__isnan")
	.dwattr $C$DW$327, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$327, DW_AT_high_pc(0x00)
	.dwattr $C$DW$327, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$327, DW_AT_external
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$327, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x155)
	.dwattr $C$DW$327, DW_AT_decl_column(0x18)
	.dwattr $C$DW$327, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$328	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$328, DW_AT_name("d")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg12]


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
$C$DW$329	.dwtag  DW_TAG_variable
	.dwattr $C$DW$329, DW_AT_name("d")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L75||,NEQ        ; [CPU_ALU] |342| 
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
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$330, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L75||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$327, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$327, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$327, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$327

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$332	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$332, DW_AT_name("__isinfl")
	.dwattr $C$DW$332, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$332, DW_AT_high_pc(0x00)
	.dwattr $C$DW$332, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$332, DW_AT_external
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$332, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$332, DW_AT_decl_column(0x18)
	.dwattr $C$DW$332, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$333	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$333, DW_AT_name("e")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg12]


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
$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("e")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |379| 
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
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$335, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L76||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$332, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$332, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$332, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$332

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$337	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$337, DW_AT_name("__isinff")
	.dwattr $C$DW$337, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$337, DW_AT_high_pc(0x00)
	.dwattr $C$DW$337, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$337, DW_AT_external
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$337, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x176)
	.dwattr $C$DW$337, DW_AT_decl_column(0x18)
	.dwattr $C$DW$337, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_name("f")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$339	.dwtag  DW_TAG_variable
	.dwattr $C$DW$339, DW_AT_name("f")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L77||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L77||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$337, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$337, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$337, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$337

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$341	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$341, DW_AT_name("__isinf")
	.dwattr $C$DW$341, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$341, DW_AT_high_pc(0x00)
	.dwattr $C$DW$341, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$341, DW_AT_external
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$341, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x178)
	.dwattr $C$DW$341, DW_AT_decl_column(0x18)
	.dwattr $C$DW$341, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$342	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$342, DW_AT_name("d")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg12]


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
$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("d")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L78||,NEQ        ; [CPU_ALU] |377| 
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
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$344, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L78||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$341, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$341, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$341, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$341

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$346	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$346, DW_AT_name("__isfinitel")
	.dwattr $C$DW$346, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$346, DW_AT_high_pc(0x00)
	.dwattr $C$DW$346, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$346, DW_AT_external
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$346, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x152)
	.dwattr $C$DW$346, DW_AT_decl_column(0x18)
	.dwattr $C$DW$346, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$347	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$347, DW_AT_name("e")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg12]


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
$C$DW$348	.dwtag  DW_TAG_variable
	.dwattr $C$DW$348, DW_AT_name("e")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg12]

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
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$346, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$346, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$346, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$346

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$350	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$350, DW_AT_name("__isfinitef")
	.dwattr $C$DW$350, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$350, DW_AT_high_pc(0x00)
	.dwattr $C$DW$350, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$350, DW_AT_external
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$350, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x150)
	.dwattr $C$DW$350, DW_AT_decl_column(0x18)
	.dwattr $C$DW$350, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_name("f")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$352	.dwtag  DW_TAG_variable
	.dwattr $C$DW$352, DW_AT_name("f")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$350, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$350, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$350, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$350

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$354	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$354, DW_AT_name("__isfinite")
	.dwattr $C$DW$354, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$354, DW_AT_high_pc(0x00)
	.dwattr $C$DW$354, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$354, DW_AT_external
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$354, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$354, DW_AT_decl_column(0x18)
	.dwattr $C$DW$354, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$355	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$355, DW_AT_name("d")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_reg12]


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
$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("d")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_reg12]

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
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$354, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$354, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$354, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$354

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$358	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$358, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$358, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$358, DW_AT_high_pc(0x00)
	.dwattr $C$DW$358, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$358, DW_AT_external
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$358, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$358, DW_AT_decl_column(0x18)
	.dwattr $C$DW$358, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$359	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$359, DW_AT_name("e")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$360	.dwtag  DW_TAG_variable
	.dwattr $C$DW$360, DW_AT_name("e")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$361	.dwtag  DW_TAG_variable
	.dwattr $C$DW$361, DW_AT_name("e")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |436| 
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
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$362, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L83||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L79||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L83||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L80||:    
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
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$363, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L83||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L81||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$364, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L82||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L83||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L82||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L83||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$358, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$358, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$358, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$358

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$366	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$366, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$366, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$366, DW_AT_high_pc(0x00)
	.dwattr $C$DW$366, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$366, DW_AT_external
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$366, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$366, DW_AT_decl_column(0x18)
	.dwattr $C$DW$366, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$367	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$367, DW_AT_name("f")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$368	.dwtag  DW_TAG_variable
	.dwattr $C$DW$368, DW_AT_name("f")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L85||,NEQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L84||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L84||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L85||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L86||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L87||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L87||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$366, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$366, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$366, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$366

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$374	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$374, DW_AT_name("__fpclassify")
	.dwattr $C$DW$374, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$374, DW_AT_high_pc(0x00)
	.dwattr $C$DW$374, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$374, DW_AT_external
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$374, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$374, DW_AT_decl_column(0x18)
	.dwattr $C$DW$374, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$375	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$375, DW_AT_name("d")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$376	.dwtag  DW_TAG_variable
	.dwattr $C$DW$376, DW_AT_name("d")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$377	.dwtag  DW_TAG_variable
	.dwattr $C$DW$377, DW_AT_name("d")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |419| 
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
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$378, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L88||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L88||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L89||:    
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
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$379, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L90||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L90||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$380, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L91||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L91||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L92||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$374, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$374, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$374, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$374

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||FCL_runPICtrl_M1||
	.global	||FCL_runPICtrlWrap_M1||
	.global	||FCL_resetController||
	.global	||FCL_runPICtrl_M2||
	.global	||FCL_runPICtrlWrap_M2||
	.global	||Device_init||
	.global	||Device_initGPIO||
	.global	||Board_init||
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
	.global	||uvw_u||
	.global	||uvw_v||
	.global	||uvw_w||
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

$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$382, DW_AT_const_value(0x00)
	.dwattr $C$DW$382, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x40)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$383, DW_AT_const_value(0x01)
	.dwattr $C$DW$383, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x41)
	.dwattr $C$DW$383, DW_AT_decl_column(0x05)

$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$384, DW_AT_const_value(0x02)
	.dwattr $C$DW$384, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x42)
	.dwattr $C$DW$384, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$75


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("MOTOR_STOP")
	.dwattr $C$DW$385, DW_AT_const_value(0x00)
	.dwattr $C$DW$385, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$385, DW_AT_decl_column(0x05)

$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("MOTOR_RUN")
	.dwattr $C$DW$386, DW_AT_const_value(0x01)
	.dwattr $C$DW$386, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$386, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$104, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("MotorRunStop_e")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("CTRL_STOP")
	.dwattr $C$DW$387, DW_AT_const_value(0x00)
	.dwattr $C$DW$387, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x64)
	.dwattr $C$DW$387, DW_AT_decl_column(0x05)

$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("CTRL_RUN")
	.dwattr $C$DW$388, DW_AT_const_value(0x01)
	.dwattr $C$DW$388, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x65)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("CTRL_BRAKE")
	.dwattr $C$DW$389, DW_AT_const_value(0x02)
	.dwattr $C$DW$389, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x66)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("CTRL_RESET")
	.dwattr $C$DW$390, DW_AT_const_value(0x03)
	.dwattr $C$DW$390, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x67)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("CTRL_FAULT")
	.dwattr $C$DW$391, DW_AT_const_value(0x04)
	.dwattr $C$DW$391, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x68)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$106, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("CtrlState_e")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\common\sensored_foc\include\fcl_enum.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$107


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$392, DW_AT_const_value(0x00)
	.dwattr $C$DW$392, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x126)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$393, DW_AT_const_value(0x01)
	.dwattr $C$DW$393, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x127)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$394, DW_AT_const_value(0x02)
	.dwattr $C$DW$394, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x128)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$395, DW_AT_const_value(0x03)
	.dwattr $C$DW$395, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x129)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$396, DW_AT_const_value(0x00)
	.dwattr $C$DW$396, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x183)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$397, DW_AT_const_value(0x200)
	.dwattr $C$DW$397, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x184)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$398, DW_AT_const_value(0x300)
	.dwattr $C$DW$398, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x185)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$399, DW_AT_const_value(0x400)
	.dwattr $C$DW$399, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x186)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$400, DW_AT_const_value(0x500)
	.dwattr $C$DW$400, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x187)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$401, DW_AT_const_value(0x1000)
	.dwattr $C$DW$401, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x188)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$402, DW_AT_const_value(0x1200)
	.dwattr $C$DW$402, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x189)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$403, DW_AT_const_value(0x1300)
	.dwattr $C$DW$403, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$404, DW_AT_const_value(0x01)
	.dwattr $C$DW$404, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$405, DW_AT_const_value(0x101)
	.dwattr $C$DW$405, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$406, DW_AT_const_value(0x02)
	.dwattr $C$DW$406, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$407, DW_AT_const_value(0x102)
	.dwattr $C$DW$407, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$408, DW_AT_const_value(0x202)
	.dwattr $C$DW$408, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$409, DW_AT_const_value(0x302)
	.dwattr $C$DW$409, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x190)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$410, DW_AT_const_value(0x402)
	.dwattr $C$DW$410, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x191)
	.dwattr $C$DW$410, DW_AT_decl_column(0x05)

$C$DW$411	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$411, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$411, DW_AT_const_value(0x502)
	.dwattr $C$DW$411, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x192)
	.dwattr $C$DW$411, DW_AT_decl_column(0x05)

$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$412, DW_AT_const_value(0x602)
	.dwattr $C$DW$412, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x193)
	.dwattr $C$DW$412, DW_AT_decl_column(0x05)

$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$413, DW_AT_const_value(0x702)
	.dwattr $C$DW$413, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x194)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$414, DW_AT_const_value(0x802)
	.dwattr $C$DW$414, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x195)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$415, DW_AT_const_value(0x902)
	.dwattr $C$DW$415, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x196)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$416, DW_AT_const_value(0xa02)
	.dwattr $C$DW$416, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x197)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$417, DW_AT_const_value(0xb02)
	.dwattr $C$DW$417, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x198)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$418, DW_AT_const_value(0x03)
	.dwattr $C$DW$418, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x199)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$419, DW_AT_const_value(0x103)
	.dwattr $C$DW$419, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$420, DW_AT_const_value(0x203)
	.dwattr $C$DW$420, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$421, DW_AT_const_value(0x303)
	.dwattr $C$DW$421, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$422, DW_AT_const_value(0x403)
	.dwattr $C$DW$422, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$423, DW_AT_const_value(0x503)
	.dwattr $C$DW$423, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$424, DW_AT_const_value(0x04)
	.dwattr $C$DW$424, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$425, DW_AT_const_value(0x104)
	.dwattr $C$DW$425, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$426, DW_AT_const_value(0x204)
	.dwattr $C$DW$426, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$427, DW_AT_const_value(0x06)
	.dwattr $C$DW$427, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$428, DW_AT_const_value(0x106)
	.dwattr $C$DW$428, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$429, DW_AT_const_value(0x07)
	.dwattr $C$DW$429, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$430, DW_AT_const_value(0x107)
	.dwattr $C$DW$430, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$431, DW_AT_const_value(0x207)
	.dwattr $C$DW$431, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

$C$DW$432	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$432, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$432, DW_AT_const_value(0x307)
	.dwattr $C$DW$432, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$432, DW_AT_decl_column(0x05)

$C$DW$433	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$433, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$433, DW_AT_const_value(0x08)
	.dwattr $C$DW$433, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$433, DW_AT_decl_column(0x05)

$C$DW$434	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$434, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$434, DW_AT_const_value(0x108)
	.dwattr $C$DW$434, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$434, DW_AT_decl_column(0x05)

$C$DW$435	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$435, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$435, DW_AT_const_value(0x208)
	.dwattr $C$DW$435, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$435, DW_AT_decl_column(0x05)

$C$DW$436	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$436, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$436, DW_AT_const_value(0x09)
	.dwattr $C$DW$436, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$436, DW_AT_decl_column(0x05)

$C$DW$437	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$437, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$437, DW_AT_const_value(0x109)
	.dwattr $C$DW$437, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$437, DW_AT_decl_column(0x05)

$C$DW$438	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$438, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$438, DW_AT_const_value(0x0a)
	.dwattr $C$DW$438, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$438, DW_AT_decl_column(0x05)

$C$DW$439	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$439, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$439, DW_AT_const_value(0x10a)
	.dwattr $C$DW$439, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$439, DW_AT_decl_column(0x05)

$C$DW$440	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$440, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$440, DW_AT_const_value(0x0b)
	.dwattr $C$DW$440, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$440, DW_AT_decl_column(0x05)

$C$DW$441	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$441, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$441, DW_AT_const_value(0x10b)
	.dwattr $C$DW$441, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$441, DW_AT_decl_column(0x05)

$C$DW$442	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$442, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$442, DW_AT_const_value(0x100b)
	.dwattr $C$DW$442, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$442, DW_AT_decl_column(0x05)

$C$DW$443	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$443, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$443, DW_AT_const_value(0x0c)
	.dwattr $C$DW$443, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$443, DW_AT_decl_column(0x05)

$C$DW$444	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$444, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$444, DW_AT_const_value(0x0d)
	.dwattr $C$DW$444, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$444, DW_AT_decl_column(0x05)

$C$DW$445	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$445, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$445, DW_AT_const_value(0x10d)
	.dwattr $C$DW$445, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$445, DW_AT_decl_column(0x05)

$C$DW$446	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$446, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$446, DW_AT_const_value(0x20d)
	.dwattr $C$DW$446, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$446, DW_AT_decl_column(0x05)

$C$DW$447	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$447, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$447, DW_AT_const_value(0x30d)
	.dwattr $C$DW$447, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$447, DW_AT_decl_column(0x05)

$C$DW$448	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$448, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$448, DW_AT_const_value(0x0e)
	.dwattr $C$DW$448, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$448, DW_AT_decl_column(0x05)

$C$DW$449	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$449, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$449, DW_AT_const_value(0x10e)
	.dwattr $C$DW$449, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$449, DW_AT_decl_column(0x05)

$C$DW$450	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$450, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$450, DW_AT_const_value(0x20e)
	.dwattr $C$DW$450, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$450, DW_AT_decl_column(0x05)

$C$DW$451	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$451, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$451, DW_AT_const_value(0x30e)
	.dwattr $C$DW$451, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)

$C$DW$452	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$452, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$452, DW_AT_const_value(0x40e)
	.dwattr $C$DW$452, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)

$C$DW$453	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$453, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$453, DW_AT_const_value(0x50e)
	.dwattr $C$DW$453, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)

$C$DW$454	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$454, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$454, DW_AT_const_value(0x60e)
	.dwattr $C$DW$454, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$454, DW_AT_decl_column(0x05)

$C$DW$455	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$455, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$455, DW_AT_const_value(0x70e)
	.dwattr $C$DW$455, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$455, DW_AT_decl_column(0x05)

$C$DW$456	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$456, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$456, DW_AT_const_value(0x1010)
	.dwattr $C$DW$456, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$456, DW_AT_decl_column(0x05)

$C$DW$457	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$457, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$457, DW_AT_const_value(0x1110)
	.dwattr $C$DW$457, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$457, DW_AT_decl_column(0x05)

$C$DW$458	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$458, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$458, DW_AT_const_value(0x1210)
	.dwattr $C$DW$458, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$458, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$112, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114

$C$DW$T$114	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$459	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$459, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$459, DW_AT_const_value(0x00)
	.dwattr $C$DW$459, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x84)
	.dwattr $C$DW$459, DW_AT_decl_column(0x05)

$C$DW$460	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$460, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$460, DW_AT_const_value(0x01)
	.dwattr $C$DW$460, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x85)
	.dwattr $C$DW$460, DW_AT_decl_column(0x05)

$C$DW$461	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$461, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$461, DW_AT_const_value(0x02)
	.dwattr $C$DW$461, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x86)
	.dwattr $C$DW$461, DW_AT_decl_column(0x05)

$C$DW$462	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$462, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$462, DW_AT_const_value(0x03)
	.dwattr $C$DW$462, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x87)
	.dwattr $C$DW$462, DW_AT_decl_column(0x05)

$C$DW$463	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$463, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$463, DW_AT_const_value(0x04)
	.dwattr $C$DW$463, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x88)
	.dwattr $C$DW$463, DW_AT_decl_column(0x05)

$C$DW$464	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$464, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$464, DW_AT_const_value(0x05)
	.dwattr $C$DW$464, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x89)
	.dwattr $C$DW$464, DW_AT_decl_column(0x05)

$C$DW$465	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$465, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$465, DW_AT_const_value(0x06)
	.dwattr $C$DW$465, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$465, DW_AT_decl_column(0x05)

$C$DW$466	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$466, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$466, DW_AT_const_value(0x07)
	.dwattr $C$DW$466, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$466, DW_AT_decl_column(0x05)

$C$DW$467	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$467, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$467, DW_AT_const_value(0x08)
	.dwattr $C$DW$467, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$467, DW_AT_decl_column(0x05)

$C$DW$468	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$468, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$468, DW_AT_const_value(0x09)
	.dwattr $C$DW$468, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$468, DW_AT_decl_column(0x05)

$C$DW$469	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$469, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$469, DW_AT_const_value(0x0a)
	.dwattr $C$DW$469, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$469, DW_AT_decl_column(0x05)

$C$DW$470	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$470, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$470, DW_AT_const_value(0x0b)
	.dwattr $C$DW$470, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$470, DW_AT_decl_column(0x05)

$C$DW$471	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$471, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$471, DW_AT_const_value(0x0c)
	.dwattr $C$DW$471, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x90)
	.dwattr $C$DW$471, DW_AT_decl_column(0x05)

$C$DW$472	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$472, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$472, DW_AT_const_value(0x0d)
	.dwattr $C$DW$472, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x91)
	.dwattr $C$DW$472, DW_AT_decl_column(0x05)

$C$DW$473	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$473, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$473, DW_AT_const_value(0x0e)
	.dwattr $C$DW$473, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x92)
	.dwattr $C$DW$473, DW_AT_decl_column(0x05)

$C$DW$474	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$474, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$474, DW_AT_const_value(0x0f)
	.dwattr $C$DW$474, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x93)
	.dwattr $C$DW$474, DW_AT_decl_column(0x05)

$C$DW$475	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$475, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$475, DW_AT_const_value(0x10)
	.dwattr $C$DW$475, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x94)
	.dwattr $C$DW$475, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$114

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$115


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$476, DW_AT_name("MTR_1")
	.dwattr $C$DW$476, DW_AT_const_value(0x00)
	.dwattr $C$DW$476, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$476, DW_AT_decl_column(0x03)

$C$DW$477	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$477, DW_AT_name("MTR_2")
	.dwattr $C$DW$477, DW_AT_const_value(0x01)
	.dwattr $C$DW$477, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$477, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("MOTOR_Num_e")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$118


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("Freq")
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x29)
	.dwattr $C$DW$478, DW_AT_decl_column(0x1d)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$479, DW_AT_decl_column(0x11)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("Angle")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$480, DW_AT_decl_column(0x11)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("Gain")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$481, DW_AT_decl_column(0x11)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("Out")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$482, DW_AT_decl_column(0x11)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("Offset")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$483, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("RAMPGEN")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$120


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("TargetValue")
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0f)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$485, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0f)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0f)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0f)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$488, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("SetpointValue")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x30)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$490, DW_AT_name("EqualFlag")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x31)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0c)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("Tmp")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x32)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$93


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x14)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("ElecTheta")
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$492, DW_AT_decl_column(0x12)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$493, DW_AT_name("DirectionQep")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$493, DW_AT_decl_column(0x11)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$494, DW_AT_decl_column(0x12)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("Speed")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$495, DW_AT_decl_column(0x12)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$496, DW_AT_name("BaseRpm")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$496, DW_AT_decl_column(0x11)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("K1")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x30)
	.dwattr $C$DW$497, DW_AT_decl_column(0x12)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("K2")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x31)
	.dwattr $C$DW$498, DW_AT_decl_column(0x12)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("K3")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x32)
	.dwattr $C$DW$499, DW_AT_decl_column(0x12)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$500, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x33)
	.dwattr $C$DW$500, DW_AT_decl_column(0x10)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("Tmp")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x34)
	.dwattr $C$DW$501, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$97


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x1a)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$502, DW_AT_name("input_ptr1")
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0d)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$503, DW_AT_name("input_ptr2")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0d)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$504, DW_AT_name("input_ptr3")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0d)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$505, DW_AT_name("input_ptr4")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0d)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$506, DW_AT_name("output_ptr1")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x40)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0d)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$507, DW_AT_name("output_ptr2")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x41)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0d)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$508, DW_AT_name("output_ptr3")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x42)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0d)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$509, DW_AT_name("output_ptr4")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x43)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0d)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("prev_value")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x44)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0c)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("trig_value")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x45)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$512, DW_AT_name("status")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x46)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0a)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$513, DW_AT_name("pre_scalar")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x47)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0a)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$514, DW_AT_name("skip_count")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x48)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0a)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$515, DW_AT_name("size")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x49)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0a)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$516, DW_AT_name("count")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("DLOG_4CH_F")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125
$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$125


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("As")
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$517, DW_AT_decl_column(0x1e)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("Bs")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$518, DW_AT_decl_column(0x12)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("Cs")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$519, DW_AT_decl_column(0x12)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("Alpha")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$520, DW_AT_decl_column(0x12)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("Beta")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$521, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$94


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x0e)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("Alpha")
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x29)
	.dwattr $C$DW$522, DW_AT_decl_column(0x1e)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("Beta")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$523, DW_AT_decl_column(0x12)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("Angle")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$524, DW_AT_decl_column(0x12)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("Ds")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$525, DW_AT_decl_column(0x12)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("Qs")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$526, DW_AT_decl_column(0x12)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("Sine")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$527, DW_AT_decl_column(0x12)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("Cosine")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$528, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("PARK")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$95


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x0e)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("Alpha")
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x29)
	.dwattr $C$DW$529, DW_AT_decl_column(0x1e)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("Beta")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$530, DW_AT_decl_column(0x12)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("Angle")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$531, DW_AT_decl_column(0x12)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("Ds")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$532, DW_AT_decl_column(0x12)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("Qs")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$533, DW_AT_decl_column(0x12)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("Sine")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$534, DW_AT_decl_column(0x12)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("Cosine")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$535, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("IPARK")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$96


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x16)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("ref")
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x18)
	.dwattr $C$DW$536, DW_AT_decl_column(0x10)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("fbk")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x19)
	.dwattr $C$DW$537, DW_AT_decl_column(0x10)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("err")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$538, DW_AT_decl_column(0x10)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("out")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$539, DW_AT_decl_column(0x10)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("carryOver")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$540, DW_AT_decl_column(0x10)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("Kp")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$541, DW_AT_decl_column(0x10)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("Ki")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$542, DW_AT_decl_column(0x10)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("Kerr")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$543, DW_AT_decl_column(0x10)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("KerrOld")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x20)
	.dwattr $C$DW$544, DW_AT_decl_column(0x10)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("Umax")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x21)
	.dwattr $C$DW$545, DW_AT_decl_column(0x10)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("Umin")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x22)
	.dwattr $C$DW$546, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_pi.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$78


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x18)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("Ref")
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$547, DW_AT_decl_column(0x1e)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("Fbk")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$548, DW_AT_decl_column(0x12)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("Out")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$549, DW_AT_decl_column(0x12)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("Kp")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$550, DW_AT_decl_column(0x12)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("Ki")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$551, DW_AT_decl_column(0x12)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("Umax")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$552, DW_AT_decl_column(0x12)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("Umin")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x30)
	.dwattr $C$DW$553, DW_AT_decl_column(0x12)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("up")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x31)
	.dwattr $C$DW$554, DW_AT_decl_column(0x12)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("ui")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x32)
	.dwattr $C$DW$555, DW_AT_decl_column(0x12)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("v1")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x33)
	.dwattr $C$DW$556, DW_AT_decl_column(0x12)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("i1")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x34)
	.dwattr $C$DW$557, DW_AT_decl_column(0x12)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("w1")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x35)
	.dwattr $C$DW$558, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$98


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0a)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("Ref")
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$559, DW_AT_decl_column(0x1e)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("Fbk")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$560, DW_AT_decl_column(0x12)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("Out")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$561, DW_AT_decl_column(0x12)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("c1")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$562, DW_AT_decl_column(0x12)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("c2")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$563, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$39


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0e)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("Kr")
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x32)
	.dwattr $C$DW$564, DW_AT_decl_column(0x1e)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("Kp")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x33)
	.dwattr $C$DW$565, DW_AT_decl_column(0x12)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("Ki")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x34)
	.dwattr $C$DW$566, DW_AT_decl_column(0x12)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("Kd")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x35)
	.dwattr $C$DW$567, DW_AT_decl_column(0x12)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("Km")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x36)
	.dwattr $C$DW$568, DW_AT_decl_column(0x12)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("Umax")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x37)
	.dwattr $C$DW$569, DW_AT_decl_column(0x12)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("Umin")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x38)
	.dwattr $C$DW$570, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$40


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x10)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("up")
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$571, DW_AT_decl_column(0x1e)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("ui")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$572, DW_AT_decl_column(0x12)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("ud")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$573, DW_AT_decl_column(0x12)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("v1")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$574, DW_AT_decl_column(0x12)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("i1")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$575, DW_AT_decl_column(0x12)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("d1")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x40)
	.dwattr $C$DW$576, DW_AT_decl_column(0x12)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("d2")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x41)
	.dwattr $C$DW$577, DW_AT_decl_column(0x12)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("w1")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x42)
	.dwattr $C$DW$578, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x28)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$579, DW_AT_name("term")
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x46)
	.dwattr $C$DW$579, DW_AT_decl_column(0x21)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$580, DW_AT_name("param")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x47)
	.dwattr $C$DW$580, DW_AT_decl_column(0x16)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$581, DW_AT_name("data")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x48)
	.dwattr $C$DW$581, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$99


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0c)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("Freq")
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x25)
	.dwattr $C$DW$582, DW_AT_decl_column(0x1d)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x26)
	.dwattr $C$DW$583, DW_AT_decl_column(0x1d)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("Angle")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x27)
	.dwattr $C$DW$584, DW_AT_decl_column(0x1d)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("Gain")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x28)
	.dwattr $C$DW$585, DW_AT_decl_column(0x1d)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("Out")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x29)
	.dwattr $C$DW$586, DW_AT_decl_column(0x1d)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("Offset")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$587, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77
$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$77


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x12)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("ElecTheta")
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0f)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("MechTheta")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0f)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$590, DW_AT_name("DirectionQep")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0f)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$591, DW_AT_name("QepPeriod")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0f)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$592, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x21)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0f)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$593, DW_AT_name("RawTheta")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x22)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0f)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("MechScaler")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x23)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0f)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$595, DW_AT_name("LineEncoder")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x24)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0f)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$596, DW_AT_name("PolePairs")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x25)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0f)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$597, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x26)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0f)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$598, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x28)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("QEP")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$79


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x12)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("Ualpha")
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$599, DW_AT_decl_column(0x10)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("Ubeta")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$600, DW_AT_decl_column(0x10)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("Ta")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$601, DW_AT_decl_column(0x10)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("Tb")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$602, DW_AT_decl_column(0x10)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("Tc")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$603, DW_AT_decl_column(0x10)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("tmp1")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x30)
	.dwattr $C$DW$604, DW_AT_decl_column(0x10)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("tmp2")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x31)
	.dwattr $C$DW$605, DW_AT_decl_column(0x10)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("tmp3")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x32)
	.dwattr $C$DW$606, DW_AT_decl_column(0x10)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$607, DW_AT_name("VecSector")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x33)
	.dwattr $C$DW$607, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$103


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$608, DW_AT_name("f")
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$608, DW_AT_decl_line(0xb71)
	.dwattr $C$DW$608, DW_AT_decl_column(0x13)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$609, DW_AT_name("u")
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$609, DW_AT_decl_line(0xb71)
	.dwattr $C$DW$609, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$49, DW_AT_decl_file("../sources/dual_axis_servo_drive.c")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0xb71)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$610, DW_AT_name("ADCINT1")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x62)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$611, DW_AT_name("ADCINT2")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x63)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$612, DW_AT_name("ADCINT3")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x64)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$613, DW_AT_name("ADCINT4")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x65)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$614, DW_AT_name("rsvd1")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$614, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x66)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$615, DW_AT_name("all")
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0d)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$616, DW_AT_name("bit")
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$616, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$52, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_adc.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$617	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$52)

$C$DW$T$91	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$617)

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$92


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x22)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$618, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$618, DW_AT_decl_column(0x2e)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$619, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$619, DW_AT_decl_column(0x2e)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$620, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$620, DW_AT_decl_column(0x2e)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$621, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0xde)
	.dwattr $C$DW$621, DW_AT_decl_column(0x2e)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$622, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$622, DW_AT_decl_column(0x2e)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$623, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$623, DW_AT_decl_column(0x2e)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$624, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$624, DW_AT_decl_column(0x2e)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$625, DW_AT_name("QUTMR")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$625, DW_AT_decl_column(0x2e)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$626, DW_AT_name("QUPRD")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$626, DW_AT_decl_column(0x2e)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$627, DW_AT_name("QWDTMR")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$627, DW_AT_decl_column(0x2e)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$628, DW_AT_name("QWDPRD")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$628, DW_AT_decl_column(0x2e)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$629, DW_AT_name("QDECCTL")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$629, DW_AT_decl_column(0x2e)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$630, DW_AT_name("QEPCTL")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$630, DW_AT_decl_column(0x2e)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$631, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$631, DW_AT_decl_column(0x2e)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$632, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$632, DW_AT_decl_column(0x2e)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$633, DW_AT_name("QEINT")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0xea)
	.dwattr $C$DW$633, DW_AT_decl_column(0x2e)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$634, DW_AT_name("QFLG")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$634, DW_AT_decl_column(0x2e)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$635, DW_AT_name("QCLR")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0xec)
	.dwattr $C$DW$635, DW_AT_decl_column(0x2e)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$636, DW_AT_name("QFRC")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0xed)
	.dwattr $C$DW$636, DW_AT_decl_column(0x2e)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$637, DW_AT_name("QEPSTS")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0xee)
	.dwattr $C$DW$637, DW_AT_decl_column(0x2e)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$638, DW_AT_name("QCTMR")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0xef)
	.dwattr $C$DW$638, DW_AT_decl_column(0x2e)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$639, DW_AT_name("QCPRD")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$639, DW_AT_decl_column(0x2e)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$640, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$640, DW_AT_decl_column(0x2e)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$641, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$641, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$54, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$642	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$54)

$C$DW$T$80	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$642)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$81


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$643, DW_AT_name("UPPS")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$643, DW_AT_bit_size(0x04)
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0c)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$644, DW_AT_name("CCPS")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$644, DW_AT_bit_size(0x03)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$645, DW_AT_name("rsvd1")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$645, DW_AT_bit_size(0x08)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$646, DW_AT_name("CEN")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x60)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$647, DW_AT_name("all")
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x64)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0d)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$648, DW_AT_name("bit")
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x65)
	.dwattr $C$DW$648, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$56, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$649, DW_AT_name("INT")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$650, DW_AT_name("PCE")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$651, DW_AT_name("PHE")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$652, DW_AT_name("QDC")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$653, DW_AT_name("WTO")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0c)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$654, DW_AT_name("PCU")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0c)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$655, DW_AT_name("PCO")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$656, DW_AT_name("PCR")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$657, DW_AT_name("PCM")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0c)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$658, DW_AT_name("SEL")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$658, DW_AT_decl_column(0x0c)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$659, DW_AT_name("IEL")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$660, DW_AT_name("UTO")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0xab)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$661, DW_AT_name("rsvd1")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$661, DW_AT_bit_size(0x04)
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0xac)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$662, DW_AT_name("all")
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0d)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$663, DW_AT_name("bit")
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$663, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$58, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$664, DW_AT_name("rsvd1")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$664, DW_AT_bit_size(0x05)
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x37)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$665, DW_AT_name("QSP")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x38)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$666, DW_AT_name("QIP")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x39)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$667, DW_AT_name("QBP")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$668, DW_AT_name("QAP")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$669, DW_AT_name("IGATE")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$670, DW_AT_name("SWAP")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$671, DW_AT_name("XCR")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0c)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$672, DW_AT_name("SPSEL")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0c)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$673, DW_AT_name("SOEN")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x40)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0c)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$674, DW_AT_name("QSRC")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$674, DW_AT_bit_size(0x02)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x41)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$59, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$675, DW_AT_name("all")
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x45)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0d)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$676, DW_AT_name("bit")
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x46)
	.dwattr $C$DW$676, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$60, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$677, DW_AT_name("rsvd1")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x76)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$678, DW_AT_name("PCE")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x77)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$679, DW_AT_name("QPE")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x78)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$680, DW_AT_name("QDC")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x79)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$681, DW_AT_name("WTO")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$682, DW_AT_name("PCU")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$683, DW_AT_name("PCO")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$684, DW_AT_name("PCR")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$685, DW_AT_name("PCM")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$686, DW_AT_name("SEL")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$687, DW_AT_name("IEL")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x80)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$688, DW_AT_name("UTO")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x81)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$689, DW_AT_name("rsvd2")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$689, DW_AT_bit_size(0x04)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x82)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$61, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$690, DW_AT_name("all")
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x86)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0d)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$691, DW_AT_name("bit")
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x87)
	.dwattr $C$DW$691, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$62, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$692, DW_AT_name("WDE")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$693, DW_AT_name("UTE")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$694, DW_AT_name("QCLM")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$695, DW_AT_name("QPEN")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$696, DW_AT_name("IEL")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$696, DW_AT_bit_size(0x02)
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$697, DW_AT_name("SEL")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0c)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$698, DW_AT_name("SWI")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x50)
	.dwattr $C$DW$698, DW_AT_decl_column(0x0c)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$699, DW_AT_name("IEI")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$699, DW_AT_bit_size(0x02)
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x51)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$700, DW_AT_name("SEI")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$700, DW_AT_bit_size(0x02)
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x52)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0c)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$701, DW_AT_name("PCRM")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$701, DW_AT_bit_size(0x02)
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x53)
	.dwattr $C$DW$701, DW_AT_decl_column(0x0c)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$702, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$702, DW_AT_bit_size(0x02)
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x54)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$63, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$703, DW_AT_name("all")
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x58)
	.dwattr $C$DW$703, DW_AT_decl_column(0x0d)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$704, DW_AT_name("bit")
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x59)
	.dwattr $C$DW$704, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$64, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$705, DW_AT_name("PCEF")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0xca)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$706, DW_AT_name("FIMF")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$707, DW_AT_name("CDEF")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0c)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$708, DW_AT_name("COEF")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$708, DW_AT_decl_column(0x0c)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$709, DW_AT_name("QDLF")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0xce)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$710, DW_AT_name("QDF")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0c)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$711, DW_AT_name("FIDF")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0c)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$712, DW_AT_name("UPEVNT")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0c)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$713, DW_AT_name("rsvd1")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$713, DW_AT_bit_size(0x08)
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$65, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$714, DW_AT_name("all")
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0d)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$715, DW_AT_name("bit")
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$715, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$66, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$716, DW_AT_name("INT")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$717, DW_AT_name("PCE")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$718, DW_AT_name("PHE")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$719, DW_AT_name("QDC")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$720, DW_AT_name("WTO")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$721, DW_AT_name("PCU")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x90)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$722, DW_AT_name("PCO")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x91)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$723, DW_AT_name("PCR")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x92)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$724, DW_AT_name("PCM")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x93)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$725, DW_AT_name("SEL")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x94)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0c)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$726, DW_AT_name("IEL")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x95)
	.dwattr $C$DW$726, DW_AT_decl_column(0x0c)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$727, DW_AT_name("UTO")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x96)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$728, DW_AT_name("rsvd1")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$728, DW_AT_bit_size(0x04)
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x97)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$67, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$729, DW_AT_name("all")
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0d)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$730, DW_AT_name("bit")
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$730, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$68, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$731, DW_AT_name("rsvd1")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0c)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$732, DW_AT_name("PCE")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$733, DW_AT_name("PHE")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$734, DW_AT_name("QDC")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$735, DW_AT_name("WTO")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0c)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$736, DW_AT_name("PCU")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0xba)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0c)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$737, DW_AT_name("PCO")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$738, DW_AT_name("PCR")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$739, DW_AT_name("PCM")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$740, DW_AT_name("SEL")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$741, DW_AT_name("IEL")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0c)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$742, DW_AT_name("UTO")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0c)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$743, DW_AT_name("rsvd2")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$743, DW_AT_bit_size(0x04)
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$69, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$744, DW_AT_name("all")
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0d)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$745, DW_AT_name("bit")
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$745, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$70, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$746, DW_AT_name("PCSPW")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$746, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x69)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$747, DW_AT_name("PCE")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$748, DW_AT_name("PCPOL")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0c)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$749, DW_AT_name("PCLOAD")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0c)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$750, DW_AT_name("PCSHDW")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$71, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$751, DW_AT_name("all")
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x71)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0d)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$752, DW_AT_name("bit")
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x72)
	.dwattr $C$DW$752, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$72, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\device_support\f2837xd\headers\include\F2837xD_eqep.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x1e)
$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("carrierMid")
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x38)
	.dwattr $C$DW$753, DW_AT_decl_column(0x11)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("adcScale")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x39)
	.dwattr $C$DW$754, DW_AT_decl_column(0x11)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$755, DW_AT_decl_column(0x11)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("tSamp")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$756, DW_AT_decl_column(0x11)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("Rd")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$757, DW_AT_decl_column(0x11)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("Rq")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$758, DW_AT_decl_column(0x11)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("Ld")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$759, DW_AT_decl_column(0x11)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("Lq")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x40)
	.dwattr $C$DW$760, DW_AT_decl_column(0x11)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("Vbase")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x41)
	.dwattr $C$DW$761, DW_AT_decl_column(0x11)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("Ibase")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x42)
	.dwattr $C$DW$762, DW_AT_decl_column(0x11)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("wccD")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x43)
	.dwattr $C$DW$763, DW_AT_decl_column(0x11)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("wccQ")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x44)
	.dwattr $C$DW$764, DW_AT_decl_column(0x11)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("Vdcbus")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x45)
	.dwattr $C$DW$765, DW_AT_decl_column(0x11)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("BemfK")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x46)
	.dwattr $C$DW$766, DW_AT_decl_column(0x11)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("Wbase")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x47)
	.dwattr $C$DW$767, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$100


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("_FCL_Vars_t_")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x52)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$768, DW_AT_name("lsw")
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$768, DW_AT_decl_column(0x12)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$769, DW_AT_name("Q_cla")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x81)
	.dwattr $C$DW$769, DW_AT_decl_column(0x11)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("speedWePrev")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x82)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0f)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("pangle")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x83)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0f)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$772, DW_AT_name("rg")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x84)
	.dwattr $C$DW$772, DW_AT_decl_column(0x12)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$773, DW_AT_name("pi_iq")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x85)
	.dwattr $C$DW$773, DW_AT_decl_column(0x18)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$774, DW_AT_name("qep")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x86)
	.dwattr $C$DW$774, DW_AT_decl_column(0x09)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$775, DW_AT_name("ptrQEP")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x87)
	.dwattr $C$DW$775, DW_AT_decl_column(0x20)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$776, DW_AT_name("taskCount")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x88)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$83, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("FCL_Vars_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$102


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$127, DW_AT_byte_size(0xa4)
$C$DW$777	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$777, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("_HAL_MTR_Obj_")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x12)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$778, DW_AT_name("pwmHandle")
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0d)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$779, DW_AT_name("cmpssHandle")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0d)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$780, DW_AT_name("spiHandle")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0d)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$781, DW_AT_name("qepHandle")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0d)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$782, DW_AT_name("flagEnablePWM")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("HAL_MTR_Obj")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x24)
$C$DW$783	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$783, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133
$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("HAL_MTR_Handle")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134
$C$DW$784	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$133)

$C$DW$T$134	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$784)

	.dwendtag $C$DW$TU$134


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138

$C$DW$T$138	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x04)
$C$DW$785	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$785, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$138

	.dwendtag $C$DW$TU$138


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("_HAL_Obj_")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x22)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$786, DW_AT_name("claHandle")
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x87)
	.dwattr $C$DW$786, DW_AT_decl_column(0x11)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$787, DW_AT_name("timerHandle")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x89)
	.dwattr $C$DW$787, DW_AT_decl_column(0x11)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$788, DW_AT_name("sciHandle")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$788, DW_AT_decl_column(0x11)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$789, DW_AT_name("dacHandle")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$789, DW_AT_decl_column(0x11)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$790, DW_AT_name("adcHandle")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$790, DW_AT_decl_column(0x11)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$791, DW_AT_name("adcResult")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x90)
	.dwattr $C$DW$791, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145
$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("HAL_Obj")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$145


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146
$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("HAL_Handle")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$147


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("_MOTOR_Vars_t_")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x14c)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$792, DW_AT_name("posCntr")
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x139)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0e)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$793, DW_AT_name("posCntrMax")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0e)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("posSlewRate")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0f)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("baseFreq")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0f)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("poles")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0f)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("Ts")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x140)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0f)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("maxModIndex")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x141)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0f)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("voltageLimit")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x143)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0f)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("currentLimit")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x144)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0f)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("tempIdRef")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x146)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0f)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("IdRef_start")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x147)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0f)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("IdRef_run")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x148)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0f)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("IdRef")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x149)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0f)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("IqRef")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0f)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("speedRef")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0f)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("positionRef")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0f)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("lsw1Speed")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0f)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("offset_currentAs")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x151)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0f)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("offset_currentBs")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x152)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0f)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("offset_currentCs")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x153)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0f)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("currentAs")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x155)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0f)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("currentBs")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x156)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0f)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("currentCs")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x157)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0f)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("currentScale")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x159)
	.dwattr $C$DW$815, DW_AT_decl_column(0x0f)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("voltageScale")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0f)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("adcScale")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0f)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("currentInvSF")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0f)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("voltageInvSF")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0f)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("posElecTheta")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0f)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("posMechTheta")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0x160)
	.dwattr $C$DW$821, DW_AT_decl_column(0x0f)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$822, DW_AT_name("pwmCompA")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0x162)
	.dwattr $C$DW$822, DW_AT_decl_column(0x18)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$823, DW_AT_name("pwmCompB")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x163)
	.dwattr $C$DW$823, DW_AT_decl_column(0x18)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$824, DW_AT_name("pwmCompC")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x164)
	.dwattr $C$DW$824, DW_AT_decl_column(0x18)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$825, DW_AT_name("curA_PPBRESULT")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x166)
	.dwattr $C$DW$825, DW_AT_decl_column(0x17)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$826, DW_AT_name("curB_PPBRESULT")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x167)
	.dwattr $C$DW$826, DW_AT_decl_column(0x17)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$827, DW_AT_name("curC_PPBRESULT")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x168)
	.dwattr $C$DW$827, DW_AT_decl_column(0x17)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$828, DW_AT_name("volDC_PPBRESULT")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0x169)
	.dwattr $C$DW$828, DW_AT_decl_column(0x17)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$829, DW_AT_name("AdcIntFlag")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$829, DW_AT_decl_column(0x23)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$830, DW_AT_name("D_cpu")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$830, DW_AT_decl_column(0x11)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$831, DW_AT_name("rc")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0d)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$832, DW_AT_name("clarke")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0c)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$833, DW_AT_name("park")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x170)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0a)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$834, DW_AT_name("ipark")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x171)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0b)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$835, DW_AT_name("speed")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x172)
	.dwattr $C$DW$835, DW_AT_decl_column(0x14)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$836, DW_AT_name("pi_id")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0x174)
	.dwattr $C$DW$836, DW_AT_decl_column(0x18)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$837, DW_AT_name("pi_pos")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0x175)
	.dwattr $C$DW$837, DW_AT_decl_column(0x13)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$838, DW_AT_name("pid_spd")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0x176)
	.dwattr $C$DW$838, DW_AT_decl_column(0x15)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$839, DW_AT_name("FCL_params")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0x178)
	.dwattr $C$DW$839, DW_AT_decl_column(0x16)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$840, DW_AT_name("ptrFCL")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x118]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0x179)
	.dwattr $C$DW$840, DW_AT_decl_column(0x12)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$841, DW_AT_name("svgen")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0b)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("Vdcbus")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0f)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("VdcbusMax")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0f)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("VdcbusMin")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x130]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0f)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$845, DW_AT_name("isrTicker")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x181)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0e)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("fclLatencyInMicroSec")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x183)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0f)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$847, DW_AT_name("fclClrCntr")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x184)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0f)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$848, DW_AT_name("fclCycleCountMax")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x137]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x185)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0f)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$849, DW_AT_name("speedLoopPrescaler")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x187)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0e)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$850, DW_AT_name("speedLoopCount")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x139]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0x188)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0e)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$851, DW_AT_name("alignCntr")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0x189)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0e)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$852, DW_AT_name("alignCnt")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x13b]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0e)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$853, DW_AT_name("posPtrMax")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0e)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$854, DW_AT_name("posPtr")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x13d]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0e)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$855, DW_AT_name("currentThreshHi")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0e)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$856, DW_AT_name("currentThreshLo")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0e)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$857, DW_AT_name("drvEnableGateGPIO")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0x191)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0e)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$858, DW_AT_name("drvFaultTripGPIO")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x141]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0x192)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0e)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$859, DW_AT_name("drvClearFaultGPIO")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0x193)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0e)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$860, DW_AT_name("tripCountDMC")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x143]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x195)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0e)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$861, DW_AT_name("tripFlagDMC")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x196)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0e)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$862, DW_AT_name("tripFlagPrev")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x145]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x197)
	.dwattr $C$DW$862, DW_AT_decl_column(0x0e)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$863, DW_AT_name("runMotor")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x199)
	.dwattr $C$DW$863, DW_AT_decl_column(0x15)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$864, DW_AT_name("ctrlState")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x147]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$864, DW_AT_decl_column(0x15)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$865, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0a)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$866, DW_AT_name("lsw2EntryFlag")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x149]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0a)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$867, DW_AT_name("offsetDoneFlag")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0a)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$868, DW_AT_name("sfraEnableFlag")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x14b]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151
$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("MOTOR_Vars_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla_dm.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$151


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152
$C$DW$T$152	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$152


$C$DW$TU$153	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$153
$C$DW$869	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$152)

$C$DW$T$153	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$869)

	.dwendtag $C$DW$TU$153


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154

$C$DW$T$154	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x298)
$C$DW$870	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$870, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$154

	.dwendtag $C$DW$TU$154


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


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158

$C$DW$T$158	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$158

	.dwendtag $C$DW$TU$158


$C$DW$TU$159	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$159
$C$DW$T$159	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$159


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


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("int16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$29


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("Uint16")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$50


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$44, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$45


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$871	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$871, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202

$C$DW$T$202	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x04)
$C$DW$872	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$872, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$202

	.dwendtag $C$DW$TU$202


$C$DW$TU$203	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$203

$C$DW$T$203	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x40)
$C$DW$873	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$873, DW_AT_upper_bound(0x3f)

	.dwendtag $C$DW$T$203

	.dwendtag $C$DW$TU$203


$C$DW$TU$173	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$173
$C$DW$874	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$45)

$C$DW$T$173	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$874)

	.dwendtag $C$DW$TU$173


$C$DW$TU$204	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$204
$C$DW$875	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$45)

$C$DW$T$204	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$875)

	.dwendtag $C$DW$TU$204


$C$DW$TU$205	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$205

$C$DW$T$205	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x02)
$C$DW$876	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$876, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$205

	.dwendtag $C$DW$TU$205


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206
$C$DW$T$206	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$206, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$206, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x12)

	.dwendtag $C$DW$TU$206


$C$DW$TU$207	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$207
$C$DW$877	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$206)

$C$DW$T$207	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$877)

	.dwendtag $C$DW$TU$207


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
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("int32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
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


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("Uint32")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$53


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


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x08)
$C$DW$878	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$878, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x06)
$C$DW$879	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$879, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x04)
$C$DW$880	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$880, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$881	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$22)

$C$DW$T$89	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$881)

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$90


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("size_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$135, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/stdlib.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136
$C$DW$882	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$135)

$C$DW$T$136	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$882)

	.dwendtag $C$DW$TU$136


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


$C$DW$TU$188	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$188
$C$DW$T$188	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$188, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$188


$C$DW$TU$216	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$216
$C$DW$883	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$188)

$C$DW$T$216	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$883)

	.dwendtag $C$DW$TU$216


$C$DW$TU$224	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$224
$C$DW$884	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$16)

$C$DW$T$224	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$884)

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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$27


$C$DW$TU$229	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$229

$C$DW$T$229	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x10)
$C$DW$885	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$885, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$229

	.dwendtag $C$DW$TU$229


$C$DW$TU$230	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$230

$C$DW$T$230	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x190)
$C$DW$886	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$886, DW_AT_upper_bound(0xc7)

	.dwendtag $C$DW$T$230

	.dwendtag $C$DW$TU$230


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176
$C$DW$887	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$19)

$C$DW$T$176	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$887)

	.dwendtag $C$DW$TU$176


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$231	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$231
$C$DW$T$231	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$231, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$231


$C$DW$TU$232	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$232
$C$DW$888	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$231)

$C$DW$T$232	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$888)

	.dwendtag $C$DW$TU$232


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$233	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$233
$C$DW$T$233	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$233, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$233


$C$DW$TU$234	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$234
$C$DW$889	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$233)

$C$DW$T$234	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$889)

	.dwendtag $C$DW$TU$234


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85
$C$DW$T$85	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$85, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$85, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$85


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("motPars")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x0e)
$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$890, DW_AT_name("cosWTs")
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0f)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$891, DW_AT_name("sinWTs")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0f)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$892, DW_AT_name("expVal")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$892, DW_AT_decl_column(0x0f)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$893, DW_AT_name("kDirect")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$893, DW_AT_decl_column(0x0f)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$894, DW_AT_name("idErr")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x50)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0f)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$895, DW_AT_name("iqErr")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x51)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0f)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$896, DW_AT_name("carryOver")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x52)
	.dwattr $C$DW$896, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$109, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("cmplxPars_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\cpu_cla_shared_dm.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76

