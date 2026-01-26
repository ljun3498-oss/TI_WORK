;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Mon Jan 26 17:18:23 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\fcl_f2837x_tmdxiddk\f2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$1, DW_AT_linkage_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x398)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$2, DW_AT_linkage_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0d)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$23)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$90)

	.dwendtag $C$DW$2


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("Device_init")
	.dwattr $C$DW$5, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$6, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x124)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$7, DW_AT_linkage_name("Interrupt_initModule")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$8, DW_AT_linkage_name("Interrupt_initVectorTable")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$9, DW_AT_linkage_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x49d)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$150)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$156)

	.dwendtag $C$DW$9


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$12, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x405)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("FCL_initADC")
	.dwattr $C$DW$14, DW_AT_linkage_name("FCL_initADC")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$23)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$72)

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$23)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$72)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$14


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("FCL_initPWM")
	.dwattr $C$DW$20, DW_AT_linkage_name("FCL_initPWM")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0d)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$23)

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$23)

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$20


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("FCL_initQEP")
	.dwattr $C$DW$24, DW_AT_linkage_name("FCL_initQEP")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x90)
	.dwattr $C$DW$24, DW_AT_decl_column(0x0d)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$26, DW_AT_linkage_name("CLA_setTriggerSource")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x3c5)
	.dwattr $C$DW$26, DW_AT_decl_column(0x01)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$86)

$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$88)

	.dwendtag $C$DW$26


$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$29, DW_AT_linkage_name("FCL_resetController")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x91)
	.dwattr $C$DW$29, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$29


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$30, DW_AT_linkage_name("DLOG_4CH_F_init")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$198)

	.dwendtag $C$DW$30


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$32, DW_AT_linkage_name("Interrupt_enable")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$32, DW_AT_decl_column(0x01)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$32


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$34, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$34


$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("FCL_runQEPWrap")
	.dwattr $C$DW$36, DW_AT_linkage_name("FCL_runQEPWrap")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$36, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$36


$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$37, DW_AT_linkage_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$198)

	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$39, DW_AT_linkage_name("ADC_setMode")
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x7e2)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$74)

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$39


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$43, DW_AT_linkage_name("MemCfg_initSections")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x48f)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$43


$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$45, DW_AT_linkage_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x43d)
	.dwattr $C$DW$45, DW_AT_decl_column(0x01)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$23)

$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$168)

	.dwendtag $C$DW$45


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("Cla1Task1")
	.dwattr $C$DW$48, DW_AT_linkage_name("Cla1Task1")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x97)
	.dwattr $C$DW$48, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$48


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("Cla1Task2")
	.dwattr $C$DW$49, DW_AT_linkage_name("Cla1Task2")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x98)
	.dwattr $C$DW$49, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$49


$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("Cla1Task3")
	.dwattr $C$DW$50, DW_AT_linkage_name("Cla1Task3")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x99)
	.dwattr $C$DW$50, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$50


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("Cla1Task4")
	.dwattr $C$DW$51, DW_AT_linkage_name("Cla1Task4")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$51, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$51


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("Cla1Task5")
	.dwattr $C$DW$52, DW_AT_linkage_name("Cla1Task5")
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$52, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("Cla1Task6")
	.dwattr $C$DW$53, DW_AT_linkage_name("Cla1Task6")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$53, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$53


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("Cla1Task7")
	.dwattr $C$DW$54, DW_AT_linkage_name("Cla1Task7")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$54, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("Cla1Task8")
	.dwattr $C$DW$55, DW_AT_linkage_name("Cla1Task8")
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$55, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$55


$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$56, DW_AT_linkage_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x4ab)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$28)

$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)

	.dwendtag $C$DW$56


$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$61, DW_AT_linkage_name("CMPSS_configFilterLow")
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x4da)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$23)

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$28)

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)

	.dwendtag $C$DW$61


$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$66, DW_AT_linkage_name("GPIO_setControllerCore")
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x3d2)
	.dwattr $C$DW$66, DW_AT_decl_column(0x01)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$23)

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$164)

	.dwendtag $C$DW$66


$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$69, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$69, DW_AT_decl_column(0x01)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)

$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$69


$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$72, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x326)
	.dwattr $C$DW$72, DW_AT_decl_column(0x01)
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$160)

	.dwendtag $C$DW$72


$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$75, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x396)
	.dwattr $C$DW$75, DW_AT_decl_column(0x01)
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)

$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$162)

	.dwendtag $C$DW$75


$C$DW$78	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$78, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$78, DW_AT_linkage_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x4be)
	.dwattr $C$DW$78, DW_AT_decl_column(0x01)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$152)

$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$158)

	.dwendtag $C$DW$78

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("lsw")
	.dwattr $C$DW$81, DW_AT_linkage_name("lsw")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$81, DW_AT_declaration
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$81, DW_AT_decl_column(0x15)

	.global	||serialCommsTimer||
	.data
	.align	1
	.elfsym	||serialCommsTimer||,SYM_SIZE(1),SYM_BLOCKED(1)
||serialCommsTimer||:
	.bits		0,16
			; serialCommsTimer @ 0

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("serialCommsTimer")
	.dwattr $C$DW$82, DW_AT_linkage_name("serialCommsTimer")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr ||serialCommsTimer||]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$82, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0a)

	.global	||offsetCalCounter||
	.data
	.align	1
	.elfsym	||offsetCalCounter||,SYM_SIZE(1),SYM_BLOCKED(1)
||offsetCalCounter||:
	.bits		0,16
			; offsetCalCounter @ 0

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("offsetCalCounter")
	.dwattr $C$DW$83, DW_AT_linkage_name("offsetCalCounter")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr ||offsetCalCounter||]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x116)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0a)

	.global	||hlt||
	.data
	.align	1
	.elfsym	||hlt||,SYM_SIZE(1),SYM_BLOCKED(1)
||hlt||:
	.bits		0x7fff,16
			; hlt @ 0

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("hlt")
	.dwattr $C$DW$84, DW_AT_linkage_name("hlt")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr ||hlt||]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x119)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0a)

	.global	||llt||
	.data
	.align	1
	.elfsym	||llt||,SYM_SIZE(1),SYM_BLOCKED(1)
||llt||:
	.bits		0,16
			; llt @ 0

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("llt")
	.dwattr $C$DW$85, DW_AT_linkage_name("llt")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr ||llt||]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0a)

	.global	||clkPrescale||
	.data
	.align	1
	.elfsym	||clkPrescale||,SYM_SIZE(1),SYM_BLOCKED(1)
||clkPrescale||:
	.bits		0x14,16
			; clkPrescale @ 0

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("clkPrescale")
	.dwattr $C$DW$86, DW_AT_linkage_name("clkPrescale")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr ||clkPrescale||]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0a)

	.global	||sampWin||
	.data
	.align	1
	.elfsym	||sampWin||,SYM_SIZE(1),SYM_BLOCKED(1)
||sampWin||:
	.bits		0x1e,16
			; sampWin @ 0

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("sampWin")
	.dwattr $C$DW$87, DW_AT_linkage_name("sampWin")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr ||sampWin||]
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x120)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0a)

	.global	||thresh||
	.data
	.align	1
	.elfsym	||thresh||,SYM_SIZE(1),SYM_BLOCKED(1)
||thresh||:
	.bits		0x12,16
			; thresh @ 0

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("thresh")
	.dwattr $C$DW$88, DW_AT_linkage_name("thresh")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr ||thresh||]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0x121)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0a)

	.global	||LEM_curHi||
	.data
	.align	1
	.elfsym	||LEM_curHi||,SYM_SIZE(1),SYM_BLOCKED(1)
||LEM_curHi||:
	.bits		0x839,16
			; LEM_curHi @ 0

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("LEM_curHi")
	.dwattr $C$DW$89, DW_AT_linkage_name("LEM_curHi")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_addr ||LEM_curHi||]
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0x122)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0a)

	.global	||LEM_curLo||
	.data
	.align	1
	.elfsym	||LEM_curLo||,SYM_SIZE(1),SYM_BLOCKED(1)
||LEM_curLo||:
	.bits		0x839,16
			; LEM_curLo @ 0

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("LEM_curLo")
	.dwattr $C$DW$90, DW_AT_linkage_name("LEM_curLo")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_addr ||LEM_curLo||]
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x123)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0a)

	.global	||SHUNT_curHi||
	.data
	.align	1
	.elfsym	||SHUNT_curHi||,SYM_SIZE(1),SYM_BLOCKED(1)
||SHUNT_curHi||:
	.bits		0x839,16
			; SHUNT_curHi @ 0

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("SHUNT_curHi")
	.dwattr $C$DW$91, DW_AT_linkage_name("SHUNT_curHi")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_addr ||SHUNT_curHi||]
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0x124)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0a)

	.global	||SHUNT_curLo||
	.data
	.align	1
	.elfsym	||SHUNT_curLo||,SYM_SIZE(1),SYM_BLOCKED(1)
||SHUNT_curLo||:
	.bits		0x839,16
			; SHUNT_curLo @ 0

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("SHUNT_curLo")
	.dwattr $C$DW$92, DW_AT_linkage_name("SHUNT_curLo")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_addr ||SHUNT_curLo||]
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x125)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0a)

	.global	||enableFlag||
	.data
	.align	1
	.elfsym	||enableFlag||,SYM_SIZE(1),SYM_BLOCKED(1)
||enableFlag||:
	.bits		0,16
			; enableFlag @ 0

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("enableFlag")
	.dwattr $C$DW$93, DW_AT_linkage_name("enableFlag")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_addr ||enableFlag||]
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$93, DW_AT_decl_column(0x13)

	.global	||backTicker||
	.data
	.align	1
	.elfsym	||backTicker||,SYM_SIZE(1),SYM_BLOCKED(1)
||backTicker||:
	.bits		0,16
			; backTicker @ 0

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("backTicker")
	.dwattr $C$DW$94, DW_AT_linkage_name("backTicker")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_addr ||backTicker||]
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$94, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0a)

	.global	||tripFlagDMC||
	.data
	.align	1
	.elfsym	||tripFlagDMC||,SYM_SIZE(1),SYM_BLOCKED(1)
||tripFlagDMC||:
	.bits		0,16
			; tripFlagDMC @ 0

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("tripFlagDMC")
	.dwattr $C$DW$95, DW_AT_linkage_name("tripFlagDMC")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_addr ||tripFlagDMC||]
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0a)

	.global	||clearTripFlagDMC||
	.data
	.align	1
	.elfsym	||clearTripFlagDMC||,SYM_SIZE(1),SYM_BLOCKED(1)
||clearTripFlagDMC||:
	.bits		0,16
			; clearTripFlagDMC @ 0

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$96, DW_AT_linkage_name("clearTripFlagDMC")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_addr ||clearTripFlagDMC||]
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0x130)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0a)

	.global	||runMotor||
	.data
	.align	1
	.elfsym	||runMotor||,SYM_SIZE(1),SYM_BLOCKED(1)
||runMotor||:
	.bits		0x1,16
			; runMotor @ 0

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("runMotor")
	.dwattr $C$DW$97, DW_AT_linkage_name("runMotor")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_addr ||runMotor||]
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$97, DW_AT_decl_line(0x131)
	.dwattr $C$DW$97, DW_AT_decl_column(0x10)

	.global	||ledCnt1||
	.data
	.align	1
	.elfsym	||ledCnt1||,SYM_SIZE(1),SYM_BLOCKED(1)
||ledCnt1||:
	.bits		0,16
			; ledCnt1 @ 0

$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("ledCnt1")
	.dwattr $C$DW$98, DW_AT_linkage_name("ledCnt1")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr ||ledCnt1||]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x133)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0a)

	.global	||speedLoopPrescaler||
	.data
	.align	1
	.elfsym	||speedLoopPrescaler||,SYM_SIZE(1),SYM_BLOCKED(1)
||speedLoopPrescaler||:
	.bits		0xa,16
			; speedLoopPrescaler @ 0

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("speedLoopPrescaler")
	.dwattr $C$DW$99, DW_AT_linkage_name("speedLoopPrescaler")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr ||speedLoopPrescaler||]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x135)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0a)

	.global	||speedLoopCount||
	.data
	.align	1
	.elfsym	||speedLoopCount||,SYM_SIZE(1),SYM_BLOCKED(1)
||speedLoopCount||:
	.bits		0x1,16
			; speedLoopCount @ 0

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("speedLoopCount")
	.dwattr $C$DW$100, DW_AT_linkage_name("speedLoopCount")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr ||speedLoopCount||]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x136)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0a)

	.global	||lsw2EntryFlag||
	.data
	.align	1
	.elfsym	||lsw2EntryFlag||,SYM_SIZE(1),SYM_BLOCKED(1)
||lsw2EntryFlag||:
	.bits		0,16
			; lsw2EntryFlag @ 0

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("lsw2EntryFlag")
	.dwattr $C$DW$101, DW_AT_linkage_name("lsw2EntryFlag")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr ||lsw2EntryFlag||]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x138)
	.dwattr $C$DW$101, DW_AT_decl_column(0x13)

	.global	||FCL_cycleCount||
	.data
	.align	1
	.elfsym	||FCL_cycleCount||,SYM_SIZE(1),SYM_BLOCKED(1)
||FCL_cycleCount||:
	.bits		0,16
			; FCL_cycleCount @ 0

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("FCL_cycleCount")
	.dwattr $C$DW$102, DW_AT_linkage_name("FCL_cycleCount")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_addr ||FCL_cycleCount||]
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$102, DW_AT_decl_column(0x14)

	.global	||fclClrCntr||
	.data
	.align	1
	.elfsym	||fclClrCntr||,SYM_SIZE(1),SYM_BLOCKED(1)
||fclClrCntr||:
	.bits		0,16
			; fclClrCntr @ 0

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("fclClrCntr")
	.dwattr $C$DW$103, DW_AT_linkage_name("fclClrCntr")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr ||fclClrCntr||]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$103, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0b)

	.global	||fclCycleCountMax||
	.data
	.align	1
	.elfsym	||fclCycleCountMax||,SYM_SIZE(1),SYM_BLOCKED(1)
||fclCycleCountMax||:
	.bits		0,16
			; fclCycleCountMax @ 0

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("fclCycleCountMax")
	.dwattr $C$DW$104, DW_AT_linkage_name("fclCycleCountMax")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr ||fclCycleCountMax||]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0b)

	.global	||posPtrMax||
	.data
	.align	1
	.elfsym	||posPtrMax||,SYM_SIZE(1),SYM_BLOCKED(1)
||posPtrMax||:
	.bits		0x2,16
			; posPtrMax @ 0

$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("posPtrMax")
	.dwattr $C$DW$105, DW_AT_linkage_name("posPtrMax")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr ||posPtrMax||]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$105, DW_AT_decl_line(0x175)
	.dwattr $C$DW$105, DW_AT_decl_column(0x09)

	.global	||posPtr||
	.data
	.align	1
	.elfsym	||posPtr||,SYM_SIZE(1),SYM_BLOCKED(1)
||posPtr||:
	.bits		0,16
			; posPtr @ 0

$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("posPtr")
	.dwattr $C$DW$106, DW_AT_linkage_name("posPtr")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr ||posPtr||]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x176)
	.dwattr $C$DW$106, DW_AT_decl_column(0x09)

	.global	||tFormat_encCmdStatus||
	.data
	.align	1
	.elfsym	||tFormat_encCmdStatus||,SYM_SIZE(1),SYM_BLOCKED(1)
||tFormat_encCmdStatus||:
	.bits		0,16
			; tFormat_encCmdStatus @ 0

$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("tFormat_encCmdStatus")
	.dwattr $C$DW$107, DW_AT_linkage_name("tFormat_encCmdStatus")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr ||tFormat_encCmdStatus||]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0a)

	.global	||tFormat_crcError||
	.data
	.align	1
	.elfsym	||tFormat_crcError||,SYM_SIZE(1),SYM_BLOCKED(1)
||tFormat_crcError||:
	.bits		0,16
			; tFormat_crcError @ 0

$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("tFormat_crcError")
	.dwattr $C$DW$108, DW_AT_linkage_name("tFormat_crcError")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr ||tFormat_crcError||]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$108, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0a)

	.global	||tFormat_dataId||
	.bss	||tFormat_dataId||,1,1,0
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("tFormat_dataId")
	.dwattr $C$DW$109, DW_AT_linkage_name("tFormat_dataId")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr ||tFormat_dataId||]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0a)


$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$110, DW_AT_linkage_name("MemCfg_getInitStatus")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$110, DW_AT_declaration
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x4ab)
	.dwattr $C$DW$110, DW_AT_decl_column(0x01)
$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$110

$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("currentSenV")
	.dwattr $C$DW$112, DW_AT_linkage_name("currentSenV")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_declaration
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x31)
	.dwattr $C$DW$112, DW_AT_decl_column(0x15)

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("currentSenW")
	.dwattr $C$DW$113, DW_AT_linkage_name("currentSenW")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_declaration
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x32)
	.dwattr $C$DW$113, DW_AT_decl_column(0x15)

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("pangle")
	.dwattr $C$DW$114, DW_AT_linkage_name("pangle")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_declaration
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$114, DW_AT_decl_column(0x15)

$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("speedWe")
	.dwattr $C$DW$115, DW_AT_linkage_name("speedWe")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_declaration
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$115, DW_AT_decl_column(0x15)

	.global	||Alpha_State_Ptr||
	.bss	||Alpha_State_Ptr||,2,1,1
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("Alpha_State_Ptr")
	.dwattr $C$DW$116, DW_AT_linkage_name("Alpha_State_Ptr")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr ||Alpha_State_Ptr||]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0xca)
	.dwattr $C$DW$116, DW_AT_decl_column(0x08)

	.global	||A_Task_Ptr||
	.bss	||A_Task_Ptr||,2,1,1
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("A_Task_Ptr")
	.dwattr $C$DW$117, DW_AT_linkage_name("A_Task_Ptr")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr ||A_Task_Ptr||]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$117, DW_AT_decl_column(0x08)

	.global	||B_Task_Ptr||
	.bss	||B_Task_Ptr||,2,1,1
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("B_Task_Ptr")
	.dwattr $C$DW$118, DW_AT_linkage_name("B_Task_Ptr")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr ||B_Task_Ptr||]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$118, DW_AT_decl_column(0x08)

	.global	||C_Task_Ptr||
	.bss	||C_Task_Ptr||,2,1,1
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("C_Task_Ptr")
	.dwattr $C$DW$119, DW_AT_linkage_name("C_Task_Ptr")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr ||C_Task_Ptr||]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$119, DW_AT_decl_column(0x08)

	.global	||offset_lemV||
	.data
	.align	2
	.elfsym	||offset_lemV||,SYM_SIZE(2),SYM_BLOCKED(1)
||offset_lemV||:
	.xfloat	$strtod("0x0p+0")		; offset_lemV @ 0

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("offset_lemV")
	.dwattr $C$DW$120, DW_AT_linkage_name("offset_lemV")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr ||offset_lemV||]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$120, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0b)

	.global	||offset_lemW||
	.data
	.align	2
	.elfsym	||offset_lemW||,SYM_SIZE(2),SYM_BLOCKED(1)
||offset_lemW||:
	.xfloat	$strtod("0x0p+0")		; offset_lemW @ 0

$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("offset_lemW")
	.dwattr $C$DW$121, DW_AT_linkage_name("offset_lemW")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr ||offset_lemW||]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_external
	.dwattr $C$DW$121, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$121, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0b)

	.global	||offset_SDFMV||
	.bss	||offset_SDFMV||,2,1,1
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("offset_SDFMV")
	.dwattr $C$DW$122, DW_AT_linkage_name("offset_SDFMV")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr ||offset_SDFMV||]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$364)
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x110)
	.dwattr $C$DW$122, DW_AT_decl_column(0x14)

	.global	||offset_SDFMW||
	.bss	||offset_SDFMW||,2,1,1
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("offset_SDFMW")
	.dwattr $C$DW$123, DW_AT_linkage_name("offset_SDFMW")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr ||offset_SDFMW||]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$364)
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x111)
	.dwattr $C$DW$123, DW_AT_decl_column(0x14)

	.global	||K1||
	.data
	.align	2
	.elfsym	||K1||,SYM_SIZE(2),SYM_BLOCKED(1)
||K1||:
	.xfloat	$strtod("0x1.fef9dep-1")		; K1 @ 0

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("K1")
	.dwattr $C$DW$124, DW_AT_linkage_name("K1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr ||K1||]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$124, DW_AT_decl_line(0x113)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0b)

	.global	||K2||
	.data
	.align	2
	.elfsym	||K2||,SYM_SIZE(2),SYM_BLOCKED(1)
||K2||:
	.xfloat	$strtod("0x1.062182p-9")		; K2 @ 0

$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("K2")
	.dwattr $C$DW$125, DW_AT_linkage_name("K2")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr ||K2||]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x114)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0b)

	.global	||curLimit||
	.data
	.align	2
	.elfsym	||curLimit||,SYM_SIZE(2),SYM_BLOCKED(1)
||curLimit||:
	.xfloat	$strtod("0x1p+3")		; curLimit @ 0

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("curLimit")
	.dwattr $C$DW$126, DW_AT_linkage_name("curLimit")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr ||curLimit||]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0b)

	.global	||isrTicker||
	.data
	.align	2
	.elfsym	||isrTicker||,SYM_SIZE(2),SYM_BLOCKED(1)
||isrTicker||:
	.bits		0,32
			; isrTicker @ 0

$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("isrTicker")
	.dwattr $C$DW$127, DW_AT_linkage_name("isrTicker")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr ||isrTicker||]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$127, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0a)

	.global	||fclLatencyInMicroSec||
	.data
	.align	2
	.elfsym	||fclLatencyInMicroSec||,SYM_SIZE(2),SYM_BLOCKED(1)
||fclLatencyInMicroSec||:
	.xfloat	$strtod("0x0p+0")		; fclLatencyInMicroSec @ 0

$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("fclLatencyInMicroSec")
	.dwattr $C$DW$128, DW_AT_linkage_name("fclLatencyInMicroSec")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr ||fclLatencyInMicroSec||]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x140)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0b)

	.global	||maxModIndex||
	.data
	.align	2
	.elfsym	||maxModIndex||,SYM_SIZE(2),SYM_BLOCKED(1)
||maxModIndex||:
	.xfloat	$strtod("0x0p+0")		; maxModIndex @ 0

$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("maxModIndex")
	.dwattr $C$DW$129, DW_AT_linkage_name("maxModIndex")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr ||maxModIndex||]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$129, DW_AT_decl_line(0x141)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0b)

	.global	||T||
	.data
	.align	2
	.elfsym	||T||,SYM_SIZE(2),SYM_BLOCKED(1)
||T||:
	.xfloat	$strtod("0x1.a36e3p-14")		; T @ 0

$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("T")
	.dwattr $C$DW$130, DW_AT_linkage_name("T")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr ||T||]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$130, DW_AT_decl_line(0x146)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0b)

	.global	||VdTesting||
	.data
	.align	2
	.elfsym	||VdTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VdTesting||:
	.xfloat	$strtod("0x0p+0")		; VdTesting @ 0

$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("VdTesting")
	.dwattr $C$DW$131, DW_AT_linkage_name("VdTesting")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr ||VdTesting||]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x147)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0b)

	.global	||VqTesting||
	.data
	.align	2
	.elfsym	||VqTesting||,SYM_SIZE(2),SYM_BLOCKED(1)
||VqTesting||:
	.xfloat	$strtod("0x1.19999ap+0")		; VqTesting @ 0

$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("VqTesting")
	.dwattr $C$DW$132, DW_AT_linkage_name("VqTesting")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr ||VqTesting||]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x148)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0b)

	.global	||IdRef||
	.data
	.align	2
	.elfsym	||IdRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef||:
	.xfloat	$strtod("0x0p+0")		; IdRef @ 0

$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("IdRef")
	.dwattr $C$DW$133, DW_AT_linkage_name("IdRef")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr ||IdRef||]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$133, DW_AT_decl_line(0x149)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0b)

	.global	||tempIdRef||
	.data
	.align	2
	.elfsym	||tempIdRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||tempIdRef||:
	.xfloat	$strtod("0x0p+0")		; tempIdRef @ 0

$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("tempIdRef")
	.dwattr $C$DW$134, DW_AT_linkage_name("tempIdRef")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr ||tempIdRef||]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$134, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0b)

	.global	||IqRef||
	.data
	.align	2
	.elfsym	||IqRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||IqRef||:
	.xfloat	$strtod("0x0p+0")		; IqRef @ 0

$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("IqRef")
	.dwattr $C$DW$135, DW_AT_linkage_name("IqRef")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr ||IqRef||]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$135, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0b)

	.global	||speedRef||
	.data
	.align	2
	.elfsym	||speedRef||,SYM_SIZE(2),SYM_BLOCKED(1)
||speedRef||:
	.xfloat	$strtod("0x1.99999ap-3")		; speedRef @ 0

$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("speedRef")
	.dwattr $C$DW$136, DW_AT_linkage_name("speedRef")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr ||speedRef||]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0b)

	.global	||lsw1Speed||
	.data
	.align	2
	.elfsym	||lsw1Speed||,SYM_SIZE(2),SYM_BLOCKED(1)
||lsw1Speed||:
	.xfloat	$strtod("0x1.47ae14p-6")		; lsw1Speed @ 0

$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("lsw1Speed")
	.dwattr $C$DW$137, DW_AT_linkage_name("lsw1Speed")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr ||lsw1Speed||]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0b)

	.global	||alignCntr||
	.data
	.align	2
	.elfsym	||alignCntr||,SYM_SIZE(2),SYM_BLOCKED(1)
||alignCntr||:
	.xfloat	$strtod("0x0p+0")		; alignCntr @ 0

$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("alignCntr")
	.dwattr $C$DW$138, DW_AT_linkage_name("alignCntr")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr ||alignCntr||]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$138, DW_AT_decl_line(0x168)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0b)

	.global	||alignCnt||
	.data
	.align	2
	.elfsym	||alignCnt||,SYM_SIZE(2),SYM_BLOCKED(1)
||alignCnt||:
	.xfloat	$strtod("0x1.388p+14")		; alignCnt @ 0

$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("alignCnt")
	.dwattr $C$DW$139, DW_AT_linkage_name("alignCnt")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr ||alignCnt||]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$139, DW_AT_decl_line(0x169)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0b)

	.global	||alignInitCnt||
	.data
	.align	2
	.elfsym	||alignInitCnt||,SYM_SIZE(2),SYM_BLOCKED(1)
||alignInitCnt||:
	.xfloat	$strtod("0x1.d4cp+13")		; alignInitCnt @ 0

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("alignInitCnt")
	.dwattr $C$DW$140, DW_AT_linkage_name("alignInitCnt")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr ||alignInitCnt||]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$140, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0b)

	.global	||IdRef_start||
	.data
	.align	2
	.elfsym	||IdRef_start||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef_start||:
	.xfloat	$strtod("0x1.99999ap-4")		; IdRef_start @ 0

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("IdRef_start")
	.dwattr $C$DW$141, DW_AT_linkage_name("IdRef_start")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_addr ||IdRef_start||]
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$141, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0b)

	.global	||IdRef_run||
	.data
	.align	2
	.elfsym	||IdRef_run||,SYM_SIZE(2),SYM_BLOCKED(1)
||IdRef_run||:
	.xfloat	$strtod("0x0p+0")		; IdRef_run @ 0

$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("IdRef_run")
	.dwattr $C$DW$142, DW_AT_linkage_name("IdRef_run")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_addr ||IdRef_run||]
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$142, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0b)

	.global	||posCntr||
	.data
	.align	2
	.elfsym	||posCntr||,SYM_SIZE(2),SYM_BLOCKED(1)
||posCntr||:
	.xfloat	$strtod("0x0p+0")		; posCntr @ 0

$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("posCntr")
	.dwattr $C$DW$143, DW_AT_linkage_name("posCntr")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_addr ||posCntr||]
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$143, DW_AT_decl_line(0x171)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0b)

	.global	||posCntrMax||
	.data
	.align	2
	.elfsym	||posCntrMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||posCntrMax||:
	.xfloat	$strtod("0x1.388p+12")		; posCntrMax @ 0

$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("posCntrMax")
	.dwattr $C$DW$144, DW_AT_linkage_name("posCntrMax")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_addr ||posCntrMax||]
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$144, DW_AT_decl_line(0x172)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0b)

	.global	||posSlewRate||
	.data
	.align	2
	.elfsym	||posSlewRate||,SYM_SIZE(2),SYM_BLOCKED(1)
||posSlewRate||:
	.xfloat	$strtod("0x1.0624dep-10")		; posSlewRate @ 0

$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("posSlewRate")
	.dwattr $C$DW$145, DW_AT_linkage_name("posSlewRate")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_addr ||posSlewRate||]
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$145, DW_AT_decl_line(0x173)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0b)

	.global	||dlogCh1||
	.data
	.align	2
	.elfsym	||dlogCh1||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh1||:
	.xfloat	$strtod("0x0p+0")		; dlogCh1 @ 0

$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("dlogCh1")
	.dwattr $C$DW$146, DW_AT_linkage_name("dlogCh1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_addr ||dlogCh1||]
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$146, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0b)

	.global	||dlogCh2||
	.data
	.align	2
	.elfsym	||dlogCh2||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh2||:
	.xfloat	$strtod("0x0p+0")		; dlogCh2 @ 0

$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("dlogCh2")
	.dwattr $C$DW$147, DW_AT_linkage_name("dlogCh2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_addr ||dlogCh2||]
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$147, DW_AT_decl_line(0x180)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0b)

	.global	||dlogCh3||
	.data
	.align	2
	.elfsym	||dlogCh3||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh3||:
	.xfloat	$strtod("0x0p+0")		; dlogCh3 @ 0

$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("dlogCh3")
	.dwattr $C$DW$148, DW_AT_linkage_name("dlogCh3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_addr ||dlogCh3||]
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0x181)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0b)

	.global	||dlogCh4||
	.data
	.align	2
	.elfsym	||dlogCh4||,SYM_SIZE(2),SYM_BLOCKED(1)
||dlogCh4||:
	.xfloat	$strtod("0x0p+0")		; dlogCh4 @ 0

$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("dlogCh4")
	.dwattr $C$DW$149, DW_AT_linkage_name("dlogCh4")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_addr ||dlogCh4||]
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$149, DW_AT_decl_line(0x182)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0b)

	.global	||angMax||
	.data
	.align	2
	.elfsym	||angMax||,SYM_SIZE(2),SYM_BLOCKED(1)
||angMax||:
	.xfloat	$strtod("0x1.99999ap-6")		; angMax @ 0

$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("angMax")
	.dwattr $C$DW$150, DW_AT_linkage_name("angMax")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_addr ||angMax||]
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$150, DW_AT_decl_column(0x10)

	.global	||tformatAngle||
	.bss	||tformatAngle||,2,1,1
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("tformatAngle")
	.dwattr $C$DW$151, DW_AT_linkage_name("tformatAngle")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_addr ||tformatAngle||]
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$151, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$151, DW_AT_decl_column(0x10)

	.global	||tformatSpd||
	.bss	||tformatSpd||,2,1,1
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("tformatSpd")
	.dwattr $C$DW$152, DW_AT_linkage_name("tformatSpd")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_addr ||tformatSpd||]
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$152, DW_AT_decl_column(0x10)

	.global	||retVal1||
	.bss	||retVal1||,2,1,1
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("retVal1")
	.dwattr $C$DW$153, DW_AT_linkage_name("retVal1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_addr ||retVal1||]
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0a)

	.global	||crcResult||
	.bss	||crcResult||,2,1,1
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("crcResult")
	.dwattr $C$DW$154, DW_AT_linkage_name("crcResult")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_addr ||crcResult||]
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$154, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$154, DW_AT_decl_column(0x13)

	.global	||position||
	.bss	||position||,2,1,1
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("position")
	.dwattr $C$DW$155, DW_AT_linkage_name("position")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_addr ||position||]
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$155, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$155, DW_AT_decl_column(0x1e)

	.global	||turns||
	.bss	||turns||,2,1,1
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("turns")
	.dwattr $C$DW$156, DW_AT_linkage_name("turns")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_addr ||turns||]
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$156, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$156, DW_AT_decl_column(0x28)


$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("PM_tformat_updatePositionOrTurns")
	.dwattr $C$DW$157, DW_AT_linkage_name("PM_tformat_updatePositionOrTurns")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$157, DW_AT_declaration
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x40a)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0a)
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$28)

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$28)

$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$28)

	.dwendtag $C$DW$157


$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$161, DW_AT_linkage_name("FCL_getSwVersion")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$161, DW_AT_declaration
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x92)
	.dwattr $C$DW$161, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$161

	.global	||vTimer0||
	.sect	".data:vTimer0", RW
	.align	1
	.elfsym	||vTimer0||,SYM_SIZE(4)
||vTimer0||:
	.bits		0,16
			; vTimer0[0] @ 0
	.space	48

$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("vTimer0")
	.dwattr $C$DW$162, DW_AT_linkage_name("vTimer0")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_addr ||vTimer0||]
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$162, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0a)

	.global	||vTimer1||
	.sect	".data:vTimer1", RW
	.align	1
	.elfsym	||vTimer1||,SYM_SIZE(4)
||vTimer1||:
	.bits		0,16
			; vTimer1[0] @ 0
	.space	48

$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("vTimer1")
	.dwattr $C$DW$163, DW_AT_linkage_name("vTimer1")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_addr ||vTimer1||]
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$163, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0a)

	.global	||vTimer2||
	.sect	".data:vTimer2", RW
	.align	1
	.elfsym	||vTimer2||,SYM_SIZE(4)
||vTimer2||:
	.bits		0,16
			; vTimer2[0] @ 0
	.space	48

$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("vTimer2")
	.dwattr $C$DW$164, DW_AT_linkage_name("vTimer2")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_addr ||vTimer2||]
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$164, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0a)

	.global	||pwmHandle||
	.sect	".data:pwmHandle", RW
	.align	2
	.elfsym	||pwmHandle||,SYM_SIZE(6)
||pwmHandle||:
	.bits		0x4000,32
			; pwmHandle[0] @ 0
	.bits		0x4100,32
			; pwmHandle[1] @ 32
	.bits		0x4200,32
			; pwmHandle[2] @ 64

$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("pwmHandle")
	.dwattr $C$DW$165, DW_AT_linkage_name("pwmHandle")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_addr ||pwmHandle||]
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$165, DW_AT_decl_line(0xef)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0a)

	.global	||dacHandle||
	.sect	".data:dacHandle", RW
	.align	2
	.elfsym	||dacHandle||,SYM_SIZE(6)
||dacHandle||:
	.bits		0x5c00,32
			; dacHandle[0] @ 0
	.bits		0x5c10,32
			; dacHandle[1] @ 32
	.bits		0x5c20,32
			; dacHandle[2] @ 64

$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("dacHandle")
	.dwattr $C$DW$166, DW_AT_linkage_name("dacHandle")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_addr ||dacHandle||]
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$166, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0a)

	.global	||adcHandle||
	.sect	".data:adcHandle", RW
	.align	2
	.elfsym	||adcHandle||,SYM_SIZE(8)
||adcHandle||:
	.bits		0x7400,32
			; adcHandle[0] @ 0
	.bits		0x7480,32
			; adcHandle[1] @ 32
	.bits		0x7500,32
			; adcHandle[2] @ 64
	.bits		0x7580,32
			; adcHandle[3] @ 96

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("adcHandle")
	.dwattr $C$DW$167, DW_AT_linkage_name("adcHandle")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_addr ||adcHandle||]
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$167, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0a)

$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("clarke1")
	.dwattr $C$DW$168, DW_AT_linkage_name("clarke1")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$168, DW_AT_declaration
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$168, DW_AT_decl_column(0x15)

$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("clarke2")
	.dwattr $C$DW$169, DW_AT_linkage_name("clarke2")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$169, DW_AT_declaration
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x30)
	.dwattr $C$DW$169, DW_AT_decl_column(0x15)

$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("rg1")
	.dwattr $C$DW$170, DW_AT_linkage_name("rg1")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$170, DW_AT_declaration
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x49)
	.dwattr $C$DW$170, DW_AT_decl_column(0x15)

$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("park1")
	.dwattr $C$DW$171, DW_AT_linkage_name("park1")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$171, DW_AT_declaration
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x34)
	.dwattr $C$DW$171, DW_AT_decl_column(0x15)

	.global	||ipark1||
	.data
	.align	2
	.elfsym	||ipark1||,SYM_SIZE(14),SYM_BLOCKED(1)
||ipark1||:
	.xfloat	$strtod("0x0p+0")		; ipark1.Alpha @ 0
	.xfloat	$strtod("0x0p+0")		; ipark1.Beta @ 32
	.xfloat	$strtod("0x0p+0")		; ipark1.Angle @ 64
	.xfloat	$strtod("0x0p+0")		; ipark1.Ds @ 96
	.xfloat	$strtod("0x0p+0")		; ipark1.Qs @ 128
	.xfloat	$strtod("0x0p+0")		; ipark1.Sine @ 160
	.xfloat	$strtod("0x0p+0")		; ipark1.Cosine @ 192

$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("ipark1")
	.dwattr $C$DW$172, DW_AT_linkage_name("ipark1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_addr ||ipark1||]
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$172, DW_AT_decl_line(0x151)
	.dwattr $C$DW$172, DW_AT_decl_column(0x08)

	.global	||posEncElecTheta||
	.sect	".data:posEncElecTheta", RW
	.align	2
	.elfsym	||posEncElecTheta||,SYM_SIZE(14)
||posEncElecTheta||:
	.xfloat	$strtod("0x0p+0")		; posEncElecTheta[0] @ 0
	.space	192

$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("posEncElecTheta")
	.dwattr $C$DW$173, DW_AT_linkage_name("posEncElecTheta")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_addr ||posEncElecTheta||]
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$173, DW_AT_decl_line(0x165)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0b)

	.global	||posEncMechTheta||
	.sect	".data:posEncMechTheta", RW
	.align	2
	.elfsym	||posEncMechTheta||,SYM_SIZE(14)
||posEncMechTheta||:
	.xfloat	$strtod("0x0p+0")		; posEncMechTheta[0] @ 0
	.space	192

$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("posEncMechTheta")
	.dwattr $C$DW$174, DW_AT_linkage_name("posEncMechTheta")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_addr ||posEncMechTheta||]
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$174, DW_AT_decl_line(0x166)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0b)

	.global	||rc1||
	.data
	.align	2
	.elfsym	||rc1||,SYM_SIZE(16),SYM_BLOCKED(1)
||rc1||:
	.xfloat	$strtod("0x0p+0")		; rc1.TargetValue @ 0
	.bits		0x1,32
			; rc1.RampDelayMax @ 32
	.xfloat	$strtod("-0x1p+0")		; rc1.RampLowLimit @ 64
	.xfloat	$strtod("0x1p+0")		; rc1.RampHighLimit @ 96
	.bits		0,32
			; rc1.RampDelayCount @ 128
	.xfloat	$strtod("0x0p+0")		; rc1.SetpointValue @ 160
	.bits		0,32
			; rc1.EqualFlag @ 192
	.xfloat	$strtod("0x0p+0")		; rc1.Tmp @ 224

$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("rc1")
	.dwattr $C$DW$175, DW_AT_linkage_name("rc1")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_addr ||rc1||]
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$175, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$175, DW_AT_decl_column(0x09)

	.global	||posArray||
	.sect	".data:posArray", RW
	.align	2
	.elfsym	||posArray||,SYM_SIZE(16)
||posArray||:
	.xfloat	$strtod("0x1.8p+0")		; posArray[0] @ 0
	.xfloat	$strtod("-0x1.8p+0")		; posArray[1] @ 32
	.xfloat	$strtod("0x1.4p+1")		; posArray[2] @ 64
	.xfloat	$strtod("-0x1.4p+1")		; posArray[3] @ 96
	.space	128

$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("posArray")
	.dwattr $C$DW$176, DW_AT_linkage_name("posArray")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_addr ||posArray||]
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$362)
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$176, DW_AT_decl_line(0x170)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0b)

	.global	||tFormat||
	.data
	.align	2
	.elfsym	||tFormat||,SYM_SIZE(16),SYM_BLOCKED(1)
||tFormat||:
	.xfloat	$strtod("0x0p+0")		; tFormat.ElecTheta @ 0
	.xfloat	$strtod("0x0p+0")		; tFormat.MechTheta @ 32
	.xfloat	$strtod("0x0p+0")		; tFormat.RawTheta @ 64
	.xfloat	$strtod("0x0p+0")		; tFormat.Speed @ 96
	.xfloat	$strtod("0x0p+0")		; tFormat.InitTheta @ 128
	.xfloat	$strtod("0x1p+17")		; tFormat.MechScaler @ 160
	.xfloat	$strtod("0x0p+0")		; tFormat.StepsPerTurn @ 192
	.bits		0x4,16
			; tFormat.PolePairs @ 224
	.space	16

$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("tFormat")
	.dwattr $C$DW$177, DW_AT_linkage_name("tFormat")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_addr ||tFormat||]
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$177, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$177, DW_AT_decl_column(0x11)

$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("tformatData")
	.dwattr $C$DW$178, DW_AT_linkage_name("tformatData")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$178, DW_AT_declaration
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$178, DW_AT_decl_column(0x1e)

$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("svgen1")
	.dwattr $C$DW$179, DW_AT_linkage_name("svgen1")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$179, DW_AT_declaration
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$179, DW_AT_decl_column(0x11)

$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("qep1")
	.dwattr $C$DW$180, DW_AT_linkage_name("qep1")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$180, DW_AT_declaration
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x41)
	.dwattr $C$DW$180, DW_AT_decl_column(0x15)

	.global	||speed1||
	.bss	||speed1||,20,1,1
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("speed1")
	.dwattr $C$DW$181, DW_AT_linkage_name("speed1")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_addr ||speed1||]
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$181, DW_AT_decl_line(0x162)
	.dwattr $C$DW$181, DW_AT_decl_column(0x11)

$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("pi_id")
	.dwattr $C$DW$182, DW_AT_linkage_name("pi_id")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$182, DW_AT_declaration
	.dwattr $C$DW$182, DW_AT_external
	.dwattr $C$DW$182, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x43)
	.dwattr $C$DW$182, DW_AT_decl_column(0x1b)

$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("pi_iq")
	.dwattr $C$DW$183, DW_AT_linkage_name("pi_iq")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$183, DW_AT_declaration
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x44)
	.dwattr $C$DW$183, DW_AT_decl_column(0x1b)

	.global	||volt1||
	.data
	.align	2
	.elfsym	||volt1||,SYM_SIZE(22),SYM_BLOCKED(1)
||volt1||:
	.xfloat	$strtod("0x0p+0")		; volt1.DcBusVolt @ 0
	.xfloat	$strtod("0x0p+0")		; volt1.MfuncV1 @ 32
	.xfloat	$strtod("0x0p+0")		; volt1.MfuncV2 @ 64
	.xfloat	$strtod("0x0p+0")		; volt1.MfuncV3 @ 96
	.bits		0x1,16
			; volt1.OutOfPhase @ 128
	.space	16
	.xfloat	$strtod("0x0p+0")		; volt1.VphaseA @ 160
	.xfloat	$strtod("0x0p+0")		; volt1.VphaseB @ 192
	.xfloat	$strtod("0x0p+0")		; volt1.VphaseC @ 224
	.xfloat	$strtod("0x0p+0")		; volt1.Valpha @ 256
	.xfloat	$strtod("0x0p+0")		; volt1.Vbeta @ 288
	.space	32

$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("volt1")
	.dwattr $C$DW$184, DW_AT_linkage_name("volt1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_addr ||volt1||]
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$184, DW_AT_external
	.dwattr $C$DW$184, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$184, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$184, DW_AT_decl_column(0x0e)

	.global	||pi_pos||
	.data
	.align	2
	.elfsym	||pi_pos||,SYM_SIZE(24),SYM_BLOCKED(1)
||pi_pos||:
	.xfloat	$strtod("0x0p+0")		; pi_pos.Ref @ 0
	.xfloat	$strtod("0x0p+0")		; pi_pos.Fbk @ 32
	.xfloat	$strtod("0x0p+0")		; pi_pos.Out @ 64
	.xfloat	$strtod("0x1p+0")		; pi_pos.Kp @ 96
	.xfloat	$strtod("0x0p+0")		; pi_pos.Ki @ 128
	.xfloat	$strtod("0x1p+0")		; pi_pos.Umax @ 160
	.xfloat	$strtod("-0x1p+0")		; pi_pos.Umin @ 192
	.xfloat	$strtod("0x0p+0")		; pi_pos.up @ 224
	.xfloat	$strtod("0x0p+0")		; pi_pos.ui @ 256
	.xfloat	$strtod("0x0p+0")		; pi_pos.v1 @ 288
	.xfloat	$strtod("0x0p+0")		; pi_pos.i1 @ 320
	.xfloat	$strtod("0x1p+0")		; pi_pos.w1 @ 352

$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("pi_pos")
	.dwattr $C$DW$185, DW_AT_linkage_name("pi_pos")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_addr ||pi_pos||]
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$185, DW_AT_decl_line(0x156)
	.dwattr $C$DW$185, DW_AT_decl_column(0x11)

	.global	||dlog_4ch1||
	.bss	||dlog_4ch1||,26,1,1
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("dlog_4ch1")
	.dwattr $C$DW$186, DW_AT_linkage_name("dlog_4ch1")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_addr ||dlog_4ch1||]
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$186, DW_AT_external
	.dwattr $C$DW$186, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$186, DW_AT_decl_line(0x185)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0c)

	.global	||spdObs||
	.data
	.align	2
	.elfsym	||spdObs||,SYM_SIZE(28),SYM_BLOCKED(1)
||spdObs||:
	.xfloat	$strtod("0x0p+0")		; spdObs.Ref @ 0
	.xfloat	$strtod("0x0p+0")		; spdObs.Fbk @ 32
	.xfloat	$strtod("0x0p+0")		; spdObs.Err @ 64
	.xfloat	$strtod("0x0p+0")		; spdObs.Out @ 96
	.xfloat	$strtod("0x0p+0")		; spdObs.Kp @ 128
	.xfloat	$strtod("0x0p+0")		; spdObs.Ki @ 160
	.xfloat	$strtod("0x0p+0")		; spdObs.KiT @ 192
	.xfloat	$strtod("0x1p+0")		; spdObs.Umax @ 224
	.xfloat	$strtod("-0x1p+0")		; spdObs.Umin @ 256
	.xfloat	$strtod("0x0p+0")		; spdObs.up @ 288
	.xfloat	$strtod("0x0p+0")		; spdObs.ui @ 320
	.xfloat	$strtod("0x0p+0")		; spdObs.IqMax @ 352
	.xfloat	$strtod("0x1.99999ap-4")		; spdObs.IqKf @ 384
	.xfloat	$strtod("0x1.99999ap-4")		; spdObs.thetaMax @ 416

$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("spdObs")
	.dwattr $C$DW$187, DW_AT_linkage_name("spdObs")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_addr ||spdObs||]
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$187, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$187, DW_AT_decl_column(0x10)

$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("FCL_params")
	.dwattr $C$DW$188, DW_AT_linkage_name("FCL_params")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$210)
	.dwattr $C$DW$188, DW_AT_declaration
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x62)
	.dwattr $C$DW$188, DW_AT_decl_column(0x19)

	.global	||pid_pos||
	.bss	||pid_pos||,32,1,1
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("pid_pos")
	.dwattr $C$DW$189, DW_AT_linkage_name("pid_pos")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_addr ||pid_pos||]
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$189, DW_AT_external
	.dwattr $C$DW$189, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$189, DW_AT_decl_line(0x155)
	.dwattr $C$DW$189, DW_AT_decl_column(0x11)

	.global	||pid_spd||
	.data
	.align	2
	.elfsym	||pid_spd||,SYM_SIZE(40),SYM_BLOCKED(1)
||pid_spd||:
	.xfloat	$strtod("0x0p+0")		; pid_spd.term.Ref @ 0
	.xfloat	$strtod("0x0p+0")		; pid_spd.term.Fbk @ 32
	.xfloat	$strtod("0x0p+0")		; pid_spd.term.Out @ 64
	.xfloat	$strtod("0x0p+0")		; pid_spd.term.c1 @ 96
	.xfloat	$strtod("0x0p+0")		; pid_spd.term.c2 @ 128
	.xfloat	$strtod("0x1p+0")		; pid_spd.param.Kr @ 160
	.xfloat	$strtod("0x1p+0")		; pid_spd.param.Kp @ 192
	.xfloat	$strtod("0x0p+0")		; pid_spd.param.Ki @ 224
	.xfloat	$strtod("0x0p+0")		; pid_spd.param.Kd @ 256
	.xfloat	$strtod("0x1p+0")		; pid_spd.param.Km @ 288
	.xfloat	$strtod("0x1p+0")		; pid_spd.param.Umax @ 320
	.xfloat	$strtod("-0x1p+0")		; pid_spd.param.Umin @ 352
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.up @ 384
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.ui @ 416
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.ud @ 448
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.v1 @ 480
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.i1 @ 512
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.d1 @ 544
	.xfloat	$strtod("0x0p+0")		; pid_spd.data.d2 @ 576
	.xfloat	$strtod("0x1p+0")		; pid_spd.data.w1 @ 608

$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("pid_spd")
	.dwattr $C$DW$190, DW_AT_linkage_name("pid_spd")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_addr ||pid_spd||]
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$190, DW_AT_external
	.dwattr $C$DW$190, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$190, DW_AT_decl_line(0x157)
	.dwattr $C$DW$190, DW_AT_decl_column(0x11)

	.global	||DBUFF_4CH1||
	.sect	".data:DBUFF_4CH1", RW
	.align	2
	.elfsym	||DBUFF_4CH1||,SYM_SIZE(400)
||DBUFF_4CH1||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH1[0] @ 0
	.space	6368

$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("DBUFF_4CH1")
	.dwattr $C$DW$191, DW_AT_linkage_name("DBUFF_4CH1")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_addr ||DBUFF_4CH1||]
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$191, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH2||
	.sect	".data:DBUFF_4CH2", RW
	.align	2
	.elfsym	||DBUFF_4CH2||,SYM_SIZE(400)
||DBUFF_4CH2||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH2[0] @ 0
	.space	6368

$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("DBUFF_4CH2")
	.dwattr $C$DW$192, DW_AT_linkage_name("DBUFF_4CH2")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_addr ||DBUFF_4CH2||]
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$192, DW_AT_external
	.dwattr $C$DW$192, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$192, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH3||
	.sect	".data:DBUFF_4CH3", RW
	.align	2
	.elfsym	||DBUFF_4CH3||,SYM_SIZE(400)
||DBUFF_4CH3||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH3[0] @ 0
	.space	6368

$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("DBUFF_4CH3")
	.dwattr $C$DW$193, DW_AT_linkage_name("DBUFF_4CH3")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_addr ||DBUFF_4CH3||]
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$193, DW_AT_external
	.dwattr $C$DW$193, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$193, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0b)

	.global	||DBUFF_4CH4||
	.sect	".data:DBUFF_4CH4", RW
	.align	2
	.elfsym	||DBUFF_4CH4||,SYM_SIZE(400)
||DBUFF_4CH4||:
	.xfloat	$strtod("0x0p+0")		; DBUFF_4CH4[0] @ 0
	.space	6368

$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("DBUFF_4CH4")
	.dwattr $C$DW$194, DW_AT_linkage_name("DBUFF_4CH4")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_addr ||DBUFF_4CH4||]
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$194, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0b)

	.sblock	".bss"
	.sblock	".data"
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{7704EBC0-DE5A-4F02-84C9-D41A47616424} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{C950F29F-8A26-4823-8A6B-3551A64E88F3} 
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{2BFE8A9C-F371-48A4-8651-8E16142CB15A} 
	.sect	".text:setupCpuTimer"
	.clink
	.global	||setupCpuTimer||

$C$DW$195	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$195, DW_AT_name("setupCpuTimer")
	.dwattr $C$DW$195, DW_AT_low_pc(||setupCpuTimer||)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_linkage_name("setupCpuTimer")
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$195, DW_AT_decl_line(0x257)
	.dwattr $C$DW$195, DW_AT_decl_column(0x06)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 600,column 1,is_stmt,address ||setupCpuTimer||,isa 0

	.dwfde $C$DW$CIE, ||setupCpuTimer||
$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("base")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg0]

$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("periodCount")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: setupCpuTimer                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||setupCpuTimer||:
;* AR1   assigned to base
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("base")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg6]

;* AR7   assigned to periodCount
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("periodCount")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg18]

;* AL    assigned to tcrValue
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("tcrValue")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("tcrValue")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 600,column 1,is_stmt,isa 0
        MOVL      XAR1,ACC              ; [CPU_ALU] |600| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0c07),AR6       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 600,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[6]          ; [CPU_ALU] |600| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |380| 
        MOV       *(0:0x0c06),AL        ; [CPU_ALU] |380| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 604,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |604| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOVL      *+XAR1[2],XAR7        ; [CPU_ALU] |335| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[4],#0x7fff  ; [CPU_ALU] |259| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *+XAR1[4],AL          ; [CPU_ALU] |260| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 604,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |604| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #||CPUTimer_setEmulationMode|| ; [CPU_ALU] |604| 
        ; call occurs [#||CPUTimer_setEmulationMode||] ; [] |604| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 236,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[4],#0x7fff  ; [CPU_ALU] |236| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 237,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |237| 
        MOV       *+XAR1[4],AL          ; [CPU_ALU] |237| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 283,column 5,is_stmt,isa 0
        AND       *+XAR1[4],#0xffef     ; [CPU_ALU] |283| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$195, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x262)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text:ramper"
	.clink
	.global	||ramper||

$C$DW$204	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$204, DW_AT_name("ramper")
	.dwattr $C$DW$204, DW_AT_low_pc(||ramper||)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_linkage_name("ramper")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$204, DW_AT_decl_line(0xe38)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3641,column 1,is_stmt,address ||ramper||,isa 0

	.dwfde $C$DW$CIE, ||ramper||
$C$DW$205	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$205, DW_AT_name("in")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$206	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$206, DW_AT_name("out")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_name("rampDelta")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x33]


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
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("in")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to out
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("out")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to rampDelta
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("rampDelta")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3646,column 5,is_stmt,isa 0
        SUBF32    R4H,R0H,R1H           ; [CPU_FPU] |3646| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3648,column 9,is_stmt,isa 0
        CMPF32    R4H,R2H               ; [CPU_FPU] |3648| 
        MOVST0    ZF, NF                ; [CPU_FPU] |3648| 
        B         ||$C$L1||,LEQ         ; [CPU_ALU] |3648| 
        ; branchcc occurs ; [] |3648| 
        ADDF32    R0H,R2H,R1H           ; [CPU_FPU] |3648| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] |3648| 
        ; branch occurs ; [] |3648| 
||$C$L1||:    
        MOV32     R3H,R2H               ; [CPU_FPU] |3648| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |3648| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |3648| 
        MOVST0    ZF, NF                ; [CPU_FPU] |3648| 
        B         ||$C$L2||,GEQ         ; [CPU_ALU] |3648| 
        ; branchcc occurs ; [] |3648| 
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |3648| 
        NOP       ; [CPU_ALU] 
||$C$L2||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$204, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0xe4a)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text:refPosGen8"
	.clink
	.global	||refPosGen8||

$C$DW$212	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$212, DW_AT_name("refPosGen8")
	.dwattr $C$DW$212, DW_AT_low_pc(||refPosGen8||)
	.dwattr $C$DW$212, DW_AT_high_pc(0x00)
	.dwattr $C$DW$212, DW_AT_linkage_name("refPosGen8")
	.dwattr $C$DW$212, DW_AT_external
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$212, DW_AT_decl_line(0xe6b)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$212, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3692,column 1,is_stmt,address ||refPosGen8||,isa 0

	.dwfde $C$DW$CIE, ||refPosGen8||
$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("in")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("out")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: refPosGen8                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||refPosGen8||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||posSlewRate||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3693,column 5,is_stmt,isa 0
        MOV32     R2H,@||posSlewRate||  ; [CPU_FPU] |3693| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("ramper")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |3693| 
        ; call occurs [#||ramper||] ; [] |3693| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$212, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$212, DW_AT_TI_end_line(0xe70)
	.dwattr $C$DW$212, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$212

	.sect	".text:refPosGen"
	.clink
	.global	||refPosGen||

$C$DW$217	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$217, DW_AT_name("refPosGen")
	.dwattr $C$DW$217, DW_AT_low_pc(||refPosGen||)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_linkage_name("refPosGen")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$217, DW_AT_decl_line(0xe51)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3666,column 1,is_stmt,address ||refPosGen||,isa 0

	.dwfde $C$DW$CIE, ||refPosGen||
$C$DW$218	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$218, DW_AT_name("out")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: refPosGen                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||refPosGen||:
;* R2    assigned to $O$C26
;* R0    assigned to $O$C27
;* R1    assigned to out
$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("out")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x2f]

;* R4    assigned to in
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("in")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        SETC      SXM                   ; [CPU_ALU] 
        MOVW      DP,#||posPtr||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3667,column 18,is_stmt,isa 0
        MOVL      XAR4,#||posArray||    ; [CPU_ARAU] |3667| 
        MOV       ACC,@||posPtr|| << 1  ; [CPU_ALU] |3667| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |3667| 
        MOVW      DP,#||posSlewRate||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3666,column 1,is_stmt,isa 0
        MOV32     R1H,R0H               ; [CPU_FPU] |3666| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3669,column 5,is_stmt,isa 0
        MOV32     R2H,@||posSlewRate||  ; [CPU_FPU] |3669| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3667,column 18,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |3667| 
        MOV32     R4H,R0H               ; [CPU_FPU] |3667| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3669,column 5,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("ramper")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||ramper||           ; [CPU_ALU] |3669| 
        ; call occurs [#||ramper||] ; [] |3669| 
        MOV32     R1H,R0H               ; [CPU_FPU] |3669| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3671,column 5,is_stmt,isa 0
        CMPF32    R4H,R1H               ; [CPU_FPU] |3671| 
        MOVST0    ZF, NF                ; [CPU_FPU] |3671| 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |3671| 
        ; branchcc occurs ; [] |3671| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3675,column 9,is_stmt,isa 0
        MOV32     R0H,@||posCntr||      ; [CPU_FPU] |3675| 
        ADDF32    R2H,R0H,#16256        ; [CPU_FPU] |3675| 
        MOV32     R4H,@||posCntrMax||   ; [CPU_FPU] |3675| 
        CMPF32    R2H,R4H               ; [CPU_FPU] |3675| 
        MOVST0    ZF, NF                ; [CPU_FPU] |3675| 
        B         ||$C$L3||,GT          ; [CPU_ALU] |3675| 
        ; branchcc occurs ; [] |3675| 
        MOV32     @||posCntr||,R2H      ; [CPU_FPU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3688,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |3688| 
        ; branch occurs ; [] |3688| 
||$C$L3||:    
        MOVW      DP,#||posPtrMax||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3677,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |3677| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3681,column 13,is_stmt,isa 0
        MOV       AL,@||posPtrMax||     ; [CPU_ALU] |3681| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3679,column 13,is_stmt,isa 0
        INC       @||posPtr||           ; [CPU_ALU] |3679| 
        MOVW      DP,#||posCntr||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3677,column 13,is_stmt,isa 0
        MOV32     @||posCntr||,R0H      ; [CPU_FPU] |3677| 
        MOVW      DP,#||posPtr||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3681,column 13,is_stmt,isa 0
        CMP       AL,@||posPtr||        ; [CPU_ALU] |3681| 
        B         ||$C$L4||,GT          ; [CPU_ALU] |3681| 
        ; branchcc occurs ; [] |3681| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3683,column 17,is_stmt,isa 0
        MOV       @||posPtr||,#0        ; [CPU_ALU] |3683| 
||$C$L4||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3688,column 5,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |3688| 
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$217, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0xe69)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text:readTformatEncPosition"
	.clink
	.global	||readTformatEncPosition||

$C$DW$223	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$223, DW_AT_name("readTformatEncPosition")
	.dwattr $C$DW$223, DW_AT_low_pc(||readTformatEncPosition||)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_linkage_name("readTformatEncPosition")
	.dwattr $C$DW$223, DW_AT_external
	.dwattr $C$DW$223, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$223, DW_AT_decl_line(0x49d)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1182,column 1,is_stmt,address ||readTformatEncPosition||,isa 0

	.dwfde $C$DW$CIE, ||readTformatEncPosition||

;***************************************************************
;* FNAME: readTformatEncPosition        FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  8 SOE     *
;***************************************************************

||readTformatEncPosition||:
;* R0    assigned to $O$C2
;* R5    assigned to $O$C3
;* R2    assigned to $O$C4
;* R4    assigned to $O$v14
;* R0    assigned to $O$v13
;* R2    assigned to $O$v12
;* R3    assigned to $O$v11
;* R7    assigned to $O$v10
;* R2    assigned to $O$v9
;* R0    assigned to $O$v8
;* R6    assigned to $O$v7
;* R5    assigned to $O$v6
;* R1    assigned to $O$v5
;* R2    assigned to $O$v2
;* R0    assigned to $O$v1
;* R3    assigned to $O$S1
;* R1    assigned to $O$S2
;* R4    assigned to Ts
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("Ts")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("thetaMax")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_breg20 -4]

;* R5    assigned to IqErrFF
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("IqErrFF")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x3f]

;* R1    assigned to angleEstimate
$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("angleEstimate")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x2f]

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
        MOVW      DP,#||tFormat_dataId|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1184,column 5,is_stmt,isa 0
        MOVZ      AR6,@||tFormat_dataId|| ; [CPU_ALU] |1184| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#38463            ; [CPU_ALU] |1184| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1184| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |1184| 
        ; branchcc occurs ; [] |1184| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1186,column 9,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID3|| ; [CPU_ALU] |1186| 
        ; call occurs [#||PM_tformat_receiveDataID3||] ; [] |1186| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1187,column 9,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |1187| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |1187| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1187| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |1187| 
        ; branchcc occurs ; [] |1187| 
        MOVW      DP,#||tFormat_crcError|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1189,column 14,is_stmt,isa 0
        MOVB      @||tFormat_crcError||,#1,UNC ; [CPU_ALU] |1189| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1190,column 14,is_stmt,isa 0
        MOV       @||runMotor||,#0      ; [CPU_ALU] |1190| 
||$C$L5||:    
        MOVW      DP,#||tformatData||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1193,column 9,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+2 ; [CPU_ALU] |1193| 
        MOVZ      AR4,@$BLOCKED(||tformatData||)+4 ; [CPU_ALU] |1193| 
        MOV       AH,@$BLOCKED(||tformatData||)+3 ; [CPU_ALU] |1193| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("PM_tformat_updatePositionOrTurns")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #||PM_tformat_updatePositionOrTurns|| ; [CPU_ALU] |1193| 
        ; call occurs [#||PM_tformat_updatePositionOrTurns||] ; [] |1193| 
        MOVW      DP,#||position||      ; [CPU_ARAU] 
        MOVL      @||position||,ACC     ; [CPU_ALU] |1193| 
        MOVW      DP,#||tformatData||+6 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1197,column 9,is_stmt,isa 0
        MOVZ      AR4,@$BLOCKED(||tformatData||)+8 ; [CPU_ALU] |1197| 
        MOV       AL,@$BLOCKED(||tformatData||)+6 ; [CPU_ALU] |1197| 
        MOV       AH,@$BLOCKED(||tformatData||)+7 ; [CPU_ALU] |1197| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("PM_tformat_updatePositionOrTurns")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #||PM_tformat_updatePositionOrTurns|| ; [CPU_ALU] |1197| 
        ; call occurs [#||PM_tformat_updatePositionOrTurns||] ; [] |1197| 
        MOVW      DP,#||turns||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1207,column 9,is_stmt,isa 0
        UI32TOF32 R0H,@||position||     ; [CPU_FPU] |1207| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1197,column 9,is_stmt,isa 0
        MOVL      @||turns||,ACC        ; [CPU_ALU] |1197| 
        MOVW      DP,#||tFormat||+10    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1207,column 9,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||tFormat||)+10 ; [CPU_FPU] |1207| 
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
        MPYF32    R2H,R1H,R0H           ; [CPU_FPU] |1207| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1208,column 9,is_stmt,isa 0
        MOV       AL,@||lsw||           ; [CPU_ALU] |1208| 
        MOVW      DP,#||tFormat_encCmdStatus|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1201,column 9,is_stmt,isa 0
        MOV       @||tFormat_encCmdStatus||,#0 ; [CPU_ALU] |1201| 
        MOVW      DP,#||tFormat_dataId|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1202,column 9,is_stmt,isa 0
        MOV       @||tFormat_dataId||,#0 ; [CPU_ALU] |1202| 
        MOVW      DP,#||tFormat||+4     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1207,column 9,is_stmt,isa 0
        MOV32     @$BLOCKED(||tFormat||)+4,R2H ; [CPU_FPU] |1207| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1208,column 9,is_stmt,isa 0
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |1208| 
        ; branchcc occurs ; [] |1208| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1210,column 13,is_stmt,isa 0
        MOVIZ     R1H,#15820            ; [CPU_FPU] |1210| 
        MOVIZ     R0H,#16230            ; [CPU_FPU] |1210| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |1210| 
        MOVXI     R0H,#26214            ; [CPU_FPU] |1210| 

        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |1210| 
||      MOV32     R3H,@$BLOCKED(||tFormat||)+8 ; [CPU_FPU] |1210| 

        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |1210| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |1210| 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||tFormat||)+8,R0H ; [CPU_FPU] |1210| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] |1210| 
        ; branch occurs ; [] |1210| 
||$C$L6||:    
        MOV32     R0H,@$BLOCKED(||tFormat||)+8 ; [CPU_FPU] 
||$C$L7||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1214,column 9,is_stmt,isa 0
        SUBF32    R0H,R2H,R0H           ; [CPU_FPU] |1214| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1216,column 9,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |1216| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1216| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |1216| 
        ; branchcc occurs ; [] |1216| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1217,column 13,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |1217| 
        NOP       ; [CPU_ALU] 
||$C$L8||:    
        MOV32     @$BLOCKED(||tFormat||)+2,R0H ; [CPU_FPU] |1217| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0
        UI16TOF32 R1H,@$BLOCKED(||tFormat||)+14 ; [CPU_FPU] |1220| 
        MOVW      DP,#||spdObs||+22     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |94| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0

        MPYF32    R2H,R0H,R1H           ; [CPU_FPU] |1220| 
||      MOV32     R5H,@$BLOCKED(||spdObs||)+22 ; [CPU_FPU] |94| 

        MOVW      DP,#||T||             ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 93,column 1,is_stmt,isa 0
        MOV32     R4H,@||T||            ; [CPU_FPU] |93| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0
        F32TOI32  R3H,R2H               ; [CPU_FPU] |1220| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |94| 
        MOVW      DP,#||spdObs||+24     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0
        I32TOF32  R6H,R3H               ; [CPU_FPU] |1220| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 99,column 5,is_stmt,isa 0
        MOV32     R3H,@$BLOCKED(||spdObs||)+2 ; [CPU_FPU] |99| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0
        MAXF32    R7H,R0H               ; [CPU_FPU] |94| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0

        MOV32     R0H,@$BLOCKED(||spdObs||)+24 ; [CPU_FPU] |94| 
||      SUBF32    R2H,R2H,R6H           ; [CPU_FPU] |1220| 

        MOVW      DP,#||tFormat||       ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0
        MINF32    R7H,R5H               ; [CPU_FPU] |94| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1220,column 9,is_stmt,isa 0

        MOV32     @$BLOCKED(||tFormat||),R2H ; [CPU_FPU] |1220| 
||      SUBF32    R1H,R2H,R3H           ; [CPU_FPU] |99| 

        MOVW      DP,#||spdObs||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 94,column 24,is_stmt,isa 0

        MOV32     @$BLOCKED(||spdObs||),R2H ; [CPU_FPU] |96| 
||      MPYF32    R5H,R0H,R7H           ; [CPU_FPU] |94| 

        MOVW      DP,#||angMax||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 93,column 1,is_stmt,isa 0

        MOV32     R6H,@||angMax||       ; [CPU_FPU] |93| 
||      ADDF32    R1H,R1H,R5H           ; [CPU_FPU] |99| 

        MOV32     *-SP[4],R6H           ; [CPU_FPU] |93| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 102,column 5,is_stmt,isa 0
        CMPF32    R1H,#16128            ; [CPU_FPU] |102| 
        MOVST0    ZF, NF                ; [CPU_FPU] |102| 
        B         ||$C$L9||,LEQ         ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |102| 
        B         ||$C$L10||,UNC        ; [CPU_ALU] |102| 
        ; branch occurs ; [] |102| 
||$C$L9||:    
        CMPF32    R1H,#48896            ; [CPU_FPU] |102| 
        MOVST0    ZF, NF                ; [CPU_FPU] |102| 
        B         ||$C$L10||,GEQ        ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |102| 
||$C$L10||:    
        MOVW      DP,#||spdObs||+10     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 107,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||spdObs||)+10 ; [CPU_FPU] |107| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |107| 
        NOP       ; [CPU_ALU] 

        MPYF32    R5H,R4H,R0H           ; [CPU_FPU] |107| 
||      MOV32     R2H,@$BLOCKED(||spdObs||)+20 ; [CPU_FPU] |107| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 108,column 5,is_stmt,isa 0
        MOV32     R7H,@$BLOCKED(||spdObs||)+16 ; [CPU_FPU] |108| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 106,column 5,is_stmt,isa 0

        ADDF32    R5H,R5H,R2H           ; [CPU_FPU] |107| 
||      MOV32     R0H,@$BLOCKED(||spdObs||)+8 ; [CPU_FPU] |106| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 108,column 5,is_stmt,isa 0
        MOV32     R2H,@$BLOCKED(||spdObs||)+14 ; [CPU_FPU] |108| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 106,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||spdObs||)+20,R5H ; [CPU_FPU] |107| 
||      MPYF32    R6H,R1H,R0H           ; [CPU_FPU] |106| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 108,column 5,is_stmt,isa 0
        MAXF32    R5H,R7H               ; [CPU_FPU] |108| 
        MINF32    R5H,R2H               ; [CPU_FPU] |108| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 111,column 5,is_stmt,isa 0
        ADDF32    R0H,R5H,R6H           ; [CPU_FPU] |111| 
        NOP       ; [CPU_ALU] 
        MOV32     @$BLOCKED(||spdObs||)+6,R0H ; [CPU_FPU] |111| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 112,column 5,is_stmt,isa 0
        MAXF32    R0H,R7H               ; [CPU_FPU] |112| 
        MOV32     R7H,*-SP[4]           ; [CPU_FPU] |112| 
        MINF32    R0H,R2H               ; [CPU_FPU] |112| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 102,column 5,is_stmt,isa 0

        MPYF32    R2H,R7H,R0H           ; [CPU_FPU] |115| 
||      MOV32     @$BLOCKED(||spdObs||)+4,R1H ; [CPU_FPU] |102| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 106,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+18,R6H ; [CPU_FPU] |106| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 108,column 5,is_stmt,isa 0

        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |115| 
||      MOV32     @$BLOCKED(||spdObs||)+20,R5H ; [CPU_FPU] |108| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 112,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+6,R0H ; [CPU_FPU] |112| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 118,column 5,is_stmt,isa 0
        CMPF32    R3H,#16256            ; [CPU_FPU] |118| 
        MOVST0    ZF, NF                ; [CPU_FPU] |118| 
        B         ||$C$L11||,LEQ        ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
        ADDF32    R3H,R3H,#49024        ; [CPU_FPU] |118| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] |118| 
        ; branch occurs ; [] |118| 
||$C$L11||:    
        CMPF32    R3H,#0                ; [CPU_FPU] |118| 
        MOVST0    ZF, NF                ; [CPU_FPU] |118| 
        B         ||$C$L12||,GEQ        ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
        ADDF32    R3H,R3H,#16256        ; [CPU_FPU] |118| 
        NOP       ; [CPU_ALU] 
||$C$L12||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1139,column 5,is_stmt,isa 0

        MPYF32    R1H,R4H,R0H           ; [CPU_FPU] |1139| 
||      MOV32     @$BLOCKED(||spdObs||)+2,R3H ; [CPU_FPU] |118| 

        MOVW      DP,#||speedWe||       ; [CPU_ARAU] 
        ADDF32    R1H,R1H,R3H           ; [CPU_FPU] |1139| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h",line 121,column 5,is_stmt,isa 0
        MOV32     @||speedWe||,R0H      ; [CPU_FPU] |121| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1142,column 5,is_stmt,isa 0
        CMPF32    R1H,#16256            ; [CPU_FPU] |1142| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1142| 
        B         ||$C$L13||,GT         ; [CPU_ALU] |1142| 
        ; branchcc occurs ; [] |1142| 
        CMPF32    R1H,#0                ; [CPU_FPU] |1142| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1142| 
        B         ||$C$L14||,GEQ        ; [CPU_ALU] |1142| 
        ; branchcc occurs ; [] |1142| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1145,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |1145| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |1145| 
        ; branch occurs ; [] |1145| 
||$C$L13||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1142,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |1142| 
        NOP       ; [CPU_ALU] 
||$C$L14||:    
        MOVW      DP,#||pangle||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1145,column 5,is_stmt,isa 0
        MOV32     @||pangle||,R1H       ; [CPU_FPU] |1145| 
||$C$L15||:    
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
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$223, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x4ce)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

	.sect	".text:buildLevel2"
	.clink

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("buildLevel2")
	.dwattr $C$DW$232, DW_AT_low_pc(||buildLevel2||)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_linkage_name("buildLevel2")
	.dwattr $C$DW$232, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$232, DW_AT_decl_line(0x63b)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1596,column 1,is_stmt,address ||buildLevel2||,isa 0

	.dwfde $C$DW$CIE, ||buildLevel2||

;***************************************************************
;* FNAME: buildLevel2                   FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  8 SOE     *
;***************************************************************

||buildLevel2||:
;* R7    assigned to $O$C10
;* R5    assigned to $O$C11
;* R0    assigned to $O$C12
;* R2    assigned to $O$C13
;* R5    assigned to $O$C14
;* R4    assigned to $O$C16
;* R7    assigned to $O$C17
;* R0    assigned to $O$C18
;* R0    assigned to $O$C19
;* R2    assigned to $O$C20
;* AR4   assigned to $O$C21
;* R4    assigned to $O$C22
;* R0    assigned to $O$C23
;* AH    assigned to $O$v44
;* AL    assigned to $O$v41
;* R0    assigned to $O$v38
;* R1    assigned to $O$v37
;* R2    assigned to $O$v36
;* AL    assigned to $O$v35
;* R6    assigned to $O$v34
;* R0    assigned to $O$v33
;* R0    assigned to $O$v32
;* R3    assigned to $O$v31
;* R4    assigned to $O$v30
;* R0    assigned to $O$v29
;* R1    assigned to $O$v28
;* R3    assigned to $O$v24
;* R5    assigned to $O$v23
;* R0    assigned to $O$v10
;* R3    assigned to $O$v8
;* R1    assigned to $O$v3
;* R2    assigned to $O$v2
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AR6   assigned to $O$R6
;* AL    assigned to $O$R7
;* AL    assigned to $O$R9
;* R1    assigned to vdc
$C$DW$233	.dwtag  DW_TAG_variable
	.dwattr $C$DW$233, DW_AT_name("vdc")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x2f]

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
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e16)       ; [CPU_FPU] |833| 
        MOVW      DP,#||offset_SDFMV||  ; [CPU_ARAU] 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 504,column 5,is_stmt,isa 0
        MOV32     R3H,@||offset_SDFMV|| ; [CPU_FPU] |504| 
        SFR       ACC,16                ; [CPU_ALU] |504| 
        MOV32     R0H,ACC               ; [CPU_FPU] |504| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e26)       ; [CPU_FPU] |833| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 508,column 5,is_stmt,isa 0
        SFR       ACC,16                ; [CPU_ALU] |508| 
        MOV32     R1H,ACC               ; [CPU_FPU] |508| 
        MOVW      DP,#||FCL_params||+4  ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 504,column 5,is_stmt,isa 0
        I32TOF32  R4H,R0H               ; [CPU_FPU] |504| 
        MOV32     R0H,@$BLOCKED(||FCL_params||)+4 ; [CPU_FPU] |504| 
        MOVW      DP,#||offset_SDFMW||  ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 508,column 5,is_stmt,isa 0
        I32TOF32  R2H,R1H               ; [CPU_FPU] |508| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 504,column 5,is_stmt,isa 0
        MPYF32    R4H,R0H,R4H           ; [CPU_FPU] |504| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 508,column 5,is_stmt,isa 0

        MOV32     R1H,@||offset_SDFMW|| ; [CPU_FPU] |508| 
||      MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |508| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        MOVIZ     R0H,#16147            ; [CPU_FPU] |71| 
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 508,column 5,is_stmt,isa 0
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |508| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1612,column 5,is_stmt,isa 0
        MOV       AL,@||runMotor||      ; [CPU_ALU] |1612| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        MOVXI     R0H,#52538            ; [CPU_FPU] |71| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 504,column 5,is_stmt,isa 0
        SUBF32    R2H,R4H,R3H           ; [CPU_FPU] |504| 
        MOVW      DP,#||currentSenV||   ; [CPU_ARAU] 

        ADDF32    R3H,R1H,R1H           ; [CPU_FPU] |71| 
||      MOV32     @||currentSenV||,R2H  ; [CPU_FPU] |504| 

        MOVW      DP,#||clarke2||       ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 70,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||clarke2||)+6,R2H ; [CPU_FPU] |70| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1603,column 5,is_stmt,isa 0

        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |71| 
||      MOV32     @$BLOCKED(||clarke2||),R2H ; [CPU_FPU] |1603| 

        MOVW      DP,#||currentSenW||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 508,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |71| 
||      MOV32     @||currentSenW||,R1H  ; [CPU_FPU] |508| 

        MOVW      DP,#||clarke2||+2     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1604,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||clarke2||)+2,R1H ; [CPU_FPU] |1604| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||clarke2||)+8,R0H ; [CPU_FPU] |71| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1612,column 5,is_stmt,isa 0
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |1612| 
        ; branchcc occurs ; [] |1612| 
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1615,column 9,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |1615| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1614,column 9,is_stmt,isa 0
        MOV       @||lsw||,#0           ; [CPU_ALU] |1614| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1616,column 9,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1616| 
        MOVW      DP,#||IdRef||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1615,column 9,is_stmt,isa 0
        MOV32     @||IdRef||,R1H        ; [CPU_FPU] |1615| 
        MOVW      DP,#||pi_id||         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1616,column 9,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||),R0H ; [CPU_FPU] |1616| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1617,column 9,is_stmt,isa 0
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |1617| 
        ; call occurs [#||FCL_resetController||] ; [] |1617| 
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1639,column 5,is_stmt,isa 0
        MOV       AL,@||lsw||           ; [CPU_ALU] |1639| 
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |1639| 
        ; branchcc occurs ; [] |1639| 
        MOVW      DP,#||rc1||+10        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1641,column 9,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |1641| 
        ZERO      R0H                   ; [CPU_FPU] |1641| 
        MOV32     R3H,@$BLOCKED(||rc1||)+10 ; [CPU_FPU] 
        MOV32     @$BLOCKED(||rc1||),R1H ; [CPU_FPU] |1641| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L16||:    
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1619,column 10,is_stmt,isa 0
        MOV       AL,@||lsw||           ; [CPU_ALU] |1619| 
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |1619| 
        ; branchcc occurs ; [] |1619| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1627,column 9,is_stmt,isa 0
        MOVB      @||lsw||,#1,UNC       ; [CPU_ALU] |1627| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1623,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |1623| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1639,column 5,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |1639| 
        ; branch occurs ; [] |1639| 
||$C$L17||:    
        MOVW      DP,#||rc1||+10        ; [CPU_ARAU] 
        MOV32     R3H,@$BLOCKED(||rc1||)+10 ; [CPU_FPU] 
||$C$L18||:    
        MOVW      DP,#||speedRef||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1645,column 9,is_stmt,isa 0
        MOV32     R0H,@||speedRef||     ; [CPU_FPU] |1645| 
        MOVW      DP,#||rc1||           ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||rc1||),R0H ; [CPU_FPU] |1645| 
||$C$L19||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        SUBF32    R4H,R0H,R3H           ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        MOVIZ     R1H,#14207            ; [CPU_FPU] |76| 
        MOV32     R2H,R4H               ; [CPU_FPU] |76| 
        MOVXI     R1H,#55872            ; [CPU_FPU] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 73,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||rc1||)+14,R4H ; [CPU_FPU] |73| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 76,column 5,is_stmt,isa 0
        ABSF32    R2H,R2H               ; [CPU_FPU] |76| 
        CMPF32    R2H,R1H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L23||,LT         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 83,column 3,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
        ADDL      ACC,@$BLOCKED(||rc1||)+8 ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 85,column 3,is_stmt,isa 0
        CMPL      ACC,@$BLOCKED(||rc1||)+2 ; [CPU_ALU] |85| 
        B         ||$C$L22||,LO         ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 87,column 4,is_stmt,isa 0
        CMPF32    R0H,R3H               ; [CPU_FPU] |87| 
        MOVST0    ZF, NF                ; [CPU_FPU] |87| 
        B         ||$C$L20||,GEQ        ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 93,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14207            ; [CPU_FPU] |93| 
        MOVXI     R0H,#55872            ; [CPU_FPU] |93| 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |93| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L20||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 89,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14207            ; [CPU_FPU] |89| 
        MOVXI     R2H,#55872            ; [CPU_FPU] |89| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
||$C$L21||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 96,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |96| 
||$C$L22||:    
        MOVL      @$BLOCKED(||rc1||)+8,ACC ; [CPU_ALU] |96| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] |96| 
        ; branch occurs ; [] |96| 
||$C$L23||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |102| 
        MOV       AH,#32767             ; [CPU_ALU] |102| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 101,column 6,is_stmt,isa 0
        MOV32     R3H,R0H               ; [CPU_FPU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 102,column 3,is_stmt,isa 0
        MOVL      @$BLOCKED(||rc1||)+12,ACC ; [CPU_ALU] |102| 
||$C$L24||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||rc1||)+6 ; [CPU_FPU] |109| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1653,column 5,is_stmt,isa 0
        MOVL      XAR4,#||rg1||         ; [CPU_ARAU] |1653| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||rc1||)+4 ; [CPU_FPU] |109| 
        MINF32    R3H,R0H               ; [CPU_FPU] |109| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |68| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h",line 109,column 5,is_stmt,isa 0
        MAXF32    R3H,R1H               ; [CPU_FPU] |109| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 68,column 2,is_stmt,isa 0
        MPYF32    R2H,R3H,R0H           ; [CPU_FPU] |68| 
        MOV32     R7H,*+XAR4[4]         ; [CPU_FPU] |68| 

        ADDF32    R0H,R2H,R7H           ; [CPU_FPU] |68| 
||      MOV32     @$BLOCKED(||rc1||)+10,R3H ; [CPU_FPU] |109| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1653,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |1653| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 71,column 2,is_stmt,isa 0
        CMPF32    R0H,#16256            ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L26||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 75,column 7,is_stmt,isa 0
        CMPF32    R0H,#49024            ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L25||,LT         ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] 
        B         ||$C$L28||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L25||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 77,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |77| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L26||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 73,column 3,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |73| 
        NOP       ; [CPU_ALU] 
||$C$L27||:    
        MOVW      DP,#||rg1||+4         ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||rg1||)+4,R0H ; [CPU_FPU] |73| 
||$C$L28||:    
        MOVW      DP,#||rg1||+8         ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h",line 80,column 2,is_stmt,isa 0
        MOV32     R3H,R0H               ; [CPU_FPU] |80| 
        MOV32     @$BLOCKED(||rg1||)+8,R0H ; [CPU_FPU] |80| 
||$C$L29||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 787,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7403)        ; [CPU_ALU] |787| 
        TBIT      AL,#0                 ; [CPU_ALU] |787| 
        B         ||$C$L29||,NTC        ; [CPU_ALU] |787| 
        ; branchcc occurs ; [] |787| 
 NOP
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1412,column 5,is_stmt,isa 0
        MOV32     XAR6,*(0:0x0b10)      ; [CPU_FPU] |1412| 
        MOVW      DP,#||FCL_params||+2  ; [CPU_ARAU] 
        MOV32     ACC,*(0:0x0b30)       ; [CPU_FPU] |1412| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1666,column 5,is_stmt,isa 0
        MOV32     R2H,@$BLOCKED(||FCL_params||)+2 ; [CPU_FPU] |1666| 
        MOV32     R4H,XAR6              ; [CPU_FPU] |1666| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1667,column 5,is_stmt,isa 0
        MOV32     R0H,ACC               ; [CPU_FPU] |1667| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1682,column 5,is_stmt,isa 0
        COSPUF32  R5H,R3H               ; [CPU_FPU] |1682| 
        MOVW      DP,#||clarke1||+2     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1666,column 5,is_stmt,isa 0
        I32TOF32  R7H,R4H               ; [CPU_FPU] |1666| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e36)       ; [CPU_FPU] |833| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1667,column 5,is_stmt,isa 0
        I32TOF32  R0H,R0H               ; [CPU_FPU] |1667| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1681,column 5,is_stmt,isa 0
        SINPUF32  R4H,R3H               ; [CPU_FPU] |1681| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1667,column 5,is_stmt,isa 0
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |1667| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        ADDF32    R1H,R0H,R0H           ; [CPU_FPU] |71| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        SFR       ACC,16                ; [CPU_ALU] |488| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1666,column 5,is_stmt,isa 0

        MPYF32    R0H,R2H,R7H           ; [CPU_FPU] |1666| 
||      MOV32     @$BLOCKED(||clarke1||)+2,R0H ; [CPU_FPU] |1667| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        MOVIZ     R7H,#16147            ; [CPU_FPU] |71| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |71| 
        MOVXI     R7H,#52538            ; [CPU_FPU] |71| 
        MPYF32    R6H,R7H,R2H           ; [CPU_FPU] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 68,column 2,is_stmt,isa 0
        MPYF32    R7H,R0H,R5H           ; [CPU_FPU] |68| 
        MPYF32    R2H,R6H,R4H           ; [CPU_FPU] |68| 
        MOVW      DP,#||VdTesting||     ; [CPU_ARAU] 
        ADDF32    R1H,R2H,R7H           ; [CPU_FPU] |68| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1688,column 5,is_stmt,isa 0
        MOV32     R7H,@||VdTesting||    ; [CPU_FPU] |1688| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 68,column 2,is_stmt,isa 0
        MOV32     *-SP[6],R1H           ; [CPU_FPU] |68| 
        MOVW      DP,#||park1||+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1680,column 5,is_stmt,isa 0

        MPYF32    R2H,R6H,R5H           ; [CPU_FPU] |69| 
||      MOV32     @$BLOCKED(||park1||)+4,R3H ; [CPU_FPU] |1680| 

        MOVW      DP,#||ipark1||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1688,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||ipark1||)+6,R7H ; [CPU_FPU] |1688| 
||      MPYF32    R1H,R0H,R4H           ; [CPU_FPU] |69| 

        MOVW      DP,#||VqTesting||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1689,column 5,is_stmt,isa 0

        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |69| 
||      MOV32     R3H,@||VqTesting||    ; [CPU_FPU] |1689| 

        MOVW      DP,#||ipark1||+12     ; [CPU_ARAU] 
        MOV32     *-SP[4],R3H           ; [CPU_FPU] |1689| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 69,column 2,is_stmt,isa 0
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |69| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1691,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||ipark1||)+12,R5H ; [CPU_FPU] |1691| 
        MOVW      DP,#||park1||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1689,column 5,is_stmt,isa 0
        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |1689| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1678,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||park1||),R0H ; [CPU_FPU] |1678| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1682,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||park1||)+12,R5H ; [CPU_FPU] |1682| 
||      MPYF32    R3H,R7H,R5H           ; [CPU_FPU] |68| 

        MOVW      DP,#||clarke1||+6     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 70,column 2,is_stmt,isa 0

        MOV32     @$BLOCKED(||clarke1||)+6,R0H ; [CPU_FPU] |70| 
||      MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |68| 

        MOVW      DP,#||park1||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1681,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||park1||)+10,R4H ; [CPU_FPU] |1681| 
||      SUBF32    R1H,R3H,R2H           ; [CPU_FPU] |68| 

        MOVW      DP,#||ipark1||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h",line 68,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||ipark1||),R1H ; [CPU_FPU] |68| 
        MOVW      DP,#||clarke1||       ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h",line 69,column 2,is_stmt,isa 0

        MOV32     R7H,*-SP[4]           ; [CPU_FPU] |69| 
||      MPYF32    R3H,R7H,R4H           ; [CPU_FPU] |69| 

        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |69| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1666,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||clarke1||),R0H ; [CPU_FPU] |1666| 
        MOVW      DP,#||ipark1||+8      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1689,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||ipark1||)+8,R7H ; [CPU_FPU] |1689| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MOVIZ     R7H,#15467            ; [CPU_FPU] |488| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1673,column 5,is_stmt,isa 0

        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |1673| 
||      MPYF32    R2H,R1H,R5H           ; [CPU_FPU] |69| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MOV32     R5H,ACC               ; [CPU_FPU] |488| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1690,column 5,is_stmt,isa 0

        ADDF32    R1H,R3H,R2H           ; [CPU_FPU] |69| 
||      MOV32     @$BLOCKED(||ipark1||)+10,R4H ; [CPU_FPU] |1690| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MOVXI     R7H,#55644            ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h",line 69,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||ipark1||)+2,R1H ; [CPU_FPU] |69| 
        MOVW      DP,#||clarke1||+8     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        I32TOF32  R2H,R5H               ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h",line 71,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||clarke1||)+8,R6H ; [CPU_FPU] |71| 
        MOVW      DP,#||park1||+2       ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 68,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||park1||)+6,R0H ; [CPU_FPU] |68| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0

        MOV32     @$BLOCKED(||park1||)+2,R6H ; [CPU_FPU] |1679| 
||      MPYF32    R1H,R7H,R2H           ; [CPU_FPU] |488| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 68,column 2,is_stmt,isa 0
        MOV32     R0H,*-SP[8]           ; [CPU_FPU] |68| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MAXF32    R1H,#16256            ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h",line 69,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||park1||)+8,R0H ; [CPU_FPU] |69| 
        MOVW      DP,#||FCL_params||+26 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1673,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+26,R1H ; [CPU_FPU] |1673| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1698,column 5,is_stmt,isa 0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("FCL_runQEPWrap")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #||FCL_runQEPWrap||   ; [CPU_ALU] |1698| 
        ; call occurs [#||FCL_runQEPWrap||] ; [] |1698| 
        MOVW      DP,#||qep1||          ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1701,column 5,is_stmt,isa 0
        MOVL      XAR6,@$BLOCKED(||qep1||) ; [CPU_ALU] |1701| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1702,column 5,is_stmt,isa 0
        MOVL      ACC,@$BLOCKED(||qep1||)+2 ; [CPU_ALU] |1702| 
        MOVW      DP,#||speed1||+4      ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||speed1||)+4 ; [CPU_FPU] |76| 
        MOVW      DP,#||posEncElecTheta||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1701,column 5,is_stmt,isa 0
        MOVL      @||posEncElecTheta||+2,XAR6 ; [CPU_ALU] |1701| 
        MOVW      DP,#||posEncMechTheta||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1702,column 5,is_stmt,isa 0
        MOVL      @||posEncMechTheta||+2,ACC ; [CPU_ALU] |1702| 
        MOVW      DP,#||posEncElecTheta||+2 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1707,column 5,is_stmt,isa 0
        MOV32     R5H,@||posEncElecTheta||+2 ; [CPU_FPU] |1707| 
        MOVW      DP,#||speed1||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 76,column 2,is_stmt,isa 0
        SUBF32    R3H,R5H,R0H           ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1707,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||),R5H ; [CPU_FPU] |1707| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 78,column 2,is_stmt,isa 0
        CMPF32    R3H,#48896            ; [CPU_FPU] |78| 
        MOVST0    ZF, NF                ; [CPU_FPU] |78| 
        B         ||$C$L30||,LT         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 82,column 7,is_stmt,isa 0
        CMPF32    R3H,#16128            ; [CPU_FPU] |82| 
        MOVST0    ZF, NF                ; [CPU_FPU] |82| 
        B         ||$C$L31||,LEQ        ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 84,column 3,is_stmt,isa 0
        ADDF32    R3H,R3H,#49024        ; [CPU_FPU] |84| 
        B         ||$C$L31||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L30||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 80,column 3,is_stmt,isa 0
        ADDF32    R3H,R3H,#16256        ; [CPU_FPU] |80| 
||$C$L31||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0
        MOV32     R1H,@$BLOCKED(||speed1||)+10 ; [CPU_FPU] |87| 
        MOV32     R2H,@$BLOCKED(||speed1||)+12 ; [CPU_FPU] |87| 
        MOV32     R6H,@$BLOCKED(||speed1||)+6 ; [CPU_FPU] |87| 
        MOV32     R4H,@$BLOCKED(||speed1||)+14 ; [CPU_FPU] |87| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 67,column 2,is_stmt,isa 0
        MOVIZ     R7H,#16221            ; [CPU_FPU] |67| 
        MOVW      DP,#||ipark1||+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1727,column 5,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||ipark1||)+2 ; [CPU_FPU] |1727| 
        MOVW      DP,#||speed1||+4      ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0

        MOV32     @$BLOCKED(||speed1||)+4,R5H ; [CPU_FPU] |104| 
||      MPYF32    R3H,R3H,R1H           ; [CPU_FPU] |87| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 67,column 2,is_stmt,isa 0
        MOVXI     R7H,#45613            ; [CPU_FPU] |67| 
        MOVW      DP,#||ipark1||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1726,column 5,is_stmt,isa 0

        MOV32     R5H,@$BLOCKED(||ipark1||) ; [CPU_FPU] |1726| 
||      MPYF32    R2H,R6H,R2H           ; [CPU_FPU] |87| 

        MOVW      DP,#||svgen1||+2      ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 67,column 2,is_stmt,isa 0
        MPYF32    R6H,R0H,#16128        ; [CPU_FPU] |67| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1727,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||)+2,R0H ; [CPU_FPU] |1727| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 87,column 2,is_stmt,isa 0

        MOV32     @$BLOCKED(||svgen1||)+10,R0H ; [CPU_FPU] |66| 
||      MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |87| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1726,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||),R5H ; [CPU_FPU] |1726| 
        MACF32    R3H,R2H,R1H,R7H,R5H   ; [CPU_FPU] 
        MOVW      DP,#||speed1||+18     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 90,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||)+18,R3H ; [CPU_FPU] |90| 
        MOVW      DP,#||svgen1||+12     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MOV32     R2H,R3H               ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 67,column 2,is_stmt,isa 0
        ADDF32    R1H,R1H,R6H           ; [CPU_FPU] |67| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MAXF32    R2H,#49024            ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 67,column 2,is_stmt,isa 0

        SUBF32    R4H,R1H,R0H           ; [CPU_FPU] |68| 
||      MOV32     @$BLOCKED(||svgen1||)+12,R1H ; [CPU_FPU] |67| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MINF32    R2H,#16256            ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 68,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||)+14,R4H ; [CPU_FPU] |68| 
        MOVW      DP,#||speedWe||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1711,column 5,is_stmt,isa 0
        MOV32     @||speedWe||,R2H      ; [CPU_FPU] |1711| 
        MOVW      DP,#||speed1||+6      ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h",line 94,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||)+6,R2H ; [CPU_FPU] |94| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 71,column 2,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |71| 
        MOVST0    ZF, NF                ; [CPU_FPU] |71| 
        B         ||$C$L32||,GT         ; [CPU_ALU] |71| 
        ; branchcc occurs ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |70| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 72,column 2,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |72| 
        MOVST0    ZF, NF                ; [CPU_FPU] |72| 
        B         ||$C$L33||,GT         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 70,column 2,is_stmt,isa 0
        MOVB      AH,#3                 ; [CPU_ALU] |70| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L32||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |71| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 72,column 2,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |72| 
        MOVST0    ZF, NF                ; [CPU_FPU] |72| 
        B         ||$C$L33||,GT         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 71,column 2,is_stmt,isa 0
        MOVB      AH,#2                 ; [CPU_ALU] |71| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L33||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 72,column 2,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |72| 
        MOV       AH,AL                 ; [CPU_ALU] |72| 
||$C$L34||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 73,column 2,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |73| 
        MOVW      DP,#||svgen1||+16     ; [CPU_ARAU] 
        MOVST0    ZF, NF                ; [CPU_FPU] |73| 
        MOV       @$BLOCKED(||svgen1||)+16,AH,GEQ ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 75,column 2,is_stmt,isa 0
        B         ||$C$L35||,GEQ        ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 73,column 2,is_stmt,isa 0
        MOVB      AH,#7                 ; [CPU_ALU] |73| 
        SUBR      AL,AH                 ; [CPU_ALU] |73| 
        MOV       @$BLOCKED(||svgen1||)+16,AL ; [CPU_ALU] |73| 
||$C$L35||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 75,column 2,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |75| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
        CMPB      AL,#4                 ; [CPU_ALU] |75| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 81,column 7,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |81| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#5                 ; [CPU_ALU] |81| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 91,column 3,is_stmt,isa 0
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |91| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 89,column 3,is_stmt,isa 0
        MOV32     R0H,R4H               ; [CPU_FPU] |89| 
        MOV32     @$BLOCKED(||svgen1||)+4,R4H ; [CPU_FPU] |89| 
        MOV32     R1H,R4H               ; [CPU_FPU] |89| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 90,column 3,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |90| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 91,column 3,is_stmt,isa 0
        B         ||$C$L39||,UNC        ; [CPU_ALU] |91| 
        ; branch occurs ; [] |91| 
||$C$L36||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 85,column 3,is_stmt,isa 0
        MOV32     R2H,R0H               ; [CPU_FPU] |85| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 83,column 3,is_stmt,isa 0
        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |83| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L37||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 78,column 3,is_stmt,isa 0
        SUBF32    R0H,R0H,R4H           ; [CPU_FPU] |78| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 79,column 3,is_stmt,isa 0
        MOV32     R2H,R1H               ; [CPU_FPU] |79| 
||$C$L38||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 77,column 3,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||)+4,R1H ; [CPU_FPU] |77| 
||$C$L39||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 79,column 3,is_stmt,isa 0
        NEGF32    R2H,R2H               ; [CPU_FPU] |79| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 78,column 3,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||)+6,R0H ; [CPU_FPU] |78| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVIZ     R6H,#17692            ; [CPU_FPU] |2446| 
        MOVIZ     R3H,#17692            ; [CPU_FPU] |2446| 
        MOVIZ     R4H,#17692            ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h",line 79,column 3,is_stmt,isa 0
        MOV32     @$BLOCKED(||svgen1||)+8,R2H ; [CPU_FPU] |79| 
        MOVW      DP,#||clarke1||+2     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVXI     R6H,#16384            ; [CPU_FPU] |2446| 
        MOVXI     R3H,#16384            ; [CPU_FPU] |2446| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1765,column 5,is_stmt,isa 0
        MOVL      XAR7,@$BLOCKED(||clarke1||)+2 ; [CPU_ALU] |1765| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVXI     R4H,#16384            ; [CPU_FPU] |2446| 
        MOVW      DP,#||rg1||+8         ; [CPU_ARAU] 
        MPYF32    R1H,R6H,R1H           ; [CPU_FPU] |2446| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1762,column 5,is_stmt,isa 0

        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |2446| 
||      MOV32     R7H,@$BLOCKED(||rg1||)+8 ; [CPU_FPU] |1762| 

	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVIZ     R6H,#17692            ; [CPU_FPU] |2446| 
        MOVW      DP,#||dlogCh1||       ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        ADDF32    R3H,R7H,#16256        ; [CPU_FPU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVXI     R6H,#16384            ; [CPU_FPU] |2446| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1762,column 5,is_stmt,isa 0

        ADDF32    R5H,R4H,R2H           ; [CPU_FPU] |2446| 
||      MOV32     @||dlogCh1||,R7H      ; [CPU_FPU] |1762| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1765,column 5,is_stmt,isa 0
        MOVL      @||dlogCh4||,XAR7     ; [CPU_ALU] |1765| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVIZ     R7H,#17692            ; [CPU_FPU] |2446| 
        MPYF32    R0H,R6H,R0H           ; [CPU_FPU] |2446| 
        MOVIZ     R2H,#17692            ; [CPU_FPU] |2446| 
        MOVW      DP,#||posEncElecTheta||+2 ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MPYF32    R4H,R3H,#17664        ; [CPU_FPU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVXI     R7H,#16384            ; [CPU_FPU] |2446| 
        MOVXI     R2H,#16384            ; [CPU_FPU] |2446| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1763,column 5,is_stmt,isa 0
        MOVL      XAR4,@||posEncElecTheta||+2 ; [CPU_ALU] |1763| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        ADDF32    R3H,R7H,R1H           ; [CPU_FPU] |2446| 
        F32TOUI16 R7H,R5H               ; [CPU_FPU] |2446| 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |2446| 
        F32TOUI16 R6H,R3H               ; [CPU_FPU] |2446| 
        MOV32     ACC,R7H               ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV32     R5H,@||posEncElecTheta||+2 ; [CPU_FPU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        F32TOUI16 R1H,R4H               ; [CPU_FPU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x406b),AL        ; [CPU_ALU] |2446| 
        MOVW      DP,#||dlogCh2||       ; [CPU_ARAU] 
        MOV32     ACC,R6H               ; [CPU_FPU] |2446| 
        MOV       *(0:0x416b),AL        ; [CPU_ALU] |2446| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1763,column 5,is_stmt,isa 0
        MOVL      @||dlogCh2||,XAR4     ; [CPU_ALU] |1763| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        ADDF32    R0H,R5H,#16256        ; [CPU_FPU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x426b),AL        ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |330| 
        MOV32     ACC,R1H               ; [CPU_FPU] |330| 
        AND       AL,#0x0fff            ; [CPU_ALU] |330| 
        MOV       AH,*(0:0x5c13)        ; [CPU_ALU] |330| 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |330| 
        AND       AH,#0xf000            ; [CPU_ALU] |330| 
        OR        AL,AH                 ; [CPU_ALU] |330| 
        MOV       *(0:0x5c13),AL        ; [CPU_ALU] |330| 
        MOV       AR6,*(0:0x5c23)       ; [CPU_ALU] |330| 
        MOVW      DP,#||clarke1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1764,column 5,is_stmt,isa 0
        MOVL      P,@$BLOCKED(||clarke1||) ; [CPU_ALU] |1764| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |330| 
        AND       AR6,#0xf000           ; [CPU_ALU] |330| 
        MOVW      DP,#||dlogCh3||       ; [CPU_ARAU] 
        AND       AL,#0x0fff            ; [CPU_ALU] |330| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1764,column 5,is_stmt,isa 0
        MOVL      @||dlogCh3||,P        ; [CPU_FPU] |1764| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        OR        AL,AR6                ; [CPU_ALU] |330| 
        MOV       *(0:0x5c23),AL        ; [CPU_ALU] |330| 
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
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x6f0)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text:motorControlISR"
	.retain
	.retainrefs
	.global	||motorControlISR||

$C$DW$237	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$237, DW_AT_name("motorControlISR")
	.dwattr $C$DW$237, DW_AT_low_pc(||motorControlISR||)
	.dwattr $C$DW$237, DW_AT_high_pc(0x00)
	.dwattr $C$DW$237, DW_AT_linkage_name("motorControlISR")
	.dwattr $C$DW$237, DW_AT_external
	.dwattr $C$DW$237, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$237, DW_AT_decl_line(0xa21)
	.dwattr $C$DW$237, DW_AT_decl_column(0x12)
	.dwattr $C$DW$237, DW_AT_TI_interrupt
	.dwattr $C$DW$237, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2594,column 1,is_stmt,address ||motorControlISR||,isa 0

	.dwfde $C$DW$CIE, ||motorControlISR||

;***************************************************************
;* FNAME: motorControlISR               FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

||motorControlISR||:
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
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2600,column 5,is_stmt,isa 0
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("buildLevel2")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #||buildLevel2||      ; [CPU_ALU] |2600| 
        ; call occurs [#||buildLevel2||] ; [] |2600| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2623,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |2623| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_FUNC||  ; [CPU_ALU] |2623| 
        ; call occurs [#||DLOG_4CH_F_FUNC||] ; [] |2623| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40aa)        ; [CPU_ALU] |4872| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |819| 
        MOVW      DP,#||isrTicker||     ; [CPU_ARAU] 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVL      XAR7,#1028            ; [CPU_ALU] |379| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
        MOV       *(0:0x40aa),AL        ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2646,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2646| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOV       *(0:0x7404),AR6       ; [CPU_ALU] |819| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2646,column 5,is_stmt,isa 0
        ADDL      @||isrTicker||,ACC    ; [CPU_ALU] |2646| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0ce1),AR7       ; [CPU_FPU] |379| 
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
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
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$237, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$237, DW_AT_TI_end_line(0xa58)
	.dwattr $C$DW$237, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$237

	.sect	".text:configureGPIO"
	.clink
	.global	||configureGPIO||

$C$DW$241	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$241, DW_AT_name("configureGPIO")
	.dwattr $C$DW$241, DW_AT_low_pc(||configureGPIO||)
	.dwattr $C$DW$241, DW_AT_high_pc(0x00)
	.dwattr $C$DW$241, DW_AT_linkage_name("configureGPIO")
	.dwattr $C$DW$241, DW_AT_external
	.dwattr $C$DW$241, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$241, DW_AT_decl_line(0xbb9)
	.dwattr $C$DW$241, DW_AT_decl_column(0x06)
	.dwattr $C$DW$241, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3002,column 1,is_stmt,address ||configureGPIO||,isa 0

	.dwfde $C$DW$CIE, ||configureGPIO||

;***************************************************************
;* FNAME: configureGPIO                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configureGPIO||:
;* AR1   assigned to pin
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("pin")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3011,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3011| 
        MOVB      XAR4,#0               ; [CPU_ALU] |3011| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3011| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3011| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3012,column 5,is_stmt,isa 0
        MOVL      XAR4,#393217          ; [CPU_ARAU] |3012| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3012| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3012| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3012| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3013,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3013| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3013| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3013| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3013| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3016,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3016| 
        MOVB      ACC,#1                ; [CPU_ALU] |3016| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3016| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3016| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3017,column 5,is_stmt,isa 0
        MOVL      XAR4,#393729          ; [CPU_ARAU] |3017| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3017| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3017| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3017| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3018,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3018| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3018| 
        MOVB      ACC,#1                ; [CPU_ALU] |3018| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3018| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3018| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3021,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3021| 
        MOVB      ACC,#2                ; [CPU_ALU] |3021| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3021| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3021| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3022,column 5,is_stmt,isa 0
        MOVL      XAR4,#394241          ; [CPU_ARAU] |3022| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3022| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3022| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3022| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3023,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3023| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3023| 
        MOVB      ACC,#2                ; [CPU_ALU] |3023| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3023| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3023| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3026,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3026| 
        MOVB      ACC,#3                ; [CPU_ALU] |3026| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3026| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3026| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3027,column 5,is_stmt,isa 0
        MOVL      XAR4,#394753          ; [CPU_ARAU] |3027| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3027| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3027| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3027| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3028,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3028| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3028| 
        MOVB      ACC,#3                ; [CPU_ALU] |3028| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3028| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3028| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3031,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3031| 
        MOVB      ACC,#4                ; [CPU_ALU] |3031| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3031| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3031| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3032,column 5,is_stmt,isa 0
        MOVL      XAR4,#395265          ; [CPU_ARAU] |3032| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3032| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3032| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3032| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3033,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3033| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3033| 
        MOVB      ACC,#4                ; [CPU_ALU] |3033| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3033| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3033| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3036,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3036| 
        MOVB      ACC,#5                ; [CPU_ALU] |3036| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3036| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3036| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3037,column 5,is_stmt,isa 0
        MOVL      XAR4,#395777          ; [CPU_ARAU] |3037| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3037| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3037| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3037| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3038,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3038| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3038| 
        MOVB      ACC,#5                ; [CPU_ALU] |3038| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3038| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3038| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3044,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3044| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3044| 
        MOVB      ACC,#8                ; [CPU_ALU] |3044| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3044| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3044| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3045,column 5,is_stmt,isa 0
        MOVL      XAR4,#397313          ; [CPU_ARAU] |3045| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3045| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3045| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3045| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3047,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3047| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3047| 
        MOVB      ACC,#9                ; [CPU_ALU] |3047| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3047| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3047| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3048,column 5,is_stmt,isa 0
        MOVL      XAR4,#397825          ; [CPU_ARAU] |3048| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3048| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3048| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3048| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3053,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |3053| 
        MOVB      XAR4,#0               ; [CPU_ALU] |3053| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3053| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3053| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3054,column 5,is_stmt,isa 0
        MOVL      XAR4,#525312          ; [CPU_ARAU] |3054| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3054| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3054| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3054| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3055,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3055| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3055| 
        MOVB      ACC,#18               ; [CPU_ALU] |3055| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3055| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3055| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3056,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3056| 
        MOVB      ACC,#18               ; [CPU_ALU] |3056| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3056| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3056| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3062,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3062| 
        MOVB      ACC,#20               ; [CPU_ALU] |3062| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3062| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3062| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3063,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3063| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3063| 
        MOVB      ACC,#20               ; [CPU_ALU] |3063| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3063| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3063| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3064,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3064| 
        MOVB      ACC,#20               ; [CPU_ALU] |3064| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3064| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3064| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3065,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3065| 
        MOVB      ACC,#20               ; [CPU_ALU] |3065| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |3065| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |3065| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3066,column 5,is_stmt,isa 0
        MOVL      XAR4,#526337          ; [CPU_ARAU] |3066| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3066| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3066| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3066| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3069,column 5,is_stmt,isa 0
        MOVB      ACC,#21               ; [CPU_ALU] |3069| 
        MOVB      XAR4,#0               ; [CPU_ALU] |3069| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3069| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3069| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3070,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3070| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3070| 
        MOVB      ACC,#21               ; [CPU_ALU] |3070| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3070| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3070| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3071,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3071| 
        MOVB      ACC,#21               ; [CPU_ALU] |3071| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3071| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3071| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3072,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3072| 
        MOVB      ACC,#21               ; [CPU_ALU] |3072| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |3072| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |3072| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3073,column 5,is_stmt,isa 0
        MOVL      XAR4,#526849          ; [CPU_ARAU] |3073| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3073| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3073| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3073| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3076,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3076| 
        MOVB      ACC,#23               ; [CPU_ALU] |3076| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3076| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3076| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3077,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3077| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3077| 
        MOVB      ACC,#23               ; [CPU_ALU] |3077| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$280, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3077| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3077| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3078,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3078| 
        MOVB      ACC,#23               ; [CPU_ALU] |3078| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3078| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3078| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3079,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3079| 
        MOVB      ACC,#23               ; [CPU_ALU] |3079| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$282, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |3079| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |3079| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3080,column 5,is_stmt,isa 0
        MOVL      XAR4,#527873          ; [CPU_ARAU] |3080| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3080| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3080| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3080| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3083,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3083| 
        MOVB      ACC,#28               ; [CPU_ALU] |3083| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$284, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3083| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3083| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3084,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3084| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3084| 
        MOVB      ACC,#28               ; [CPU_ALU] |3084| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$285, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3084| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3084| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3085,column 5,is_stmt,isa 0
        MOVL      XAR4,#530433          ; [CPU_ARAU] |3085| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3085| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$286, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3085| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3085| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3088,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3088| 
        MOVB      ACC,#29               ; [CPU_ALU] |3088| 
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$287, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3088| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3088| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3089,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3089| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3089| 
        MOVB      ACC,#29               ; [CPU_ALU] |3089| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$288, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3089| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3089| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3090,column 5,is_stmt,isa 0
        MOVL      XAR4,#530945          ; [CPU_ARAU] |3090| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3090| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$289, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3090| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3090| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3097,column 5,is_stmt,isa 0
        MOV       ACC,#1121 << 12       ; [CPU_ALU] |3097| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$290, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3097| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3097| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3098,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3098| 
        MOVB      ACC,#40               ; [CPU_ALU] |3098| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$291, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3098| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3098| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3099,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |3099| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3099| 
        MOVB      ACC,#40               ; [CPU_ALU] |3099| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$292, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3099| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3099| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_ALU] |971| 
        MOV       *(0:0x7901),AL        ; [CPU_ALU] |971| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3106,column 5,is_stmt,isa 0
        MOV       ACC,#8969 << 9        ; [CPU_ALU] |3106| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$293, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3106| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3106| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3107,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3107| 
        MOVB      ACC,#41               ; [CPU_ALU] |3107| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$294, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3107| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3107| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR4,#512             ; [CPU_ARAU] |473| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3112,column 5,is_stmt,isa 0
        MOV       ACC,#4613 << 10       ; [CPU_ALU] |3112| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0a),XAR4      ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3112,column 5,is_stmt,isa 0
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$295, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3112| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3112| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3113,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3113| 
        MOVB      ACC,#58               ; [CPU_ALU] |3113| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3113| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3113| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3117,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3117| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0c),ACC       ; [CPU_FPU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3117,column 5,is_stmt,isa 0
        MOVB      ACC,#31               ; [CPU_ALU] |3117| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$297, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3117| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3117| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3118,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3118| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3118| 
        MOVB      ACC,#31               ; [CPU_ALU] |3118| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$298, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3118| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3118| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3119,column 5,is_stmt,isa 0
        MOVL      XAR4,#531968          ; [CPU_ARAU] |3119| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3119| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$299, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3119| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3119| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3120,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |3120| 
        MOVB      ACC,#31               ; [CPU_ALU] |3120| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$300, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3120| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3120| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3125,column 9,is_stmt,isa 0
        MOVB      XAR1,#48              ; [CPU_ALU] |3125| 
||$C$L40||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3127,column 9,is_stmt,isa 0
        MOVU      ACC,AR1               ; [CPU_ALU] |3127| 
        MOVB      XAR4,#0               ; [CPU_ALU] |3127| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$301, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |3127| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |3127| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3128,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |3128| 
        MOVU      ACC,AR1               ; [CPU_ALU] |3128| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$302, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |3128| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |3128| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3129,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |3129| 
        MOVU      ACC,AR1               ; [CPU_ALU] |3129| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |3129| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$303, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |3129| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |3129| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3130,column 9,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |3130| 
        MOVU      ACC,AR1               ; [CPU_ALU] |3130| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$304, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |3130| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |3130| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3125,column 19,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_ALU] |3125| 
        MOV       AL,AR1                ; [CPU_ALU] |3125| 
        CMPB      AL,#53                ; [CPU_ALU] |3125| 
        B         ||$C$L40||,LOS        ; [CPU_ALU] |3125| 
        ; branchcc occurs ; [] |3125| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3134,column 5,is_stmt,isa 0
        MOV       AL,#7                 ; [CPU_ALU] |3134| 
        MOV       AH,#72                ; [CPU_ALU] |3134| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$305, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3134| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3134| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3135,column 5,is_stmt,isa 0
        MOV       AL,#519               ; [CPU_ALU] |3135| 
        MOV       AH,#72                ; [CPU_ALU] |3135| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$306, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3135| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3135| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3138,column 5,is_stmt,isa 0
        MOV       AL,#1031              ; [CPU_ALU] |3138| 
        MOV       AH,#72                ; [CPU_ALU] |3138| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$307, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3138| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3138| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3139,column 5,is_stmt,isa 0
        MOV       AL,#1543              ; [CPU_ALU] |3139| 
        MOV       AH,#72                ; [CPU_ALU] |3139| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$308, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3139| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3139| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3142,column 5,is_stmt,isa 0
        MOV       AL,#2055              ; [CPU_ALU] |3142| 
        MOV       AH,#72                ; [CPU_ALU] |3142| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$309, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3142| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3142| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3143,column 5,is_stmt,isa 0
        MOV       AL,#2567              ; [CPU_ALU] |3143| 
        MOV       AH,#72                ; [CPU_ALU] |3143| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$310, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |3143| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |3143| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$241, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$241, DW_AT_TI_end_line(0xc4a)
	.dwattr $C$DW$241, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$241

	.sect	".text:configurePWM_1chUpCnt"
	.clink
	.global	||configurePWM_1chUpCnt||

$C$DW$312	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$312, DW_AT_name("configurePWM_1chUpCnt")
	.dwattr $C$DW$312, DW_AT_low_pc(||configurePWM_1chUpCnt||)
	.dwattr $C$DW$312, DW_AT_high_pc(0x00)
	.dwattr $C$DW$312, DW_AT_linkage_name("configurePWM_1chUpCnt")
	.dwattr $C$DW$312, DW_AT_external
	.dwattr $C$DW$312, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$312, DW_AT_decl_line(0xd97)
	.dwattr $C$DW$312, DW_AT_decl_column(0x06)
	.dwattr $C$DW$312, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3480,column 1,is_stmt,address ||configurePWM_1chUpCnt||,isa 0

	.dwfde $C$DW$CIE, ||configurePWM_1chUpCnt||
$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_name("base")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg0]

$C$DW$314	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$314, DW_AT_name("period")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: configurePWM_1chUpCnt         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configurePWM_1chUpCnt||:
;* AR4   assigned to $O$C1
;* AR5   assigned to base
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("base")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR5,ACC              ; [CPU_ALU] |3480| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        SUBB      XAR4,#1               ; [CPU_ARAU] |2182| 
        MOVB      XAR1,#99              ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        OR        *+XAR5[0],#0x0008     ; [CPU_ALU] |1766| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AR4       ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |2148| 
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        ADDB      XAR4,#8               ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR0],ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      XAR0,#107             ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *+XAR5[4],#0          ; [CPU_FPU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xfffc     ; [CPU_FPU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xe07f     ; [CPU_FPU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xfffb     ; [CPU_FPU] |1818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       AL,*+XAR5[0],#0xffdf  ; [CPU_FPU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *+XAR5[0],AL          ; [CPU_FPU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xf3ec     ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#18,UNC   ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        ADDB      XAR4,#12              ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3358| 
        AND       AL,*+XAR5[AR0],#0xffef ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_FPU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_FPU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xbfff     ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0xffdf ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3323| 
        AND       AL,*+XAR5[AR0],#0xfffb ; [CPU_ALU] |3323| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |3323| 
        MOVB      XAR1,#12              ; [CPU_ALU] |3323| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      XAR0,#83              ; [CPU_ALU] |3696| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      XAR1,#81              ; [CPU_ALU] |3668| 
        MOV       *+XAR5[AR1],#0        ; [CPU_ALU] |3668| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |3696| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$312, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$312, DW_AT_TI_end_line(0xdbd)
	.dwattr $C$DW$312, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$312

	.sect	".text:configurePWM"
	.clink
	.global	||configurePWM||

$C$DW$317	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$317, DW_AT_name("configurePWM")
	.dwattr $C$DW$317, DW_AT_low_pc(||configurePWM||)
	.dwattr $C$DW$317, DW_AT_high_pc(0x00)
	.dwattr $C$DW$317, DW_AT_linkage_name("configurePWM")
	.dwattr $C$DW$317, DW_AT_external
	.dwattr $C$DW$317, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$317, DW_AT_decl_line(0xcfd)
	.dwattr $C$DW$317, DW_AT_decl_column(0x06)
	.dwattr $C$DW$317, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3326,column 1,is_stmt,address ||configurePWM||,isa 0

	.dwfde $C$DW$CIE, ||configurePWM||

;***************************************************************
;* FNAME: configurePWM                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configurePWM||:
;* AR5   assigned to $O$U11
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AR7   assigned to base
$C$DW$318	.dwtag  DW_TAG_variable
	.dwattr $C$DW$318, DW_AT_name("base")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1030| 
 EDIS
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR5,#||pwmHandle||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3334,column 19,is_stmt,isa 0
        RPTB      ||$C$L42||,AR6        ; [CPU_ALU] |3334| 
        ; repeat block starts ; [] 
||$C$L41||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[0]        ; [CPU_ALU] |1766| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      ACC,#99               ; [CPU_ALU] |2182| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0008     ; [CPU_FPU] |1766| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],#5000       ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[0]        ; [CPU_ALU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *+XAR7[4],#0          ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |1849| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[0]        ; [CPU_FPU] |1627| 
        MOVL      XAR0,*+XAR5[0]        ; [CPU_FPU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |1818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xe07f  ; [CPU_ALU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOVL      XAR4,*+XAR5[0]        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOV       *+XAR0[0],AL          ; [CPU_ALU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        AND       *+XAR7[0],#0xfffb     ; [CPU_ALU] |1818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xffdf  ; [CPU_ALU] |1706| 
        MOVL      XAR4,*+XAR5[0]        ; [CPU_ALU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      ACC,#107              ; [CPU_ALU] |2446| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2446| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |2341| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2341| 
        AND       AL,*+XAR4[0],#0xf3ec  ; [CPU_ALU] |2341| 
        MOVZ      AR7,AL                ; [CPU_ALU] |2341| 
        MOVB      ACC,#8                ; [CPU_ALU] |2341| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2341| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |2915| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],AR7         ; [CPU_FPU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |3358| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      *+XAR4[0],#144,UNC    ; [CPU_FPU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |3358| 
        AND       AL,*+XAR4[0],#0xffef  ; [CPU_ALU] |3358| 
        MOVZ      AR7,AL                ; [CPU_ALU] |3358| 
        MOVB      ACC,#12               ; [CPU_ALU] |3358| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3358| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3358| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3385,column 1,is_stmt,isa 0
        MOVL      XAR7,*XAR5++          ; [CPU_ALU] |3385| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR7             ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3411| 
        MOVB      XAR1,#12              ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        ADDB      XAR4,#12              ; [CPU_ALU] |3406| 
        AND       *+XAR4[0],#0xbfff     ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        AND       AL,*+XAR7[AR0],#0xffdf ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOV       *+XAR7[AR1],AL        ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        MOV       *+XAR7[AR1],AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
        MOV       *+XAR7[AR0],AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
        AND       AL,*+XAR7[AR0],#0xfffb ; [CPU_ALU] |3323| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
        MOV       *+XAR7[AR1],AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      XAR1,#81              ; [CPU_ALU] |3668| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |3323| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
        MOV       *+XAR7[AR0],AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      XAR0,#83              ; [CPU_ALU] |3696| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      *+XAR7[AR1],#200,UNC  ; [CPU_ALU] |3668| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      *+XAR7[AR0],#200,UNC  ; [CPU_ALU] |3696| 
        ; repeat block ends ; [] 
||$C$L42||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4160)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4160),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4260)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4260),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      AH,#4                 ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1766| 
        ORB       AL,#0x08              ; [CPU_ALU] |1766| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1766| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *(0:0x4463),AH        ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4460)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4460),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *(0:0x4404),AR6       ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      XAR6,#18              ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1849| 
        AND       AL,#0xfffc            ; [CPU_ALU] |1849| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1627| 
        AND       AL,#0xe07f            ; [CPU_ALU] |1627| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1818| 
        AND       AL,#0xfffb            ; [CPU_ALU] |1818| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1706| 
        AND       AL,AL,#0xffdf         ; [CPU_ALU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x446b),AH        ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      AH,#18                ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4408)        ; [CPU_ALU] |2341| 
        AND       AL,#0xf3ec            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4408),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOV       *(0:0x4440),AR6       ; [CPU_ALU] |2915| 
        MOV       *(0:0x4442),AH        ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4463)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2446| 
        MOV       *(0:0x446b),AL        ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1706| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2756,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#65087             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3447,column 5,is_stmt,isa 0
        MOVL      XAR4,#10000           ; [CPU_ALU] |3447| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4900)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4900),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3447,column 5,is_stmt,isa 0
        MOV       ACC,#18944            ; [CPU_ALU] |3447| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("configurePWM_1chUpCnt")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #||configurePWM_1chUpCnt|| ; [CPU_ALU] |3447| 
        ; call occurs [#||configurePWM_1chUpCnt||] ; [] |3447| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a00)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4a00),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4a60)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4a60),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       AH,#1460              ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4a00)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4a00),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a63)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        SUB       AL,#960               ; [CPU_ALU] |2453| 
        MOV       *(0:0x4a6f),AL        ; [CPU_ALU] |2453| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a63)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        SUB       AL,#960               ; [CPU_ALU] |2453| 
        MOV       *(0:0x4a71),AL        ; [CPU_ALU] |2453| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x4a6b),AH        ; [CPU_ALU] |2446| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1030| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$317, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$317, DW_AT_TI_end_line(0xd92)
	.dwattr $C$DW$317, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$317

	.sect	".text:configureSDFM"
	.clink
	.global	||configureSDFM||

$C$DW$321	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$321, DW_AT_name("configureSDFM")
	.dwattr $C$DW$321, DW_AT_low_pc(||configureSDFM||)
	.dwattr $C$DW$321, DW_AT_high_pc(0x00)
	.dwattr $C$DW$321, DW_AT_linkage_name("configureSDFM")
	.dwattr $C$DW$321, DW_AT_external
	.dwattr $C$DW$321, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$321, DW_AT_decl_line(0xdee)
	.dwattr $C$DW$321, DW_AT_decl_column(0x06)
	.dwattr $C$DW$321, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3567,column 1,is_stmt,address ||configureSDFM||,isa 0

	.dwfde $C$DW$CIE, ||configureSDFM||

;***************************************************************
;* FNAME: configureSDFM                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||configureSDFM||:
;* AR2   assigned to $O$U6
;* AR1   assigned to $O$U11
;* AR0   assigned to $O$U20
;* AR7   assigned to $O$U28
;* PL    assigned to $O$U4
;* AR5   assigned to $O$U35
;* AR4   assigned to $O$U44
;* AH    assigned to highThreshold
$C$DW$322	.dwtag  DW_TAG_variable
	.dwattr $C$DW$322, DW_AT_name("highThreshold")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg1]

;* AH    assigned to lowThreshold
$C$DW$323	.dwtag  DW_TAG_variable
	.dwattr $C$DW$323, DW_AT_name("lowThreshold")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR4,#24082           ; [CPU_ARAU] 
        MOVL      XAR5,#24081           ; [CPU_ARAU] 
        MOVL      XAR7,#24084           ; [CPU_ARAU] 
        MOVL      XAR0,#24083           ; [CPU_ARAU] 
        MOV       P,#0                  ; [CPU_ALU] 
        MOVB      XAR6,#3               ; [CPU_ALU] 
        MOVL      XAR1,#24085           ; [CPU_ARAU] 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,#24080           ; [CPU_ARAU] 
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3573,column 19,is_stmt,isa 0
        RPTB      ||$C$L44||,AR6        ; [CPU_ALU] |3573| 
        ; repeat block starts ; [] 
||$C$L43||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 486,column 5,is_stmt,isa 0
        AND       *+XAR2[0],#0xfffc     ; [CPU_ALU] |486| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 771,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x0180     ; [CPU_ALU] |771| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 807,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x001f     ; [CPU_ALU] |807| 
 EDIS
        MOVW      DP,#||hlt||           ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 580,column 1,is_stmt,isa 0
        MOV       AH,@||hlt||           ; [CPU_ALU] |580| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        AND       AL,*+XAR0[0],#0x8000  ; [CPU_ALU] |592| 
        OR        AL,AH                 ; [CPU_ALU] |592| 
        MOV       *+XAR0[0],AL          ; [CPU_ALU] |592| 
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 615,column 1,is_stmt,isa 0
        MOV       AH,@||llt||           ; [CPU_ALU] |615| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        AND       AL,*+XAR7[0],#0x8000  ; [CPU_ALU] |627| 
        OR        AL,AH                 ; [CPU_ALU] |627| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |627| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 360,column 5,is_stmt,isa 0
        MOVL      ACC,P                 ; [CPU_ALU] |360| 
        ADD       ACC,#24081 << 0       ; [CPU_ALU] |360| 
        MOVL      XAR3,ACC              ; [CPU_ALU] |360| 
        OR        *+XAR3[0],#0x0100     ; [CPU_ALU] |360| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 418,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0c00     ; [CPU_ALU] |418| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 453,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[0],#0xff00  ; [CPU_ALU] |453| 
        ORB       AL,#0x7f              ; [CPU_ALU] |453| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |453| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 520,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xfbff     ; [CPU_ALU] |520| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 556,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0x07ff  ; [CPU_ALU] |556| 
        OR        AL,#0x3000            ; [CPU_ALU] |556| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |556| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3573,column 19,is_stmt,isa 0
        ADDB      XAR2,#16              ; [CPU_ALU] |3573| 
        MOVL      ACC,P                 ; [CPU_FPU] |3573| 
        ADDB      XAR1,#16              ; [CPU_ALU] |3573| 
        ADDB      XAR0,#16              ; [CPU_ALU] |3573| 
        ADDB      XAR7,#16              ; [CPU_ALU] |3573| 
        ADDB      XAR5,#16              ; [CPU_ALU] |3573| 
        ADDB      XAR4,#16              ; [CPU_ALU] |3573| 
        ADDB      ACC,#16               ; [CPU_ALU] |3573| 
        MOVL      P,ACC                 ; [CPU_FPU] |3573| 
        ; repeat block ends ; [] 
||$C$L44||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 308,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e11)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e11),AL        ; [CPU_ALU] |308| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5e21)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e21),AL        ; [CPU_ALU] |308| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5e31)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e31),AL        ; [CPU_ALU] |308| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5e41)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e41),AL        ; [CPU_ALU] |308| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 1043,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e06)        ; [CPU_ALU] |1043| 
        OR        AL,#0x0800            ; [CPU_ALU] |1043| 
        MOV       *(0:0x5e06),AL        ; [CPU_ALU] |1043| 
 EDIS
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
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$321, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$321, DW_AT_TI_end_line(0xe2f)
	.dwattr $C$DW$321, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$321

	.sect	".text:configureADC"
	.clink
	.global	||configureADC||

$C$DW$325	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$325, DW_AT_name("configureADC")
	.dwattr $C$DW$325, DW_AT_low_pc(||configureADC||)
	.dwattr $C$DW$325, DW_AT_high_pc(0x00)
	.dwattr $C$DW$325, DW_AT_linkage_name("configureADC")
	.dwattr $C$DW$325, DW_AT_external
	.dwattr $C$DW$325, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$325, DW_AT_decl_line(0xa64)
	.dwattr $C$DW$325, DW_AT_decl_column(0x06)
	.dwattr $C$DW$325, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2661,column 1,is_stmt,address ||configureADC||,isa 0

	.dwfde $C$DW$CIE, ||configureADC||

;***************************************************************
;* FNAME: configureADC                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||configureADC||:
;* AR6   assigned to $O$A1
;* AR1   assigned to $O$U7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,#||adcHandle||   ; [CPU_ARAU] 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVB      XAR2,#2               ; [CPU_ALU] 
||$C$L45||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2687,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR1[0]         ; [CPU_ALU] |2687| 
        MOVB      XAR4,#0               ; [CPU_ALU] |2687| 
        MOVB      XAR5,#0               ; [CPU_ALU] |2687| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |2687| 
        ; call occurs [#||ADC_setMode||] ; [] |2687| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |471| 
        AND       AL,*+XAR4[1],#0xfff0  ; [CPU_ALU] |471| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |471| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |629| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |629| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |629| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |664| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |664| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1099,column 5,is_stmt,isa 0
        MOVB      ACC,#9                ; [CPU_ALU] |1099| 
        ADDL      ACC,*+XAR1[0]         ; [CPU_ALU] |1099| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1099| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_ALU] |1099| 
        ORB       AL,#0x10              ; [CPU_ALU] |1099| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1099| 
        MOVB      ACC,#9                ; [CPU_ALU] |1099| 
        ADDL      ACC,*XAR1++           ; [CPU_ALU] |1099| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1099| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1099| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2684,column 19,is_stmt,isa 0
        BANZ      ||$C$L45||,AR2--      ; [CPU_ALU] |2684| 
        ; branchcc occurs ; [] |2684| 
        CLRC      SXM                   ; [CPU_ALU] 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2704,column 5,is_stmt,isa 0
        MOV       ACC,#59998            ; [CPU_ALU] |2704| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$327, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |2704| 
        ; call occurs [#||SysCtl_delay||] ; [] |2704| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7410)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#24                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7410),ACC       ; [CPU_FPU] |538| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7440)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x7440),AL        ; [CPU_ALU] |1176| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7442)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x7442),AL        ; [CPU_ALU] |1497| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7490)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#24                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7490),ACC       ; [CPU_FPU] |538| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74c0)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x74c0),AL        ; [CPU_ALU] |1176| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74c2)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x74c2),AL        ; [CPU_ALU] |1497| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$325, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$325, DW_AT_TI_end_line(0xaf0)
	.dwattr $C$DW$325, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$325

	.sect	".text:initFCLVars"
	.clink
	.global	||initFCLVars||

$C$DW$329	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$329, DW_AT_name("initFCLVars")
	.dwattr $C$DW$329, DW_AT_low_pc(||initFCLVars||)
	.dwattr $C$DW$329, DW_AT_high_pc(0x00)
	.dwattr $C$DW$329, DW_AT_linkage_name("initFCLVars")
	.dwattr $C$DW$329, DW_AT_external
	.dwattr $C$DW$329, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$329, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$329, DW_AT_decl_column(0x06)
	.dwattr $C$DW$329, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 453,column 1,is_stmt,address ||initFCLVars||,isa 0

	.dwfde $C$DW$CIE, ||initFCLVars||

;***************************************************************
;* FNAME: initFCLVars                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||initFCLVars||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 456,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16250            ; [CPU_FPU] |456| 
        MOVW      DP,#||maxModIndex||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 471,column 5,is_stmt,isa 0
        MOVIZ     R4H,#16204            ; [CPU_FPU] |471| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 472,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16632            ; [CPU_FPU] |472| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 474,column 5,is_stmt,isa 0
        MOVIZ     R2H,#17604            ; [CPU_FPU] |474| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 475,column 5,is_stmt,isa 0
        MOVIZ     R1H,#17754            ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 456,column 5,is_stmt,isa 0
        MOVXI     R0H,#57672            ; [CPU_FPU] |456| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 470,column 5,is_stmt,isa 0
        MOVIZ     R5H,#15316            ; [CPU_FPU] |470| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 456,column 5,is_stmt,isa 0
        MOV32     @||maxModIndex||,R0H  ; [CPU_FPU] |456| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 471,column 5,is_stmt,isa 0
        MOVXI     R4H,#52429            ; [CPU_FPU] |471| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 469,column 5,is_stmt,isa 0
        MOVIZ     R6H,#15316            ; [CPU_FPU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 472,column 5,is_stmt,isa 0
        MOVXI     R3H,#62915            ; [CPU_FPU] |472| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 457,column 5,is_stmt,isa 0
        MOVIZ     R0H,#19737            ; [CPU_FPU] |457| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 474,column 5,is_stmt,isa 0
        MOVXI     R2H,#22908            ; [CPU_FPU] |474| 
        MOVW      DP,#||FCL_params||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 475,column 5,is_stmt,isa 0
        MOVXI     R1H,#10889            ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 470,column 5,is_stmt,isa 0
        MOVXI     R5H,#65012            ; [CPU_FPU] |470| 
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 457,column 5,is_stmt,isa 0
        MOVXI     R0H,#8192             ; [CPU_FPU] |457| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 468,column 5,is_stmt,isa 0
        MOVIZ     R7H,#16406            ; [CPU_FPU] |468| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 469,column 5,is_stmt,isa 0
        MOVXI     R6H,#65012            ; [CPU_FPU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 457,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||),R0H ; [CPU_FPU] |457| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 462,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14874            ; [CPU_FPU] |462| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 468,column 5,is_stmt,isa 0
        MOVXI     R7H,#26214            ; [CPU_FPU] |468| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 470,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+16,R5H ; [CPU_FPU] |470| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 471,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+28,R4H ; [CPU_FPU] |471| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 462,column 5,is_stmt,isa 0
        MOVXI     R0H,#29461            ; [CPU_FPU] |462| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 469,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+14,R6H ; [CPU_FPU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 472,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+20,R3H ; [CPU_FPU] |472| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 474,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+30,R2H ; [CPU_FPU] |474| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 475,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+22,R1H ; [CPU_FPU] |475| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 462,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+2,R0H ; [CPU_FPU] |462| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 468,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+12,R7H ; [CPU_FPU] |468| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 463,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14388            ; [CPU_FPU] |463| 
        MOVXI     R0H,#42446            ; [CPU_FPU] |463| 
        MOV32     @$BLOCKED(||FCL_params||)+4,R0H ; [CPU_FPU] |463| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 464,column 5,is_stmt,isa 0
        MOVIZ     R0H,#19844            ; [CPU_FPU] |464| 
        MOVXI     R0H,#39986            ; [CPU_FPU] |464| 
        MOV32     @$BLOCKED(||FCL_params||)+6,R0H ; [CPU_FPU] |464| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 466,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14545            ; [CPU_FPU] |466| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |466| 
        MOV32     @$BLOCKED(||FCL_params||)+8,R0H ; [CPU_FPU] |466| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 467,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16406            ; [CPU_FPU] |467| 
        MOVXI     R0H,#26214            ; [CPU_FPU] |467| 
        MOV32     @$BLOCKED(||FCL_params||)+10,R0H ; [CPU_FPU] |467| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 475,column 5,is_stmt,isa 0
        MOVIZ     R0H,#17754            ; [CPU_FPU] |475| 
        MOVXI     R0H,#10889            ; [CPU_FPU] |475| 
        MOV32     @$BLOCKED(||FCL_params||)+24,R0H ; [CPU_FPU] |475| 
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
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$329, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$329, DW_AT_TI_end_line(0x1df)
	.dwattr $C$DW$329, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$329

	.sect	".text:configureDAC"
	.clink
	.global	||configureDAC||

$C$DW$331	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$331, DW_AT_name("configureDAC")
	.dwattr $C$DW$331, DW_AT_low_pc(||configureDAC||)
	.dwattr $C$DW$331, DW_AT_high_pc(0x00)
	.dwattr $C$DW$331, DW_AT_linkage_name("configureDAC")
	.dwattr $C$DW$331, DW_AT_external
	.dwattr $C$DW$331, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$331, DW_AT_decl_line(0xb93)
	.dwattr $C$DW$331, DW_AT_decl_column(0x06)
	.dwattr $C$DW$331, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2964,column 1,is_stmt,address ||configureDAC||,isa 0

	.dwfde $C$DW$CIE, ||configureDAC||

;***************************************************************
;* FNAME: configureDAC                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||configureDAC||:
;* AR4   assigned to $O$U7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR4,#||dacHandle||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2973,column 19,is_stmt,isa 0
        RPTB      ||$C$L47||,AR6        ; [CPU_ALU] |2973| 
        ; repeat block starts ; [] 
||$C$L46||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 202,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |202| 
        MOV       AL,*+XAR5[1]          ; [CPU_ALU] |202| 
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |202| 
        ORB       AL,#0x01              ; [CPU_ALU] |202| 
        MOV       *+XAR5[1],AL          ; [CPU_ALU] |202| 
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |330| 
        AND       AL,*+XAR5[3],#0xf000  ; [CPU_ALU] |330| 
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |330| 
        OR        AL,#0x0400            ; [CPU_ALU] |330| 
        MOV       *+XAR5[3],AL          ; [CPU_ALU] |330| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 387,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |387| 
        ADDL      ACC,*XAR4++           ; [CPU_ALU] |387| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |387| 
        OR        *+XAR5[0],#0x0001     ; [CPU_ALU] |387| 
 EDIS
        ; repeat block ends ; [] 
||$C$L47||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 237,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c01)        ; [CPU_ALU] |237| 
        ORB       AL,#0x04              ; [CPU_ALU] |237| 
        MOV       *(0:0x5c01),AL        ; [CPU_ALU] |237| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h",line 273,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c01)        ; [CPU_ALU] |273| 
        AND       AL,AL,#0xff0f         ; [CPU_ALU] |273| 
        ORB       AL,#0x40              ; [CPU_ALU] |273| 
        MOV       *(0:0x5c01),AL        ; [CPU_ALU] |273| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$331, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$331, DW_AT_TI_end_line(0xbb4)
	.dwattr $C$DW$331, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$331

	.sect	".text:configurePositionSensing"
	.clink
	.global	||configurePositionSensing||

$C$DW$333	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$333, DW_AT_name("configurePositionSensing")
	.dwattr $C$DW$333, DW_AT_low_pc(||configurePositionSensing||)
	.dwattr $C$DW$333, DW_AT_high_pc(0x00)
	.dwattr $C$DW$333, DW_AT_linkage_name("configurePositionSensing")
	.dwattr $C$DW$333, DW_AT_external
	.dwattr $C$DW$333, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$333, DW_AT_decl_line(0xcbb)
	.dwattr $C$DW$333, DW_AT_decl_column(0x06)
	.dwattr $C$DW$333, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3260,column 1,is_stmt,address ||configurePositionSensing||,isa 0

	.dwfde $C$DW$CIE, ||configurePositionSensing||

;***************************************************************
;* FNAME: configurePositionSensing      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||configurePositionSensing||:
;* R4    assigned to $O$C1
;* R0    assigned to $O$C2
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5114)        ; [CPU_ALU] |414| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3299,column 5,is_stmt,isa 0
        MOVIZ     R0H,#18432            ; [CPU_FPU] |3299| 
        MOVW      DP,#||tFormat||+12    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        AND       AL,#0x31ff            ; [CPU_ALU] |414| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3299,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||tFormat||)+12,R0H ; [CPU_FPU] |3299| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        MOV       *(0:0x5114),AL        ; [CPU_ALU] |414| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16585            ; [CPU_FPU] |3315| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3300,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14080            ; [CPU_FPU] |3300| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1612| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3263,column 5,is_stmt,isa 0
        MOVIZ     R3H,#14545            ; [CPU_FPU] |3263| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3300,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||tFormat||)+10,R0H ; [CPU_FPU] |3300| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        AND       AL,#0x3fff            ; [CPU_ALU] |1612| 
        MOVW      DP,#||spdObs||+8      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3305,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16672            ; [CPU_FPU] |3305| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |1612| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      XAR4,#9999            ; [CPU_ARAU] |460| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16256            ; [CPU_FPU] |3315| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |3315| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3305,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+8,R0H ; [CPU_FPU] |3305| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1612| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3306,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16880            ; [CPU_FPU] |3306| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3306,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+10,R0H ; [CPU_FPU] |3306| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        AND       AL,AL,#0xff9f         ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3265,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |3265| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3307,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16256            ; [CPU_FPU] |3307| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        ORB       AL,#0x14              ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3263,column 5,is_stmt,isa 0
        MOVXI     R3H,#46871            ; [CPU_FPU] |3263| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3307,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+14,R0H ; [CPU_FPU] |3307| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3311,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |3311| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3311,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+20,R0H ; [CPU_FPU] |3311| 
        MOVW      DP,#||T||             ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |454| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3314,column 5,is_stmt,isa 0
        MOV32     R0H,@||T||            ; [CPU_FPU] |3314| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        AND       AL,#0xdfff            ; [CPU_ALU] |454| 
        OR        AL,#0x1000            ; [CPU_ALU] |454| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0

        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |3315| 
||      MOV32     *SP++,R6H             ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOVW      DP,#||spdObs||+16     ; [CPU_ARAU] 
        MPYF32    R1H,R1H,#16544        ; [CPU_FPU] |3315| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |454| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,#16256        ; [CPU_FPU] |3315| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3314,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17274        ; [CPU_FPU] |3314| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOV32     *(0:0x5104),XAR4      ; [CPU_FPU] |460| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0
        DIVF32    R4H,R2H,R1H           ; [CPU_FPU] |3315| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3314,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3314| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3302,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16240            ; [CPU_FPU] |3302| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1049,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5117)        ; [CPU_ALU] |1049| 
        AND       AL,#0xefff            ; [CPU_ALU] |1049| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3314,column 5,is_stmt,isa 0
        DIVF32    R6H,R1H,R0H           ; [CPU_FPU] |3314| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3308,column 5,is_stmt,isa 0
        MOVIZ     R0H,#49024            ; [CPU_FPU] |3308| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3302,column 5,is_stmt,isa 0
        MOVXI     R2H,#8389             ; [CPU_FPU] |3302| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3309,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16243            ; [CPU_FPU] |3309| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3308,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+16,R0H ; [CPU_FPU] |3308| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3316,column 5,is_stmt,isa 0
        SUBF32    R5H,#16256,R4H        ; [CPU_FPU] |3316| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1049,column 5,is_stmt,isa 0
        MOV       *(0:0x5117),AL        ; [CPU_ALU] |1049| 
        MOVW      DP,#||tFormat||+14    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3301,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||tFormat||)+14,#4,UNC ; [CPU_ALU] |3301| 
        MOVW      DP,#||qep1||+12       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3310,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15820            ; [CPU_FPU] |3310| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3262,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||qep1||)+12,#2500 ; [CPU_ALU] |3262| 
        MOVW      DP,#||speed1||+8      ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOV32     *(0:0x5110),XAR4      ; [CPU_FPU] |1137| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3309,column 5,is_stmt,isa 0
        MOVXI     R1H,#13107            ; [CPU_FPU] |3309| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3310,column 5,is_stmt,isa 0
        MOVXI     R0H,#52429            ; [CPU_FPU] |3310| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3317,column 5,is_stmt,isa 0
        MOVL      XAR4,#3720            ; [CPU_ARAU] |3317| 
        MOVL      @$BLOCKED(||speed1||)+8,XAR4 ; [CPU_ALU] |3317| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1142,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1142| 
        MOVW      DP,#||qep1||+14       ; [CPU_ARAU] 
        ORB       AL,#0x02              ; [CPU_ALU] |1142| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3263,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||qep1||)+10,R3H ; [CPU_FPU] |3263| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3265,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||qep1||)+14,XAR6 ; [CPU_ALU] |3265| 
        MOVW      DP,#||tFormat||+8     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3302,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||tFormat||)+8,R2H ; [CPU_FPU] |3302| 
        MOVW      DP,#||spdObs||+22     ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1142,column 5,is_stmt,isa 0
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1142| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3309,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+22,R1H ; [CPU_FPU] |3309| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3310,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+24,R0H ; [CPU_FPU] |3310| 
        MOVW      DP,#||speed1||+10     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3316,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||)+14,R5H ; [CPU_FPU] |3316| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3314,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||)+10,R6H ; [CPU_FPU] |3314| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3315,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||speed1||)+12,R4H ; [CPU_FPU] |3315| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 894,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5116)        ; [CPU_ALU] |894| 
        MOVW      DP,#||qep1||+13       ; [CPU_ARAU] 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |894| 
        ORB       AL,#0x75              ; [CPU_ALU] |894| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3264,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||qep1||)+13,#4,UNC ; [CPU_FPU] |3264| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 894,column 5,is_stmt,isa 0
        MOV       *(0:0x5116),AL        ; [CPU_ALU] |894| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 922,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5116)        ; [CPU_ALU] |922| 
        OR        AL,#0x8000            ; [CPU_ALU] |922| 
        MOV       *(0:0x5116),AL        ; [CPU_ALU] |922| 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$333, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$333, DW_AT_TI_end_line(0xcf8)
	.dwattr $C$DW$333, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$333

	.sect	".text:configureCMPSS"
	.clink
	.global	||configureCMPSS||

$C$DW$335	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$335, DW_AT_name("configureCMPSS")
	.dwattr $C$DW$335, DW_AT_low_pc(||configureCMPSS||)
	.dwattr $C$DW$335, DW_AT_high_pc(0x00)
	.dwattr $C$DW$335, DW_AT_linkage_name("configureCMPSS")
	.dwattr $C$DW$335, DW_AT_external
	.dwattr $C$DW$335, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$335, DW_AT_decl_line(0xb49)
	.dwattr $C$DW$335, DW_AT_decl_column(0x06)
	.dwattr $C$DW$335, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2890,column 1,is_stmt,address ||configureCMPSS||,isa 0

	.dwfde $C$DW$CIE, ||configureCMPSS||
$C$DW$336	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$336, DW_AT_name("base")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg0]

$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_name("Hi")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg12]

$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_name("Lo")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: configureCMPSS                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configureCMPSS||:
;* AR1   assigned to base
$C$DW$339	.dwtag  DW_TAG_variable
	.dwattr $C$DW$339, DW_AT_name("base")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to Hi
$C$DW$340	.dwtag  DW_TAG_variable
	.dwattr $C$DW$340, DW_AT_name("Hi")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to Lo
$C$DW$341	.dwtag  DW_TAG_variable
	.dwattr $C$DW$341, DW_AT_name("Lo")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,ACC              ; [CPU_ALU] |2890| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 339,column 5,is_stmt,isa 0
        AND       *+XAR1[0],#0xffbc     ; [CPU_ALU] |339| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 385,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xbeff  ; [CPU_ALU] |385| 
        OR        AL,#0x0200            ; [CPU_ALU] |385| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |385| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 432,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xffe3  ; [CPU_ALU] |432| 
        ORB       AL,#0x28              ; [CPU_ALU] |432| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |432| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 481,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xe3ff  ; [CPU_ALU] |481| 
        OR        AL,#0x2800            ; [CPU_ALU] |481| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |481| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1038,column 5,is_stmt,isa 0
        MOVB      *+XAR1[1],#2,UNC      ; [CPU_ALU] |1038| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 567,column 5,is_stmt,isa 0
        AND       *+XAR1[4],#0xff5e     ; [CPU_ALU] |567| 
 EDIS
        MOVW      DP,#||thresh||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |631| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2919,column 5,is_stmt,isa 0
        MOV       AL,@||thresh||        ; [CPU_ALU] |2919| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOV       *+XAR1[6],AR4         ; [CPU_ALU] |601| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2919,column 5,is_stmt,isa 0
        MOVZ      AR4,@||clkPrescale||  ; [CPU_ALU] |2919| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOV       *+XAR1[AR0],AR5       ; [CPU_ALU] |631| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2919,column 5,is_stmt,isa 0
        MOVZ      AR5,@||sampWin||      ; [CPU_ALU] |2919| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |2919| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |2919| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$342, DW_AT_TI_call

        LCR       #||CMPSS_configFilterHigh|| ; [CPU_ALU] |2919| 
        ; call occurs [#||CMPSS_configFilterHigh||] ; [] |2919| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 662,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |662| 
        ADDB      XAR4,#24              ; [CPU_ALU] |662| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |662| 
 EDIS
        MOVW      DP,#||thresh||        ; [CPU_ARAU] 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2925,column 5,is_stmt,isa 0
        MOV       AL,@||thresh||        ; [CPU_ALU] |2925| 
        MOVZ      AR4,@||clkPrescale||  ; [CPU_ALU] |2925| 
        MOVZ      AR5,@||sampWin||      ; [CPU_ALU] |2925| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |2925| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |2925| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$343, DW_AT_TI_call

        LCR       #||CMPSS_configFilterLow|| ; [CPU_ALU] |2925| 
        ; call occurs [#||CMPSS_configFilterLow||] ; [] |2925| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 695,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |695| 
        ADDB      XAR4,#22              ; [CPU_ALU] |695| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |695| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR1[3],#0x0002     ; [CPU_ALU] |779| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR1[3],#0x0200     ; [CPU_ALU] |809| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 265,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x8000     ; [CPU_ALU] |265| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2935,column 5,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |2935| 
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$344, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |2935| 
        ; call occurs [#||SysCtl_delay||] ; [] |2935| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$335, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$335, DW_AT_TI_end_line(0xb7a)
	.dwattr $C$DW$335, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$335

	.sect	".text:configureHVDMCProtection"
	.clink
	.global	||configureHVDMCProtection||

$C$DW$346	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$346, DW_AT_name("configureHVDMCProtection")
	.dwattr $C$DW$346, DW_AT_low_pc(||configureHVDMCProtection||)
	.dwattr $C$DW$346, DW_AT_high_pc(0x00)
	.dwattr $C$DW$346, DW_AT_linkage_name("configureHVDMCProtection")
	.dwattr $C$DW$346, DW_AT_external
	.dwattr $C$DW$346, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$346, DW_AT_decl_line(0xc50)
	.dwattr $C$DW$346, DW_AT_decl_column(0x06)
	.dwattr $C$DW$346, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3153,column 1,is_stmt,address ||configureHVDMCProtection||,isa 0

	.dwfde $C$DW$CIE, ||configureHVDMCProtection||

;***************************************************************
;* FNAME: configureHVDMCProtection      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||configureHVDMCProtection||:
;* AR4   assigned to $O$C1
;* AR5   assigned to $O$C2
;* R0    assigned to $O$C3
;* AR5   assigned to $O$U35
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||curLimit||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3163,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15875            ; [CPU_FPU] |3163| 
        MOV32     R1H,@||curLimit||     ; [CPU_FPU] |3163| 
        MPYF32    R1H,R1H,#17664        ; [CPU_FPU] |3163| 
        MOVXI     R0H,#40602            ; [CPU_FPU] |3163| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |3163| 
        NOP       ; [CPU_ALU] 
        ADDF32    R1H,R0H,#17664        ; [CPU_FPU] |3163| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3164,column 5,is_stmt,isa 0
        SUBF32    R0H,#17664,R0H        ; [CPU_FPU] |3164| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3163,column 5,is_stmt,isa 0
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |3163| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3164,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |3164| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3163,column 5,is_stmt,isa 0
        MOV32     XAR4,R1H              ; [CPU_FPU] |3163| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3164,column 5,is_stmt,isa 0
        MOV32     XAR5,R0H              ; [CPU_FPU] |3164| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3166,column 5,is_stmt,isa 0
        MOVL      XAR6,#23680           ; [CPU_ARAU] |3166| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |3166| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3163,column 5,is_stmt,isa 0
        MOV       @||LEM_curHi||,AR4    ; [CPU_ALU] |3163| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3164,column 5,is_stmt,isa 0
        MOV       @||LEM_curLo||,AR5    ; [CPU_ALU] |3164| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3166,column 5,is_stmt,isa 0
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("configureCMPSS")
	.dwattr $C$DW$347, DW_AT_TI_call

        LCR       #||configureCMPSS||   ; [CPU_ALU] |3166| 
        ; call occurs [#||configureCMPSS||] ; [] |3166| 
        MOVW      DP,#||LEM_curHi||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3167,column 5,is_stmt,isa 0
        MOV       ACC,#23744            ; [CPU_ALU] |3167| 
        MOVZ      AR4,@||LEM_curHi||    ; [CPU_ALU] |3167| 
        MOVZ      AR5,@||LEM_curLo||    ; [CPU_ALU] |3167| 
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_name("configureCMPSS")
	.dwattr $C$DW$348, DW_AT_TI_call

        LCR       #||configureCMPSS||   ; [CPU_ALU] |3167| 
        ; call occurs [#||configureCMPSS||] ; [] |3167| 
 EALLOW
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3184,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |3184| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3185,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |3185| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3184,column 5,is_stmt,isa 0
        MOV32     *(0:0x7a00),XAR6      ; [CPU_FPU] |3184| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3185,column 5,is_stmt,isa 0
        MOV32     *(0:0x7a02),ACC       ; [CPU_FPU] |3185| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3190,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |3190| 
        MOVB      AH,#1                 ; [CPU_ALU] |3190| 
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$349, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |3190| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |3190| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3193,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |3193| 
        MOV       AH,#2049              ; [CPU_ALU] |3193| 
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$350, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |3193| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |3193| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3196,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |3196| 
        MOV       AH,#1025              ; [CPU_ALU] |3196| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$351, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |3196| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |3196| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3199,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |3199| 
        MOV       AH,#5121              ; [CPU_ALU] |3199| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$352, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |3199| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |3199| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3202,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |3202| 
        MOV       AH,#1537              ; [CPU_ALU] |3202| 
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$353, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |3202| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |3202| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 898,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |898| 
        ANDB      AL,#0                 ; [CPU_ALU] |898| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |898| 
 EDIS
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        OR        AL,#1053              ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
 EDIS
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR5,#||pwmHandle||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3214,column 19,is_stmt,isa 0
        RPTB      ||$C$L49||,AR6        ; [CPU_ALU] |3214| 
        ; repeat block starts ; [] 
||$C$L48||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        MOVB      ACC,#192              ; [CPU_ALU] |5627| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |5627| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |5627| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_ALU] |5627| 
        ORB       AL,#0x03              ; [CPU_ALU] |5627| 
        MOVZ      AR7,AL                ; [CPU_ALU] |5627| 
        MOVB      ACC,#192              ; [CPU_ALU] |5627| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |5627| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |5627| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |5627| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3997,column 5,is_stmt,isa 0
        MOVB      ACC,#130              ; [CPU_ALU] |3997| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3997| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3997| 
        AND       AL,*+XAR4[0],#0xfff8  ; [CPU_ALU] |3997| 
        ORB       AL,#0x02              ; [CPU_ALU] |3997| 
        MOVZ      AR7,AL                ; [CPU_ALU] |3997| 
        MOVB      ACC,#130              ; [CPU_ALU] |3997| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3997| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3997| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |3997| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      ACC,#195              ; [CPU_ALU] |6160| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |6160| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |6160| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |6160| 
        MOVZ      AR7,AL                ; [CPU_ALU] |6160| 
        MOVB      ACC,#195              ; [CPU_ALU] |6160| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |6160| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |6160| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |6160| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOVB      ACC,#195              ; [CPU_ALU] |6220| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |6220| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |6220| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |6220| 
        ORB       AL,#0x02              ; [CPU_ALU] |6220| 
        MOVZ      AR7,AL                ; [CPU_ALU] |6220| 
        MOVB      ACC,#195              ; [CPU_ALU] |6220| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |6220| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |6220| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |6220| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        MOVB      ACC,#128              ; [CPU_ALU] |3898| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3898| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3898| 
        OR        *+XAR4[0],#0x4000     ; [CPU_ALU] |3898| 
 EDIS
 EALLOW
        MOVB      ACC,#128              ; [CPU_ALU] |3898| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |3898| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3898| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |3898| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        MOVB      ACC,#132              ; [CPU_ALU] |4104| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4104| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4104| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |4104| 
        ORB       AL,#0x02              ; [CPU_ALU] |4104| 
        MOVZ      AR7,AL                ; [CPU_ALU] |4104| 
        MOVB      ACC,#132              ; [CPU_ALU] |4104| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4104| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4104| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |4104| 
 EDIS
 EALLOW
        MOVB      ACC,#132              ; [CPU_ALU] |4104| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4104| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4104| 
        AND       AL,*+XAR4[0],#0xfffb  ; [CPU_ALU] |4104| 
        ORB       AL,#0x08              ; [CPU_ALU] |4104| 
        MOVZ      AR7,AL                ; [CPU_ALU] |4104| 
        MOVB      ACC,#132              ; [CPU_ALU] |4104| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4104| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4104| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |4104| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVB      ACC,#151              ; [CPU_ALU] |4540| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x0008     ; [CPU_ALU] |4540| 
 EDIS
 EALLOW
        MOVB      ACC,#151              ; [CPU_ALU] |4540| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4540| 
 EDIS
 EALLOW
        MOVB      ACC,#151              ; [CPU_ALU] |4540| 
        ADDL      ACC,*XAR5++           ; [CPU_ALU] |4540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |4540| 
 EDIS
        ; repeat block ends ; [] 
||$C$L49||:    
        SPM       #0                    ; [CPU_ALU] 
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$346, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$346, DW_AT_TI_end_line(0xcb4)
	.dwattr $C$DW$346, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$346

	.sect	".text:configureCLA"
	.clink
	.global	||configureCLA||

$C$DW$355	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$355, DW_AT_name("configureCLA")
	.dwattr $C$DW$355, DW_AT_low_pc(||configureCLA||)
	.dwattr $C$DW$355, DW_AT_high_pc(0x00)
	.dwattr $C$DW$355, DW_AT_linkage_name("configureCLA")
	.dwattr $C$DW$355, DW_AT_external
	.dwattr $C$DW$355, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$355, DW_AT_decl_line(0xaf7)
	.dwattr $C$DW$355, DW_AT_decl_column(0x06)
	.dwattr $C$DW$355, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2808,column 1,is_stmt,address ||configureCLA||,isa 0

	.dwfde $C$DW$CIE, ||configureCLA||

;***************************************************************
;* FNAME: configureCLA                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||configureCLA||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 EALLOW
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2831,column 5,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |2831| 
        MOV       AH,#768               ; [CPU_ALU] |2831| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$356, DW_AT_TI_call

        LCR       #||MemCfg_initSections|| ; [CPU_ALU] |2831| 
        ; call occurs [#||MemCfg_initSections||] ; [] |2831| 
||$C$L50||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2832,column 11,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |2832| 
        MOV       AH,#768               ; [CPU_ALU] |2832| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$357, DW_AT_TI_call

        LCR       #||MemCfg_getInitStatus|| ; [CPU_ALU] |2832| 
        ; call occurs [#||MemCfg_getInitStatus||] ; [] |2832| 
        CMPB      AL,#1                 ; [CPU_ALU] |2832| 
        B         ||$C$L50||,NEQ        ; [CPU_ALU] |2832| 
        ; branchcc occurs ; [] |2832| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2836,column 5,is_stmt,isa 0
        MOV       AL,#2                 ; [CPU_ALU] |2836| 
        MOV       AH,#768               ; [CPU_ALU] |2836| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$358, DW_AT_TI_call

        LCR       #||MemCfg_initSections|| ; [CPU_ALU] |2836| 
        ; call occurs [#||MemCfg_initSections||] ; [] |2836| 
||$C$L51||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2837,column 11,is_stmt,isa 0
        MOV       AL,#2                 ; [CPU_ALU] |2837| 
        MOV       AH,#768               ; [CPU_ALU] |2837| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$359, DW_AT_TI_call

        LCR       #||MemCfg_getInitStatus|| ; [CPU_ALU] |2837| 
        ; call occurs [#||MemCfg_getInitStatus||] ; [] |2837| 
        CMPB      AL,#1                 ; [CPU_ALU] |2837| 
        B         ||$C$L51||,NEQ        ; [CPU_ALU] |2837| 
        ; branchcc occurs ; [] |2837| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2843,column 5,is_stmt,isa 0
        MOV       AL,#16                ; [CPU_ALU] |2843| 
        MOV       AH,#256               ; [CPU_ALU] |2843| 
        MOVB      XAR4,#1               ; [CPU_ALU] |2843| 
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$360, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |2843| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |2843| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 338,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |338| 
        OR        *+XAR4[0],#16         ; [CPU_ALU] |338| 
        OR        *+XAR4[1],#256        ; [CPU_ALU] |338| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2846,column 5,is_stmt,isa 0
        MOV       AL,#32                ; [CPU_ALU] |2846| 
        MOV       AH,#256               ; [CPU_ALU] |2846| 
        SPM       #0                    ; [CPU_ALU] 
        MOVB      XAR4,#1               ; [CPU_ALU] |2846| 
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$361, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |2846| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |2846| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 338,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |338| 
        OR        *+XAR4[0],#32         ; [CPU_ALU] |338| 
        OR        *+XAR4[1],#256        ; [CPU_ALU] |338| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2852,column 5,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |2852| 
        MOV       AH,#256               ; [CPU_ALU] |2852| 
        SPM       #0                    ; [CPU_ALU] 
        MOVB      XAR4,#1               ; [CPU_ALU] |2852| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$362, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |2852| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |2852| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 345,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |345| 
        AND       *+XAR4[0],#65531      ; [CPU_ALU] |345| 
        AND       *+XAR4[1],#65279      ; [CPU_ALU] |345| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2855,column 5,is_stmt,isa 0
        MOV       AL,#8                 ; [CPU_ALU] |2855| 
        MOV       AH,#256               ; [CPU_ALU] |2855| 
        SPM       #0                    ; [CPU_ALU] 
        MOVB      XAR4,#1               ; [CPU_ALU] |2855| 
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$363, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |2855| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |2855| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 345,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |345| 
        AND       *+XAR4[0],#65527      ; [CPU_ALU] |345| 
        AND       *+XAR4[1],#65279      ; [CPU_ALU] |345| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task1||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5120            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task2||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5121            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task3||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5122            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task4||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5123            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task5||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5124            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task6||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5125            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task7||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5126            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
        MOVL      XAR5,#||Cla1Task8||   ; [CPU_ARAU] |304| 
        MOVL      XAR4,#5127            ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 417,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x1410)        ; [CPU_ALU] |417| 
        ORB       AL,#0x04              ; [CPU_ALU] |417| 
        MOV       *(0:0x1410),AL        ; [CPU_ALU] |417| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 684,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x1425)        ; [CPU_ALU] |684| 
        ORB       AL,#0xff              ; [CPU_ALU] |684| 
        MOV       *(0:0x1425),AL        ; [CPU_ALU] |684| 
 EDIS
 EDIS
        SPM       #0                    ; [CPU_ALU] 
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$355, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$355, DW_AT_TI_end_line(0xb42)
	.dwattr $C$DW$355, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$355

	.sect	".text:configurePIControllers"
	.clink
	.global	||configurePIControllers||

$C$DW$365	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$365, DW_AT_name("configurePIControllers")
	.dwattr $C$DW$365, DW_AT_low_pc(||configurePIControllers||)
	.dwattr $C$DW$365, DW_AT_high_pc(0x00)
	.dwattr $C$DW$365, DW_AT_linkage_name("configurePIControllers")
	.dwattr $C$DW$365, DW_AT_external
	.dwattr $C$DW$365, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$365, DW_AT_decl_line(0xe76)
	.dwattr $C$DW$365, DW_AT_decl_column(0x06)
	.dwattr $C$DW$365, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3703,column 1,is_stmt,address ||configurePIControllers||,isa 0

	.dwfde $C$DW$CIE, ||configurePIControllers||

;***************************************************************
;* FNAME: configurePIControllers        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configurePIControllers||:
;* R0    assigned to $O$C1
;* R1    assigned to $O$C2
;* R2    assigned to $O$C3
;* R1    assigned to $O$C4
;* R1    assigned to $O$C5
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||maxModIndex||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3743,column 5,is_stmt,isa 0
        MOV32     R0H,@||maxModIndex||  ; [CPU_FPU] |3743| 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |3743| 
        MOVW      DP,#||pi_id||+18      ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_id||)+18,R1H ; [CPU_FPU] |3743| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3744,column 5,is_stmt,isa 0
        MPYF32    R1H,R0H,#48896        ; [CPU_FPU] |3744| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3754,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16204            ; [CPU_FPU] |3754| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3744,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+20,R1H ; [CPU_FPU] |3744| 
        MOVW      DP,#||pi_pos||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3705,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3705| 
        MOV32     @$BLOCKED(||pi_pos||)+6,R1H ; [CPU_FPU] |3705| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3708,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3708| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     @$BLOCKED(||pi_pos||)+10,R1H ; [CPU_FPU] |3708| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3709,column 5,is_stmt,isa 0
        MOVIZ     R1H,#49024            ; [CPU_FPU] |3709| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3754,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |3754| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3709,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_pos||)+12,R1H ; [CPU_FPU] |3709| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3712,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3712| 
        MOVW      DP,#||pid_pos||       ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pid_pos||),R1H ; [CPU_FPU] |3712| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3713,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+2,R1H ; [CPU_FPU] |3713| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3714,column 5,is_stmt,isa 0
        MOVIZ     R1H,#48896            ; [CPU_FPU] |3714| 
        MOV32     @$BLOCKED(||pid_pos||)+18,R1H ; [CPU_FPU] |3714| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3715,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16128            ; [CPU_FPU] |3715| 
        MOV32     @$BLOCKED(||pid_pos||)+16,R1H ; [CPU_FPU] |3715| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3716,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3716| 
        MOV32     @$BLOCKED(||pid_pos||)+20,R1H ; [CPU_FPU] |3716| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3718,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3718| 
        MOV32     @$BLOCKED(||pid_pos||)+6,R1H ; [CPU_FPU] |3718| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3719,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3719| 
        MOV32     @$BLOCKED(||pid_pos||)+24,R1H ; [CPU_FPU] |3719| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3720,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+28,R1H ; [CPU_FPU] |3720| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3723,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+30,R1H ; [CPU_FPU] |3723| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3724,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+8,R1H ; [CPU_FPU] |3724| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3725,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+10,R1H ; [CPU_FPU] |3725| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3726,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+12,R1H ; [CPU_FPU] |3726| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3727,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+22,R1H ; [CPU_FPU] |3727| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3728,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_pos||)+14,R1H ; [CPU_FPU] |3728| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3731,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3731| 
        MOVW      DP,#||pid_spd||+12    ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pid_spd||)+12,R1H ; [CPU_FPU] |3731| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3733,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3733| 
        MOV32     @$BLOCKED(||pid_spd||)+16,R1H ; [CPU_FPU] |3733| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3734,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3734| 
        MOV32     @$BLOCKED(||pid_spd||)+10,R1H ; [CPU_FPU] |3734| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3739,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3739| 
        MOVW      DP,#||pi_id||+10      ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||pi_id||)+10,R1H ; [CPU_FPU] |3739| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3745,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3745| 
        MOV32     @$BLOCKED(||pi_id||),R1H ; [CPU_FPU] |3745| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3746,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+4,R1H ; [CPU_FPU] |3746| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3747,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+6,R1H ; [CPU_FPU] |3747| 
        MOVW      DP,#||pi_iq||+10      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3750,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |3750| 
        MOV32     @$BLOCKED(||pi_iq||)+10,R1H ; [CPU_FPU] |3750| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3756,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |3756| 
        MOV32     @$BLOCKED(||pi_iq||),R1H ; [CPU_FPU] |3756| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3757,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+4,R1H ; [CPU_FPU] |3757| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3758,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+6,R1H ; [CPU_FPU] |3758| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3721,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16230            ; [CPU_FPU] |3721| 
        MOVW      DP,#||pid_pos||+26    ; [CPU_ARAU] 
        MOVXI     R1H,#26214            ; [CPU_FPU] |3721| 
        MOV32     @$BLOCKED(||pid_pos||)+26,R1H ; [CPU_FPU] |3721| 
        MOVW      DP,#||pid_spd||+14    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3732,column 5,is_stmt,isa 0
        MOVIZ     R1H,#14979            ; [CPU_FPU] |3732| 
        MOVXI     R1H,#4719             ; [CPU_FPU] |3732| 
        MOV32     @$BLOCKED(||pid_spd||)+14,R1H ; [CPU_FPU] |3732| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3735,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16243            ; [CPU_FPU] |3735| 
        MOVXI     R1H,#13107            ; [CPU_FPU] |3735| 

        MOV32     @$BLOCKED(||pid_spd||)+20,R1H ; [CPU_FPU] |3735| 
||      MPYF32    R4H,R2H,R0H           ; [CPU_FPU] |3754| 

	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3755,column 5,is_stmt,isa 0
        MOVIZ     R1H,#48972            ; [CPU_FPU] |3755| 
        MOVW      DP,#||T||             ; [CPU_ARAU] 
        MOVXI     R1H,#52429            ; [CPU_FPU] |3755| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3740,column 5,is_stmt,isa 0

        MOV32     R0H,@||T||            ; [CPU_FPU] |3740| 
||      MPYF32    R3H,R1H,R0H           ; [CPU_FPU] |3755| 

        MOVW      DP,#||pi_id||+12      ; [CPU_ARAU] 
        MPYF32    R1H,R0H,#16840        ; [CPU_FPU] |3740| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3706,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14979            ; [CPU_FPU] |3706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3740,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_id||)+12,R1H ; [CPU_FPU] |3740| 
        MOVW      DP,#||pi_iq||+12      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3706,column 5,is_stmt,isa 0
        MOVXI     R0H,#4719             ; [CPU_FPU] |3706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3751,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+12,R1H ; [CPU_FPU] |3751| 
        MOVW      DP,#||pi_pos||+8      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3706,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_pos||)+8,R0H ; [CPU_FPU] |3706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3741,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |3741| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3736,column 5,is_stmt,isa 0
        MOVIZ     R0H,#49011            ; [CPU_FPU] |3736| 
        MOVW      DP,#||pid_spd||+22    ; [CPU_ARAU] 
        MOVXI     R0H,#13107            ; [CPU_FPU] |3736| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3741,column 5,is_stmt,isa 0
        ADDF32    R2H,R1H,#16256        ; [CPU_FPU] |3741| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3736,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pid_spd||)+22,R0H ; [CPU_FPU] |3736| 
        MOVW      DP,#||pi_id||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3741,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,#49024        ; [CPU_FPU] |3741| 
        MOV32     @$BLOCKED(||pi_id||)+14,R2H ; [CPU_FPU] |3741| 
        MOV32     @$BLOCKED(||pi_id||)+16,R1H ; [CPU_FPU] |3741| 
        MOVW      DP,#||pi_iq||+14      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3754,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+18,R4H ; [CPU_FPU] |3754| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3752,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+14,R2H ; [CPU_FPU] |3752| 
        MOV32     @$BLOCKED(||pi_iq||)+16,R1H ; [CPU_FPU] |3752| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3755,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||pi_iq||)+20,R3H ; [CPU_FPU] |3755| 
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$365, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$365, DW_AT_TI_end_line(0xeaf)
	.dwattr $C$DW$365, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$365

	.sect	".text:C3"
	.clink
	.global	||C3||

$C$DW$367	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$367, DW_AT_name("C3")
	.dwattr $C$DW$367, DW_AT_low_pc(||C3||)
	.dwattr $C$DW$367, DW_AT_high_pc(0x00)
	.dwattr $C$DW$367, DW_AT_linkage_name("C3")
	.dwattr $C$DW$367, DW_AT_external
	.dwattr $C$DW$367, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$367, DW_AT_decl_line(0x5bf)
	.dwattr $C$DW$367, DW_AT_decl_column(0x06)
	.dwattr $C$DW$367, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1473,column 1,is_stmt,address ||C3||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1477,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |1477| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |1477| 
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$367, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$367, DW_AT_TI_end_line(0x5c7)
	.dwattr $C$DW$367, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$367

	.sect	".text:C2"
	.clink
	.global	||C2||

$C$DW$369	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$369, DW_AT_name("C2")
	.dwattr $C$DW$369, DW_AT_low_pc(||C2||)
	.dwattr $C$DW$369, DW_AT_high_pc(0x00)
	.dwattr $C$DW$369, DW_AT_linkage_name("C2")
	.dwattr $C$DW$369, DW_AT_external
	.dwattr $C$DW$369, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$369, DW_AT_decl_line(0x5b4)
	.dwattr $C$DW$369, DW_AT_decl_column(0x06)
	.dwattr $C$DW$369, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1462,column 1,is_stmt,address ||C2||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1466,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C3||          ; [CPU_ARAU] |1466| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |1466| 
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$369, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$369, DW_AT_TI_end_line(0x5bc)
	.dwattr $C$DW$369, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$369

	.sect	".text:B3"
	.clink
	.global	||B3||

$C$DW$371	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$371, DW_AT_name("B3")
	.dwattr $C$DW$371, DW_AT_low_pc(||B3||)
	.dwattr $C$DW$371, DW_AT_high_pc(0x00)
	.dwattr $C$DW$371, DW_AT_linkage_name("B3")
	.dwattr $C$DW$371, DW_AT_external
	.dwattr $C$DW$371, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$371, DW_AT_decl_line(0x58e)
	.dwattr $C$DW$371, DW_AT_decl_column(0x06)
	.dwattr $C$DW$371, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1424,column 1,is_stmt,address ||B3||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1428,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B1||          ; [CPU_ARAU] |1428| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |1428| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$371, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$371, DW_AT_TI_end_line(0x596)
	.dwattr $C$DW$371, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$371

	.sect	".text:B2"
	.clink
	.global	||B2||

$C$DW$373	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$373, DW_AT_name("B2")
	.dwattr $C$DW$373, DW_AT_low_pc(||B2||)
	.dwattr $C$DW$373, DW_AT_high_pc(0x00)
	.dwattr $C$DW$373, DW_AT_linkage_name("B2")
	.dwattr $C$DW$373, DW_AT_external
	.dwattr $C$DW$373, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$373, DW_AT_decl_line(0x583)
	.dwattr $C$DW$373, DW_AT_decl_column(0x06)
	.dwattr $C$DW$373, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1413,column 1,is_stmt,address ||B2||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1417,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B3||          ; [CPU_ARAU] |1417| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |1417| 
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$373, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$373, DW_AT_TI_end_line(0x58b)
	.dwattr $C$DW$373, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$373

	.sect	".text:A3"
	.clink
	.global	||A3||

$C$DW$375	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$375, DW_AT_name("A3")
	.dwattr $C$DW$375, DW_AT_low_pc(||A3||)
	.dwattr $C$DW$375, DW_AT_high_pc(0x00)
	.dwattr $C$DW$375, DW_AT_linkage_name("A3")
	.dwattr $C$DW$375, DW_AT_external
	.dwattr $C$DW$375, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$375, DW_AT_decl_line(0x560)
	.dwattr $C$DW$375, DW_AT_decl_column(0x06)
	.dwattr $C$DW$375, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1378,column 1,is_stmt,address ||A3||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1382,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A1||          ; [CPU_ARAU] |1382| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |1382| 
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$375, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$375, DW_AT_TI_end_line(0x568)
	.dwattr $C$DW$375, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$375

	.sect	".text:A2"
	.clink
	.global	||A2||

$C$DW$377	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$377, DW_AT_name("A2")
	.dwattr $C$DW$377, DW_AT_low_pc(||A2||)
	.dwattr $C$DW$377, DW_AT_high_pc(0x00)
	.dwattr $C$DW$377, DW_AT_linkage_name("A2")
	.dwattr $C$DW$377, DW_AT_external
	.dwattr $C$DW$377, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$377, DW_AT_decl_line(0x555)
	.dwattr $C$DW$377, DW_AT_decl_column(0x06)
	.dwattr $C$DW$377, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1367,column 1,is_stmt,address ||A2||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1371,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A3||          ; [CPU_ARAU] |1371| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |1371| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$377, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$377, DW_AT_TI_end_line(0x55d)
	.dwattr $C$DW$377, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$377

	.sect	".text:C1"
	.clink
	.global	||C1||

$C$DW$379	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$379, DW_AT_name("C1")
	.dwattr $C$DW$379, DW_AT_low_pc(||C1||)
	.dwattr $C$DW$379, DW_AT_high_pc(0x00)
	.dwattr $C$DW$379, DW_AT_linkage_name("C1")
	.dwattr $C$DW$379, DW_AT_external
	.dwattr $C$DW$379, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$379, DW_AT_decl_line(0x59f)
	.dwattr $C$DW$379, DW_AT_decl_column(0x06)
	.dwattr $C$DW$379, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1441,column 1,is_stmt,address ||C1||,isa 0

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
        MOVW      DP,#||ledCnt1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1443,column 5,is_stmt,isa 0
        MOV       AL,@||ledCnt1||       ; [CPU_ALU] |1443| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1445,column 9,is_stmt,isa 0
        MOVB      @||ledCnt1||,#200,EQ  ; [CPU_ALU] |1445| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1449,column 9,is_stmt,isa 0
        DEC       @||ledCnt1||          ; [CPU_ALU] |1449| 
||$C$L52||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1454,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C2||          ; [CPU_ARAU] |1454| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |1454| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$379, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$379, DW_AT_TI_end_line(0x5b1)
	.dwattr $C$DW$379, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$379

	.sect	".text:B1"
	.clink
	.global	||B1||

$C$DW$381	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$381, DW_AT_name("B1")
	.dwattr $C$DW$381, DW_AT_low_pc(||B1||)
	.dwattr $C$DW$381, DW_AT_high_pc(0x00)
	.dwattr $C$DW$381, DW_AT_linkage_name("B1")
	.dwattr $C$DW$381, DW_AT_external
	.dwattr $C$DW$381, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$381, DW_AT_decl_line(0x571)
	.dwattr $C$DW$381, DW_AT_decl_column(0x06)
	.dwattr $C$DW$381, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1395,column 1,is_stmt,address ||B1||,isa 0

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
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1406,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B2||          ; [CPU_ARAU] |1406| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
        MOVL      @||B_Task_Ptr||,XAR4  ; [CPU_ALU] |1406| 
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$381, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$381, DW_AT_TI_end_line(0x580)
	.dwattr $C$DW$381, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$381

	.sect	".text:configureCMPSSFilter"
	.clink
	.global	||configureCMPSSFilter||

$C$DW$383	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$383, DW_AT_name("configureCMPSSFilter")
	.dwattr $C$DW$383, DW_AT_low_pc(||configureCMPSSFilter||)
	.dwattr $C$DW$383, DW_AT_high_pc(0x00)
	.dwattr $C$DW$383, DW_AT_linkage_name("configureCMPSSFilter")
	.dwattr $C$DW$383, DW_AT_external
	.dwattr $C$DW$383, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$383, DW_AT_decl_line(0xb7f)
	.dwattr $C$DW$383, DW_AT_decl_column(0x06)
	.dwattr $C$DW$383, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2944,column 1,is_stmt,address ||configureCMPSSFilter||,isa 0

	.dwfde $C$DW$CIE, ||configureCMPSSFilter||
$C$DW$384	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$384, DW_AT_name("base")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg0]

$C$DW$385	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$385, DW_AT_name("curHi")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg12]

$C$DW$386	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$386, DW_AT_name("curLo")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: configureCMPSSFilter          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configureCMPSSFilter||:
;* AR1   assigned to base
$C$DW$387	.dwtag  DW_TAG_variable
	.dwattr $C$DW$387, DW_AT_name("base")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to curHi
$C$DW$388	.dwtag  DW_TAG_variable
	.dwattr $C$DW$388, DW_AT_name("curHi")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to curLo
$C$DW$389	.dwtag  DW_TAG_variable
	.dwattr $C$DW$389, DW_AT_name("curLo")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,ACC              ; [CPU_ALU] |2944| 
        MOVW      DP,#||thresh||        ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |631| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2950,column 5,is_stmt,isa 0
        MOV       AL,@||thresh||        ; [CPU_ALU] |2950| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOV       *+XAR1[6],AR4         ; [CPU_ALU] |601| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2950,column 5,is_stmt,isa 0
        MOVZ      AR4,@||clkPrescale||  ; [CPU_ALU] |2950| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOV       *+XAR1[AR0],AR5       ; [CPU_ALU] |631| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2950,column 5,is_stmt,isa 0
        MOVZ      AR5,@||sampWin||      ; [CPU_ALU] |2950| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |2950| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |2950| 
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$390, DW_AT_TI_call

        LCR       #||CMPSS_configFilterHigh|| ; [CPU_ALU] |2950| 
        ; call occurs [#||CMPSS_configFilterHigh||] ; [] |2950| 
        MOVW      DP,#||thresh||        ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 2953,column 5,is_stmt,isa 0
        MOV       AL,@||thresh||        ; [CPU_ALU] |2953| 
        MOVZ      AR4,@||clkPrescale||  ; [CPU_ALU] |2953| 
        MOVZ      AR5,@||sampWin||      ; [CPU_ALU] |2953| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |2953| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |2953| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$391, DW_AT_TI_call

        LCR       #||CMPSS_configFilterLow|| ; [CPU_ALU] |2953| 
        ; call occurs [#||CMPSS_configFilterLow||] ; [] |2953| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$383, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$383, DW_AT_TI_end_line(0xb8c)
	.dwattr $C$DW$383, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$383

	.sect	".text:A1"
	.clink
	.global	||A1||

$C$DW$393	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$393, DW_AT_name("A1")
	.dwattr $C$DW$393, DW_AT_low_pc(||A1||)
	.dwattr $C$DW$393, DW_AT_high_pc(0x00)
	.dwattr $C$DW$393, DW_AT_linkage_name("A1")
	.dwattr $C$DW$393, DW_AT_external
	.dwattr $C$DW$393, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$393, DW_AT_decl_line(0x50d)
	.dwattr $C$DW$393, DW_AT_decl_column(0x06)
	.dwattr $C$DW$393, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1295,column 1,is_stmt,address ||A1||,isa 0

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
;* AR4   assigned to $O$C4
;* AR5   assigned to $O$C5
;* R0    assigned to $O$C6
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||curLimit||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1299,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15875            ; [CPU_FPU] |1299| 
        MOV32     R1H,@||curLimit||     ; [CPU_FPU] |1299| 
        MPYF32    R1H,R1H,#17664        ; [CPU_FPU] |1299| 
        MOVXI     R0H,#40602            ; [CPU_FPU] |1299| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |1299| 
        NOP       ; [CPU_ALU] 
        ADDF32    R1H,R0H,#17664        ; [CPU_FPU] |1299| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1300,column 5,is_stmt,isa 0
        SUBF32    R0H,#17664,R0H        ; [CPU_FPU] |1300| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1299,column 5,is_stmt,isa 0
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |1299| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1300,column 5,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1300| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1299,column 5,is_stmt,isa 0
        MOV32     XAR4,R1H              ; [CPU_FPU] |1299| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1300,column 5,is_stmt,isa 0
        MOV32     XAR5,R0H              ; [CPU_FPU] |1300| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1304,column 5,is_stmt,isa 0
        MOV       ACC,#23680            ; [CPU_ALU] |1304| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1299,column 5,is_stmt,isa 0
        MOV       @||LEM_curHi||,AR4    ; [CPU_ALU] |1299| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1301,column 5,is_stmt,isa 0
        MOV       @||SHUNT_curHi||,AR4  ; [CPU_ALU] |1301| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1300,column 5,is_stmt,isa 0
        MOV       @||LEM_curLo||,AR5    ; [CPU_ALU] |1300| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1302,column 5,is_stmt,isa 0
        MOV       @||SHUNT_curLo||,AR5  ; [CPU_ALU] |1302| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1304,column 5,is_stmt,isa 0
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("configureCMPSSFilter")
	.dwattr $C$DW$394, DW_AT_TI_call

        LCR       #||configureCMPSSFilter|| ; [CPU_ALU] |1304| 
        ; call occurs [#||configureCMPSSFilter||] ; [] |1304| 
        MOVW      DP,#||LEM_curHi||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1305,column 5,is_stmt,isa 0
        MOV       ACC,#23744            ; [CPU_ALU] |1305| 
        MOVZ      AR4,@||LEM_curHi||    ; [CPU_ALU] |1305| 
        MOVZ      AR5,@||LEM_curLo||    ; [CPU_ALU] |1305| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("configureCMPSSFilter")
	.dwattr $C$DW$395, DW_AT_TI_call

        LCR       #||configureCMPSSFilter|| ; [CPU_ALU] |1305| 
        ; call occurs [#||configureCMPSSFilter||] ; [] |1305| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4093)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1313,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |1313| 
        B         ||$C$L53||,TC         ; [CPU_ALU] |1313| 
        ; branchcc occurs ; [] |1313| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4193)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1313,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |1313| 
        B         ||$C$L53||,TC         ; [CPU_ALU] |1313| 
        ; branchcc occurs ; [] |1313| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4293)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1313,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |1313| 
        B         ||$C$L54||,NTC        ; [CPU_ALU] |1313| 
        ; branchcc occurs ; [] |1313| 
||$C$L53||:    
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x409b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x409b),AL        ; [CPU_ALU] |4654| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x419b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x419b),AL        ; [CPU_ALU] |4654| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x429b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x429b),AL        ; [CPU_ALU] |4654| 
 EDIS
        MOVW      DP,#||tripFlagDMC||   ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1321,column 9,is_stmt,isa 0
        MOVB      @||tripFlagDMC||,#1,UNC ; [CPU_ALU] |1321| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1322,column 9,is_stmt,isa 0
        MOV       @||runMotor||,#0      ; [CPU_ALU] |1322| 
||$C$L54||:    
        MOVW      DP,#||clearTripFlagDMC|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1326,column 5,is_stmt,isa 0
        MOV       AL,@||clearTripFlagDMC|| ; [CPU_ALU] |1326| 
        B         ||$C$L55||,EQ         ; [CPU_ALU] |1326| 
        ; branchcc occurs ; [] |1326| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVL      XAR5,#512             ; [CPU_ARAU] |469| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVL      XAR4,#512             ; [CPU_ARAU] |473| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0c),XAR5      ; [CPU_FPU] |469| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1330,column 9,is_stmt,isa 0
        MOV       @||tripFlagDMC||,#0   ; [CPU_ALU] |1330| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1331,column 9,is_stmt,isa 0
        MOV       @||clearTripFlagDMC||,#0 ; [CPU_ALU] |1331| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1335,column 9,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |1335| 
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0a),XAR4      ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1335,column 9,is_stmt,isa 0
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$396, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |1335| 
        ; call occurs [#||SysCtl_delay||] ; [] |1335| 
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4097)        ; [CPU_ALU] |4540| 
        ORB       AL,#0x0c              ; [CPU_ALU] |4540| 
        MOV       *(0:0x4097),AL        ; [CPU_ALU] |4540| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x4197)        ; [CPU_ALU] |4540| 
        ORB       AL,#0x0c              ; [CPU_ALU] |4540| 
        MOV       *(0:0x4197),AL        ; [CPU_ALU] |4540| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x4297)        ; [CPU_ALU] |4540| 
        ORB       AL,#0x0c              ; [CPU_ALU] |4540| 
        MOV       *(0:0x4297),AL        ; [CPU_ALU] |4540| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c83)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5c83),AL        ; [CPU_ALU] |779| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5cc3)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5cc3),AL        ; [CPU_ALU] |779| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5ca3)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5ca3),AL        ; [CPU_ALU] |779| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5d23)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5d23),AL        ; [CPU_ALU] |779| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c83)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5c83),AL        ; [CPU_ALU] |809| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5cc3)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5cc3),AL        ; [CPU_ALU] |809| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5ca3)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5ca3),AL        ; [CPU_ALU] |809| 
 EDIS
 EALLOW
        MOV       AL,*(0:0x5d23)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5d23),AL        ; [CPU_ALU] |809| 
 EDIS
||$C$L55||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1360,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A2||          ; [CPU_ARAU] |1360| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      @||A_Task_Ptr||,XAR4  ; [CPU_ALU] |1360| 
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$393, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$393, DW_AT_TI_end_line(0x552)
	.dwattr $C$DW$393, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$393

	.sect	".text:A0"
	.clink
	.global	||A0||

$C$DW$398	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$398, DW_AT_name("A0")
	.dwattr $C$DW$398, DW_AT_low_pc(||A0||)
	.dwattr $C$DW$398, DW_AT_high_pc(0x00)
	.dwattr $C$DW$398, DW_AT_linkage_name("A0")
	.dwattr $C$DW$398, DW_AT_external
	.dwattr $C$DW$398, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$398, DW_AT_decl_line(0x4d5)
	.dwattr $C$DW$398, DW_AT_decl_column(0x06)
	.dwattr $C$DW$398, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1238,column 1,is_stmt,address ||A0||,isa 0

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
        B         ||$C$L56||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||A_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1245,column 9,is_stmt,isa 0
        MOVL      XAR7,@||A_Task_Ptr||  ; [CPU_ALU] |1245| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1245,column 9,is_stmt,isa 0
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_TI_call
	.dwattr $C$DW$399, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |1245| 
        ; call occurs [XAR7] ; [] |1245| 
        MOVW      DP,#||vTimer0||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1248,column 9,is_stmt,isa 0
        INC       @||vTimer0||          ; [CPU_ALU] |1248| 
        MOVW      DP,#||serialCommsTimer|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1249,column 9,is_stmt,isa 0
        INC       @||serialCommsTimer|| ; [CPU_ALU] |1249| 
||$C$L56||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1252,column 5,is_stmt,isa 0
        MOVL      XAR4,#||B0||          ; [CPU_ARAU] |1252| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |1252| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$398, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$398, DW_AT_TI_end_line(0x4e5)
	.dwattr $C$DW$398, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$398

	.sect	".text:B0"
	.clink
	.global	||B0||

$C$DW$401	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$401, DW_AT_name("B0")
	.dwattr $C$DW$401, DW_AT_low_pc(||B0||)
	.dwattr $C$DW$401, DW_AT_high_pc(0x00)
	.dwattr $C$DW$401, DW_AT_linkage_name("B0")
	.dwattr $C$DW$401, DW_AT_external
	.dwattr $C$DW$401, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$401, DW_AT_decl_line(0x4e7)
	.dwattr $C$DW$401, DW_AT_decl_column(0x06)
	.dwattr $C$DW$401, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1256,column 1,is_stmt,address ||B0||,isa 0

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
        B         ||$C$L57||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||B_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1263,column 9,is_stmt,isa 0
        MOVL      XAR7,@||B_Task_Ptr||  ; [CPU_ALU] |1263| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1263,column 9,is_stmt,isa 0
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_TI_call
	.dwattr $C$DW$402, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |1263| 
        ; call occurs [XAR7] ; [] |1263| 
        MOVW      DP,#||vTimer1||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1266,column 9,is_stmt,isa 0
        INC       @||vTimer1||          ; [CPU_ALU] |1266| 
||$C$L57||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1269,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C0||          ; [CPU_ARAU] |1269| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |1269| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$401, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$401, DW_AT_TI_end_line(0x4f6)
	.dwattr $C$DW$401, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$401

	.sect	".text:C0"
	.clink
	.global	||C0||

$C$DW$404	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$404, DW_AT_name("C0")
	.dwattr $C$DW$404, DW_AT_low_pc(||C0||)
	.dwattr $C$DW$404, DW_AT_high_pc(0x00)
	.dwattr $C$DW$404, DW_AT_linkage_name("C0")
	.dwattr $C$DW$404, DW_AT_external
	.dwattr $C$DW$404, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$404, DW_AT_decl_line(0x4f8)
	.dwattr $C$DW$404, DW_AT_decl_column(0x06)
	.dwattr $C$DW$404, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1273,column 1,is_stmt,address ||C0||,isa 0

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
        B         ||$C$L58||,NTC        ; [CPU_ALU] |401| 
        ; branchcc occurs ; [] |401| 
        MOVW      DP,#||C_Task_Ptr||    ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1280,column 9,is_stmt,isa 0
        MOVL      XAR7,@||C_Task_Ptr||  ; [CPU_ALU] |1280| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 169,column 5,is_stmt,isa 0
        OR        AL,#0x8000            ; [CPU_ALU] |169| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |169| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1280,column 9,is_stmt,isa 0
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_TI_call
	.dwattr $C$DW$405, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |1280| 
        ; call occurs [XAR7] ; [] |1280| 
        MOVW      DP,#||vTimer2||       ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1282,column 9,is_stmt,isa 0
        INC       @||vTimer2||          ; [CPU_ALU] |1282| 
||$C$L58||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1285,column 5,is_stmt,isa 0
        MOVL      XAR4,#||A0||          ; [CPU_ARAU] |1285| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
        MOVL      @||Alpha_State_Ptr||,XAR4 ; [CPU_ALU] |1285| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$404, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$404, DW_AT_TI_end_line(0x506)
	.dwattr $C$DW$404, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$404

	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$407	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$407, DW_AT_name("main")
	.dwattr $C$DW$407, DW_AT_low_pc(||main||)
	.dwattr $C$DW$407, DW_AT_high_pc(0x00)
	.dwattr $C$DW$407, DW_AT_linkage_name("main")
	.dwattr $C$DW$407, DW_AT_external
	.dwattr $C$DW$407, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$407, DW_AT_decl_line(0x268)
	.dwattr $C$DW$407, DW_AT_decl_column(0x06)
	.dwattr $C$DW$407, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 617,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||

;***************************************************************
;* FNAME: main                          FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto, 14 SOE     *
;***************************************************************

||main||:
;* R1    assigned to $O$C8
;* R7    assigned to $O$C9
;* R2    assigned to $O$C10
;* R3    assigned to $O$v5
;* R4    assigned to $O$v4
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AL    assigned to $O$R4
;* AL    assigned to $O$R5
;* AL    assigned to $O$R7
;* R0    assigned to vdc
$C$DW$408	.dwtag  DW_TAG_variable
	.dwattr $C$DW$408, DW_AT_name("vdc")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x2b]

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
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 12
	.dwcfi	cfa_offset, -14
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 14
	.dwcfi	cfa_offset, -16
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -20
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 621,column 5,is_stmt,isa 0
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("Device_init")
	.dwattr $C$DW$409, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |621| 
        ; call occurs [#||Device_init||] ; [] |621| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 626,column 5,is_stmt,isa 0
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$410, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |626| 
        ; call occurs [#||Device_initGPIO||] ; [] |626| 
        MOVW      DP,#||enableFlag||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 629,column 5,is_stmt,isa 0
        MOVB      @||enableFlag||,#1,UNC ; [CPU_ALU] |629| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 632,column 11,is_stmt,isa 0
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |632| 
        B         ||$C$L60||,NEQ        ; [CPU_ALU] |632| 
        ; branchcc occurs ; [] |632| 
||$C$L59||:    
        MOV       AL,@||enableFlag||    ; [CPU_ALU] |632| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 634,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |634| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 632,column 11,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |632| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |632| 
        ; branchcc occurs ; [] |632| 
||$C$L60||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 638,column 11,is_stmt,isa 0
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$411, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |638| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |638| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |638| 
        MOVB      ACC,#7                ; [CPU_ALU] |638| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |638| 
        B         ||$C$L62||,EQ         ; [CPU_ALU] |638| 
        ; branchcc occurs ; [] |638| 
||$C$L61||:    
        MOVW      DP,#||backTicker||    ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 640,column 9,is_stmt,isa 0
        INC       @||backTicker||       ; [CPU_ALU] |640| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 638,column 11,is_stmt,isa 0
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("FCL_getSwVersion")
	.dwattr $C$DW$412, DW_AT_TI_call

        LCR       #||FCL_getSwVersion|| ; [CPU_ALU] |638| 
        ; call occurs [#||FCL_getSwVersion||] ; [] |638| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |638| 
        MOVB      ACC,#7                ; [CPU_ALU] |638| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |638| 
        B         ||$C$L61||,NEQ        ; [CPU_ALU] |638| 
        ; branchcc occurs ; [] |638| 
||$C$L62||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 647,column 5,is_stmt,isa 0
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$413, DW_AT_TI_call

        LCR       #||Interrupt_initModule|| ; [CPU_ALU] |647| 
        ; call occurs [#||Interrupt_initModule||] ; [] |647| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 653,column 5,is_stmt,isa 0
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$414, DW_AT_TI_call

        LCR       #||Interrupt_initVectorTable|| ; [CPU_ALU] |653| 
        ; call occurs [#||Interrupt_initVectorTable||] ; [] |653| 
        MOVW      DP,#||isrTicker||     ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 659,column 9,is_stmt,isa 0
        MOVIZ     R1H,#16384            ; [CPU_FPU] |659| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 701,column 5,is_stmt,isa 0
        MOVL      XAR4,#10000           ; [CPU_ARAU] |701| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 671,column 5,is_stmt,isa 0
        UI32TOF32 R0H,@||isrTicker||    ; [CPU_FPU] |671| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 701,column 5,is_stmt,isa 0
        MOV       ACC,#3072             ; [CPU_ALU] |701| 
        MOVW      DP,#||dlogCh1||       ; [CPU_ARAU] 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |701| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 659,column 9,is_stmt,isa 0
        MOV32     @||dlogCh1||,R1H      ; [CPU_FPU] |659| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 671,column 5,is_stmt,isa 0
        MOV32     @||dlogCh2||,R0H      ; [CPU_FPU] |671| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 701,column 5,is_stmt,isa 0
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("setupCpuTimer")
	.dwattr $C$DW$415, DW_AT_TI_call

        LCR       #||setupCpuTimer||    ; [CPU_ALU] |701| 
        ; call occurs [#||setupCpuTimer||] ; [] |701| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 702,column 5,is_stmt,isa 0
        MOVL      XAR4,#20000           ; [CPU_ARAU] |702| 
        MOV       ACC,#3080             ; [CPU_ALU] |702| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |702| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("setupCpuTimer")
	.dwattr $C$DW$416, DW_AT_TI_call

        LCR       #||setupCpuTimer||    ; [CPU_ALU] |702| 
        ; call occurs [#||setupCpuTimer||] ; [] |702| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 703,column 5,is_stmt,isa 0
        MOVL      XAR4,#30000           ; [CPU_ARAU] |703| 
        MOV       ACC,#3088             ; [CPU_ALU] |703| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |703| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("setupCpuTimer")
	.dwattr $C$DW$417, DW_AT_TI_call

        LCR       #||setupCpuTimer||    ; [CPU_ALU] |703| 
        ; call occurs [#||setupCpuTimer||] ; [] |703| 
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 706,column 5,is_stmt,isa 0
        MOVL      XAR7,#||A0||          ; [CPU_ARAU] |706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 707,column 5,is_stmt,isa 0
        MOVL      XAR6,#||A1||          ; [CPU_ARAU] |707| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 708,column 5,is_stmt,isa 0
        MOVL      XAR5,#||B1||          ; [CPU_ARAU] |708| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 709,column 5,is_stmt,isa 0
        MOVL      XAR4,#||C1||          ; [CPU_ARAU] |709| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 706,column 5,is_stmt,isa 0
        MOVL      @||Alpha_State_Ptr||,XAR7 ; [CPU_ALU] |706| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 707,column 5,is_stmt,isa 0
        MOVL      @||A_Task_Ptr||,XAR6  ; [CPU_ALU] |707| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 708,column 5,is_stmt,isa 0
        MOVL      @||B_Task_Ptr||,XAR5  ; [CPU_ALU] |708| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 709,column 5,is_stmt,isa 0
        MOVL      @||C_Task_Ptr||,XAR4  ; [CPU_ALU] |709| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 716,column 5,is_stmt,isa 0
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("configureGPIO")
	.dwattr $C$DW$418, DW_AT_TI_call

        LCR       #||configureGPIO||    ; [CPU_ALU] |716| 
        ; call occurs [#||configureGPIO||] ; [] |716| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2810,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7942)       ; [CPU_FPU] |2810| 
        ORB       AL,#0x01              ; [CPU_ALU] |2810| 
        MOV32     *(0:0x7942),ACC       ; [CPU_FPU] |2810| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 725,column 5,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |725| 
        MOV       AH,#6657              ; [CPU_ALU] |725| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$419, DW_AT_TI_call

        LCR       #||XBAR_setOutputMuxConfig|| ; [CPU_ALU] |725| 
        ; call occurs [#||XBAR_setOutputMuxConfig||] ; [] |725| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 656,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7aac)       ; [CPU_FPU] |656| 
        OR        AL,#8192              ; [CPU_ALU] |656| 
        MOV32     *(0:0x7aac),ACC       ; [CPU_FPU] |656| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 729,column 5,is_stmt,isa 0
        MOVL      XAR4,#398851          ; [CPU_ARAU] |729| 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      ACC,XAR4              ; [CPU_ALU] |729| 
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$420, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |729| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |729| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 734,column 5,is_stmt,isa 0
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("configurePWM")
	.dwattr $C$DW$421, DW_AT_TI_call

        LCR       #||configurePWM||     ; [CPU_ALU] |734| 
        ; call occurs [#||configurePWM||] ; [] |734| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 739,column 5,is_stmt,isa 0
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_name("configureSDFM")
	.dwattr $C$DW$422, DW_AT_TI_call

        LCR       #||configureSDFM||    ; [CPU_ALU] |739| 
        ; call occurs [#||configureSDFM||] ; [] |739| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 744,column 5,is_stmt,isa 0
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_name("configureADC")
	.dwattr $C$DW$423, DW_AT_TI_call

        LCR       #||configureADC||     ; [CPU_ALU] |744| 
        ; call occurs [#||configureADC||] ; [] |744| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 755,column 5,is_stmt,isa 0
        MOVL      XAR5,#2848            ; [CPU_ARAU] |755| 
        MOVL      XAR4,#29696           ; [CPU_ARAU] |755| 
        MOVL      *-SP[2],XAR5          ; [CPU_ALU] |755| 
        MOV       ACC,#2816             ; [CPU_ALU] |755| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |755| 
        MOVB      XAR5,#0               ; [CPU_ALU] |755| 
        MOVB      XAR4,#0               ; [CPU_ALU] |755| 
$C$DW$424	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$424, DW_AT_low_pc(0x00)
	.dwattr $C$DW$424, DW_AT_name("FCL_initADC")
	.dwattr $C$DW$424, DW_AT_TI_call

        LCR       #||FCL_initADC||      ; [CPU_ALU] |755| 
        ; call occurs [#||FCL_initADC||] ; [] |755| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 764,column 5,is_stmt,isa 0
        MOVL      XAR5,#16640           ; [CPU_ARAU] |764| 
        MOVL      XAR4,#16896           ; [CPU_ARAU] |764| 
        MOV       ACC,#16384            ; [CPU_ALU] |764| 
        MOVL      *-SP[2],XAR5          ; [CPU_ALU] |764| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |764| 
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_name("FCL_initPWM")
	.dwattr $C$DW$425, DW_AT_TI_call

        LCR       #||FCL_initPWM||      ; [CPU_ALU] |764| 
        ; call occurs [#||FCL_initPWM||] ; [] |764| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 769,column 5,is_stmt,isa 0
        MOV       ACC,#20736            ; [CPU_ALU] |769| 
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_name("FCL_initQEP")
	.dwattr $C$DW$426, DW_AT_TI_call

        LCR       #||FCL_initQEP||      ; [CPU_ALU] |769| 
        ; call occurs [#||FCL_initQEP||] ; [] |769| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 772,column 5,is_stmt,isa 0
$C$DW$427	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$427, DW_AT_low_pc(0x00)
	.dwattr $C$DW$427, DW_AT_name("initFCLVars")
	.dwattr $C$DW$427, DW_AT_TI_call

        LCR       #||initFCLVars||      ; [CPU_ALU] |772| 
        ; call occurs [#||initFCLVars||] ; [] |772| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5175,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |5175| 
        AND       AL,#0xf8ff            ; [CPU_ALU] |5175| 
        OR        AL,#0x0200            ; [CPU_ALU] |5175| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |5175| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a6)        ; [CPU_ALU] |5287| 
        ORB       AL,#0x20              ; [CPU_ALU] |5287| 
        MOV       *(0:0x40a6),AL        ; [CPU_ALU] |5287| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x40b0)        ; [CPU_ALU] |5293| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |5293| 
        ORB       AL,#0x01              ; [CPU_ALU] |5293| 
        MOV       *(0:0x40b0),AL        ; [CPU_ALU] |5293| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5071,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |5071| 
        OR        AL,#0x0800            ; [CPU_ALU] |5071| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |5071| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 801,column 5,is_stmt,isa 0
$C$DW$428	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$428, DW_AT_low_pc(0x00)
	.dwattr $C$DW$428, DW_AT_name("configureDAC")
	.dwattr $C$DW$428, DW_AT_TI_call

        LCR       #||configureDAC||     ; [CPU_ALU] |801| 
        ; call occurs [#||configureDAC||] ; [] |801| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 809,column 5,is_stmt,isa 0
$C$DW$429	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$429, DW_AT_low_pc(0x00)
	.dwattr $C$DW$429, DW_AT_name("configurePositionSensing")
	.dwattr $C$DW$429, DW_AT_TI_call

        LCR       #||configurePositionSensing|| ; [CPU_ALU] |809| 
        ; call occurs [#||configurePositionSensing||] ; [] |809| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 817,column 5,is_stmt,isa 0
$C$DW$430	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$430, DW_AT_low_pc(0x00)
	.dwattr $C$DW$430, DW_AT_name("configureHVDMCProtection")
	.dwattr $C$DW$430, DW_AT_TI_call

        LCR       #||configureHVDMCProtection|| ; [CPU_ALU] |817| 
        ; call occurs [#||configureHVDMCProtection||] ; [] |817| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2882,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2882| 
        MOVL      XAR4,#381812          ; [CPU_ARAU] |2882| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2882| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 829,column 5,is_stmt,isa 0
$C$DW$431	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$431, DW_AT_low_pc(0x00)
	.dwattr $C$DW$431, DW_AT_name("configureCLA")
	.dwattr $C$DW$431, DW_AT_TI_call

        LCR       #||configureCLA||     ; [CPU_ALU] |829| 
        ; call occurs [#||configureCLA||] ; [] |829| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 833,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |833| 
        MOVB      AH,#36                ; [CPU_ALU] |833| 
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$432, DW_AT_TI_call

        LCR       #||CLA_setTriggerSource|| ; [CPU_ALU] |833| 
        ; call occurs [#||CLA_setTriggerSource||] ; [] |833| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 594,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5118)        ; [CPU_ALU] |594| 
        OR        AL,#0x0800            ; [CPU_ALU] |594| 
        MOV       *(0:0x5118),AL        ; [CPU_ALU] |594| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 856,column 5,is_stmt,isa 0
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_name("configurePIControllers")
	.dwattr $C$DW$433, DW_AT_TI_call

        LCR       #||configurePIControllers|| ; [CPU_ALU] |856| 
        ; call occurs [#||configurePIControllers||] ; [] |856| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 857,column 5,is_stmt,isa 0
$C$DW$434	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$434, DW_AT_low_pc(0x00)
	.dwattr $C$DW$434, DW_AT_name("FCL_resetController")
	.dwattr $C$DW$434, DW_AT_TI_call

        LCR       #||FCL_resetController|| ; [CPU_ALU] |857| 
        ; call occurs [#||FCL_resetController||] ; [] |857| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 861,column 5,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |861| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 862,column 5,is_stmt,isa 0
        ZERO      R6H                   ; [CPU_FPU] |862| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 868,column 5,is_stmt,isa 0
        ZERO      R5H                   ; [CPU_FPU] |868| 
        MOVW      DP,#||T||             ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 867,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15692            ; [CPU_FPU] |867| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 873,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15605            ; [CPU_FPU] |873| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 860,column 5,is_stmt,isa 0
        MOV32     R4H,@||T||            ; [CPU_FPU] |860| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 863,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16256            ; [CPU_FPU] |863| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 864,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16256            ; [CPU_FPU] |864| 
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 877,column 5,is_stmt,isa 0
        MOV       @||lsw||,#0           ; [CPU_ALU] |877| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 867,column 5,is_stmt,isa 0
        MOVXI     R1H,#52429            ; [CPU_FPU] |867| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 888,column 5,is_stmt,isa 0
        MOVL      XAR4,#||dlog_4ch1||   ; [CPU_ARAU] |888| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 873,column 5,is_stmt,isa 0
        MOVXI     R0H,#49807            ; [CPU_FPU] |873| 
        MOVW      DP,#||runMotor||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 860,column 5,is_stmt,isa 0
        MPYF32    R4H,R4H,#17274        ; [CPU_FPU] |860| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 878,column 5,is_stmt,isa 0
        MOVB      @||runMotor||,#1,UNC  ; [CPU_ALU] |878| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 879,column 5,is_stmt,isa 0
        MOV       @||ledCnt1||,#0       ; [CPU_ALU] |879| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 880,column 5,is_stmt,isa 0
        MOVB      @||fclClrCntr||,#1,UNC ; [CPU_ALU] |880| 
        MOVW      DP,#||rg1||+4         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 861,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||rg1||)+4,R7H ; [CPU_FPU] |861| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 862,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||rg1||)+8,R6H ; [CPU_FPU] |862| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 863,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||rg1||)+6,R3H ; [CPU_FPU] |863| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 864,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||rg1||)+10,R2H ; [CPU_FPU] |864| 
        MOVW      DP,#||speedRef||      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 867,column 5,is_stmt,isa 0
        MOV32     @||speedRef||,R1H     ; [CPU_FPU] |867| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 868,column 5,is_stmt,isa 0
        MOV32     @||IdRef||,R5H        ; [CPU_FPU] |868| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 873,column 5,is_stmt,isa 0
        MOV32     @||IqRef||,R0H        ; [CPU_FPU] |873| 
        MOVW      DP,#||rg1||+2         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 860,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||rg1||)+2,R4H ; [CPU_FPU] |860| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 888,column 5,is_stmt,isa 0
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$435, DW_AT_TI_call

        LCR       #||DLOG_4CH_F_init||  ; [CPU_ALU] |888| 
        ; call occurs [#||DLOG_4CH_F_init||] ; [] |888| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 889,column 5,is_stmt,isa 0
        MOVL      XAR3,#||dlogCh1||     ; [CPU_ARAU] |889| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 890,column 5,is_stmt,isa 0
        MOVL      XAR2,#||dlogCh2||     ; [CPU_ARAU] |890| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 891,column 5,is_stmt,isa 0
        MOVL      XAR1,#||dlogCh3||     ; [CPU_ARAU] |891| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4777,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4aa4)        ; [CPU_ALU] |4777| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 899,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15395            ; [CPU_FPU] |899| 
        MOVW      DP,#||dlog_4ch1||+23  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4777,column 9,is_stmt,isa 0
        AND       AL,#0xffbf            ; [CPU_ALU] |4777| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 892,column 5,is_stmt,isa 0
        MOVL      XAR0,#||dlogCh4||     ; [CPU_ARAU] |892| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 893,column 5,is_stmt,isa 0
        MOVL      XAR7,#||DBUFF_4CH1||  ; [CPU_ARAU] |893| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 894,column 5,is_stmt,isa 0
        MOVL      XAR6,#||DBUFF_4CH2||  ; [CPU_ARAU] |894| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 895,column 5,is_stmt,isa 0
        MOVL      XAR5,#||DBUFF_4CH3||  ; [CPU_ARAU] |895| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4777,column 9,is_stmt,isa 0
        MOV       *(0:0x4aa4),AL        ; [CPU_ALU] |4777| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 896,column 5,is_stmt,isa 0
        MOVL      XAR4,#||DBUFF_4CH4||  ; [CPU_ARAU] |896| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 899,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |899| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aa4)        ; [CPU_ALU] |4787| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |4787| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 897,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+23,#200,UNC ; [CPU_ALU] |897| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 898,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+21,#5,UNC ; [CPU_ALU] |898| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 900,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||dlog_4ch1||)+20,#2,UNC ; [CPU_ALU] |900| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        ORB       AL,#0x04              ; [CPU_ALU] |4787| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 889,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||),XAR3 ; [CPU_ALU] |889| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 890,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+2,XAR2 ; [CPU_ALU] |890| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 891,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+4,XAR1 ; [CPU_ALU] |891| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 892,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+6,XAR0 ; [CPU_ALU] |892| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 893,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+8,XAR7 ; [CPU_ALU] |893| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 894,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+10,XAR6 ; [CPU_ALU] |894| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 895,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+12,XAR5 ; [CPU_ALU] |895| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 896,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||dlog_4ch1||)+14,XAR4 ; [CPU_ALU] |896| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        MOV       *(0:0x4aa4),AL        ; [CPU_ALU] |4787| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 899,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||dlog_4ch1||)+18,R0H ; [CPU_FPU] |899| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4817,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aa6)        ; [CPU_ALU] |4817| 
        ORB       AL,#0x10              ; [CPU_ALU] |4817| 
        MOV       *(0:0x4aa6),AL        ; [CPU_ALU] |4817| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4818,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aae)        ; [CPU_ALU] |4818| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |4818| 
        ORB       AL,#0x01              ; [CPU_ALU] |4818| 
        MOV       *(0:0x4aae),AL        ; [CPU_ALU] |4818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4683,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aa4)        ; [CPU_ALU] |4683| 
        ORB       AL,#0x08              ; [CPU_ALU] |4683| 
        MOV       *(0:0x4aa4),AL        ; [CPU_ALU] |4683| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aaa)        ; [CPU_ALU] |4872| 
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
        MOV       *(0:0x4aaa),AL        ; [CPU_ALU] |4872| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |4787| 
        AND       AL,AL,#0xfff8         ; [CPU_ALU] |4787| 
        ORB       AL,#0x02              ; [CPU_ALU] |4787| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |4787| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4817,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a6)        ; [CPU_ALU] |4817| 
        ORB       AL,#0x10              ; [CPU_ALU] |4817| 
        MOV       *(0:0x40a6),AL        ; [CPU_ALU] |4817| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4818,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40ae)        ; [CPU_ALU] |4818| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |4818| 
        ORB       AL,#0x01              ; [CPU_ALU] |4818| 
        MOV       *(0:0x40ae),AL        ; [CPU_ALU] |4818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4683,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |4683| 
        ORB       AL,#0x08              ; [CPU_ALU] |4683| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |4683| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40aa)        ; [CPU_ALU] |4872| 
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
        MOV       *(0:0x40aa),AL        ; [CPU_ALU] |4872| 
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motorControlISR|| ; [CPU_ARAU] |259| 
        MOV32     *(0:0x0d60),XAR4      ; [CPU_FPU] |259| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1767,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1767| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1767| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1767| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1816,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1816| 
        ORB       AL,#0x40              ; [CPU_ALU] |1816| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1816| 
 EDIS
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1669,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1669| 
        ORB       AL,#0x20              ; [CPU_ALU] |1669| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1669| 
 EDIS
 EALLOW
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
 EDIS
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 967,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |967| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 968,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |968| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 969,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |969| 
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 971,column 9,is_stmt,isa 0
        MOV       @||offsetCalCounter||,#0 ; [CPU_ALU] |971| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 967,column 5,is_stmt,isa 0
        MOV32     R4H,R3H               ; [CPU_FPU] |967| 
        MOVW      DP,#||offset_SDFMV||  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 347,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |347| 
        ORB       AL,#0x08              ; [CPU_ALU] |347| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |347| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 968,column 5,is_stmt,isa 0
        MOV32     @||offset_SDFMV||,R1H ; [CPU_FPU] |968| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 969,column 5,is_stmt,isa 0
        MOV32     @||offset_SDFMW||,R0H ; [CPU_FPU] |969| 
||$C$L63||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aaa)        ; [CPU_ALU] |4872| 
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
        MOV       *(0:0x4aaa),AL        ; [CPU_ALU] |4872| 
||$C$L64||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4847,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4aa8)        ; [CPU_ALU] |4847| 
        TBIT      AL,#0                 ; [CPU_ALU] |4847| 
        B         ||$C$L64||,NTC        ; [CPU_ALU] |4847| 
        ; branchcc occurs ; [] |4847| 
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 978,column 9,is_stmt,isa 0
        CMP       @||offsetCalCounter||,#2000 ; [CPU_ALU] |978| 
        B         ||$C$L65||,LOS        ; [CPU_ALU] |978| 
        ; branchcc occurs ; [] |978| 
        MOVW      DP,#||FCL_params||+4  ; [CPU_ARAU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e16)       ; [CPU_FPU] |833| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 983,column 13,is_stmt,isa 0
        MOV32     R2H,@$BLOCKED(||FCL_params||)+4 ; [CPU_FPU] |983| 
        SFR       ACC,16                ; [CPU_ALU] |983| 
        MOV32     R0H,ACC               ; [CPU_FPU] |983| 
        MOVW      DP,#||K1||            ; [CPU_ARAU] 
        MOV32     R1H,@||K1||           ; [CPU_FPU] |983| 
        MOVW      DP,#||offset_SDFMV||  ; [CPU_ARAU] 
        MOV32     R5H,@||offset_SDFMV|| ; [CPU_FPU] |983| 
        I32TOF32  R6H,R0H               ; [CPU_FPU] |983| 
        MOVW      DP,#||K2||            ; [CPU_ARAU] 
        MPYF32    R6H,R2H,R6H           ; [CPU_FPU] |983| 

        MPYF32    R5H,R1H,R5H           ; [CPU_FPU] |983| 
||      MOV32     R7H,@||K2||           ; [CPU_FPU] |983| 

        MPYF32    R6H,R7H,R6H           ; [CPU_FPU] |983| 
        NOP       ; [CPU_ALU] 
        ADDF32    R5H,R5H,R6H           ; [CPU_FPU] |983| 
        MOVW      DP,#||offset_SDFMV||  ; [CPU_ARAU] 
        MOV32     @||offset_SDFMV||,R5H ; [CPU_FPU] |983| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e26)       ; [CPU_FPU] |833| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 987,column 13,is_stmt,isa 0
        SFR       ACC,16                ; [CPU_ALU] |987| 
        MOV32     R5H,ACC               ; [CPU_FPU] |987| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        I32TOF32  R6H,R5H               ; [CPU_FPU] |987| 
        NOP       ; [CPU_ALU] 

        MPYF32    R2H,R2H,R6H           ; [CPU_FPU] |987| 
||      MOV32     R0H,@||offset_SDFMW|| ; [CPU_FPU] |987| 

        MPYF32    R5H,R1H,R0H           ; [CPU_FPU] |987| 
        MPYF32    R2H,R7H,R2H           ; [CPU_FPU] |987| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |987| 
        NOP       ; [CPU_ALU] 
        MOV32     @||offset_SDFMW||,R2H ; [CPU_FPU] |987| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b00)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1000,column 13,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |1000| 
        MOV32     R2H,ACC               ; [CPU_FPU] |1000| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b20)        ; [CPU_ALU] |923| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1003,column 13,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |1003| 
        MOV32     R6H,ACC               ; [CPU_FPU] |1003| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1000,column 13,is_stmt,isa 0
        UI32TOF32 R5H,R2H               ; [CPU_FPU] |1000| 
        NOP       ; [CPU_ALU] 
        MPYF32    R5H,R7H,R5H           ; [CPU_FPU] |1000| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1003,column 13,is_stmt,isa 0
        UI32TOF32 R2H,R6H               ; [CPU_FPU] |1003| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1000,column 13,is_stmt,isa 0
        MPYF32    R5H,R5H,#14720        ; [CPU_FPU] |1000| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1003,column 13,is_stmt,isa 0
        MPYF32    R0H,R7H,R2H           ; [CPU_FPU] |1003| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1000,column 13,is_stmt,isa 0
        MPYF32    R6H,R4H,R1H           ; [CPU_FPU] |1000| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1003,column 13,is_stmt,isa 0
        MPYF32    R7H,R3H,R1H           ; [CPU_FPU] |1003| 
        MPYF32    R0H,R0H,#14720        ; [CPU_FPU] |1003| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1000,column 13,is_stmt,isa 0
        ADDF32    R4H,R5H,R6H           ; [CPU_FPU] |1000| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1003,column 13,is_stmt,isa 0
        ADDF32    R3H,R0H,R7H           ; [CPU_FPU] |1003| 
||$C$L65||:    
        MOVW      DP,#||offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 971,column 57,is_stmt,isa 0
        INC       @||offsetCalCounter|| ; [CPU_ALU] |971| 
        CMP       @||offsetCalCounter||,#22000 ; [CPU_ALU] |971| 
        B         ||$C$L63||,LO         ; [CPU_ALU] |971| 
        ; branchcc occurs ; [] |971| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 833,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e36)       ; [CPU_FPU] |833| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MPYF32    R1H,R4H,#17792        ; [CPU_FPU] |1545| 
        MPYF32    R0H,R3H,#17792        ; [CPU_FPU] |1545| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MOVIZ     R6H,#15467            ; [CPU_FPU] |488| 
        MOV32     @||offset_lemV||,R4H  ; [CPU_FPU] 
        MOV32     @||offset_lemW||,R3H  ; [CPU_FPU] 
        SFR       ACC,16                ; [CPU_ALU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |1545| 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1545| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1065,column 5,is_stmt,isa 0
        MOVL      XAR4,#3146497         ; [CPU_ARAU] |1065| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MOVXI     R6H,#55644            ; [CPU_FPU] |488| 
        MOV32     R7H,ACC               ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1545,column 5,is_stmt,isa 0
        MOV32     XAR6,R1H              ; [CPU_FPU] |1545| 
        MOV32     XAR7,R0H              ; [CPU_FPU] |1545| 
        MOVW      DP,#||FCL_params||+26 ; [CPU_ARAU] 
        SPM       #0                    ; [CPU_ALU] 
        MOV       *(0:0x7443),AR6       ; [CPU_ALU] |1545| 
        MOV       AL,AR7                ; [CPU_ALU] |1545| 
        MOV       *(0:0x74c3),AL        ; [CPU_ALU] |1545| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        I32TOF32  R1H,R7H               ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40aa)        ; [CPU_ALU] |4872| 
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 488,column 5,is_stmt,isa 0
        MPYF32    R0H,R6H,R1H           ; [CPU_FPU] |488| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       *(0:0x40aa),AL        ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 492,column 9,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |492| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1065,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |1065| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1012,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||FCL_params||)+26,R0H ; [CPU_FPU] |1012| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1065,column 5,is_stmt,isa 0
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$436, DW_AT_TI_call

        LCR       #||Interrupt_enable|| ; [CPU_ALU] |1065| 
        ; call occurs [#||Interrupt_enable||] ; [] |1065| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 325,column 5,is_stmt,isa 0
        OR        IER,#0x0004           ; [CPU_ALU] |325| 
 clrc INTM
 clrc DBGM
||$C$L66||:    
        MOVW      DP,#||Alpha_State_Ptr|| ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1090,column 9,is_stmt,isa 0
        MOVL      XAR7,@||Alpha_State_Ptr|| ; [CPU_ALU] |1090| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_TI_call
	.dwattr $C$DW$437, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |1090| 
        ; call occurs [XAR7] ; [] |1090| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1092,column 5,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |1092| 
        ; branch occurs ; [] |1092| 
	.dwattr $C$DW$407, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$407, DW_AT_TI_end_line(0x445)
	.dwattr $C$DW$407, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$407

	.sect	".text:configurePWM_1chUpDwnCnt"
	.clink
	.global	||configurePWM_1chUpDwnCnt||

$C$DW$438	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$438, DW_AT_name("configurePWM_1chUpDwnCnt")
	.dwattr $C$DW$438, DW_AT_low_pc(||configurePWM_1chUpDwnCnt||)
	.dwattr $C$DW$438, DW_AT_high_pc(0x00)
	.dwattr $C$DW$438, DW_AT_linkage_name("configurePWM_1chUpDwnCnt")
	.dwattr $C$DW$438, DW_AT_external
	.dwattr $C$DW$438, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$438, DW_AT_decl_line(0xdc2)
	.dwattr $C$DW$438, DW_AT_decl_column(0x06)
	.dwattr $C$DW$438, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3523,column 1,is_stmt,address ||configurePWM_1chUpDwnCnt||,isa 0

	.dwfde $C$DW$CIE, ||configurePWM_1chUpDwnCnt||
$C$DW$439	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$439, DW_AT_name("base")
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$439, DW_AT_location[DW_OP_reg0]

$C$DW$440	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$440, DW_AT_name("period")
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$440, DW_AT_location[DW_OP_reg12]

$C$DW$441	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$441, DW_AT_name("db")
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: configurePWM_1chUpDwnCnt      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configurePWM_1chUpDwnCnt||:
;* AR6   assigned to $O$C1
;* AR4   assigned to base
$C$DW$442	.dwtag  DW_TAG_variable
	.dwattr $C$DW$442, DW_AT_name("base")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg12]

;* AL    assigned to period
$C$DW$443	.dwtag  DW_TAG_variable
	.dwattr $C$DW$443, DW_AT_name("period")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to db
$C$DW$444	.dwtag  DW_TAG_variable
	.dwattr $C$DW$444, DW_AT_name("db")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |3523| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR4,ACC              ; [CPU_ALU] |3523| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      XAR1,#99              ; [CPU_ALU] |2182| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 3523,column 1,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |3523| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0008     ; [CPU_ALU] |1766| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOVL      XAR6,XAR4             ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        ADDB      XAR6,#8               ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      XAR0,#107             ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *+XAR4[4],#0          ; [CPU_FPU] |1549| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_FPU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
        MOV       *+XAR4[0],AL          ; [CPU_FPU] |1849| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xe07f     ; [CPU_FPU] |1627| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffb     ; [CPU_FPU] |1818| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xffdf  ; [CPU_FPU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *+XAR4[0],AL          ; [CPU_FPU] |1706| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        AND       *+XAR6[0],#0xf3ec     ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        MOVL      XAR6,XAR4             ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#144,UNC  ; [CPU_ALU] |2915| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        ADDB      XAR6,#12              ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3358| 
        AND       AL,*+XAR4[AR0],#0xffef ; [CPU_ALU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_FPU] |3358| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_FPU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        AND       *+XAR6[0],#0xbfff     ; [CPU_ALU] |3406| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xffdf ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3411| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |3274| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |3323| 
        AND       AL,*+XAR4[AR0],#0xfffb ; [CPU_ALU] |3323| 
        MOVB      XAR0,#12              ; [CPU_ALU] |3323| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3323| 
        MOVB      XAR1,#12              ; [CPU_ALU] |3323| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      XAR0,#83              ; [CPU_ALU] |3696| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      XAR1,#81              ; [CPU_ALU] |3668| 
        MOV       *+XAR4[AR1],AR5       ; [CPU_ALU] |3668| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],AR5       ; [CPU_ALU] |3696| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$438, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$438, DW_AT_TI_end_line(0xde9)
	.dwattr $C$DW$438, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$438

	.sect	".text:angleEstimator_QEP"
	.clink
	.global	||angleEstimator_QEP||

$C$DW$446	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$446, DW_AT_name("angleEstimator_QEP")
	.dwattr $C$DW$446, DW_AT_low_pc(||angleEstimator_QEP||)
	.dwattr $C$DW$446, DW_AT_high_pc(0x00)
	.dwattr $C$DW$446, DW_AT_linkage_name("angleEstimator_QEP")
	.dwattr $C$DW$446, DW_AT_external
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$446, DW_AT_decl_line(0x44e)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$446, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1103,column 1,is_stmt,address ||angleEstimator_QEP||,isa 0

	.dwfde $C$DW$CIE, ||angleEstimator_QEP||

;***************************************************************
;* FNAME: angleEstimator_QEP            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||angleEstimator_QEP||:
;* R0    assigned to angleEstimate
$C$DW$447	.dwtag  DW_TAG_variable
	.dwattr $C$DW$447, DW_AT_name("angleEstimate")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVW      DP,#||lsw||           ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1106,column 5,is_stmt,isa 0
        MOV       AL,@||lsw||           ; [CPU_ALU] |1106| 
        CMPB      AL,#1                 ; [CPU_ALU] |1106| 
        B         ||$C$L69||,EQ         ; [CPU_ALU] |1106| 
        ; branchcc occurs ; [] |1106| 
        CMPB      AL,#2                 ; [CPU_ALU] |1106| 
        B         ||$C$L67||,EQ         ; [CPU_ALU] |1106| 
        ; branchcc occurs ; [] |1106| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1124,column 13,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |1124| 
        MOVW      DP,#||rg1||+8         ; [CPU_ARAU] 
        ZERO      R2H                   ; [CPU_FPU] |1124| 
        ZERO      R1H                   ; [CPU_FPU] |1124| 
        MOV32     @$BLOCKED(||rg1||)+8,R3H ; [CPU_FPU] |1124| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1128,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |1128| 
        MOVW      DP,#||spdObs||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1124,column 13,is_stmt,isa 0
        MOV32     @$BLOCKED(||spdObs||)+6,R2H ; [CPU_FPU] |1124| 
        MOV32     @$BLOCKED(||spdObs||)+2,R1H ; [CPU_FPU] |1124| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1128,column 5,is_stmt,isa 0
        B         ||$C$L70||,UNC        ; [CPU_ALU] |1128| 
        ; branch occurs ; [] |1128| 
||$C$L67||:    
        MOVW      DP,#||spdObs||+6      ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1110,column 13,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||spdObs||)+6 ; [CPU_FPU] |1110| 
        MOVW      DP,#||T||             ; [CPU_ARAU] 
        MOV32     R1H,@||T||            ; [CPU_FPU] |1110| 
        MOVW      DP,#||spdObs||+2      ; [CPU_ARAU] 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |1110| 
        MOV32     R3H,@$BLOCKED(||spdObs||)+2 ; [CPU_FPU] |1110| 
        ADDF32    R0H,R1H,R3H           ; [CPU_FPU] |1110| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1113,column 13,is_stmt,isa 0
        CMPF32    R0H,#16256            ; [CPU_FPU] |1113| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1113| 
        B         ||$C$L68||,LEQ        ; [CPU_ALU] |1113| 
        ; branchcc occurs ; [] |1113| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1128,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,#49024        ; [CPU_FPU] |1128| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |1128| 
        ; branch occurs ; [] |1128| 
||$C$L68||:    
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1113,column 13,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |1113| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1113| 
        B         ||$C$L70||,GEQ        ; [CPU_ALU] |1113| 
        ; branchcc occurs ; [] |1113| 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1128,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,#16256        ; [CPU_FPU] |1128| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |1128| 
        ; branch occurs ; [] |1128| 
||$C$L69||:    
        MOVW      DP,#||rg1||+8         ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_f2837x_tmdxiddk.c",line 1119,column 13,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||rg1||)+8 ; [CPU_FPU] |1119| 
||$C$L70||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$446, DW_AT_TI_end_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$446, DW_AT_TI_end_line(0x469)
	.dwattr $C$DW$446, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$446

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$449	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$449, DW_AT_name("__signbitl")
	.dwattr $C$DW$449, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$449, DW_AT_high_pc(0x00)
	.dwattr $C$DW$449, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$449, DW_AT_external
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$449, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$449, DW_AT_decl_column(0x18)
	.dwattr $C$DW$449, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$450	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$450, DW_AT_name("e")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg12]


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
$C$DW$451	.dwtag  DW_TAG_variable
	.dwattr $C$DW$451, DW_AT_name("e")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg12]

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
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$452, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$453	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$453, DW_AT_low_pc(0x00)
	.dwattr $C$DW$453, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$449, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$449, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$449, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$449

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$454	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$454, DW_AT_name("__signbitf")
	.dwattr $C$DW$454, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$454, DW_AT_high_pc(0x00)
	.dwattr $C$DW$454, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$454, DW_AT_external
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$454, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$454, DW_AT_decl_column(0x18)
	.dwattr $C$DW$454, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$455	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$455, DW_AT_name("f")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$456	.dwtag  DW_TAG_variable
	.dwattr $C$DW$456, DW_AT_name("f")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$457	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$457, DW_AT_low_pc(0x00)
	.dwattr $C$DW$457, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$454, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$454, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$454, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$454

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$458	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$458, DW_AT_name("__signbit")
	.dwattr $C$DW$458, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$458, DW_AT_high_pc(0x00)
	.dwattr $C$DW$458, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$458, DW_AT_external
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$458, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$458, DW_AT_decl_column(0x18)
	.dwattr $C$DW$458, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$459	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$459, DW_AT_name("d")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg12]


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
$C$DW$460	.dwtag  DW_TAG_variable
	.dwattr $C$DW$460, DW_AT_name("d")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_reg12]

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
$C$DW$461	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$461, DW_AT_low_pc(0x00)
	.dwattr $C$DW$461, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$461, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$458, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$458, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$458, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$458

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$463	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$463, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$463, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$463, DW_AT_high_pc(0x00)
	.dwattr $C$DW$463, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$463, DW_AT_external
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$463, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x108)
	.dwattr $C$DW$463, DW_AT_decl_column(0x10)
	.dwattr $C$DW$463, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$464	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$464, DW_AT_name("x")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$465	.dwtag  DW_TAG_variable
	.dwattr $C$DW$465, DW_AT_name("x")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$463, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$463, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$463, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$463

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$467	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$467, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$467, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$467, DW_AT_high_pc(0x00)
	.dwattr $C$DW$467, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$467, DW_AT_external
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$467, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$467, DW_AT_decl_column(0x10)
	.dwattr $C$DW$467, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$468	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$468, DW_AT_name("y")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$469	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$469, DW_AT_name("x")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$470	.dwtag  DW_TAG_variable
	.dwattr $C$DW$470, DW_AT_name("y")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$471	.dwtag  DW_TAG_variable
	.dwattr $C$DW$471, DW_AT_name("x")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$467, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$467, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$467, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$467

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$473	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$473, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$473, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$473, DW_AT_high_pc(0x00)
	.dwattr $C$DW$473, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$473, DW_AT_external
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$473, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$473, DW_AT_decl_column(0x10)
	.dwattr $C$DW$473, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$474	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$474, DW_AT_name("x")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$475	.dwtag  DW_TAG_variable
	.dwattr $C$DW$475, DW_AT_name("x")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$473, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$473, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$473, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$473

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$477	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$477, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$477, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$477, DW_AT_high_pc(0x00)
	.dwattr $C$DW$477, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$477, DW_AT_external
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$477, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x112)
	.dwattr $C$DW$477, DW_AT_decl_column(0x10)
	.dwattr $C$DW$477, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$478	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$478, DW_AT_name("x")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$479	.dwtag  DW_TAG_variable
	.dwattr $C$DW$479, DW_AT_name("x")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$480	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$480, DW_AT_low_pc(0x00)
	.dwattr $C$DW$480, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$477, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$477, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$477, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$477

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$481	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$481, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$481, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$481, DW_AT_high_pc(0x00)
	.dwattr $C$DW$481, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$481, DW_AT_external
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$481, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x117)
	.dwattr $C$DW$481, DW_AT_decl_column(0x10)
	.dwattr $C$DW$481, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$482	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$482, DW_AT_name("y")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$483	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$483, DW_AT_name("x")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$484	.dwtag  DW_TAG_variable
	.dwattr $C$DW$484, DW_AT_name("y")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$485	.dwtag  DW_TAG_variable
	.dwattr $C$DW$485, DW_AT_name("x")
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$485, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$481, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$481, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$481, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$481

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$487	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$487, DW_AT_name("__isnormall")
	.dwattr $C$DW$487, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$487, DW_AT_high_pc(0x00)
	.dwattr $C$DW$487, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$487, DW_AT_external
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$487, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x167)
	.dwattr $C$DW$487, DW_AT_decl_column(0x18)
	.dwattr $C$DW$487, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$488	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$488, DW_AT_name("e")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg12]


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
$C$DW$489	.dwtag  DW_TAG_variable
	.dwattr $C$DW$489, DW_AT_name("e")
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg12]

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
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$490, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L71||,EQ         ; [CPU_ALU] |360| 
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
||$C$L71||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |360| 
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$487, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$487, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$487, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$487

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$492	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$492, DW_AT_name("__isnormalf")
	.dwattr $C$DW$492, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$492, DW_AT_high_pc(0x00)
	.dwattr $C$DW$492, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$492, DW_AT_external
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$492, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x163)
	.dwattr $C$DW$492, DW_AT_decl_column(0x18)
	.dwattr $C$DW$492, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$493	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$493, DW_AT_name("f")
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$494	.dwtag  DW_TAG_variable
	.dwattr $C$DW$494, DW_AT_name("f")
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        B         ||$C$L72||,EQ         ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |356| 
||$C$L72||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$492, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$492, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$492, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$492

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$496	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$496, DW_AT_name("__isnormal")
	.dwattr $C$DW$496, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$496, DW_AT_high_pc(0x00)
	.dwattr $C$DW$496, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$496, DW_AT_external
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$496, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$496, DW_AT_decl_column(0x18)
	.dwattr $C$DW$496, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$497	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$497, DW_AT_name("d")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_reg12]


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
$C$DW$498	.dwtag  DW_TAG_variable
	.dwattr $C$DW$498, DW_AT_name("d")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_reg12]

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
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$499, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L73||,EQ         ; [CPU_ALU] |352| 
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
||$C$L73||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |352| 
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$496, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$496, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$496, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$496

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$501	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$501, DW_AT_name("__isnanl")
	.dwattr $C$DW$501, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$501, DW_AT_high_pc(0x00)
	.dwattr $C$DW$501, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$501, DW_AT_external
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$501, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$501, DW_AT_decl_column(0x18)
	.dwattr $C$DW$501, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$502	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$502, DW_AT_name("e")
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$502, DW_AT_location[DW_OP_reg12]


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
$C$DW$503	.dwtag  DW_TAG_variable
	.dwattr $C$DW$503, DW_AT_name("e")
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$503, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L74||,NEQ        ; [CPU_ALU] |348| 
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
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$504, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L74||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$501, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$501, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$501, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$501

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$506	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$506, DW_AT_name("__isnanf")
	.dwattr $C$DW$506, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$506, DW_AT_high_pc(0x00)
	.dwattr $C$DW$506, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$506, DW_AT_external
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$506, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x158)
	.dwattr $C$DW$506, DW_AT_decl_column(0x18)
	.dwattr $C$DW$506, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$507	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$507, DW_AT_name("f")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$508	.dwtag  DW_TAG_variable
	.dwattr $C$DW$508, DW_AT_name("f")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |345| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |345| 
        MOVZ      AR7,AL                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOV       ACC,#32640            ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L75||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,P                 ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |345| 
||$C$L75||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
$C$DW$509	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$509, DW_AT_low_pc(0x00)
	.dwattr $C$DW$509, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$506, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$506, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$506, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$506

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$510	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$510, DW_AT_name("__isnan")
	.dwattr $C$DW$510, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$510, DW_AT_high_pc(0x00)
	.dwattr $C$DW$510, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$510, DW_AT_external
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$510, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x155)
	.dwattr $C$DW$510, DW_AT_decl_column(0x18)
	.dwattr $C$DW$510, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$511	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$511, DW_AT_name("d")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_reg12]


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
$C$DW$512	.dwtag  DW_TAG_variable
	.dwattr $C$DW$512, DW_AT_name("d")
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$512, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |342| 
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
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$513, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L76||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$510, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$510, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$510, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$510

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$515	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$515, DW_AT_name("__isinfl")
	.dwattr $C$DW$515, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$515, DW_AT_high_pc(0x00)
	.dwattr $C$DW$515, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$515, DW_AT_external
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$515, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$515, DW_AT_decl_column(0x18)
	.dwattr $C$DW$515, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$516	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$516, DW_AT_name("e")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg12]


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
$C$DW$517	.dwtag  DW_TAG_variable
	.dwattr $C$DW$517, DW_AT_name("e")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L77||,NEQ        ; [CPU_ALU] |379| 
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
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$518, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L77||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$515, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$515, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$515, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$515

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$520	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$520, DW_AT_name("__isinff")
	.dwattr $C$DW$520, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$520, DW_AT_high_pc(0x00)
	.dwattr $C$DW$520, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$520, DW_AT_external
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$520, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x176)
	.dwattr $C$DW$520, DW_AT_decl_column(0x18)
	.dwattr $C$DW$520, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$521	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$521, DW_AT_name("f")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$522	.dwtag  DW_TAG_variable
	.dwattr $C$DW$522, DW_AT_name("f")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |375| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |375| 
        MOVZ      AR7,AL                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOV       ACC,#32640            ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L78||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,P                 ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |375| 
||$C$L78||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$520, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$520, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$520, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$520

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$524	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$524, DW_AT_name("__isinf")
	.dwattr $C$DW$524, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$524, DW_AT_high_pc(0x00)
	.dwattr $C$DW$524, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$524, DW_AT_external
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$524, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x178)
	.dwattr $C$DW$524, DW_AT_decl_column(0x18)
	.dwattr $C$DW$524, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$525	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$525, DW_AT_name("d")
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$525, DW_AT_location[DW_OP_reg12]


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
$C$DW$526	.dwtag  DW_TAG_variable
	.dwattr $C$DW$526, DW_AT_name("d")
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$526, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L79||,NEQ        ; [CPU_ALU] |377| 
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
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$527, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L79||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$524, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$524, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$524, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$524

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$529	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$529, DW_AT_name("__isfinitel")
	.dwattr $C$DW$529, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$529, DW_AT_high_pc(0x00)
	.dwattr $C$DW$529, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$529, DW_AT_external
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$529, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x152)
	.dwattr $C$DW$529, DW_AT_decl_column(0x18)
	.dwattr $C$DW$529, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$530	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$530, DW_AT_name("e")
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$530, DW_AT_location[DW_OP_reg12]


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
$C$DW$531	.dwtag  DW_TAG_variable
	.dwattr $C$DW$531, DW_AT_name("e")
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$531, DW_AT_location[DW_OP_reg12]

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
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$529, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$529, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$529, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$529

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$533	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$533, DW_AT_name("__isfinitef")
	.dwattr $C$DW$533, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$533, DW_AT_high_pc(0x00)
	.dwattr $C$DW$533, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$533, DW_AT_external
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$533, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x150)
	.dwattr $C$DW$533, DW_AT_decl_column(0x18)
	.dwattr $C$DW$533, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$534	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$534, DW_AT_name("f")
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$534, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$535	.dwtag  DW_TAG_variable
	.dwattr $C$DW$535, DW_AT_name("f")
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$535, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$533, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$533, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$533, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$533

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$537	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$537, DW_AT_name("__isfinite")
	.dwattr $C$DW$537, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$537, DW_AT_high_pc(0x00)
	.dwattr $C$DW$537, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$537, DW_AT_external
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$537, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$537, DW_AT_decl_column(0x18)
	.dwattr $C$DW$537, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$538	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$538, DW_AT_name("d")
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg12]


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
$C$DW$539	.dwtag  DW_TAG_variable
	.dwattr $C$DW$539, DW_AT_name("d")
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg12]

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
$C$DW$540	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$540, DW_AT_low_pc(0x00)
	.dwattr $C$DW$540, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$537, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$537, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$537, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$537

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$541	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$541, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$541, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$541, DW_AT_high_pc(0x00)
	.dwattr $C$DW$541, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$541, DW_AT_external
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$541, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$541, DW_AT_decl_column(0x18)
	.dwattr $C$DW$541, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$542	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$542, DW_AT_name("e")
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$542, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$543	.dwtag  DW_TAG_variable
	.dwattr $C$DW$543, DW_AT_name("e")
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$543, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$544	.dwtag  DW_TAG_variable
	.dwattr $C$DW$544, DW_AT_name("e")
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$544, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L81||,NEQ        ; [CPU_ALU] |436| 
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
$C$DW$545	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$545, DW_AT_low_pc(0x00)
	.dwattr $C$DW$545, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$545, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L80||:    
        MOVB      AL,#1                 ; [CPU_ALU] |436| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L81||:    
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
$C$DW$546	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$546, DW_AT_low_pc(0x00)
	.dwattr $C$DW$546, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$546, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L82||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-1                ; [CPU_ALU] |436| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L82||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |436| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |436| 
        MOVL      P,XAR5                ; [CPU_ALU] |436| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |436| 
        AND       AL,#65535             ; [CPU_ALU] |436| 
        ANDB      AH,#15                ; [CPU_ALU] |436| 
        AND       PL,#65535             ; [CPU_ALU] |436| 
        AND       PH,#65535             ; [CPU_ALU] |436| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |436| 
$C$DW$547	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$547, DW_AT_low_pc(0x00)
	.dwattr $C$DW$547, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$547, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |436| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |436| 
        CMPB      AL,#0                 ; [CPU_ALU] |436| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |436| 
        ; branchcc occurs ; [] |436| 
        MOV       AL,#-2                ; [CPU_ALU] |436| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L83||:    
        MOVB      AL,#0                 ; [CPU_ALU] |436| 
||$C$L84||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$548	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$548, DW_AT_low_pc(0x00)
	.dwattr $C$DW$548, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$541, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$541, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$541, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$541

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$549	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$549, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$549, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$549, DW_AT_high_pc(0x00)
	.dwattr $C$DW$549, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$549, DW_AT_external
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$549, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$549, DW_AT_decl_column(0x18)
	.dwattr $C$DW$549, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$550	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$550, DW_AT_name("f")
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$550, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$551	.dwtag  DW_TAG_variable
	.dwattr $C$DW$551, DW_AT_name("f")
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$551, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |402| 
        MOV       ACC,#32640            ; [CPU_ALU] |402| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |402| 
        B         ||$C$L86||,NEQ        ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L85||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
$C$DW$552	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$552, DW_AT_low_pc(0x00)
	.dwattr $C$DW$552, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L85||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$553	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$553, DW_AT_low_pc(0x00)
	.dwattr $C$DW$553, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L86||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        MOV       T,#23                 ; [CPU_ALU] |402| 
        LSRL      ACC,T                 ; [CPU_ALU] |402| 
        ANDB      AL,#0xff              ; [CPU_ALU] |402| 
        B         ||$C$L87||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |402| 
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L87||:    
        MOVL      ACC,P                 ; [CPU_ALU] |402| 
        ANDB      AH,#127               ; [CPU_ALU] |402| 
        TEST      ACC                   ; [CPU_ALU] |402| 
        B         ||$C$L88||,EQ         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |402| 
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L88||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$556	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$556, DW_AT_low_pc(0x00)
	.dwattr $C$DW$556, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$549, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$549, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$549, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$549

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$557	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$557, DW_AT_name("__fpclassify")
	.dwattr $C$DW$557, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$557, DW_AT_high_pc(0x00)
	.dwattr $C$DW$557, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$557, DW_AT_external
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$557, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$557, DW_AT_decl_column(0x18)
	.dwattr $C$DW$557, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$558	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$558, DW_AT_name("d")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$559	.dwtag  DW_TAG_variable
	.dwattr $C$DW$559, DW_AT_name("d")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$560	.dwtag  DW_TAG_variable
	.dwattr $C$DW$560, DW_AT_name("d")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_reg12]

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
        B         ||$C$L90||,NEQ        ; [CPU_ALU] |419| 
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
$C$DW$561	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$561, DW_AT_low_pc(0x00)
	.dwattr $C$DW$561, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$561, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L89||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L93||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L89||:    
        MOVB      AL,#1                 ; [CPU_ALU] |419| 
        B         ||$C$L93||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L90||:    
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
$C$DW$562	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$562, DW_AT_low_pc(0x00)
	.dwattr $C$DW$562, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$562, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L91||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-1                ; [CPU_ALU] |419| 
        B         ||$C$L93||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L91||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |419| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |419| 
        MOVL      P,XAR5                ; [CPU_ALU] |419| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |419| 
        AND       AL,#65535             ; [CPU_ALU] |419| 
        ANDB      AH,#15                ; [CPU_ALU] |419| 
        AND       PL,#65535             ; [CPU_ALU] |419| 
        AND       PH,#65535             ; [CPU_ALU] |419| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |419| 
$C$DW$563	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$563, DW_AT_low_pc(0x00)
	.dwattr $C$DW$563, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$563, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |419| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |419| 
        CMPB      AL,#0                 ; [CPU_ALU] |419| 
        B         ||$C$L92||,EQ         ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
        MOV       AL,#-2                ; [CPU_ALU] |419| 
        B         ||$C$L93||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L92||:    
        MOVB      AL,#0                 ; [CPU_ALU] |419| 
||$C$L93||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$564	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$564, DW_AT_low_pc(0x00)
	.dwattr $C$DW$564, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$557, DW_AT_TI_end_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$557, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$557, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$557

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||PM_tformat_receiveDataID3||
	.global	||CPUTimer_setEmulationMode||
	.global	||Device_init||
	.global	||Device_initGPIO||
	.global	||Interrupt_initModule||
	.global	||Interrupt_initVectorTable||
	.global	||XBAR_setOutputMuxConfig||
	.global	||GPIO_setPinConfig||
	.global	||FCL_initADC||
	.global	||FCL_initPWM||
	.global	||FCL_initQEP||
	.global	||CLA_setTriggerSource||
	.global	||FCL_resetController||
	.global	||DLOG_4CH_F_init||
	.global	||Interrupt_enable||
	.global	||SysCtl_delay||
	.global	||FCL_runQEPWrap||
	.global	||DLOG_4CH_F_FUNC||
	.global	||ADC_setMode||
	.global	||MemCfg_initSections||
	.global	||MemCfg_setLSRAMControllerSel||
	.global	||Cla1Task1||
	.global	||Cla1Task2||
	.global	||Cla1Task3||
	.global	||Cla1Task4||
	.global	||Cla1Task5||
	.global	||Cla1Task6||
	.global	||Cla1Task7||
	.global	||Cla1Task8||
	.global	||CMPSS_configFilterHigh||
	.global	||CMPSS_configFilterLow||
	.global	||GPIO_setControllerCore||
	.global	||GPIO_setPadConfig||
	.global	||GPIO_setDirectionMode||
	.global	||GPIO_setQualificationMode||
	.global	||XBAR_setEPWMMuxConfig||
	.global	||lsw||
	.global	||MemCfg_getInitStatus||
	.global	||currentSenV||
	.global	||currentSenW||
	.global	||pangle||
	.global	||speedWe||
	.global	||PM_tformat_updatePositionOrTurns||
	.global	||FCL_getSwVersion||
	.global	||clarke1||
	.global	||clarke2||
	.global	||rg1||
	.global	||park1||
	.global	||tformatData||
	.global	||svgen1||
	.global	||qep1||
	.global	||pi_id||
	.global	||pi_iq||
	.global	||FCL_params||
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
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup
	.group    "readTformatEncPosition", 1
	.gmember  ".text:readTformatEncPosition"
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

$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$565	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$565, DW_AT_name("ADC_CLK_DIV_1_0")
	.dwattr $C$DW$565, DW_AT_const_value(0x00)
	.dwattr $C$DW$565, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x98)
	.dwattr $C$DW$565, DW_AT_decl_column(0x05)

$C$DW$566	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$566, DW_AT_name("ADC_CLK_DIV_2_0")
	.dwattr $C$DW$566, DW_AT_const_value(0x02)
	.dwattr $C$DW$566, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x99)
	.dwattr $C$DW$566, DW_AT_decl_column(0x05)

$C$DW$567	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$567, DW_AT_name("ADC_CLK_DIV_2_5")
	.dwattr $C$DW$567, DW_AT_const_value(0x03)
	.dwattr $C$DW$567, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$567, DW_AT_decl_column(0x05)

$C$DW$568	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$568, DW_AT_name("ADC_CLK_DIV_3_0")
	.dwattr $C$DW$568, DW_AT_const_value(0x04)
	.dwattr $C$DW$568, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$568, DW_AT_decl_column(0x05)

$C$DW$569	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$569, DW_AT_name("ADC_CLK_DIV_3_5")
	.dwattr $C$DW$569, DW_AT_const_value(0x05)
	.dwattr $C$DW$569, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$569, DW_AT_decl_column(0x05)

$C$DW$570	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$570, DW_AT_name("ADC_CLK_DIV_4_0")
	.dwattr $C$DW$570, DW_AT_const_value(0x06)
	.dwattr $C$DW$570, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$570, DW_AT_decl_column(0x05)

$C$DW$571	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$571, DW_AT_name("ADC_CLK_DIV_4_5")
	.dwattr $C$DW$571, DW_AT_const_value(0x07)
	.dwattr $C$DW$571, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$571, DW_AT_decl_column(0x05)

$C$DW$572	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$572, DW_AT_name("ADC_CLK_DIV_5_0")
	.dwattr $C$DW$572, DW_AT_const_value(0x08)
	.dwattr $C$DW$572, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$572, DW_AT_decl_column(0x05)

$C$DW$573	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$573, DW_AT_name("ADC_CLK_DIV_5_5")
	.dwattr $C$DW$573, DW_AT_const_value(0x09)
	.dwattr $C$DW$573, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$573, DW_AT_decl_column(0x05)

$C$DW$574	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$574, DW_AT_name("ADC_CLK_DIV_6_0")
	.dwattr $C$DW$574, DW_AT_const_value(0x0a)
	.dwattr $C$DW$574, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$574, DW_AT_decl_column(0x05)

$C$DW$575	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$575, DW_AT_name("ADC_CLK_DIV_6_5")
	.dwattr $C$DW$575, DW_AT_const_value(0x0b)
	.dwattr $C$DW$575, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$575, DW_AT_decl_column(0x05)

$C$DW$576	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$576, DW_AT_name("ADC_CLK_DIV_7_0")
	.dwattr $C$DW$576, DW_AT_const_value(0x0c)
	.dwattr $C$DW$576, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$576, DW_AT_decl_column(0x05)

$C$DW$577	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$577, DW_AT_name("ADC_CLK_DIV_7_5")
	.dwattr $C$DW$577, DW_AT_const_value(0x0d)
	.dwattr $C$DW$577, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$577, DW_AT_decl_column(0x05)

$C$DW$578	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$578, DW_AT_name("ADC_CLK_DIV_8_0")
	.dwattr $C$DW$578, DW_AT_const_value(0x0e)
	.dwattr $C$DW$578, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$578, DW_AT_decl_column(0x05)

$C$DW$579	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$579, DW_AT_name("ADC_CLK_DIV_8_5")
	.dwattr $C$DW$579, DW_AT_const_value(0x0f)
	.dwattr $C$DW$579, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$579, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("ADC_ClkPrescale")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$580	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$580, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$580, DW_AT_const_value(0x00)
	.dwattr $C$DW$580, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x145)
	.dwattr $C$DW$580, DW_AT_decl_column(0x05)

$C$DW$581	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$581, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$581, DW_AT_const_value(0x01)
	.dwattr $C$DW$581, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x146)
	.dwattr $C$DW$581, DW_AT_decl_column(0x05)

$C$DW$582	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$582, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$582, DW_AT_const_value(0x02)
	.dwattr $C$DW$582, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x147)
	.dwattr $C$DW$582, DW_AT_decl_column(0x05)

$C$DW$583	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$583, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$583, DW_AT_const_value(0x03)
	.dwattr $C$DW$583, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x148)
	.dwattr $C$DW$583, DW_AT_decl_column(0x05)

$C$DW$584	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$584, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$584, DW_AT_const_value(0x04)
	.dwattr $C$DW$584, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x149)
	.dwattr $C$DW$584, DW_AT_decl_column(0x05)

$C$DW$585	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$585, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$585, DW_AT_const_value(0x05)
	.dwattr $C$DW$585, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$585, DW_AT_decl_column(0x05)

$C$DW$586	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$586, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$586, DW_AT_const_value(0x06)
	.dwattr $C$DW$586, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$586, DW_AT_decl_column(0x05)

$C$DW$587	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$587, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$587, DW_AT_const_value(0x07)
	.dwattr $C$DW$587, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$587, DW_AT_decl_column(0x05)

$C$DW$588	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$588, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$588, DW_AT_const_value(0x08)
	.dwattr $C$DW$588, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$588, DW_AT_decl_column(0x05)

$C$DW$589	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$589, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$589, DW_AT_const_value(0x09)
	.dwattr $C$DW$589, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$589, DW_AT_decl_column(0x05)

$C$DW$590	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$590, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$590, DW_AT_const_value(0x0a)
	.dwattr $C$DW$590, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$590, DW_AT_decl_column(0x05)

$C$DW$591	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$591, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$591, DW_AT_const_value(0x0b)
	.dwattr $C$DW$591, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x150)
	.dwattr $C$DW$591, DW_AT_decl_column(0x05)

$C$DW$592	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$592, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$592, DW_AT_const_value(0x0c)
	.dwattr $C$DW$592, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x151)
	.dwattr $C$DW$592, DW_AT_decl_column(0x05)

$C$DW$593	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$593, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$593, DW_AT_const_value(0x0d)
	.dwattr $C$DW$593, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x152)
	.dwattr $C$DW$593, DW_AT_decl_column(0x05)

$C$DW$594	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$594, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$594, DW_AT_const_value(0x0e)
	.dwattr $C$DW$594, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x153)
	.dwattr $C$DW$594, DW_AT_decl_column(0x05)

$C$DW$595	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$595, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$595, DW_AT_const_value(0x0f)
	.dwattr $C$DW$595, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x154)
	.dwattr $C$DW$595, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$596	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$596, DW_AT_name("ADC_TRIGGER_SW_ONLY")
	.dwattr $C$DW$596, DW_AT_const_value(0x00)
	.dwattr $C$DW$596, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$596, DW_AT_decl_column(0x05)

$C$DW$597	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$597, DW_AT_name("ADC_TRIGGER_CPU1_TINT0")
	.dwattr $C$DW$597, DW_AT_const_value(0x01)
	.dwattr $C$DW$597, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$597, DW_AT_decl_column(0x05)

$C$DW$598	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$598, DW_AT_name("ADC_TRIGGER_CPU1_TINT1")
	.dwattr $C$DW$598, DW_AT_const_value(0x02)
	.dwattr $C$DW$598, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$598, DW_AT_decl_column(0x05)

$C$DW$599	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$599, DW_AT_name("ADC_TRIGGER_CPU1_TINT2")
	.dwattr $C$DW$599, DW_AT_const_value(0x03)
	.dwattr $C$DW$599, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0xce)
	.dwattr $C$DW$599, DW_AT_decl_column(0x05)

$C$DW$600	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$600, DW_AT_name("ADC_TRIGGER_GPIO")
	.dwattr $C$DW$600, DW_AT_const_value(0x04)
	.dwattr $C$DW$600, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$600, DW_AT_decl_column(0x05)

$C$DW$601	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$601, DW_AT_name("ADC_TRIGGER_EPWM1_SOCA")
	.dwattr $C$DW$601, DW_AT_const_value(0x05)
	.dwattr $C$DW$601, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$601, DW_AT_decl_column(0x05)

$C$DW$602	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$602, DW_AT_name("ADC_TRIGGER_EPWM1_SOCB")
	.dwattr $C$DW$602, DW_AT_const_value(0x06)
	.dwattr $C$DW$602, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$602, DW_AT_decl_column(0x05)

$C$DW$603	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$603, DW_AT_name("ADC_TRIGGER_EPWM2_SOCA")
	.dwattr $C$DW$603, DW_AT_const_value(0x07)
	.dwattr $C$DW$603, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$603, DW_AT_decl_column(0x05)

$C$DW$604	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$604, DW_AT_name("ADC_TRIGGER_EPWM2_SOCB")
	.dwattr $C$DW$604, DW_AT_const_value(0x08)
	.dwattr $C$DW$604, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$604, DW_AT_decl_column(0x05)

$C$DW$605	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$605, DW_AT_name("ADC_TRIGGER_EPWM3_SOCA")
	.dwattr $C$DW$605, DW_AT_const_value(0x09)
	.dwattr $C$DW$605, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$605, DW_AT_decl_column(0x05)

$C$DW$606	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$606, DW_AT_name("ADC_TRIGGER_EPWM3_SOCB")
	.dwattr $C$DW$606, DW_AT_const_value(0x0a)
	.dwattr $C$DW$606, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$606, DW_AT_decl_column(0x05)

$C$DW$607	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$607, DW_AT_name("ADC_TRIGGER_EPWM4_SOCA")
	.dwattr $C$DW$607, DW_AT_const_value(0x0b)
	.dwattr $C$DW$607, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$607, DW_AT_decl_column(0x05)

$C$DW$608	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$608, DW_AT_name("ADC_TRIGGER_EPWM4_SOCB")
	.dwattr $C$DW$608, DW_AT_const_value(0x0c)
	.dwattr $C$DW$608, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$608, DW_AT_decl_column(0x05)

$C$DW$609	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$609, DW_AT_name("ADC_TRIGGER_EPWM5_SOCA")
	.dwattr $C$DW$609, DW_AT_const_value(0x0d)
	.dwattr $C$DW$609, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$609, DW_AT_decl_column(0x05)

$C$DW$610	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$610, DW_AT_name("ADC_TRIGGER_EPWM5_SOCB")
	.dwattr $C$DW$610, DW_AT_const_value(0x0e)
	.dwattr $C$DW$610, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$610, DW_AT_decl_column(0x05)

$C$DW$611	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$611, DW_AT_name("ADC_TRIGGER_EPWM6_SOCA")
	.dwattr $C$DW$611, DW_AT_const_value(0x0f)
	.dwattr $C$DW$611, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0xda)
	.dwattr $C$DW$611, DW_AT_decl_column(0x05)

$C$DW$612	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$612, DW_AT_name("ADC_TRIGGER_EPWM6_SOCB")
	.dwattr $C$DW$612, DW_AT_const_value(0x10)
	.dwattr $C$DW$612, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$612, DW_AT_decl_column(0x05)

$C$DW$613	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$613, DW_AT_name("ADC_TRIGGER_EPWM7_SOCA")
	.dwattr $C$DW$613, DW_AT_const_value(0x11)
	.dwattr $C$DW$613, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$613, DW_AT_decl_column(0x05)

$C$DW$614	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$614, DW_AT_name("ADC_TRIGGER_EPWM7_SOCB")
	.dwattr $C$DW$614, DW_AT_const_value(0x12)
	.dwattr $C$DW$614, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$614, DW_AT_decl_column(0x05)

$C$DW$615	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$615, DW_AT_name("ADC_TRIGGER_EPWM8_SOCA")
	.dwattr $C$DW$615, DW_AT_const_value(0x13)
	.dwattr $C$DW$615, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0xde)
	.dwattr $C$DW$615, DW_AT_decl_column(0x05)

$C$DW$616	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$616, DW_AT_name("ADC_TRIGGER_EPWM8_SOCB")
	.dwattr $C$DW$616, DW_AT_const_value(0x14)
	.dwattr $C$DW$616, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$616, DW_AT_decl_column(0x05)

$C$DW$617	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$617, DW_AT_name("ADC_TRIGGER_EPWM9_SOCA")
	.dwattr $C$DW$617, DW_AT_const_value(0x15)
	.dwattr $C$DW$617, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$617, DW_AT_decl_column(0x05)

$C$DW$618	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$618, DW_AT_name("ADC_TRIGGER_EPWM9_SOCB")
	.dwattr $C$DW$618, DW_AT_const_value(0x16)
	.dwattr $C$DW$618, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$618, DW_AT_decl_column(0x05)

$C$DW$619	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$619, DW_AT_name("ADC_TRIGGER_EPWM10_SOCA")
	.dwattr $C$DW$619, DW_AT_const_value(0x17)
	.dwattr $C$DW$619, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$619, DW_AT_decl_column(0x05)

$C$DW$620	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$620, DW_AT_name("ADC_TRIGGER_EPWM10_SOCB")
	.dwattr $C$DW$620, DW_AT_const_value(0x18)
	.dwattr $C$DW$620, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$620, DW_AT_decl_column(0x05)

$C$DW$621	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$621, DW_AT_name("ADC_TRIGGER_EPWM11_SOCA")
	.dwattr $C$DW$621, DW_AT_const_value(0x19)
	.dwattr $C$DW$621, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$621, DW_AT_decl_column(0x05)

$C$DW$622	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$622, DW_AT_name("ADC_TRIGGER_EPWM11_SOCB")
	.dwattr $C$DW$622, DW_AT_const_value(0x1a)
	.dwattr $C$DW$622, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$622, DW_AT_decl_column(0x05)

$C$DW$623	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$623, DW_AT_name("ADC_TRIGGER_EPWM12_SOCA")
	.dwattr $C$DW$623, DW_AT_const_value(0x1b)
	.dwattr $C$DW$623, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$623, DW_AT_decl_column(0x05)

$C$DW$624	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$624, DW_AT_name("ADC_TRIGGER_EPWM12_SOCB")
	.dwattr $C$DW$624, DW_AT_const_value(0x1c)
	.dwattr $C$DW$624, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$624, DW_AT_decl_column(0x05)

$C$DW$625	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$625, DW_AT_name("ADC_TRIGGER_CPU2_TINT0")
	.dwattr $C$DW$625, DW_AT_const_value(0x1d)
	.dwattr $C$DW$625, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$625, DW_AT_decl_column(0x05)

$C$DW$626	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$626, DW_AT_name("ADC_TRIGGER_CPU2_TINT1")
	.dwattr $C$DW$626, DW_AT_const_value(0x1e)
	.dwattr $C$DW$626, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$626, DW_AT_decl_column(0x05)

$C$DW$627	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$627, DW_AT_name("ADC_TRIGGER_CPU2_TINT2")
	.dwattr $C$DW$627, DW_AT_const_value(0x1f)
	.dwattr $C$DW$627, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xea)
	.dwattr $C$DW$627, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("ADC_Trigger")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$628	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$628, DW_AT_name("ADC_CH_ADCIN0")
	.dwattr $C$DW$628, DW_AT_const_value(0x00)
	.dwattr $C$DW$628, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$628, DW_AT_decl_column(0x05)

$C$DW$629	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$629, DW_AT_name("ADC_CH_ADCIN1")
	.dwattr $C$DW$629, DW_AT_const_value(0x01)
	.dwattr $C$DW$629, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$629, DW_AT_decl_column(0x05)

$C$DW$630	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$630, DW_AT_name("ADC_CH_ADCIN2")
	.dwattr $C$DW$630, DW_AT_const_value(0x02)
	.dwattr $C$DW$630, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$630, DW_AT_decl_column(0x05)

$C$DW$631	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$631, DW_AT_name("ADC_CH_ADCIN3")
	.dwattr $C$DW$631, DW_AT_const_value(0x03)
	.dwattr $C$DW$631, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$631, DW_AT_decl_column(0x05)

$C$DW$632	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$632, DW_AT_name("ADC_CH_ADCIN4")
	.dwattr $C$DW$632, DW_AT_const_value(0x04)
	.dwattr $C$DW$632, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$632, DW_AT_decl_column(0x05)

$C$DW$633	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$633, DW_AT_name("ADC_CH_ADCIN5")
	.dwattr $C$DW$633, DW_AT_const_value(0x05)
	.dwattr $C$DW$633, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$633, DW_AT_decl_column(0x05)

$C$DW$634	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$634, DW_AT_name("ADC_CH_ADCIN6")
	.dwattr $C$DW$634, DW_AT_const_value(0x06)
	.dwattr $C$DW$634, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$634, DW_AT_decl_column(0x05)

$C$DW$635	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$635, DW_AT_name("ADC_CH_ADCIN7")
	.dwattr $C$DW$635, DW_AT_const_value(0x07)
	.dwattr $C$DW$635, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$635, DW_AT_decl_column(0x05)

$C$DW$636	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$636, DW_AT_name("ADC_CH_ADCIN8")
	.dwattr $C$DW$636, DW_AT_const_value(0x08)
	.dwattr $C$DW$636, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$636, DW_AT_decl_column(0x05)

$C$DW$637	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$637, DW_AT_name("ADC_CH_ADCIN9")
	.dwattr $C$DW$637, DW_AT_const_value(0x09)
	.dwattr $C$DW$637, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0xff)
	.dwattr $C$DW$637, DW_AT_decl_column(0x05)

$C$DW$638	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$638, DW_AT_name("ADC_CH_ADCIN10")
	.dwattr $C$DW$638, DW_AT_const_value(0x0a)
	.dwattr $C$DW$638, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x100)
	.dwattr $C$DW$638, DW_AT_decl_column(0x05)

$C$DW$639	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$639, DW_AT_name("ADC_CH_ADCIN11")
	.dwattr $C$DW$639, DW_AT_const_value(0x0b)
	.dwattr $C$DW$639, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x101)
	.dwattr $C$DW$639, DW_AT_decl_column(0x05)

$C$DW$640	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$640, DW_AT_name("ADC_CH_ADCIN12")
	.dwattr $C$DW$640, DW_AT_const_value(0x0c)
	.dwattr $C$DW$640, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x102)
	.dwattr $C$DW$640, DW_AT_decl_column(0x05)

$C$DW$641	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$641, DW_AT_name("ADC_CH_ADCIN13")
	.dwattr $C$DW$641, DW_AT_const_value(0x0d)
	.dwattr $C$DW$641, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x103)
	.dwattr $C$DW$641, DW_AT_decl_column(0x05)

$C$DW$642	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$642, DW_AT_name("ADC_CH_ADCIN14")
	.dwattr $C$DW$642, DW_AT_const_value(0x0e)
	.dwattr $C$DW$642, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x104)
	.dwattr $C$DW$642, DW_AT_decl_column(0x05)

$C$DW$643	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$643, DW_AT_name("ADC_CH_ADCIN15")
	.dwattr $C$DW$643, DW_AT_const_value(0x0f)
	.dwattr $C$DW$643, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x105)
	.dwattr $C$DW$643, DW_AT_decl_column(0x05)

$C$DW$644	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$644, DW_AT_name("ADC_CH_ADCIN0_ADCIN1")
	.dwattr $C$DW$644, DW_AT_const_value(0x00)
	.dwattr $C$DW$644, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x106)
	.dwattr $C$DW$644, DW_AT_decl_column(0x05)

$C$DW$645	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$645, DW_AT_name("ADC_CH_ADCIN2_ADCIN3")
	.dwattr $C$DW$645, DW_AT_const_value(0x02)
	.dwattr $C$DW$645, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x107)
	.dwattr $C$DW$645, DW_AT_decl_column(0x05)

$C$DW$646	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$646, DW_AT_name("ADC_CH_ADCIN4_ADCIN5")
	.dwattr $C$DW$646, DW_AT_const_value(0x04)
	.dwattr $C$DW$646, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x108)
	.dwattr $C$DW$646, DW_AT_decl_column(0x05)

$C$DW$647	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$647, DW_AT_name("ADC_CH_ADCIN6_ADCIN7")
	.dwattr $C$DW$647, DW_AT_const_value(0x06)
	.dwattr $C$DW$647, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x109)
	.dwattr $C$DW$647, DW_AT_decl_column(0x05)

$C$DW$648	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$648, DW_AT_name("ADC_CH_ADCIN8_ADCIN9")
	.dwattr $C$DW$648, DW_AT_const_value(0x08)
	.dwattr $C$DW$648, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$648, DW_AT_decl_column(0x05)

$C$DW$649	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$649, DW_AT_name("ADC_CH_ADCIN10_ADCIN11")
	.dwattr $C$DW$649, DW_AT_const_value(0x0a)
	.dwattr $C$DW$649, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$649, DW_AT_decl_column(0x05)

$C$DW$650	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$650, DW_AT_name("ADC_CH_ADCIN12_ADCIN13")
	.dwattr $C$DW$650, DW_AT_const_value(0x0c)
	.dwattr $C$DW$650, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$650, DW_AT_decl_column(0x05)

$C$DW$651	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$651, DW_AT_name("ADC_CH_ADCIN14_ADCIN15")
	.dwattr $C$DW$651, DW_AT_const_value(0x0e)
	.dwattr $C$DW$651, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$651, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("ADC_Channel")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$652	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$652, DW_AT_name("ADC_PULSE_END_OF_ACQ_WIN")
	.dwattr $C$DW$652, DW_AT_const_value(0x00)
	.dwattr $C$DW$652, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x119)
	.dwattr $C$DW$652, DW_AT_decl_column(0x05)

$C$DW$653	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$653, DW_AT_name("ADC_PULSE_END_OF_CONV")
	.dwattr $C$DW$653, DW_AT_const_value(0x04)
	.dwattr $C$DW$653, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$653, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("ADC_PulseMode")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$654	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$654, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$654, DW_AT_const_value(0x00)
	.dwattr $C$DW$654, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x126)
	.dwattr $C$DW$654, DW_AT_decl_column(0x05)

$C$DW$655	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$655, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$655, DW_AT_const_value(0x01)
	.dwattr $C$DW$655, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x127)
	.dwattr $C$DW$655, DW_AT_decl_column(0x05)

$C$DW$656	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$656, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$656, DW_AT_const_value(0x02)
	.dwattr $C$DW$656, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x128)
	.dwattr $C$DW$656, DW_AT_decl_column(0x05)

$C$DW$657	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$657, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$657, DW_AT_const_value(0x03)
	.dwattr $C$DW$657, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x129)
	.dwattr $C$DW$657, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$658	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$658, DW_AT_name("ADC_PRI_ALL_ROUND_ROBIN")
	.dwattr $C$DW$658, DW_AT_const_value(0x00)
	.dwattr $C$DW$658, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$658, DW_AT_decl_column(0x05)

$C$DW$659	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$659, DW_AT_name("ADC_PRI_SOC0_HIPRI")
	.dwattr $C$DW$659, DW_AT_const_value(0x01)
	.dwattr $C$DW$659, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$659, DW_AT_decl_column(0x05)

$C$DW$660	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$660, DW_AT_name("ADC_PRI_THRU_SOC1_HIPRI")
	.dwattr $C$DW$660, DW_AT_const_value(0x02)
	.dwattr $C$DW$660, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$660, DW_AT_decl_column(0x05)

$C$DW$661	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$661, DW_AT_name("ADC_PRI_THRU_SOC2_HIPRI")
	.dwattr $C$DW$661, DW_AT_const_value(0x03)
	.dwattr $C$DW$661, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$661, DW_AT_decl_column(0x05)

$C$DW$662	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$662, DW_AT_name("ADC_PRI_THRU_SOC3_HIPRI")
	.dwattr $C$DW$662, DW_AT_const_value(0x04)
	.dwattr $C$DW$662, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x170)
	.dwattr $C$DW$662, DW_AT_decl_column(0x05)

$C$DW$663	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$663, DW_AT_name("ADC_PRI_THRU_SOC4_HIPRI")
	.dwattr $C$DW$663, DW_AT_const_value(0x05)
	.dwattr $C$DW$663, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x171)
	.dwattr $C$DW$663, DW_AT_decl_column(0x05)

$C$DW$664	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$664, DW_AT_name("ADC_PRI_THRU_SOC5_HIPRI")
	.dwattr $C$DW$664, DW_AT_const_value(0x06)
	.dwattr $C$DW$664, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x172)
	.dwattr $C$DW$664, DW_AT_decl_column(0x05)

$C$DW$665	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$665, DW_AT_name("ADC_PRI_THRU_SOC6_HIPRI")
	.dwattr $C$DW$665, DW_AT_const_value(0x07)
	.dwattr $C$DW$665, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x173)
	.dwattr $C$DW$665, DW_AT_decl_column(0x05)

$C$DW$666	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$666, DW_AT_name("ADC_PRI_THRU_SOC7_HIPRI")
	.dwattr $C$DW$666, DW_AT_const_value(0x08)
	.dwattr $C$DW$666, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x174)
	.dwattr $C$DW$666, DW_AT_decl_column(0x05)

$C$DW$667	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$667, DW_AT_name("ADC_PRI_THRU_SOC8_HIPRI")
	.dwattr $C$DW$667, DW_AT_const_value(0x09)
	.dwattr $C$DW$667, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x175)
	.dwattr $C$DW$667, DW_AT_decl_column(0x05)

$C$DW$668	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$668, DW_AT_name("ADC_PRI_THRU_SOC9_HIPRI")
	.dwattr $C$DW$668, DW_AT_const_value(0x0a)
	.dwattr $C$DW$668, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x176)
	.dwattr $C$DW$668, DW_AT_decl_column(0x05)

$C$DW$669	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$669, DW_AT_name("ADC_PRI_THRU_SOC10_HIPRI")
	.dwattr $C$DW$669, DW_AT_const_value(0x0b)
	.dwattr $C$DW$669, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x177)
	.dwattr $C$DW$669, DW_AT_decl_column(0x05)

$C$DW$670	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$670, DW_AT_name("ADC_PRI_THRU_SOC11_HIPRI")
	.dwattr $C$DW$670, DW_AT_const_value(0x0c)
	.dwattr $C$DW$670, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x178)
	.dwattr $C$DW$670, DW_AT_decl_column(0x05)

$C$DW$671	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$671, DW_AT_name("ADC_PRI_THRU_SOC12_HIPRI")
	.dwattr $C$DW$671, DW_AT_const_value(0x0d)
	.dwattr $C$DW$671, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x179)
	.dwattr $C$DW$671, DW_AT_decl_column(0x05)

$C$DW$672	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$672, DW_AT_name("ADC_PRI_THRU_SOC13_HIPRI")
	.dwattr $C$DW$672, DW_AT_const_value(0x0e)
	.dwattr $C$DW$672, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$672, DW_AT_decl_column(0x05)

$C$DW$673	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$673, DW_AT_name("ADC_PRI_THRU_SOC14_HIPRI")
	.dwattr $C$DW$673, DW_AT_const_value(0x0f)
	.dwattr $C$DW$673, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$673, DW_AT_decl_column(0x05)

$C$DW$674	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$674, DW_AT_name("ADC_PRI_ALL_HIPRI")
	.dwattr $C$DW$674, DW_AT_const_value(0x10)
	.dwattr $C$DW$674, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$674, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("ADC_PriorityMode")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$675	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$675, DW_AT_name("ADC_PPB_NUMBER1")
	.dwattr $C$DW$675, DW_AT_const_value(0x00)
	.dwattr $C$DW$675, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x134)
	.dwattr $C$DW$675, DW_AT_decl_column(0x05)

$C$DW$676	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$676, DW_AT_name("ADC_PPB_NUMBER2")
	.dwattr $C$DW$676, DW_AT_const_value(0x01)
	.dwattr $C$DW$676, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x135)
	.dwattr $C$DW$676, DW_AT_decl_column(0x05)

$C$DW$677	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$677, DW_AT_name("ADC_PPB_NUMBER3")
	.dwattr $C$DW$677, DW_AT_const_value(0x02)
	.dwattr $C$DW$677, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x136)
	.dwattr $C$DW$677, DW_AT_decl_column(0x05)

$C$DW$678	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$678, DW_AT_name("ADC_PPB_NUMBER4")
	.dwattr $C$DW$678, DW_AT_const_value(0x03)
	.dwattr $C$DW$678, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x137)
	.dwattr $C$DW$678, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("ADC_PPBNumber")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$679	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$679, DW_AT_name("ADC_RESOLUTION_12BIT")
	.dwattr $C$DW$679, DW_AT_const_value(0x00)
	.dwattr $C$DW$679, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$679, DW_AT_decl_column(0x05)

$C$DW$680	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$680, DW_AT_name("ADC_RESOLUTION_16BIT")
	.dwattr $C$DW$680, DW_AT_const_value(0x40)
	.dwattr $C$DW$680, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$680, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("ADC_Resolution")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$681	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$681, DW_AT_name("ADC_MODE_SINGLE_ENDED")
	.dwattr $C$DW$681, DW_AT_const_value(0x00)
	.dwattr $C$DW$681, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$681, DW_AT_decl_column(0x05)

$C$DW$682	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$682, DW_AT_name("ADC_MODE_DIFFERENTIAL")
	.dwattr $C$DW$682, DW_AT_const_value(0x80)
	.dwattr $C$DW$682, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$682, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("ADC_SignalMode")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$683	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$683, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$683, DW_AT_const_value(0x00)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x183)
	.dwattr $C$DW$683, DW_AT_decl_column(0x05)

$C$DW$684	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$684, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$684, DW_AT_const_value(0x200)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x184)
	.dwattr $C$DW$684, DW_AT_decl_column(0x05)

$C$DW$685	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$685, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$685, DW_AT_const_value(0x300)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x185)
	.dwattr $C$DW$685, DW_AT_decl_column(0x05)

$C$DW$686	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$686, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$686, DW_AT_const_value(0x400)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x186)
	.dwattr $C$DW$686, DW_AT_decl_column(0x05)

$C$DW$687	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$687, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$687, DW_AT_const_value(0x500)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x187)
	.dwattr $C$DW$687, DW_AT_decl_column(0x05)

$C$DW$688	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$688, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$688, DW_AT_const_value(0x1000)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x188)
	.dwattr $C$DW$688, DW_AT_decl_column(0x05)

$C$DW$689	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$689, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$689, DW_AT_const_value(0x1200)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x189)
	.dwattr $C$DW$689, DW_AT_decl_column(0x05)

$C$DW$690	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$690, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$690, DW_AT_const_value(0x1300)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$690, DW_AT_decl_column(0x05)

$C$DW$691	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$691, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$691, DW_AT_const_value(0x01)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$691, DW_AT_decl_column(0x05)

$C$DW$692	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$692, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$692, DW_AT_const_value(0x101)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$692, DW_AT_decl_column(0x05)

$C$DW$693	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$693, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$693, DW_AT_const_value(0x02)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$693, DW_AT_decl_column(0x05)

$C$DW$694	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$694, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$694, DW_AT_const_value(0x102)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$694, DW_AT_decl_column(0x05)

$C$DW$695	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$695, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$695, DW_AT_const_value(0x202)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$695, DW_AT_decl_column(0x05)

$C$DW$696	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$696, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$696, DW_AT_const_value(0x302)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x190)
	.dwattr $C$DW$696, DW_AT_decl_column(0x05)

$C$DW$697	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$697, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$697, DW_AT_const_value(0x402)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x191)
	.dwattr $C$DW$697, DW_AT_decl_column(0x05)

$C$DW$698	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$698, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$698, DW_AT_const_value(0x502)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x192)
	.dwattr $C$DW$698, DW_AT_decl_column(0x05)

$C$DW$699	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$699, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$699, DW_AT_const_value(0x602)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x193)
	.dwattr $C$DW$699, DW_AT_decl_column(0x05)

$C$DW$700	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$700, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$700, DW_AT_const_value(0x702)
	.dwattr $C$DW$700, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x194)
	.dwattr $C$DW$700, DW_AT_decl_column(0x05)

$C$DW$701	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$701, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$701, DW_AT_const_value(0x802)
	.dwattr $C$DW$701, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x195)
	.dwattr $C$DW$701, DW_AT_decl_column(0x05)

$C$DW$702	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$702, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$702, DW_AT_const_value(0x902)
	.dwattr $C$DW$702, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x196)
	.dwattr $C$DW$702, DW_AT_decl_column(0x05)

$C$DW$703	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$703, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$703, DW_AT_const_value(0xa02)
	.dwattr $C$DW$703, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x197)
	.dwattr $C$DW$703, DW_AT_decl_column(0x05)

$C$DW$704	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$704, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$704, DW_AT_const_value(0xb02)
	.dwattr $C$DW$704, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x198)
	.dwattr $C$DW$704, DW_AT_decl_column(0x05)

$C$DW$705	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$705, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$705, DW_AT_const_value(0x03)
	.dwattr $C$DW$705, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x199)
	.dwattr $C$DW$705, DW_AT_decl_column(0x05)

$C$DW$706	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$706, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$706, DW_AT_const_value(0x103)
	.dwattr $C$DW$706, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$706, DW_AT_decl_column(0x05)

$C$DW$707	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$707, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$707, DW_AT_const_value(0x203)
	.dwattr $C$DW$707, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$707, DW_AT_decl_column(0x05)

$C$DW$708	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$708, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$708, DW_AT_const_value(0x303)
	.dwattr $C$DW$708, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$708, DW_AT_decl_column(0x05)

$C$DW$709	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$709, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$709, DW_AT_const_value(0x403)
	.dwattr $C$DW$709, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$709, DW_AT_decl_column(0x05)

$C$DW$710	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$710, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$710, DW_AT_const_value(0x503)
	.dwattr $C$DW$710, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$710, DW_AT_decl_column(0x05)

$C$DW$711	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$711, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$711, DW_AT_const_value(0x04)
	.dwattr $C$DW$711, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$711, DW_AT_decl_column(0x05)

$C$DW$712	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$712, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$712, DW_AT_const_value(0x104)
	.dwattr $C$DW$712, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$712, DW_AT_decl_column(0x05)

$C$DW$713	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$713, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$713, DW_AT_const_value(0x204)
	.dwattr $C$DW$713, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$713, DW_AT_decl_column(0x05)

$C$DW$714	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$714, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$714, DW_AT_const_value(0x06)
	.dwattr $C$DW$714, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$714, DW_AT_decl_column(0x05)

$C$DW$715	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$715, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$715, DW_AT_const_value(0x106)
	.dwattr $C$DW$715, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$715, DW_AT_decl_column(0x05)

$C$DW$716	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$716, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$716, DW_AT_const_value(0x07)
	.dwattr $C$DW$716, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$716, DW_AT_decl_column(0x05)

$C$DW$717	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$717, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$717, DW_AT_const_value(0x107)
	.dwattr $C$DW$717, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$717, DW_AT_decl_column(0x05)

$C$DW$718	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$718, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$718, DW_AT_const_value(0x207)
	.dwattr $C$DW$718, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$718, DW_AT_decl_column(0x05)

$C$DW$719	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$719, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$719, DW_AT_const_value(0x307)
	.dwattr $C$DW$719, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$719, DW_AT_decl_column(0x05)

$C$DW$720	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$720, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$720, DW_AT_const_value(0x08)
	.dwattr $C$DW$720, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$720, DW_AT_decl_column(0x05)

$C$DW$721	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$721, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$721, DW_AT_const_value(0x108)
	.dwattr $C$DW$721, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$721, DW_AT_decl_column(0x05)

$C$DW$722	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$722, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$722, DW_AT_const_value(0x208)
	.dwattr $C$DW$722, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$722, DW_AT_decl_column(0x05)

$C$DW$723	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$723, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$723, DW_AT_const_value(0x09)
	.dwattr $C$DW$723, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$723, DW_AT_decl_column(0x05)

$C$DW$724	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$724, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$724, DW_AT_const_value(0x109)
	.dwattr $C$DW$724, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$724, DW_AT_decl_column(0x05)

$C$DW$725	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$725, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$725, DW_AT_const_value(0x0a)
	.dwattr $C$DW$725, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$725, DW_AT_decl_column(0x05)

$C$DW$726	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$726, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$726, DW_AT_const_value(0x10a)
	.dwattr $C$DW$726, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$726, DW_AT_decl_column(0x05)

$C$DW$727	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$727, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$727, DW_AT_const_value(0x0b)
	.dwattr $C$DW$727, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$727, DW_AT_decl_column(0x05)

$C$DW$728	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$728, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$728, DW_AT_const_value(0x10b)
	.dwattr $C$DW$728, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$728, DW_AT_decl_column(0x05)

$C$DW$729	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$729, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$729, DW_AT_const_value(0x100b)
	.dwattr $C$DW$729, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$729, DW_AT_decl_column(0x05)

$C$DW$730	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$730, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$730, DW_AT_const_value(0x0c)
	.dwattr $C$DW$730, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$730, DW_AT_decl_column(0x05)

$C$DW$731	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$731, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$731, DW_AT_const_value(0x0d)
	.dwattr $C$DW$731, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$731, DW_AT_decl_column(0x05)

$C$DW$732	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$732, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$732, DW_AT_const_value(0x10d)
	.dwattr $C$DW$732, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$732, DW_AT_decl_column(0x05)

$C$DW$733	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$733, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$733, DW_AT_const_value(0x20d)
	.dwattr $C$DW$733, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$733, DW_AT_decl_column(0x05)

$C$DW$734	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$734, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$734, DW_AT_const_value(0x30d)
	.dwattr $C$DW$734, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$734, DW_AT_decl_column(0x05)

$C$DW$735	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$735, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$735, DW_AT_const_value(0x0e)
	.dwattr $C$DW$735, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$735, DW_AT_decl_column(0x05)

$C$DW$736	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$736, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$736, DW_AT_const_value(0x10e)
	.dwattr $C$DW$736, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$736, DW_AT_decl_column(0x05)

$C$DW$737	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$737, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$737, DW_AT_const_value(0x20e)
	.dwattr $C$DW$737, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$737, DW_AT_decl_column(0x05)

$C$DW$738	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$738, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$738, DW_AT_const_value(0x30e)
	.dwattr $C$DW$738, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$738, DW_AT_decl_column(0x05)

$C$DW$739	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$739, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$739, DW_AT_const_value(0x40e)
	.dwattr $C$DW$739, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$739, DW_AT_decl_column(0x05)

$C$DW$740	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$740, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$740, DW_AT_const_value(0x50e)
	.dwattr $C$DW$740, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$740, DW_AT_decl_column(0x05)

$C$DW$741	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$741, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$741, DW_AT_const_value(0x60e)
	.dwattr $C$DW$741, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$741, DW_AT_decl_column(0x05)

$C$DW$742	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$742, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$742, DW_AT_const_value(0x70e)
	.dwattr $C$DW$742, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$742, DW_AT_decl_column(0x05)

$C$DW$743	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$743, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$743, DW_AT_const_value(0x1010)
	.dwattr $C$DW$743, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$743, DW_AT_decl_column(0x05)

$C$DW$744	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$744, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$744, DW_AT_const_value(0x1110)
	.dwattr $C$DW$744, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$744, DW_AT_decl_column(0x05)

$C$DW$745	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$745, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$745, DW_AT_const_value(0x1210)
	.dwattr $C$DW$745, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$745, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$77, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$746	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$746, DW_AT_name("SYSCTL_SYNC_IN_EPWM4")
	.dwattr $C$DW$746, DW_AT_const_value(0x00)
	.dwattr $C$DW$746, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x2de)
	.dwattr $C$DW$746, DW_AT_decl_column(0x05)

$C$DW$747	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$747, DW_AT_name("SYSCTL_SYNC_IN_EPWM7")
	.dwattr $C$DW$747, DW_AT_const_value(0x03)
	.dwattr $C$DW$747, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x2df)
	.dwattr $C$DW$747, DW_AT_decl_column(0x05)

$C$DW$748	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$748, DW_AT_name("SYSCTL_SYNC_IN_EPWM10")
	.dwattr $C$DW$748, DW_AT_const_value(0x06)
	.dwattr $C$DW$748, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x2e0)
	.dwattr $C$DW$748, DW_AT_decl_column(0x05)

$C$DW$749	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$749, DW_AT_name("SYSCTL_SYNC_IN_ECAP1")
	.dwattr $C$DW$749, DW_AT_const_value(0x09)
	.dwattr $C$DW$749, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x2e1)
	.dwattr $C$DW$749, DW_AT_decl_column(0x05)

$C$DW$750	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$750, DW_AT_name("SYSCTL_SYNC_IN_ECAP4")
	.dwattr $C$DW$750, DW_AT_const_value(0x0c)
	.dwattr $C$DW$750, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$750, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$79, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x2dd)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("SysCtl_SyncInput")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$751	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$751, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT")
	.dwattr $C$DW$751, DW_AT_const_value(0x00)
	.dwattr $C$DW$751, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$751, DW_AT_decl_column(0x05)

$C$DW$752	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$752, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM4SYNCOUT")
	.dwattr $C$DW$752, DW_AT_const_value(0x01)
	.dwattr $C$DW$752, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$752, DW_AT_decl_column(0x05)

$C$DW$753	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$753, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM7SYNCOUT")
	.dwattr $C$DW$753, DW_AT_const_value(0x02)
	.dwattr $C$DW$753, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$753, DW_AT_decl_column(0x05)

$C$DW$754	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$754, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM10SYNCOUT")
	.dwattr $C$DW$754, DW_AT_const_value(0x03)
	.dwattr $C$DW$754, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$754, DW_AT_decl_column(0x05)

$C$DW$755	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$755, DW_AT_name("SYSCTL_SYNC_IN_SRC_ECAP1SYNCOUT")
	.dwattr $C$DW$755, DW_AT_const_value(0x04)
	.dwattr $C$DW$755, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$755, DW_AT_decl_column(0x05)

$C$DW$756	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$756, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN1")
	.dwattr $C$DW$756, DW_AT_const_value(0x05)
	.dwattr $C$DW$756, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x2fa)
	.dwattr $C$DW$756, DW_AT_decl_column(0x05)

$C$DW$757	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$757, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN2")
	.dwattr $C$DW$757, DW_AT_const_value(0x06)
	.dwattr $C$DW$757, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x2fc)
	.dwattr $C$DW$757, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$81, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x2ee)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("SysCtl_SyncInputSource")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x2fd)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$758	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$758, DW_AT_name("CLA_MVECT_1")
	.dwattr $C$DW$758, DW_AT_const_value(0x00)
	.dwattr $C$DW$758, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x81)
	.dwattr $C$DW$758, DW_AT_decl_column(0x05)

$C$DW$759	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$759, DW_AT_name("CLA_MVECT_2")
	.dwattr $C$DW$759, DW_AT_const_value(0x01)
	.dwattr $C$DW$759, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x82)
	.dwattr $C$DW$759, DW_AT_decl_column(0x05)

$C$DW$760	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$760, DW_AT_name("CLA_MVECT_3")
	.dwattr $C$DW$760, DW_AT_const_value(0x02)
	.dwattr $C$DW$760, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x83)
	.dwattr $C$DW$760, DW_AT_decl_column(0x05)

$C$DW$761	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$761, DW_AT_name("CLA_MVECT_4")
	.dwattr $C$DW$761, DW_AT_const_value(0x03)
	.dwattr $C$DW$761, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x84)
	.dwattr $C$DW$761, DW_AT_decl_column(0x05)

$C$DW$762	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$762, DW_AT_name("CLA_MVECT_5")
	.dwattr $C$DW$762, DW_AT_const_value(0x04)
	.dwattr $C$DW$762, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x85)
	.dwattr $C$DW$762, DW_AT_decl_column(0x05)

$C$DW$763	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$763, DW_AT_name("CLA_MVECT_6")
	.dwattr $C$DW$763, DW_AT_const_value(0x05)
	.dwattr $C$DW$763, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x86)
	.dwattr $C$DW$763, DW_AT_decl_column(0x05)

$C$DW$764	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$764, DW_AT_name("CLA_MVECT_7")
	.dwattr $C$DW$764, DW_AT_const_value(0x06)
	.dwattr $C$DW$764, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x87)
	.dwattr $C$DW$764, DW_AT_decl_column(0x05)

$C$DW$765	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$765, DW_AT_name("CLA_MVECT_8")
	.dwattr $C$DW$765, DW_AT_const_value(0x07)
	.dwattr $C$DW$765, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x88)
	.dwattr $C$DW$765, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("CLA_MVECTNumber")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$766	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$766, DW_AT_name("CLA_TASK_1")
	.dwattr $C$DW$766, DW_AT_const_value(0x00)
	.dwattr $C$DW$766, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$766, DW_AT_decl_column(0x05)

$C$DW$767	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$767, DW_AT_name("CLA_TASK_2")
	.dwattr $C$DW$767, DW_AT_const_value(0x01)
	.dwattr $C$DW$767, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$767, DW_AT_decl_column(0x05)

$C$DW$768	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$768, DW_AT_name("CLA_TASK_3")
	.dwattr $C$DW$768, DW_AT_const_value(0x02)
	.dwattr $C$DW$768, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x70)
	.dwattr $C$DW$768, DW_AT_decl_column(0x05)

$C$DW$769	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$769, DW_AT_name("CLA_TASK_4")
	.dwattr $C$DW$769, DW_AT_const_value(0x03)
	.dwattr $C$DW$769, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x71)
	.dwattr $C$DW$769, DW_AT_decl_column(0x05)

$C$DW$770	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$770, DW_AT_name("CLA_TASK_5")
	.dwattr $C$DW$770, DW_AT_const_value(0x04)
	.dwattr $C$DW$770, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x72)
	.dwattr $C$DW$770, DW_AT_decl_column(0x05)

$C$DW$771	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$771, DW_AT_name("CLA_TASK_6")
	.dwattr $C$DW$771, DW_AT_const_value(0x05)
	.dwattr $C$DW$771, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x73)
	.dwattr $C$DW$771, DW_AT_decl_column(0x05)

$C$DW$772	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$772, DW_AT_name("CLA_TASK_7")
	.dwattr $C$DW$772, DW_AT_const_value(0x06)
	.dwattr $C$DW$772, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x74)
	.dwattr $C$DW$772, DW_AT_decl_column(0x05)

$C$DW$773	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$773, DW_AT_name("CLA_TASK_8")
	.dwattr $C$DW$773, DW_AT_const_value(0x07)
	.dwattr $C$DW$773, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x75)
	.dwattr $C$DW$773, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("CLA_TaskNumber")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$774	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$774, DW_AT_name("CLA_TRIGGER_SOFTWARE")
	.dwattr $C$DW$774, DW_AT_const_value(0x00)
	.dwattr $C$DW$774, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x93)
	.dwattr $C$DW$774, DW_AT_decl_column(0x05)

$C$DW$775	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$775, DW_AT_name("CLA_TRIGGER_ADCA1")
	.dwattr $C$DW$775, DW_AT_const_value(0x01)
	.dwattr $C$DW$775, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x95)
	.dwattr $C$DW$775, DW_AT_decl_column(0x05)

$C$DW$776	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$776, DW_AT_name("CLA_TRIGGER_ADCA2")
	.dwattr $C$DW$776, DW_AT_const_value(0x02)
	.dwattr $C$DW$776, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x96)
	.dwattr $C$DW$776, DW_AT_decl_column(0x05)

$C$DW$777	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$777, DW_AT_name("CLA_TRIGGER_ADCA3")
	.dwattr $C$DW$777, DW_AT_const_value(0x03)
	.dwattr $C$DW$777, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x97)
	.dwattr $C$DW$777, DW_AT_decl_column(0x05)

$C$DW$778	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$778, DW_AT_name("CLA_TRIGGER_ADCA4")
	.dwattr $C$DW$778, DW_AT_const_value(0x04)
	.dwattr $C$DW$778, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x98)
	.dwattr $C$DW$778, DW_AT_decl_column(0x05)

$C$DW$779	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$779, DW_AT_name("CLA_TRIGGER_ADCAEVT")
	.dwattr $C$DW$779, DW_AT_const_value(0x05)
	.dwattr $C$DW$779, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x99)
	.dwattr $C$DW$779, DW_AT_decl_column(0x05)

$C$DW$780	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$780, DW_AT_name("CLA_TRIGGER_ADCB1")
	.dwattr $C$DW$780, DW_AT_const_value(0x06)
	.dwattr $C$DW$780, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$780, DW_AT_decl_column(0x05)

$C$DW$781	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$781, DW_AT_name("CLA_TRIGGER_ADCB2")
	.dwattr $C$DW$781, DW_AT_const_value(0x07)
	.dwattr $C$DW$781, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$781, DW_AT_decl_column(0x05)

$C$DW$782	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$782, DW_AT_name("CLA_TRIGGER_ADCB3")
	.dwattr $C$DW$782, DW_AT_const_value(0x08)
	.dwattr $C$DW$782, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$782, DW_AT_decl_column(0x05)

$C$DW$783	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$783, DW_AT_name("CLA_TRIGGER_ADCB4")
	.dwattr $C$DW$783, DW_AT_const_value(0x09)
	.dwattr $C$DW$783, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$783, DW_AT_decl_column(0x05)

$C$DW$784	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$784, DW_AT_name("CLA_TRIGGER_ADCBEVT")
	.dwattr $C$DW$784, DW_AT_const_value(0x0a)
	.dwattr $C$DW$784, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$784, DW_AT_decl_column(0x05)

$C$DW$785	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$785, DW_AT_name("CLA_TRIGGER_ADCC1")
	.dwattr $C$DW$785, DW_AT_const_value(0x0b)
	.dwattr $C$DW$785, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$785, DW_AT_decl_column(0x05)

$C$DW$786	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$786, DW_AT_name("CLA_TRIGGER_ADCC2")
	.dwattr $C$DW$786, DW_AT_const_value(0x0c)
	.dwattr $C$DW$786, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$786, DW_AT_decl_column(0x05)

$C$DW$787	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$787, DW_AT_name("CLA_TRIGGER_ADCC3")
	.dwattr $C$DW$787, DW_AT_const_value(0x0d)
	.dwattr $C$DW$787, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$787, DW_AT_decl_column(0x05)

$C$DW$788	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$788, DW_AT_name("CLA_TRIGGER_ADCC4")
	.dwattr $C$DW$788, DW_AT_const_value(0x0e)
	.dwattr $C$DW$788, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$788, DW_AT_decl_column(0x05)

$C$DW$789	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$789, DW_AT_name("CLA_TRIGGER_ADCCEVT")
	.dwattr $C$DW$789, DW_AT_const_value(0x0f)
	.dwattr $C$DW$789, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$789, DW_AT_decl_column(0x05)

$C$DW$790	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$790, DW_AT_name("CLA_TRIGGER_ADCD1")
	.dwattr $C$DW$790, DW_AT_const_value(0x10)
	.dwattr $C$DW$790, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$790, DW_AT_decl_column(0x05)

$C$DW$791	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$791, DW_AT_name("CLA_TRIGGER_ADCD2")
	.dwattr $C$DW$791, DW_AT_const_value(0x11)
	.dwattr $C$DW$791, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$791, DW_AT_decl_column(0x05)

$C$DW$792	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$792, DW_AT_name("CLA_TRIGGER_ADCD3")
	.dwattr $C$DW$792, DW_AT_const_value(0x12)
	.dwattr $C$DW$792, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$792, DW_AT_decl_column(0x05)

$C$DW$793	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$793, DW_AT_name("CLA_TRIGGER_ADCD4")
	.dwattr $C$DW$793, DW_AT_const_value(0x13)
	.dwattr $C$DW$793, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$793, DW_AT_decl_column(0x05)

$C$DW$794	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$794, DW_AT_name("CLA_TRIGGER_ADCDEVT")
	.dwattr $C$DW$794, DW_AT_const_value(0x14)
	.dwattr $C$DW$794, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$794, DW_AT_decl_column(0x05)

$C$DW$795	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$795, DW_AT_name("CLA_TRIGGER_XINT1")
	.dwattr $C$DW$795, DW_AT_const_value(0x1d)
	.dwattr $C$DW$795, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$795, DW_AT_decl_column(0x05)

$C$DW$796	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$796, DW_AT_name("CLA_TRIGGER_XINT2")
	.dwattr $C$DW$796, DW_AT_const_value(0x1e)
	.dwattr $C$DW$796, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0xab)
	.dwattr $C$DW$796, DW_AT_decl_column(0x05)

$C$DW$797	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$797, DW_AT_name("CLA_TRIGGER_XINT3")
	.dwattr $C$DW$797, DW_AT_const_value(0x1f)
	.dwattr $C$DW$797, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0xac)
	.dwattr $C$DW$797, DW_AT_decl_column(0x05)

$C$DW$798	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$798, DW_AT_name("CLA_TRIGGER_XINT4")
	.dwattr $C$DW$798, DW_AT_const_value(0x20)
	.dwattr $C$DW$798, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0xad)
	.dwattr $C$DW$798, DW_AT_decl_column(0x05)

$C$DW$799	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$799, DW_AT_name("CLA_TRIGGER_XINT5")
	.dwattr $C$DW$799, DW_AT_const_value(0x21)
	.dwattr $C$DW$799, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0xae)
	.dwattr $C$DW$799, DW_AT_decl_column(0x05)

$C$DW$800	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$800, DW_AT_name("CLA_TRIGGER_EPWM1INT")
	.dwattr $C$DW$800, DW_AT_const_value(0x24)
	.dwattr $C$DW$800, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$800, DW_AT_decl_column(0x05)

$C$DW$801	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$801, DW_AT_name("CLA_TRIGGER_EPWM2INT")
	.dwattr $C$DW$801, DW_AT_const_value(0x25)
	.dwattr $C$DW$801, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$801, DW_AT_decl_column(0x05)

$C$DW$802	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$802, DW_AT_name("CLA_TRIGGER_EPWM3INT")
	.dwattr $C$DW$802, DW_AT_const_value(0x26)
	.dwattr $C$DW$802, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$802, DW_AT_decl_column(0x05)

$C$DW$803	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$803, DW_AT_name("CLA_TRIGGER_EPWM4INT")
	.dwattr $C$DW$803, DW_AT_const_value(0x27)
	.dwattr $C$DW$803, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$803, DW_AT_decl_column(0x05)

$C$DW$804	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$804, DW_AT_name("CLA_TRIGGER_EPWM5INT")
	.dwattr $C$DW$804, DW_AT_const_value(0x28)
	.dwattr $C$DW$804, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$804, DW_AT_decl_column(0x05)

$C$DW$805	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$805, DW_AT_name("CLA_TRIGGER_EPWM6INT")
	.dwattr $C$DW$805, DW_AT_const_value(0x29)
	.dwattr $C$DW$805, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$805, DW_AT_decl_column(0x05)

$C$DW$806	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$806, DW_AT_name("CLA_TRIGGER_EPWM7INT")
	.dwattr $C$DW$806, DW_AT_const_value(0x2a)
	.dwattr $C$DW$806, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$806, DW_AT_decl_column(0x05)

$C$DW$807	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$807, DW_AT_name("CLA_TRIGGER_EPWM8INT")
	.dwattr $C$DW$807, DW_AT_const_value(0x2b)
	.dwattr $C$DW$807, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$807, DW_AT_decl_column(0x05)

$C$DW$808	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$808, DW_AT_name("CLA_TRIGGER_EPWM9INT")
	.dwattr $C$DW$808, DW_AT_const_value(0x2c)
	.dwattr $C$DW$808, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$808, DW_AT_decl_column(0x05)

$C$DW$809	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$809, DW_AT_name("CLA_TRIGGER_EPWM10INT")
	.dwattr $C$DW$809, DW_AT_const_value(0x2d)
	.dwattr $C$DW$809, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$809, DW_AT_decl_column(0x05)

$C$DW$810	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$810, DW_AT_name("CLA_TRIGGER_EPWM11INT")
	.dwattr $C$DW$810, DW_AT_const_value(0x2e)
	.dwattr $C$DW$810, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0xba)
	.dwattr $C$DW$810, DW_AT_decl_column(0x05)

$C$DW$811	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$811, DW_AT_name("CLA_TRIGGER_EPWM12INT")
	.dwattr $C$DW$811, DW_AT_const_value(0x2f)
	.dwattr $C$DW$811, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$811, DW_AT_decl_column(0x05)

$C$DW$812	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$812, DW_AT_name("CLA_TRIGGER_TINT0")
	.dwattr $C$DW$812, DW_AT_const_value(0x44)
	.dwattr $C$DW$812, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$812, DW_AT_decl_column(0x05)

$C$DW$813	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$813, DW_AT_name("CLA_TRIGGER_TINT1")
	.dwattr $C$DW$813, DW_AT_const_value(0x45)
	.dwattr $C$DW$813, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$813, DW_AT_decl_column(0x05)

$C$DW$814	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$814, DW_AT_name("CLA_TRIGGER_TINT2")
	.dwattr $C$DW$814, DW_AT_const_value(0x46)
	.dwattr $C$DW$814, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$814, DW_AT_decl_column(0x05)

$C$DW$815	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$815, DW_AT_name("CLA_TRIGGER_MXINTA")
	.dwattr $C$DW$815, DW_AT_const_value(0x47)
	.dwattr $C$DW$815, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$815, DW_AT_decl_column(0x05)

$C$DW$816	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$816, DW_AT_name("CLA_TRIGGER_MRINTA")
	.dwattr $C$DW$816, DW_AT_const_value(0x48)
	.dwattr $C$DW$816, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$816, DW_AT_decl_column(0x05)

$C$DW$817	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$817, DW_AT_name("CLA_TRIGGER_MXINTB")
	.dwattr $C$DW$817, DW_AT_const_value(0x49)
	.dwattr $C$DW$817, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$817, DW_AT_decl_column(0x05)

$C$DW$818	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$818, DW_AT_name("CLA_TRIGGER_MRINTB")
	.dwattr $C$DW$818, DW_AT_const_value(0x4a)
	.dwattr $C$DW$818, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$818, DW_AT_decl_column(0x05)

$C$DW$819	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$819, DW_AT_name("CLA_TRIGGER_ECAP1INT")
	.dwattr $C$DW$819, DW_AT_const_value(0x4b)
	.dwattr $C$DW$819, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$819, DW_AT_decl_column(0x05)

$C$DW$820	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$820, DW_AT_name("CLA_TRIGGER_ECAP2INT")
	.dwattr $C$DW$820, DW_AT_const_value(0x4c)
	.dwattr $C$DW$820, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$820, DW_AT_decl_column(0x05)

$C$DW$821	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$821, DW_AT_name("CLA_TRIGGER_ECAP3INT")
	.dwattr $C$DW$821, DW_AT_const_value(0x4d)
	.dwattr $C$DW$821, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$821, DW_AT_decl_column(0x05)

$C$DW$822	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$822, DW_AT_name("CLA_TRIGGER_ECAP4INT")
	.dwattr $C$DW$822, DW_AT_const_value(0x4e)
	.dwattr $C$DW$822, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0xca)
	.dwattr $C$DW$822, DW_AT_decl_column(0x05)

$C$DW$823	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$823, DW_AT_name("CLA_TRIGGER_ECAP5INT")
	.dwattr $C$DW$823, DW_AT_const_value(0x4f)
	.dwattr $C$DW$823, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$823, DW_AT_decl_column(0x05)

$C$DW$824	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$824, DW_AT_name("CLA_TRIGGER_ECAP6INT")
	.dwattr $C$DW$824, DW_AT_const_value(0x50)
	.dwattr $C$DW$824, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$824, DW_AT_decl_column(0x05)

$C$DW$825	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$825, DW_AT_name("CLA_TRIGGER_EQEP1INT")
	.dwattr $C$DW$825, DW_AT_const_value(0x53)
	.dwattr $C$DW$825, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0xce)
	.dwattr $C$DW$825, DW_AT_decl_column(0x05)

$C$DW$826	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$826, DW_AT_name("CLA_TRIGGER_EQEP2INT")
	.dwattr $C$DW$826, DW_AT_const_value(0x54)
	.dwattr $C$DW$826, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$826, DW_AT_decl_column(0x05)

$C$DW$827	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$827, DW_AT_name("CLA_TRIGGER_EQEP3INT")
	.dwattr $C$DW$827, DW_AT_const_value(0x55)
	.dwattr $C$DW$827, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$827, DW_AT_decl_column(0x05)

$C$DW$828	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$828, DW_AT_name("CLA_TRIGGER_SDFM1INT")
	.dwattr $C$DW$828, DW_AT_const_value(0x5f)
	.dwattr $C$DW$828, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$828, DW_AT_decl_column(0x05)

$C$DW$829	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$829, DW_AT_name("CLA_TRIGGER_SDFM2INT")
	.dwattr $C$DW$829, DW_AT_const_value(0x60)
	.dwattr $C$DW$829, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$829, DW_AT_decl_column(0x05)

$C$DW$830	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$830, DW_AT_name("CLA_TRIGGER_UPP1INT")
	.dwattr $C$DW$830, DW_AT_const_value(0x6b)
	.dwattr $C$DW$830, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$830, DW_AT_decl_column(0x05)

$C$DW$831	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$831, DW_AT_name("CLA_TRIGGER_SPITXAINT")
	.dwattr $C$DW$831, DW_AT_const_value(0x6d)
	.dwattr $C$DW$831, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0xda)
	.dwattr $C$DW$831, DW_AT_decl_column(0x05)

$C$DW$832	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$832, DW_AT_name("CLA_TRIGGER_SPIRXAINT")
	.dwattr $C$DW$832, DW_AT_const_value(0x6e)
	.dwattr $C$DW$832, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$832, DW_AT_decl_column(0x05)

$C$DW$833	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$833, DW_AT_name("CLA_TRIGGER_SPITXBINT")
	.dwattr $C$DW$833, DW_AT_const_value(0x6f)
	.dwattr $C$DW$833, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$833, DW_AT_decl_column(0x05)

$C$DW$834	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$834, DW_AT_name("CLA_TRIGGER_SPIRXBINT")
	.dwattr $C$DW$834, DW_AT_const_value(0x70)
	.dwattr $C$DW$834, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$834, DW_AT_decl_column(0x05)

$C$DW$835	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$835, DW_AT_name("CLA_TRIGGER_SPITXCINT")
	.dwattr $C$DW$835, DW_AT_const_value(0x71)
	.dwattr $C$DW$835, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0xde)
	.dwattr $C$DW$835, DW_AT_decl_column(0x05)

$C$DW$836	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$836, DW_AT_name("CLA_TRIGGER_SPIRXCINT")
	.dwattr $C$DW$836, DW_AT_const_value(0x72)
	.dwattr $C$DW$836, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$836, DW_AT_decl_column(0x05)

$C$DW$837	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$837, DW_AT_name("CLA_TRIGGER_CLB1INT")
	.dwattr $C$DW$837, DW_AT_const_value(0x7f)
	.dwattr $C$DW$837, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$837, DW_AT_decl_column(0x05)

$C$DW$838	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$838, DW_AT_name("CLA_TRIGGER_CLB2INT")
	.dwattr $C$DW$838, DW_AT_const_value(0x80)
	.dwattr $C$DW$838, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$838, DW_AT_decl_column(0x05)

$C$DW$839	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$839, DW_AT_name("CLA_TRIGGER_CLB3INT")
	.dwattr $C$DW$839, DW_AT_const_value(0x81)
	.dwattr $C$DW$839, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$839, DW_AT_decl_column(0x05)

$C$DW$840	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$840, DW_AT_name("CLA_TRIGGER_CLB4INT")
	.dwattr $C$DW$840, DW_AT_const_value(0x82)
	.dwattr $C$DW$840, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$840, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("CLA_Trigger")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$841	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$841, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT")
	.dwattr $C$DW$841, DW_AT_const_value(0x00)
	.dwattr $C$DW$841, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x58)
	.dwattr $C$DW$841, DW_AT_decl_column(0x03)

$C$DW$842	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$842, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPATZERO")
	.dwattr $C$DW$842, DW_AT_const_value(0x400)
	.dwattr $C$DW$842, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$842, DW_AT_decl_column(0x03)

$C$DW$843	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$843, DW_AT_name("CPUTIMER_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$843, DW_AT_const_value(0x800)
	.dwattr $C$DW$843, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$843, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("CPUTimer_EmulationMode")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$844	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$844, DW_AT_name("DAC_REF_VDAC")
	.dwattr $C$DW$844, DW_AT_const_value(0x00)
	.dwattr $C$DW$844, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x67)
	.dwattr $C$DW$844, DW_AT_decl_column(0x05)

$C$DW$845	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$845, DW_AT_name("DAC_REF_ADC_VREFHI")
	.dwattr $C$DW$845, DW_AT_const_value(0x01)
	.dwattr $C$DW$845, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x68)
	.dwattr $C$DW$845, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("DAC_ReferenceVoltage")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$846	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$846, DW_AT_name("DAC_LOAD_SYSCLK")
	.dwattr $C$DW$846, DW_AT_const_value(0x00)
	.dwattr $C$DW$846, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x72)
	.dwattr $C$DW$846, DW_AT_decl_column(0x05)

$C$DW$847	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$847, DW_AT_name("DAC_LOAD_PWMSYNC")
	.dwattr $C$DW$847, DW_AT_const_value(0x04)
	.dwattr $C$DW$847, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x73)
	.dwattr $C$DW$847, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("DAC_LoadMode")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/dac.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$848	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$848, DW_AT_name("EPWM_COUNT_MODE_DOWN_AFTER_SYNC")
	.dwattr $C$DW$848, DW_AT_const_value(0x00)
	.dwattr $C$DW$848, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x65)
	.dwattr $C$DW$848, DW_AT_decl_column(0x04)

$C$DW$849	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$849, DW_AT_name("EPWM_COUNT_MODE_UP_AFTER_SYNC")
	.dwattr $C$DW$849, DW_AT_const_value(0x01)
	.dwattr $C$DW$849, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x66)
	.dwattr $C$DW$849, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("EPWM_SyncCountMode")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$850	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$850, DW_AT_name("EPWM_CLOCK_DIVIDER_1")
	.dwattr $C$DW$850, DW_AT_const_value(0x00)
	.dwattr $C$DW$850, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0x71)
	.dwattr $C$DW$850, DW_AT_decl_column(0x05)

$C$DW$851	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$851, DW_AT_name("EPWM_CLOCK_DIVIDER_2")
	.dwattr $C$DW$851, DW_AT_const_value(0x01)
	.dwattr $C$DW$851, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0x72)
	.dwattr $C$DW$851, DW_AT_decl_column(0x05)

$C$DW$852	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$852, DW_AT_name("EPWM_CLOCK_DIVIDER_4")
	.dwattr $C$DW$852, DW_AT_const_value(0x02)
	.dwattr $C$DW$852, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0x73)
	.dwattr $C$DW$852, DW_AT_decl_column(0x05)

$C$DW$853	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$853, DW_AT_name("EPWM_CLOCK_DIVIDER_8")
	.dwattr $C$DW$853, DW_AT_const_value(0x03)
	.dwattr $C$DW$853, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0x74)
	.dwattr $C$DW$853, DW_AT_decl_column(0x05)

$C$DW$854	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$854, DW_AT_name("EPWM_CLOCK_DIVIDER_16")
	.dwattr $C$DW$854, DW_AT_const_value(0x04)
	.dwattr $C$DW$854, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0x75)
	.dwattr $C$DW$854, DW_AT_decl_column(0x05)

$C$DW$855	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$855, DW_AT_name("EPWM_CLOCK_DIVIDER_32")
	.dwattr $C$DW$855, DW_AT_const_value(0x05)
	.dwattr $C$DW$855, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0x76)
	.dwattr $C$DW$855, DW_AT_decl_column(0x05)

$C$DW$856	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$856, DW_AT_name("EPWM_CLOCK_DIVIDER_64")
	.dwattr $C$DW$856, DW_AT_const_value(0x06)
	.dwattr $C$DW$856, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0x77)
	.dwattr $C$DW$856, DW_AT_decl_column(0x05)

$C$DW$857	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$857, DW_AT_name("EPWM_CLOCK_DIVIDER_128")
	.dwattr $C$DW$857, DW_AT_const_value(0x07)
	.dwattr $C$DW$857, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0x78)
	.dwattr $C$DW$857, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("EPWM_ClockDivider")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$858	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$858, DW_AT_name("EPWM_HSCLOCK_DIVIDER_1")
	.dwattr $C$DW$858, DW_AT_const_value(0x00)
	.dwattr $C$DW$858, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0x83)
	.dwattr $C$DW$858, DW_AT_decl_column(0x05)

$C$DW$859	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$859, DW_AT_name("EPWM_HSCLOCK_DIVIDER_2")
	.dwattr $C$DW$859, DW_AT_const_value(0x01)
	.dwattr $C$DW$859, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0x84)
	.dwattr $C$DW$859, DW_AT_decl_column(0x05)

$C$DW$860	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$860, DW_AT_name("EPWM_HSCLOCK_DIVIDER_4")
	.dwattr $C$DW$860, DW_AT_const_value(0x02)
	.dwattr $C$DW$860, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x85)
	.dwattr $C$DW$860, DW_AT_decl_column(0x05)

$C$DW$861	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$861, DW_AT_name("EPWM_HSCLOCK_DIVIDER_6")
	.dwattr $C$DW$861, DW_AT_const_value(0x03)
	.dwattr $C$DW$861, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x86)
	.dwattr $C$DW$861, DW_AT_decl_column(0x05)

$C$DW$862	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$862, DW_AT_name("EPWM_HSCLOCK_DIVIDER_8")
	.dwattr $C$DW$862, DW_AT_const_value(0x04)
	.dwattr $C$DW$862, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x87)
	.dwattr $C$DW$862, DW_AT_decl_column(0x05)

$C$DW$863	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$863, DW_AT_name("EPWM_HSCLOCK_DIVIDER_10")
	.dwattr $C$DW$863, DW_AT_const_value(0x05)
	.dwattr $C$DW$863, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x88)
	.dwattr $C$DW$863, DW_AT_decl_column(0x05)

$C$DW$864	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$864, DW_AT_name("EPWM_HSCLOCK_DIVIDER_12")
	.dwattr $C$DW$864, DW_AT_const_value(0x06)
	.dwattr $C$DW$864, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x89)
	.dwattr $C$DW$864, DW_AT_decl_column(0x05)

$C$DW$865	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$865, DW_AT_name("EPWM_HSCLOCK_DIVIDER_14")
	.dwattr $C$DW$865, DW_AT_const_value(0x07)
	.dwattr $C$DW$865, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$865, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("EPWM_HSClockDivider")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$866	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$866, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_SOFTWARE")
	.dwattr $C$DW$866, DW_AT_const_value(0x00)
	.dwattr $C$DW$866, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x96)
	.dwattr $C$DW$866, DW_AT_decl_column(0x05)

$C$DW$867	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$867, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN")
	.dwattr $C$DW$867, DW_AT_const_value(0x00)
	.dwattr $C$DW$867, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x98)
	.dwattr $C$DW$867, DW_AT_decl_column(0x05)

$C$DW$868	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$868, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO")
	.dwattr $C$DW$868, DW_AT_const_value(0x01)
	.dwattr $C$DW$868, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$868, DW_AT_decl_column(0x05)

$C$DW$869	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$869, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B")
	.dwattr $C$DW$869, DW_AT_const_value(0x02)
	.dwattr $C$DW$869, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$869, DW_AT_decl_column(0x05)

$C$DW$870	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$870, DW_AT_name("EPWM_SYNC_OUT_PULSE_DISABLED")
	.dwattr $C$DW$870, DW_AT_const_value(0x04)
	.dwattr $C$DW$870, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$870, DW_AT_decl_column(0x05)

$C$DW$871	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$871, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C")
	.dwattr $C$DW$871, DW_AT_const_value(0x05)
	.dwattr $C$DW$871, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$871, DW_AT_decl_column(0x05)

$C$DW$872	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$872, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D")
	.dwattr $C$DW$872, DW_AT_const_value(0x06)
	.dwattr $C$DW$872, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$872, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("EPWM_SyncOutPulseMode")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$873	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$873, DW_AT_name("EPWM_PERIOD_SHADOW_LOAD")
	.dwattr $C$DW$873, DW_AT_const_value(0x00)
	.dwattr $C$DW$873, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0xae)
	.dwattr $C$DW$873, DW_AT_decl_column(0x05)

$C$DW$874	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$874, DW_AT_name("EPWM_PERIOD_DIRECT_LOAD")
	.dwattr $C$DW$874, DW_AT_const_value(0x01)
	.dwattr $C$DW$874, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$874, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("EPWM_PeriodLoadMode")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$875	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$875, DW_AT_name("EPWM_COUNTER_MODE_UP")
	.dwattr $C$DW$875, DW_AT_const_value(0x00)
	.dwattr $C$DW$875, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$875, DW_AT_decl_column(0x05)

$C$DW$876	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$876, DW_AT_name("EPWM_COUNTER_MODE_DOWN")
	.dwattr $C$DW$876, DW_AT_const_value(0x01)
	.dwattr $C$DW$876, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$876, DW_AT_decl_column(0x05)

$C$DW$877	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$877, DW_AT_name("EPWM_COUNTER_MODE_UP_DOWN")
	.dwattr $C$DW$877, DW_AT_const_value(0x02)
	.dwattr $C$DW$877, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$877, DW_AT_decl_column(0x05)

$C$DW$878	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$878, DW_AT_name("EPWM_COUNTER_MODE_STOP_FREEZE")
	.dwattr $C$DW$878, DW_AT_const_value(0x03)
	.dwattr $C$DW$878, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$878, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("EPWM_TimeBaseCountMode")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$879	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$879, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$879, DW_AT_const_value(0x00)
	.dwattr $C$DW$879, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x111)
	.dwattr $C$DW$879, DW_AT_decl_column(0x05)

$C$DW$880	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$880, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$880, DW_AT_const_value(0x02)
	.dwattr $C$DW$880, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x112)
	.dwattr $C$DW$880, DW_AT_decl_column(0x05)

$C$DW$881	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$881, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$881, DW_AT_const_value(0x05)
	.dwattr $C$DW$881, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x113)
	.dwattr $C$DW$881, DW_AT_decl_column(0x05)

$C$DW$882	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$882, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$882, DW_AT_const_value(0x07)
	.dwattr $C$DW$882, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x114)
	.dwattr $C$DW$882, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$883	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$883, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$883, DW_AT_const_value(0x00)
	.dwattr $C$DW$883, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x120)
	.dwattr $C$DW$883, DW_AT_decl_column(0x05)

$C$DW$884	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$884, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$884, DW_AT_const_value(0x01)
	.dwattr $C$DW$884, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x122)
	.dwattr $C$DW$884, DW_AT_decl_column(0x05)

$C$DW$885	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$885, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$885, DW_AT_const_value(0x02)
	.dwattr $C$DW$885, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x124)
	.dwattr $C$DW$885, DW_AT_decl_column(0x05)

$C$DW$886	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$886, DW_AT_name("EPWM_COMP_LOAD_FREEZE")
	.dwattr $C$DW$886, DW_AT_const_value(0x03)
	.dwattr $C$DW$886, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0x126)
	.dwattr $C$DW$886, DW_AT_decl_column(0x05)

$C$DW$887	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$887, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO")
	.dwattr $C$DW$887, DW_AT_const_value(0x04)
	.dwattr $C$DW$887, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0x128)
	.dwattr $C$DW$887, DW_AT_decl_column(0x05)

$C$DW$888	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$888, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD")
	.dwattr $C$DW$888, DW_AT_const_value(0x05)
	.dwattr $C$DW$888, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$888, DW_AT_decl_column(0x05)

$C$DW$889	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$889, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$889, DW_AT_const_value(0x06)
	.dwattr $C$DW$889, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$889, DW_AT_decl_column(0x05)

$C$DW$890	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$890, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_ONLY")
	.dwattr $C$DW$890, DW_AT_const_value(0x08)
	.dwattr $C$DW$890, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$890, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("EPWM_CounterCompareLoadMode")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$891	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$891, DW_AT_name("EPWM_AQ_OUTPUT_A")
	.dwattr $C$DW$891, DW_AT_const_value(0x00)
	.dwattr $C$DW$891, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x213)
	.dwattr $C$DW$891, DW_AT_decl_column(0x05)

$C$DW$892	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$892, DW_AT_name("EPWM_AQ_OUTPUT_B")
	.dwattr $C$DW$892, DW_AT_const_value(0x02)
	.dwattr $C$DW$892, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x214)
	.dwattr $C$DW$892, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("EPWM_ActionQualifierOutputModule")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$893	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$893, DW_AT_name("EPWM_DB_RED")
	.dwattr $C$DW$893, DW_AT_const_value(0x01)
	.dwattr $C$DW$893, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$893, DW_AT_decl_column(0x05)

$C$DW$894	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$894, DW_AT_name("EPWM_DB_FED")
	.dwattr $C$DW$894, DW_AT_const_value(0x00)
	.dwattr $C$DW$894, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$894, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("EPWM_DeadBandDelayMode")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$895	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$895, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_HIGH")
	.dwattr $C$DW$895, DW_AT_const_value(0x00)
	.dwattr $C$DW$895, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x249)
	.dwattr $C$DW$895, DW_AT_decl_column(0x05)

$C$DW$896	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$896, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_LOW")
	.dwattr $C$DW$896, DW_AT_const_value(0x01)
	.dwattr $C$DW$896, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$896, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("EPWM_DeadBandPolarity")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$897	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$897, DW_AT_name("EPWM_TZ_DC_OUTPUT_A1")
	.dwattr $C$DW$897, DW_AT_const_value(0x00)
	.dwattr $C$DW$897, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$897, DW_AT_decl_column(0x05)

$C$DW$898	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$898, DW_AT_name("EPWM_TZ_DC_OUTPUT_A2")
	.dwattr $C$DW$898, DW_AT_const_value(0x03)
	.dwattr $C$DW$898, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x2e4)
	.dwattr $C$DW$898, DW_AT_decl_column(0x05)

$C$DW$899	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$899, DW_AT_name("EPWM_TZ_DC_OUTPUT_B1")
	.dwattr $C$DW$899, DW_AT_const_value(0x06)
	.dwattr $C$DW$899, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$899, DW_AT_decl_column(0x05)

$C$DW$900	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$900, DW_AT_name("EPWM_TZ_DC_OUTPUT_B2")
	.dwattr $C$DW$900, DW_AT_const_value(0x09)
	.dwattr $C$DW$900, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x2e6)
	.dwattr $C$DW$900, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("EPWM_TripZoneDigitalCompareOutput")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x2e7)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x01)
$C$DW$901	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$901, DW_AT_name("EPWM_TZ_EVENT_DC_DISABLED")
	.dwattr $C$DW$901, DW_AT_const_value(0x00)
	.dwattr $C$DW$901, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x2f1)
	.dwattr $C$DW$901, DW_AT_decl_column(0x05)

$C$DW$902	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$902, DW_AT_name("EPWM_TZ_EVENT_DCXH_LOW")
	.dwattr $C$DW$902, DW_AT_const_value(0x01)
	.dwattr $C$DW$902, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$902, DW_AT_decl_column(0x05)

$C$DW$903	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$903, DW_AT_name("EPWM_TZ_EVENT_DCXH_HIGH")
	.dwattr $C$DW$903, DW_AT_const_value(0x02)
	.dwattr $C$DW$903, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x2f3)
	.dwattr $C$DW$903, DW_AT_decl_column(0x05)

$C$DW$904	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$904, DW_AT_name("EPWM_TZ_EVENT_DCXL_LOW")
	.dwattr $C$DW$904, DW_AT_const_value(0x03)
	.dwattr $C$DW$904, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$904, DW_AT_decl_column(0x05)

$C$DW$905	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$905, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH")
	.dwattr $C$DW$905, DW_AT_const_value(0x04)
	.dwattr $C$DW$905, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x2f5)
	.dwattr $C$DW$905, DW_AT_decl_column(0x05)

$C$DW$906	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$906, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH_DCXH_LOW")
	.dwattr $C$DW$906, DW_AT_const_value(0x05)
	.dwattr $C$DW$906, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$906, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("EPWM_TripZoneDigitalCompareOutputEvent")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x2f7)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121

$C$DW$T$121	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$907	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$907, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZA")
	.dwattr $C$DW$907, DW_AT_const_value(0x00)
	.dwattr $C$DW$907, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0x301)
	.dwattr $C$DW$907, DW_AT_decl_column(0x05)

$C$DW$908	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$908, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZB")
	.dwattr $C$DW$908, DW_AT_const_value(0x02)
	.dwattr $C$DW$908, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0x302)
	.dwattr $C$DW$908, DW_AT_decl_column(0x05)

$C$DW$909	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$909, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT1")
	.dwattr $C$DW$909, DW_AT_const_value(0x04)
	.dwattr $C$DW$909, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0x303)
	.dwattr $C$DW$909, DW_AT_decl_column(0x05)

$C$DW$910	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$910, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT2")
	.dwattr $C$DW$910, DW_AT_const_value(0x06)
	.dwattr $C$DW$910, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0x304)
	.dwattr $C$DW$910, DW_AT_decl_column(0x05)

$C$DW$911	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$911, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT1")
	.dwattr $C$DW$911, DW_AT_const_value(0x08)
	.dwattr $C$DW$911, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0x305)
	.dwattr $C$DW$911, DW_AT_decl_column(0x05)

$C$DW$912	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$912, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT2")
	.dwattr $C$DW$912, DW_AT_const_value(0x0a)
	.dwattr $C$DW$912, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0x306)
	.dwattr $C$DW$912, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x300)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$121

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("EPWM_TripZoneEvent")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x307)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$913	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$913, DW_AT_name("EPWM_TZ_ACTION_HIGH_Z")
	.dwattr $C$DW$913, DW_AT_const_value(0x00)
	.dwattr $C$DW$913, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0x311)
	.dwattr $C$DW$913, DW_AT_decl_column(0x05)

$C$DW$914	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$914, DW_AT_name("EPWM_TZ_ACTION_HIGH")
	.dwattr $C$DW$914, DW_AT_const_value(0x01)
	.dwattr $C$DW$914, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0x312)
	.dwattr $C$DW$914, DW_AT_decl_column(0x05)

$C$DW$915	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$915, DW_AT_name("EPWM_TZ_ACTION_LOW")
	.dwattr $C$DW$915, DW_AT_const_value(0x02)
	.dwattr $C$DW$915, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0x313)
	.dwattr $C$DW$915, DW_AT_decl_column(0x05)

$C$DW$916	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$916, DW_AT_name("EPWM_TZ_ACTION_DISABLE")
	.dwattr $C$DW$916, DW_AT_const_value(0x03)
	.dwattr $C$DW$916, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0x314)
	.dwattr $C$DW$916, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x310)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("EPWM_TripZoneAction")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x315)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125

$C$DW$T$125	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$917	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$917, DW_AT_name("EPWM_SOC_A")
	.dwattr $C$DW$917, DW_AT_const_value(0x00)
	.dwattr $C$DW$917, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0x429)
	.dwattr $C$DW$917, DW_AT_decl_column(0x05)

$C$DW$918	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$918, DW_AT_name("EPWM_SOC_B")
	.dwattr $C$DW$918, DW_AT_const_value(0x01)
	.dwattr $C$DW$918, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0x42a)
	.dwattr $C$DW$918, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x428)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$125

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("EPWM_ADCStartOfConversionType")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x42b)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x01)
$C$DW$919	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$919, DW_AT_name("EPWM_SOC_DCxEVT1")
	.dwattr $C$DW$919, DW_AT_const_value(0x00)
	.dwattr $C$DW$919, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0x436)
	.dwattr $C$DW$919, DW_AT_decl_column(0x05)

$C$DW$920	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$920, DW_AT_name("EPWM_SOC_TBCTR_ZERO")
	.dwattr $C$DW$920, DW_AT_const_value(0x01)
	.dwattr $C$DW$920, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0x438)
	.dwattr $C$DW$920, DW_AT_decl_column(0x05)

$C$DW$921	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$921, DW_AT_name("EPWM_SOC_TBCTR_PERIOD")
	.dwattr $C$DW$921, DW_AT_const_value(0x02)
	.dwattr $C$DW$921, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0x43a)
	.dwattr $C$DW$921, DW_AT_decl_column(0x05)

$C$DW$922	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$922, DW_AT_name("EPWM_SOC_TBCTR_ZERO_OR_PERIOD")
	.dwattr $C$DW$922, DW_AT_const_value(0x03)
	.dwattr $C$DW$922, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0x43c)
	.dwattr $C$DW$922, DW_AT_decl_column(0x05)

$C$DW$923	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$923, DW_AT_name("EPWM_SOC_TBCTR_U_CMPA")
	.dwattr $C$DW$923, DW_AT_const_value(0x04)
	.dwattr $C$DW$923, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0x43e)
	.dwattr $C$DW$923, DW_AT_decl_column(0x05)

$C$DW$924	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$924, DW_AT_name("EPWM_SOC_TBCTR_U_CMPC")
	.dwattr $C$DW$924, DW_AT_const_value(0x08)
	.dwattr $C$DW$924, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x440)
	.dwattr $C$DW$924, DW_AT_decl_column(0x05)

$C$DW$925	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$925, DW_AT_name("EPWM_SOC_TBCTR_D_CMPA")
	.dwattr $C$DW$925, DW_AT_const_value(0x05)
	.dwattr $C$DW$925, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x442)
	.dwattr $C$DW$925, DW_AT_decl_column(0x05)

$C$DW$926	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$926, DW_AT_name("EPWM_SOC_TBCTR_D_CMPC")
	.dwattr $C$DW$926, DW_AT_const_value(0x0a)
	.dwattr $C$DW$926, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x444)
	.dwattr $C$DW$926, DW_AT_decl_column(0x05)

$C$DW$927	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$927, DW_AT_name("EPWM_SOC_TBCTR_U_CMPB")
	.dwattr $C$DW$927, DW_AT_const_value(0x06)
	.dwattr $C$DW$927, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x446)
	.dwattr $C$DW$927, DW_AT_decl_column(0x05)

$C$DW$928	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$928, DW_AT_name("EPWM_SOC_TBCTR_U_CMPD")
	.dwattr $C$DW$928, DW_AT_const_value(0x0c)
	.dwattr $C$DW$928, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x448)
	.dwattr $C$DW$928, DW_AT_decl_column(0x05)

$C$DW$929	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$929, DW_AT_name("EPWM_SOC_TBCTR_D_CMPB")
	.dwattr $C$DW$929, DW_AT_const_value(0x07)
	.dwattr $C$DW$929, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x44a)
	.dwattr $C$DW$929, DW_AT_decl_column(0x05)

$C$DW$930	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$930, DW_AT_name("EPWM_SOC_TBCTR_D_CMPD")
	.dwattr $C$DW$930, DW_AT_const_value(0x0e)
	.dwattr $C$DW$930, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x44c)
	.dwattr $C$DW$930, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x434)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("EPWM_ADCStartOfConversionSource")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x44d)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x01)
$C$DW$931	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$931, DW_AT_name("EPWM_DC_TRIP_TRIPIN1")
	.dwattr $C$DW$931, DW_AT_const_value(0x00)
	.dwattr $C$DW$931, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x46a)
	.dwattr $C$DW$931, DW_AT_decl_column(0x05)

$C$DW$932	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$932, DW_AT_name("EPWM_DC_TRIP_TRIPIN2")
	.dwattr $C$DW$932, DW_AT_const_value(0x01)
	.dwattr $C$DW$932, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x46b)
	.dwattr $C$DW$932, DW_AT_decl_column(0x05)

$C$DW$933	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$933, DW_AT_name("EPWM_DC_TRIP_TRIPIN3")
	.dwattr $C$DW$933, DW_AT_const_value(0x02)
	.dwattr $C$DW$933, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x46c)
	.dwattr $C$DW$933, DW_AT_decl_column(0x05)

$C$DW$934	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$934, DW_AT_name("EPWM_DC_TRIP_TRIPIN4")
	.dwattr $C$DW$934, DW_AT_const_value(0x03)
	.dwattr $C$DW$934, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0x46d)
	.dwattr $C$DW$934, DW_AT_decl_column(0x05)

$C$DW$935	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$935, DW_AT_name("EPWM_DC_TRIP_TRIPIN5")
	.dwattr $C$DW$935, DW_AT_const_value(0x04)
	.dwattr $C$DW$935, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0x46e)
	.dwattr $C$DW$935, DW_AT_decl_column(0x05)

$C$DW$936	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$936, DW_AT_name("EPWM_DC_TRIP_TRIPIN6")
	.dwattr $C$DW$936, DW_AT_const_value(0x05)
	.dwattr $C$DW$936, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0x46f)
	.dwattr $C$DW$936, DW_AT_decl_column(0x05)

$C$DW$937	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$937, DW_AT_name("EPWM_DC_TRIP_TRIPIN7")
	.dwattr $C$DW$937, DW_AT_const_value(0x06)
	.dwattr $C$DW$937, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0x470)
	.dwattr $C$DW$937, DW_AT_decl_column(0x05)

$C$DW$938	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$938, DW_AT_name("EPWM_DC_TRIP_TRIPIN8")
	.dwattr $C$DW$938, DW_AT_const_value(0x07)
	.dwattr $C$DW$938, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0x471)
	.dwattr $C$DW$938, DW_AT_decl_column(0x05)

$C$DW$939	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$939, DW_AT_name("EPWM_DC_TRIP_TRIPIN9")
	.dwattr $C$DW$939, DW_AT_const_value(0x08)
	.dwattr $C$DW$939, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0x472)
	.dwattr $C$DW$939, DW_AT_decl_column(0x05)

$C$DW$940	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$940, DW_AT_name("EPWM_DC_TRIP_TRIPIN10")
	.dwattr $C$DW$940, DW_AT_const_value(0x09)
	.dwattr $C$DW$940, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0x473)
	.dwattr $C$DW$940, DW_AT_decl_column(0x05)

$C$DW$941	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$941, DW_AT_name("EPWM_DC_TRIP_TRIPIN11")
	.dwattr $C$DW$941, DW_AT_const_value(0x0a)
	.dwattr $C$DW$941, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x474)
	.dwattr $C$DW$941, DW_AT_decl_column(0x05)

$C$DW$942	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$942, DW_AT_name("EPWM_DC_TRIP_TRIPIN12")
	.dwattr $C$DW$942, DW_AT_const_value(0x0b)
	.dwattr $C$DW$942, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x475)
	.dwattr $C$DW$942, DW_AT_decl_column(0x05)

$C$DW$943	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$943, DW_AT_name("EPWM_DC_TRIP_TRIPIN14")
	.dwattr $C$DW$943, DW_AT_const_value(0x0d)
	.dwattr $C$DW$943, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0x476)
	.dwattr $C$DW$943, DW_AT_decl_column(0x05)

$C$DW$944	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$944, DW_AT_name("EPWM_DC_TRIP_TRIPIN15")
	.dwattr $C$DW$944, DW_AT_const_value(0x0e)
	.dwattr $C$DW$944, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0x477)
	.dwattr $C$DW$944, DW_AT_decl_column(0x05)

$C$DW$945	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$945, DW_AT_name("EPWM_DC_TRIP_COMBINATION")
	.dwattr $C$DW$945, DW_AT_const_value(0x0f)
	.dwattr $C$DW$945, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0x478)
	.dwattr $C$DW$945, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x469)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("EPWM_DigitalCompareTripInput")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x479)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x01)
$C$DW$946	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$946, DW_AT_name("EPWM_DC_TYPE_DCAH")
	.dwattr $C$DW$946, DW_AT_const_value(0x00)
	.dwattr $C$DW$946, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0x45c)
	.dwattr $C$DW$946, DW_AT_decl_column(0x05)

$C$DW$947	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$947, DW_AT_name("EPWM_DC_TYPE_DCAL")
	.dwattr $C$DW$947, DW_AT_const_value(0x01)
	.dwattr $C$DW$947, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x45d)
	.dwattr $C$DW$947, DW_AT_decl_column(0x05)

$C$DW$948	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$948, DW_AT_name("EPWM_DC_TYPE_DCBH")
	.dwattr $C$DW$948, DW_AT_const_value(0x02)
	.dwattr $C$DW$948, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x45e)
	.dwattr $C$DW$948, DW_AT_decl_column(0x05)

$C$DW$949	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$949, DW_AT_name("EPWM_DC_TYPE_DCBL")
	.dwattr $C$DW$949, DW_AT_const_value(0x03)
	.dwattr $C$DW$949, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$949, DW_AT_decl_line(0x45f)
	.dwattr $C$DW$949, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x45b)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("EPWM_DigitalCompareType")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x460)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133

$C$DW$T$133	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x01)
$C$DW$950	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$950, DW_AT_name("EPWM_DC_MODULE_A")
	.dwattr $C$DW$950, DW_AT_const_value(0x00)
	.dwattr $C$DW$950, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$950, DW_AT_decl_line(0x4d5)
	.dwattr $C$DW$950, DW_AT_decl_column(0x05)

$C$DW$951	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$951, DW_AT_name("EPWM_DC_MODULE_B")
	.dwattr $C$DW$951, DW_AT_const_value(0x01)
	.dwattr $C$DW$951, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$951, DW_AT_decl_line(0x4d6)
	.dwattr $C$DW$951, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x4d4)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$133

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134
$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("EPWM_DigitalCompareModule")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x4d7)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135

$C$DW$T$135	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x01)
$C$DW$952	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$952, DW_AT_name("EPWM_DC_EVENT_1")
	.dwattr $C$DW$952, DW_AT_const_value(0x00)
	.dwattr $C$DW$952, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$952, DW_AT_decl_line(0x4e1)
	.dwattr $C$DW$952, DW_AT_decl_column(0x05)

$C$DW$953	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$953, DW_AT_name("EPWM_DC_EVENT_2")
	.dwattr $C$DW$953, DW_AT_const_value(0x01)
	.dwattr $C$DW$953, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$953, DW_AT_decl_line(0x4e2)
	.dwattr $C$DW$953, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x4e0)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$135

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136
$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("EPWM_DigitalCompareEvent")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x4e3)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137

$C$DW$T$137	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x01)
$C$DW$954	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$954, DW_AT_name("EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL")
	.dwattr $C$DW$954, DW_AT_const_value(0x00)
	.dwattr $C$DW$954, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$954, DW_AT_decl_line(0x4ee)
	.dwattr $C$DW$954, DW_AT_decl_column(0x05)

$C$DW$955	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$955, DW_AT_name("EPWM_DC_EVENT_SOURCE_FILT_SIGNAL")
	.dwattr $C$DW$955, DW_AT_const_value(0x01)
	.dwattr $C$DW$955, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$955, DW_AT_decl_line(0x4f0)
	.dwattr $C$DW$955, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x4ec)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$137

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138
$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("EPWM_DigitalCompareEventSource")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x4f1)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$138


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139

$C$DW$T$139	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x01)
$C$DW$956	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$956, DW_AT_name("EPWM_DC_EVENT_INPUT_SYNCED")
	.dwattr $C$DW$956, DW_AT_const_value(0x00)
	.dwattr $C$DW$956, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$956, DW_AT_decl_line(0x4fc)
	.dwattr $C$DW$956, DW_AT_decl_column(0x05)

$C$DW$957	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$957, DW_AT_name("EPWM_DC_EVENT_INPUT_NOT_SYNCED")
	.dwattr $C$DW$957, DW_AT_const_value(0x01)
	.dwattr $C$DW$957, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$957, DW_AT_decl_line(0x4fe)
	.dwattr $C$DW$957, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x4fa)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$139

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140
$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("EPWM_DigitalCompareSyncMode")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x4ff)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$140


$C$DW$TU$141	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$141

$C$DW$T$141	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x01)
$C$DW$958	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$958, DW_AT_name("EQEP_POSITION_RESET_IDX")
	.dwattr $C$DW$958, DW_AT_const_value(0x00)
	.dwattr $C$DW$958, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$958, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$958, DW_AT_decl_column(0x05)

$C$DW$959	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$959, DW_AT_name("EQEP_POSITION_RESET_MAX_POS")
	.dwattr $C$DW$959, DW_AT_const_value(0x1000)
	.dwattr $C$DW$959, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$959, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$959, DW_AT_decl_column(0x05)

$C$DW$960	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$960, DW_AT_name("EQEP_POSITION_RESET_1ST_IDX")
	.dwattr $C$DW$960, DW_AT_const_value(0x2000)
	.dwattr $C$DW$960, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$960, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$960, DW_AT_decl_column(0x05)

$C$DW$961	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$961, DW_AT_name("EQEP_POSITION_RESET_UNIT_TIME_OUT")
	.dwattr $C$DW$961, DW_AT_const_value(0x3000)
	.dwattr $C$DW$961, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$961, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$961, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$141

	.dwendtag $C$DW$TU$141


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142
$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("EQEP_PositionResetMode")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$142


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143

$C$DW$T$143	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x01)
$C$DW$962	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$962, DW_AT_name("EQEP_CAPTURE_CLK_DIV_1")
	.dwattr $C$DW$962, DW_AT_const_value(0x00)
	.dwattr $C$DW$962, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$962, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$962, DW_AT_decl_column(0x05)

$C$DW$963	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$963, DW_AT_name("EQEP_CAPTURE_CLK_DIV_2")
	.dwattr $C$DW$963, DW_AT_const_value(0x10)
	.dwattr $C$DW$963, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$963, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$963, DW_AT_decl_column(0x05)

$C$DW$964	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$964, DW_AT_name("EQEP_CAPTURE_CLK_DIV_4")
	.dwattr $C$DW$964, DW_AT_const_value(0x20)
	.dwattr $C$DW$964, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$964, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$964, DW_AT_decl_column(0x05)

$C$DW$965	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$965, DW_AT_name("EQEP_CAPTURE_CLK_DIV_8")
	.dwattr $C$DW$965, DW_AT_const_value(0x30)
	.dwattr $C$DW$965, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$965, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$965, DW_AT_decl_column(0x05)

$C$DW$966	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$966, DW_AT_name("EQEP_CAPTURE_CLK_DIV_16")
	.dwattr $C$DW$966, DW_AT_const_value(0x40)
	.dwattr $C$DW$966, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$966, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$966, DW_AT_decl_column(0x05)

$C$DW$967	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$967, DW_AT_name("EQEP_CAPTURE_CLK_DIV_32")
	.dwattr $C$DW$967, DW_AT_const_value(0x50)
	.dwattr $C$DW$967, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$967, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$967, DW_AT_decl_column(0x05)

$C$DW$968	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$968, DW_AT_name("EQEP_CAPTURE_CLK_DIV_64")
	.dwattr $C$DW$968, DW_AT_const_value(0x60)
	.dwattr $C$DW$968, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$968, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$968, DW_AT_decl_column(0x05)

$C$DW$969	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$969, DW_AT_name("EQEP_CAPTURE_CLK_DIV_128")
	.dwattr $C$DW$969, DW_AT_const_value(0x70)
	.dwattr $C$DW$969, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$969, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$969, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$143

	.dwendtag $C$DW$TU$143


$C$DW$TU$144	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$144
$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("EQEP_CAPCLKPrescale")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$144


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145

$C$DW$T$145	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x01)
$C$DW$970	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$970, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_1")
	.dwattr $C$DW$970, DW_AT_const_value(0x00)
	.dwattr $C$DW$970, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$970, DW_AT_decl_line(0x108)
	.dwattr $C$DW$970, DW_AT_decl_column(0x05)

$C$DW$971	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$971, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_2")
	.dwattr $C$DW$971, DW_AT_const_value(0x01)
	.dwattr $C$DW$971, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$971, DW_AT_decl_line(0x109)
	.dwattr $C$DW$971, DW_AT_decl_column(0x05)

$C$DW$972	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$972, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_4")
	.dwattr $C$DW$972, DW_AT_const_value(0x02)
	.dwattr $C$DW$972, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$972, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$972, DW_AT_decl_column(0x05)

$C$DW$973	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$973, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_8")
	.dwattr $C$DW$973, DW_AT_const_value(0x03)
	.dwattr $C$DW$973, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$973, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$973, DW_AT_decl_column(0x05)

$C$DW$974	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$974, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_16")
	.dwattr $C$DW$974, DW_AT_const_value(0x04)
	.dwattr $C$DW$974, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$974, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$974, DW_AT_decl_column(0x05)

$C$DW$975	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$975, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_32")
	.dwattr $C$DW$975, DW_AT_const_value(0x05)
	.dwattr $C$DW$975, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$975, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$975, DW_AT_decl_column(0x05)

$C$DW$976	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$976, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_64")
	.dwattr $C$DW$976, DW_AT_const_value(0x06)
	.dwattr $C$DW$976, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$976, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$976, DW_AT_decl_column(0x05)

$C$DW$977	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$977, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_128")
	.dwattr $C$DW$977, DW_AT_const_value(0x07)
	.dwattr $C$DW$977, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$977, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$977, DW_AT_decl_column(0x05)

$C$DW$978	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$978, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_256")
	.dwattr $C$DW$978, DW_AT_const_value(0x08)
	.dwattr $C$DW$978, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$978, DW_AT_decl_line(0x110)
	.dwattr $C$DW$978, DW_AT_decl_column(0x05)

$C$DW$979	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$979, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_512")
	.dwattr $C$DW$979, DW_AT_const_value(0x09)
	.dwattr $C$DW$979, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$979, DW_AT_decl_line(0x111)
	.dwattr $C$DW$979, DW_AT_decl_column(0x05)

$C$DW$980	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$980, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_1024")
	.dwattr $C$DW$980, DW_AT_const_value(0x0a)
	.dwattr $C$DW$980, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$980, DW_AT_decl_line(0x112)
	.dwattr $C$DW$980, DW_AT_decl_column(0x05)

$C$DW$981	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$981, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_2048")
	.dwattr $C$DW$981, DW_AT_const_value(0x0b)
	.dwattr $C$DW$981, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$981, DW_AT_decl_line(0x113)
	.dwattr $C$DW$981, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$145

	.dwendtag $C$DW$TU$145


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146
$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("EQEP_UPEVNTPrescale")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x114)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147

$C$DW$T$147	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x01)
$C$DW$982	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$982, DW_AT_name("EQEP_EMULATIONMODE_STOPIMMEDIATELY")
	.dwattr $C$DW$982, DW_AT_const_value(0x00)
	.dwattr $C$DW$982, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$982, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$982, DW_AT_decl_column(0x03)

$C$DW$983	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$983, DW_AT_name("EQEP_EMULATIONMODE_STOPATROLLOVER")
	.dwattr $C$DW$983, DW_AT_const_value(0x01)
	.dwattr $C$DW$983, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$983, DW_AT_decl_line(0x120)
	.dwattr $C$DW$983, DW_AT_decl_column(0x03)

$C$DW$984	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$984, DW_AT_name("EQEP_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$984, DW_AT_const_value(0x02)
	.dwattr $C$DW$984, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$984, DW_AT_decl_line(0x121)
	.dwattr $C$DW$984, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$147

	.dwendtag $C$DW$TU$147


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148
$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("EQEP_EmulationMode")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x122)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$148


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149

$C$DW$T$149	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x01)
$C$DW$985	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$985, DW_AT_name("XBAR_OUTPUT1")
	.dwattr $C$DW$985, DW_AT_const_value(0x00)
	.dwattr $C$DW$985, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$985, DW_AT_decl_line(0x95)
	.dwattr $C$DW$985, DW_AT_decl_column(0x05)

$C$DW$986	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$986, DW_AT_name("XBAR_OUTPUT2")
	.dwattr $C$DW$986, DW_AT_const_value(0x02)
	.dwattr $C$DW$986, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$986, DW_AT_decl_line(0x96)
	.dwattr $C$DW$986, DW_AT_decl_column(0x05)

$C$DW$987	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$987, DW_AT_name("XBAR_OUTPUT3")
	.dwattr $C$DW$987, DW_AT_const_value(0x04)
	.dwattr $C$DW$987, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$987, DW_AT_decl_line(0x97)
	.dwattr $C$DW$987, DW_AT_decl_column(0x05)

$C$DW$988	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$988, DW_AT_name("XBAR_OUTPUT4")
	.dwattr $C$DW$988, DW_AT_const_value(0x06)
	.dwattr $C$DW$988, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$988, DW_AT_decl_line(0x98)
	.dwattr $C$DW$988, DW_AT_decl_column(0x05)

$C$DW$989	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$989, DW_AT_name("XBAR_OUTPUT5")
	.dwattr $C$DW$989, DW_AT_const_value(0x08)
	.dwattr $C$DW$989, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$989, DW_AT_decl_line(0x99)
	.dwattr $C$DW$989, DW_AT_decl_column(0x05)

$C$DW$990	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$990, DW_AT_name("XBAR_OUTPUT6")
	.dwattr $C$DW$990, DW_AT_const_value(0x0a)
	.dwattr $C$DW$990, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$990, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$990, DW_AT_decl_column(0x05)

$C$DW$991	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$991, DW_AT_name("XBAR_OUTPUT7")
	.dwattr $C$DW$991, DW_AT_const_value(0x0c)
	.dwattr $C$DW$991, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$991, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$991, DW_AT_decl_column(0x05)

$C$DW$992	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$992, DW_AT_name("XBAR_OUTPUT8")
	.dwattr $C$DW$992, DW_AT_const_value(0x0e)
	.dwattr $C$DW$992, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$992, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$992, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$149, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$149

	.dwendtag $C$DW$TU$149


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150
$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("XBAR_OutputNum")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$150


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151

$C$DW$T$151	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x01)
$C$DW$993	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$993, DW_AT_name("XBAR_TRIP4")
	.dwattr $C$DW$993, DW_AT_const_value(0x00)
	.dwattr $C$DW$993, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$993, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$993, DW_AT_decl_column(0x05)

$C$DW$994	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$994, DW_AT_name("XBAR_TRIP5")
	.dwattr $C$DW$994, DW_AT_const_value(0x02)
	.dwattr $C$DW$994, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$994, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$994, DW_AT_decl_column(0x05)

$C$DW$995	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$995, DW_AT_name("XBAR_TRIP7")
	.dwattr $C$DW$995, DW_AT_const_value(0x04)
	.dwattr $C$DW$995, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$995, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$995, DW_AT_decl_column(0x05)

$C$DW$996	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$996, DW_AT_name("XBAR_TRIP8")
	.dwattr $C$DW$996, DW_AT_const_value(0x06)
	.dwattr $C$DW$996, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$996, DW_AT_decl_line(0xab)
	.dwattr $C$DW$996, DW_AT_decl_column(0x05)

$C$DW$997	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$997, DW_AT_name("XBAR_TRIP9")
	.dwattr $C$DW$997, DW_AT_const_value(0x08)
	.dwattr $C$DW$997, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$997, DW_AT_decl_line(0xac)
	.dwattr $C$DW$997, DW_AT_decl_column(0x05)

$C$DW$998	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$998, DW_AT_name("XBAR_TRIP10")
	.dwattr $C$DW$998, DW_AT_const_value(0x0a)
	.dwattr $C$DW$998, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$998, DW_AT_decl_line(0xad)
	.dwattr $C$DW$998, DW_AT_decl_column(0x05)

$C$DW$999	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$999, DW_AT_name("XBAR_TRIP11")
	.dwattr $C$DW$999, DW_AT_const_value(0x0c)
	.dwattr $C$DW$999, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$999, DW_AT_decl_line(0xae)
	.dwattr $C$DW$999, DW_AT_decl_column(0x05)

$C$DW$1000	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1000, DW_AT_name("XBAR_TRIP12")
	.dwattr $C$DW$1000, DW_AT_const_value(0x0e)
	.dwattr $C$DW$1000, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1000, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$1000, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$151, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$151

	.dwendtag $C$DW$TU$151


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152
$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("XBAR_TripNum")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$152


$C$DW$TU$153	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$153

$C$DW$T$153	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x01)
$C$DW$1001	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1001, DW_AT_name("XBAR_INPUT1")
	.dwattr $C$DW$1001, DW_AT_const_value(0x00)
	.dwattr $C$DW$1001, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1001, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$1001, DW_AT_decl_column(0x05)

$C$DW$1002	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1002, DW_AT_name("XBAR_INPUT2")
	.dwattr $C$DW$1002, DW_AT_const_value(0x01)
	.dwattr $C$DW$1002, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1002, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$1002, DW_AT_decl_column(0x05)

$C$DW$1003	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1003, DW_AT_name("XBAR_INPUT3")
	.dwattr $C$DW$1003, DW_AT_const_value(0x02)
	.dwattr $C$DW$1003, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1003, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$1003, DW_AT_decl_column(0x05)

$C$DW$1004	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1004, DW_AT_name("XBAR_INPUT4")
	.dwattr $C$DW$1004, DW_AT_const_value(0x03)
	.dwattr $C$DW$1004, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1004, DW_AT_decl_line(0xce)
	.dwattr $C$DW$1004, DW_AT_decl_column(0x05)

$C$DW$1005	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1005, DW_AT_name("XBAR_INPUT5")
	.dwattr $C$DW$1005, DW_AT_const_value(0x04)
	.dwattr $C$DW$1005, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1005, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$1005, DW_AT_decl_column(0x05)

$C$DW$1006	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1006, DW_AT_name("XBAR_INPUT6")
	.dwattr $C$DW$1006, DW_AT_const_value(0x05)
	.dwattr $C$DW$1006, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1006, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$1006, DW_AT_decl_column(0x05)

$C$DW$1007	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1007, DW_AT_name("XBAR_INPUT7")
	.dwattr $C$DW$1007, DW_AT_const_value(0x06)
	.dwattr $C$DW$1007, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1007, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$1007, DW_AT_decl_column(0x05)

$C$DW$1008	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1008, DW_AT_name("XBAR_INPUT8")
	.dwattr $C$DW$1008, DW_AT_const_value(0x07)
	.dwattr $C$DW$1008, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1008, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$1008, DW_AT_decl_column(0x05)

$C$DW$1009	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1009, DW_AT_name("XBAR_INPUT9")
	.dwattr $C$DW$1009, DW_AT_const_value(0x08)
	.dwattr $C$DW$1009, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1009, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$1009, DW_AT_decl_column(0x05)

$C$DW$1010	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1010, DW_AT_name("XBAR_INPUT10")
	.dwattr $C$DW$1010, DW_AT_const_value(0x09)
	.dwattr $C$DW$1010, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1010, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$1010, DW_AT_decl_column(0x05)

$C$DW$1011	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1011, DW_AT_name("XBAR_INPUT11")
	.dwattr $C$DW$1011, DW_AT_const_value(0x0a)
	.dwattr $C$DW$1011, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1011, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$1011, DW_AT_decl_column(0x05)

$C$DW$1012	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1012, DW_AT_name("XBAR_INPUT12")
	.dwattr $C$DW$1012, DW_AT_const_value(0x0b)
	.dwattr $C$DW$1012, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1012, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$1012, DW_AT_decl_column(0x05)

$C$DW$1013	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1013, DW_AT_name("XBAR_INPUT13")
	.dwattr $C$DW$1013, DW_AT_const_value(0x0c)
	.dwattr $C$DW$1013, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1013, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$1013, DW_AT_decl_column(0x05)

$C$DW$1014	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1014, DW_AT_name("XBAR_INPUT14")
	.dwattr $C$DW$1014, DW_AT_const_value(0x0d)
	.dwattr $C$DW$1014, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1014, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$1014, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$153, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$153

	.dwendtag $C$DW$TU$153


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154
$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("XBAR_InputNum")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$154


$C$DW$TU$155	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$155

$C$DW$T$155	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x01)
$C$DW$1015	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1015, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH")
	.dwattr $C$DW$1015, DW_AT_const_value(0x00)
	.dwattr $C$DW$1015, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1015, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$1015, DW_AT_decl_column(0x05)

$C$DW$1016	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1016, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1016, DW_AT_const_value(0x01)
	.dwattr $C$DW$1016, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1016, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$1016, DW_AT_decl_column(0x05)

$C$DW$1017	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1017, DW_AT_name("XBAR_OUT_MUX00_ADCAEVT1")
	.dwattr $C$DW$1017, DW_AT_const_value(0x02)
	.dwattr $C$DW$1017, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1017, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$1017, DW_AT_decl_column(0x05)

$C$DW$1018	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1018, DW_AT_name("XBAR_OUT_MUX00_ECAP1_OUT")
	.dwattr $C$DW$1018, DW_AT_const_value(0x03)
	.dwattr $C$DW$1018, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1018, DW_AT_decl_line(0xea)
	.dwattr $C$DW$1018, DW_AT_decl_column(0x05)

$C$DW$1019	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1019, DW_AT_name("XBAR_OUT_MUX01_CMPSS1_CTRIPOUTL")
	.dwattr $C$DW$1019, DW_AT_const_value(0x200)
	.dwattr $C$DW$1019, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1019, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$1019, DW_AT_decl_column(0x05)

$C$DW$1020	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1020, DW_AT_name("XBAR_OUT_MUX01_INPUTXBAR1")
	.dwattr $C$DW$1020, DW_AT_const_value(0x201)
	.dwattr $C$DW$1020, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1020, DW_AT_decl_line(0xec)
	.dwattr $C$DW$1020, DW_AT_decl_column(0x05)

$C$DW$1021	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1021, DW_AT_name("XBAR_OUT_MUX01_CLB1_OUT4")
	.dwattr $C$DW$1021, DW_AT_const_value(0x202)
	.dwattr $C$DW$1021, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1021, DW_AT_decl_line(0xed)
	.dwattr $C$DW$1021, DW_AT_decl_column(0x05)

$C$DW$1022	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1022, DW_AT_name("XBAR_OUT_MUX01_ADCCEVT1")
	.dwattr $C$DW$1022, DW_AT_const_value(0x203)
	.dwattr $C$DW$1022, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1022, DW_AT_decl_line(0xee)
	.dwattr $C$DW$1022, DW_AT_decl_column(0x05)

$C$DW$1023	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1023, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH")
	.dwattr $C$DW$1023, DW_AT_const_value(0x400)
	.dwattr $C$DW$1023, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1023, DW_AT_decl_line(0xef)
	.dwattr $C$DW$1023, DW_AT_decl_column(0x05)

$C$DW$1024	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1024, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1024, DW_AT_const_value(0x401)
	.dwattr $C$DW$1024, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1024, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$1024, DW_AT_decl_column(0x05)

$C$DW$1025	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1025, DW_AT_name("XBAR_OUT_MUX02_ADCAEVT2")
	.dwattr $C$DW$1025, DW_AT_const_value(0x402)
	.dwattr $C$DW$1025, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1025, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$1025, DW_AT_decl_column(0x05)

$C$DW$1026	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1026, DW_AT_name("XBAR_OUT_MUX02_ECAP2_OUT")
	.dwattr $C$DW$1026, DW_AT_const_value(0x403)
	.dwattr $C$DW$1026, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1026, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$1026, DW_AT_decl_column(0x05)

$C$DW$1027	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1027, DW_AT_name("XBAR_OUT_MUX03_CMPSS2_CTRIPOUTL")
	.dwattr $C$DW$1027, DW_AT_const_value(0x600)
	.dwattr $C$DW$1027, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1027, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$1027, DW_AT_decl_column(0x05)

$C$DW$1028	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1028, DW_AT_name("XBAR_OUT_MUX03_INPUTXBAR2")
	.dwattr $C$DW$1028, DW_AT_const_value(0x601)
	.dwattr $C$DW$1028, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1028, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$1028, DW_AT_decl_column(0x05)

$C$DW$1029	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1029, DW_AT_name("XBAR_OUT_MUX03_CLB1_OUT5")
	.dwattr $C$DW$1029, DW_AT_const_value(0x602)
	.dwattr $C$DW$1029, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1029, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$1029, DW_AT_decl_column(0x05)

$C$DW$1030	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1030, DW_AT_name("XBAR_OUT_MUX03_ADCCEVT2")
	.dwattr $C$DW$1030, DW_AT_const_value(0x603)
	.dwattr $C$DW$1030, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1030, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$1030, DW_AT_decl_column(0x05)

$C$DW$1031	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1031, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH")
	.dwattr $C$DW$1031, DW_AT_const_value(0x800)
	.dwattr $C$DW$1031, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1031, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$1031, DW_AT_decl_column(0x05)

$C$DW$1032	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1032, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1032, DW_AT_const_value(0x801)
	.dwattr $C$DW$1032, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1032, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$1032, DW_AT_decl_column(0x05)

$C$DW$1033	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1033, DW_AT_name("XBAR_OUT_MUX04_ADCAEVT3")
	.dwattr $C$DW$1033, DW_AT_const_value(0x802)
	.dwattr $C$DW$1033, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1033, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$1033, DW_AT_decl_column(0x05)

$C$DW$1034	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1034, DW_AT_name("XBAR_OUT_MUX04_ECAP3_OUT")
	.dwattr $C$DW$1034, DW_AT_const_value(0x803)
	.dwattr $C$DW$1034, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1034, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$1034, DW_AT_decl_column(0x05)

$C$DW$1035	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1035, DW_AT_name("XBAR_OUT_MUX05_CMPSS3_CTRIPOUTL")
	.dwattr $C$DW$1035, DW_AT_const_value(0xa00)
	.dwattr $C$DW$1035, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1035, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$1035, DW_AT_decl_column(0x05)

$C$DW$1036	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1036, DW_AT_name("XBAR_OUT_MUX05_INPUTXBAR3")
	.dwattr $C$DW$1036, DW_AT_const_value(0xa01)
	.dwattr $C$DW$1036, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1036, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$1036, DW_AT_decl_column(0x05)

$C$DW$1037	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1037, DW_AT_name("XBAR_OUT_MUX05_CLB2_OUT4")
	.dwattr $C$DW$1037, DW_AT_const_value(0xa02)
	.dwattr $C$DW$1037, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1037, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$1037, DW_AT_decl_column(0x05)

$C$DW$1038	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1038, DW_AT_name("XBAR_OUT_MUX05_ADCCEVT3")
	.dwattr $C$DW$1038, DW_AT_const_value(0xa03)
	.dwattr $C$DW$1038, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1038, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$1038, DW_AT_decl_column(0x05)

$C$DW$1039	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1039, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH")
	.dwattr $C$DW$1039, DW_AT_const_value(0xc00)
	.dwattr $C$DW$1039, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1039, DW_AT_decl_line(0xff)
	.dwattr $C$DW$1039, DW_AT_decl_column(0x05)

$C$DW$1040	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1040, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1040, DW_AT_const_value(0xc01)
	.dwattr $C$DW$1040, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1040, DW_AT_decl_line(0x100)
	.dwattr $C$DW$1040, DW_AT_decl_column(0x05)

$C$DW$1041	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1041, DW_AT_name("XBAR_OUT_MUX06_ADCAEVT4")
	.dwattr $C$DW$1041, DW_AT_const_value(0xc02)
	.dwattr $C$DW$1041, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1041, DW_AT_decl_line(0x101)
	.dwattr $C$DW$1041, DW_AT_decl_column(0x05)

$C$DW$1042	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1042, DW_AT_name("XBAR_OUT_MUX06_ECAP4_OUT")
	.dwattr $C$DW$1042, DW_AT_const_value(0xc03)
	.dwattr $C$DW$1042, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1042, DW_AT_decl_line(0x102)
	.dwattr $C$DW$1042, DW_AT_decl_column(0x05)

$C$DW$1043	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1043, DW_AT_name("XBAR_OUT_MUX07_CMPSS4_CTRIPOUTL")
	.dwattr $C$DW$1043, DW_AT_const_value(0xe00)
	.dwattr $C$DW$1043, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1043, DW_AT_decl_line(0x103)
	.dwattr $C$DW$1043, DW_AT_decl_column(0x05)

$C$DW$1044	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1044, DW_AT_name("XBAR_OUT_MUX07_INPUTXBAR4")
	.dwattr $C$DW$1044, DW_AT_const_value(0xe01)
	.dwattr $C$DW$1044, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1044, DW_AT_decl_line(0x104)
	.dwattr $C$DW$1044, DW_AT_decl_column(0x05)

$C$DW$1045	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1045, DW_AT_name("XBAR_OUT_MUX07_CLB2_OUT5")
	.dwattr $C$DW$1045, DW_AT_const_value(0xe02)
	.dwattr $C$DW$1045, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1045, DW_AT_decl_line(0x105)
	.dwattr $C$DW$1045, DW_AT_decl_column(0x05)

$C$DW$1046	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1046, DW_AT_name("XBAR_OUT_MUX07_ADCCEVT4")
	.dwattr $C$DW$1046, DW_AT_const_value(0xe03)
	.dwattr $C$DW$1046, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1046, DW_AT_decl_line(0x106)
	.dwattr $C$DW$1046, DW_AT_decl_column(0x05)

$C$DW$1047	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1047, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH")
	.dwattr $C$DW$1047, DW_AT_const_value(0x1000)
	.dwattr $C$DW$1047, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1047, DW_AT_decl_line(0x107)
	.dwattr $C$DW$1047, DW_AT_decl_column(0x05)

$C$DW$1048	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1048, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1048, DW_AT_const_value(0x1001)
	.dwattr $C$DW$1048, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1048, DW_AT_decl_line(0x108)
	.dwattr $C$DW$1048, DW_AT_decl_column(0x05)

$C$DW$1049	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1049, DW_AT_name("XBAR_OUT_MUX08_ADCBEVT1")
	.dwattr $C$DW$1049, DW_AT_const_value(0x1002)
	.dwattr $C$DW$1049, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1049, DW_AT_decl_line(0x109)
	.dwattr $C$DW$1049, DW_AT_decl_column(0x05)

$C$DW$1050	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1050, DW_AT_name("XBAR_OUT_MUX08_ECAP5_OUT")
	.dwattr $C$DW$1050, DW_AT_const_value(0x1003)
	.dwattr $C$DW$1050, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1050, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$1050, DW_AT_decl_column(0x05)

$C$DW$1051	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1051, DW_AT_name("XBAR_OUT_MUX09_CMPSS5_CTRIPOUTL")
	.dwattr $C$DW$1051, DW_AT_const_value(0x1200)
	.dwattr $C$DW$1051, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1051, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$1051, DW_AT_decl_column(0x05)

$C$DW$1052	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1052, DW_AT_name("XBAR_OUT_MUX09_INPUTXBAR5")
	.dwattr $C$DW$1052, DW_AT_const_value(0x1201)
	.dwattr $C$DW$1052, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1052, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$1052, DW_AT_decl_column(0x05)

$C$DW$1053	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1053, DW_AT_name("XBAR_OUT_MUX09_CLB3_OUT4")
	.dwattr $C$DW$1053, DW_AT_const_value(0x1202)
	.dwattr $C$DW$1053, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1053, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$1053, DW_AT_decl_column(0x05)

$C$DW$1054	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1054, DW_AT_name("XBAR_OUT_MUX09_ADCDEVT1")
	.dwattr $C$DW$1054, DW_AT_const_value(0x1203)
	.dwattr $C$DW$1054, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1054, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$1054, DW_AT_decl_column(0x05)

$C$DW$1055	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1055, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH")
	.dwattr $C$DW$1055, DW_AT_const_value(0x1400)
	.dwattr $C$DW$1055, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1055, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$1055, DW_AT_decl_column(0x05)

$C$DW$1056	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1056, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1056, DW_AT_const_value(0x1401)
	.dwattr $C$DW$1056, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1056, DW_AT_decl_line(0x110)
	.dwattr $C$DW$1056, DW_AT_decl_column(0x05)

$C$DW$1057	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1057, DW_AT_name("XBAR_OUT_MUX10_ADCBEVT2")
	.dwattr $C$DW$1057, DW_AT_const_value(0x1402)
	.dwattr $C$DW$1057, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1057, DW_AT_decl_line(0x111)
	.dwattr $C$DW$1057, DW_AT_decl_column(0x05)

$C$DW$1058	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1058, DW_AT_name("XBAR_OUT_MUX10_ECAP6_OUT")
	.dwattr $C$DW$1058, DW_AT_const_value(0x1403)
	.dwattr $C$DW$1058, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1058, DW_AT_decl_line(0x112)
	.dwattr $C$DW$1058, DW_AT_decl_column(0x05)

$C$DW$1059	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1059, DW_AT_name("XBAR_OUT_MUX11_CMPSS6_CTRIPOUTL")
	.dwattr $C$DW$1059, DW_AT_const_value(0x1600)
	.dwattr $C$DW$1059, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1059, DW_AT_decl_line(0x113)
	.dwattr $C$DW$1059, DW_AT_decl_column(0x05)

$C$DW$1060	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1060, DW_AT_name("XBAR_OUT_MUX11_INPUTXBAR6")
	.dwattr $C$DW$1060, DW_AT_const_value(0x1601)
	.dwattr $C$DW$1060, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1060, DW_AT_decl_line(0x114)
	.dwattr $C$DW$1060, DW_AT_decl_column(0x05)

$C$DW$1061	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1061, DW_AT_name("XBAR_OUT_MUX11_CLB3_OUT5")
	.dwattr $C$DW$1061, DW_AT_const_value(0x1602)
	.dwattr $C$DW$1061, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1061, DW_AT_decl_line(0x115)
	.dwattr $C$DW$1061, DW_AT_decl_column(0x05)

$C$DW$1062	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1062, DW_AT_name("XBAR_OUT_MUX11_ADCDEVT2")
	.dwattr $C$DW$1062, DW_AT_const_value(0x1603)
	.dwattr $C$DW$1062, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1062, DW_AT_decl_line(0x116)
	.dwattr $C$DW$1062, DW_AT_decl_column(0x05)

$C$DW$1063	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1063, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH")
	.dwattr $C$DW$1063, DW_AT_const_value(0x1800)
	.dwattr $C$DW$1063, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1063, DW_AT_decl_line(0x117)
	.dwattr $C$DW$1063, DW_AT_decl_column(0x05)

$C$DW$1064	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1064, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1064, DW_AT_const_value(0x1801)
	.dwattr $C$DW$1064, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1064, DW_AT_decl_line(0x118)
	.dwattr $C$DW$1064, DW_AT_decl_column(0x05)

$C$DW$1065	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1065, DW_AT_name("XBAR_OUT_MUX12_ADCBEVT3")
	.dwattr $C$DW$1065, DW_AT_const_value(0x1802)
	.dwattr $C$DW$1065, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1065, DW_AT_decl_line(0x119)
	.dwattr $C$DW$1065, DW_AT_decl_column(0x05)

$C$DW$1066	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1066, DW_AT_name("XBAR_OUT_MUX13_CMPSS7_CTRIPOUTL")
	.dwattr $C$DW$1066, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$1066, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1066, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$1066, DW_AT_decl_column(0x05)

$C$DW$1067	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1067, DW_AT_name("XBAR_OUT_MUX13_ADCSOCA")
	.dwattr $C$DW$1067, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$1067, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1067, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$1067, DW_AT_decl_column(0x05)

$C$DW$1068	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1068, DW_AT_name("XBAR_OUT_MUX13_CLB4_OUT4")
	.dwattr $C$DW$1068, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$1068, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1068, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$1068, DW_AT_decl_column(0x05)

$C$DW$1069	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1069, DW_AT_name("XBAR_OUT_MUX13_ADCDEVT3")
	.dwattr $C$DW$1069, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$1069, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1069, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$1069, DW_AT_decl_column(0x05)

$C$DW$1070	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1070, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH")
	.dwattr $C$DW$1070, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$1070, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1070, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$1070, DW_AT_decl_column(0x05)

$C$DW$1071	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1071, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH_OR_L")
	.dwattr $C$DW$1071, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$1071, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1071, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$1071, DW_AT_decl_column(0x05)

$C$DW$1072	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1072, DW_AT_name("XBAR_OUT_MUX14_ADCBEVT4")
	.dwattr $C$DW$1072, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$1072, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1072, DW_AT_decl_line(0x120)
	.dwattr $C$DW$1072, DW_AT_decl_column(0x05)

$C$DW$1073	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1073, DW_AT_name("XBAR_OUT_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$1073, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$1073, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1073, DW_AT_decl_line(0x121)
	.dwattr $C$DW$1073, DW_AT_decl_column(0x05)

$C$DW$1074	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1074, DW_AT_name("XBAR_OUT_MUX15_CMPSS8_CTRIPOUTL")
	.dwattr $C$DW$1074, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$1074, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1074, DW_AT_decl_line(0x122)
	.dwattr $C$DW$1074, DW_AT_decl_column(0x05)

$C$DW$1075	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1075, DW_AT_name("XBAR_OUT_MUX15_ADCSOCB")
	.dwattr $C$DW$1075, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$1075, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1075, DW_AT_decl_line(0x123)
	.dwattr $C$DW$1075, DW_AT_decl_column(0x05)

$C$DW$1076	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1076, DW_AT_name("XBAR_OUT_MUX15_CLB4_OUT5")
	.dwattr $C$DW$1076, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$1076, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1076, DW_AT_decl_line(0x124)
	.dwattr $C$DW$1076, DW_AT_decl_column(0x05)

$C$DW$1077	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1077, DW_AT_name("XBAR_OUT_MUX15_ADCDEVT4")
	.dwattr $C$DW$1077, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$1077, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1077, DW_AT_decl_line(0x125)
	.dwattr $C$DW$1077, DW_AT_decl_column(0x05)

$C$DW$1078	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1078, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$1078, DW_AT_const_value(0x2000)
	.dwattr $C$DW$1078, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1078, DW_AT_decl_line(0x126)
	.dwattr $C$DW$1078, DW_AT_decl_column(0x05)

$C$DW$1079	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1079, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1079, DW_AT_const_value(0x2001)
	.dwattr $C$DW$1079, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1079, DW_AT_decl_line(0x127)
	.dwattr $C$DW$1079, DW_AT_decl_column(0x05)

$C$DW$1080	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1080, DW_AT_name("XBAR_OUT_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$1080, DW_AT_const_value(0x2200)
	.dwattr $C$DW$1080, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1080, DW_AT_decl_line(0x128)
	.dwattr $C$DW$1080, DW_AT_decl_column(0x05)

$C$DW$1081	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1081, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$1081, DW_AT_const_value(0x2400)
	.dwattr $C$DW$1081, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1081, DW_AT_decl_line(0x129)
	.dwattr $C$DW$1081, DW_AT_decl_column(0x05)

$C$DW$1082	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1082, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1082, DW_AT_const_value(0x2401)
	.dwattr $C$DW$1082, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1082, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$1082, DW_AT_decl_column(0x05)

$C$DW$1083	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1083, DW_AT_name("XBAR_OUT_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$1083, DW_AT_const_value(0x2600)
	.dwattr $C$DW$1083, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1083, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$1083, DW_AT_decl_column(0x05)

$C$DW$1084	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1084, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$1084, DW_AT_const_value(0x2800)
	.dwattr $C$DW$1084, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1084, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$1084, DW_AT_decl_column(0x05)

$C$DW$1085	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1085, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1085, DW_AT_const_value(0x2801)
	.dwattr $C$DW$1085, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1085, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$1085, DW_AT_decl_column(0x05)

$C$DW$1086	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1086, DW_AT_name("XBAR_OUT_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$1086, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$1086, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1086, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$1086, DW_AT_decl_column(0x05)

$C$DW$1087	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1087, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$1087, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$1087, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1087, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$1087, DW_AT_decl_column(0x05)

$C$DW$1088	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1088, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1088, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$1088, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1088, DW_AT_decl_line(0x130)
	.dwattr $C$DW$1088, DW_AT_decl_column(0x05)

$C$DW$1089	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1089, DW_AT_name("XBAR_OUT_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$1089, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$1089, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1089, DW_AT_decl_line(0x131)
	.dwattr $C$DW$1089, DW_AT_decl_column(0x05)

$C$DW$1090	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1090, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$1090, DW_AT_const_value(0x3000)
	.dwattr $C$DW$1090, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1090, DW_AT_decl_line(0x132)
	.dwattr $C$DW$1090, DW_AT_decl_column(0x05)

$C$DW$1091	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1091, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1091, DW_AT_const_value(0x3001)
	.dwattr $C$DW$1091, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1091, DW_AT_decl_line(0x133)
	.dwattr $C$DW$1091, DW_AT_decl_column(0x05)

$C$DW$1092	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1092, DW_AT_name("XBAR_OUT_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$1092, DW_AT_const_value(0x3200)
	.dwattr $C$DW$1092, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1092, DW_AT_decl_line(0x134)
	.dwattr $C$DW$1092, DW_AT_decl_column(0x05)

$C$DW$1093	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1093, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$1093, DW_AT_const_value(0x3400)
	.dwattr $C$DW$1093, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1093, DW_AT_decl_line(0x135)
	.dwattr $C$DW$1093, DW_AT_decl_column(0x05)

$C$DW$1094	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1094, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1094, DW_AT_const_value(0x3401)
	.dwattr $C$DW$1094, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1094, DW_AT_decl_line(0x136)
	.dwattr $C$DW$1094, DW_AT_decl_column(0x05)

$C$DW$1095	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1095, DW_AT_name("XBAR_OUT_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$1095, DW_AT_const_value(0x3600)
	.dwattr $C$DW$1095, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1095, DW_AT_decl_line(0x137)
	.dwattr $C$DW$1095, DW_AT_decl_column(0x05)

$C$DW$1096	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1096, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$1096, DW_AT_const_value(0x3800)
	.dwattr $C$DW$1096, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1096, DW_AT_decl_line(0x138)
	.dwattr $C$DW$1096, DW_AT_decl_column(0x05)

$C$DW$1097	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1097, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1097, DW_AT_const_value(0x3801)
	.dwattr $C$DW$1097, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1097, DW_AT_decl_line(0x139)
	.dwattr $C$DW$1097, DW_AT_decl_column(0x05)

$C$DW$1098	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1098, DW_AT_name("XBAR_OUT_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$1098, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$1098, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1098, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$1098, DW_AT_decl_column(0x05)

$C$DW$1099	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1099, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$1099, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$1099, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1099, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$1099, DW_AT_decl_column(0x05)

$C$DW$1100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1100, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1100, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$1100, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1100, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$1100, DW_AT_decl_column(0x05)

$C$DW$1101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1101, DW_AT_name("XBAR_OUT_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$1101, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$1101, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1101, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$1101, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$155, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$155

	.dwendtag $C$DW$TU$155


$C$DW$TU$156	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$156
$C$DW$T$156	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$156, DW_AT_name("XBAR_OutputMuxConfig")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$156, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$156


$C$DW$TU$157	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$157

$C$DW$T$157	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x01)
$C$DW$1102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1102, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH")
	.dwattr $C$DW$1102, DW_AT_const_value(0x00)
	.dwattr $C$DW$1102, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1102, DW_AT_decl_line(0x149)
	.dwattr $C$DW$1102, DW_AT_decl_column(0x05)

$C$DW$1103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1103, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L")
	.dwattr $C$DW$1103, DW_AT_const_value(0x01)
	.dwattr $C$DW$1103, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1103, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$1103, DW_AT_decl_column(0x05)

$C$DW$1104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1104, DW_AT_name("XBAR_EPWM_MUX00_ADCAEVT1")
	.dwattr $C$DW$1104, DW_AT_const_value(0x02)
	.dwattr $C$DW$1104, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1104, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$1104, DW_AT_decl_column(0x05)

$C$DW$1105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1105, DW_AT_name("XBAR_EPWM_MUX00_ECAP1_OUT")
	.dwattr $C$DW$1105, DW_AT_const_value(0x03)
	.dwattr $C$DW$1105, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1105, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$1105, DW_AT_decl_column(0x05)

$C$DW$1106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1106, DW_AT_name("XBAR_EPWM_MUX01_CMPSS1_CTRIPL")
	.dwattr $C$DW$1106, DW_AT_const_value(0x200)
	.dwattr $C$DW$1106, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1106, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$1106, DW_AT_decl_column(0x05)

$C$DW$1107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1107, DW_AT_name("XBAR_EPWM_MUX01_INPUTXBAR1")
	.dwattr $C$DW$1107, DW_AT_const_value(0x201)
	.dwattr $C$DW$1107, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1107, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$1107, DW_AT_decl_column(0x05)

$C$DW$1108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1108, DW_AT_name("XBAR_EPWM_MUX01_CLB1_OUT4")
	.dwattr $C$DW$1108, DW_AT_const_value(0x202)
	.dwattr $C$DW$1108, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1108, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$1108, DW_AT_decl_column(0x05)

$C$DW$1109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1109, DW_AT_name("XBAR_EPWM_MUX01_ADCCEVT1")
	.dwattr $C$DW$1109, DW_AT_const_value(0x203)
	.dwattr $C$DW$1109, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1109, DW_AT_decl_line(0x150)
	.dwattr $C$DW$1109, DW_AT_decl_column(0x05)

$C$DW$1110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1110, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH")
	.dwattr $C$DW$1110, DW_AT_const_value(0x400)
	.dwattr $C$DW$1110, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1110, DW_AT_decl_line(0x151)
	.dwattr $C$DW$1110, DW_AT_decl_column(0x05)

$C$DW$1111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1111, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L")
	.dwattr $C$DW$1111, DW_AT_const_value(0x401)
	.dwattr $C$DW$1111, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1111, DW_AT_decl_line(0x152)
	.dwattr $C$DW$1111, DW_AT_decl_column(0x05)

$C$DW$1112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1112, DW_AT_name("XBAR_EPWM_MUX02_ADCAEVT2")
	.dwattr $C$DW$1112, DW_AT_const_value(0x402)
	.dwattr $C$DW$1112, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1112, DW_AT_decl_line(0x153)
	.dwattr $C$DW$1112, DW_AT_decl_column(0x05)

$C$DW$1113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1113, DW_AT_name("XBAR_EPWM_MUX02_ECAP2_OUT")
	.dwattr $C$DW$1113, DW_AT_const_value(0x403)
	.dwattr $C$DW$1113, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1113, DW_AT_decl_line(0x154)
	.dwattr $C$DW$1113, DW_AT_decl_column(0x05)

$C$DW$1114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1114, DW_AT_name("XBAR_EPWM_MUX03_CMPSS2_CTRIPL")
	.dwattr $C$DW$1114, DW_AT_const_value(0x600)
	.dwattr $C$DW$1114, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1114, DW_AT_decl_line(0x155)
	.dwattr $C$DW$1114, DW_AT_decl_column(0x05)

$C$DW$1115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1115, DW_AT_name("XBAR_EPWM_MUX03_INPUTXBAR2")
	.dwattr $C$DW$1115, DW_AT_const_value(0x601)
	.dwattr $C$DW$1115, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1115, DW_AT_decl_line(0x156)
	.dwattr $C$DW$1115, DW_AT_decl_column(0x05)

$C$DW$1116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1116, DW_AT_name("XBAR_EPWM_MUX03_CLB1_OUT5")
	.dwattr $C$DW$1116, DW_AT_const_value(0x602)
	.dwattr $C$DW$1116, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1116, DW_AT_decl_line(0x157)
	.dwattr $C$DW$1116, DW_AT_decl_column(0x05)

$C$DW$1117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1117, DW_AT_name("XBAR_EPWM_MUX03_ADCCEVT2")
	.dwattr $C$DW$1117, DW_AT_const_value(0x603)
	.dwattr $C$DW$1117, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1117, DW_AT_decl_line(0x158)
	.dwattr $C$DW$1117, DW_AT_decl_column(0x05)

$C$DW$1118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1118, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH")
	.dwattr $C$DW$1118, DW_AT_const_value(0x800)
	.dwattr $C$DW$1118, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1118, DW_AT_decl_line(0x159)
	.dwattr $C$DW$1118, DW_AT_decl_column(0x05)

$C$DW$1119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1119, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L")
	.dwattr $C$DW$1119, DW_AT_const_value(0x801)
	.dwattr $C$DW$1119, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1119, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$1119, DW_AT_decl_column(0x05)

$C$DW$1120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1120, DW_AT_name("XBAR_EPWM_MUX04_ADCAEVT3")
	.dwattr $C$DW$1120, DW_AT_const_value(0x802)
	.dwattr $C$DW$1120, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1120, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$1120, DW_AT_decl_column(0x05)

$C$DW$1121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1121, DW_AT_name("XBAR_EPWM_MUX04_ECAP3_OUT")
	.dwattr $C$DW$1121, DW_AT_const_value(0x803)
	.dwattr $C$DW$1121, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1121, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$1121, DW_AT_decl_column(0x05)

$C$DW$1122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1122, DW_AT_name("XBAR_EPWM_MUX05_CMPSS3_CTRIPL")
	.dwattr $C$DW$1122, DW_AT_const_value(0xa00)
	.dwattr $C$DW$1122, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1122, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$1122, DW_AT_decl_column(0x05)

$C$DW$1123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1123, DW_AT_name("XBAR_EPWM_MUX05_INPUTXBAR3")
	.dwattr $C$DW$1123, DW_AT_const_value(0xa01)
	.dwattr $C$DW$1123, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1123, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$1123, DW_AT_decl_column(0x05)

$C$DW$1124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1124, DW_AT_name("XBAR_EPWM_MUX05_CLB2_OUT4")
	.dwattr $C$DW$1124, DW_AT_const_value(0xa02)
	.dwattr $C$DW$1124, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1124, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$1124, DW_AT_decl_column(0x05)

$C$DW$1125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1125, DW_AT_name("XBAR_EPWM_MUX05_ADCCEVT3")
	.dwattr $C$DW$1125, DW_AT_const_value(0xa03)
	.dwattr $C$DW$1125, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1125, DW_AT_decl_line(0x160)
	.dwattr $C$DW$1125, DW_AT_decl_column(0x05)

$C$DW$1126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1126, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH")
	.dwattr $C$DW$1126, DW_AT_const_value(0xc00)
	.dwattr $C$DW$1126, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1126, DW_AT_decl_line(0x161)
	.dwattr $C$DW$1126, DW_AT_decl_column(0x05)

$C$DW$1127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1127, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH_OR_L")
	.dwattr $C$DW$1127, DW_AT_const_value(0xc01)
	.dwattr $C$DW$1127, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1127, DW_AT_decl_line(0x162)
	.dwattr $C$DW$1127, DW_AT_decl_column(0x05)

$C$DW$1128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1128, DW_AT_name("XBAR_EPWM_MUX06_ADCAEVT4")
	.dwattr $C$DW$1128, DW_AT_const_value(0xc02)
	.dwattr $C$DW$1128, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1128, DW_AT_decl_line(0x163)
	.dwattr $C$DW$1128, DW_AT_decl_column(0x05)

$C$DW$1129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1129, DW_AT_name("XBAR_EPWM_MUX06_ECAP4_OUT")
	.dwattr $C$DW$1129, DW_AT_const_value(0xc03)
	.dwattr $C$DW$1129, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1129, DW_AT_decl_line(0x164)
	.dwattr $C$DW$1129, DW_AT_decl_column(0x05)

$C$DW$1130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1130, DW_AT_name("XBAR_EPWM_MUX07_CMPSS4_CTRIPL")
	.dwattr $C$DW$1130, DW_AT_const_value(0xe00)
	.dwattr $C$DW$1130, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1130, DW_AT_decl_line(0x165)
	.dwattr $C$DW$1130, DW_AT_decl_column(0x05)

$C$DW$1131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1131, DW_AT_name("XBAR_EPWM_MUX07_INPUTXBAR4")
	.dwattr $C$DW$1131, DW_AT_const_value(0xe01)
	.dwattr $C$DW$1131, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1131, DW_AT_decl_line(0x166)
	.dwattr $C$DW$1131, DW_AT_decl_column(0x05)

$C$DW$1132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1132, DW_AT_name("XBAR_EPWM_MUX07_CLB2_OUT5")
	.dwattr $C$DW$1132, DW_AT_const_value(0xe02)
	.dwattr $C$DW$1132, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1132, DW_AT_decl_line(0x167)
	.dwattr $C$DW$1132, DW_AT_decl_column(0x05)

$C$DW$1133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1133, DW_AT_name("XBAR_EPWM_MUX07_ADCCEVT4")
	.dwattr $C$DW$1133, DW_AT_const_value(0xe03)
	.dwattr $C$DW$1133, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1133, DW_AT_decl_line(0x168)
	.dwattr $C$DW$1133, DW_AT_decl_column(0x05)

$C$DW$1134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1134, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH")
	.dwattr $C$DW$1134, DW_AT_const_value(0x1000)
	.dwattr $C$DW$1134, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1134, DW_AT_decl_line(0x169)
	.dwattr $C$DW$1134, DW_AT_decl_column(0x05)

$C$DW$1135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1135, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L")
	.dwattr $C$DW$1135, DW_AT_const_value(0x1001)
	.dwattr $C$DW$1135, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1135, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$1135, DW_AT_decl_column(0x05)

$C$DW$1136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1136, DW_AT_name("XBAR_EPWM_MUX08_ADCBEVT1")
	.dwattr $C$DW$1136, DW_AT_const_value(0x1002)
	.dwattr $C$DW$1136, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1136, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$1136, DW_AT_decl_column(0x05)

$C$DW$1137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1137, DW_AT_name("XBAR_EPWM_MUX08_ECAP5_OUT")
	.dwattr $C$DW$1137, DW_AT_const_value(0x1003)
	.dwattr $C$DW$1137, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1137, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$1137, DW_AT_decl_column(0x05)

$C$DW$1138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1138, DW_AT_name("XBAR_EPWM_MUX09_CMPSS5_CTRIPL")
	.dwattr $C$DW$1138, DW_AT_const_value(0x1200)
	.dwattr $C$DW$1138, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1138, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$1138, DW_AT_decl_column(0x05)

$C$DW$1139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1139, DW_AT_name("XBAR_EPWM_MUX09_INPUTXBAR5")
	.dwattr $C$DW$1139, DW_AT_const_value(0x1201)
	.dwattr $C$DW$1139, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1139, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$1139, DW_AT_decl_column(0x05)

$C$DW$1140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1140, DW_AT_name("XBAR_EPWM_MUX09_CLB3_OUT4")
	.dwattr $C$DW$1140, DW_AT_const_value(0x1202)
	.dwattr $C$DW$1140, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1140, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$1140, DW_AT_decl_column(0x05)

$C$DW$1141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1141, DW_AT_name("XBAR_EPWM_MUX09_ADCDEVT1")
	.dwattr $C$DW$1141, DW_AT_const_value(0x1203)
	.dwattr $C$DW$1141, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1141, DW_AT_decl_line(0x170)
	.dwattr $C$DW$1141, DW_AT_decl_column(0x05)

$C$DW$1142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1142, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH")
	.dwattr $C$DW$1142, DW_AT_const_value(0x1400)
	.dwattr $C$DW$1142, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1142, DW_AT_decl_line(0x171)
	.dwattr $C$DW$1142, DW_AT_decl_column(0x05)

$C$DW$1143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1143, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L")
	.dwattr $C$DW$1143, DW_AT_const_value(0x1401)
	.dwattr $C$DW$1143, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1143, DW_AT_decl_line(0x172)
	.dwattr $C$DW$1143, DW_AT_decl_column(0x05)

$C$DW$1144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1144, DW_AT_name("XBAR_EPWM_MUX10_ADCBEVT2")
	.dwattr $C$DW$1144, DW_AT_const_value(0x1402)
	.dwattr $C$DW$1144, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1144, DW_AT_decl_line(0x173)
	.dwattr $C$DW$1144, DW_AT_decl_column(0x05)

$C$DW$1145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1145, DW_AT_name("XBAR_EPWM_MUX10_ECAP6_OUT")
	.dwattr $C$DW$1145, DW_AT_const_value(0x1403)
	.dwattr $C$DW$1145, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1145, DW_AT_decl_line(0x174)
	.dwattr $C$DW$1145, DW_AT_decl_column(0x05)

$C$DW$1146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1146, DW_AT_name("XBAR_EPWM_MUX11_CMPSS6_CTRIPL")
	.dwattr $C$DW$1146, DW_AT_const_value(0x1600)
	.dwattr $C$DW$1146, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1146, DW_AT_decl_line(0x175)
	.dwattr $C$DW$1146, DW_AT_decl_column(0x05)

$C$DW$1147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1147, DW_AT_name("XBAR_EPWM_MUX11_INPUTXBAR6")
	.dwattr $C$DW$1147, DW_AT_const_value(0x1601)
	.dwattr $C$DW$1147, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1147, DW_AT_decl_line(0x176)
	.dwattr $C$DW$1147, DW_AT_decl_column(0x05)

$C$DW$1148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1148, DW_AT_name("XBAR_EPWM_MUX11_CLB3_OUT5")
	.dwattr $C$DW$1148, DW_AT_const_value(0x1602)
	.dwattr $C$DW$1148, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1148, DW_AT_decl_line(0x177)
	.dwattr $C$DW$1148, DW_AT_decl_column(0x05)

$C$DW$1149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1149, DW_AT_name("XBAR_EPWM_MUX11_ADCDEVT2")
	.dwattr $C$DW$1149, DW_AT_const_value(0x1603)
	.dwattr $C$DW$1149, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1149, DW_AT_decl_line(0x178)
	.dwattr $C$DW$1149, DW_AT_decl_column(0x05)

$C$DW$1150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1150, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH")
	.dwattr $C$DW$1150, DW_AT_const_value(0x1800)
	.dwattr $C$DW$1150, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1150, DW_AT_decl_line(0x179)
	.dwattr $C$DW$1150, DW_AT_decl_column(0x05)

$C$DW$1151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1151, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH_OR_L")
	.dwattr $C$DW$1151, DW_AT_const_value(0x1801)
	.dwattr $C$DW$1151, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1151, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$1151, DW_AT_decl_column(0x05)

$C$DW$1152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1152, DW_AT_name("XBAR_EPWM_MUX12_ADCBEVT3")
	.dwattr $C$DW$1152, DW_AT_const_value(0x1802)
	.dwattr $C$DW$1152, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1152, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$1152, DW_AT_decl_column(0x05)

$C$DW$1153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1153, DW_AT_name("XBAR_EPWM_MUX13_CMPSS7_CTRIPL")
	.dwattr $C$DW$1153, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$1153, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1153, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$1153, DW_AT_decl_column(0x05)

$C$DW$1154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1154, DW_AT_name("XBAR_EPWM_MUX13_ADCSOCA")
	.dwattr $C$DW$1154, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$1154, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1154, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$1154, DW_AT_decl_column(0x05)

$C$DW$1155	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1155, DW_AT_name("XBAR_EPWM_MUX13_CLB4_OUT4")
	.dwattr $C$DW$1155, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$1155, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1155, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$1155, DW_AT_decl_column(0x05)

$C$DW$1156	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1156, DW_AT_name("XBAR_EPWM_MUX13_ADCDEVT3")
	.dwattr $C$DW$1156, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$1156, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1156, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$1156, DW_AT_decl_column(0x05)

$C$DW$1157	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1157, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH")
	.dwattr $C$DW$1157, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$1157, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1157, DW_AT_decl_line(0x180)
	.dwattr $C$DW$1157, DW_AT_decl_column(0x05)

$C$DW$1158	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1158, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH_OR_L")
	.dwattr $C$DW$1158, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$1158, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1158, DW_AT_decl_line(0x181)
	.dwattr $C$DW$1158, DW_AT_decl_column(0x05)

$C$DW$1159	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1159, DW_AT_name("XBAR_EPWM_MUX14_ADCBEVT4")
	.dwattr $C$DW$1159, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$1159, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1159, DW_AT_decl_line(0x182)
	.dwattr $C$DW$1159, DW_AT_decl_column(0x05)

$C$DW$1160	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1160, DW_AT_name("XBAR_EPWM_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$1160, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$1160, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1160, DW_AT_decl_line(0x183)
	.dwattr $C$DW$1160, DW_AT_decl_column(0x05)

$C$DW$1161	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1161, DW_AT_name("XBAR_EPWM_MUX15_CMPSS8_CTRIPL")
	.dwattr $C$DW$1161, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$1161, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1161, DW_AT_decl_line(0x184)
	.dwattr $C$DW$1161, DW_AT_decl_column(0x05)

$C$DW$1162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1162, DW_AT_name("XBAR_EPWM_MUX15_ADCSOCB")
	.dwattr $C$DW$1162, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$1162, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1162, DW_AT_decl_line(0x185)
	.dwattr $C$DW$1162, DW_AT_decl_column(0x05)

$C$DW$1163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1163, DW_AT_name("XBAR_EPWM_MUX15_CLB4_OUT5")
	.dwattr $C$DW$1163, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$1163, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1163, DW_AT_decl_line(0x186)
	.dwattr $C$DW$1163, DW_AT_decl_column(0x05)

$C$DW$1164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1164, DW_AT_name("XBAR_EPWM_MUX15_ADCDEVT4")
	.dwattr $C$DW$1164, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$1164, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1164, DW_AT_decl_line(0x187)
	.dwattr $C$DW$1164, DW_AT_decl_column(0x05)

$C$DW$1165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1165, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$1165, DW_AT_const_value(0x2000)
	.dwattr $C$DW$1165, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1165, DW_AT_decl_line(0x188)
	.dwattr $C$DW$1165, DW_AT_decl_column(0x05)

$C$DW$1166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1166, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1166, DW_AT_const_value(0x2001)
	.dwattr $C$DW$1166, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1166, DW_AT_decl_line(0x189)
	.dwattr $C$DW$1166, DW_AT_decl_column(0x05)

$C$DW$1167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1167, DW_AT_name("XBAR_EPWM_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$1167, DW_AT_const_value(0x2200)
	.dwattr $C$DW$1167, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1167, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$1167, DW_AT_decl_column(0x05)

$C$DW$1168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1168, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$1168, DW_AT_const_value(0x2400)
	.dwattr $C$DW$1168, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1168, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$1168, DW_AT_decl_column(0x05)

$C$DW$1169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1169, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1169, DW_AT_const_value(0x2401)
	.dwattr $C$DW$1169, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1169, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$1169, DW_AT_decl_column(0x05)

$C$DW$1170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1170, DW_AT_name("XBAR_EPWM_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$1170, DW_AT_const_value(0x2600)
	.dwattr $C$DW$1170, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1170, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$1170, DW_AT_decl_column(0x05)

$C$DW$1171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1171, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$1171, DW_AT_const_value(0x2800)
	.dwattr $C$DW$1171, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1171, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$1171, DW_AT_decl_column(0x05)

$C$DW$1172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1172, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1172, DW_AT_const_value(0x2801)
	.dwattr $C$DW$1172, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1172, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$1172, DW_AT_decl_column(0x05)

$C$DW$1173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1173, DW_AT_name("XBAR_EPWM_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$1173, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$1173, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1173, DW_AT_decl_line(0x190)
	.dwattr $C$DW$1173, DW_AT_decl_column(0x05)

$C$DW$1174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1174, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$1174, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$1174, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1174, DW_AT_decl_line(0x191)
	.dwattr $C$DW$1174, DW_AT_decl_column(0x05)

$C$DW$1175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1175, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1175, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$1175, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1175, DW_AT_decl_line(0x192)
	.dwattr $C$DW$1175, DW_AT_decl_column(0x05)

$C$DW$1176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1176, DW_AT_name("XBAR_EPWM_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$1176, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$1176, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1176, DW_AT_decl_line(0x193)
	.dwattr $C$DW$1176, DW_AT_decl_column(0x05)

$C$DW$1177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1177, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$1177, DW_AT_const_value(0x3000)
	.dwattr $C$DW$1177, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1177, DW_AT_decl_line(0x194)
	.dwattr $C$DW$1177, DW_AT_decl_column(0x05)

$C$DW$1178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1178, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1178, DW_AT_const_value(0x3001)
	.dwattr $C$DW$1178, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1178, DW_AT_decl_line(0x195)
	.dwattr $C$DW$1178, DW_AT_decl_column(0x05)

$C$DW$1179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1179, DW_AT_name("XBAR_EPWM_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$1179, DW_AT_const_value(0x3200)
	.dwattr $C$DW$1179, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1179, DW_AT_decl_line(0x196)
	.dwattr $C$DW$1179, DW_AT_decl_column(0x05)

$C$DW$1180	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1180, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$1180, DW_AT_const_value(0x3400)
	.dwattr $C$DW$1180, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1180, DW_AT_decl_line(0x197)
	.dwattr $C$DW$1180, DW_AT_decl_column(0x05)

$C$DW$1181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1181, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1181, DW_AT_const_value(0x3401)
	.dwattr $C$DW$1181, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1181, DW_AT_decl_line(0x198)
	.dwattr $C$DW$1181, DW_AT_decl_column(0x05)

$C$DW$1182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1182, DW_AT_name("XBAR_EPWM_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$1182, DW_AT_const_value(0x3600)
	.dwattr $C$DW$1182, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1182, DW_AT_decl_line(0x199)
	.dwattr $C$DW$1182, DW_AT_decl_column(0x05)

$C$DW$1183	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1183, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$1183, DW_AT_const_value(0x3800)
	.dwattr $C$DW$1183, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1183, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$1183, DW_AT_decl_column(0x05)

$C$DW$1184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1184, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1184, DW_AT_const_value(0x3801)
	.dwattr $C$DW$1184, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1184, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$1184, DW_AT_decl_column(0x05)

$C$DW$1185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1185, DW_AT_name("XBAR_EPWM_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$1185, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$1185, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1185, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$1185, DW_AT_decl_column(0x05)

$C$DW$1186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1186, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$1186, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$1186, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1186, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$1186, DW_AT_decl_column(0x05)

$C$DW$1187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1187, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1187, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$1187, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1187, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$1187, DW_AT_decl_column(0x05)

$C$DW$1188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1188, DW_AT_name("XBAR_EPWM_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$1188, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$1188, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1188, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$1188, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$157, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$157

	.dwendtag $C$DW$TU$157


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158
$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("XBAR_EPWMMuxConfig")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$T$158, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$158


$C$DW$TU$159	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$159

$C$DW$T$159	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x01)
$C$DW$1189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1189, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$1189, DW_AT_const_value(0x00)
	.dwattr $C$DW$1189, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1189, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$1189, DW_AT_decl_column(0x05)

$C$DW$1190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1190, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$1190, DW_AT_const_value(0x01)
	.dwattr $C$DW$1190, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1190, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$1190, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$159

	.dwendtag $C$DW$TU$159


$C$DW$TU$160	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$160
$C$DW$T$160	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$160, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$160, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$160


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161

$C$DW$T$161	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x01)
$C$DW$1191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1191, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$1191, DW_AT_const_value(0x00)
	.dwattr $C$DW$1191, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1191, DW_AT_decl_line(0x97)
	.dwattr $C$DW$1191, DW_AT_decl_column(0x05)

$C$DW$1192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1192, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$1192, DW_AT_const_value(0x01)
	.dwattr $C$DW$1192, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1192, DW_AT_decl_line(0x98)
	.dwattr $C$DW$1192, DW_AT_decl_column(0x05)

$C$DW$1193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1193, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$1193, DW_AT_const_value(0x02)
	.dwattr $C$DW$1193, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1193, DW_AT_decl_line(0x99)
	.dwattr $C$DW$1193, DW_AT_decl_column(0x05)

$C$DW$1194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1194, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$1194, DW_AT_const_value(0x03)
	.dwattr $C$DW$1194, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1194, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$1194, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$161

	.dwendtag $C$DW$TU$161


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162
$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$162


$C$DW$TU$163	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$163

$C$DW$T$163	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x01)
$C$DW$1195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1195, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$1195, DW_AT_const_value(0x00)
	.dwattr $C$DW$1195, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1195, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$1195, DW_AT_decl_column(0x05)

$C$DW$1196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1196, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$1196, DW_AT_const_value(0x01)
	.dwattr $C$DW$1196, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1196, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$1196, DW_AT_decl_column(0x05)

$C$DW$1197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1197, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$1197, DW_AT_const_value(0x02)
	.dwattr $C$DW$1197, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1197, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$1197, DW_AT_decl_column(0x05)

$C$DW$1198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1198, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$1198, DW_AT_const_value(0x03)
	.dwattr $C$DW$1198, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1198, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$1198, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$163

	.dwendtag $C$DW$TU$163


$C$DW$TU$164	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$164
$C$DW$T$164	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$164, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$164


$C$DW$TU$165	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$165

$C$DW$T$165	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x01)
$C$DW$1199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1199, DW_AT_name("MEMCFG_CLA_MEM_DATA")
	.dwattr $C$DW$1199, DW_AT_const_value(0x00)
	.dwattr $C$DW$1199, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1199, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$1199, DW_AT_decl_column(0x05)

$C$DW$1200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1200, DW_AT_name("MEMCFG_CLA_MEM_PROGRAM")
	.dwattr $C$DW$1200, DW_AT_const_value(0x01)
	.dwattr $C$DW$1200, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1200, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$1200, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$165

	.dwendtag $C$DW$TU$165


$C$DW$TU$166	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$166
$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("MemCfg_CLAMemoryType")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$166


$C$DW$TU$167	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$167

$C$DW$T$167	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x01)
$C$DW$1201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1201, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_ONLY")
	.dwattr $C$DW$1201, DW_AT_const_value(0x00)
	.dwattr $C$DW$1201, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1201, DW_AT_decl_line(0xff)
	.dwattr $C$DW$1201, DW_AT_decl_column(0x05)

$C$DW$1202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1202, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_CLA1")
	.dwattr $C$DW$1202, DW_AT_const_value(0x01)
	.dwattr $C$DW$1202, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1202, DW_AT_decl_line(0x100)
	.dwattr $C$DW$1202, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$167, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$167

	.dwendtag $C$DW$TU$167


$C$DW$TU$168	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$168
$C$DW$T$168	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$168, DW_AT_name("MemCfg_LSRAMControllerSel")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$168, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$168


$C$DW$TU$169	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$169

$C$DW$T$169	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x01)
$C$DW$1203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1203, DW_AT_name("SDFM_FILTER_1")
	.dwattr $C$DW$1203, DW_AT_const_value(0x00)
	.dwattr $C$DW$1203, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1203, DW_AT_decl_line(0x82)
	.dwattr $C$DW$1203, DW_AT_decl_column(0x05)

$C$DW$1204	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1204, DW_AT_name("SDFM_FILTER_2")
	.dwattr $C$DW$1204, DW_AT_const_value(0x01)
	.dwattr $C$DW$1204, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1204, DW_AT_decl_line(0x83)
	.dwattr $C$DW$1204, DW_AT_decl_column(0x05)

$C$DW$1205	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1205, DW_AT_name("SDFM_FILTER_3")
	.dwattr $C$DW$1205, DW_AT_const_value(0x02)
	.dwattr $C$DW$1205, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1205, DW_AT_decl_line(0x84)
	.dwattr $C$DW$1205, DW_AT_decl_column(0x05)

$C$DW$1206	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1206, DW_AT_name("SDFM_FILTER_4")
	.dwattr $C$DW$1206, DW_AT_const_value(0x03)
	.dwattr $C$DW$1206, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1206, DW_AT_decl_line(0x85)
	.dwattr $C$DW$1206, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$169, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$169

	.dwendtag $C$DW$TU$169


$C$DW$TU$170	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$170
$C$DW$T$170	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$170, DW_AT_name("SDFM_FilterNumber")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$170, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$170, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$170, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$170


$C$DW$TU$171	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$171

$C$DW$T$171	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x01)
$C$DW$1207	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1207, DW_AT_name("SDFM_FILTER_SINC_FAST")
	.dwattr $C$DW$1207, DW_AT_const_value(0x00)
	.dwattr $C$DW$1207, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1207, DW_AT_decl_line(0x91)
	.dwattr $C$DW$1207, DW_AT_decl_column(0x05)

$C$DW$1208	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1208, DW_AT_name("SDFM_FILTER_SINC_1")
	.dwattr $C$DW$1208, DW_AT_const_value(0x10)
	.dwattr $C$DW$1208, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1208, DW_AT_decl_line(0x93)
	.dwattr $C$DW$1208, DW_AT_decl_column(0x05)

$C$DW$1209	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1209, DW_AT_name("SDFM_FILTER_SINC_2")
	.dwattr $C$DW$1209, DW_AT_const_value(0x20)
	.dwattr $C$DW$1209, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1209, DW_AT_decl_line(0x95)
	.dwattr $C$DW$1209, DW_AT_decl_column(0x05)

$C$DW$1210	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1210, DW_AT_name("SDFM_FILTER_SINC_3")
	.dwattr $C$DW$1210, DW_AT_const_value(0x30)
	.dwattr $C$DW$1210, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1210, DW_AT_decl_line(0x97)
	.dwattr $C$DW$1210, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$171, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$171, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$171, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$171

	.dwendtag $C$DW$TU$171


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172
$C$DW$T$172	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$172, DW_AT_name("SDFM_FilterType")
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$172, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$172, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$172, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$172


$C$DW$TU$173	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$173

$C$DW$T$173	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x01)
$C$DW$1211	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1211, DW_AT_name("SDFM_MODULATOR_CLK_EQUAL_DATA_RATE")
	.dwattr $C$DW$1211, DW_AT_const_value(0x00)
	.dwattr $C$DW$1211, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1211, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$1211, DW_AT_decl_column(0x04)

$C$DW$1212	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1212, DW_AT_name("SDFM_MODULATOR_CLK_HALF_DATA_RATE")
	.dwattr $C$DW$1212, DW_AT_const_value(0x01)
	.dwattr $C$DW$1212, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1212, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$1212, DW_AT_decl_column(0x04)

$C$DW$1213	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1213, DW_AT_name("SDFM_MODULATOR_CLK_OFF")
	.dwattr $C$DW$1213, DW_AT_const_value(0x02)
	.dwattr $C$DW$1213, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1213, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$1213, DW_AT_decl_column(0x04)

$C$DW$1214	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1214, DW_AT_name("SDFM_MODULATOR_CLK_DOUBLE_DATA_RATE")
	.dwattr $C$DW$1214, DW_AT_const_value(0x03)
	.dwattr $C$DW$1214, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1214, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$1214, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$173, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$173, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$T$173, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$173

	.dwendtag $C$DW$TU$173


$C$DW$TU$174	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$174
$C$DW$T$174	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$174, DW_AT_name("SDFM_ModulatorClockMode")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$174, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$174


$C$DW$TU$175	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$175

$C$DW$T$175	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x01)
$C$DW$1215	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1215, DW_AT_name("SDFM_DATA_FORMAT_16_BIT")
	.dwattr $C$DW$1215, DW_AT_const_value(0x00)
	.dwattr $C$DW$1215, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1215, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$1215, DW_AT_decl_column(0x04)

$C$DW$1216	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1216, DW_AT_name("SDFM_DATA_FORMAT_32_BIT")
	.dwattr $C$DW$1216, DW_AT_const_value(0x01)
	.dwattr $C$DW$1216, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$1216, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$1216, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$175, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$175, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$175, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$175

	.dwendtag $C$DW$TU$175


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176
$C$DW$T$176	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$176, DW_AT_name("SDFM_OutputDataFormat")
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$176


$C$DW$TU$177	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$177

$C$DW$T$177	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x01)
$C$DW$1217	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1217, DW_AT_name("ENC_ALIGNMENT")
	.dwattr $C$DW$1217, DW_AT_const_value(0x00)
	.dwattr $C$DW$1217, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1217, DW_AT_decl_line(0x40)
	.dwattr $C$DW$1217, DW_AT_decl_column(0x05)

$C$DW$1218	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1218, DW_AT_name("ENC_WAIT_FOR_INDEX")
	.dwattr $C$DW$1218, DW_AT_const_value(0x01)
	.dwattr $C$DW$1218, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1218, DW_AT_decl_line(0x41)
	.dwattr $C$DW$1218, DW_AT_decl_column(0x05)

$C$DW$1219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1219, DW_AT_name("ENC_CALIBRATION_DONE")
	.dwattr $C$DW$1219, DW_AT_const_value(0x02)
	.dwattr $C$DW$1219, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1219, DW_AT_decl_line(0x42)
	.dwattr $C$DW$1219, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$177, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$177, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$177, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$177

	.dwendtag $C$DW$TU$177


$C$DW$TU$178	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$178
$C$DW$T$178	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$178, DW_AT_name("ENC_Status_e")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$178, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$178, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$178


$C$DW$TU$179	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$179

$C$DW$T$179	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x01)
$C$DW$1220	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1220, DW_AT_name("MOTOR_STOP")
	.dwattr $C$DW$1220, DW_AT_const_value(0x00)
	.dwattr $C$DW$1220, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/include/fcl_f2837x_enum.h")
	.dwattr $C$DW$1220, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$1220, DW_AT_decl_column(0x05)

$C$DW$1221	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1221, DW_AT_name("MOTOR_RUN")
	.dwattr $C$DW$1221, DW_AT_const_value(0x01)
	.dwattr $C$DW$1221, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/include/fcl_f2837x_enum.h")
	.dwattr $C$DW$1221, DW_AT_decl_line(0x40)
	.dwattr $C$DW$1221, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$179, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/include/fcl_f2837x_enum.h")
	.dwattr $C$DW$T$179, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$179, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$179

	.dwendtag $C$DW$TU$179


$C$DW$TU$180	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$180
$C$DW$T$180	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$180, DW_AT_name("MotorRunStop_e")
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$180, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/include/fcl_f2837x_enum.h")
	.dwattr $C$DW$T$180, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$180, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$180


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0a)
$C$DW$1222	.dwtag  DW_TAG_member
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1222, DW_AT_name("As")
	.dwattr $C$DW$1222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1222, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$1222, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1222, DW_AT_decl_column(0x1e)

$C$DW$1223	.dwtag  DW_TAG_member
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1223, DW_AT_name("Bs")
	.dwattr $C$DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1223, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$1223, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1223, DW_AT_decl_column(0x12)

$C$DW$1224	.dwtag  DW_TAG_member
	.dwattr $C$DW$1224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1224, DW_AT_name("Cs")
	.dwattr $C$DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1224, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$1224, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1224, DW_AT_decl_column(0x12)

$C$DW$1225	.dwtag  DW_TAG_member
	.dwattr $C$DW$1225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1225, DW_AT_name("Alpha")
	.dwattr $C$DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1225, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$1225, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1225, DW_AT_decl_column(0x12)

$C$DW$1226	.dwtag  DW_TAG_member
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1226, DW_AT_name("Beta")
	.dwattr $C$DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1226, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$1226, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1226, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$181	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$181
$C$DW$T$181	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$181, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$181, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/clarke.h")
	.dwattr $C$DW$T$181, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$181, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$181


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x0e)
$C$DW$1227	.dwtag  DW_TAG_member
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1227, DW_AT_name("Alpha")
	.dwattr $C$DW$1227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1227, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1227, DW_AT_decl_line(0x29)
	.dwattr $C$DW$1227, DW_AT_decl_column(0x1e)

$C$DW$1228	.dwtag  DW_TAG_member
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1228, DW_AT_name("Beta")
	.dwattr $C$DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1228, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1228, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1228, DW_AT_decl_column(0x12)

$C$DW$1229	.dwtag  DW_TAG_member
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1229, DW_AT_name("Angle")
	.dwattr $C$DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1229, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1229, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1229, DW_AT_decl_column(0x12)

$C$DW$1230	.dwtag  DW_TAG_member
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1230, DW_AT_name("Ds")
	.dwattr $C$DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1230, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1230, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1230, DW_AT_decl_column(0x12)

$C$DW$1231	.dwtag  DW_TAG_member
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1231, DW_AT_name("Qs")
	.dwattr $C$DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1231, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1231, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1231, DW_AT_decl_column(0x12)

$C$DW$1232	.dwtag  DW_TAG_member
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1232, DW_AT_name("Sine")
	.dwattr $C$DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1232, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1232, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1232, DW_AT_decl_column(0x12)

$C$DW$1233	.dwtag  DW_TAG_member
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1233, DW_AT_name("Cosine")
	.dwattr $C$DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1233, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$1233, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1233, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$183	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$183
$C$DW$T$183	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$183, DW_AT_name("PARK")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$183, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/park.h")
	.dwattr $C$DW$T$183, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$183, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$183


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x14)
$C$DW$1234	.dwtag  DW_TAG_member
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1234, DW_AT_name("ElecTheta")
	.dwattr $C$DW$1234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1234, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1234, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1234, DW_AT_decl_column(0x12)

$C$DW$1235	.dwtag  DW_TAG_member
	.dwattr $C$DW$1235, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1235, DW_AT_name("DirectionQep")
	.dwattr $C$DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1235, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1235, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1235, DW_AT_decl_column(0x11)

$C$DW$1236	.dwtag  DW_TAG_member
	.dwattr $C$DW$1236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1236, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1236, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1236, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1236, DW_AT_decl_column(0x12)

$C$DW$1237	.dwtag  DW_TAG_member
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1237, DW_AT_name("Speed")
	.dwattr $C$DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1237, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1237, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1237, DW_AT_decl_column(0x12)

$C$DW$1238	.dwtag  DW_TAG_member
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1238, DW_AT_name("BaseRpm")
	.dwattr $C$DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1238, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1238, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1238, DW_AT_decl_column(0x11)

$C$DW$1239	.dwtag  DW_TAG_member
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1239, DW_AT_name("K1")
	.dwattr $C$DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1239, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1239, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1239, DW_AT_decl_column(0x12)

$C$DW$1240	.dwtag  DW_TAG_member
	.dwattr $C$DW$1240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1240, DW_AT_name("K2")
	.dwattr $C$DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1240, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1240, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1240, DW_AT_decl_column(0x12)

$C$DW$1241	.dwtag  DW_TAG_member
	.dwattr $C$DW$1241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1241, DW_AT_name("K3")
	.dwattr $C$DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1241, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1241, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1241, DW_AT_decl_column(0x12)

$C$DW$1242	.dwtag  DW_TAG_member
	.dwattr $C$DW$1242, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1242, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1242, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1242, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1242, DW_AT_decl_column(0x10)

$C$DW$1243	.dwtag  DW_TAG_member
	.dwattr $C$DW$1243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1243, DW_AT_name("Tmp")
	.dwattr $C$DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1243, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$1243, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1243, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$185	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$185
$C$DW$T$185	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$185, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$185, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/speed_fr.h")
	.dwattr $C$DW$T$185, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$185, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$185


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x12)
$C$DW$1244	.dwtag  DW_TAG_member
	.dwattr $C$DW$1244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1244, DW_AT_name("Ualpha")
	.dwattr $C$DW$1244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1244, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1244, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1244, DW_AT_decl_column(0x10)

$C$DW$1245	.dwtag  DW_TAG_member
	.dwattr $C$DW$1245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1245, DW_AT_name("Ubeta")
	.dwattr $C$DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1245, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1245, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1245, DW_AT_decl_column(0x10)

$C$DW$1246	.dwtag  DW_TAG_member
	.dwattr $C$DW$1246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1246, DW_AT_name("Ta")
	.dwattr $C$DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1246, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1246, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1246, DW_AT_decl_column(0x10)

$C$DW$1247	.dwtag  DW_TAG_member
	.dwattr $C$DW$1247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1247, DW_AT_name("Tb")
	.dwattr $C$DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1247, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1247, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1247, DW_AT_decl_column(0x10)

$C$DW$1248	.dwtag  DW_TAG_member
	.dwattr $C$DW$1248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1248, DW_AT_name("Tc")
	.dwattr $C$DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1248, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1248, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1248, DW_AT_decl_column(0x10)

$C$DW$1249	.dwtag  DW_TAG_member
	.dwattr $C$DW$1249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1249, DW_AT_name("tmp1")
	.dwattr $C$DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1249, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1249, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1249, DW_AT_decl_column(0x10)

$C$DW$1250	.dwtag  DW_TAG_member
	.dwattr $C$DW$1250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1250, DW_AT_name("tmp2")
	.dwattr $C$DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1250, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1250, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1250, DW_AT_decl_column(0x10)

$C$DW$1251	.dwtag  DW_TAG_member
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1251, DW_AT_name("tmp3")
	.dwattr $C$DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1251, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1251, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1251, DW_AT_decl_column(0x10)

$C$DW$1252	.dwtag  DW_TAG_member
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1252, DW_AT_name("VecSector")
	.dwattr $C$DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1252, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$1252, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1252, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$187	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$187
$C$DW$T$187	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$187, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$187, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/svgen.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x04)

	.dwendtag $C$DW$TU$187


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0e)
$C$DW$1253	.dwtag  DW_TAG_member
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1253, DW_AT_name("Alpha")
	.dwattr $C$DW$1253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1253, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1253, DW_AT_decl_line(0x29)
	.dwattr $C$DW$1253, DW_AT_decl_column(0x1e)

$C$DW$1254	.dwtag  DW_TAG_member
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1254, DW_AT_name("Beta")
	.dwattr $C$DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1254, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1254, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1254, DW_AT_decl_column(0x12)

$C$DW$1255	.dwtag  DW_TAG_member
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1255, DW_AT_name("Angle")
	.dwattr $C$DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1255, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1255, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1255, DW_AT_decl_column(0x12)

$C$DW$1256	.dwtag  DW_TAG_member
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1256, DW_AT_name("Ds")
	.dwattr $C$DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1256, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1256, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1256, DW_AT_decl_column(0x12)

$C$DW$1257	.dwtag  DW_TAG_member
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1257, DW_AT_name("Qs")
	.dwattr $C$DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1257, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1257, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1257, DW_AT_decl_column(0x12)

$C$DW$1258	.dwtag  DW_TAG_member
	.dwattr $C$DW$1258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1258, DW_AT_name("Sine")
	.dwattr $C$DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1258, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1258, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1258, DW_AT_decl_column(0x12)

$C$DW$1259	.dwtag  DW_TAG_member
	.dwattr $C$DW$1259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1259, DW_AT_name("Cosine")
	.dwattr $C$DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1259, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$1259, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1259, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$189	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$189
$C$DW$T$189	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$189, DW_AT_name("IPARK")
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$189, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/ipark.h")
	.dwattr $C$DW$T$189, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$189, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$189


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$1260	.dwtag  DW_TAG_member
	.dwattr $C$DW$1260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1260, DW_AT_name("Freq")
	.dwattr $C$DW$1260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1260, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1260, DW_AT_decl_line(0x29)
	.dwattr $C$DW$1260, DW_AT_decl_column(0x1d)

$C$DW$1261	.dwtag  DW_TAG_member
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1261, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1261, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1261, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1261, DW_AT_decl_column(0x11)

$C$DW$1262	.dwtag  DW_TAG_member
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1262, DW_AT_name("Angle")
	.dwattr $C$DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1262, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1262, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1262, DW_AT_decl_column(0x11)

$C$DW$1263	.dwtag  DW_TAG_member
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1263, DW_AT_name("Gain")
	.dwattr $C$DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1263, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1263, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1263, DW_AT_decl_column(0x11)

$C$DW$1264	.dwtag  DW_TAG_member
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1264, DW_AT_name("Out")
	.dwattr $C$DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1264, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1264, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1264, DW_AT_decl_column(0x11)

$C$DW$1265	.dwtag  DW_TAG_member
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1265, DW_AT_name("Offset")
	.dwattr $C$DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1265, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$1265, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1265, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$191	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$191
$C$DW$T$191	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$191, DW_AT_name("RAMPGEN")
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$191, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rampgen.h")
	.dwattr $C$DW$T$191, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$191, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$191


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x10)
$C$DW$1266	.dwtag  DW_TAG_member
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1266, DW_AT_name("TargetValue")
	.dwattr $C$DW$1266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1266, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1266, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1266, DW_AT_decl_column(0x0f)

$C$DW$1267	.dwtag  DW_TAG_member
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1267, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1267, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1267, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1267, DW_AT_decl_column(0x0f)

$C$DW$1268	.dwtag  DW_TAG_member
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1268, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1268, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1268, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1268, DW_AT_decl_column(0x0f)

$C$DW$1269	.dwtag  DW_TAG_member
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1269, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1269, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1269, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1269, DW_AT_decl_column(0x0f)

$C$DW$1270	.dwtag  DW_TAG_member
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1270, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1270, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1270, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1270, DW_AT_decl_column(0x0c)

$C$DW$1271	.dwtag  DW_TAG_member
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1271, DW_AT_name("SetpointValue")
	.dwattr $C$DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1271, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1271, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1271, DW_AT_decl_column(0x0c)

$C$DW$1272	.dwtag  DW_TAG_member
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1272, DW_AT_name("EqualFlag")
	.dwattr $C$DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1272, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1272, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1272, DW_AT_decl_column(0x0c)

$C$DW$1273	.dwtag  DW_TAG_member
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1273, DW_AT_name("Tmp")
	.dwattr $C$DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1273, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$1273, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1273, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$195	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$195
$C$DW$T$195	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$195, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$195, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/rmp_cntl.h")
	.dwattr $C$DW$T$195, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$195, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$195


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x1a)
$C$DW$1274	.dwtag  DW_TAG_member
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1274, DW_AT_name("input_ptr1")
	.dwattr $C$DW$1274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1274, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1274, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$1274, DW_AT_decl_column(0x0d)

$C$DW$1275	.dwtag  DW_TAG_member
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1275, DW_AT_name("input_ptr2")
	.dwattr $C$DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1275, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1275, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$1275, DW_AT_decl_column(0x0d)

$C$DW$1276	.dwtag  DW_TAG_member
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1276, DW_AT_name("input_ptr3")
	.dwattr $C$DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1276, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1276, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$1276, DW_AT_decl_column(0x0d)

$C$DW$1277	.dwtag  DW_TAG_member
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1277, DW_AT_name("input_ptr4")
	.dwattr $C$DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1277, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1277, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$1277, DW_AT_decl_column(0x0d)

$C$DW$1278	.dwtag  DW_TAG_member
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1278, DW_AT_name("output_ptr1")
	.dwattr $C$DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1278, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1278, DW_AT_decl_line(0x40)
	.dwattr $C$DW$1278, DW_AT_decl_column(0x0d)

$C$DW$1279	.dwtag  DW_TAG_member
	.dwattr $C$DW$1279, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1279, DW_AT_name("output_ptr2")
	.dwattr $C$DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1279, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1279, DW_AT_decl_line(0x41)
	.dwattr $C$DW$1279, DW_AT_decl_column(0x0d)

$C$DW$1280	.dwtag  DW_TAG_member
	.dwattr $C$DW$1280, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1280, DW_AT_name("output_ptr3")
	.dwattr $C$DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1280, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1280, DW_AT_decl_line(0x42)
	.dwattr $C$DW$1280, DW_AT_decl_column(0x0d)

$C$DW$1281	.dwtag  DW_TAG_member
	.dwattr $C$DW$1281, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1281, DW_AT_name("output_ptr4")
	.dwattr $C$DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1281, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1281, DW_AT_decl_line(0x43)
	.dwattr $C$DW$1281, DW_AT_decl_column(0x0d)

$C$DW$1282	.dwtag  DW_TAG_member
	.dwattr $C$DW$1282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1282, DW_AT_name("prev_value")
	.dwattr $C$DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1282, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1282, DW_AT_decl_line(0x44)
	.dwattr $C$DW$1282, DW_AT_decl_column(0x0c)

$C$DW$1283	.dwtag  DW_TAG_member
	.dwattr $C$DW$1283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1283, DW_AT_name("trig_value")
	.dwattr $C$DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1283, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1283, DW_AT_decl_line(0x45)
	.dwattr $C$DW$1283, DW_AT_decl_column(0x0c)

$C$DW$1284	.dwtag  DW_TAG_member
	.dwattr $C$DW$1284, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1284, DW_AT_name("status")
	.dwattr $C$DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1284, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1284, DW_AT_decl_line(0x46)
	.dwattr $C$DW$1284, DW_AT_decl_column(0x0a)

$C$DW$1285	.dwtag  DW_TAG_member
	.dwattr $C$DW$1285, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1285, DW_AT_name("pre_scalar")
	.dwattr $C$DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1285, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1285, DW_AT_decl_line(0x47)
	.dwattr $C$DW$1285, DW_AT_decl_column(0x0a)

$C$DW$1286	.dwtag  DW_TAG_member
	.dwattr $C$DW$1286, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1286, DW_AT_name("skip_count")
	.dwattr $C$DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1286, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1286, DW_AT_decl_line(0x48)
	.dwattr $C$DW$1286, DW_AT_decl_column(0x0a)

$C$DW$1287	.dwtag  DW_TAG_member
	.dwattr $C$DW$1287, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1287, DW_AT_name("size")
	.dwattr $C$DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1287, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1287, DW_AT_decl_line(0x49)
	.dwattr $C$DW$1287, DW_AT_decl_column(0x0a)

$C$DW$1288	.dwtag  DW_TAG_member
	.dwattr $C$DW$1288, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1288, DW_AT_name("count")
	.dwattr $C$DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1288, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$1288, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$1288, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$197	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$197
$C$DW$T$197	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$197, DW_AT_name("DLOG_4CH_F")
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$197, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/dlog_4ch_f.h")
	.dwattr $C$DW$T$197, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$197, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$197


$C$DW$TU$198	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$198
$C$DW$T$198	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$T$198, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$198


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x12)
$C$DW$1289	.dwtag  DW_TAG_member
	.dwattr $C$DW$1289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1289, DW_AT_name("ElecTheta")
	.dwattr $C$DW$1289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1289, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1289, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$1289, DW_AT_decl_column(0x0f)

$C$DW$1290	.dwtag  DW_TAG_member
	.dwattr $C$DW$1290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1290, DW_AT_name("MechTheta")
	.dwattr $C$DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1290, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1290, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$1290, DW_AT_decl_column(0x0f)

$C$DW$1291	.dwtag  DW_TAG_member
	.dwattr $C$DW$1291, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1291, DW_AT_name("DirectionQep")
	.dwattr $C$DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1291, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1291, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$1291, DW_AT_decl_column(0x0f)

$C$DW$1292	.dwtag  DW_TAG_member
	.dwattr $C$DW$1292, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1292, DW_AT_name("QepPeriod")
	.dwattr $C$DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1292, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1292, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$1292, DW_AT_decl_column(0x0f)

$C$DW$1293	.dwtag  DW_TAG_member
	.dwattr $C$DW$1293, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1293, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1293, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1293, DW_AT_decl_line(0x21)
	.dwattr $C$DW$1293, DW_AT_decl_column(0x0f)

$C$DW$1294	.dwtag  DW_TAG_member
	.dwattr $C$DW$1294, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1294, DW_AT_name("RawTheta")
	.dwattr $C$DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1294, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1294, DW_AT_decl_line(0x22)
	.dwattr $C$DW$1294, DW_AT_decl_column(0x0f)

$C$DW$1295	.dwtag  DW_TAG_member
	.dwattr $C$DW$1295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1295, DW_AT_name("MechScaler")
	.dwattr $C$DW$1295, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1295, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1295, DW_AT_decl_line(0x23)
	.dwattr $C$DW$1295, DW_AT_decl_column(0x0f)

$C$DW$1296	.dwtag  DW_TAG_member
	.dwattr $C$DW$1296, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1296, DW_AT_name("LineEncoder")
	.dwattr $C$DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1296, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1296, DW_AT_decl_line(0x24)
	.dwattr $C$DW$1296, DW_AT_decl_column(0x0f)

$C$DW$1297	.dwtag  DW_TAG_member
	.dwattr $C$DW$1297, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1297, DW_AT_name("PolePairs")
	.dwattr $C$DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1297, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1297, DW_AT_decl_line(0x25)
	.dwattr $C$DW$1297, DW_AT_decl_column(0x0f)

$C$DW$1298	.dwtag  DW_TAG_member
	.dwattr $C$DW$1298, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1298, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1298, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1298, DW_AT_decl_line(0x26)
	.dwattr $C$DW$1298, DW_AT_decl_column(0x0f)

$C$DW$1299	.dwtag  DW_TAG_member
	.dwattr $C$DW$1299, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1299, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1299, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$1299, DW_AT_decl_line(0x28)
	.dwattr $C$DW$1299, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$200	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$200
$C$DW$T$200	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$200, DW_AT_name("QEP")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$200, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/qep_defs.h")
	.dwattr $C$DW$T$200, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$200, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$200


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x16)
$C$DW$1300	.dwtag  DW_TAG_member
	.dwattr $C$DW$1300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1300, DW_AT_name("ref")
	.dwattr $C$DW$1300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1300, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1300, DW_AT_decl_line(0x18)
	.dwattr $C$DW$1300, DW_AT_decl_column(0x10)

$C$DW$1301	.dwtag  DW_TAG_member
	.dwattr $C$DW$1301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1301, DW_AT_name("fbk")
	.dwattr $C$DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1301, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1301, DW_AT_decl_line(0x19)
	.dwattr $C$DW$1301, DW_AT_decl_column(0x10)

$C$DW$1302	.dwtag  DW_TAG_member
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1302, DW_AT_name("err")
	.dwattr $C$DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1302, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1302, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$1302, DW_AT_decl_column(0x10)

$C$DW$1303	.dwtag  DW_TAG_member
	.dwattr $C$DW$1303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1303, DW_AT_name("out")
	.dwattr $C$DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1303, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1303, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$1303, DW_AT_decl_column(0x10)

$C$DW$1304	.dwtag  DW_TAG_member
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1304, DW_AT_name("carryOver")
	.dwattr $C$DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1304, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1304, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$1304, DW_AT_decl_column(0x10)

$C$DW$1305	.dwtag  DW_TAG_member
	.dwattr $C$DW$1305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1305, DW_AT_name("Kp")
	.dwattr $C$DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1305, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1305, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$1305, DW_AT_decl_column(0x10)

$C$DW$1306	.dwtag  DW_TAG_member
	.dwattr $C$DW$1306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1306, DW_AT_name("Ki")
	.dwattr $C$DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1306, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1306, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$1306, DW_AT_decl_column(0x10)

$C$DW$1307	.dwtag  DW_TAG_member
	.dwattr $C$DW$1307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1307, DW_AT_name("Kerr")
	.dwattr $C$DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1307, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1307, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$1307, DW_AT_decl_column(0x10)

$C$DW$1308	.dwtag  DW_TAG_member
	.dwattr $C$DW$1308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1308, DW_AT_name("KerrOld")
	.dwattr $C$DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1308, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1308, DW_AT_decl_line(0x20)
	.dwattr $C$DW$1308, DW_AT_decl_column(0x10)

$C$DW$1309	.dwtag  DW_TAG_member
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1309, DW_AT_name("Umax")
	.dwattr $C$DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1309, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1309, DW_AT_decl_line(0x21)
	.dwattr $C$DW$1309, DW_AT_decl_column(0x10)

$C$DW$1310	.dwtag  DW_TAG_member
	.dwattr $C$DW$1310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1310, DW_AT_name("Umin")
	.dwattr $C$DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1310, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$1310, DW_AT_decl_line(0x22)
	.dwattr $C$DW$1310, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$38, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$201	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$201
$C$DW$T$201	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$201, DW_AT_name("FCL_PIController_t")
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$201, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\libraries\fcl\include\fcl_pi.h")
	.dwattr $C$DW$T$201, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$201, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$201


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0c)
$C$DW$1311	.dwtag  DW_TAG_member
	.dwattr $C$DW$1311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1311, DW_AT_name("Freq")
	.dwattr $C$DW$1311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1311, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1311, DW_AT_decl_line(0x25)
	.dwattr $C$DW$1311, DW_AT_decl_column(0x1d)

$C$DW$1312	.dwtag  DW_TAG_member
	.dwattr $C$DW$1312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1312, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1312, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1312, DW_AT_decl_line(0x26)
	.dwattr $C$DW$1312, DW_AT_decl_column(0x1d)

$C$DW$1313	.dwtag  DW_TAG_member
	.dwattr $C$DW$1313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1313, DW_AT_name("Angle")
	.dwattr $C$DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1313, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1313, DW_AT_decl_line(0x27)
	.dwattr $C$DW$1313, DW_AT_decl_column(0x1d)

$C$DW$1314	.dwtag  DW_TAG_member
	.dwattr $C$DW$1314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1314, DW_AT_name("Gain")
	.dwattr $C$DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1314, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1314, DW_AT_decl_line(0x28)
	.dwattr $C$DW$1314, DW_AT_decl_column(0x1d)

$C$DW$1315	.dwtag  DW_TAG_member
	.dwattr $C$DW$1315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1315, DW_AT_name("Out")
	.dwattr $C$DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1315, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1315, DW_AT_decl_line(0x29)
	.dwattr $C$DW$1315, DW_AT_decl_column(0x1d)

$C$DW$1316	.dwtag  DW_TAG_member
	.dwattr $C$DW$1316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1316, DW_AT_name("Offset")
	.dwattr $C$DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1316, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$1316, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1316, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202
$C$DW$T$202	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$202, DW_AT_name("RAMP_GEN_CLA")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$202, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/RAMP_GEN_CLA.h")
	.dwattr $C$DW$T$202, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$202, DW_AT_decl_column(0x0d)

	.dwendtag $C$DW$TU$202


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x20)
$C$DW$1317	.dwtag  DW_TAG_member
	.dwattr $C$DW$1317, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1317, DW_AT_name("Ref")
	.dwattr $C$DW$1317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1317, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1317, DW_AT_decl_line(0x29)
	.dwattr $C$DW$1317, DW_AT_decl_column(0x18)

$C$DW$1318	.dwtag  DW_TAG_member
	.dwattr $C$DW$1318, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1318, DW_AT_name("Fdb")
	.dwattr $C$DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1318, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1318, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1318, DW_AT_decl_column(0x0c)

$C$DW$1319	.dwtag  DW_TAG_member
	.dwattr $C$DW$1319, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1319, DW_AT_name("Err")
	.dwattr $C$DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1319, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1319, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1319, DW_AT_decl_column(0x0c)

$C$DW$1320	.dwtag  DW_TAG_member
	.dwattr $C$DW$1320, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1320, DW_AT_name("Kp")
	.dwattr $C$DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1320, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1320, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1320, DW_AT_decl_column(0x0c)

$C$DW$1321	.dwtag  DW_TAG_member
	.dwattr $C$DW$1321, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1321, DW_AT_name("Up")
	.dwattr $C$DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1321, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1321, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1321, DW_AT_decl_column(0x0c)

$C$DW$1322	.dwtag  DW_TAG_member
	.dwattr $C$DW$1322, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1322, DW_AT_name("Ui")
	.dwattr $C$DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1322, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1322, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1322, DW_AT_decl_column(0x0c)

$C$DW$1323	.dwtag  DW_TAG_member
	.dwattr $C$DW$1323, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1323, DW_AT_name("Ud")
	.dwattr $C$DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1323, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1323, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1323, DW_AT_decl_column(0x0c)

$C$DW$1324	.dwtag  DW_TAG_member
	.dwattr $C$DW$1324, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1324, DW_AT_name("OutPreSat")
	.dwattr $C$DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1324, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1324, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1324, DW_AT_decl_column(0x0c)

$C$DW$1325	.dwtag  DW_TAG_member
	.dwattr $C$DW$1325, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1325, DW_AT_name("OutMax")
	.dwattr $C$DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1325, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1325, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1325, DW_AT_decl_column(0x0c)

$C$DW$1326	.dwtag  DW_TAG_member
	.dwattr $C$DW$1326, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1326, DW_AT_name("OutMin")
	.dwattr $C$DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1326, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1326, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1326, DW_AT_decl_column(0x0c)

$C$DW$1327	.dwtag  DW_TAG_member
	.dwattr $C$DW$1327, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1327, DW_AT_name("Out")
	.dwattr $C$DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1327, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1327, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1327, DW_AT_decl_column(0x0c)

$C$DW$1328	.dwtag  DW_TAG_member
	.dwattr $C$DW$1328, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1328, DW_AT_name("SatErr")
	.dwattr $C$DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1328, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1328, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1328, DW_AT_decl_column(0x0c)

$C$DW$1329	.dwtag  DW_TAG_member
	.dwattr $C$DW$1329, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1329, DW_AT_name("Ki")
	.dwattr $C$DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1329, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1329, DW_AT_decl_line(0x35)
	.dwattr $C$DW$1329, DW_AT_decl_column(0x0c)

$C$DW$1330	.dwtag  DW_TAG_member
	.dwattr $C$DW$1330, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1330, DW_AT_name("Kc")
	.dwattr $C$DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1330, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1330, DW_AT_decl_line(0x36)
	.dwattr $C$DW$1330, DW_AT_decl_column(0x0c)

$C$DW$1331	.dwtag  DW_TAG_member
	.dwattr $C$DW$1331, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1331, DW_AT_name("Kd")
	.dwattr $C$DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1331, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1331, DW_AT_decl_line(0x37)
	.dwattr $C$DW$1331, DW_AT_decl_column(0x0c)

$C$DW$1332	.dwtag  DW_TAG_member
	.dwattr $C$DW$1332, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1332, DW_AT_name("Up1")
	.dwattr $C$DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1332, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$1332, DW_AT_decl_line(0x38)
	.dwattr $C$DW$1332, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$204	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$204
$C$DW$T$204	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$204, DW_AT_name("PIDREG3")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$204, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_reg3.h")
	.dwattr $C$DW$T$204, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$204, DW_AT_decl_column(0x09)

	.dwendtag $C$DW$TU$204


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x18)
$C$DW$1333	.dwtag  DW_TAG_member
	.dwattr $C$DW$1333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1333, DW_AT_name("Ref")
	.dwattr $C$DW$1333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1333, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1333, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1333, DW_AT_decl_column(0x1e)

$C$DW$1334	.dwtag  DW_TAG_member
	.dwattr $C$DW$1334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1334, DW_AT_name("Fbk")
	.dwattr $C$DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1334, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1334, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1334, DW_AT_decl_column(0x12)

$C$DW$1335	.dwtag  DW_TAG_member
	.dwattr $C$DW$1335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1335, DW_AT_name("Out")
	.dwattr $C$DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1335, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1335, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1335, DW_AT_decl_column(0x12)

$C$DW$1336	.dwtag  DW_TAG_member
	.dwattr $C$DW$1336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1336, DW_AT_name("Kp")
	.dwattr $C$DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1336, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1336, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1336, DW_AT_decl_column(0x12)

$C$DW$1337	.dwtag  DW_TAG_member
	.dwattr $C$DW$1337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1337, DW_AT_name("Ki")
	.dwattr $C$DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1337, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1337, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1337, DW_AT_decl_column(0x12)

$C$DW$1338	.dwtag  DW_TAG_member
	.dwattr $C$DW$1338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1338, DW_AT_name("Umax")
	.dwattr $C$DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1338, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1338, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1338, DW_AT_decl_column(0x12)

$C$DW$1339	.dwtag  DW_TAG_member
	.dwattr $C$DW$1339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1339, DW_AT_name("Umin")
	.dwattr $C$DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1339, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1339, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1339, DW_AT_decl_column(0x12)

$C$DW$1340	.dwtag  DW_TAG_member
	.dwattr $C$DW$1340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1340, DW_AT_name("up")
	.dwattr $C$DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1340, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1340, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1340, DW_AT_decl_column(0x12)

$C$DW$1341	.dwtag  DW_TAG_member
	.dwattr $C$DW$1341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1341, DW_AT_name("ui")
	.dwattr $C$DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1341, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1341, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1341, DW_AT_decl_column(0x12)

$C$DW$1342	.dwtag  DW_TAG_member
	.dwattr $C$DW$1342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1342, DW_AT_name("v1")
	.dwattr $C$DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1342, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1342, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1342, DW_AT_decl_column(0x12)

$C$DW$1343	.dwtag  DW_TAG_member
	.dwattr $C$DW$1343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1343, DW_AT_name("i1")
	.dwattr $C$DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1343, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1343, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1343, DW_AT_decl_column(0x12)

$C$DW$1344	.dwtag  DW_TAG_member
	.dwattr $C$DW$1344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1344, DW_AT_name("w1")
	.dwattr $C$DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1344, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$1344, DW_AT_decl_line(0x35)
	.dwattr $C$DW$1344, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$205	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$205
$C$DW$T$205	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$205, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$205, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pi.h")
	.dwattr $C$DW$T$205, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$205, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$205


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0a)
$C$DW$1345	.dwtag  DW_TAG_member
	.dwattr $C$DW$1345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1345, DW_AT_name("Ref")
	.dwattr $C$DW$1345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1345, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1345, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1345, DW_AT_decl_column(0x1e)

$C$DW$1346	.dwtag  DW_TAG_member
	.dwattr $C$DW$1346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1346, DW_AT_name("Fbk")
	.dwattr $C$DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1346, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1346, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1346, DW_AT_decl_column(0x12)

$C$DW$1347	.dwtag  DW_TAG_member
	.dwattr $C$DW$1347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1347, DW_AT_name("Out")
	.dwattr $C$DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1347, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1347, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1347, DW_AT_decl_column(0x12)

$C$DW$1348	.dwtag  DW_TAG_member
	.dwattr $C$DW$1348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1348, DW_AT_name("c1")
	.dwattr $C$DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1348, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1348, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1348, DW_AT_decl_column(0x12)

$C$DW$1349	.dwtag  DW_TAG_member
	.dwattr $C$DW$1349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1349, DW_AT_name("c2")
	.dwattr $C$DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1349, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1349, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1349, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$46


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x0e)
$C$DW$1350	.dwtag  DW_TAG_member
	.dwattr $C$DW$1350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1350, DW_AT_name("Kr")
	.dwattr $C$DW$1350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1350, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1350, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1350, DW_AT_decl_column(0x1e)

$C$DW$1351	.dwtag  DW_TAG_member
	.dwattr $C$DW$1351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1351, DW_AT_name("Kp")
	.dwattr $C$DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1351, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1351, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1351, DW_AT_decl_column(0x12)

$C$DW$1352	.dwtag  DW_TAG_member
	.dwattr $C$DW$1352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1352, DW_AT_name("Ki")
	.dwattr $C$DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1352, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1352, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1352, DW_AT_decl_column(0x12)

$C$DW$1353	.dwtag  DW_TAG_member
	.dwattr $C$DW$1353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1353, DW_AT_name("Kd")
	.dwattr $C$DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1353, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1353, DW_AT_decl_line(0x35)
	.dwattr $C$DW$1353, DW_AT_decl_column(0x12)

$C$DW$1354	.dwtag  DW_TAG_member
	.dwattr $C$DW$1354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1354, DW_AT_name("Km")
	.dwattr $C$DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1354, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1354, DW_AT_decl_line(0x36)
	.dwattr $C$DW$1354, DW_AT_decl_column(0x12)

$C$DW$1355	.dwtag  DW_TAG_member
	.dwattr $C$DW$1355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1355, DW_AT_name("Umax")
	.dwattr $C$DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1355, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1355, DW_AT_decl_line(0x37)
	.dwattr $C$DW$1355, DW_AT_decl_column(0x12)

$C$DW$1356	.dwtag  DW_TAG_member
	.dwattr $C$DW$1356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1356, DW_AT_name("Umin")
	.dwattr $C$DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1356, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1356, DW_AT_decl_line(0x38)
	.dwattr $C$DW$1356, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$47


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x10)
$C$DW$1357	.dwtag  DW_TAG_member
	.dwattr $C$DW$1357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1357, DW_AT_name("up")
	.dwattr $C$DW$1357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1357, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1357, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$1357, DW_AT_decl_column(0x1e)

$C$DW$1358	.dwtag  DW_TAG_member
	.dwattr $C$DW$1358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1358, DW_AT_name("ui")
	.dwattr $C$DW$1358, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1358, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1358, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$1358, DW_AT_decl_column(0x12)

$C$DW$1359	.dwtag  DW_TAG_member
	.dwattr $C$DW$1359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1359, DW_AT_name("ud")
	.dwattr $C$DW$1359, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1359, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1359, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$1359, DW_AT_decl_column(0x12)

$C$DW$1360	.dwtag  DW_TAG_member
	.dwattr $C$DW$1360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1360, DW_AT_name("v1")
	.dwattr $C$DW$1360, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1360, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1360, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$1360, DW_AT_decl_column(0x12)

$C$DW$1361	.dwtag  DW_TAG_member
	.dwattr $C$DW$1361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1361, DW_AT_name("i1")
	.dwattr $C$DW$1361, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1361, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1361, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$1361, DW_AT_decl_column(0x12)

$C$DW$1362	.dwtag  DW_TAG_member
	.dwattr $C$DW$1362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1362, DW_AT_name("d1")
	.dwattr $C$DW$1362, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1362, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1362, DW_AT_decl_line(0x40)
	.dwattr $C$DW$1362, DW_AT_decl_column(0x12)

$C$DW$1363	.dwtag  DW_TAG_member
	.dwattr $C$DW$1363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1363, DW_AT_name("d2")
	.dwattr $C$DW$1363, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1363, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1363, DW_AT_decl_line(0x41)
	.dwattr $C$DW$1363, DW_AT_decl_column(0x12)

$C$DW$1364	.dwtag  DW_TAG_member
	.dwattr $C$DW$1364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1364, DW_AT_name("w1")
	.dwattr $C$DW$1364, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1364, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1364, DW_AT_decl_line(0x42)
	.dwattr $C$DW$1364, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x28)
$C$DW$1365	.dwtag  DW_TAG_member
	.dwattr $C$DW$1365, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$1365, DW_AT_name("term")
	.dwattr $C$DW$1365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1365, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1365, DW_AT_decl_line(0x46)
	.dwattr $C$DW$1365, DW_AT_decl_column(0x21)

$C$DW$1366	.dwtag  DW_TAG_member
	.dwattr $C$DW$1366, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$1366, DW_AT_name("param")
	.dwattr $C$DW$1366, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1366, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1366, DW_AT_decl_line(0x47)
	.dwattr $C$DW$1366, DW_AT_decl_column(0x16)

$C$DW$1367	.dwtag  DW_TAG_member
	.dwattr $C$DW$1367, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$1367, DW_AT_name("data")
	.dwattr $C$DW$1367, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1367, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$1367, DW_AT_decl_line(0x48)
	.dwattr $C$DW$1367, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206
$C$DW$T$206	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$206, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$206, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/pid_grando.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x07)

	.dwendtag $C$DW$TU$206


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x16)
$C$DW$1368	.dwtag  DW_TAG_member
	.dwattr $C$DW$1368, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1368, DW_AT_name("DcBusVolt")
	.dwattr $C$DW$1368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1368, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1368, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$1368, DW_AT_decl_column(0x18)

$C$DW$1369	.dwtag  DW_TAG_member
	.dwattr $C$DW$1369, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1369, DW_AT_name("MfuncV1")
	.dwattr $C$DW$1369, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1369, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1369, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1369, DW_AT_decl_column(0x0e)

$C$DW$1370	.dwtag  DW_TAG_member
	.dwattr $C$DW$1370, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1370, DW_AT_name("MfuncV2")
	.dwattr $C$DW$1370, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1370, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1370, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1370, DW_AT_decl_column(0x10)

$C$DW$1371	.dwtag  DW_TAG_member
	.dwattr $C$DW$1371, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1371, DW_AT_name("MfuncV3")
	.dwattr $C$DW$1371, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1371, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1371, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$1371, DW_AT_decl_column(0x11)

$C$DW$1372	.dwtag  DW_TAG_member
	.dwattr $C$DW$1372, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1372, DW_AT_name("OutOfPhase")
	.dwattr $C$DW$1372, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1372, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1372, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$1372, DW_AT_decl_column(0x1d)

$C$DW$1373	.dwtag  DW_TAG_member
	.dwattr $C$DW$1373, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1373, DW_AT_name("VphaseA")
	.dwattr $C$DW$1373, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1373, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1373, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$1373, DW_AT_decl_column(0x12)

$C$DW$1374	.dwtag  DW_TAG_member
	.dwattr $C$DW$1374, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1374, DW_AT_name("VphaseB")
	.dwattr $C$DW$1374, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1374, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1374, DW_AT_decl_line(0x30)
	.dwattr $C$DW$1374, DW_AT_decl_column(0x11)

$C$DW$1375	.dwtag  DW_TAG_member
	.dwattr $C$DW$1375, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1375, DW_AT_name("VphaseC")
	.dwattr $C$DW$1375, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1375, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1375, DW_AT_decl_line(0x31)
	.dwattr $C$DW$1375, DW_AT_decl_column(0x10)

$C$DW$1376	.dwtag  DW_TAG_member
	.dwattr $C$DW$1376, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1376, DW_AT_name("Valpha")
	.dwattr $C$DW$1376, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1376, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1376, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1376, DW_AT_decl_column(0x10)

$C$DW$1377	.dwtag  DW_TAG_member
	.dwattr $C$DW$1377, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1377, DW_AT_name("Vbeta")
	.dwattr $C$DW$1377, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1377, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1377, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1377, DW_AT_decl_column(0x10)

$C$DW$1378	.dwtag  DW_TAG_member
	.dwattr $C$DW$1378, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1378, DW_AT_name("temp")
	.dwattr $C$DW$1378, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1378, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$1378, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1378, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$207	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$207
$C$DW$T$207	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$207, DW_AT_name("PHASEVOLTAGE")
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$207, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/volt_calc.h")
	.dwattr $C$DW$T$207, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$207, DW_AT_decl_column(0x0b)

	.dwendtag $C$DW$TU$207


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x10)
$C$DW$1379	.dwtag  DW_TAG_member
	.dwattr $C$DW$1379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1379, DW_AT_name("ElecTheta")
	.dwattr $C$DW$1379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1379, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1379, DW_AT_decl_line(0x197)
	.dwattr $C$DW$1379, DW_AT_decl_column(0x13)

$C$DW$1380	.dwtag  DW_TAG_member
	.dwattr $C$DW$1380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1380, DW_AT_name("MechTheta")
	.dwattr $C$DW$1380, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1380, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1380, DW_AT_decl_line(0x198)
	.dwattr $C$DW$1380, DW_AT_decl_column(0x13)

$C$DW$1381	.dwtag  DW_TAG_member
	.dwattr $C$DW$1381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1381, DW_AT_name("RawTheta")
	.dwattr $C$DW$1381, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1381, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1381, DW_AT_decl_line(0x199)
	.dwattr $C$DW$1381, DW_AT_decl_column(0x13)

$C$DW$1382	.dwtag  DW_TAG_member
	.dwattr $C$DW$1382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1382, DW_AT_name("Speed")
	.dwattr $C$DW$1382, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1382, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1382, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$1382, DW_AT_decl_column(0x13)

$C$DW$1383	.dwtag  DW_TAG_member
	.dwattr $C$DW$1383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1383, DW_AT_name("InitTheta")
	.dwattr $C$DW$1383, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1383, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1383, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$1383, DW_AT_decl_column(0x13)

$C$DW$1384	.dwtag  DW_TAG_member
	.dwattr $C$DW$1384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1384, DW_AT_name("MechScaler")
	.dwattr $C$DW$1384, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1384, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1384, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$1384, DW_AT_decl_column(0x13)

$C$DW$1385	.dwtag  DW_TAG_member
	.dwattr $C$DW$1385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1385, DW_AT_name("StepsPerTurn")
	.dwattr $C$DW$1385, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1385, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1385, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$1385, DW_AT_decl_column(0x13)

$C$DW$1386	.dwtag  DW_TAG_member
	.dwattr $C$DW$1386, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1386, DW_AT_name("PolePairs")
	.dwattr $C$DW$1386, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1386, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$1386, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$1386, DW_AT_decl_column(0x13)

	.dwattr $C$DW$T$51, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x196)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$208	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$208
$C$DW$T$208	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$208, DW_AT_name("ABS_ENCODER")
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$208, DW_AT_decl_file("../sources/fcl_f2837x_tmdxiddk.c")
	.dwattr $C$DW$T$208, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$T$208, DW_AT_decl_column(0x08)

	.dwendtag $C$DW$TU$208


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PM_tformat_DataStruct")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x11)
$C$DW$1387	.dwtag  DW_TAG_member
	.dwattr $C$DW$1387, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1387, DW_AT_name("controlField")
	.dwattr $C$DW$1387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1387, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1387, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$1387, DW_AT_decl_column(0x0f)

$C$DW$1388	.dwtag  DW_TAG_member
	.dwattr $C$DW$1388, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1388, DW_AT_name("statusField")
	.dwattr $C$DW$1388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1388, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1388, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$1388, DW_AT_decl_column(0x0f)

$C$DW$1389	.dwtag  DW_TAG_member
	.dwattr $C$DW$1389, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1389, DW_AT_name("dataField0")
	.dwattr $C$DW$1389, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1389, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1389, DW_AT_decl_line(0x22e)
	.dwattr $C$DW$1389, DW_AT_decl_column(0x0f)

$C$DW$1390	.dwtag  DW_TAG_member
	.dwattr $C$DW$1390, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1390, DW_AT_name("dataField1")
	.dwattr $C$DW$1390, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1390, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1390, DW_AT_decl_line(0x22f)
	.dwattr $C$DW$1390, DW_AT_decl_column(0x0f)

$C$DW$1391	.dwtag  DW_TAG_member
	.dwattr $C$DW$1391, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1391, DW_AT_name("dataField2")
	.dwattr $C$DW$1391, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1391, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1391, DW_AT_decl_line(0x230)
	.dwattr $C$DW$1391, DW_AT_decl_column(0x0f)

$C$DW$1392	.dwtag  DW_TAG_member
	.dwattr $C$DW$1392, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1392, DW_AT_name("dataField3")
	.dwattr $C$DW$1392, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1392, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1392, DW_AT_decl_line(0x231)
	.dwattr $C$DW$1392, DW_AT_decl_column(0x0f)

$C$DW$1393	.dwtag  DW_TAG_member
	.dwattr $C$DW$1393, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1393, DW_AT_name("dataField4")
	.dwattr $C$DW$1393, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1393, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1393, DW_AT_decl_line(0x232)
	.dwattr $C$DW$1393, DW_AT_decl_column(0x0f)

$C$DW$1394	.dwtag  DW_TAG_member
	.dwattr $C$DW$1394, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1394, DW_AT_name("dataField5")
	.dwattr $C$DW$1394, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1394, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1394, DW_AT_decl_line(0x233)
	.dwattr $C$DW$1394, DW_AT_decl_column(0x0f)

$C$DW$1395	.dwtag  DW_TAG_member
	.dwattr $C$DW$1395, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1395, DW_AT_name("dataField6")
	.dwattr $C$DW$1395, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1395, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1395, DW_AT_decl_line(0x234)
	.dwattr $C$DW$1395, DW_AT_decl_column(0x0f)

$C$DW$1396	.dwtag  DW_TAG_member
	.dwattr $C$DW$1396, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1396, DW_AT_name("dataField7")
	.dwattr $C$DW$1396, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1396, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1396, DW_AT_decl_line(0x235)
	.dwattr $C$DW$1396, DW_AT_decl_column(0x0f)

$C$DW$1397	.dwtag  DW_TAG_member
	.dwattr $C$DW$1397, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1397, DW_AT_name("crcField")
	.dwattr $C$DW$1397, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1397, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1397, DW_AT_decl_line(0x236)
	.dwattr $C$DW$1397, DW_AT_decl_column(0x0f)

$C$DW$1398	.dwtag  DW_TAG_member
	.dwattr $C$DW$1398, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1398, DW_AT_name("crcCheck")
	.dwattr $C$DW$1398, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1398, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1398, DW_AT_decl_line(0x237)
	.dwattr $C$DW$1398, DW_AT_decl_column(0x0f)

$C$DW$1399	.dwtag  DW_TAG_member
	.dwattr $C$DW$1399, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1399, DW_AT_name("eepromAddressField")
	.dwattr $C$DW$1399, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1399, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1399, DW_AT_decl_line(0x238)
	.dwattr $C$DW$1399, DW_AT_decl_column(0x0f)

$C$DW$1400	.dwtag  DW_TAG_member
	.dwattr $C$DW$1400, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1400, DW_AT_name("eepromWrDataField")
	.dwattr $C$DW$1400, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1400, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1400, DW_AT_decl_line(0x239)
	.dwattr $C$DW$1400, DW_AT_decl_column(0x0f)

$C$DW$1401	.dwtag  DW_TAG_member
	.dwattr $C$DW$1401, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1401, DW_AT_name("eepromRdDataField")
	.dwattr $C$DW$1401, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1401, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1401, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$1401, DW_AT_decl_column(0x0f)

$C$DW$1402	.dwtag  DW_TAG_member
	.dwattr $C$DW$1402, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$1402, DW_AT_name("dataReady")
	.dwattr $C$DW$1402, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1402, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1402, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$1402, DW_AT_decl_column(0x14)

$C$DW$1403	.dwtag  DW_TAG_member
	.dwattr $C$DW$1403, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1403, DW_AT_name("fifoLevel")
	.dwattr $C$DW$1403, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1403, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1403, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$1403, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$209	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$209
$C$DW$T$209	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$209, DW_AT_name("PM_tformat_DataStruct")
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$209, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$T$209, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$T$209, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$209


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("_FCL_Parameters_")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x20)
$C$DW$1404	.dwtag  DW_TAG_member
	.dwattr $C$DW$1404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1404, DW_AT_name("carrierMid")
	.dwattr $C$DW$1404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1404, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1404, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$1404, DW_AT_decl_column(0x11)

$C$DW$1405	.dwtag  DW_TAG_member
	.dwattr $C$DW$1405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1405, DW_AT_name("adcScale")
	.dwattr $C$DW$1405, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1405, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1405, DW_AT_decl_line(0x50)
	.dwattr $C$DW$1405, DW_AT_decl_column(0x11)

$C$DW$1406	.dwtag  DW_TAG_member
	.dwattr $C$DW$1406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1406, DW_AT_name("sdfmScale")
	.dwattr $C$DW$1406, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1406, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1406, DW_AT_decl_line(0x51)
	.dwattr $C$DW$1406, DW_AT_decl_column(0x11)

$C$DW$1407	.dwtag  DW_TAG_member
	.dwattr $C$DW$1407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1407, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$1407, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1407, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1407, DW_AT_decl_line(0x52)
	.dwattr $C$DW$1407, DW_AT_decl_column(0x11)

$C$DW$1408	.dwtag  DW_TAG_member
	.dwattr $C$DW$1408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1408, DW_AT_name("tSamp")
	.dwattr $C$DW$1408, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1408, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1408, DW_AT_decl_line(0x54)
	.dwattr $C$DW$1408, DW_AT_decl_column(0x11)

$C$DW$1409	.dwtag  DW_TAG_member
	.dwattr $C$DW$1409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1409, DW_AT_name("Rd")
	.dwattr $C$DW$1409, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1409, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1409, DW_AT_decl_line(0x55)
	.dwattr $C$DW$1409, DW_AT_decl_column(0x11)

$C$DW$1410	.dwtag  DW_TAG_member
	.dwattr $C$DW$1410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1410, DW_AT_name("Rq")
	.dwattr $C$DW$1410, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1410, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1410, DW_AT_decl_line(0x56)
	.dwattr $C$DW$1410, DW_AT_decl_column(0x11)

$C$DW$1411	.dwtag  DW_TAG_member
	.dwattr $C$DW$1411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1411, DW_AT_name("Ld")
	.dwattr $C$DW$1411, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1411, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1411, DW_AT_decl_line(0x57)
	.dwattr $C$DW$1411, DW_AT_decl_column(0x11)

$C$DW$1412	.dwtag  DW_TAG_member
	.dwattr $C$DW$1412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1412, DW_AT_name("Lq")
	.dwattr $C$DW$1412, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1412, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1412, DW_AT_decl_line(0x58)
	.dwattr $C$DW$1412, DW_AT_decl_column(0x11)

$C$DW$1413	.dwtag  DW_TAG_member
	.dwattr $C$DW$1413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1413, DW_AT_name("Vbase")
	.dwattr $C$DW$1413, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1413, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1413, DW_AT_decl_line(0x59)
	.dwattr $C$DW$1413, DW_AT_decl_column(0x11)

$C$DW$1414	.dwtag  DW_TAG_member
	.dwattr $C$DW$1414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1414, DW_AT_name("Ibase")
	.dwattr $C$DW$1414, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1414, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1414, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$1414, DW_AT_decl_column(0x11)

$C$DW$1415	.dwtag  DW_TAG_member
	.dwattr $C$DW$1415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1415, DW_AT_name("wccD")
	.dwattr $C$DW$1415, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1415, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1415, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$1415, DW_AT_decl_column(0x11)

$C$DW$1416	.dwtag  DW_TAG_member
	.dwattr $C$DW$1416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1416, DW_AT_name("wccQ")
	.dwattr $C$DW$1416, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1416, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1416, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$1416, DW_AT_decl_column(0x11)

$C$DW$1417	.dwtag  DW_TAG_member
	.dwattr $C$DW$1417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1417, DW_AT_name("Vdcbus")
	.dwattr $C$DW$1417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1417, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1417, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$1417, DW_AT_decl_column(0x11)

$C$DW$1418	.dwtag  DW_TAG_member
	.dwattr $C$DW$1418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1418, DW_AT_name("BemfK")
	.dwattr $C$DW$1418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1418, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1418, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$1418, DW_AT_decl_column(0x11)

$C$DW$1419	.dwtag  DW_TAG_member
	.dwattr $C$DW$1419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1419, DW_AT_name("Wbase")
	.dwattr $C$DW$1419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1419, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$1419, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$1419, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$210	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$210
$C$DW$T$210	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$210, DW_AT_name("FCL_Parameters_t")
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$210, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$T$210, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$210, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$210


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("_SPD_OBSERVER_obj_")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x1c)
$C$DW$1420	.dwtag  DW_TAG_member
	.dwattr $C$DW$1420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1420, DW_AT_name("Ref")
	.dwattr $C$DW$1420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1420, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1420, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1420, DW_AT_decl_column(0x10)

$C$DW$1421	.dwtag  DW_TAG_member
	.dwattr $C$DW$1421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1421, DW_AT_name("Fbk")
	.dwattr $C$DW$1421, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1421, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1421, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1421, DW_AT_decl_column(0x10)

$C$DW$1422	.dwtag  DW_TAG_member
	.dwattr $C$DW$1422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1422, DW_AT_name("Err")
	.dwattr $C$DW$1422, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1422, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1422, DW_AT_decl_line(0x35)
	.dwattr $C$DW$1422, DW_AT_decl_column(0x10)

$C$DW$1423	.dwtag  DW_TAG_member
	.dwattr $C$DW$1423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1423, DW_AT_name("Out")
	.dwattr $C$DW$1423, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1423, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1423, DW_AT_decl_line(0x36)
	.dwattr $C$DW$1423, DW_AT_decl_column(0x10)

$C$DW$1424	.dwtag  DW_TAG_member
	.dwattr $C$DW$1424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1424, DW_AT_name("Kp")
	.dwattr $C$DW$1424, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1424, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1424, DW_AT_decl_line(0x37)
	.dwattr $C$DW$1424, DW_AT_decl_column(0x10)

$C$DW$1425	.dwtag  DW_TAG_member
	.dwattr $C$DW$1425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1425, DW_AT_name("Ki")
	.dwattr $C$DW$1425, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1425, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1425, DW_AT_decl_line(0x38)
	.dwattr $C$DW$1425, DW_AT_decl_column(0x10)

$C$DW$1426	.dwtag  DW_TAG_member
	.dwattr $C$DW$1426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1426, DW_AT_name("KiT")
	.dwattr $C$DW$1426, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1426, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1426, DW_AT_decl_line(0x39)
	.dwattr $C$DW$1426, DW_AT_decl_column(0x10)

$C$DW$1427	.dwtag  DW_TAG_member
	.dwattr $C$DW$1427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1427, DW_AT_name("Umax")
	.dwattr $C$DW$1427, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1427, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1427, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$1427, DW_AT_decl_column(0x10)

$C$DW$1428	.dwtag  DW_TAG_member
	.dwattr $C$DW$1428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1428, DW_AT_name("Umin")
	.dwattr $C$DW$1428, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1428, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1428, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$1428, DW_AT_decl_column(0x10)

$C$DW$1429	.dwtag  DW_TAG_member
	.dwattr $C$DW$1429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1429, DW_AT_name("up")
	.dwattr $C$DW$1429, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1429, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1429, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$1429, DW_AT_decl_column(0x10)

$C$DW$1430	.dwtag  DW_TAG_member
	.dwattr $C$DW$1430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1430, DW_AT_name("ui")
	.dwattr $C$DW$1430, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1430, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1430, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$1430, DW_AT_decl_column(0x10)

$C$DW$1431	.dwtag  DW_TAG_member
	.dwattr $C$DW$1431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1431, DW_AT_name("IqMax")
	.dwattr $C$DW$1431, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1431, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1431, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$1431, DW_AT_decl_column(0x10)

$C$DW$1432	.dwtag  DW_TAG_member
	.dwattr $C$DW$1432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1432, DW_AT_name("IqKf")
	.dwattr $C$DW$1432, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1432, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1432, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$1432, DW_AT_decl_column(0x10)

$C$DW$1433	.dwtag  DW_TAG_member
	.dwattr $C$DW$1433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1433, DW_AT_name("thetaMax")
	.dwattr $C$DW$1433, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1433, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$1433, DW_AT_decl_line(0x40)
	.dwattr $C$DW$1433, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$211	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$211
$C$DW$T$211	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$211, DW_AT_name("SPD_OBSERVER")
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$211, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/observers/speed_observer/include/speed_observer.h")
	.dwattr $C$DW$T$211, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$211, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$211


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$226	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$226

$C$DW$T$226	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$226

	.dwendtag $C$DW$TU$226


$C$DW$TU$227	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$227
$C$DW$T$227	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$T$227, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$227


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


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("int16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$35


$C$DW$TU$311	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$311
$C$DW$1434	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1434, DW_AT_type(*$C$DW$T$35)

$C$DW$T$311	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$1434)

	.dwendtag $C$DW$TU$311


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


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


$C$DW$TU$321	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$321

$C$DW$T$321	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$321, DW_AT_byte_size(0x04)
$C$DW$1435	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1435, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$321

	.dwendtag $C$DW$TU$321


$C$DW$TU$322	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$322
$C$DW$1436	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1436, DW_AT_type(*$C$DW$T$28)

$C$DW$T$322	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$1436)

	.dwendtag $C$DW$TU$322


$C$DW$TU$323	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$323
$C$DW$1437	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1437, DW_AT_type(*$C$DW$T$28)

$C$DW$T$323	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$1437)

	.dwendtag $C$DW$TU$323


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


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$23


$C$DW$TU$338	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$338

$C$DW$T$338	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$338, DW_AT_byte_size(0x08)
$C$DW$1438	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1438, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$338

	.dwendtag $C$DW$TU$338


$C$DW$TU$339	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$339

$C$DW$T$339	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$339, DW_AT_byte_size(0x06)
$C$DW$1439	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1439, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$339

	.dwendtag $C$DW$TU$339


$C$DW$TU$340	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$340
$C$DW$1440	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1440, DW_AT_type(*$C$DW$T$23)

$C$DW$T$340	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$1440)

	.dwendtag $C$DW$TU$340


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


$C$DW$TU$353	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$353
$C$DW$1441	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1441, DW_AT_type(*$C$DW$T$16)

$C$DW$T$353	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$353, DW_AT_type(*$C$DW$1441)

	.dwendtag $C$DW$TU$353


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("_iq")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/fcl_cpu_cla.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x0f)

	.dwendtag $C$DW$TU$40


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$33


$C$DW$TU$361	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$361

$C$DW$T$361	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$361, DW_AT_byte_size(0x0e)
$C$DW$1442	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1442, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$361

	.dwendtag $C$DW$TU$361


$C$DW$TU$362	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$362

$C$DW$T$362	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$362, DW_AT_byte_size(0x10)
$C$DW$1443	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1443, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$362

	.dwendtag $C$DW$TU$362


$C$DW$TU$363	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$363

$C$DW$T$363	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$363, DW_AT_byte_size(0x190)
$C$DW$1444	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1444, DW_AT_upper_bound(0xc7)

	.dwendtag $C$DW$T$363

	.dwendtag $C$DW$TU$363


$C$DW$TU$364	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$364
$C$DW$1445	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1445, DW_AT_type(*$C$DW$T$19)

$C$DW$T$364	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$1445)

	.dwendtag $C$DW$TU$364


$C$DW$TU$365	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$365
$C$DW$1446	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1446, DW_AT_type(*$C$DW$T$19)

$C$DW$T$365	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$1446)

	.dwendtag $C$DW$TU$365


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$366	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$366
$C$DW$T$366	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$366, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$366, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$366


$C$DW$TU$367	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$367
$C$DW$1447	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1447, DW_AT_type(*$C$DW$T$366)

$C$DW$T$367	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$1447)

	.dwendtag $C$DW$TU$367


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$368	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$368
$C$DW$T$368	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$368, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$368


$C$DW$TU$369	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$369
$C$DW$1448	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1448, DW_AT_type(*$C$DW$T$368)

$C$DW$T$369	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$1448)

	.dwendtag $C$DW$TU$369


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$52, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$52, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$1449	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1449, DW_AT_type(*$C$DW$T$52)

$C$DW$T$53	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$1449)

	.dwendtag $C$DW$TU$53

