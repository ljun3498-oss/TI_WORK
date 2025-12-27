;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Dec 27 15:00:17 2025                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$1, DW_AT_linkage_name("Interrupt_enable")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$3, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x124)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$4, DW_AT_linkage_name("Interrupt_initModule")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$5, DW_AT_linkage_name("Interrupt_initVectorTable")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$6, DW_AT_linkage_name("ADC_setMode")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x7e2)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$44)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$46)

	.dwendtag $C$DW$6


$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$10, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$10


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$12, DW_AT_linkage_name("MemCfg_initSections")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x48f)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$14, DW_AT_linkage_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x43d)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$132)

	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("Cla1Task1")
	.dwattr $C$DW$17, DW_AT_linkage_name("Cla1Task1")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x52)
	.dwattr $C$DW$17, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("Cla1Task2")
	.dwattr $C$DW$18, DW_AT_linkage_name("Cla1Task2")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x53)
	.dwattr $C$DW$18, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$18


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("Cla1Task3")
	.dwattr $C$DW$19, DW_AT_linkage_name("Cla1Task3")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x54)
	.dwattr $C$DW$19, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("Cla1Task4")
	.dwattr $C$DW$20, DW_AT_linkage_name("Cla1Task4")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x55)
	.dwattr $C$DW$20, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$20


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("Cla1Task5")
	.dwattr $C$DW$21, DW_AT_linkage_name("Cla1Task5")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$21, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$21


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("Cla1Task6")
	.dwattr $C$DW$22, DW_AT_linkage_name("Cla1Task6")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$22, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$22


$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("Cla1Task7")
	.dwattr $C$DW$23, DW_AT_linkage_name("Cla1Task7")
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$23, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$23


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("Cla1Task8")
	.dwattr $C$DW$24, DW_AT_linkage_name("Cla1Task8")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$24, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$24


$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$25, DW_AT_linkage_name("CLA_setTriggerSource")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x3c5)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$58)

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$60)

	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$28, DW_AT_linkage_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x4ab)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$20)

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$167)

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$167)

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$167)

	.dwendtag $C$DW$28


$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$33, DW_AT_linkage_name("CMPSS_configFilterLow")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x4da)
	.dwattr $C$DW$33, DW_AT_decl_column(0x01)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$20)

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$167)

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$167)

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$167)

	.dwendtag $C$DW$33


$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("motor1ControlISR")
	.dwattr $C$DW$38, DW_AT_linkage_name("motor1ControlISR")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$38, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$38


$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("motor2ControlISR")
	.dwattr $C$DW$39, DW_AT_linkage_name("motor2ControlISR")
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$39, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$39


$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$40, DW_AT_linkage_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$40, DW_AT_decl_column(0x0d)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$20)

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$62)

	.dwendtag $C$DW$40


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$43, DW_AT_linkage_name("GPIO_setControllerCore")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x3d2)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$128)

	.dwendtag $C$DW$43


$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$46, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x405)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$46


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$48, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$48, DW_AT_decl_column(0x01)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)

$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$48


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$51, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x326)
	.dwattr $C$DW$51, DW_AT_decl_column(0x01)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$124)

	.dwendtag $C$DW$51


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$54, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x396)
	.dwattr $C$DW$54, DW_AT_decl_column(0x01)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$20)

$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$126)

	.dwendtag $C$DW$54


$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$57, DW_AT_linkage_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x4be)
	.dwattr $C$DW$57, DW_AT_decl_column(0x01)
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$118)

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$122)

	.dwendtag $C$DW$57

	.global	||hlt||
	.data
	.align	1
	.elfsym	||hlt||,SYM_SIZE(1),SYM_BLOCKED(1)
||hlt||:
	.bits		0x7fff,16
			; hlt @ 0

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("hlt")
	.dwattr $C$DW$60, DW_AT_linkage_name("hlt")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||hlt||]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0a)

	.global	||llt||
	.data
	.align	1
	.elfsym	||llt||,SYM_SIZE(1),SYM_BLOCKED(1)
||llt||:
	.bits		0,16
			; llt @ 0

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("llt")
	.dwattr $C$DW$61, DW_AT_linkage_name("llt")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr ||llt||]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0a)


$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$62, DW_AT_linkage_name("MemCfg_getInitStatus")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x4ab)
	.dwattr $C$DW$62, DW_AT_decl_column(0x01)
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$62


$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("__eallow")
	.dwattr $C$DW$64, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
	.dwendtag $C$DW$64


$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("__edis")
	.dwattr $C$DW$65, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
	.dwendtag $C$DW$65

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("halMtr")
	.dwattr $C$DW$66, DW_AT_linkage_name("halMtr")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$66, DW_AT_decl_column(0x17)

	.sblock	".data"
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{BF539CCC-7ED1-4A3F-9AEC-21F34CDDAB6D} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{3DAB379E-17A6-48B7-88CD-8E679FF6E96B} 
;	D:\TI\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{58545A41-8AD2-4F19-8D2D-B49EC9C0091A} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("__signbitl")
	.dwattr $C$DW$67, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$67, DW_AT_decl_column(0x18)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("e")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]


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
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("e")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]

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
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |368| 
        MOV       AL,AH                 ; [CPU_ALU] |368| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__signbitf")
	.dwattr $C$DW$72, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$72, DW_AT_decl_column(0x18)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("f")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("f")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("__signbit")
	.dwattr $C$DW$76, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$76, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$76, DW_AT_decl_column(0x18)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("d")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg12]


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
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("d")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

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
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |364| 
        MOV       AL,AH                 ; [CPU_ALU] |364| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$81, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$81, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x103)
	.dwattr $C$DW$81, DW_AT_decl_column(0x10)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 260,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("x")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("x")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 261,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |261| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$85, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$85, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x108)
	.dwattr $C$DW$85, DW_AT_decl_column(0x10)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("x")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("x")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$89, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$89, DW_AT_decl_column(0x10)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("y")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("x")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("y")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("x")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$95, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$95, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0xee)
	.dwattr $C$DW$95, DW_AT_decl_column(0x10)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 239,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("x")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("y")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("y")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 240,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |240| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$100, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$100, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$100, DW_AT_decl_column(0x10)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 233,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("x")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("y")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("y")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 234,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |234| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$105, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$105, DW_AT_decl_column(0x10)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("x")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("x")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$109, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$109, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x112)
	.dwattr $C$DW$109, DW_AT_decl_column(0x10)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("x")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("x")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$113, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$113, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x117)
	.dwattr $C$DW$113, DW_AT_decl_column(0x10)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("y")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("x")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("y")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("x")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/math.h")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("__isnormall")
	.dwattr $C$DW$119, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x167)
	.dwattr $C$DW$119, DW_AT_decl_column(0x18)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("e")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


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
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("e")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]

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
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$122, DW_AT_TI_call

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
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("__isnormalf")
	.dwattr $C$DW$124, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x163)
	.dwattr $C$DW$124, DW_AT_decl_column(0x18)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("f")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("f")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
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
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("__isnormal")
	.dwattr $C$DW$128, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$128, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$128, DW_AT_decl_column(0x18)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("d")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]


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
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("d")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg12]

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
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$131, DW_AT_TI_call

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
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("__isnanl")
	.dwattr $C$DW$133, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$133, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$133, DW_AT_decl_column(0x18)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("e")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg12]


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
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("e")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg12]

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
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |348| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |348| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$138	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$138, DW_AT_name("__isnanf")
	.dwattr $C$DW$138, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$138, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x158)
	.dwattr $C$DW$138, DW_AT_decl_column(0x18)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("f")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("f")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
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
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$138, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("__isnan")
	.dwattr $C$DW$142, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$142, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x155)
	.dwattr $C$DW$142, DW_AT_decl_column(0x18)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("d")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg12]


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
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("d")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

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
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |342| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |342| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("__isinfl")
	.dwattr $C$DW$147, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$147, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$147, DW_AT_decl_column(0x18)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("e")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg12]


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
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("e")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg12]

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
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |379| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |379| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("__isinff")
	.dwattr $C$DW$152, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$152, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x176)
	.dwattr $C$DW$152, DW_AT_decl_column(0x18)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("f")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("f")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
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
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$156	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$156, DW_AT_name("__isinf")
	.dwattr $C$DW$156, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$156, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x178)
	.dwattr $C$DW$156, DW_AT_decl_column(0x18)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("d")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg12]


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
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("d")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]

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
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |377| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |377| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$156, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$156

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("__isfinitel")
	.dwattr $C$DW$161, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$161, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x152)
	.dwattr $C$DW$161, DW_AT_decl_column(0x18)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("e")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg12]


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
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("e")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg12]

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
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("__isfinitef")
	.dwattr $C$DW$165, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$165, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x150)
	.dwattr $C$DW$165, DW_AT_decl_column(0x18)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("f")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("f")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("__isfinite")
	.dwattr $C$DW$169, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$169, DW_AT_high_pc(0x00)
	.dwattr $C$DW$169, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$169, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$169, DW_AT_decl_column(0x18)
	.dwattr $C$DW$169, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("d")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg12]


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
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("d")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]

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
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$169, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$169, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$169

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$173	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$173, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$173, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$173, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$173, DW_AT_decl_column(0x18)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("e")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("e")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("e")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg12]

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
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$177, DW_AT_TI_call

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
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$178, DW_AT_TI_call

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
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$179, DW_AT_TI_call

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
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$173, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$181, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$181, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$181, DW_AT_decl_column(0x18)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("f")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("f")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |398| 
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
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
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |402| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_return

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
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

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
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |402| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$189	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$189, DW_AT_name("__fpclassify")
	.dwattr $C$DW$189, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$189, DW_AT_high_pc(0x00)
	.dwattr $C$DW$189, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$189, DW_AT_external
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$189, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$189, DW_AT_decl_column(0x18)
	.dwattr $C$DW$189, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_name("d")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("d")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("d")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]

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
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$193, DW_AT_TI_call

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
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$194, DW_AT_TI_call

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
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$195, DW_AT_TI_call

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
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$189, DW_AT_TI_end_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/_defs.h")
	.dwattr $C$DW$189, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$189, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$189

	.sect	".text:HAL_setupQEP"
	.clink
	.global	||HAL_setupQEP||

$C$DW$197	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$197, DW_AT_name("HAL_setupQEP")
	.dwattr $C$DW$197, DW_AT_low_pc(||HAL_setupQEP||)
	.dwattr $C$DW$197, DW_AT_high_pc(0x00)
	.dwattr $C$DW$197, DW_AT_linkage_name("HAL_setupQEP")
	.dwattr $C$DW$197, DW_AT_external
	.dwattr $C$DW$197, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$197, DW_AT_decl_line(0x5b1)
	.dwattr $C$DW$197, DW_AT_decl_column(0x06)
	.dwattr $C$DW$197, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1458,column 1,is_stmt,address ||HAL_setupQEP||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupQEP||
$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("handle")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupQEP                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||HAL_setupQEP||:
;* AR5   assigned to $O$C1
;* AR5   assigned to $O$C2
;* AL    assigned to $O$K18
;* AR5   assigned to $O$U2
;* AR4   assigned to handle
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("handle")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to base
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("base")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to base
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("base")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |414| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR5,*+XAR4[AR1]      ; [CPU_ALU] |414| 
        MOVB      XAR0,#20              ; [CPU_ALU] |414| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |1612| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0x31ff ; [CPU_ALU] |414| 
        MOVB      XAR0,#20              ; [CPU_ALU] |414| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |414| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR1]      ; [CPU_ALU] |1612| 
        MOVB      XAR0,#21              ; [CPU_ALU] |1612| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |1434| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0x3fff ; [CPU_ALU] |1612| 
        MOVB      XAR0,#21              ; [CPU_ALU] |1612| 
        OR        AL,#0x8000            ; [CPU_ALU] |1612| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |1612| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR1]      ; [CPU_ALU] |1434| 
        MOVB      XAR0,#21              ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1475,column 5,is_stmt,isa 0
        MOVL      XAR6,#||halMtr||      ; [CPU_ARAU] |1475| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0xff9f ; [CPU_ALU] |1434| 
        MOVB      XAR0,#21              ; [CPU_ALU] |1434| 
        ORB       AL,#0x14              ; [CPU_ALU] |1434| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |1434| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1475,column 5,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |1475| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |1475| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |1475| 
        ; branchcc occurs ; [] |1475| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1484,column 10,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |1484| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |1484| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |1484| 
        ; branchcc occurs ; [] |1484| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |454| 
        AND       AL,*+XAR5[AR0],#0xdfff ; [CPU_ALU] |454| 
        MOVB      XAR1,#21              ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      XAR2,#3999            ; [CPU_ARAU] |460| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1128,column 1,is_stmt,isa 0
        MOVL      XAR6,XAR5             ; [CPU_ALU] |1128| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVL      XAR7,#9999            ; [CPU_ARAU] |1137| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        OR        AL,#0x1000            ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |1137| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      *+XAR5[4],XAR2        ; [CPU_ALU] |460| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVL      *+XAR6[AR0],XAR7      ; [CPU_ALU] |1137| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1491,column 9,is_stmt,isa 0
        B         ||$C$L25||,UNC        ; [CPU_ALU] |1491| 
        ; branch occurs ; [] |1491| 
||$C$L24||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |454| 
        AND       AL,*+XAR5[AR0],#0xdfff ; [CPU_ALU] |454| 
        MOVB      XAR1,#21              ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      XAR7,#3999            ; [CPU_ARAU] |460| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVL      XAR6,#9999            ; [CPU_ARAU] |1137| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        OR        AL,#0x1000            ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |1137| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |454| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      *+XAR5[4],XAR7        ; [CPU_ALU] |460| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1137,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XAR6      ; [CPU_ALU] |1137| 
||$C$L25||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1142,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |1142| 
        ADDB      XAR4,#21              ; [CPU_ALU] |1142| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |1142| 
||$C$L26||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1049,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_ALU] |1049| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 922,column 5,is_stmt,isa 0
        MOVL      XAR7,XAR5             ; [CPU_ALU] |922| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 594,column 5,is_stmt,isa 0
        MOVL      XAR6,XAR5             ; [CPU_ALU] |594| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 894,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |894| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 1049,column 5,is_stmt,isa 0
        ADDB      XAR4,#23              ; [CPU_ALU] |1049| 
        AND       *+XAR4[0],#0xefff     ; [CPU_ALU] |1049| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 922,column 5,is_stmt,isa 0
        ADDB      XAR7,#22              ; [CPU_ALU] |922| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 594,column 5,is_stmt,isa 0
        ADDB      XAR6,#24              ; [CPU_ALU] |594| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 894,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0xfff0 ; [CPU_FPU] |894| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 347,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR5             ; [CPU_FPU] |347| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 894,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_FPU] |894| 
        ORB       AL,#0x75              ; [CPU_ALU] |894| 
        MOV       *+XAR5[AR0],AL        ; [CPU_FPU] |894| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 347,column 5,is_stmt,isa 0
        ADDB      XAR4,#21              ; [CPU_ALU] |347| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 922,column 5,is_stmt,isa 0
        OR        *+XAR7[0],#0x8000     ; [CPU_FPU] |922| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 594,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0800     ; [CPU_FPU] |594| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h",line 347,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0008     ; [CPU_ALU] |347| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$197, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$197, DW_AT_TI_end_line(0x5e8)
	.dwattr $C$DW$197, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$197

	.sect	".text:HAL_setupMotorPWMs"
	.clink
	.global	||HAL_setupMotorPWMs||

$C$DW$203	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$203, DW_AT_name("HAL_setupMotorPWMs")
	.dwattr $C$DW$203, DW_AT_low_pc(||HAL_setupMotorPWMs||)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_linkage_name("HAL_setupMotorPWMs")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$203, DW_AT_decl_line(0x493)
	.dwattr $C$DW$203, DW_AT_decl_column(0x06)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1172,column 1,is_stmt,address ||HAL_setupMotorPWMs||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupMotorPWMs||
$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("handle")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupMotorPWMs            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||HAL_setupMotorPWMs||:
;* AL    assigned to $O$A1
;* AR7   assigned to $O$U10
;* AL    assigned to $O$K68
;* AR4   assigned to handle
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("handle")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg12]

;* AR2   assigned to base
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("base")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg8]

;* AR5   assigned to base
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("base")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1025,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1025| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR5,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |1030| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1031,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1031| 
        MOVL      XAR7,XAR4             ; [CPU_ALU] 
        MOVB      XAR6,#2               ; [CPU_ALU] 
||$C$L27||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1766| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      ACC,#99               ; [CPU_ALU] |2182| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        OR        *+XAR5[0],#0x0008     ; [CPU_ALU] |1766| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2182| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2182| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |2182| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1549| 
        MOV       *+XAR5[4],#0          ; [CPU_ALU] |1549| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1849| 
        AND       AL,*+XAR5[0],#0xfffe  ; [CPU_ALU] |1849| 
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |1849| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1627| 
        MOVL      XAR0,*+XAR7[0]        ; [CPU_ALU] |1627| 
        AND       AL,*+XAR5[0],#0xe07f  ; [CPU_ALU] |1627| 
        MOV       *+XAR0[0],AL          ; [CPU_ALU] |1627| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      ACC,#107              ; [CPU_ALU] |2446| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2446| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2446| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |2341| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |2446| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2341| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2341| 
        AND       AL,*+XAR5[0],#0xf3ec  ; [CPU_ALU] |2341| 
        MOV       PL,AL                 ; [CPU_ALU] |2341| 
        MOVB      ACC,#8                ; [CPU_ALU] |2341| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2341| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2341| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |2915| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],P           ; [CPU_ALU] |2341| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |2915| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2915| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |3358| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2915,column 5,is_stmt,isa 0
        MOVB      *+XAR5[0],#144,UNC    ; [CPU_ALU] |2915| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3358,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3358| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3358| 
        AND       AL,*+XAR5[0],#0xffef  ; [CPU_ALU] |3358| 
        MOV       PL,AL                 ; [CPU_ALU] |3358| 
        MOVB      ACC,#12               ; [CPU_ALU] |3358| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3358| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3358| 
        MOV       *+XAR5[0],P           ; [CPU_ALU] |3358| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3385,column 1,is_stmt,isa 0
        MOVL      XAR2,*+XAR7[0]        ; [CPU_ALU] |3385| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR2             ; [CPU_ALU] |3406| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |3411| 
        MOVB      XAR1,#12              ; [CPU_ALU] |3411| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3406,column 9,is_stmt,isa 0
        ADDB      XAR5,#12              ; [CPU_ALU] |3406| 
        AND       *+XAR5[0],#0xbfff     ; [CPU_ALU] |3406| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3411,column 9,is_stmt,isa 0
        AND       AL,*+XAR2[AR0],#0xffdf ; [CPU_ALU] |3411| 
        MOV       *+XAR2[AR1],AL        ; [CPU_ALU] |3411| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |3274| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3274| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       PL,AL                 ; [CPU_ALU] |3274| 
        MOVB      ACC,#12               ; [CPU_ALU] |3274| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3274| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3274| 
        MOVB      ACC,#12               ; [CPU_ALU] |3274| 
        MOV       *+XAR5[0],P           ; [CPU_ALU] |3274| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3274| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3274| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
        MOV       PL,AL                 ; [CPU_ALU] |3274| 
        MOVB      ACC,#12               ; [CPU_ALU] |3274| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3274| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3274| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |3323| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       *+XAR5[0],P           ; [CPU_ALU] |3274| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3323| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3323| 
        AND       AL,*+XAR5[0],#0xfffb  ; [CPU_ALU] |3323| 
        MOV       PL,AL                 ; [CPU_ALU] |3323| 
        MOVB      ACC,#12               ; [CPU_ALU] |3323| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3323| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3323| 
        MOVB      ACC,#12               ; [CPU_ALU] |3323| 
        MOV       *+XAR5[0],P           ; [CPU_ALU] |3323| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3323| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3323| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
        MOV       PL,AL                 ; [CPU_ALU] |3323| 
        MOVB      ACC,#12               ; [CPU_ALU] |3323| 
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3323| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3323| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      ACC,#81               ; [CPU_ALU] |3668| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],P           ; [CPU_ALU] |3323| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3668| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3668| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      ACC,#83               ; [CPU_ALU] |3696| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      *+XAR5[0],#50,UNC     ; [CPU_ALU] |3668| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR7[0]         ; [CPU_ALU] |3696| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3696| 
        MOVB      *+XAR5[0],#50,UNC     ; [CPU_ALU] |3696| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1793| 
        OR        *+XAR5[0],#0x0004     ; [CPU_ALU] |1793| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1581| 
        OR        *+XAR5[0],#0x2000     ; [CPU_ALU] |1581| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR7[0]        ; [CPU_ALU] |1706| 
        AND       AL,*+XAR5[0],#0xffcf  ; [CPU_ALU] |1706| 
        MOVL      XAR5,*XAR7++          ; [CPU_ALU] |1706| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |1706| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1183,column 18,is_stmt,isa 0
        BANZ      ||$C$L27||,AR6--      ; [CPU_ALU] |1183| 
        ; branchcc occurs ; [] |1183| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2753,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2753| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2756,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#65528             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2760,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2760| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1240,column 5,is_stmt,isa 0
        MOVL      XAR5,#||halMtr||      ; [CPU_ARAU] |1240| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |1240| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |1240| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |1240| 
        ; branchcc occurs ; [] |1240| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1258,column 10,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |1258| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |1258| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |1258| 
        ; branchcc occurs ; [] |1258| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        OR        PH,#2500              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_FPU] |2148| 
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[2]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[2]         ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_FPU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        OR        PH,#2502              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_FPU] |2148| 
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[4]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        OR        PH,#2504              ; [CPU_ALU] |2148| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1268,column 9,is_stmt,isa 0
        B         ||$C$L29||,UNC        ; [CPU_ALU] |1268| 
        ; branch occurs ; [] |1268| 
||$C$L28||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |1818| 
        AND       *+XAR5[0],#0xfffb     ; [CPU_ALU] |1818| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |1706| 
        AND       AL,*+XAR5[0],#0xffdf  ; [CPU_ALU] |1706| 
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |1706| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_FPU] |2148| 
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[2]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[2]         ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_FPU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        OR        PH,#2                 ; [CPU_ALU] |2148| 
        MOVB      ACC,#96               ; [CPU_FPU] |2148| 
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[4]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        OR        PH,#4                 ; [CPU_ALU] |2148| 
||$C$L29||:    
        MOVB      ACC,#96               ; [CPU_ALU] |2148| 
        ADDL      ACC,*+XAR4[4]         ; [CPU_ALU] |2148| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2148| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      ACC,#99               ; [CPU_ALU] |2182| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      *+XAR5[0],P           ; [CPU_ALU] |2148| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |2182| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2182| 
        MOVB      ACC,#99               ; [CPU_ALU] |2182| 
        MOV       *+XAR5[0],#5000       ; [CPU_ALU] |2182| 
        ADDL      ACC,*+XAR4[2]         ; [CPU_ALU] |2182| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2182| 
        MOVB      ACC,#99               ; [CPU_ALU] |2182| 
        MOV       *+XAR5[0],#5000       ; [CPU_ALU] |2182| 
        ADDL      ACC,*+XAR4[4]         ; [CPU_ALU] |2182| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |2182| 
        MOV       *+XAR5[0],#5000       ; [CPU_ALU] |2182| 
||$C$L30||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5175,column 9,is_stmt,isa 0
        MOVB      ACC,#164              ; [CPU_ALU] |5175| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |5175| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |5175| 
        AND       AL,*+XAR5[0],#0xf9ff  ; [CPU_ALU] |5175| 
        MOVZ      AR6,AL                ; [CPU_ALU] |5175| 
        OR        AR6,#0x0100           ; [CPU_ALU] |5175| 
        MOVB      ACC,#164              ; [CPU_ALU] |5175| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |5175| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |5175| 
        MOV       *+XAR5[0],AR6         ; [CPU_ALU] |5175| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5277,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |5277| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |5287| 
        ADDB      ACC,#166              ; [CPU_ALU] |5287| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |5287| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        MOVB      XAR0,#176             ; [CPU_ALU] |5293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0020     ; [CPU_ALU] |5287| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0xfff0 ; [CPU_ALU] |5293| 
        MOVB      XAR0,#176             ; [CPU_ALU] |5293| 
        ORB       AL,#0x01              ; [CPU_ALU] |5293| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |5293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5071,column 10,is_stmt,isa 0
        MOVB      ACC,#164              ; [CPU_ALU] |5071| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |5071| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |5071| 
        OR        *+XAR4[0],#0x0800     ; [CPU_ALU] |5071| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$203, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x50b)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text:HAL_setupMotorFaultProtection"
	.clink
	.global	||HAL_setupMotorFaultProtection||

$C$DW$209	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$209, DW_AT_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$209, DW_AT_low_pc(||HAL_setupMotorFaultProtection||)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_linkage_name("HAL_setupMotorFaultProtection")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$209, DW_AT_decl_line(0x510)
	.dwattr $C$DW$209, DW_AT_decl_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1298,column 1,is_stmt,address ||HAL_setupMotorFaultProtection||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupMotorFaultProtection||
$C$DW$210	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$210, DW_AT_name("handle")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg12]

$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_name("currentLimit")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: HAL_setupMotorFaultProtection FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

||HAL_setupMotorFaultProtection||:
;* R0    assigned to $O$C1
;* R0    assigned to $O$C2
;* AR4   assigned to $O$U56
;* AR4   assigned to $O$U56
;* AL    assigned to $O$K3
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("handle")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to currentLimit
$C$DW$213	.dwtag  DW_TAG_variable
	.dwattr $C$DW$213, DW_AT_name("currentLimit")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x2b]

;* AR7   assigned to tripInSet
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("tripInSet")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg18]

;* AR3   assigned to curHi
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("curHi")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to curLo
$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("curLo")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg8]

;* AR5   assigned to base
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("base")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to base
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("base")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to base
$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("base")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to base
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("base")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg14]

;* AL    assigned to base
$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("base")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg0]

;* AL    assigned to base
$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("base")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to base
$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("base")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to base
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("base")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg14]

;* AL    assigned to base
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("base")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to base
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("base")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to base
$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("base")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg14]

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
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1309,column 5,is_stmt,isa 0
        MOVL      XAR5,#||halMtr||      ; [CPU_ARAU] |1309| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |1309| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1298,column 1,is_stmt,isa 0
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |1298| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1309,column 5,is_stmt,isa 0
        CMPL      ACC,XAR4              ; [CPU_ALU] |1309| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |1309| 
        ; branchcc occurs ; [] |1309| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1346,column 10,is_stmt,isa 0
        MOVL      XAR6,*-SP[2]          ; [CPU_ALU] |1346| 
        ADDB      ACC,#18               ; [CPU_ALU] |1346| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1346| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1303,column 44,is_stmt,isa 0
        MOVB      XAR7,#3,NEQ           ; [CPU_ALU] |1303| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1306,column 20,is_stmt,isa 0
        MOVB      XAR3,#0,NEQ           ; [CPU_ALU] |1306| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1307,column 20,is_stmt,isa 0
        MOVB      XAR2,#0,NEQ           ; [CPU_ALU] |1307| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1348,column 9,is_stmt,isa 0
        MOVIZ     R1H,#15767            ; [CPU_FPU] |1348| 
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |1348| 
        MOVXI     R1H,#46118            ; [CPU_FPU] |1348| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |1348| 
        NOP       ; [CPU_ALU] 
        ADDF32    R1H,R0H,#17664        ; [CPU_FPU] |1348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1349,column 9,is_stmt,isa 0
        SUBF32    R0H,#17664,R0H        ; [CPU_FPU] |1349| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1348,column 9,is_stmt,isa 0
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |1348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1349,column 9,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1349| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1348,column 9,is_stmt,isa 0
        MOV32     XAR3,R1H              ; [CPU_FPU] |1348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1349,column 9,is_stmt,isa 0
        MOV32     XAR2,R0H              ; [CPU_FPU] |1349| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 969,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |969| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_ALU] |971| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1359,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |1359| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOV       *(0:0x7901),AL        ; [CPU_ALU] |971| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1360,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1360| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1359,column 9,is_stmt,isa 0
        MOV32     *(0:0x7a04),XAR6      ; [CPU_FPU] |1359| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1360,column 9,is_stmt,isa 0
        MOV32     *(0:0x7a06),ACC       ; [CPU_FPU] |1360| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1361,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1361| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1365,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |1365| 
        MOV       AH,#4097              ; [CPU_ALU] |1365| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1365| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1365| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1368,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |1368| 
        MOV       AH,#4097              ; [CPU_ALU] |1368| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1368| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1368| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1371,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |1371| 
        MOV       AH,#1025              ; [CPU_ALU] |1371| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1371| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1371| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1374,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |1374| 
        MOV       AH,#1537              ; [CPU_ALU] |1374| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1374| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1374| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 896,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |896| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 898,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |898| 
        ANDB      AL,#0                 ; [CPU_ALU] |898| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |898| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |867| 
        OR        AL,#268               ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1351,column 9,is_stmt,isa 0
        MOVB      XAR7,#4               ; [CPU_ALU] |1351| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1380,column 9,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |1380| 
        ; branch occurs ; [] |1380| 
||$C$L31||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1313,column 9,is_stmt,isa 0
        MOVIZ     R1H,#15767            ; [CPU_FPU] |1313| 
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |1313| 
        MOVXI     R1H,#46118            ; [CPU_FPU] |1313| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |1313| 
        NOP       ; [CPU_ALU] 
        ADDF32    R1H,R0H,#17664        ; [CPU_FPU] |1313| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1314,column 9,is_stmt,isa 0
        SUBF32    R0H,#17664,R0H        ; [CPU_FPU] |1314| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1313,column 9,is_stmt,isa 0
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |1313| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1314,column 9,is_stmt,isa 0
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |1314| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1313,column 9,is_stmt,isa 0
        MOV32     XAR3,R1H              ; [CPU_FPU] |1313| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1314,column 9,is_stmt,isa 0
        MOV32     XAR2,R0H              ; [CPU_FPU] |1314| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 969,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |969| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOVB      AL,#24                ; [CPU_ALU] |971| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1322,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |1322| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOV       *(0:0x7900),AL        ; [CPU_ALU] |971| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1323,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1323| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1322,column 9,is_stmt,isa 0
        MOV32     *(0:0x7a00),XAR6      ; [CPU_FPU] |1322| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1323,column 9,is_stmt,isa 0
        MOV32     *(0:0x7a02),ACC       ; [CPU_FPU] |1323| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1324,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1324| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1328,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |1328| 
        MOVB      AH,#1                 ; [CPU_ALU] |1328| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1328| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1328| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1331,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |1331| 
        MOV       AH,#2049              ; [CPU_ALU] |1331| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1331| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1331| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1334,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |1334| 
        MOV       AH,#5121              ; [CPU_ALU] |1334| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1334| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1334| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1337,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |1337| 
        MOV       AH,#513               ; [CPU_ALU] |1337| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |1337| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |1337| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 896,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |896| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 898,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |898| 
        ANDB      AL,#0                 ; [CPU_ALU] |898| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |898| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        OR        AL,#1043              ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1311,column 9,is_stmt,isa 0
        MOVB      XAR7,#3               ; [CPU_ALU] |1311| 
||$C$L32||:    
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1388,column 18,is_stmt,isa 0
        RPTB      ||$C$L34||,AR6        ; [CPU_ALU] |1388| 
        ; repeat block starts ; [] 
||$C$L33||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[6]        ; [CPU_ALU] |601| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |631| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOV       *+XAR5[6],AR3         ; [CPU_ALU] |601| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[6]         ; [CPU_ALU] |631| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |631| 
        MOV       *+XAR5[0],AR2         ; [CPU_ALU] |631| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5617,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |5617| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5626,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |5626| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
        AND       AL,*+XAR5[AR0],#0xfff0 ; [CPU_ALU] |5627| 
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
        OR        AL,AR7                ; [CPU_ALU] |5627| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |5627| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5630,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |5630| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3987,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |3987| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3996,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |3996| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3997,column 5,is_stmt,isa 0
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        AND       AL,*+XAR5[AR0],#0xfff8 ; [CPU_ALU] |3997| 
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        ORB       AL,#0x02              ; [CPU_ALU] |3997| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |3997| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4000,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4000| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6144,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |6144| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6157,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |6157| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      XAR1,#195             ; [CPU_ALU] |6160| 
        MOVB      XAR0,#195             ; [CPU_ALU] |6160| 
        AND       AL,*+XAR5[AR0],#0xfffe ; [CPU_ALU] |6160| 
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |6160| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6170,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |6170| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6204,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |6204| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6217,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |6217| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOVB      XAR0,#195             ; [CPU_ALU] |6220| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |6220| 
        MOVB      XAR0,#195             ; [CPU_ALU] |6220| 
        ORB       AL,#0x02              ; [CPU_ALU] |6220| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |6220| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6230,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |6230| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3888,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |3888| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3897,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |3897| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        ADDB      ACC,#128              ; [CPU_ALU] |3898| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3898| 
        OR        *+XAR5[0],#0x4000     ; [CPU_ALU] |3898| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3899,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |3899| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3888,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |3888| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3897,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |3897| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        ADDB      ACC,#128              ; [CPU_ALU] |3898| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3898| 
        OR        *+XAR5[0],#0x0020     ; [CPU_ALU] |3898| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3899,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |3899| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4094,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |4094| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4103,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4103| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        AND       AL,*+XAR5[AR0],#0xfffe ; [CPU_ALU] |4104| 
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        ORB       AL,#0x02              ; [CPU_ALU] |4104| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |4104| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4107,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4107| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4094,column 1,is_stmt,isa 0
        MOVL      XAR5,*XAR4++          ; [CPU_ALU] |4094| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4103,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4103| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        AND       AL,*+XAR5[AR0],#0xfffb ; [CPU_ALU] |4104| 
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        ORB       AL,#0x08              ; [CPU_ALU] |4104| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |4104| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4107,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4107| 
        ; repeat block ends ; [] 
||$C$L34||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1436,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |1436| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |1436| 
        ; call occurs [#||SysCtl_delay||] ; [] |1436| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1436| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1438,column 18,is_stmt,isa 0
        RPTB      ||$C$L36||,AR6        ; [CPU_ALU] |1438| 
        ; repeat block starts ; [] 
||$C$L35||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4529,column 1,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |4529| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4539,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4539| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4540| 
        OR        *+XAR5[0],#0x000e     ; [CPU_ALU] |4540| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4541,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4541| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[6]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR5[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[6]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR5[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1438,column 18,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |1438| 
        ; repeat block ends ; [] 
||$C$L36||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1452,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |1452| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |1452| 
        ; call occurs [#||SysCtl_delay||] ; [] |1452| 
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
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$209, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x5af)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text:HAL_setupInterrupts"
	.clink
	.global	||HAL_setupInterrupts||

$C$DW$239	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$239, DW_AT_name("HAL_setupInterrupts")
	.dwattr $C$DW$239, DW_AT_low_pc(||HAL_setupInterrupts||)
	.dwattr $C$DW$239, DW_AT_high_pc(0x00)
	.dwattr $C$DW$239, DW_AT_linkage_name("HAL_setupInterrupts")
	.dwattr $C$DW$239, DW_AT_external
	.dwattr $C$DW$239, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$239, DW_AT_decl_line(0x2c4)
	.dwattr $C$DW$239, DW_AT_decl_column(0x06)
	.dwattr $C$DW$239, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 709,column 1,is_stmt,address ||HAL_setupInterrupts||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupInterrupts||
$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("handle")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupInterrupts           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||HAL_setupInterrupts||:
;* AL    assigned to $O$K23
;* AR4   assigned to handle
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("handle")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to base
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("base")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        MOVB      ACC,#164              ; [CPU_ALU] |4787| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4787| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4787| 
        AND       AL,*+XAR5[0],#0xfff8  ; [CPU_ALU] |4787| 
        ORB       AL,#0x01              ; [CPU_ALU] |4787| 
        MOVZ      AR6,AL                ; [CPU_ALU] |4787| 
        MOVB      ACC,#164              ; [CPU_ALU] |4787| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4787| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4787| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4683,column 5,is_stmt,isa 0
        MOVB      ACC,#164              ; [CPU_ALU] |4683| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4787,column 5,is_stmt,isa 0
        MOV       *+XAR5[0],AR6         ; [CPU_ALU] |4787| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4683,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4683| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4683| 
        OR        *+XAR5[0],#0x0008     ; [CPU_ALU] |4683| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4807,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |4807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4817,column 5,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |4817| 
        ADDB      ACC,#166              ; [CPU_ALU] |4817| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |4817| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4818,column 5,is_stmt,isa 0
        MOVB      XAR0,#174             ; [CPU_ALU] |4818| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4817,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0010     ; [CPU_ALU] |4817| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4818,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR0],#0xfff0 ; [CPU_ALU] |4818| 
        MOVB      XAR0,#174             ; [CPU_ALU] |4818| 
        ORB       AL,#0x01              ; [CPU_ALU] |4818| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |4818| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 733,column 5,is_stmt,isa 0
        MOVL      XAR5,#||halMtr||      ; [CPU_ARAU] |733| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |733| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 733,column 5,is_stmt,isa 0
        CMPL      ACC,XAR4              ; [CPU_ALU] |733| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |733| 
        ; branchcc occurs ; [] |733| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 743,column 10,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |743| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |743| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |743| 
        ; branchcc occurs ; [] |743| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 258,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |258| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motor2ControlISR|| ; [CPU_ARAU] |259| 
        MOV32     *(0:0x0d66),XAR4      ; [CPU_FPU] |259| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1767,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1767| 
        AND       AL,#0xf1ff            ; [CPU_ALU] |1767| 
        OR        AL,#0x0100            ; [CPU_ALU] |1767| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1767| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1816,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1816| 
        OR        AL,#0x4000            ; [CPU_ALU] |1816| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1816| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1669,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1669| 
        OR        AL,#0x2000            ; [CPU_ALU] |1669| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 751,column 9,is_stmt,isa 0
        B         ||$C$L38||,UNC        ; [CPU_ALU] |751| 
        ; branch occurs ; [] |751| 
||$C$L37||:    
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 258,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |258| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,#||motor1ControlISR|| ; [CPU_ARAU] |259| 
        MOV32     *(0:0x0d60),XAR4      ; [CPU_FPU] |259| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1767,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1767| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1767| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1767| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1816,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1816| 
        ORB       AL,#0x40              ; [CPU_ALU] |1816| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1816| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1669,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1669| 
        ORB       AL,#0x20              ; [CPU_ALU] |1669| 
||$C$L38||:    
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1669| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1671,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1671| 
||$C$L39||:    
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$239, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x2f3)
	.dwattr $C$DW$239, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$239

	.sect	".text:HAL_setupGPIOs"
	.clink
	.global	||HAL_setupGPIOs||

$C$DW$244	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$244, DW_AT_name("HAL_setupGPIOs")
	.dwattr $C$DW$244, DW_AT_low_pc(||HAL_setupGPIOs||)
	.dwattr $C$DW$244, DW_AT_high_pc(0x00)
	.dwattr $C$DW$244, DW_AT_linkage_name("HAL_setupGPIOs")
	.dwattr $C$DW$244, DW_AT_external
	.dwattr $C$DW$244, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$244, DW_AT_decl_line(0x336)
	.dwattr $C$DW$244, DW_AT_decl_column(0x06)
	.dwattr $C$DW$244, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 823,column 1,is_stmt,address ||HAL_setupGPIOs||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupGPIOs||
$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("handle")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupGPIOs                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||HAL_setupGPIOs||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 825,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |825| 
        MOVB      XAR4,#0               ; [CPU_ALU] |825| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |825| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |825| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 826,column 5,is_stmt,isa 0
        MOVL      XAR4,#393217          ; [CPU_ARAU] |826| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |826| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |826| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |826| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 827,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |827| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |827| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |827| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |827| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 830,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |830| 
        MOVB      ACC,#1                ; [CPU_ALU] |830| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |830| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |830| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 831,column 5,is_stmt,isa 0
        MOVL      XAR4,#393729          ; [CPU_ARAU] |831| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |831| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |831| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |831| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 832,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |832| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |832| 
        MOVB      ACC,#1                ; [CPU_ALU] |832| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |832| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |832| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 835,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |835| 
        MOVB      ACC,#2                ; [CPU_ALU] |835| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |835| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |835| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 836,column 5,is_stmt,isa 0
        MOVL      XAR4,#394241          ; [CPU_ARAU] |836| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |836| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |836| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |836| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 837,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |837| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |837| 
        MOVB      ACC,#2                ; [CPU_ALU] |837| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |837| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |837| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 840,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |840| 
        MOVB      ACC,#3                ; [CPU_ALU] |840| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |840| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |840| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 841,column 5,is_stmt,isa 0
        MOVL      XAR4,#394753          ; [CPU_ARAU] |841| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |841| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |841| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |841| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 842,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |842| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |842| 
        MOVB      ACC,#3                ; [CPU_ALU] |842| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |842| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |842| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 845,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |845| 
        MOVB      ACC,#4                ; [CPU_ALU] |845| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |845| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |845| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 846,column 5,is_stmt,isa 0
        MOVL      XAR4,#395265          ; [CPU_ARAU] |846| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |846| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |846| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |846| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 847,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |847| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |847| 
        MOVB      ACC,#4                ; [CPU_ALU] |847| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |847| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |847| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 850,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |850| 
        MOVB      ACC,#5                ; [CPU_ALU] |850| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |850| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |850| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 851,column 5,is_stmt,isa 0
        MOVL      XAR4,#395777          ; [CPU_ARAU] |851| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |851| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |851| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |851| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 852,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |852| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |852| 
        MOVB      ACC,#5                ; [CPU_ALU] |852| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |852| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |852| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 855,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |855| 
        MOVB      ACC,#6                ; [CPU_ALU] |855| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |855| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |855| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 856,column 5,is_stmt,isa 0
        MOVL      XAR4,#396289          ; [CPU_ARAU] |856| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |856| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |856| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |856| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 857,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |857| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |857| 
        MOVB      ACC,#6                ; [CPU_ALU] |857| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |857| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |857| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 860,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |860| 
        MOVB      ACC,#7                ; [CPU_ALU] |860| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |860| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |860| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 861,column 5,is_stmt,isa 0
        MOVL      XAR4,#396801          ; [CPU_ARAU] |861| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |861| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |861| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |861| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 862,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |862| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |862| 
        MOVB      ACC,#7                ; [CPU_ALU] |862| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |862| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |862| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 865,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |865| 
        MOVB      XAR4,#0               ; [CPU_ALU] |865| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |865| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |865| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 866,column 5,is_stmt,isa 0
        MOVL      XAR4,#397313          ; [CPU_ARAU] |866| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |866| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |866| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |866| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 867,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |867| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |867| 
        MOVB      ACC,#8                ; [CPU_ALU] |867| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |867| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |867| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 870,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |870| 
        MOVB      ACC,#9                ; [CPU_ALU] |870| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |870| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |870| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 871,column 5,is_stmt,isa 0
        MOVL      XAR4,#397825          ; [CPU_ARAU] |871| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |871| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |871| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |871| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 872,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |872| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |872| 
        MOVB      ACC,#9                ; [CPU_ALU] |872| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |872| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |872| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 875,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |875| 
        MOVB      ACC,#10               ; [CPU_ALU] |875| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |875| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |875| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 876,column 5,is_stmt,isa 0
        MOVL      XAR4,#398337          ; [CPU_ARAU] |876| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |876| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |876| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |876| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 877,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |877| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |877| 
        MOVB      ACC,#10               ; [CPU_ALU] |877| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |877| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |877| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 880,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |880| 
        MOVB      XAR4,#0               ; [CPU_ALU] |880| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |880| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |880| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 881,column 5,is_stmt,isa 0
        MOVL      XAR4,#398849          ; [CPU_ARAU] |881| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |881| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$280, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |881| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |881| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 882,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |882| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |882| 
        MOVB      ACC,#11               ; [CPU_ALU] |882| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |882| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |882| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 885,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |885| 
        MOVB      ACC,#12               ; [CPU_ALU] |885| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$282, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |885| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |885| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 886,column 5,is_stmt,isa 0
        MOVL      XAR4,#399362          ; [CPU_ARAU] |886| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |886| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |886| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |886| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 887,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |887| 
        MOVB      ACC,#12               ; [CPU_ALU] |887| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$284, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |887| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |887| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 888,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |888| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |888| 
        MOVB      ACC,#12               ; [CPU_ALU] |888| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$285, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |888| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |888| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 891,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |891| 
        MOVB      ACC,#14               ; [CPU_ALU] |891| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$286, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |891| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |891| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 892,column 5,is_stmt,isa 0
        MOVL      XAR4,#400384          ; [CPU_ARAU] |892| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |892| 
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$287, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |892| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |892| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 893,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |893| 
        MOVB      XAR4,#0               ; [CPU_ALU] |893| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$288, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |893| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |893| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 894,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |894| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |894| 
        MOVB      ACC,#14               ; [CPU_ALU] |894| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$289, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |894| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |894| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 897,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |897| 
        MOVB      ACC,#15               ; [CPU_ALU] |897| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$290, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |897| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |897| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 898,column 5,is_stmt,isa 0
        MOVL      XAR4,#400896          ; [CPU_ARAU] |898| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |898| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$291, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |898| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |898| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 899,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |899| 
        MOVB      ACC,#15               ; [CPU_ALU] |899| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$292, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |899| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |899| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 900,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |900| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |900| 
        MOVB      ACC,#15               ; [CPU_ALU] |900| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$293, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |900| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |900| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 903,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |903| 
        MOVB      ACC,#16               ; [CPU_ALU] |903| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$294, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |903| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |903| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 904,column 5,is_stmt,isa 0
        MOVL      XAR4,#524288          ; [CPU_ARAU] |904| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |904| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$295, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |904| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |904| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 905,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |905| 
        MOVB      ACC,#16               ; [CPU_ALU] |905| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |905| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |905| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 906,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |906| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |906| 
        MOVB      ACC,#16               ; [CPU_ALU] |906| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$297, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |906| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |906| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 909,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |909| 
        MOVB      ACC,#17               ; [CPU_ALU] |909| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$298, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |909| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |909| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 910,column 5,is_stmt,isa 0
        MOVL      XAR4,#524802          ; [CPU_ARAU] |910| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |910| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$299, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |910| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |910| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 911,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |911| 
        MOVB      ACC,#17               ; [CPU_ALU] |911| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$300, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |911| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |911| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 912,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |912| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |912| 
        MOVB      ACC,#17               ; [CPU_ALU] |912| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$301, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |912| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |912| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 915,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |915| 
        MOVB      ACC,#18               ; [CPU_ALU] |915| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$302, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |915| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |915| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 916,column 5,is_stmt,isa 0
        MOVL      XAR4,#525312          ; [CPU_ARAU] |916| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |916| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$303, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |916| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |916| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 917,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |917| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |917| 
        MOVB      ACC,#18               ; [CPU_ALU] |917| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$304, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |917| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |917| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 918,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |918| 
        MOVB      ACC,#18               ; [CPU_ALU] |918| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$305, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |918| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |918| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 921,column 5,is_stmt,isa 0
        MOVB      ACC,#19               ; [CPU_ALU] |921| 
        MOVB      XAR4,#0               ; [CPU_ALU] |921| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$306, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |921| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |921| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 922,column 5,is_stmt,isa 0
        MOVL      XAR4,#525824          ; [CPU_ARAU] |922| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |922| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$307, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |922| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |922| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 923,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |923| 
        MOVB      ACC,#19               ; [CPU_ALU] |923| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$308, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |923| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |923| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 924,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |924| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |924| 
        MOVB      ACC,#19               ; [CPU_ALU] |924| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$309, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |924| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |924| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 928,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |928| 
        MOVB      ACC,#20               ; [CPU_ALU] |928| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$310, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |928| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |928| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 929,column 5,is_stmt,isa 0
        MOVL      XAR4,#526337          ; [CPU_ARAU] |929| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |929| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$311, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |929| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |929| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 930,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |930| 
        MOVB      ACC,#20               ; [CPU_ALU] |930| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$312, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |930| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |930| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 931,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |931| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |931| 
        MOVB      ACC,#20               ; [CPU_ALU] |931| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$313, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |931| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |931| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 932,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |932| 
        MOVB      ACC,#20               ; [CPU_ALU] |932| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$314, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |932| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |932| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 935,column 5,is_stmt,isa 0
        MOVB      ACC,#21               ; [CPU_ALU] |935| 
        MOVB      XAR4,#0               ; [CPU_ALU] |935| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$315, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |935| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |935| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 936,column 5,is_stmt,isa 0
        MOVL      XAR4,#526849          ; [CPU_ARAU] |936| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |936| 
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$316, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |936| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |936| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 937,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |937| 
        MOVB      ACC,#21               ; [CPU_ALU] |937| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$317, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |937| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |937| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 938,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |938| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |938| 
        MOVB      ACC,#21               ; [CPU_ALU] |938| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |938| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |938| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 939,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |939| 
        MOVB      ACC,#21               ; [CPU_ALU] |939| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |939| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |939| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 942,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |942| 
        MOVB      ACC,#24               ; [CPU_ALU] |942| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$320, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |942| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |942| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 943,column 5,is_stmt,isa 0
        MOVL      XAR4,#528384          ; [CPU_ARAU] |943| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |943| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$321, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |943| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |943| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 944,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |944| 
        MOVB      ACC,#24               ; [CPU_ALU] |944| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$322, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |944| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |944| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 945,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |945| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |945| 
        MOVB      ACC,#24               ; [CPU_ALU] |945| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$323, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |945| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |945| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 948,column 5,is_stmt,isa 0
        MOVB      ACC,#25               ; [CPU_ALU] |948| 
        MOVB      XAR4,#0               ; [CPU_ALU] |948| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$324, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |948| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |948| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 949,column 5,is_stmt,isa 0
        MOVL      XAR4,#528896          ; [CPU_ARAU] |949| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |949| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$325, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |949| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |949| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 950,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |950| 
        MOVB      ACC,#25               ; [CPU_ALU] |950| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |950| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |950| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 951,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |951| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |951| 
        MOVB      ACC,#25               ; [CPU_ALU] |951| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$327, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |951| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |951| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 954,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |954| 
        MOVB      ACC,#26               ; [CPU_ALU] |954| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$328, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |954| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |954| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 955,column 5,is_stmt,isa 0
        MOVL      XAR4,#529408          ; [CPU_ARAU] |955| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |955| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$329, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |955| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |955| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 957,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |957| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f02),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 957,column 5,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |957| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$330, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |957| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |957| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 958,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |958| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |958| 
        MOVB      ACC,#26               ; [CPU_ALU] |958| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$331, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |958| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |958| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 961,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |961| 
        MOVB      ACC,#27               ; [CPU_ALU] |961| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$332, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |961| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |961| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 962,column 5,is_stmt,isa 0
        MOVL      XAR4,#529920          ; [CPU_ARAU] |962| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |962| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$333, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |962| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |962| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 963,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |963| 
        MOVB      ACC,#27               ; [CPU_ALU] |963| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$334, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |963| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |963| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 964,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |964| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |964| 
        MOVB      ACC,#27               ; [CPU_ALU] |964| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$335, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |964| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |964| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 967,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |967| 
        MOVB      ACC,#31               ; [CPU_ALU] |967| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$336, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |967| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |967| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 968,column 5,is_stmt,isa 0
        MOVL      XAR4,#531968          ; [CPU_ARAU] |968| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |968| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$337, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |968| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |968| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |473| 
        MOV       AH,#32768             ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 970,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |970| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f02),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 970,column 5,is_stmt,isa 0
        MOVB      ACC,#31               ; [CPU_ALU] |970| 
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$338, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |970| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |970| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 971,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |971| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |971| 
        MOVB      ACC,#31               ; [CPU_ALU] |971| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$339, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |971| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |971| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 974,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |974| 
        MOVB      ACC,#34               ; [CPU_ALU] |974| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$340, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |974| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |974| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 975,column 5,is_stmt,isa 0
        MOV       ACC,#4481 << 10       ; [CPU_ALU] |975| 
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$341, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |975| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |975| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f0a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 977,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |977| 
        MOVB      ACC,#34               ; [CPU_ALU] |977| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$342, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |977| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |977| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 978,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |978| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |978| 
        MOVB      ACC,#34               ; [CPU_ALU] |978| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$343, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |978| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |978| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 981,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |981| 
        MOVB      ACC,#40               ; [CPU_ALU] |981| 
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$344, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |981| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |981| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 982,column 5,is_stmt,isa 0
        MOV       AL,#4102              ; [CPU_ALU] |982| 
        MOV       AH,#70                ; [CPU_ALU] |982| 
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$345, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |982| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |982| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 983,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |983| 
        MOVB      ACC,#40               ; [CPU_ALU] |983| 
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$346, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |983| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |983| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 984,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |984| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |984| 
        MOVB      ACC,#40               ; [CPU_ALU] |984| 
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$347, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |984| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |984| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 987,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |987| 
        MOVB      ACC,#41               ; [CPU_ALU] |987| 
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$348, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |987| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |987| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 988,column 5,is_stmt,isa 0
        MOV       AL,#4614              ; [CPU_ALU] |988| 
        MOV       AH,#70                ; [CPU_ALU] |988| 
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$349, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |988| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |988| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 989,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |989| 
        MOVB      ACC,#41               ; [CPU_ALU] |989| 
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$350, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |989| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |989| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 990,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |990| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |990| 
        MOVB      ACC,#41               ; [CPU_ALU] |990| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$351, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |990| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |990| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 993,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |993| 
        MOVB      ACC,#42               ; [CPU_ALU] |993| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$352, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |993| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |993| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 994,column 5,is_stmt,isa 0
        MOV       AL,#5135              ; [CPU_ALU] |994| 
        MOV       AH,#70                ; [CPU_ALU] |994| 
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$353, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |994| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |994| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 995,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |995| 
        MOVB      ACC,#42               ; [CPU_ALU] |995| 
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$354, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |995| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |995| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 996,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |996| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |996| 
        MOVB      ACC,#42               ; [CPU_ALU] |996| 
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$355, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |996| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |996| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 999,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |999| 
        MOVB      ACC,#43               ; [CPU_ALU] |999| 
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$356, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |999| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |999| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1000,column 5,is_stmt,isa 0
        MOV       AL,#5647              ; [CPU_ALU] |1000| 
        MOV       AH,#70                ; [CPU_ALU] |1000| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$357, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1000| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1000| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1001,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1001| 
        MOVB      ACC,#43               ; [CPU_ALU] |1001| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$358, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1001| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1001| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1002,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1002| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1002| 
        MOVB      ACC,#43               ; [CPU_ALU] |1002| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$359, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1002| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1002| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1005,column 5,is_stmt,isa 0
        MOVB      ACC,#54               ; [CPU_ALU] |1005| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1005| 
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$360, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1005| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1005| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1006,column 5,is_stmt,isa 0
        MOV       AL,#3077              ; [CPU_ALU] |1006| 
        MOV       AH,#72                ; [CPU_ALU] |1006| 
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$361, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1006| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1006| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1007,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1007| 
        MOVB      ACC,#54               ; [CPU_ALU] |1007| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$362, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1007| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1007| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1008,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1008| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1008| 
        MOVB      ACC,#54               ; [CPU_ALU] |1008| 
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$363, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1008| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1008| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1009,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1009| 
        MOVB      ACC,#54               ; [CPU_ALU] |1009| 
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$364, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |1009| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |1009| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1012,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1012| 
        MOVB      ACC,#55               ; [CPU_ALU] |1012| 
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$365, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1012| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1012| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1013,column 5,is_stmt,isa 0
        MOV       AL,#3589              ; [CPU_ALU] |1013| 
        MOV       AH,#72                ; [CPU_ALU] |1013| 
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$366, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1013| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1013| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1014,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1014| 
        MOVB      ACC,#55               ; [CPU_ALU] |1014| 
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$367, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1014| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1014| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1015,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1015| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1015| 
        MOVB      ACC,#55               ; [CPU_ALU] |1015| 
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$368, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1015| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1015| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1016,column 5,is_stmt,isa 0
        MOVB      ACC,#55               ; [CPU_ALU] |1016| 
        MOVB      XAR4,#1               ; [CPU_ALU] |1016| 
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$369, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |1016| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |1016| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1019,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1019| 
        MOVB      ACC,#56               ; [CPU_ALU] |1019| 
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$370, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1019| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1019| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1020,column 5,is_stmt,isa 0
        MOV       AL,#4102              ; [CPU_ALU] |1020| 
        MOV       AH,#72                ; [CPU_ALU] |1020| 
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$371, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1020| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1020| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1021,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1021| 
        MOVB      ACC,#56               ; [CPU_ALU] |1021| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$372, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1021| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1021| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1022,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1022| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1022| 
        MOVB      ACC,#56               ; [CPU_ALU] |1022| 
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$373, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1022| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1022| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1025,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1025| 
        MOVB      ACC,#57               ; [CPU_ALU] |1025| 
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$374, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1025| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1025| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1026,column 5,is_stmt,isa 0
        MOV       AL,#4613              ; [CPU_ALU] |1026| 
        MOV       AH,#72                ; [CPU_ALU] |1026| 
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$375, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1026| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1026| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1027,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1027| 
        MOVB      ACC,#57               ; [CPU_ALU] |1027| 
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$376, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1027| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1027| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1028,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1028| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1028| 
        MOVB      ACC,#57               ; [CPU_ALU] |1028| 
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$377, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1028| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1028| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1029,column 5,is_stmt,isa 0
        MOVB      ACC,#57               ; [CPU_ALU] |1029| 
        MOVB      XAR4,#1               ; [CPU_ALU] |1029| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$378, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |1029| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |1029| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1032,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1032| 
        MOVB      ACC,#58               ; [CPU_ALU] |1032| 
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$379, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1032| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1032| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1033,column 5,is_stmt,isa 0
        MOV       AL,#5135              ; [CPU_ALU] |1033| 
        MOV       AH,#72                ; [CPU_ALU] |1033| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$380, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1033| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1033| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1034,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1034| 
        MOVB      ACC,#58               ; [CPU_ALU] |1034| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$381, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1034| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1034| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1035,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1035| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1035| 
        MOVB      ACC,#58               ; [CPU_ALU] |1035| 
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$382, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1035| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1035| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1038,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1038| 
        MOVB      ACC,#59               ; [CPU_ALU] |1038| 
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$383, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1038| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1038| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1039,column 5,is_stmt,isa 0
        MOV       AL,#5647              ; [CPU_ALU] |1039| 
        MOV       AH,#72                ; [CPU_ALU] |1039| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$384, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1039| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1039| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1040,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1040| 
        MOVB      ACC,#59               ; [CPU_ALU] |1040| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$385, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1040| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1040| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1041,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1041| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1041| 
        MOVB      ACC,#59               ; [CPU_ALU] |1041| 
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$386, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1041| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1041| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1044,column 5,is_stmt,isa 0
        MOVB      ACC,#60               ; [CPU_ALU] |1044| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1044| 
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$387, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1044| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1044| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1045,column 5,is_stmt,isa 0
        MOV       AL,#6159              ; [CPU_ALU] |1045| 
        MOV       AH,#72                ; [CPU_ALU] |1045| 
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$388, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1045| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1045| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1046,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1046| 
        MOVB      ACC,#60               ; [CPU_ALU] |1046| 
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$389, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1046| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1046| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1047,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1047| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1047| 
        MOVB      ACC,#60               ; [CPU_ALU] |1047| 
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$390, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1047| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1047| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1050,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1050| 
        MOVB      ACC,#61               ; [CPU_ALU] |1050| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$391, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1050| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1050| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1051,column 5,is_stmt,isa 0
        MOV       AL,#6671              ; [CPU_ALU] |1051| 
        MOV       AH,#72                ; [CPU_ALU] |1051| 
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$392, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1051| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1051| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1052,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1052| 
        MOVB      ACC,#61               ; [CPU_ALU] |1052| 
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$393, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1052| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1052| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1053,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1053| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1053| 
        MOVB      ACC,#61               ; [CPU_ALU] |1053| 
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$394, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1053| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1053| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1056,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1056| 
        MOVB      ACC,#63               ; [CPU_ALU] |1056| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$395, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1056| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1056| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1057,column 5,is_stmt,isa 0
        MOV       AL,#7695              ; [CPU_ALU] |1057| 
        MOV       AH,#72                ; [CPU_ALU] |1057| 
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$396, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1057| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1057| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1058,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1058| 
        MOVB      ACC,#63               ; [CPU_ALU] |1058| 
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$397, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1058| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1058| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1059,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1059| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1059| 
        MOVB      ACC,#63               ; [CPU_ALU] |1059| 
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$398, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1059| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1059| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1062,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1062| 
        MOVB      ACC,#64               ; [CPU_ALU] |1062| 
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$399, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1062| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1062| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1063,column 5,is_stmt,isa 0
        MOV       AL,#15                ; [CPU_ALU] |1063| 
        MOV       AH,#134               ; [CPU_ALU] |1063| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$400, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1063| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1063| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1064,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1064| 
        MOVB      ACC,#64               ; [CPU_ALU] |1064| 
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$401, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1064| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1064| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1065,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1065| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1065| 
        MOVB      ACC,#64               ; [CPU_ALU] |1065| 
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$402, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1065| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1065| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1068,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1068| 
        MOVB      ACC,#65               ; [CPU_ALU] |1068| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$403, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1068| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1068| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1069,column 5,is_stmt,isa 0
        MOV       AL,#527               ; [CPU_ALU] |1069| 
        MOV       AH,#134               ; [CPU_ALU] |1069| 
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$404, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1069| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1069| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1070,column 5,is_stmt,isa 0
        MOVB      ACC,#65               ; [CPU_ALU] |1070| 
        MOVB      XAR4,#1               ; [CPU_ALU] |1070| 
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$405, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1070| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1070| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1071,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1071| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1071| 
        MOVB      ACC,#65               ; [CPU_ALU] |1071| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$406, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1071| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1071| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1074,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1074| 
        MOVB      ACC,#66               ; [CPU_ALU] |1074| 
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$407, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1074| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1074| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1075,column 5,is_stmt,isa 0
        MOV       AL,#1039              ; [CPU_ALU] |1075| 
        MOV       AH,#134               ; [CPU_ALU] |1075| 
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$408, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1075| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1075| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1076,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1076| 
        MOVB      ACC,#66               ; [CPU_ALU] |1076| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$409, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1076| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1076| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1077,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1077| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1077| 
        MOVB      ACC,#66               ; [CPU_ALU] |1077| 
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$410, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1077| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1077| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1080,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1080| 
        MOVB      ACC,#94               ; [CPU_ALU] |1080| 
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$411, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1080| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1080| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1081,column 5,is_stmt,isa 0
        MOV       ACC,#8711 << 10       ; [CPU_ALU] |1081| 
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$412, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1081| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1081| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1082,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1082| 
        MOVB      ACC,#94               ; [CPU_ALU] |1082| 
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$413, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1082| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1082| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1083,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1083| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1083| 
        MOVB      ACC,#94               ; [CPU_ALU] |1083| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$414, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1083| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1083| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1086,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1086| 
        MOVB      ACC,#99               ; [CPU_ALU] |1086| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$415, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1086| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1086| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1087,column 5,is_stmt,isa 0
        MOV       AL,#1541              ; [CPU_ALU] |1087| 
        MOV       AH,#198               ; [CPU_ALU] |1087| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$416, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1087| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1087| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1088,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1088| 
        MOVB      ACC,#99               ; [CPU_ALU] |1088| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$417, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1088| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1088| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1089,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1089| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1089| 
        MOVB      ACC,#99               ; [CPU_ALU] |1089| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$418, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1089| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1089| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1090,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1090| 
        MOVB      ACC,#99               ; [CPU_ALU] |1090| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$419, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |1090| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |1090| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1093,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1093| 
        MOVB      ACC,#111              ; [CPU_ALU] |1093| 
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$420, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1093| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1093| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1094,column 5,is_stmt,isa 0
        MOV       ACC,#25359 << 9       ; [CPU_ALU] |1094| 
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$421, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1094| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1094| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1095,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1095| 
        MOVB      ACC,#111              ; [CPU_ALU] |1095| 
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$422, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1095| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1095| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1096,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1096| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1096| 
        MOVB      ACC,#111              ; [CPU_ALU] |1096| 
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$423, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1096| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1096| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1099,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1099| 
        MOVB      ACC,#124              ; [CPU_ALU] |1099| 
$C$DW$424	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$424, DW_AT_low_pc(0x00)
	.dwattr $C$DW$424, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$424, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1099| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1099| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1100,column 5,is_stmt,isa 0
        MOV       ACC,#6403 << 11       ; [CPU_ALU] |1100| 
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$425, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1100| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1100| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1102,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1102| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f1a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1102,column 5,is_stmt,isa 0
        MOVB      ACC,#124              ; [CPU_ALU] |1102| 
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$426, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1102| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1102| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1103,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1103| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1103| 
        MOVB      ACC,#124              ; [CPU_ALU] |1103| 
$C$DW$427	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$427, DW_AT_low_pc(0x00)
	.dwattr $C$DW$427, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$427, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1103| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1106,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1106| 
        MOVB      ACC,#125              ; [CPU_ALU] |1106| 
$C$DW$428	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$428, DW_AT_low_pc(0x00)
	.dwattr $C$DW$428, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$428, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1106| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1106| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1107,column 5,is_stmt,isa 0
        MOV       ACC,#25613 << 9       ; [CPU_ALU] |1107| 
$C$DW$429	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$429, DW_AT_low_pc(0x00)
	.dwattr $C$DW$429, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$429, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1107| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1107| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1108,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1108| 
        MOVB      ACC,#125              ; [CPU_ALU] |1108| 
$C$DW$430	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$430, DW_AT_low_pc(0x00)
	.dwattr $C$DW$430, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$430, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1108| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1108| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1109,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1109| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1109| 
        MOVB      ACC,#125              ; [CPU_ALU] |1109| 
$C$DW$431	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$431, DW_AT_low_pc(0x00)
	.dwattr $C$DW$431, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$431, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1109| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1109| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1112,column 5,is_stmt,isa 0
        MOVB      ACC,#139              ; [CPU_ALU] |1112| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1112| 
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$432, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1112| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1112| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1113,column 5,is_stmt,isa 0
        MOV       AL,#5632              ; [CPU_ALU] |1113| 
        MOV       AH,#262               ; [CPU_ALU] |1113| 
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$433, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1113| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1113| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1114,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1114| 
        MOVB      ACC,#139              ; [CPU_ALU] |1114| 
$C$DW$434	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$434, DW_AT_low_pc(0x00)
	.dwattr $C$DW$434, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$434, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1114| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1114| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1115,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1115| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1115| 
        MOVB      ACC,#139              ; [CPU_ALU] |1115| 
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$435, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1115| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1115| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1118,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1118| 
        MOVB      ACC,#153              ; [CPU_ALU] |1118| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$436, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1118| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1118| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1119,column 5,is_stmt,isa 0
        MOV       AL,#4608              ; [CPU_ALU] |1119| 
        MOV       AH,#264               ; [CPU_ALU] |1119| 
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$437, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1119| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1119| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1120,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1120| 
        MOVB      ACC,#153              ; [CPU_ALU] |1120| 
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$438, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1120| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1120| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1121,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1121| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1121| 
        MOVB      ACC,#153              ; [CPU_ALU] |1121| 
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$439, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1121| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1121| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1124,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1124| 
        MOVB      ACC,#154              ; [CPU_ALU] |1124| 
$C$DW$440	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$440, DW_AT_low_pc(0x00)
	.dwattr $C$DW$440, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$440, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1124| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1124| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1125,column 5,is_stmt,isa 0
        MOV       ACC,#16901 << 10      ; [CPU_ALU] |1125| 
$C$DW$441	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$441, DW_AT_low_pc(0x00)
	.dwattr $C$DW$441, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$441, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1125| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1125| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1126,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1126| 
        MOVB      ACC,#154              ; [CPU_ALU] |1126| 
$C$DW$442	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$442, DW_AT_low_pc(0x00)
	.dwattr $C$DW$442, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$442, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1126| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1126| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1127,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1127| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1127| 
        MOVB      ACC,#154              ; [CPU_ALU] |1127| 
$C$DW$443	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$443, DW_AT_low_pc(0x00)
	.dwattr $C$DW$443, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$443, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1127| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1127| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1130,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1130| 
        MOVB      ACC,#155              ; [CPU_ALU] |1130| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$444, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1130| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1130| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1131,column 5,is_stmt,isa 0
        MOV       AL,#5632              ; [CPU_ALU] |1131| 
        MOV       AH,#264               ; [CPU_ALU] |1131| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$445, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1131| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1131| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1132,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1132| 
        MOVB      ACC,#155              ; [CPU_ALU] |1132| 
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$446, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1132| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1132| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1133,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1133| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1133| 
        MOVB      ACC,#155              ; [CPU_ALU] |1133| 
$C$DW$447	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$447, DW_AT_low_pc(0x00)
	.dwattr $C$DW$447, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$447, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1133| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1133| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1136,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1136| 
        MOVB      ACC,#139              ; [CPU_ALU] |1136| 
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$448, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1136| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1136| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1137,column 5,is_stmt,isa 0
        MOV       AL,#5632              ; [CPU_ALU] |1137| 
        MOV       AH,#262               ; [CPU_ALU] |1137| 
$C$DW$449	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$449, DW_AT_low_pc(0x00)
	.dwattr $C$DW$449, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$449, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1137| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1137| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1138,column 5,is_stmt,isa 0
        MOVB      ACC,#139              ; [CPU_ALU] |1138| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1138| 
$C$DW$450	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$450, DW_AT_low_pc(0x00)
	.dwattr $C$DW$450, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$450, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1138| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1138| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1139,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1139| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1139| 
        MOVB      ACC,#139              ; [CPU_ALU] |1139| 
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$451, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1139| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1139| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1142,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1142| 
        MOVB      ACC,#157              ; [CPU_ALU] |1142| 
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$452, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1142| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1142| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1143,column 5,is_stmt,isa 0
        MOV       AL,#6657              ; [CPU_ALU] |1143| 
        MOV       AH,#264               ; [CPU_ALU] |1143| 
$C$DW$453	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$453, DW_AT_low_pc(0x00)
	.dwattr $C$DW$453, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$453, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1143| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1143| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1144,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1144| 
        MOVB      ACC,#157              ; [CPU_ALU] |1144| 
$C$DW$454	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$454, DW_AT_low_pc(0x00)
	.dwattr $C$DW$454, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$454, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1144| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1144| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1145,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1145| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1145| 
        MOVB      ACC,#157              ; [CPU_ALU] |1145| 
$C$DW$455	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$455, DW_AT_low_pc(0x00)
	.dwattr $C$DW$455, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$455, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1145| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1145| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1148,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1148| 
        MOVB      ACC,#158              ; [CPU_ALU] |1148| 
$C$DW$456	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$456, DW_AT_low_pc(0x00)
	.dwattr $C$DW$456, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$456, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1148| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1148| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1149,column 5,is_stmt,isa 0
        MOV       AL,#7169              ; [CPU_ALU] |1149| 
        MOV       AH,#264               ; [CPU_ALU] |1149| 
$C$DW$457	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$457, DW_AT_low_pc(0x00)
	.dwattr $C$DW$457, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$457, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1149| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1149| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1150,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1150| 
        MOVB      ACC,#158              ; [CPU_ALU] |1150| 
$C$DW$458	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$458, DW_AT_low_pc(0x00)
	.dwattr $C$DW$458, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$458, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1150| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1150| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1151,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1151| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1151| 
        MOVB      ACC,#158              ; [CPU_ALU] |1151| 
$C$DW$459	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$459, DW_AT_low_pc(0x00)
	.dwattr $C$DW$459, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$459, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1151| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1151| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1154,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1154| 
        MOVB      ACC,#159              ; [CPU_ALU] |1154| 
$C$DW$460	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$460, DW_AT_low_pc(0x00)
	.dwattr $C$DW$460, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$460, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1154| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1154| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1155,column 5,is_stmt,isa 0
        MOV       AL,#7681              ; [CPU_ALU] |1155| 
        MOV       AH,#264               ; [CPU_ALU] |1155| 
$C$DW$461	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$461, DW_AT_low_pc(0x00)
	.dwattr $C$DW$461, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$461, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1155| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1155| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1156,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1156| 
        MOVB      ACC,#159              ; [CPU_ALU] |1156| 
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$462, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1156| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1156| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1157,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1157| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1157| 
        MOVB      ACC,#159              ; [CPU_ALU] |1157| 
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$463, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1157| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1157| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1160,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1160| 
        MOVB      ACC,#160              ; [CPU_ALU] |1160| 
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$464, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |1160| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |1160| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1161,column 5,is_stmt,isa 0
        MOV       AL,#1                 ; [CPU_ALU] |1161| 
        MOV       AH,#326               ; [CPU_ALU] |1161| 
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$465, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1161| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1161| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1162,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1162| 
        MOVB      ACC,#160              ; [CPU_ALU] |1162| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$466, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1162| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1162| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 1163,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1163| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1163| 
        MOVB      ACC,#160              ; [CPU_ALU] |1163| 
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$467, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |1163| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |1163| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$244, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$244, DW_AT_TI_end_line(0x48e)
	.dwattr $C$DW$244, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$244

	.sect	".text:HAL_setupCpuTimer"
	.clink
	.global	||HAL_setupCpuTimer||

$C$DW$469	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$469, DW_AT_name("HAL_setupCpuTimer")
	.dwattr $C$DW$469, DW_AT_low_pc(||HAL_setupCpuTimer||)
	.dwattr $C$DW$469, DW_AT_high_pc(0x00)
	.dwattr $C$DW$469, DW_AT_linkage_name("HAL_setupCpuTimer")
	.dwattr $C$DW$469, DW_AT_external
	.dwattr $C$DW$469, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$469, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$469, DW_AT_decl_column(0x06)
	.dwattr $C$DW$469, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 761,column 1,is_stmt,address ||HAL_setupCpuTimer||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupCpuTimer||
$C$DW$470	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$470, DW_AT_name("base")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_reg0]

$C$DW$471	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$471, DW_AT_name("periodCount")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: HAL_setupCpuTimer             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_setupCpuTimer||:
;* AR1   assigned to base
$C$DW$472	.dwtag  DW_TAG_variable
	.dwattr $C$DW$472, DW_AT_name("base")
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$472, DW_AT_location[DW_OP_reg6]

;* AR7   assigned to periodCount
$C$DW$473	.dwtag  DW_TAG_variable
	.dwattr $C$DW$473, DW_AT_name("periodCount")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg18]

;* AL    assigned to tcrValue
$C$DW$474	.dwtag  DW_TAG_variable
	.dwattr $C$DW$474, DW_AT_name("tcrValue")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$475	.dwtag  DW_TAG_variable
	.dwattr $C$DW$475, DW_AT_name("tcrValue")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 761,column 1,is_stmt,isa 0
        MOVL      XAR1,ACC              ; [CPU_ALU] |761| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0c07),AR6       ; [CPU_ALU] |379| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 761,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[6]          ; [CPU_ALU] |761| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |380| 
        MOV       *(0:0x0c06),AL        ; [CPU_ALU] |380| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 765,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |765| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOVL      *+XAR1[2],XAR7        ; [CPU_ALU] |335| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[4],#0x7fff  ; [CPU_ALU] |259| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *+XAR1[4],AL          ; [CPU_ALU] |260| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 765,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |765| 
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$476, DW_AT_TI_call

        LCR       #||CPUTimer_setEmulationMode|| ; [CPU_ALU] |765| 
        ; call occurs [#||CPUTimer_setEmulationMode||] ; [] |765| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 236,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[4],#0x7fff  ; [CPU_ALU] |236| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 237,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |237| 
        MOV       *+XAR1[4],AL          ; [CPU_ALU] |237| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 283,column 5,is_stmt,isa 0
        AND       *+XAR1[4],#0xffef     ; [CPU_ALU] |283| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$469, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$469, DW_AT_TI_end_line(0x303)
	.dwattr $C$DW$469, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$469

	.sect	".text:HAL_setupCMPSS_DACValue"
	.clink
	.global	||HAL_setupCMPSS_DACValue||

$C$DW$478	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$478, DW_AT_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$478, DW_AT_low_pc(||HAL_setupCMPSS_DACValue||)
	.dwattr $C$DW$478, DW_AT_high_pc(0x00)
	.dwattr $C$DW$478, DW_AT_linkage_name("HAL_setupCMPSS_DACValue")
	.dwattr $C$DW$478, DW_AT_external
	.dwattr $C$DW$478, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$478, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$478, DW_AT_decl_column(0x06)
	.dwattr $C$DW$478, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 687,column 1,is_stmt,address ||HAL_setupCMPSS_DACValue||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupCMPSS_DACValue||
$C$DW$479	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$479, DW_AT_name("handle")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_reg12]

$C$DW$480	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$480, DW_AT_name("curHi")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_reg0]

$C$DW$481	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$481, DW_AT_name("curLo")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: HAL_setupCMPSS_DACValue       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||HAL_setupCMPSS_DACValue||:
;* AR4   assigned to handle
$C$DW$482	.dwtag  DW_TAG_variable
	.dwattr $C$DW$482, DW_AT_name("handle")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to curHi
$C$DW$483	.dwtag  DW_TAG_variable
	.dwattr $C$DW$483, DW_AT_name("curHi")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to curLo
$C$DW$484	.dwtag  DW_TAG_variable
	.dwattr $C$DW$484, DW_AT_name("curLo")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[6]        ; [CPU_ALU] |591| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 687,column 1,is_stmt,isa 0
        MOVZ      AR6,AH                ; [CPU_ALU] |687| 
        MOVZ      AR7,AL                ; [CPU_ALU] |687| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOV       *+XAR5[6],AL          ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |621| 
        ADDL      ACC,*+XAR4[6]         ; [CPU_ALU] |621| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 687,column 1,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |687| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        MOV       *+XAR5[0],AR6         ; [CPU_ALU] |621| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |621| 
        MOVB      XAR0,#8               ; [CPU_ALU] |621| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOV       *+XAR5[6],AR7         ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |621| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |621| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        MOV       *+XAR5[0],AR6         ; [CPU_ALU] |621| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[AR0]      ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |621| 
        MOVB      XAR0,#10              ; [CPU_ALU] |621| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 591,column 1,is_stmt,isa 0
        MOV       *+XAR5[6],AR7         ; [CPU_ALU] |591| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 621,column 1,is_stmt,isa 0
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |621| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |621| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |621| 
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$478, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$478, DW_AT_TI_end_line(0x2bf)
	.dwattr $C$DW$478, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$478

	.sect	".text:HAL_setupCMPSS"
	.clink
	.global	||HAL_setupCMPSS||

$C$DW$486	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$486, DW_AT_name("HAL_setupCMPSS")
	.dwattr $C$DW$486, DW_AT_low_pc(||HAL_setupCMPSS||)
	.dwattr $C$DW$486, DW_AT_high_pc(0x00)
	.dwattr $C$DW$486, DW_AT_linkage_name("HAL_setupCMPSS")
	.dwattr $C$DW$486, DW_AT_external
	.dwattr $C$DW$486, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$486, DW_AT_decl_line(0x267)
	.dwattr $C$DW$486, DW_AT_decl_column(0x06)
	.dwattr $C$DW$486, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 616,column 1,is_stmt,address ||HAL_setupCMPSS||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupCMPSS||
$C$DW$487	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$487, DW_AT_name("handle")
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupCMPSS                FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||HAL_setupCMPSS||:
;* AR1   assigned to $O$U8
;* AR1   assigned to handle
$C$DW$488	.dwtag  DW_TAG_variable
	.dwattr $C$DW$488, DW_AT_name("handle")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to base
$C$DW$489	.dwtag  DW_TAG_variable
	.dwattr $C$DW$489, DW_AT_name("base")
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$490	.dwtag  DW_TAG_variable
	.dwattr $C$DW$490, DW_AT_name("base")
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$491	.dwtag  DW_TAG_variable
	.dwattr $C$DW$491, DW_AT_name("base")
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$491, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$492	.dwtag  DW_TAG_variable
	.dwattr $C$DW$492, DW_AT_name("base")
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$492, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$493	.dwtag  DW_TAG_variable
	.dwattr $C$DW$493, DW_AT_name("base")
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$494	.dwtag  DW_TAG_variable
	.dwattr $C$DW$494, DW_AT_name("base")
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$495	.dwtag  DW_TAG_variable
	.dwattr $C$DW$495, DW_AT_name("base")
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$496	.dwtag  DW_TAG_variable
	.dwattr $C$DW$496, DW_AT_name("base")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$497	.dwtag  DW_TAG_variable
	.dwattr $C$DW$497, DW_AT_name("base")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$498	.dwtag  DW_TAG_variable
	.dwattr $C$DW$498, DW_AT_name("base")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$499	.dwtag  DW_TAG_variable
	.dwattr $C$DW$499, DW_AT_name("base")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR1,XAR4             ; [CPU_ALU] |616| 
        MOVB      XAR2,#2               ; [CPU_ALU] 
        ADDB      XAR1,#6               ; [CPU_ALU] 
||$C$L40||:    
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 328,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |328| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 337,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |337| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 339,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xffbc     ; [CPU_ALU] |339| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 342,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |342| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 374,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |374| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 383,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |383| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 385,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xbeff  ; [CPU_ALU] |385| 
        OR        AL,#0x0200            ; [CPU_ALU] |385| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |385| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 388,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |388| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 421,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |421| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 430,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |430| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 432,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xffe3  ; [CPU_ALU] |432| 
        ORB       AL,#0x28              ; [CPU_ALU] |432| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |432| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 437,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |437| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 470,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |470| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 479,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |479| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 481,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[0],#0xe3ff  ; [CPU_ALU] |481| 
        OR        AL,#0x2800            ; [CPU_ALU] |481| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |481| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 486,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |486| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1026,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |1026| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1036,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1036| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1038,column 5,is_stmt,isa 0
        MOVB      *+XAR4[1],#2,UNC      ; [CPU_ALU] |1038| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1040,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1040| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 556,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |556| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 565,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |565| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 567,column 5,is_stmt,isa 0
        AND       *+XAR4[4],#0xff5e     ; [CPU_ALU] |567| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 571,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |571| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |601| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |631| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOV       *+XAR4[6],#1024       ; [CPU_ALU] |601| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        ADDL      ACC,*+XAR1[0]         ; [CPU_ALU] |631| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |631| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 659,column 9,is_stmt,isa 0
        MOVB      XAR5,#30              ; [CPU_ALU] |659| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],#1024       ; [CPU_ALU] |631| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 659,column 9,is_stmt,isa 0
        MOVB      XAR4,#20              ; [CPU_ALU] |659| 
        MOVB      *-SP[1],#18,UNC       ; [CPU_ALU] |659| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_ALU] |659| 
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$500, DW_AT_TI_call

        LCR       #||CMPSS_configFilterHigh|| ; [CPU_ALU] |659| 
        ; call occurs [#||CMPSS_configFilterHigh||] ; [] |659| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 651,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |651| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 660,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |660| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 662,column 5,is_stmt,isa 0
        ADDB      XAR4,#24              ; [CPU_ALU] |662| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |662| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 664,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |664| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 666,column 9,is_stmt,isa 0
        MOVB      *-SP[1],#18,UNC       ; [CPU_ALU] |666| 
        MOVB      XAR5,#30              ; [CPU_ALU] |666| 
        MOVB      XAR4,#20              ; [CPU_ALU] |666| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_ALU] |666| 
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$501, DW_AT_TI_call

        LCR       #||CMPSS_configFilterLow|| ; [CPU_ALU] |666| 
        ; call occurs [#||CMPSS_configFilterLow||] ; [] |666| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 684,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |684| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 693,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |693| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 695,column 5,is_stmt,isa 0
        ADDB      XAR4,#22              ; [CPU_ALU] |695| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |695| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 697,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |697| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 768,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |768| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 781,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |781| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 798,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |798| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 807,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |807| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR4[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 254,column 1,is_stmt,isa 0
        MOVL      XAR4,*XAR1++          ; [CPU_ALU] |254| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 263,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |263| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 265,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |265| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 267,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |267| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 621,column 18,is_stmt,isa 0
        BANZ      ||$C$L40||,AR2--      ; [CPU_ALU] |621| 
        ; branchcc occurs ; [] |621| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 677,column 5,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |677| 
$C$DW$502	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$502, DW_AT_low_pc(0x00)
	.dwattr $C$DW$502, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$502, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |677| 
        ; call occurs [#||SysCtl_delay||] ; [] |677| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$486, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$486, DW_AT_TI_end_line(0x2a8)
	.dwattr $C$DW$486, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$486

	.sect	".text:HAL_setupCLA"
	.clink
	.global	||HAL_setupCLA||

$C$DW$504	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$504, DW_AT_name("HAL_setupCLA")
	.dwattr $C$DW$504, DW_AT_low_pc(||HAL_setupCLA||)
	.dwattr $C$DW$504, DW_AT_high_pc(0x00)
	.dwattr $C$DW$504, DW_AT_linkage_name("HAL_setupCLA")
	.dwattr $C$DW$504, DW_AT_external
	.dwattr $C$DW$504, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$504, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$504, DW_AT_decl_column(0x06)
	.dwattr $C$DW$504, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 527,column 1,is_stmt,address ||HAL_setupCLA||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupCLA||
$C$DW$505	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$505, DW_AT_name("handle")
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$505, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupCLA                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_setupCLA||:
;* AR1   assigned to handle
$C$DW$506	.dwtag  DW_TAG_variable
	.dwattr $C$DW$506, DW_AT_name("handle")
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$506, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to base
$C$DW$507	.dwtag  DW_TAG_variable
	.dwattr $C$DW$507, DW_AT_name("base")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$508	.dwtag  DW_TAG_variable
	.dwattr $C$DW$508, DW_AT_name("base")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$509	.dwtag  DW_TAG_variable
	.dwattr $C$DW$509, DW_AT_name("base")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$510	.dwtag  DW_TAG_variable
	.dwattr $C$DW$510, DW_AT_name("base")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$511	.dwtag  DW_TAG_variable
	.dwattr $C$DW$511, DW_AT_name("base")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$512	.dwtag  DW_TAG_variable
	.dwattr $C$DW$512, DW_AT_name("base")
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$512, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$513	.dwtag  DW_TAG_variable
	.dwattr $C$DW$513, DW_AT_name("base")
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$513, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$514	.dwtag  DW_TAG_variable
	.dwattr $C$DW$514, DW_AT_name("base")
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$514, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$515	.dwtag  DW_TAG_variable
	.dwattr $C$DW$515, DW_AT_name("base")
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$515, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$516	.dwtag  DW_TAG_variable
	.dwattr $C$DW$516, DW_AT_name("base")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |527| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2880,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2880| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2882,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2882| 
        MOVL      XAR4,#381812          ; [CPU_ARAU] |2882| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2882| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 2888,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2888| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 555,column 5,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |555| 
        MOV       AH,#768               ; [CPU_ALU] |555| 
$C$DW$517	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$517, DW_AT_low_pc(0x00)
	.dwattr $C$DW$517, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$517, DW_AT_TI_call

        LCR       #||MemCfg_initSections|| ; [CPU_ALU] |555| 
        ; call occurs [#||MemCfg_initSections||] ; [] |555| 
||$C$L41||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 556,column 11,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |556| 
        MOV       AH,#768               ; [CPU_ALU] |556| 
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$518, DW_AT_TI_call

        LCR       #||MemCfg_getInitStatus|| ; [CPU_ALU] |556| 
        ; call occurs [#||MemCfg_getInitStatus||] ; [] |556| 
        CMPB      AL,#1                 ; [CPU_ALU] |556| 
        B         ||$C$L41||,NEQ        ; [CPU_ALU] |556| 
        ; branchcc occurs ; [] |556| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 560,column 5,is_stmt,isa 0
        MOV       AL,#2                 ; [CPU_ALU] |560| 
        MOV       AH,#768               ; [CPU_ALU] |560| 
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$519, DW_AT_TI_call

        LCR       #||MemCfg_initSections|| ; [CPU_ALU] |560| 
        ; call occurs [#||MemCfg_initSections||] ; [] |560| 
||$C$L42||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 561,column 11,is_stmt,isa 0
        MOV       AL,#2                 ; [CPU_ALU] |561| 
        MOV       AH,#768               ; [CPU_ALU] |561| 
$C$DW$520	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$520, DW_AT_low_pc(0x00)
	.dwattr $C$DW$520, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$520, DW_AT_TI_call

        LCR       #||MemCfg_getInitStatus|| ; [CPU_ALU] |561| 
        ; call occurs [#||MemCfg_getInitStatus||] ; [] |561| 
        CMPB      AL,#1                 ; [CPU_ALU] |561| 
        B         ||$C$L42||,NEQ        ; [CPU_ALU] |561| 
        ; branchcc occurs ; [] |561| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 567,column 5,is_stmt,isa 0
        MOV       AL,#16                ; [CPU_ALU] |567| 
        MOV       AH,#256               ; [CPU_ALU] |567| 
        MOVB      XAR4,#1               ; [CPU_ALU] |567| 
$C$DW$521	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$521, DW_AT_low_pc(0x00)
	.dwattr $C$DW$521, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$521, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |567| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |567| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 331,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |331| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 338,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |338| 
        OR        *+XAR4[0],#16         ; [CPU_ALU] |338| 
        OR        *+XAR4[1],#256        ; [CPU_ALU] |338| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 348,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 570,column 5,is_stmt,isa 0
        MOV       AL,#32                ; [CPU_ALU] |570| 
        MOV       AH,#256               ; [CPU_ALU] |570| 
        MOVB      XAR4,#1               ; [CPU_ALU] |570| 
$C$DW$522	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$522, DW_AT_low_pc(0x00)
	.dwattr $C$DW$522, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$522, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |570| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |570| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 331,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |331| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 338,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |338| 
        OR        *+XAR4[0],#32         ; [CPU_ALU] |338| 
        OR        *+XAR4[1],#256        ; [CPU_ALU] |338| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 348,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 576,column 5,is_stmt,isa 0
        MOV       AL,#4                 ; [CPU_ALU] |576| 
        MOV       AH,#256               ; [CPU_ALU] |576| 
        MOVB      XAR4,#1               ; [CPU_ALU] |576| 
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$523, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |576| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |576| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 331,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |331| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 345,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |345| 
        AND       *+XAR4[0],#65531      ; [CPU_ALU] |345| 
        AND       *+XAR4[1],#65279      ; [CPU_ALU] |345| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 348,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 579,column 5,is_stmt,isa 0
        MOV       AL,#8                 ; [CPU_ALU] |579| 
        MOV       AH,#256               ; [CPU_ALU] |579| 
        MOVB      XAR4,#1               ; [CPU_ALU] |579| 
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("MemCfg_setLSRAMControllerSel")
	.dwattr $C$DW$524, DW_AT_TI_call

        LCR       #||MemCfg_setLSRAMControllerSel|| ; [CPU_ALU] |579| 
        ; call occurs [#||MemCfg_setLSRAMControllerSel||] ; [] |579| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 331,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |331| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 345,column 9,is_stmt,isa 0
        MOVL      XAR4,#390182          ; [CPU_ARAU] |345| 
        AND       *+XAR4[0],#65527      ; [CPU_ALU] |345| 
        AND       *+XAR4[1],#65279      ; [CPU_ALU] |345| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h",line 348,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |348| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task1||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task2||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[1],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task3||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[2],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task4||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[3],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task5||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[4],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task6||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[5],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task7||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[6],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 293,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |293| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 302,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |302| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 304,column 5,is_stmt,isa 0
        MOVL      XAR5,#||Cla1Task8||   ; [CPU_ARAU] |304| 
        MOV       *+XAR4[7],AR5         ; [CPU_ALU] |304| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 306,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |306| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 403,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |403| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 412,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |412| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 417,column 5,is_stmt,isa 0
        ADDB      XAR4,#16              ; [CPU_ALU] |417| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |417| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 419,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |419| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 670,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |670| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 679,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |679| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 684,column 5,is_stmt,isa 0
        ADDB      XAR4,#37              ; [CPU_ALU] |684| 
        OR        *+XAR4[0],#0x00ff     ; [CPU_ALU] |684| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h",line 686,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |686| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 604,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |604| 
        MOVB      AH,#36                ; [CPU_ALU] |604| 
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$525, DW_AT_TI_call

        LCR       #||CLA_setTriggerSource|| ; [CPU_ALU] |604| 
        ; call occurs [#||CLA_setTriggerSource||] ; [] |604| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 607,column 5,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |607| 
        MOVB      AH,#39                ; [CPU_ALU] |607| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$526, DW_AT_TI_call

        LCR       #||CLA_setTriggerSource|| ; [CPU_ALU] |607| 
        ; call occurs [#||CLA_setTriggerSource||] ; [] |607| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$504, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$504, DW_AT_TI_end_line(0x262)
	.dwattr $C$DW$504, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$504

	.sect	".text:HAL_setupADCs"
	.clink
	.global	||HAL_setupADCs||

$C$DW$528	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$528, DW_AT_name("HAL_setupADCs")
	.dwattr $C$DW$528, DW_AT_low_pc(||HAL_setupADCs||)
	.dwattr $C$DW$528, DW_AT_high_pc(0x00)
	.dwattr $C$DW$528, DW_AT_linkage_name("HAL_setupADCs")
	.dwattr $C$DW$528, DW_AT_external
	.dwattr $C$DW$528, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$528, DW_AT_decl_line(0x178)
	.dwattr $C$DW$528, DW_AT_decl_column(0x06)
	.dwattr $C$DW$528, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 377,column 1,is_stmt,address ||HAL_setupADCs||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setupADCs||
$C$DW$529	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$529, DW_AT_name("handle")
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$529, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setupADCs                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||HAL_setupADCs||:
;* AR1   assigned to $O$U8
;* AR1   assigned to handle
$C$DW$530	.dwtag  DW_TAG_variable
	.dwattr $C$DW$530, DW_AT_name("handle")
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$530, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to base
$C$DW$531	.dwtag  DW_TAG_variable
	.dwattr $C$DW$531, DW_AT_name("base")
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$531, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$532	.dwtag  DW_TAG_variable
	.dwattr $C$DW$532, DW_AT_name("base")
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$532, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$533	.dwtag  DW_TAG_variable
	.dwattr $C$DW$533, DW_AT_name("base")
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$533, DW_AT_location[DW_OP_reg12]

;* AR4   assigned to base
$C$DW$534	.dwtag  DW_TAG_variable
	.dwattr $C$DW$534, DW_AT_name("base")
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$534, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |377| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVB      XAR2,#3               ; [CPU_ALU] 
        ADDB      XAR1,#18              ; [CPU_ALU] 
||$C$L43||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 390,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR1[0]         ; [CPU_ALU] |390| 
        MOVB      XAR4,#0               ; [CPU_ALU] |390| 
        MOVB      XAR5,#0               ; [CPU_ALU] |390| 
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$535, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |390| 
        ; call occurs [#||ADC_setMode||] ; [] |390| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 461,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |461| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[1],#0xfff0  ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |471| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 619,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |619| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |629| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 631,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |631| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 654,column 1,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |654| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 663,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |663| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |664| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 665,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |665| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1091,column 1,is_stmt,isa 0
        MOVL      XAR4,*XAR1++          ; [CPU_ALU] |1091| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1097,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1097| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1099,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |1099| 
        AND       AL,*+XAR4[AR0],#0xfff0 ; [CPU_ALU] |1099| 
        MOVB      XAR0,#9               ; [CPU_ALU] |1099| 
        ORB       AL,#0x10              ; [CPU_ALU] |1099| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |1099| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1103,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1103| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 385,column 18,is_stmt,isa 0
        BANZ      ||$C$L43||,AR2--      ; [CPU_ALU] |385| 
        ; branchcc occurs ; [] |385| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 408,column 5,is_stmt,isa 0
        MOV       ACC,#59998            ; [CPU_ALU] |408| 
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$536, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |408| 
        ; call occurs [#||SysCtl_delay||] ; [] |408| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 536,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |536| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7510)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7510),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7540)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x7540),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7542)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x7542),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7490)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7490),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74c0)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x74c0),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74c2)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x74c2),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7410)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7410),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7440)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x7440),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7442)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x7442),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7590)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65055             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#87                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7590),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x75c0)        ; [CPU_ALU] |1176| 
        AND       AL,#0xfff0            ; [CPU_ALU] |1176| 
        MOV       *(0:0x75c0),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x75c2)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x75c2),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7512)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65080             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#178               ; [CPU_ALU] |538| 
        MOV32     *(0:0x7512),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7548)        ; [CPU_ALU] |1176| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |1176| 
        ORB       AL,#0x01              ; [CPU_ALU] |1176| 
        MOV       *(0:0x7548),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x754a)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x754a),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7492)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65080             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#178               ; [CPU_ALU] |538| 
        MOV32     *(0:0x7492),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74c8)        ; [CPU_ALU] |1176| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |1176| 
        ORB       AL,#0x01              ; [CPU_ALU] |1176| 
        MOV       *(0:0x74c8),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x74ca)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x74ca),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7412)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65080             ; [CPU_ALU] |538| 
        OR        AL,#13                ; [CPU_ALU] |538| 
        OR        AH,#178               ; [CPU_ALU] |538| 
        MOV32     *(0:0x7412),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7448)        ; [CPU_ALU] |1176| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |1176| 
        ORB       AL,#0x01              ; [CPU_ALU] |1176| 
        MOV       *(0:0x7448),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x744a)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x744a),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7592)       ; [CPU_FPU] |538| 
        AND       AL,#65024             ; [CPU_ALU] |538| 
        AND       AH,#65087             ; [CPU_ALU] |538| 
        OR        AL,#32781             ; [CPU_ALU] |538| 
        OR        AH,#183               ; [CPU_ALU] |538| 
        MOV32     *(0:0x7592),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1176,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x75c8)        ; [CPU_ALU] |1176| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |1176| 
        ORB       AL,#0x01              ; [CPU_ALU] |1176| 
        MOV       *(0:0x75c8),AL        ; [CPU_ALU] |1176| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1497,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x75ca)        ; [CPU_ALU] |1497| 
        AND       AL,#0xfc00            ; [CPU_ALU] |1497| 
        MOV       *(0:0x75ca),AL        ; [CPU_ALU] |1497| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 1500,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1500| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$537	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$537, DW_AT_low_pc(0x00)
	.dwattr $C$DW$537, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$528, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$528, DW_AT_TI_end_line(0x209)
	.dwattr $C$DW$528, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$528

	.sect	".text:HAL_setParams"
	.clink
	.global	||HAL_setParams||

$C$DW$538	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$538, DW_AT_name("HAL_setParams")
	.dwattr $C$DW$538, DW_AT_low_pc(||HAL_setParams||)
	.dwattr $C$DW$538, DW_AT_high_pc(0x00)
	.dwattr $C$DW$538, DW_AT_linkage_name("HAL_setParams")
	.dwattr $C$DW$538, DW_AT_external
	.dwattr $C$DW$538, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$538, DW_AT_decl_line(0x133)
	.dwattr $C$DW$538, DW_AT_decl_column(0x06)
	.dwattr $C$DW$538, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 308,column 1,is_stmt,address ||HAL_setParams||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setParams||
$C$DW$539	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$539, DW_AT_name("handle")
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setParams                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_setParams||:
;* AR1   assigned to handle
$C$DW$540	.dwtag  DW_TAG_variable
	.dwattr $C$DW$540, DW_AT_name("handle")
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$540, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,XAR4             ; [CPU_ALU] |308| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1183,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1183| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1184,column 5,is_stmt,isa 0
        MOVL      XAR4,#381484          ; [CPU_ARAU] |1184| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1184| 
        AND       AL,#65528             ; [CPU_ALU] |1184| 
        ORB       AL,#0x02              ; [CPU_ALU] |1184| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1184| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1187,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1187| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 320,column 5,is_stmt,isa 0
$C$DW$541	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$541, DW_AT_low_pc(0x00)
	.dwattr $C$DW$541, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$541, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |320| 
        ; call occurs [#||Device_initGPIO||] ; [] |320| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 325,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |325| 
$C$DW$542	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$542, DW_AT_low_pc(0x00)
	.dwattr $C$DW$542, DW_AT_name("HAL_setupCLA")
	.dwattr $C$DW$542, DW_AT_TI_call

        LCR       #||HAL_setupCLA||     ; [CPU_ALU] |325| 
        ; call occurs [#||HAL_setupCLA||] ; [] |325| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 332,column 5,is_stmt,isa 0
$C$DW$543	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$543, DW_AT_low_pc(0x00)
	.dwattr $C$DW$543, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$543, DW_AT_TI_call

        LCR       #||Interrupt_initModule|| ; [CPU_ALU] |332| 
        ; call occurs [#||Interrupt_initModule||] ; [] |332| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 341,column 5,is_stmt,isa 0
$C$DW$544	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$544, DW_AT_low_pc(0x00)
	.dwattr $C$DW$544, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$544, DW_AT_TI_call

        LCR       #||Interrupt_initVectorTable|| ; [CPU_ALU] |341| 
        ; call occurs [#||Interrupt_initVectorTable||] ; [] |341| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 346,column 5,is_stmt,isa 0
        MOVL      XAR4,#10000           ; [CPU_ARAU] |346| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |346| 
        MOVL      ACC,*+XAR1[2]         ; [CPU_ALU] |346| 
$C$DW$545	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$545, DW_AT_low_pc(0x00)
	.dwattr $C$DW$545, DW_AT_name("HAL_setupCpuTimer")
	.dwattr $C$DW$545, DW_AT_TI_call

        LCR       #||HAL_setupCpuTimer|| ; [CPU_ALU] |346| 
        ; call occurs [#||HAL_setupCpuTimer||] ; [] |346| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 347,column 5,is_stmt,isa 0
        MOVL      XAR4,#20000           ; [CPU_ARAU] |347| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |347| 
        MOVL      ACC,*+XAR1[4]         ; [CPU_ALU] |347| 
$C$DW$546	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$546, DW_AT_low_pc(0x00)
	.dwattr $C$DW$546, DW_AT_name("HAL_setupCpuTimer")
	.dwattr $C$DW$546, DW_AT_TI_call

        LCR       #||HAL_setupCpuTimer|| ; [CPU_ALU] |347| 
        ; call occurs [#||HAL_setupCpuTimer||] ; [] |347| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR4,#30000           ; [CPU_ARAU] |348| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |348| 
        MOVL      ACC,*+XAR1[6]         ; [CPU_ALU] |348| 
$C$DW$547	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$547, DW_AT_low_pc(0x00)
	.dwattr $C$DW$547, DW_AT_name("HAL_setupCpuTimer")
	.dwattr $C$DW$547, DW_AT_TI_call

        LCR       #||HAL_setupCpuTimer|| ; [CPU_ALU] |348| 
        ; call occurs [#||HAL_setupCpuTimer||] ; [] |348| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 353,column 5,is_stmt,isa 0
$C$DW$548	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$548, DW_AT_low_pc(0x00)
	.dwattr $C$DW$548, DW_AT_name("HAL_setupGPIOs")
	.dwattr $C$DW$548, DW_AT_TI_call

        LCR       #||HAL_setupGPIOs||   ; [CPU_ALU] |353| 
        ; call occurs [#||HAL_setupGPIOs||] ; [] |353| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 365,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |365| 
$C$DW$549	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$549, DW_AT_low_pc(0x00)
	.dwattr $C$DW$549, DW_AT_name("HAL_setupADCs")
	.dwattr $C$DW$549, DW_AT_TI_call

        LCR       #||HAL_setupADCs||    ; [CPU_ALU] |365| 
        ; call occurs [#||HAL_setupADCs||] ; [] |365| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$550	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$550, DW_AT_low_pc(0x00)
	.dwattr $C$DW$550, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$538, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$538, DW_AT_TI_end_line(0x172)
	.dwattr $C$DW$538, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$538

	.sect	".text:HAL_setMotorParams"
	.clink
	.global	||HAL_setMotorParams||

$C$DW$551	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$551, DW_AT_name("HAL_setMotorParams")
	.dwattr $C$DW$551, DW_AT_low_pc(||HAL_setMotorParams||)
	.dwattr $C$DW$551, DW_AT_high_pc(0x00)
	.dwattr $C$DW$551, DW_AT_linkage_name("HAL_setMotorParams")
	.dwattr $C$DW$551, DW_AT_external
	.dwattr $C$DW$551, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$551, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$551, DW_AT_decl_column(0x06)
	.dwattr $C$DW$551, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 285,column 1,is_stmt,address ||HAL_setMotorParams||,isa 0

	.dwfde $C$DW$CIE, ||HAL_setMotorParams||
$C$DW$552	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$552, DW_AT_name("handle")
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$552, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_setMotorParams            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_setMotorParams||:
;* AR1   assigned to handle
$C$DW$553	.dwtag  DW_TAG_variable
	.dwattr $C$DW$553, DW_AT_name("handle")
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$553, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |285| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 289,column 5,is_stmt,isa 0
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_name("HAL_setupMotorPWMs")
	.dwattr $C$DW$554, DW_AT_TI_call

        LCR       #||HAL_setupMotorPWMs|| ; [CPU_ALU] |289| 
        ; call occurs [#||HAL_setupMotorPWMs||] ; [] |289| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 294,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |294| 
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_name("HAL_setupCMPSS")
	.dwattr $C$DW$555, DW_AT_TI_call

        LCR       #||HAL_setupCMPSS||   ; [CPU_ALU] |294| 
        ; call occurs [#||HAL_setupCMPSS||] ; [] |294| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 299,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |299| 
$C$DW$556	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$556, DW_AT_low_pc(0x00)
	.dwattr $C$DW$556, DW_AT_name("HAL_setupQEP")
	.dwattr $C$DW$556, DW_AT_TI_call

        LCR       #||HAL_setupQEP||     ; [CPU_ALU] |299| 
        ; call occurs [#||HAL_setupQEP||] ; [] |299| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$557	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$557, DW_AT_low_pc(0x00)
	.dwattr $C$DW$557, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$551, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$551, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$551, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$551

	.sect	".text:HAL_init"
	.clink
	.global	||HAL_init||

$C$DW$558	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$558, DW_AT_name("HAL_init")
	.dwattr $C$DW$558, DW_AT_low_pc(||HAL_init||)
	.dwattr $C$DW$558, DW_AT_high_pc(0x00)
	.dwattr $C$DW$558, DW_AT_linkage_name("HAL_init")
	.dwattr $C$DW$558, DW_AT_external
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$558, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$558, DW_AT_decl_line(0x85)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$558, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 134,column 1,is_stmt,address ||HAL_init||,isa 0

	.dwfde $C$DW$CIE, ||HAL_init||
$C$DW$559	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$559, DW_AT_name("pMemory")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_reg12]

$C$DW$560	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$560, DW_AT_name("numBytes")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: HAL_init                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_init||:
;* AR4   assigned to pMemory
$C$DW$561	.dwtag  DW_TAG_variable
	.dwattr $C$DW$561, DW_AT_name("pMemory")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to numBytes
$C$DW$562	.dwtag  DW_TAG_variable
	.dwattr $C$DW$562, DW_AT_name("numBytes")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |134| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 138,column 5,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |138| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        CMPL      ACC,XAR6              ; [CPU_ALU] |138| 
        B         ||$C$L44||,LOS        ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 140,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |140| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |140| 
        ; branch occurs ; [] |140| 
||$C$L44||:    
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1948,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1948| 
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1953,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7029)        ; [CPU_ALU] |1953| 
        ORB       AL,#0x68              ; [CPU_ALU] |1953| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |1953| 
 RPT #69 || NOP
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1956,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1956| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 161,column 5,is_stmt,isa 0
        MOVL      XAR5,#23552           ; [CPU_ARAU] |161| 
        MOVB      XAR0,#12              ; [CPU_ALU] |161| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 196,column 5,is_stmt,isa 0
        MOVL      XAR6,#2880            ; [CPU_ARAU] |196| 
        MOVB      XAR1,#30              ; [CPU_ALU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 161,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |161| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 162,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |162| 
        MOVL      XAR5,#23568           ; [CPU_ARAU] |162| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |162| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 163,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |163| 
        MOVL      XAR5,#23584           ; [CPU_ARAU] |163| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 196,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |196| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 163,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |163| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 173,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |173| 
        MOVL      XAR5,#29184           ; [CPU_ARAU] |173| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |173| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 174,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |174| 
        MOVL      XAR5,#29200           ; [CPU_ARAU] |174| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |174| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 186,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |186| 
        MOVL      XAR5,#29696           ; [CPU_ARAU] |186| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |186| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 187,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |187| 
        MOVL      XAR5,#29824           ; [CPU_ARAU] |187| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |187| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 188,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |188| 
        MOVL      XAR5,#29952           ; [CPU_ARAU] |188| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |188| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 189,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |189| 
        MOVL      XAR5,#30080           ; [CPU_ARAU] |189| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |189| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 194,column 5,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |194| 
        MOVL      XAR5,#2816            ; [CPU_ARAU] |194| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |194| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 195,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |195| 
        MOVL      XAR5,#2848            ; [CPU_ARAU] |195| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |195| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 168,column 5,is_stmt,isa 0
        MOVL      XAR5,#5120            ; [CPU_ARAU] |168| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 197,column 5,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |197| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 168,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR5        ; [CPU_ALU] |168| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 179,column 5,is_stmt,isa 0
        MOVL      XAR5,#3072            ; [CPU_ARAU] |179| 
        MOVL      *+XAR4[2],XAR5        ; [CPU_ALU] |179| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 180,column 5,is_stmt,isa 0
        MOVL      XAR5,#3080            ; [CPU_ARAU] |180| 
        MOVL      *+XAR4[4],XAR5        ; [CPU_ALU] |180| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 181,column 5,is_stmt,isa 0
        MOVL      XAR5,#3088            ; [CPU_ARAU] |181| 
        MOVL      *+XAR4[6],XAR5        ; [CPU_ALU] |181| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 197,column 5,is_stmt,isa 0
        MOVL      XAR5,#2912            ; [CPU_ARAU] |197| 
        MOVL      *+XAR4[AR0],XAR5      ; [CPU_ALU] |197| 
||$C$L45||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
        SPM       #0                    ; [CPU_ALU] 
$C$DW$563	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$563, DW_AT_low_pc(0x00)
	.dwattr $C$DW$563, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$558, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$558, DW_AT_TI_end_line(0xc8)
	.dwattr $C$DW$558, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$558

	.sect	".text:HAL_enableInterrupts"
	.clink
	.global	||HAL_enableInterrupts||

$C$DW$564	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$564, DW_AT_name("HAL_enableInterrupts")
	.dwattr $C$DW$564, DW_AT_low_pc(||HAL_enableInterrupts||)
	.dwattr $C$DW$564, DW_AT_high_pc(0x00)
	.dwattr $C$DW$564, DW_AT_linkage_name("HAL_enableInterrupts")
	.dwattr $C$DW$564, DW_AT_external
	.dwattr $C$DW$564, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$564, DW_AT_decl_line(0x62)
	.dwattr $C$DW$564, DW_AT_decl_column(0x06)
	.dwattr $C$DW$564, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 99,column 1,is_stmt,address ||HAL_enableInterrupts||,isa 0

	.dwfde $C$DW$CIE, ||HAL_enableInterrupts||
$C$DW$565	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$565, DW_AT_name("handle")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: HAL_enableInterrupts          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||HAL_enableInterrupts||:
;* AL    assigned to $O$K7
;* AR4   assigned to handle
$C$DW$566	.dwtag  DW_TAG_variable
	.dwattr $C$DW$566, DW_AT_name("handle")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOVB      ACC,#170              ; [CPU_ALU] |4872| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |4872| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 107,column 5,is_stmt,isa 0
        MOVL      XAR5,#||halMtr||      ; [CPU_ARAU] |107| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |107| 
	.dwpsn	file "D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        OR        *+XAR6[0],#0x0001     ; [CPU_ALU] |4872| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 107,column 5,is_stmt,isa 0
        CMPL      ACC,XAR4              ; [CPU_ALU] |107| 
        B         ||$C$L46||,EQ         ; [CPU_ALU] |107| 
        ; branchcc occurs ; [] |107| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 114,column 10,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |114| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |114| 
        B         ||$C$L48||,NEQ        ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 119,column 9,is_stmt,isa 0
        MOVL      XAR4,#3343108         ; [CPU_ARAU] |119| 
        B         ||$C$L47||,UNC        ; [CPU_ALU] |119| 
        ; branch occurs ; [] |119| 
||$C$L46||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 112,column 9,is_stmt,isa 0
        MOVL      XAR4,#3146497         ; [CPU_ARAU] |112| 
||$C$L47||:    
        MOVL      ACC,XAR4              ; [CPU_ALU] |112| 
$C$DW$567	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$567, DW_AT_low_pc(0x00)
	.dwattr $C$DW$567, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$567, DW_AT_TI_call

        LCR       #||Interrupt_enable|| ; [CPU_ALU] |112| 
        ; call occurs [#||Interrupt_enable||] ; [] |112| 
||$C$L48||:    
	.dwpsn	file "D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 325,column 5,is_stmt,isa 0
        OR        IER,#0x0004           ; [CPU_ALU] |325| 
$C$DW$568	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$568, DW_AT_low_pc(0x00)
	.dwattr $C$DW$568, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$564, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$564, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$564, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$564

	.sect	".text:HAL_MTR_init"
	.clink
	.global	||HAL_MTR_init||

$C$DW$569	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$569, DW_AT_name("HAL_MTR_init")
	.dwattr $C$DW$569, DW_AT_low_pc(||HAL_MTR_init||)
	.dwattr $C$DW$569, DW_AT_high_pc(0x00)
	.dwattr $C$DW$569, DW_AT_linkage_name("HAL_MTR_init")
	.dwattr $C$DW$569, DW_AT_external
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$569, DW_AT_decl_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$569, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$569, DW_AT_decl_column(0x10)
	.dwattr $C$DW$569, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 206,column 1,is_stmt,address ||HAL_MTR_init||,isa 0

	.dwfde $C$DW$CIE, ||HAL_MTR_init||
$C$DW$570	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$570, DW_AT_name("pMemory")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_reg12]

$C$DW$571	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$571, DW_AT_name("numBytes")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: HAL_MTR_init                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||HAL_MTR_init||:
;* AL    assigned to $O$K11
;* AR5   assigned to pMemory
$C$DW$572	.dwtag  DW_TAG_variable
	.dwattr $C$DW$572, DW_AT_name("pMemory")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to numBytes
$C$DW$573	.dwtag  DW_TAG_variable
	.dwattr $C$DW$573, DW_AT_name("numBytes")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to obj
$C$DW$574	.dwtag  DW_TAG_variable
	.dwattr $C$DW$574, DW_AT_name("obj")
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$574, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |206| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 210,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |210| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 206,column 1,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |206| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 210,column 5,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |210| 
        B         ||$C$L49||,LOS        ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 212,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |212| 
        B         ||$C$L52||,UNC        ; [CPU_ALU] |212| 
        ; branch occurs ; [] |212| 
||$C$L49||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 225,column 5,is_stmt,isa 0
        MOVL      XAR6,#||halMtr||      ; [CPU_ARAU] |225| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |225| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |225| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 251,column 10,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |251| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |251| 
        B         ||$C$L52||,NEQ        ; [CPU_ALU] |251| 
        ; branchcc occurs ; [] |251| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 256,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |256| 
        MOVL      XAR6,#24848           ; [CPU_ARAU] |256| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 270,column 9,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |270| 
        MOVL      XAR7,#23712           ; [CPU_ARAU] |270| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 256,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |256| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 269,column 9,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |269| 
        MOVL      XAR6,#23808           ; [CPU_ARAU] |269| 
        MOVL      *+XAR5[AR0],XAR6      ; [CPU_ALU] |269| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 270,column 9,is_stmt,isa 0
        MOVL      *+XAR5[AR1],XAR7      ; [CPU_ALU] |270| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 261,column 9,is_stmt,isa 0
        MOVL      XAR6,#17152           ; [CPU_ARAU] |261| 
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |261| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 262,column 9,is_stmt,isa 0
        MOVL      XAR6,#17408           ; [CPU_ARAU] |262| 
        MOVL      *+XAR5[2],XAR6        ; [CPU_ALU] |262| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 263,column 9,is_stmt,isa 0
        MOVL      XAR6,#17664           ; [CPU_ARAU] |263| 
        MOVL      *+XAR5[4],XAR6        ; [CPU_ALU] |263| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 268,column 9,is_stmt,isa 0
        MOVL      XAR6,#23808           ; [CPU_ARAU] |268| 
        MOVL      *+XAR5[6],XAR6        ; [CPU_ALU] |268| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 275,column 9,is_stmt,isa 0
        MOVL      XAR6,#20800           ; [CPU_ARAU] |275| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 278,column 6,is_stmt,isa 0
        B         ||$C$L51||,UNC        ; [CPU_ALU] |278| 
        ; branch occurs ; [] |278| 
||$C$L50||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 230,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |230| 
        MOVL      XAR7,#24832           ; [CPU_ARAU] |230| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 235,column 9,is_stmt,isa 0
        MOVL      XAR6,#16384           ; [CPU_ARAU] |235| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 236,column 9,is_stmt,isa 0
        MOVL      XAR1,#16640           ; [CPU_ARAU] |236| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 230,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR7      ; [CPU_ALU] |230| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 237,column 9,is_stmt,isa 0
        MOVL      XAR0,#16896           ; [CPU_ARAU] |237| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 235,column 9,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |235| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 242,column 9,is_stmt,isa 0
        MOVL      XAR7,#23840           ; [CPU_ARAU] |242| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 236,column 9,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR1        ; [CPU_ALU] |236| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 243,column 9,is_stmt,isa 0
        MOVL      XAR6,#23744           ; [CPU_ARAU] |243| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 244,column 9,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |244| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 237,column 9,is_stmt,isa 0
        MOVL      *+XAR4[4],XAR0        ; [CPU_ALU] |237| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 243,column 9,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |243| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 242,column 9,is_stmt,isa 0
        MOVL      *+XAR4[6],XAR7        ; [CPU_ALU] |242| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 244,column 9,is_stmt,isa 0
        MOVL      XAR7,#23680           ; [CPU_ARAU] |244| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 243,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |243| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 249,column 9,is_stmt,isa 0
        MOVL      XAR6,#20736           ; [CPU_ARAU] |249| 
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 244,column 9,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR7      ; [CPU_ALU] |244| 
||$C$L51||:    
	.dwpsn	file "../sources/dual_axis_servo_drive_hal.c",line 249,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |249| 
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |249| 
||$C$L52||:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$569, DW_AT_TI_end_file("../sources/dual_axis_servo_drive_hal.c")
	.dwattr $C$DW$569, DW_AT_TI_end_line(0x117)
	.dwattr $C$DW$569, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$569

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Interrupt_enable||
	.global	||Device_initGPIO||
	.global	||Interrupt_initModule||
	.global	||Interrupt_initVectorTable||
	.global	||ADC_setMode||
	.global	||SysCtl_delay||
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
	.global	||CLA_setTriggerSource||
	.global	||CMPSS_configFilterHigh||
	.global	||CMPSS_configFilterLow||
	.global	||motor1ControlISR||
	.global	||motor2ControlISR||
	.global	||CPUTimer_setEmulationMode||
	.global	||GPIO_setControllerCore||
	.global	||GPIO_setPinConfig||
	.global	||GPIO_setPadConfig||
	.global	||GPIO_setDirectionMode||
	.global	||GPIO_setQualificationMode||
	.global	||XBAR_setEPWMMuxConfig||
	.global	||MemCfg_getInitStatus||
	.global	||halMtr||
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

$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$576	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$576, DW_AT_name("ADC_CLK_DIV_1_0")
	.dwattr $C$DW$576, DW_AT_const_value(0x00)
	.dwattr $C$DW$576, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x98)
	.dwattr $C$DW$576, DW_AT_decl_column(0x05)

$C$DW$577	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$577, DW_AT_name("ADC_CLK_DIV_2_0")
	.dwattr $C$DW$577, DW_AT_const_value(0x02)
	.dwattr $C$DW$577, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x99)
	.dwattr $C$DW$577, DW_AT_decl_column(0x05)

$C$DW$578	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$578, DW_AT_name("ADC_CLK_DIV_2_5")
	.dwattr $C$DW$578, DW_AT_const_value(0x03)
	.dwattr $C$DW$578, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$578, DW_AT_decl_column(0x05)

$C$DW$579	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$579, DW_AT_name("ADC_CLK_DIV_3_0")
	.dwattr $C$DW$579, DW_AT_const_value(0x04)
	.dwattr $C$DW$579, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$579, DW_AT_decl_column(0x05)

$C$DW$580	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$580, DW_AT_name("ADC_CLK_DIV_3_5")
	.dwattr $C$DW$580, DW_AT_const_value(0x05)
	.dwattr $C$DW$580, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$580, DW_AT_decl_column(0x05)

$C$DW$581	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$581, DW_AT_name("ADC_CLK_DIV_4_0")
	.dwattr $C$DW$581, DW_AT_const_value(0x06)
	.dwattr $C$DW$581, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$581, DW_AT_decl_column(0x05)

$C$DW$582	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$582, DW_AT_name("ADC_CLK_DIV_4_5")
	.dwattr $C$DW$582, DW_AT_const_value(0x07)
	.dwattr $C$DW$582, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$582, DW_AT_decl_column(0x05)

$C$DW$583	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$583, DW_AT_name("ADC_CLK_DIV_5_0")
	.dwattr $C$DW$583, DW_AT_const_value(0x08)
	.dwattr $C$DW$583, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$583, DW_AT_decl_column(0x05)

$C$DW$584	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$584, DW_AT_name("ADC_CLK_DIV_5_5")
	.dwattr $C$DW$584, DW_AT_const_value(0x09)
	.dwattr $C$DW$584, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$584, DW_AT_decl_column(0x05)

$C$DW$585	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$585, DW_AT_name("ADC_CLK_DIV_6_0")
	.dwattr $C$DW$585, DW_AT_const_value(0x0a)
	.dwattr $C$DW$585, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$585, DW_AT_decl_column(0x05)

$C$DW$586	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$586, DW_AT_name("ADC_CLK_DIV_6_5")
	.dwattr $C$DW$586, DW_AT_const_value(0x0b)
	.dwattr $C$DW$586, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$586, DW_AT_decl_column(0x05)

$C$DW$587	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$587, DW_AT_name("ADC_CLK_DIV_7_0")
	.dwattr $C$DW$587, DW_AT_const_value(0x0c)
	.dwattr $C$DW$587, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$587, DW_AT_decl_column(0x05)

$C$DW$588	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$588, DW_AT_name("ADC_CLK_DIV_7_5")
	.dwattr $C$DW$588, DW_AT_const_value(0x0d)
	.dwattr $C$DW$588, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$588, DW_AT_decl_column(0x05)

$C$DW$589	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$589, DW_AT_name("ADC_CLK_DIV_8_0")
	.dwattr $C$DW$589, DW_AT_const_value(0x0e)
	.dwattr $C$DW$589, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$589, DW_AT_decl_column(0x05)

$C$DW$590	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$590, DW_AT_name("ADC_CLK_DIV_8_5")
	.dwattr $C$DW$590, DW_AT_const_value(0x0f)
	.dwattr $C$DW$590, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$590, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("ADC_ClkPrescale")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$591	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$591, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$591, DW_AT_const_value(0x00)
	.dwattr $C$DW$591, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x145)
	.dwattr $C$DW$591, DW_AT_decl_column(0x05)

$C$DW$592	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$592, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$592, DW_AT_const_value(0x01)
	.dwattr $C$DW$592, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x146)
	.dwattr $C$DW$592, DW_AT_decl_column(0x05)

$C$DW$593	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$593, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$593, DW_AT_const_value(0x02)
	.dwattr $C$DW$593, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x147)
	.dwattr $C$DW$593, DW_AT_decl_column(0x05)

$C$DW$594	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$594, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$594, DW_AT_const_value(0x03)
	.dwattr $C$DW$594, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x148)
	.dwattr $C$DW$594, DW_AT_decl_column(0x05)

$C$DW$595	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$595, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$595, DW_AT_const_value(0x04)
	.dwattr $C$DW$595, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x149)
	.dwattr $C$DW$595, DW_AT_decl_column(0x05)

$C$DW$596	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$596, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$596, DW_AT_const_value(0x05)
	.dwattr $C$DW$596, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$596, DW_AT_decl_column(0x05)

$C$DW$597	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$597, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$597, DW_AT_const_value(0x06)
	.dwattr $C$DW$597, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$597, DW_AT_decl_column(0x05)

$C$DW$598	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$598, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$598, DW_AT_const_value(0x07)
	.dwattr $C$DW$598, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$598, DW_AT_decl_column(0x05)

$C$DW$599	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$599, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$599, DW_AT_const_value(0x08)
	.dwattr $C$DW$599, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$599, DW_AT_decl_column(0x05)

$C$DW$600	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$600, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$600, DW_AT_const_value(0x09)
	.dwattr $C$DW$600, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$600, DW_AT_decl_column(0x05)

$C$DW$601	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$601, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$601, DW_AT_const_value(0x0a)
	.dwattr $C$DW$601, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$601, DW_AT_decl_column(0x05)

$C$DW$602	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$602, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$602, DW_AT_const_value(0x0b)
	.dwattr $C$DW$602, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x150)
	.dwattr $C$DW$602, DW_AT_decl_column(0x05)

$C$DW$603	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$603, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$603, DW_AT_const_value(0x0c)
	.dwattr $C$DW$603, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x151)
	.dwattr $C$DW$603, DW_AT_decl_column(0x05)

$C$DW$604	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$604, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$604, DW_AT_const_value(0x0d)
	.dwattr $C$DW$604, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x152)
	.dwattr $C$DW$604, DW_AT_decl_column(0x05)

$C$DW$605	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$605, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$605, DW_AT_const_value(0x0e)
	.dwattr $C$DW$605, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x153)
	.dwattr $C$DW$605, DW_AT_decl_column(0x05)

$C$DW$606	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$606, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$606, DW_AT_const_value(0x0f)
	.dwattr $C$DW$606, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x154)
	.dwattr $C$DW$606, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$29, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$607	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$607, DW_AT_name("ADC_TRIGGER_SW_ONLY")
	.dwattr $C$DW$607, DW_AT_const_value(0x00)
	.dwattr $C$DW$607, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$607, DW_AT_decl_column(0x05)

$C$DW$608	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$608, DW_AT_name("ADC_TRIGGER_CPU1_TINT0")
	.dwattr $C$DW$608, DW_AT_const_value(0x01)
	.dwattr $C$DW$608, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$608, DW_AT_decl_column(0x05)

$C$DW$609	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$609, DW_AT_name("ADC_TRIGGER_CPU1_TINT1")
	.dwattr $C$DW$609, DW_AT_const_value(0x02)
	.dwattr $C$DW$609, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$609, DW_AT_decl_column(0x05)

$C$DW$610	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$610, DW_AT_name("ADC_TRIGGER_CPU1_TINT2")
	.dwattr $C$DW$610, DW_AT_const_value(0x03)
	.dwattr $C$DW$610, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0xce)
	.dwattr $C$DW$610, DW_AT_decl_column(0x05)

$C$DW$611	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$611, DW_AT_name("ADC_TRIGGER_GPIO")
	.dwattr $C$DW$611, DW_AT_const_value(0x04)
	.dwattr $C$DW$611, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$611, DW_AT_decl_column(0x05)

$C$DW$612	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$612, DW_AT_name("ADC_TRIGGER_EPWM1_SOCA")
	.dwattr $C$DW$612, DW_AT_const_value(0x05)
	.dwattr $C$DW$612, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$612, DW_AT_decl_column(0x05)

$C$DW$613	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$613, DW_AT_name("ADC_TRIGGER_EPWM1_SOCB")
	.dwattr $C$DW$613, DW_AT_const_value(0x06)
	.dwattr $C$DW$613, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$613, DW_AT_decl_column(0x05)

$C$DW$614	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$614, DW_AT_name("ADC_TRIGGER_EPWM2_SOCA")
	.dwattr $C$DW$614, DW_AT_const_value(0x07)
	.dwattr $C$DW$614, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$614, DW_AT_decl_column(0x05)

$C$DW$615	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$615, DW_AT_name("ADC_TRIGGER_EPWM2_SOCB")
	.dwattr $C$DW$615, DW_AT_const_value(0x08)
	.dwattr $C$DW$615, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$615, DW_AT_decl_column(0x05)

$C$DW$616	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$616, DW_AT_name("ADC_TRIGGER_EPWM3_SOCA")
	.dwattr $C$DW$616, DW_AT_const_value(0x09)
	.dwattr $C$DW$616, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$616, DW_AT_decl_column(0x05)

$C$DW$617	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$617, DW_AT_name("ADC_TRIGGER_EPWM3_SOCB")
	.dwattr $C$DW$617, DW_AT_const_value(0x0a)
	.dwattr $C$DW$617, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$617, DW_AT_decl_column(0x05)

$C$DW$618	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$618, DW_AT_name("ADC_TRIGGER_EPWM4_SOCA")
	.dwattr $C$DW$618, DW_AT_const_value(0x0b)
	.dwattr $C$DW$618, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$618, DW_AT_decl_column(0x05)

$C$DW$619	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$619, DW_AT_name("ADC_TRIGGER_EPWM4_SOCB")
	.dwattr $C$DW$619, DW_AT_const_value(0x0c)
	.dwattr $C$DW$619, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$619, DW_AT_decl_column(0x05)

$C$DW$620	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$620, DW_AT_name("ADC_TRIGGER_EPWM5_SOCA")
	.dwattr $C$DW$620, DW_AT_const_value(0x0d)
	.dwattr $C$DW$620, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$620, DW_AT_decl_column(0x05)

$C$DW$621	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$621, DW_AT_name("ADC_TRIGGER_EPWM5_SOCB")
	.dwattr $C$DW$621, DW_AT_const_value(0x0e)
	.dwattr $C$DW$621, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$621, DW_AT_decl_column(0x05)

$C$DW$622	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$622, DW_AT_name("ADC_TRIGGER_EPWM6_SOCA")
	.dwattr $C$DW$622, DW_AT_const_value(0x0f)
	.dwattr $C$DW$622, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0xda)
	.dwattr $C$DW$622, DW_AT_decl_column(0x05)

$C$DW$623	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$623, DW_AT_name("ADC_TRIGGER_EPWM6_SOCB")
	.dwattr $C$DW$623, DW_AT_const_value(0x10)
	.dwattr $C$DW$623, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$623, DW_AT_decl_column(0x05)

$C$DW$624	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$624, DW_AT_name("ADC_TRIGGER_EPWM7_SOCA")
	.dwattr $C$DW$624, DW_AT_const_value(0x11)
	.dwattr $C$DW$624, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$624, DW_AT_decl_column(0x05)

$C$DW$625	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$625, DW_AT_name("ADC_TRIGGER_EPWM7_SOCB")
	.dwattr $C$DW$625, DW_AT_const_value(0x12)
	.dwattr $C$DW$625, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$625, DW_AT_decl_column(0x05)

$C$DW$626	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$626, DW_AT_name("ADC_TRIGGER_EPWM8_SOCA")
	.dwattr $C$DW$626, DW_AT_const_value(0x13)
	.dwattr $C$DW$626, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xde)
	.dwattr $C$DW$626, DW_AT_decl_column(0x05)

$C$DW$627	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$627, DW_AT_name("ADC_TRIGGER_EPWM8_SOCB")
	.dwattr $C$DW$627, DW_AT_const_value(0x14)
	.dwattr $C$DW$627, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$627, DW_AT_decl_column(0x05)

$C$DW$628	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$628, DW_AT_name("ADC_TRIGGER_EPWM9_SOCA")
	.dwattr $C$DW$628, DW_AT_const_value(0x15)
	.dwattr $C$DW$628, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$628, DW_AT_decl_column(0x05)

$C$DW$629	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$629, DW_AT_name("ADC_TRIGGER_EPWM9_SOCB")
	.dwattr $C$DW$629, DW_AT_const_value(0x16)
	.dwattr $C$DW$629, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$629, DW_AT_decl_column(0x05)

$C$DW$630	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$630, DW_AT_name("ADC_TRIGGER_EPWM10_SOCA")
	.dwattr $C$DW$630, DW_AT_const_value(0x17)
	.dwattr $C$DW$630, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$630, DW_AT_decl_column(0x05)

$C$DW$631	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$631, DW_AT_name("ADC_TRIGGER_EPWM10_SOCB")
	.dwattr $C$DW$631, DW_AT_const_value(0x18)
	.dwattr $C$DW$631, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$631, DW_AT_decl_column(0x05)

$C$DW$632	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$632, DW_AT_name("ADC_TRIGGER_EPWM11_SOCA")
	.dwattr $C$DW$632, DW_AT_const_value(0x19)
	.dwattr $C$DW$632, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$632, DW_AT_decl_column(0x05)

$C$DW$633	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$633, DW_AT_name("ADC_TRIGGER_EPWM11_SOCB")
	.dwattr $C$DW$633, DW_AT_const_value(0x1a)
	.dwattr $C$DW$633, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$633, DW_AT_decl_column(0x05)

$C$DW$634	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$634, DW_AT_name("ADC_TRIGGER_EPWM12_SOCA")
	.dwattr $C$DW$634, DW_AT_const_value(0x1b)
	.dwattr $C$DW$634, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$634, DW_AT_decl_column(0x05)

$C$DW$635	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$635, DW_AT_name("ADC_TRIGGER_EPWM12_SOCB")
	.dwattr $C$DW$635, DW_AT_const_value(0x1c)
	.dwattr $C$DW$635, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$635, DW_AT_decl_column(0x05)

$C$DW$636	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$636, DW_AT_name("ADC_TRIGGER_CPU2_TINT0")
	.dwattr $C$DW$636, DW_AT_const_value(0x1d)
	.dwattr $C$DW$636, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$636, DW_AT_decl_column(0x05)

$C$DW$637	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$637, DW_AT_name("ADC_TRIGGER_CPU2_TINT1")
	.dwattr $C$DW$637, DW_AT_const_value(0x1e)
	.dwattr $C$DW$637, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$637, DW_AT_decl_column(0x05)

$C$DW$638	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$638, DW_AT_name("ADC_TRIGGER_CPU2_TINT2")
	.dwattr $C$DW$638, DW_AT_const_value(0x1f)
	.dwattr $C$DW$638, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0xea)
	.dwattr $C$DW$638, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("ADC_Trigger")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$639	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$639, DW_AT_name("ADC_CH_ADCIN0")
	.dwattr $C$DW$639, DW_AT_const_value(0x00)
	.dwattr $C$DW$639, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$639, DW_AT_decl_column(0x05)

$C$DW$640	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$640, DW_AT_name("ADC_CH_ADCIN1")
	.dwattr $C$DW$640, DW_AT_const_value(0x01)
	.dwattr $C$DW$640, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$640, DW_AT_decl_column(0x05)

$C$DW$641	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$641, DW_AT_name("ADC_CH_ADCIN2")
	.dwattr $C$DW$641, DW_AT_const_value(0x02)
	.dwattr $C$DW$641, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$641, DW_AT_decl_column(0x05)

$C$DW$642	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$642, DW_AT_name("ADC_CH_ADCIN3")
	.dwattr $C$DW$642, DW_AT_const_value(0x03)
	.dwattr $C$DW$642, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$642, DW_AT_decl_column(0x05)

$C$DW$643	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$643, DW_AT_name("ADC_CH_ADCIN4")
	.dwattr $C$DW$643, DW_AT_const_value(0x04)
	.dwattr $C$DW$643, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$643, DW_AT_decl_column(0x05)

$C$DW$644	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$644, DW_AT_name("ADC_CH_ADCIN5")
	.dwattr $C$DW$644, DW_AT_const_value(0x05)
	.dwattr $C$DW$644, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$644, DW_AT_decl_column(0x05)

$C$DW$645	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$645, DW_AT_name("ADC_CH_ADCIN6")
	.dwattr $C$DW$645, DW_AT_const_value(0x06)
	.dwattr $C$DW$645, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$645, DW_AT_decl_column(0x05)

$C$DW$646	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$646, DW_AT_name("ADC_CH_ADCIN7")
	.dwattr $C$DW$646, DW_AT_const_value(0x07)
	.dwattr $C$DW$646, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$646, DW_AT_decl_column(0x05)

$C$DW$647	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$647, DW_AT_name("ADC_CH_ADCIN8")
	.dwattr $C$DW$647, DW_AT_const_value(0x08)
	.dwattr $C$DW$647, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$647, DW_AT_decl_column(0x05)

$C$DW$648	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$648, DW_AT_name("ADC_CH_ADCIN9")
	.dwattr $C$DW$648, DW_AT_const_value(0x09)
	.dwattr $C$DW$648, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0xff)
	.dwattr $C$DW$648, DW_AT_decl_column(0x05)

$C$DW$649	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$649, DW_AT_name("ADC_CH_ADCIN10")
	.dwattr $C$DW$649, DW_AT_const_value(0x0a)
	.dwattr $C$DW$649, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x100)
	.dwattr $C$DW$649, DW_AT_decl_column(0x05)

$C$DW$650	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$650, DW_AT_name("ADC_CH_ADCIN11")
	.dwattr $C$DW$650, DW_AT_const_value(0x0b)
	.dwattr $C$DW$650, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x101)
	.dwattr $C$DW$650, DW_AT_decl_column(0x05)

$C$DW$651	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$651, DW_AT_name("ADC_CH_ADCIN12")
	.dwattr $C$DW$651, DW_AT_const_value(0x0c)
	.dwattr $C$DW$651, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x102)
	.dwattr $C$DW$651, DW_AT_decl_column(0x05)

$C$DW$652	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$652, DW_AT_name("ADC_CH_ADCIN13")
	.dwattr $C$DW$652, DW_AT_const_value(0x0d)
	.dwattr $C$DW$652, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x103)
	.dwattr $C$DW$652, DW_AT_decl_column(0x05)

$C$DW$653	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$653, DW_AT_name("ADC_CH_ADCIN14")
	.dwattr $C$DW$653, DW_AT_const_value(0x0e)
	.dwattr $C$DW$653, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x104)
	.dwattr $C$DW$653, DW_AT_decl_column(0x05)

$C$DW$654	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$654, DW_AT_name("ADC_CH_ADCIN15")
	.dwattr $C$DW$654, DW_AT_const_value(0x0f)
	.dwattr $C$DW$654, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x105)
	.dwattr $C$DW$654, DW_AT_decl_column(0x05)

$C$DW$655	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$655, DW_AT_name("ADC_CH_ADCIN0_ADCIN1")
	.dwattr $C$DW$655, DW_AT_const_value(0x00)
	.dwattr $C$DW$655, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x106)
	.dwattr $C$DW$655, DW_AT_decl_column(0x05)

$C$DW$656	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$656, DW_AT_name("ADC_CH_ADCIN2_ADCIN3")
	.dwattr $C$DW$656, DW_AT_const_value(0x02)
	.dwattr $C$DW$656, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x107)
	.dwattr $C$DW$656, DW_AT_decl_column(0x05)

$C$DW$657	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$657, DW_AT_name("ADC_CH_ADCIN4_ADCIN5")
	.dwattr $C$DW$657, DW_AT_const_value(0x04)
	.dwattr $C$DW$657, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x108)
	.dwattr $C$DW$657, DW_AT_decl_column(0x05)

$C$DW$658	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$658, DW_AT_name("ADC_CH_ADCIN6_ADCIN7")
	.dwattr $C$DW$658, DW_AT_const_value(0x06)
	.dwattr $C$DW$658, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x109)
	.dwattr $C$DW$658, DW_AT_decl_column(0x05)

$C$DW$659	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$659, DW_AT_name("ADC_CH_ADCIN8_ADCIN9")
	.dwattr $C$DW$659, DW_AT_const_value(0x08)
	.dwattr $C$DW$659, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$659, DW_AT_decl_column(0x05)

$C$DW$660	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$660, DW_AT_name("ADC_CH_ADCIN10_ADCIN11")
	.dwattr $C$DW$660, DW_AT_const_value(0x0a)
	.dwattr $C$DW$660, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$660, DW_AT_decl_column(0x05)

$C$DW$661	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$661, DW_AT_name("ADC_CH_ADCIN12_ADCIN13")
	.dwattr $C$DW$661, DW_AT_const_value(0x0c)
	.dwattr $C$DW$661, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$661, DW_AT_decl_column(0x05)

$C$DW$662	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$662, DW_AT_name("ADC_CH_ADCIN14_ADCIN15")
	.dwattr $C$DW$662, DW_AT_const_value(0x0e)
	.dwattr $C$DW$662, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$662, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("ADC_Channel")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$663	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$663, DW_AT_name("ADC_PULSE_END_OF_ACQ_WIN")
	.dwattr $C$DW$663, DW_AT_const_value(0x00)
	.dwattr $C$DW$663, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x119)
	.dwattr $C$DW$663, DW_AT_decl_column(0x05)

$C$DW$664	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$664, DW_AT_name("ADC_PULSE_END_OF_CONV")
	.dwattr $C$DW$664, DW_AT_const_value(0x04)
	.dwattr $C$DW$664, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$664, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("ADC_PulseMode")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$665	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$665, DW_AT_name("ADC_PRI_ALL_ROUND_ROBIN")
	.dwattr $C$DW$665, DW_AT_const_value(0x00)
	.dwattr $C$DW$665, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$665, DW_AT_decl_column(0x05)

$C$DW$666	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$666, DW_AT_name("ADC_PRI_SOC0_HIPRI")
	.dwattr $C$DW$666, DW_AT_const_value(0x01)
	.dwattr $C$DW$666, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$666, DW_AT_decl_column(0x05)

$C$DW$667	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$667, DW_AT_name("ADC_PRI_THRU_SOC1_HIPRI")
	.dwattr $C$DW$667, DW_AT_const_value(0x02)
	.dwattr $C$DW$667, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$667, DW_AT_decl_column(0x05)

$C$DW$668	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$668, DW_AT_name("ADC_PRI_THRU_SOC2_HIPRI")
	.dwattr $C$DW$668, DW_AT_const_value(0x03)
	.dwattr $C$DW$668, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$668, DW_AT_decl_column(0x05)

$C$DW$669	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$669, DW_AT_name("ADC_PRI_THRU_SOC3_HIPRI")
	.dwattr $C$DW$669, DW_AT_const_value(0x04)
	.dwattr $C$DW$669, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x170)
	.dwattr $C$DW$669, DW_AT_decl_column(0x05)

$C$DW$670	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$670, DW_AT_name("ADC_PRI_THRU_SOC4_HIPRI")
	.dwattr $C$DW$670, DW_AT_const_value(0x05)
	.dwattr $C$DW$670, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x171)
	.dwattr $C$DW$670, DW_AT_decl_column(0x05)

$C$DW$671	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$671, DW_AT_name("ADC_PRI_THRU_SOC5_HIPRI")
	.dwattr $C$DW$671, DW_AT_const_value(0x06)
	.dwattr $C$DW$671, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x172)
	.dwattr $C$DW$671, DW_AT_decl_column(0x05)

$C$DW$672	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$672, DW_AT_name("ADC_PRI_THRU_SOC6_HIPRI")
	.dwattr $C$DW$672, DW_AT_const_value(0x07)
	.dwattr $C$DW$672, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x173)
	.dwattr $C$DW$672, DW_AT_decl_column(0x05)

$C$DW$673	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$673, DW_AT_name("ADC_PRI_THRU_SOC7_HIPRI")
	.dwattr $C$DW$673, DW_AT_const_value(0x08)
	.dwattr $C$DW$673, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x174)
	.dwattr $C$DW$673, DW_AT_decl_column(0x05)

$C$DW$674	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$674, DW_AT_name("ADC_PRI_THRU_SOC8_HIPRI")
	.dwattr $C$DW$674, DW_AT_const_value(0x09)
	.dwattr $C$DW$674, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x175)
	.dwattr $C$DW$674, DW_AT_decl_column(0x05)

$C$DW$675	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$675, DW_AT_name("ADC_PRI_THRU_SOC9_HIPRI")
	.dwattr $C$DW$675, DW_AT_const_value(0x0a)
	.dwattr $C$DW$675, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x176)
	.dwattr $C$DW$675, DW_AT_decl_column(0x05)

$C$DW$676	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$676, DW_AT_name("ADC_PRI_THRU_SOC10_HIPRI")
	.dwattr $C$DW$676, DW_AT_const_value(0x0b)
	.dwattr $C$DW$676, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x177)
	.dwattr $C$DW$676, DW_AT_decl_column(0x05)

$C$DW$677	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$677, DW_AT_name("ADC_PRI_THRU_SOC11_HIPRI")
	.dwattr $C$DW$677, DW_AT_const_value(0x0c)
	.dwattr $C$DW$677, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x178)
	.dwattr $C$DW$677, DW_AT_decl_column(0x05)

$C$DW$678	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$678, DW_AT_name("ADC_PRI_THRU_SOC12_HIPRI")
	.dwattr $C$DW$678, DW_AT_const_value(0x0d)
	.dwattr $C$DW$678, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x179)
	.dwattr $C$DW$678, DW_AT_decl_column(0x05)

$C$DW$679	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$679, DW_AT_name("ADC_PRI_THRU_SOC13_HIPRI")
	.dwattr $C$DW$679, DW_AT_const_value(0x0e)
	.dwattr $C$DW$679, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$679, DW_AT_decl_column(0x05)

$C$DW$680	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$680, DW_AT_name("ADC_PRI_THRU_SOC14_HIPRI")
	.dwattr $C$DW$680, DW_AT_const_value(0x0f)
	.dwattr $C$DW$680, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$680, DW_AT_decl_column(0x05)

$C$DW$681	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$681, DW_AT_name("ADC_PRI_ALL_HIPRI")
	.dwattr $C$DW$681, DW_AT_const_value(0x10)
	.dwattr $C$DW$681, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$681, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("ADC_PriorityMode")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$682	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$682, DW_AT_name("ADC_PPB_NUMBER1")
	.dwattr $C$DW$682, DW_AT_const_value(0x00)
	.dwattr $C$DW$682, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x134)
	.dwattr $C$DW$682, DW_AT_decl_column(0x05)

$C$DW$683	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$683, DW_AT_name("ADC_PPB_NUMBER2")
	.dwattr $C$DW$683, DW_AT_const_value(0x01)
	.dwattr $C$DW$683, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x135)
	.dwattr $C$DW$683, DW_AT_decl_column(0x05)

$C$DW$684	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$684, DW_AT_name("ADC_PPB_NUMBER3")
	.dwattr $C$DW$684, DW_AT_const_value(0x02)
	.dwattr $C$DW$684, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x136)
	.dwattr $C$DW$684, DW_AT_decl_column(0x05)

$C$DW$685	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$685, DW_AT_name("ADC_PPB_NUMBER4")
	.dwattr $C$DW$685, DW_AT_const_value(0x03)
	.dwattr $C$DW$685, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x137)
	.dwattr $C$DW$685, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("ADC_PPBNumber")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$686	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$686, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$686, DW_AT_const_value(0x00)
	.dwattr $C$DW$686, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x126)
	.dwattr $C$DW$686, DW_AT_decl_column(0x05)

$C$DW$687	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$687, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$687, DW_AT_const_value(0x01)
	.dwattr $C$DW$687, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x127)
	.dwattr $C$DW$687, DW_AT_decl_column(0x05)

$C$DW$688	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$688, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$688, DW_AT_const_value(0x02)
	.dwattr $C$DW$688, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x128)
	.dwattr $C$DW$688, DW_AT_decl_column(0x05)

$C$DW$689	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$689, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$689, DW_AT_const_value(0x03)
	.dwattr $C$DW$689, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x129)
	.dwattr $C$DW$689, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$690	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$690, DW_AT_name("ADC_RESOLUTION_12BIT")
	.dwattr $C$DW$690, DW_AT_const_value(0x00)
	.dwattr $C$DW$690, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$690, DW_AT_decl_column(0x05)

$C$DW$691	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$691, DW_AT_name("ADC_RESOLUTION_16BIT")
	.dwattr $C$DW$691, DW_AT_const_value(0x40)
	.dwattr $C$DW$691, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$691, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$43, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("ADC_Resolution")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$692	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$692, DW_AT_name("ADC_MODE_SINGLE_ENDED")
	.dwattr $C$DW$692, DW_AT_const_value(0x00)
	.dwattr $C$DW$692, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$692, DW_AT_decl_column(0x05)

$C$DW$693	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$693, DW_AT_name("ADC_MODE_DIFFERENTIAL")
	.dwattr $C$DW$693, DW_AT_const_value(0x80)
	.dwattr $C$DW$693, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$693, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$45, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("ADC_SignalMode")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$694	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$694, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$694, DW_AT_const_value(0x00)
	.dwattr $C$DW$694, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x183)
	.dwattr $C$DW$694, DW_AT_decl_column(0x05)

$C$DW$695	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$695, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$695, DW_AT_const_value(0x200)
	.dwattr $C$DW$695, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x184)
	.dwattr $C$DW$695, DW_AT_decl_column(0x05)

$C$DW$696	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$696, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$696, DW_AT_const_value(0x300)
	.dwattr $C$DW$696, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x185)
	.dwattr $C$DW$696, DW_AT_decl_column(0x05)

$C$DW$697	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$697, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$697, DW_AT_const_value(0x400)
	.dwattr $C$DW$697, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x186)
	.dwattr $C$DW$697, DW_AT_decl_column(0x05)

$C$DW$698	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$698, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$698, DW_AT_const_value(0x500)
	.dwattr $C$DW$698, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x187)
	.dwattr $C$DW$698, DW_AT_decl_column(0x05)

$C$DW$699	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$699, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$699, DW_AT_const_value(0x1000)
	.dwattr $C$DW$699, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x188)
	.dwattr $C$DW$699, DW_AT_decl_column(0x05)

$C$DW$700	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$700, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$700, DW_AT_const_value(0x1200)
	.dwattr $C$DW$700, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x189)
	.dwattr $C$DW$700, DW_AT_decl_column(0x05)

$C$DW$701	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$701, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$701, DW_AT_const_value(0x1300)
	.dwattr $C$DW$701, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$701, DW_AT_decl_column(0x05)

$C$DW$702	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$702, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$702, DW_AT_const_value(0x01)
	.dwattr $C$DW$702, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$702, DW_AT_decl_column(0x05)

$C$DW$703	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$703, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$703, DW_AT_const_value(0x101)
	.dwattr $C$DW$703, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$703, DW_AT_decl_column(0x05)

$C$DW$704	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$704, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$704, DW_AT_const_value(0x02)
	.dwattr $C$DW$704, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$704, DW_AT_decl_column(0x05)

$C$DW$705	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$705, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$705, DW_AT_const_value(0x102)
	.dwattr $C$DW$705, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$705, DW_AT_decl_column(0x05)

$C$DW$706	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$706, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$706, DW_AT_const_value(0x202)
	.dwattr $C$DW$706, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$706, DW_AT_decl_column(0x05)

$C$DW$707	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$707, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$707, DW_AT_const_value(0x302)
	.dwattr $C$DW$707, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x190)
	.dwattr $C$DW$707, DW_AT_decl_column(0x05)

$C$DW$708	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$708, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$708, DW_AT_const_value(0x402)
	.dwattr $C$DW$708, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x191)
	.dwattr $C$DW$708, DW_AT_decl_column(0x05)

$C$DW$709	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$709, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$709, DW_AT_const_value(0x502)
	.dwattr $C$DW$709, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x192)
	.dwattr $C$DW$709, DW_AT_decl_column(0x05)

$C$DW$710	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$710, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$710, DW_AT_const_value(0x602)
	.dwattr $C$DW$710, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x193)
	.dwattr $C$DW$710, DW_AT_decl_column(0x05)

$C$DW$711	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$711, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$711, DW_AT_const_value(0x702)
	.dwattr $C$DW$711, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x194)
	.dwattr $C$DW$711, DW_AT_decl_column(0x05)

$C$DW$712	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$712, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$712, DW_AT_const_value(0x802)
	.dwattr $C$DW$712, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x195)
	.dwattr $C$DW$712, DW_AT_decl_column(0x05)

$C$DW$713	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$713, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$713, DW_AT_const_value(0x902)
	.dwattr $C$DW$713, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x196)
	.dwattr $C$DW$713, DW_AT_decl_column(0x05)

$C$DW$714	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$714, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$714, DW_AT_const_value(0xa02)
	.dwattr $C$DW$714, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x197)
	.dwattr $C$DW$714, DW_AT_decl_column(0x05)

$C$DW$715	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$715, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$715, DW_AT_const_value(0xb02)
	.dwattr $C$DW$715, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x198)
	.dwattr $C$DW$715, DW_AT_decl_column(0x05)

$C$DW$716	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$716, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$716, DW_AT_const_value(0x03)
	.dwattr $C$DW$716, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x199)
	.dwattr $C$DW$716, DW_AT_decl_column(0x05)

$C$DW$717	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$717, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$717, DW_AT_const_value(0x103)
	.dwattr $C$DW$717, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$717, DW_AT_decl_column(0x05)

$C$DW$718	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$718, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$718, DW_AT_const_value(0x203)
	.dwattr $C$DW$718, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$718, DW_AT_decl_column(0x05)

$C$DW$719	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$719, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$719, DW_AT_const_value(0x303)
	.dwattr $C$DW$719, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$719, DW_AT_decl_column(0x05)

$C$DW$720	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$720, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$720, DW_AT_const_value(0x403)
	.dwattr $C$DW$720, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$720, DW_AT_decl_column(0x05)

$C$DW$721	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$721, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$721, DW_AT_const_value(0x503)
	.dwattr $C$DW$721, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$721, DW_AT_decl_column(0x05)

$C$DW$722	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$722, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$722, DW_AT_const_value(0x04)
	.dwattr $C$DW$722, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$722, DW_AT_decl_column(0x05)

$C$DW$723	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$723, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$723, DW_AT_const_value(0x104)
	.dwattr $C$DW$723, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$723, DW_AT_decl_column(0x05)

$C$DW$724	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$724, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$724, DW_AT_const_value(0x204)
	.dwattr $C$DW$724, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$724, DW_AT_decl_column(0x05)

$C$DW$725	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$725, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$725, DW_AT_const_value(0x06)
	.dwattr $C$DW$725, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$725, DW_AT_decl_column(0x05)

$C$DW$726	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$726, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$726, DW_AT_const_value(0x106)
	.dwattr $C$DW$726, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$726, DW_AT_decl_column(0x05)

$C$DW$727	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$727, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$727, DW_AT_const_value(0x07)
	.dwattr $C$DW$727, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$727, DW_AT_decl_column(0x05)

$C$DW$728	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$728, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$728, DW_AT_const_value(0x107)
	.dwattr $C$DW$728, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$728, DW_AT_decl_column(0x05)

$C$DW$729	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$729, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$729, DW_AT_const_value(0x207)
	.dwattr $C$DW$729, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$729, DW_AT_decl_column(0x05)

$C$DW$730	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$730, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$730, DW_AT_const_value(0x307)
	.dwattr $C$DW$730, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$730, DW_AT_decl_column(0x05)

$C$DW$731	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$731, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$731, DW_AT_const_value(0x08)
	.dwattr $C$DW$731, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$731, DW_AT_decl_column(0x05)

$C$DW$732	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$732, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$732, DW_AT_const_value(0x108)
	.dwattr $C$DW$732, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$732, DW_AT_decl_column(0x05)

$C$DW$733	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$733, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$733, DW_AT_const_value(0x208)
	.dwattr $C$DW$733, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$733, DW_AT_decl_column(0x05)

$C$DW$734	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$734, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$734, DW_AT_const_value(0x09)
	.dwattr $C$DW$734, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$734, DW_AT_decl_column(0x05)

$C$DW$735	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$735, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$735, DW_AT_const_value(0x109)
	.dwattr $C$DW$735, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$735, DW_AT_decl_column(0x05)

$C$DW$736	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$736, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$736, DW_AT_const_value(0x0a)
	.dwattr $C$DW$736, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$736, DW_AT_decl_column(0x05)

$C$DW$737	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$737, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$737, DW_AT_const_value(0x10a)
	.dwattr $C$DW$737, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$737, DW_AT_decl_column(0x05)

$C$DW$738	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$738, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$738, DW_AT_const_value(0x0b)
	.dwattr $C$DW$738, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$738, DW_AT_decl_column(0x05)

$C$DW$739	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$739, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$739, DW_AT_const_value(0x10b)
	.dwattr $C$DW$739, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$739, DW_AT_decl_column(0x05)

$C$DW$740	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$740, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$740, DW_AT_const_value(0x100b)
	.dwattr $C$DW$740, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$740, DW_AT_decl_column(0x05)

$C$DW$741	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$741, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$741, DW_AT_const_value(0x0c)
	.dwattr $C$DW$741, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$741, DW_AT_decl_column(0x05)

$C$DW$742	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$742, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$742, DW_AT_const_value(0x0d)
	.dwattr $C$DW$742, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$742, DW_AT_decl_column(0x05)

$C$DW$743	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$743, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$743, DW_AT_const_value(0x10d)
	.dwattr $C$DW$743, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$743, DW_AT_decl_column(0x05)

$C$DW$744	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$744, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$744, DW_AT_const_value(0x20d)
	.dwattr $C$DW$744, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$744, DW_AT_decl_column(0x05)

$C$DW$745	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$745, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$745, DW_AT_const_value(0x30d)
	.dwattr $C$DW$745, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$745, DW_AT_decl_column(0x05)

$C$DW$746	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$746, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$746, DW_AT_const_value(0x0e)
	.dwattr $C$DW$746, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$746, DW_AT_decl_column(0x05)

$C$DW$747	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$747, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$747, DW_AT_const_value(0x10e)
	.dwattr $C$DW$747, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$747, DW_AT_decl_column(0x05)

$C$DW$748	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$748, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$748, DW_AT_const_value(0x20e)
	.dwattr $C$DW$748, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$748, DW_AT_decl_column(0x05)

$C$DW$749	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$749, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$749, DW_AT_const_value(0x30e)
	.dwattr $C$DW$749, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$749, DW_AT_decl_column(0x05)

$C$DW$750	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$750, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$750, DW_AT_const_value(0x40e)
	.dwattr $C$DW$750, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$750, DW_AT_decl_column(0x05)

$C$DW$751	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$751, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$751, DW_AT_const_value(0x50e)
	.dwattr $C$DW$751, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$751, DW_AT_decl_column(0x05)

$C$DW$752	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$752, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$752, DW_AT_const_value(0x60e)
	.dwattr $C$DW$752, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$752, DW_AT_decl_column(0x05)

$C$DW$753	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$753, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$753, DW_AT_const_value(0x70e)
	.dwattr $C$DW$753, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$753, DW_AT_decl_column(0x05)

$C$DW$754	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$754, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$754, DW_AT_const_value(0x1010)
	.dwattr $C$DW$754, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$754, DW_AT_decl_column(0x05)

$C$DW$755	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$755, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$755, DW_AT_const_value(0x1110)
	.dwattr $C$DW$755, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$755, DW_AT_decl_column(0x05)

$C$DW$756	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$756, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$756, DW_AT_const_value(0x1210)
	.dwattr $C$DW$756, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$756, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$47, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$757	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$757, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_1")
	.dwattr $C$DW$757, DW_AT_const_value(0x00)
	.dwattr $C$DW$757, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x298)
	.dwattr $C$DW$757, DW_AT_decl_column(0x05)

$C$DW$758	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$758, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_2")
	.dwattr $C$DW$758, DW_AT_const_value(0x01)
	.dwattr $C$DW$758, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x299)
	.dwattr $C$DW$758, DW_AT_decl_column(0x05)

$C$DW$759	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$759, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_4")
	.dwattr $C$DW$759, DW_AT_const_value(0x02)
	.dwattr $C$DW$759, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$759, DW_AT_decl_column(0x05)

$C$DW$760	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$760, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_6")
	.dwattr $C$DW$760, DW_AT_const_value(0x03)
	.dwattr $C$DW$760, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$760, DW_AT_decl_column(0x05)

$C$DW$761	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$761, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_8")
	.dwattr $C$DW$761, DW_AT_const_value(0x04)
	.dwattr $C$DW$761, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$761, DW_AT_decl_column(0x05)

$C$DW$762	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$762, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_10")
	.dwattr $C$DW$762, DW_AT_const_value(0x05)
	.dwattr $C$DW$762, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$762, DW_AT_decl_column(0x05)

$C$DW$763	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$763, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_12")
	.dwattr $C$DW$763, DW_AT_const_value(0x06)
	.dwattr $C$DW$763, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$763, DW_AT_decl_column(0x05)

$C$DW$764	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$764, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_14")
	.dwattr $C$DW$764, DW_AT_const_value(0x07)
	.dwattr $C$DW$764, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$764, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$49, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x297)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("SysCtl_LSPCLKPrescaler")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$765	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$765, DW_AT_name("SYSCTL_SYNC_IN_EPWM4")
	.dwattr $C$DW$765, DW_AT_const_value(0x00)
	.dwattr $C$DW$765, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x2de)
	.dwattr $C$DW$765, DW_AT_decl_column(0x05)

$C$DW$766	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$766, DW_AT_name("SYSCTL_SYNC_IN_EPWM7")
	.dwattr $C$DW$766, DW_AT_const_value(0x03)
	.dwattr $C$DW$766, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x2df)
	.dwattr $C$DW$766, DW_AT_decl_column(0x05)

$C$DW$767	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$767, DW_AT_name("SYSCTL_SYNC_IN_EPWM10")
	.dwattr $C$DW$767, DW_AT_const_value(0x06)
	.dwattr $C$DW$767, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x2e0)
	.dwattr $C$DW$767, DW_AT_decl_column(0x05)

$C$DW$768	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$768, DW_AT_name("SYSCTL_SYNC_IN_ECAP1")
	.dwattr $C$DW$768, DW_AT_const_value(0x09)
	.dwattr $C$DW$768, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x2e1)
	.dwattr $C$DW$768, DW_AT_decl_column(0x05)

$C$DW$769	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$769, DW_AT_name("SYSCTL_SYNC_IN_ECAP4")
	.dwattr $C$DW$769, DW_AT_const_value(0x0c)
	.dwattr $C$DW$769, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$769, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$51, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x2dd)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("SysCtl_SyncInput")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$770	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$770, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT")
	.dwattr $C$DW$770, DW_AT_const_value(0x00)
	.dwattr $C$DW$770, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$770, DW_AT_decl_column(0x05)

$C$DW$771	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$771, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM4SYNCOUT")
	.dwattr $C$DW$771, DW_AT_const_value(0x01)
	.dwattr $C$DW$771, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$771, DW_AT_decl_column(0x05)

$C$DW$772	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$772, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM7SYNCOUT")
	.dwattr $C$DW$772, DW_AT_const_value(0x02)
	.dwattr $C$DW$772, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$772, DW_AT_decl_column(0x05)

$C$DW$773	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$773, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM10SYNCOUT")
	.dwattr $C$DW$773, DW_AT_const_value(0x03)
	.dwattr $C$DW$773, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$773, DW_AT_decl_column(0x05)

$C$DW$774	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$774, DW_AT_name("SYSCTL_SYNC_IN_SRC_ECAP1SYNCOUT")
	.dwattr $C$DW$774, DW_AT_const_value(0x04)
	.dwattr $C$DW$774, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$774, DW_AT_decl_column(0x05)

$C$DW$775	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$775, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN1")
	.dwattr $C$DW$775, DW_AT_const_value(0x05)
	.dwattr $C$DW$775, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x2fa)
	.dwattr $C$DW$775, DW_AT_decl_column(0x05)

$C$DW$776	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$776, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN2")
	.dwattr $C$DW$776, DW_AT_const_value(0x06)
	.dwattr $C$DW$776, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x2fc)
	.dwattr $C$DW$776, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$53, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x2ee)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("SysCtl_SyncInputSource")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x2fd)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$777	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$777, DW_AT_name("CLA_MVECT_1")
	.dwattr $C$DW$777, DW_AT_const_value(0x00)
	.dwattr $C$DW$777, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x81)
	.dwattr $C$DW$777, DW_AT_decl_column(0x05)

$C$DW$778	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$778, DW_AT_name("CLA_MVECT_2")
	.dwattr $C$DW$778, DW_AT_const_value(0x01)
	.dwattr $C$DW$778, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x82)
	.dwattr $C$DW$778, DW_AT_decl_column(0x05)

$C$DW$779	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$779, DW_AT_name("CLA_MVECT_3")
	.dwattr $C$DW$779, DW_AT_const_value(0x02)
	.dwattr $C$DW$779, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x83)
	.dwattr $C$DW$779, DW_AT_decl_column(0x05)

$C$DW$780	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$780, DW_AT_name("CLA_MVECT_4")
	.dwattr $C$DW$780, DW_AT_const_value(0x03)
	.dwattr $C$DW$780, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x84)
	.dwattr $C$DW$780, DW_AT_decl_column(0x05)

$C$DW$781	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$781, DW_AT_name("CLA_MVECT_5")
	.dwattr $C$DW$781, DW_AT_const_value(0x04)
	.dwattr $C$DW$781, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x85)
	.dwattr $C$DW$781, DW_AT_decl_column(0x05)

$C$DW$782	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$782, DW_AT_name("CLA_MVECT_6")
	.dwattr $C$DW$782, DW_AT_const_value(0x05)
	.dwattr $C$DW$782, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x86)
	.dwattr $C$DW$782, DW_AT_decl_column(0x05)

$C$DW$783	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$783, DW_AT_name("CLA_MVECT_7")
	.dwattr $C$DW$783, DW_AT_const_value(0x06)
	.dwattr $C$DW$783, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x87)
	.dwattr $C$DW$783, DW_AT_decl_column(0x05)

$C$DW$784	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$784, DW_AT_name("CLA_MVECT_8")
	.dwattr $C$DW$784, DW_AT_const_value(0x07)
	.dwattr $C$DW$784, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x88)
	.dwattr $C$DW$784, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$55, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("CLA_MVECTNumber")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$785	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$785, DW_AT_name("CLA_TASK_1")
	.dwattr $C$DW$785, DW_AT_const_value(0x00)
	.dwattr $C$DW$785, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$785, DW_AT_decl_column(0x05)

$C$DW$786	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$786, DW_AT_name("CLA_TASK_2")
	.dwattr $C$DW$786, DW_AT_const_value(0x01)
	.dwattr $C$DW$786, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$786, DW_AT_decl_column(0x05)

$C$DW$787	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$787, DW_AT_name("CLA_TASK_3")
	.dwattr $C$DW$787, DW_AT_const_value(0x02)
	.dwattr $C$DW$787, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x70)
	.dwattr $C$DW$787, DW_AT_decl_column(0x05)

$C$DW$788	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$788, DW_AT_name("CLA_TASK_4")
	.dwattr $C$DW$788, DW_AT_const_value(0x03)
	.dwattr $C$DW$788, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x71)
	.dwattr $C$DW$788, DW_AT_decl_column(0x05)

$C$DW$789	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$789, DW_AT_name("CLA_TASK_5")
	.dwattr $C$DW$789, DW_AT_const_value(0x04)
	.dwattr $C$DW$789, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x72)
	.dwattr $C$DW$789, DW_AT_decl_column(0x05)

$C$DW$790	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$790, DW_AT_name("CLA_TASK_6")
	.dwattr $C$DW$790, DW_AT_const_value(0x05)
	.dwattr $C$DW$790, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x73)
	.dwattr $C$DW$790, DW_AT_decl_column(0x05)

$C$DW$791	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$791, DW_AT_name("CLA_TASK_7")
	.dwattr $C$DW$791, DW_AT_const_value(0x06)
	.dwattr $C$DW$791, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x74)
	.dwattr $C$DW$791, DW_AT_decl_column(0x05)

$C$DW$792	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$792, DW_AT_name("CLA_TASK_8")
	.dwattr $C$DW$792, DW_AT_const_value(0x07)
	.dwattr $C$DW$792, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x75)
	.dwattr $C$DW$792, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$57, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("CLA_TaskNumber")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$793	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$793, DW_AT_name("CLA_TRIGGER_SOFTWARE")
	.dwattr $C$DW$793, DW_AT_const_value(0x00)
	.dwattr $C$DW$793, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x93)
	.dwattr $C$DW$793, DW_AT_decl_column(0x05)

$C$DW$794	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$794, DW_AT_name("CLA_TRIGGER_ADCA1")
	.dwattr $C$DW$794, DW_AT_const_value(0x01)
	.dwattr $C$DW$794, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x95)
	.dwattr $C$DW$794, DW_AT_decl_column(0x05)

$C$DW$795	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$795, DW_AT_name("CLA_TRIGGER_ADCA2")
	.dwattr $C$DW$795, DW_AT_const_value(0x02)
	.dwattr $C$DW$795, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x96)
	.dwattr $C$DW$795, DW_AT_decl_column(0x05)

$C$DW$796	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$796, DW_AT_name("CLA_TRIGGER_ADCA3")
	.dwattr $C$DW$796, DW_AT_const_value(0x03)
	.dwattr $C$DW$796, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x97)
	.dwattr $C$DW$796, DW_AT_decl_column(0x05)

$C$DW$797	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$797, DW_AT_name("CLA_TRIGGER_ADCA4")
	.dwattr $C$DW$797, DW_AT_const_value(0x04)
	.dwattr $C$DW$797, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x98)
	.dwattr $C$DW$797, DW_AT_decl_column(0x05)

$C$DW$798	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$798, DW_AT_name("CLA_TRIGGER_ADCAEVT")
	.dwattr $C$DW$798, DW_AT_const_value(0x05)
	.dwattr $C$DW$798, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x99)
	.dwattr $C$DW$798, DW_AT_decl_column(0x05)

$C$DW$799	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$799, DW_AT_name("CLA_TRIGGER_ADCB1")
	.dwattr $C$DW$799, DW_AT_const_value(0x06)
	.dwattr $C$DW$799, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$799, DW_AT_decl_column(0x05)

$C$DW$800	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$800, DW_AT_name("CLA_TRIGGER_ADCB2")
	.dwattr $C$DW$800, DW_AT_const_value(0x07)
	.dwattr $C$DW$800, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$800, DW_AT_decl_column(0x05)

$C$DW$801	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$801, DW_AT_name("CLA_TRIGGER_ADCB3")
	.dwattr $C$DW$801, DW_AT_const_value(0x08)
	.dwattr $C$DW$801, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$801, DW_AT_decl_column(0x05)

$C$DW$802	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$802, DW_AT_name("CLA_TRIGGER_ADCB4")
	.dwattr $C$DW$802, DW_AT_const_value(0x09)
	.dwattr $C$DW$802, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$802, DW_AT_decl_column(0x05)

$C$DW$803	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$803, DW_AT_name("CLA_TRIGGER_ADCBEVT")
	.dwattr $C$DW$803, DW_AT_const_value(0x0a)
	.dwattr $C$DW$803, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$803, DW_AT_decl_column(0x05)

$C$DW$804	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$804, DW_AT_name("CLA_TRIGGER_ADCC1")
	.dwattr $C$DW$804, DW_AT_const_value(0x0b)
	.dwattr $C$DW$804, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$804, DW_AT_decl_column(0x05)

$C$DW$805	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$805, DW_AT_name("CLA_TRIGGER_ADCC2")
	.dwattr $C$DW$805, DW_AT_const_value(0x0c)
	.dwattr $C$DW$805, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$805, DW_AT_decl_column(0x05)

$C$DW$806	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$806, DW_AT_name("CLA_TRIGGER_ADCC3")
	.dwattr $C$DW$806, DW_AT_const_value(0x0d)
	.dwattr $C$DW$806, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$806, DW_AT_decl_column(0x05)

$C$DW$807	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$807, DW_AT_name("CLA_TRIGGER_ADCC4")
	.dwattr $C$DW$807, DW_AT_const_value(0x0e)
	.dwattr $C$DW$807, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$807, DW_AT_decl_column(0x05)

$C$DW$808	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$808, DW_AT_name("CLA_TRIGGER_ADCCEVT")
	.dwattr $C$DW$808, DW_AT_const_value(0x0f)
	.dwattr $C$DW$808, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$808, DW_AT_decl_column(0x05)

$C$DW$809	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$809, DW_AT_name("CLA_TRIGGER_ADCD1")
	.dwattr $C$DW$809, DW_AT_const_value(0x10)
	.dwattr $C$DW$809, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$809, DW_AT_decl_column(0x05)

$C$DW$810	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$810, DW_AT_name("CLA_TRIGGER_ADCD2")
	.dwattr $C$DW$810, DW_AT_const_value(0x11)
	.dwattr $C$DW$810, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$810, DW_AT_decl_column(0x05)

$C$DW$811	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$811, DW_AT_name("CLA_TRIGGER_ADCD3")
	.dwattr $C$DW$811, DW_AT_const_value(0x12)
	.dwattr $C$DW$811, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$811, DW_AT_decl_column(0x05)

$C$DW$812	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$812, DW_AT_name("CLA_TRIGGER_ADCD4")
	.dwattr $C$DW$812, DW_AT_const_value(0x13)
	.dwattr $C$DW$812, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$812, DW_AT_decl_column(0x05)

$C$DW$813	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$813, DW_AT_name("CLA_TRIGGER_ADCDEVT")
	.dwattr $C$DW$813, DW_AT_const_value(0x14)
	.dwattr $C$DW$813, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$813, DW_AT_decl_column(0x05)

$C$DW$814	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$814, DW_AT_name("CLA_TRIGGER_XINT1")
	.dwattr $C$DW$814, DW_AT_const_value(0x1d)
	.dwattr $C$DW$814, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$814, DW_AT_decl_column(0x05)

$C$DW$815	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$815, DW_AT_name("CLA_TRIGGER_XINT2")
	.dwattr $C$DW$815, DW_AT_const_value(0x1e)
	.dwattr $C$DW$815, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0xab)
	.dwattr $C$DW$815, DW_AT_decl_column(0x05)

$C$DW$816	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$816, DW_AT_name("CLA_TRIGGER_XINT3")
	.dwattr $C$DW$816, DW_AT_const_value(0x1f)
	.dwattr $C$DW$816, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0xac)
	.dwattr $C$DW$816, DW_AT_decl_column(0x05)

$C$DW$817	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$817, DW_AT_name("CLA_TRIGGER_XINT4")
	.dwattr $C$DW$817, DW_AT_const_value(0x20)
	.dwattr $C$DW$817, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0xad)
	.dwattr $C$DW$817, DW_AT_decl_column(0x05)

$C$DW$818	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$818, DW_AT_name("CLA_TRIGGER_XINT5")
	.dwattr $C$DW$818, DW_AT_const_value(0x21)
	.dwattr $C$DW$818, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0xae)
	.dwattr $C$DW$818, DW_AT_decl_column(0x05)

$C$DW$819	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$819, DW_AT_name("CLA_TRIGGER_EPWM1INT")
	.dwattr $C$DW$819, DW_AT_const_value(0x24)
	.dwattr $C$DW$819, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$819, DW_AT_decl_column(0x05)

$C$DW$820	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$820, DW_AT_name("CLA_TRIGGER_EPWM2INT")
	.dwattr $C$DW$820, DW_AT_const_value(0x25)
	.dwattr $C$DW$820, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$820, DW_AT_decl_column(0x05)

$C$DW$821	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$821, DW_AT_name("CLA_TRIGGER_EPWM3INT")
	.dwattr $C$DW$821, DW_AT_const_value(0x26)
	.dwattr $C$DW$821, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$821, DW_AT_decl_column(0x05)

$C$DW$822	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$822, DW_AT_name("CLA_TRIGGER_EPWM4INT")
	.dwattr $C$DW$822, DW_AT_const_value(0x27)
	.dwattr $C$DW$822, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$822, DW_AT_decl_column(0x05)

$C$DW$823	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$823, DW_AT_name("CLA_TRIGGER_EPWM5INT")
	.dwattr $C$DW$823, DW_AT_const_value(0x28)
	.dwattr $C$DW$823, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$823, DW_AT_decl_column(0x05)

$C$DW$824	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$824, DW_AT_name("CLA_TRIGGER_EPWM6INT")
	.dwattr $C$DW$824, DW_AT_const_value(0x29)
	.dwattr $C$DW$824, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$824, DW_AT_decl_column(0x05)

$C$DW$825	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$825, DW_AT_name("CLA_TRIGGER_EPWM7INT")
	.dwattr $C$DW$825, DW_AT_const_value(0x2a)
	.dwattr $C$DW$825, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$825, DW_AT_decl_column(0x05)

$C$DW$826	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$826, DW_AT_name("CLA_TRIGGER_EPWM8INT")
	.dwattr $C$DW$826, DW_AT_const_value(0x2b)
	.dwattr $C$DW$826, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$826, DW_AT_decl_column(0x05)

$C$DW$827	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$827, DW_AT_name("CLA_TRIGGER_EPWM9INT")
	.dwattr $C$DW$827, DW_AT_const_value(0x2c)
	.dwattr $C$DW$827, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$827, DW_AT_decl_column(0x05)

$C$DW$828	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$828, DW_AT_name("CLA_TRIGGER_EPWM10INT")
	.dwattr $C$DW$828, DW_AT_const_value(0x2d)
	.dwattr $C$DW$828, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$828, DW_AT_decl_column(0x05)

$C$DW$829	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$829, DW_AT_name("CLA_TRIGGER_EPWM11INT")
	.dwattr $C$DW$829, DW_AT_const_value(0x2e)
	.dwattr $C$DW$829, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0xba)
	.dwattr $C$DW$829, DW_AT_decl_column(0x05)

$C$DW$830	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$830, DW_AT_name("CLA_TRIGGER_EPWM12INT")
	.dwattr $C$DW$830, DW_AT_const_value(0x2f)
	.dwattr $C$DW$830, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$830, DW_AT_decl_column(0x05)

$C$DW$831	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$831, DW_AT_name("CLA_TRIGGER_TINT0")
	.dwattr $C$DW$831, DW_AT_const_value(0x44)
	.dwattr $C$DW$831, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$831, DW_AT_decl_column(0x05)

$C$DW$832	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$832, DW_AT_name("CLA_TRIGGER_TINT1")
	.dwattr $C$DW$832, DW_AT_const_value(0x45)
	.dwattr $C$DW$832, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$832, DW_AT_decl_column(0x05)

$C$DW$833	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$833, DW_AT_name("CLA_TRIGGER_TINT2")
	.dwattr $C$DW$833, DW_AT_const_value(0x46)
	.dwattr $C$DW$833, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$833, DW_AT_decl_column(0x05)

$C$DW$834	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$834, DW_AT_name("CLA_TRIGGER_MXINTA")
	.dwattr $C$DW$834, DW_AT_const_value(0x47)
	.dwattr $C$DW$834, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$834, DW_AT_decl_column(0x05)

$C$DW$835	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$835, DW_AT_name("CLA_TRIGGER_MRINTA")
	.dwattr $C$DW$835, DW_AT_const_value(0x48)
	.dwattr $C$DW$835, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$835, DW_AT_decl_column(0x05)

$C$DW$836	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$836, DW_AT_name("CLA_TRIGGER_MXINTB")
	.dwattr $C$DW$836, DW_AT_const_value(0x49)
	.dwattr $C$DW$836, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$836, DW_AT_decl_column(0x05)

$C$DW$837	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$837, DW_AT_name("CLA_TRIGGER_MRINTB")
	.dwattr $C$DW$837, DW_AT_const_value(0x4a)
	.dwattr $C$DW$837, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$837, DW_AT_decl_column(0x05)

$C$DW$838	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$838, DW_AT_name("CLA_TRIGGER_ECAP1INT")
	.dwattr $C$DW$838, DW_AT_const_value(0x4b)
	.dwattr $C$DW$838, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$838, DW_AT_decl_column(0x05)

$C$DW$839	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$839, DW_AT_name("CLA_TRIGGER_ECAP2INT")
	.dwattr $C$DW$839, DW_AT_const_value(0x4c)
	.dwattr $C$DW$839, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$839, DW_AT_decl_column(0x05)

$C$DW$840	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$840, DW_AT_name("CLA_TRIGGER_ECAP3INT")
	.dwattr $C$DW$840, DW_AT_const_value(0x4d)
	.dwattr $C$DW$840, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$840, DW_AT_decl_column(0x05)

$C$DW$841	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$841, DW_AT_name("CLA_TRIGGER_ECAP4INT")
	.dwattr $C$DW$841, DW_AT_const_value(0x4e)
	.dwattr $C$DW$841, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0xca)
	.dwattr $C$DW$841, DW_AT_decl_column(0x05)

$C$DW$842	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$842, DW_AT_name("CLA_TRIGGER_ECAP5INT")
	.dwattr $C$DW$842, DW_AT_const_value(0x4f)
	.dwattr $C$DW$842, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$842, DW_AT_decl_column(0x05)

$C$DW$843	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$843, DW_AT_name("CLA_TRIGGER_ECAP6INT")
	.dwattr $C$DW$843, DW_AT_const_value(0x50)
	.dwattr $C$DW$843, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$843, DW_AT_decl_column(0x05)

$C$DW$844	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$844, DW_AT_name("CLA_TRIGGER_EQEP1INT")
	.dwattr $C$DW$844, DW_AT_const_value(0x53)
	.dwattr $C$DW$844, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0xce)
	.dwattr $C$DW$844, DW_AT_decl_column(0x05)

$C$DW$845	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$845, DW_AT_name("CLA_TRIGGER_EQEP2INT")
	.dwattr $C$DW$845, DW_AT_const_value(0x54)
	.dwattr $C$DW$845, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$845, DW_AT_decl_column(0x05)

$C$DW$846	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$846, DW_AT_name("CLA_TRIGGER_EQEP3INT")
	.dwattr $C$DW$846, DW_AT_const_value(0x55)
	.dwattr $C$DW$846, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$846, DW_AT_decl_column(0x05)

$C$DW$847	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$847, DW_AT_name("CLA_TRIGGER_SDFM1INT")
	.dwattr $C$DW$847, DW_AT_const_value(0x5f)
	.dwattr $C$DW$847, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$847, DW_AT_decl_column(0x05)

$C$DW$848	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$848, DW_AT_name("CLA_TRIGGER_SDFM2INT")
	.dwattr $C$DW$848, DW_AT_const_value(0x60)
	.dwattr $C$DW$848, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$848, DW_AT_decl_column(0x05)

$C$DW$849	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$849, DW_AT_name("CLA_TRIGGER_UPP1INT")
	.dwattr $C$DW$849, DW_AT_const_value(0x6b)
	.dwattr $C$DW$849, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$849, DW_AT_decl_column(0x05)

$C$DW$850	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$850, DW_AT_name("CLA_TRIGGER_SPITXAINT")
	.dwattr $C$DW$850, DW_AT_const_value(0x6d)
	.dwattr $C$DW$850, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0xda)
	.dwattr $C$DW$850, DW_AT_decl_column(0x05)

$C$DW$851	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$851, DW_AT_name("CLA_TRIGGER_SPIRXAINT")
	.dwattr $C$DW$851, DW_AT_const_value(0x6e)
	.dwattr $C$DW$851, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$851, DW_AT_decl_column(0x05)

$C$DW$852	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$852, DW_AT_name("CLA_TRIGGER_SPITXBINT")
	.dwattr $C$DW$852, DW_AT_const_value(0x6f)
	.dwattr $C$DW$852, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$852, DW_AT_decl_column(0x05)

$C$DW$853	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$853, DW_AT_name("CLA_TRIGGER_SPIRXBINT")
	.dwattr $C$DW$853, DW_AT_const_value(0x70)
	.dwattr $C$DW$853, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$853, DW_AT_decl_column(0x05)

$C$DW$854	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$854, DW_AT_name("CLA_TRIGGER_SPITXCINT")
	.dwattr $C$DW$854, DW_AT_const_value(0x71)
	.dwattr $C$DW$854, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0xde)
	.dwattr $C$DW$854, DW_AT_decl_column(0x05)

$C$DW$855	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$855, DW_AT_name("CLA_TRIGGER_SPIRXCINT")
	.dwattr $C$DW$855, DW_AT_const_value(0x72)
	.dwattr $C$DW$855, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$855, DW_AT_decl_column(0x05)

$C$DW$856	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$856, DW_AT_name("CLA_TRIGGER_CLB1INT")
	.dwattr $C$DW$856, DW_AT_const_value(0x7f)
	.dwattr $C$DW$856, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$856, DW_AT_decl_column(0x05)

$C$DW$857	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$857, DW_AT_name("CLA_TRIGGER_CLB2INT")
	.dwattr $C$DW$857, DW_AT_const_value(0x80)
	.dwattr $C$DW$857, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$857, DW_AT_decl_column(0x05)

$C$DW$858	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$858, DW_AT_name("CLA_TRIGGER_CLB3INT")
	.dwattr $C$DW$858, DW_AT_const_value(0x81)
	.dwattr $C$DW$858, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$858, DW_AT_decl_column(0x05)

$C$DW$859	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$859, DW_AT_name("CLA_TRIGGER_CLB4INT")
	.dwattr $C$DW$859, DW_AT_const_value(0x82)
	.dwattr $C$DW$859, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$859, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$59, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("CLA_Trigger")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cla.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$860	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$860, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT")
	.dwattr $C$DW$860, DW_AT_const_value(0x00)
	.dwattr $C$DW$860, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x58)
	.dwattr $C$DW$860, DW_AT_decl_column(0x03)

$C$DW$861	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$861, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPATZERO")
	.dwattr $C$DW$861, DW_AT_const_value(0x400)
	.dwattr $C$DW$861, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$861, DW_AT_decl_column(0x03)

$C$DW$862	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$862, DW_AT_name("CPUTIMER_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$862, DW_AT_const_value(0x800)
	.dwattr $C$DW$862, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$862, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$61, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("CPUTimer_EmulationMode")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$863	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$863, DW_AT_name("EPWM_COUNT_MODE_DOWN_AFTER_SYNC")
	.dwattr $C$DW$863, DW_AT_const_value(0x00)
	.dwattr $C$DW$863, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x65)
	.dwattr $C$DW$863, DW_AT_decl_column(0x04)

$C$DW$864	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$864, DW_AT_name("EPWM_COUNT_MODE_UP_AFTER_SYNC")
	.dwattr $C$DW$864, DW_AT_const_value(0x01)
	.dwattr $C$DW$864, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x66)
	.dwattr $C$DW$864, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$63, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("EPWM_SyncCountMode")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$865	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$865, DW_AT_name("EPWM_CLOCK_DIVIDER_1")
	.dwattr $C$DW$865, DW_AT_const_value(0x00)
	.dwattr $C$DW$865, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x71)
	.dwattr $C$DW$865, DW_AT_decl_column(0x05)

$C$DW$866	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$866, DW_AT_name("EPWM_CLOCK_DIVIDER_2")
	.dwattr $C$DW$866, DW_AT_const_value(0x01)
	.dwattr $C$DW$866, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x72)
	.dwattr $C$DW$866, DW_AT_decl_column(0x05)

$C$DW$867	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$867, DW_AT_name("EPWM_CLOCK_DIVIDER_4")
	.dwattr $C$DW$867, DW_AT_const_value(0x02)
	.dwattr $C$DW$867, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x73)
	.dwattr $C$DW$867, DW_AT_decl_column(0x05)

$C$DW$868	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$868, DW_AT_name("EPWM_CLOCK_DIVIDER_8")
	.dwattr $C$DW$868, DW_AT_const_value(0x03)
	.dwattr $C$DW$868, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x74)
	.dwattr $C$DW$868, DW_AT_decl_column(0x05)

$C$DW$869	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$869, DW_AT_name("EPWM_CLOCK_DIVIDER_16")
	.dwattr $C$DW$869, DW_AT_const_value(0x04)
	.dwattr $C$DW$869, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x75)
	.dwattr $C$DW$869, DW_AT_decl_column(0x05)

$C$DW$870	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$870, DW_AT_name("EPWM_CLOCK_DIVIDER_32")
	.dwattr $C$DW$870, DW_AT_const_value(0x05)
	.dwattr $C$DW$870, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x76)
	.dwattr $C$DW$870, DW_AT_decl_column(0x05)

$C$DW$871	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$871, DW_AT_name("EPWM_CLOCK_DIVIDER_64")
	.dwattr $C$DW$871, DW_AT_const_value(0x06)
	.dwattr $C$DW$871, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0x77)
	.dwattr $C$DW$871, DW_AT_decl_column(0x05)

$C$DW$872	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$872, DW_AT_name("EPWM_CLOCK_DIVIDER_128")
	.dwattr $C$DW$872, DW_AT_const_value(0x07)
	.dwattr $C$DW$872, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0x78)
	.dwattr $C$DW$872, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$65, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("EPWM_ClockDivider")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$873	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$873, DW_AT_name("EPWM_HSCLOCK_DIVIDER_1")
	.dwattr $C$DW$873, DW_AT_const_value(0x00)
	.dwattr $C$DW$873, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0x83)
	.dwattr $C$DW$873, DW_AT_decl_column(0x05)

$C$DW$874	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$874, DW_AT_name("EPWM_HSCLOCK_DIVIDER_2")
	.dwattr $C$DW$874, DW_AT_const_value(0x01)
	.dwattr $C$DW$874, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0x84)
	.dwattr $C$DW$874, DW_AT_decl_column(0x05)

$C$DW$875	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$875, DW_AT_name("EPWM_HSCLOCK_DIVIDER_4")
	.dwattr $C$DW$875, DW_AT_const_value(0x02)
	.dwattr $C$DW$875, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0x85)
	.dwattr $C$DW$875, DW_AT_decl_column(0x05)

$C$DW$876	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$876, DW_AT_name("EPWM_HSCLOCK_DIVIDER_6")
	.dwattr $C$DW$876, DW_AT_const_value(0x03)
	.dwattr $C$DW$876, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0x86)
	.dwattr $C$DW$876, DW_AT_decl_column(0x05)

$C$DW$877	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$877, DW_AT_name("EPWM_HSCLOCK_DIVIDER_8")
	.dwattr $C$DW$877, DW_AT_const_value(0x04)
	.dwattr $C$DW$877, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0x87)
	.dwattr $C$DW$877, DW_AT_decl_column(0x05)

$C$DW$878	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$878, DW_AT_name("EPWM_HSCLOCK_DIVIDER_10")
	.dwattr $C$DW$878, DW_AT_const_value(0x05)
	.dwattr $C$DW$878, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0x88)
	.dwattr $C$DW$878, DW_AT_decl_column(0x05)

$C$DW$879	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$879, DW_AT_name("EPWM_HSCLOCK_DIVIDER_12")
	.dwattr $C$DW$879, DW_AT_const_value(0x06)
	.dwattr $C$DW$879, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x89)
	.dwattr $C$DW$879, DW_AT_decl_column(0x05)

$C$DW$880	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$880, DW_AT_name("EPWM_HSCLOCK_DIVIDER_14")
	.dwattr $C$DW$880, DW_AT_const_value(0x07)
	.dwattr $C$DW$880, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$880, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$67, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("EPWM_HSClockDivider")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$881	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$881, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_SOFTWARE")
	.dwattr $C$DW$881, DW_AT_const_value(0x00)
	.dwattr $C$DW$881, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x96)
	.dwattr $C$DW$881, DW_AT_decl_column(0x05)

$C$DW$882	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$882, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN")
	.dwattr $C$DW$882, DW_AT_const_value(0x00)
	.dwattr $C$DW$882, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x98)
	.dwattr $C$DW$882, DW_AT_decl_column(0x05)

$C$DW$883	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$883, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO")
	.dwattr $C$DW$883, DW_AT_const_value(0x01)
	.dwattr $C$DW$883, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$883, DW_AT_decl_column(0x05)

$C$DW$884	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$884, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B")
	.dwattr $C$DW$884, DW_AT_const_value(0x02)
	.dwattr $C$DW$884, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$884, DW_AT_decl_column(0x05)

$C$DW$885	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$885, DW_AT_name("EPWM_SYNC_OUT_PULSE_DISABLED")
	.dwattr $C$DW$885, DW_AT_const_value(0x04)
	.dwattr $C$DW$885, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$885, DW_AT_decl_column(0x05)

$C$DW$886	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$886, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C")
	.dwattr $C$DW$886, DW_AT_const_value(0x05)
	.dwattr $C$DW$886, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$886, DW_AT_decl_column(0x05)

$C$DW$887	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$887, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D")
	.dwattr $C$DW$887, DW_AT_const_value(0x06)
	.dwattr $C$DW$887, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$887, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$69, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("EPWM_SyncOutPulseMode")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$888	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$888, DW_AT_name("EPWM_PERIOD_SHADOW_LOAD")
	.dwattr $C$DW$888, DW_AT_const_value(0x00)
	.dwattr $C$DW$888, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0xae)
	.dwattr $C$DW$888, DW_AT_decl_column(0x05)

$C$DW$889	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$889, DW_AT_name("EPWM_PERIOD_DIRECT_LOAD")
	.dwattr $C$DW$889, DW_AT_const_value(0x01)
	.dwattr $C$DW$889, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$889, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$71, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("EPWM_PeriodLoadMode")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$890	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$890, DW_AT_name("EPWM_COUNTER_MODE_UP")
	.dwattr $C$DW$890, DW_AT_const_value(0x00)
	.dwattr $C$DW$890, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$890, DW_AT_decl_column(0x05)

$C$DW$891	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$891, DW_AT_name("EPWM_COUNTER_MODE_DOWN")
	.dwattr $C$DW$891, DW_AT_const_value(0x01)
	.dwattr $C$DW$891, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$891, DW_AT_decl_column(0x05)

$C$DW$892	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$892, DW_AT_name("EPWM_COUNTER_MODE_UP_DOWN")
	.dwattr $C$DW$892, DW_AT_const_value(0x02)
	.dwattr $C$DW$892, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$892, DW_AT_decl_column(0x05)

$C$DW$893	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$893, DW_AT_name("EPWM_COUNTER_MODE_STOP_FREEZE")
	.dwattr $C$DW$893, DW_AT_const_value(0x03)
	.dwattr $C$DW$893, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$893, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$73, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("EPWM_TimeBaseCountMode")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$894	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$894, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$894, DW_AT_const_value(0x00)
	.dwattr $C$DW$894, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x111)
	.dwattr $C$DW$894, DW_AT_decl_column(0x05)

$C$DW$895	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$895, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$895, DW_AT_const_value(0x02)
	.dwattr $C$DW$895, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x112)
	.dwattr $C$DW$895, DW_AT_decl_column(0x05)

$C$DW$896	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$896, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$896, DW_AT_const_value(0x05)
	.dwattr $C$DW$896, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x113)
	.dwattr $C$DW$896, DW_AT_decl_column(0x05)

$C$DW$897	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$897, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$897, DW_AT_const_value(0x07)
	.dwattr $C$DW$897, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x114)
	.dwattr $C$DW$897, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$75, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$898	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$898, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$898, DW_AT_const_value(0x00)
	.dwattr $C$DW$898, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x120)
	.dwattr $C$DW$898, DW_AT_decl_column(0x05)

$C$DW$899	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$899, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$899, DW_AT_const_value(0x01)
	.dwattr $C$DW$899, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x122)
	.dwattr $C$DW$899, DW_AT_decl_column(0x05)

$C$DW$900	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$900, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$900, DW_AT_const_value(0x02)
	.dwattr $C$DW$900, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x124)
	.dwattr $C$DW$900, DW_AT_decl_column(0x05)

$C$DW$901	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$901, DW_AT_name("EPWM_COMP_LOAD_FREEZE")
	.dwattr $C$DW$901, DW_AT_const_value(0x03)
	.dwattr $C$DW$901, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x126)
	.dwattr $C$DW$901, DW_AT_decl_column(0x05)

$C$DW$902	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$902, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO")
	.dwattr $C$DW$902, DW_AT_const_value(0x04)
	.dwattr $C$DW$902, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x128)
	.dwattr $C$DW$902, DW_AT_decl_column(0x05)

$C$DW$903	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$903, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD")
	.dwattr $C$DW$903, DW_AT_const_value(0x05)
	.dwattr $C$DW$903, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$903, DW_AT_decl_column(0x05)

$C$DW$904	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$904, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$904, DW_AT_const_value(0x06)
	.dwattr $C$DW$904, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$904, DW_AT_decl_column(0x05)

$C$DW$905	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$905, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_ONLY")
	.dwattr $C$DW$905, DW_AT_const_value(0x08)
	.dwattr $C$DW$905, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$905, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$77, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("EPWM_CounterCompareLoadMode")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$906	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$906, DW_AT_name("EPWM_AQ_OUTPUT_A")
	.dwattr $C$DW$906, DW_AT_const_value(0x00)
	.dwattr $C$DW$906, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0x213)
	.dwattr $C$DW$906, DW_AT_decl_column(0x05)

$C$DW$907	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$907, DW_AT_name("EPWM_AQ_OUTPUT_B")
	.dwattr $C$DW$907, DW_AT_const_value(0x02)
	.dwattr $C$DW$907, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0x214)
	.dwattr $C$DW$907, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$79, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("EPWM_ActionQualifierOutputModule")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$908	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$908, DW_AT_name("EPWM_DB_RED")
	.dwattr $C$DW$908, DW_AT_const_value(0x01)
	.dwattr $C$DW$908, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$908, DW_AT_decl_column(0x05)

$C$DW$909	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$909, DW_AT_name("EPWM_DB_FED")
	.dwattr $C$DW$909, DW_AT_const_value(0x00)
	.dwattr $C$DW$909, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$909, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$81, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("EPWM_DeadBandDelayMode")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$910	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$910, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_HIGH")
	.dwattr $C$DW$910, DW_AT_const_value(0x00)
	.dwattr $C$DW$910, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0x249)
	.dwattr $C$DW$910, DW_AT_decl_column(0x05)

$C$DW$911	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$911, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_LOW")
	.dwattr $C$DW$911, DW_AT_const_value(0x01)
	.dwattr $C$DW$911, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$911, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$83, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("EPWM_DeadBandPolarity")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$912	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$912, DW_AT_name("EPWM_TZ_DC_OUTPUT_A1")
	.dwattr $C$DW$912, DW_AT_const_value(0x00)
	.dwattr $C$DW$912, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$912, DW_AT_decl_column(0x05)

$C$DW$913	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$913, DW_AT_name("EPWM_TZ_DC_OUTPUT_A2")
	.dwattr $C$DW$913, DW_AT_const_value(0x03)
	.dwattr $C$DW$913, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0x2e4)
	.dwattr $C$DW$913, DW_AT_decl_column(0x05)

$C$DW$914	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$914, DW_AT_name("EPWM_TZ_DC_OUTPUT_B1")
	.dwattr $C$DW$914, DW_AT_const_value(0x06)
	.dwattr $C$DW$914, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$914, DW_AT_decl_column(0x05)

$C$DW$915	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$915, DW_AT_name("EPWM_TZ_DC_OUTPUT_B2")
	.dwattr $C$DW$915, DW_AT_const_value(0x09)
	.dwattr $C$DW$915, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0x2e6)
	.dwattr $C$DW$915, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$85, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("EPWM_TripZoneDigitalCompareOutput")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x2e7)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$916	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$916, DW_AT_name("EPWM_TZ_EVENT_DC_DISABLED")
	.dwattr $C$DW$916, DW_AT_const_value(0x00)
	.dwattr $C$DW$916, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0x2f1)
	.dwattr $C$DW$916, DW_AT_decl_column(0x05)

$C$DW$917	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$917, DW_AT_name("EPWM_TZ_EVENT_DCXH_LOW")
	.dwattr $C$DW$917, DW_AT_const_value(0x01)
	.dwattr $C$DW$917, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$917, DW_AT_decl_column(0x05)

$C$DW$918	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$918, DW_AT_name("EPWM_TZ_EVENT_DCXH_HIGH")
	.dwattr $C$DW$918, DW_AT_const_value(0x02)
	.dwattr $C$DW$918, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0x2f3)
	.dwattr $C$DW$918, DW_AT_decl_column(0x05)

$C$DW$919	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$919, DW_AT_name("EPWM_TZ_EVENT_DCXL_LOW")
	.dwattr $C$DW$919, DW_AT_const_value(0x03)
	.dwattr $C$DW$919, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$919, DW_AT_decl_column(0x05)

$C$DW$920	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$920, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH")
	.dwattr $C$DW$920, DW_AT_const_value(0x04)
	.dwattr $C$DW$920, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0x2f5)
	.dwattr $C$DW$920, DW_AT_decl_column(0x05)

$C$DW$921	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$921, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH_DCXH_LOW")
	.dwattr $C$DW$921, DW_AT_const_value(0x05)
	.dwattr $C$DW$921, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$921, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$87, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("EPWM_TripZoneDigitalCompareOutputEvent")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x2f7)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$922	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$922, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZA")
	.dwattr $C$DW$922, DW_AT_const_value(0x00)
	.dwattr $C$DW$922, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0x301)
	.dwattr $C$DW$922, DW_AT_decl_column(0x05)

$C$DW$923	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$923, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZB")
	.dwattr $C$DW$923, DW_AT_const_value(0x02)
	.dwattr $C$DW$923, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0x302)
	.dwattr $C$DW$923, DW_AT_decl_column(0x05)

$C$DW$924	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$924, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT1")
	.dwattr $C$DW$924, DW_AT_const_value(0x04)
	.dwattr $C$DW$924, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x303)
	.dwattr $C$DW$924, DW_AT_decl_column(0x05)

$C$DW$925	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$925, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT2")
	.dwattr $C$DW$925, DW_AT_const_value(0x06)
	.dwattr $C$DW$925, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x304)
	.dwattr $C$DW$925, DW_AT_decl_column(0x05)

$C$DW$926	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$926, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT1")
	.dwattr $C$DW$926, DW_AT_const_value(0x08)
	.dwattr $C$DW$926, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x305)
	.dwattr $C$DW$926, DW_AT_decl_column(0x05)

$C$DW$927	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$927, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT2")
	.dwattr $C$DW$927, DW_AT_const_value(0x0a)
	.dwattr $C$DW$927, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x306)
	.dwattr $C$DW$927, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$89, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x300)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("EPWM_TripZoneEvent")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x307)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$928	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$928, DW_AT_name("EPWM_TZ_ACTION_HIGH_Z")
	.dwattr $C$DW$928, DW_AT_const_value(0x00)
	.dwattr $C$DW$928, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x311)
	.dwattr $C$DW$928, DW_AT_decl_column(0x05)

$C$DW$929	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$929, DW_AT_name("EPWM_TZ_ACTION_HIGH")
	.dwattr $C$DW$929, DW_AT_const_value(0x01)
	.dwattr $C$DW$929, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x312)
	.dwattr $C$DW$929, DW_AT_decl_column(0x05)

$C$DW$930	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$930, DW_AT_name("EPWM_TZ_ACTION_LOW")
	.dwattr $C$DW$930, DW_AT_const_value(0x02)
	.dwattr $C$DW$930, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x313)
	.dwattr $C$DW$930, DW_AT_decl_column(0x05)

$C$DW$931	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$931, DW_AT_name("EPWM_TZ_ACTION_DISABLE")
	.dwattr $C$DW$931, DW_AT_const_value(0x03)
	.dwattr $C$DW$931, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x314)
	.dwattr $C$DW$931, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$91, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x310)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("EPWM_TripZoneAction")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x315)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$932	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$932, DW_AT_name("EPWM_SOC_A")
	.dwattr $C$DW$932, DW_AT_const_value(0x00)
	.dwattr $C$DW$932, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x429)
	.dwattr $C$DW$932, DW_AT_decl_column(0x05)

$C$DW$933	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$933, DW_AT_name("EPWM_SOC_B")
	.dwattr $C$DW$933, DW_AT_const_value(0x01)
	.dwattr $C$DW$933, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x42a)
	.dwattr $C$DW$933, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$93, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x428)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("EPWM_ADCStartOfConversionType")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x42b)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$934	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$934, DW_AT_name("EPWM_SOC_DCxEVT1")
	.dwattr $C$DW$934, DW_AT_const_value(0x00)
	.dwattr $C$DW$934, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0x436)
	.dwattr $C$DW$934, DW_AT_decl_column(0x05)

$C$DW$935	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$935, DW_AT_name("EPWM_SOC_TBCTR_ZERO")
	.dwattr $C$DW$935, DW_AT_const_value(0x01)
	.dwattr $C$DW$935, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0x438)
	.dwattr $C$DW$935, DW_AT_decl_column(0x05)

$C$DW$936	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$936, DW_AT_name("EPWM_SOC_TBCTR_PERIOD")
	.dwattr $C$DW$936, DW_AT_const_value(0x02)
	.dwattr $C$DW$936, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0x43a)
	.dwattr $C$DW$936, DW_AT_decl_column(0x05)

$C$DW$937	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$937, DW_AT_name("EPWM_SOC_TBCTR_ZERO_OR_PERIOD")
	.dwattr $C$DW$937, DW_AT_const_value(0x03)
	.dwattr $C$DW$937, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0x43c)
	.dwattr $C$DW$937, DW_AT_decl_column(0x05)

$C$DW$938	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$938, DW_AT_name("EPWM_SOC_TBCTR_U_CMPA")
	.dwattr $C$DW$938, DW_AT_const_value(0x04)
	.dwattr $C$DW$938, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0x43e)
	.dwattr $C$DW$938, DW_AT_decl_column(0x05)

$C$DW$939	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$939, DW_AT_name("EPWM_SOC_TBCTR_U_CMPC")
	.dwattr $C$DW$939, DW_AT_const_value(0x08)
	.dwattr $C$DW$939, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0x440)
	.dwattr $C$DW$939, DW_AT_decl_column(0x05)

$C$DW$940	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$940, DW_AT_name("EPWM_SOC_TBCTR_D_CMPA")
	.dwattr $C$DW$940, DW_AT_const_value(0x05)
	.dwattr $C$DW$940, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0x442)
	.dwattr $C$DW$940, DW_AT_decl_column(0x05)

$C$DW$941	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$941, DW_AT_name("EPWM_SOC_TBCTR_D_CMPC")
	.dwattr $C$DW$941, DW_AT_const_value(0x0a)
	.dwattr $C$DW$941, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x444)
	.dwattr $C$DW$941, DW_AT_decl_column(0x05)

$C$DW$942	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$942, DW_AT_name("EPWM_SOC_TBCTR_U_CMPB")
	.dwattr $C$DW$942, DW_AT_const_value(0x06)
	.dwattr $C$DW$942, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x446)
	.dwattr $C$DW$942, DW_AT_decl_column(0x05)

$C$DW$943	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$943, DW_AT_name("EPWM_SOC_TBCTR_U_CMPD")
	.dwattr $C$DW$943, DW_AT_const_value(0x0c)
	.dwattr $C$DW$943, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0x448)
	.dwattr $C$DW$943, DW_AT_decl_column(0x05)

$C$DW$944	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$944, DW_AT_name("EPWM_SOC_TBCTR_D_CMPB")
	.dwattr $C$DW$944, DW_AT_const_value(0x07)
	.dwattr $C$DW$944, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0x44a)
	.dwattr $C$DW$944, DW_AT_decl_column(0x05)

$C$DW$945	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$945, DW_AT_name("EPWM_SOC_TBCTR_D_CMPD")
	.dwattr $C$DW$945, DW_AT_const_value(0x0e)
	.dwattr $C$DW$945, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0x44c)
	.dwattr $C$DW$945, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$95, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x434)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("EPWM_ADCStartOfConversionSource")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x44d)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$946	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$946, DW_AT_name("EPWM_DC_TRIP_TRIPIN1")
	.dwattr $C$DW$946, DW_AT_const_value(0x00)
	.dwattr $C$DW$946, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0x46a)
	.dwattr $C$DW$946, DW_AT_decl_column(0x05)

$C$DW$947	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$947, DW_AT_name("EPWM_DC_TRIP_TRIPIN2")
	.dwattr $C$DW$947, DW_AT_const_value(0x01)
	.dwattr $C$DW$947, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x46b)
	.dwattr $C$DW$947, DW_AT_decl_column(0x05)

$C$DW$948	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$948, DW_AT_name("EPWM_DC_TRIP_TRIPIN3")
	.dwattr $C$DW$948, DW_AT_const_value(0x02)
	.dwattr $C$DW$948, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x46c)
	.dwattr $C$DW$948, DW_AT_decl_column(0x05)

$C$DW$949	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$949, DW_AT_name("EPWM_DC_TRIP_TRIPIN4")
	.dwattr $C$DW$949, DW_AT_const_value(0x03)
	.dwattr $C$DW$949, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$949, DW_AT_decl_line(0x46d)
	.dwattr $C$DW$949, DW_AT_decl_column(0x05)

$C$DW$950	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$950, DW_AT_name("EPWM_DC_TRIP_TRIPIN5")
	.dwattr $C$DW$950, DW_AT_const_value(0x04)
	.dwattr $C$DW$950, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$950, DW_AT_decl_line(0x46e)
	.dwattr $C$DW$950, DW_AT_decl_column(0x05)

$C$DW$951	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$951, DW_AT_name("EPWM_DC_TRIP_TRIPIN6")
	.dwattr $C$DW$951, DW_AT_const_value(0x05)
	.dwattr $C$DW$951, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$951, DW_AT_decl_line(0x46f)
	.dwattr $C$DW$951, DW_AT_decl_column(0x05)

$C$DW$952	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$952, DW_AT_name("EPWM_DC_TRIP_TRIPIN7")
	.dwattr $C$DW$952, DW_AT_const_value(0x06)
	.dwattr $C$DW$952, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$952, DW_AT_decl_line(0x470)
	.dwattr $C$DW$952, DW_AT_decl_column(0x05)

$C$DW$953	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$953, DW_AT_name("EPWM_DC_TRIP_TRIPIN8")
	.dwattr $C$DW$953, DW_AT_const_value(0x07)
	.dwattr $C$DW$953, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$953, DW_AT_decl_line(0x471)
	.dwattr $C$DW$953, DW_AT_decl_column(0x05)

$C$DW$954	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$954, DW_AT_name("EPWM_DC_TRIP_TRIPIN9")
	.dwattr $C$DW$954, DW_AT_const_value(0x08)
	.dwattr $C$DW$954, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$954, DW_AT_decl_line(0x472)
	.dwattr $C$DW$954, DW_AT_decl_column(0x05)

$C$DW$955	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$955, DW_AT_name("EPWM_DC_TRIP_TRIPIN10")
	.dwattr $C$DW$955, DW_AT_const_value(0x09)
	.dwattr $C$DW$955, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$955, DW_AT_decl_line(0x473)
	.dwattr $C$DW$955, DW_AT_decl_column(0x05)

$C$DW$956	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$956, DW_AT_name("EPWM_DC_TRIP_TRIPIN11")
	.dwattr $C$DW$956, DW_AT_const_value(0x0a)
	.dwattr $C$DW$956, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$956, DW_AT_decl_line(0x474)
	.dwattr $C$DW$956, DW_AT_decl_column(0x05)

$C$DW$957	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$957, DW_AT_name("EPWM_DC_TRIP_TRIPIN12")
	.dwattr $C$DW$957, DW_AT_const_value(0x0b)
	.dwattr $C$DW$957, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$957, DW_AT_decl_line(0x475)
	.dwattr $C$DW$957, DW_AT_decl_column(0x05)

$C$DW$958	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$958, DW_AT_name("EPWM_DC_TRIP_TRIPIN14")
	.dwattr $C$DW$958, DW_AT_const_value(0x0d)
	.dwattr $C$DW$958, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$958, DW_AT_decl_line(0x476)
	.dwattr $C$DW$958, DW_AT_decl_column(0x05)

$C$DW$959	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$959, DW_AT_name("EPWM_DC_TRIP_TRIPIN15")
	.dwattr $C$DW$959, DW_AT_const_value(0x0e)
	.dwattr $C$DW$959, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$959, DW_AT_decl_line(0x477)
	.dwattr $C$DW$959, DW_AT_decl_column(0x05)

$C$DW$960	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$960, DW_AT_name("EPWM_DC_TRIP_COMBINATION")
	.dwattr $C$DW$960, DW_AT_const_value(0x0f)
	.dwattr $C$DW$960, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$960, DW_AT_decl_line(0x478)
	.dwattr $C$DW$960, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$97, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x469)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("EPWM_DigitalCompareTripInput")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x479)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$961	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$961, DW_AT_name("EPWM_DC_TYPE_DCAH")
	.dwattr $C$DW$961, DW_AT_const_value(0x00)
	.dwattr $C$DW$961, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$961, DW_AT_decl_line(0x45c)
	.dwattr $C$DW$961, DW_AT_decl_column(0x05)

$C$DW$962	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$962, DW_AT_name("EPWM_DC_TYPE_DCAL")
	.dwattr $C$DW$962, DW_AT_const_value(0x01)
	.dwattr $C$DW$962, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$962, DW_AT_decl_line(0x45d)
	.dwattr $C$DW$962, DW_AT_decl_column(0x05)

$C$DW$963	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$963, DW_AT_name("EPWM_DC_TYPE_DCBH")
	.dwattr $C$DW$963, DW_AT_const_value(0x02)
	.dwattr $C$DW$963, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$963, DW_AT_decl_line(0x45e)
	.dwattr $C$DW$963, DW_AT_decl_column(0x05)

$C$DW$964	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$964, DW_AT_name("EPWM_DC_TYPE_DCBL")
	.dwattr $C$DW$964, DW_AT_const_value(0x03)
	.dwattr $C$DW$964, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$964, DW_AT_decl_line(0x45f)
	.dwattr $C$DW$964, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$99, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x45b)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("EPWM_DigitalCompareType")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x460)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$965	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$965, DW_AT_name("EPWM_DC_MODULE_A")
	.dwattr $C$DW$965, DW_AT_const_value(0x00)
	.dwattr $C$DW$965, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$965, DW_AT_decl_line(0x4d5)
	.dwattr $C$DW$965, DW_AT_decl_column(0x05)

$C$DW$966	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$966, DW_AT_name("EPWM_DC_MODULE_B")
	.dwattr $C$DW$966, DW_AT_const_value(0x01)
	.dwattr $C$DW$966, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$966, DW_AT_decl_line(0x4d6)
	.dwattr $C$DW$966, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$101, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x4d4)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("EPWM_DigitalCompareModule")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x4d7)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$967	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$967, DW_AT_name("EPWM_DC_EVENT_1")
	.dwattr $C$DW$967, DW_AT_const_value(0x00)
	.dwattr $C$DW$967, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$967, DW_AT_decl_line(0x4e1)
	.dwattr $C$DW$967, DW_AT_decl_column(0x05)

$C$DW$968	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$968, DW_AT_name("EPWM_DC_EVENT_2")
	.dwattr $C$DW$968, DW_AT_const_value(0x01)
	.dwattr $C$DW$968, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$968, DW_AT_decl_line(0x4e2)
	.dwattr $C$DW$968, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$103, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x4e0)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("EPWM_DigitalCompareEvent")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x4e3)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$969	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$969, DW_AT_name("EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL")
	.dwattr $C$DW$969, DW_AT_const_value(0x00)
	.dwattr $C$DW$969, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$969, DW_AT_decl_line(0x4ee)
	.dwattr $C$DW$969, DW_AT_decl_column(0x05)

$C$DW$970	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$970, DW_AT_name("EPWM_DC_EVENT_SOURCE_FILT_SIGNAL")
	.dwattr $C$DW$970, DW_AT_const_value(0x01)
	.dwattr $C$DW$970, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$970, DW_AT_decl_line(0x4f0)
	.dwattr $C$DW$970, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$105, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x4ec)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("EPWM_DigitalCompareEventSource")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x4f1)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$971	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$971, DW_AT_name("EPWM_DC_EVENT_INPUT_SYNCED")
	.dwattr $C$DW$971, DW_AT_const_value(0x00)
	.dwattr $C$DW$971, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$971, DW_AT_decl_line(0x4fc)
	.dwattr $C$DW$971, DW_AT_decl_column(0x05)

$C$DW$972	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$972, DW_AT_name("EPWM_DC_EVENT_INPUT_NOT_SYNCED")
	.dwattr $C$DW$972, DW_AT_const_value(0x01)
	.dwattr $C$DW$972, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$972, DW_AT_decl_line(0x4fe)
	.dwattr $C$DW$972, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$107, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x4fa)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("EPWM_DigitalCompareSyncMode")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x4ff)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$973	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$973, DW_AT_name("EQEP_POSITION_RESET_IDX")
	.dwattr $C$DW$973, DW_AT_const_value(0x00)
	.dwattr $C$DW$973, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$973, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$973, DW_AT_decl_column(0x05)

$C$DW$974	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$974, DW_AT_name("EQEP_POSITION_RESET_MAX_POS")
	.dwattr $C$DW$974, DW_AT_const_value(0x1000)
	.dwattr $C$DW$974, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$974, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$974, DW_AT_decl_column(0x05)

$C$DW$975	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$975, DW_AT_name("EQEP_POSITION_RESET_1ST_IDX")
	.dwattr $C$DW$975, DW_AT_const_value(0x2000)
	.dwattr $C$DW$975, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$975, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$975, DW_AT_decl_column(0x05)

$C$DW$976	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$976, DW_AT_name("EQEP_POSITION_RESET_UNIT_TIME_OUT")
	.dwattr $C$DW$976, DW_AT_const_value(0x3000)
	.dwattr $C$DW$976, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$976, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$976, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$109, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("EQEP_PositionResetMode")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$977	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$977, DW_AT_name("EQEP_CAPTURE_CLK_DIV_1")
	.dwattr $C$DW$977, DW_AT_const_value(0x00)
	.dwattr $C$DW$977, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$977, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$977, DW_AT_decl_column(0x05)

$C$DW$978	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$978, DW_AT_name("EQEP_CAPTURE_CLK_DIV_2")
	.dwattr $C$DW$978, DW_AT_const_value(0x10)
	.dwattr $C$DW$978, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$978, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$978, DW_AT_decl_column(0x05)

$C$DW$979	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$979, DW_AT_name("EQEP_CAPTURE_CLK_DIV_4")
	.dwattr $C$DW$979, DW_AT_const_value(0x20)
	.dwattr $C$DW$979, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$979, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$979, DW_AT_decl_column(0x05)

$C$DW$980	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$980, DW_AT_name("EQEP_CAPTURE_CLK_DIV_8")
	.dwattr $C$DW$980, DW_AT_const_value(0x30)
	.dwattr $C$DW$980, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$980, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$980, DW_AT_decl_column(0x05)

$C$DW$981	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$981, DW_AT_name("EQEP_CAPTURE_CLK_DIV_16")
	.dwattr $C$DW$981, DW_AT_const_value(0x40)
	.dwattr $C$DW$981, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$981, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$981, DW_AT_decl_column(0x05)

$C$DW$982	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$982, DW_AT_name("EQEP_CAPTURE_CLK_DIV_32")
	.dwattr $C$DW$982, DW_AT_const_value(0x50)
	.dwattr $C$DW$982, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$982, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$982, DW_AT_decl_column(0x05)

$C$DW$983	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$983, DW_AT_name("EQEP_CAPTURE_CLK_DIV_64")
	.dwattr $C$DW$983, DW_AT_const_value(0x60)
	.dwattr $C$DW$983, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$983, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$983, DW_AT_decl_column(0x05)

$C$DW$984	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$984, DW_AT_name("EQEP_CAPTURE_CLK_DIV_128")
	.dwattr $C$DW$984, DW_AT_const_value(0x70)
	.dwattr $C$DW$984, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$984, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$984, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$111, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("EQEP_CAPCLKPrescale")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$985	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$985, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_1")
	.dwattr $C$DW$985, DW_AT_const_value(0x00)
	.dwattr $C$DW$985, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$985, DW_AT_decl_line(0x108)
	.dwattr $C$DW$985, DW_AT_decl_column(0x05)

$C$DW$986	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$986, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_2")
	.dwattr $C$DW$986, DW_AT_const_value(0x01)
	.dwattr $C$DW$986, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$986, DW_AT_decl_line(0x109)
	.dwattr $C$DW$986, DW_AT_decl_column(0x05)

$C$DW$987	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$987, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_4")
	.dwattr $C$DW$987, DW_AT_const_value(0x02)
	.dwattr $C$DW$987, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$987, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$987, DW_AT_decl_column(0x05)

$C$DW$988	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$988, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_8")
	.dwattr $C$DW$988, DW_AT_const_value(0x03)
	.dwattr $C$DW$988, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$988, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$988, DW_AT_decl_column(0x05)

$C$DW$989	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$989, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_16")
	.dwattr $C$DW$989, DW_AT_const_value(0x04)
	.dwattr $C$DW$989, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$989, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$989, DW_AT_decl_column(0x05)

$C$DW$990	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$990, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_32")
	.dwattr $C$DW$990, DW_AT_const_value(0x05)
	.dwattr $C$DW$990, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$990, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$990, DW_AT_decl_column(0x05)

$C$DW$991	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$991, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_64")
	.dwattr $C$DW$991, DW_AT_const_value(0x06)
	.dwattr $C$DW$991, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$991, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$991, DW_AT_decl_column(0x05)

$C$DW$992	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$992, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_128")
	.dwattr $C$DW$992, DW_AT_const_value(0x07)
	.dwattr $C$DW$992, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$992, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$992, DW_AT_decl_column(0x05)

$C$DW$993	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$993, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_256")
	.dwattr $C$DW$993, DW_AT_const_value(0x08)
	.dwattr $C$DW$993, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$993, DW_AT_decl_line(0x110)
	.dwattr $C$DW$993, DW_AT_decl_column(0x05)

$C$DW$994	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$994, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_512")
	.dwattr $C$DW$994, DW_AT_const_value(0x09)
	.dwattr $C$DW$994, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$994, DW_AT_decl_line(0x111)
	.dwattr $C$DW$994, DW_AT_decl_column(0x05)

$C$DW$995	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$995, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_1024")
	.dwattr $C$DW$995, DW_AT_const_value(0x0a)
	.dwattr $C$DW$995, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$995, DW_AT_decl_line(0x112)
	.dwattr $C$DW$995, DW_AT_decl_column(0x05)

$C$DW$996	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$996, DW_AT_name("EQEP_UNIT_POS_EVNT_DIV_2048")
	.dwattr $C$DW$996, DW_AT_const_value(0x0b)
	.dwattr $C$DW$996, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$996, DW_AT_decl_line(0x113)
	.dwattr $C$DW$996, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$113, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("EQEP_UPEVNTPrescale")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x114)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$997	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$997, DW_AT_name("EQEP_EMULATIONMODE_STOPIMMEDIATELY")
	.dwattr $C$DW$997, DW_AT_const_value(0x00)
	.dwattr $C$DW$997, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$997, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$997, DW_AT_decl_column(0x03)

$C$DW$998	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$998, DW_AT_name("EQEP_EMULATIONMODE_STOPATROLLOVER")
	.dwattr $C$DW$998, DW_AT_const_value(0x01)
	.dwattr $C$DW$998, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$998, DW_AT_decl_line(0x120)
	.dwattr $C$DW$998, DW_AT_decl_column(0x03)

$C$DW$999	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$999, DW_AT_name("EQEP_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$999, DW_AT_const_value(0x02)
	.dwattr $C$DW$999, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$999, DW_AT_decl_line(0x121)
	.dwattr $C$DW$999, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$115, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("EQEP_EmulationMode")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x122)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$1000	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1000, DW_AT_name("XBAR_TRIP4")
	.dwattr $C$DW$1000, DW_AT_const_value(0x00)
	.dwattr $C$DW$1000, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1000, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$1000, DW_AT_decl_column(0x05)

$C$DW$1001	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1001, DW_AT_name("XBAR_TRIP5")
	.dwattr $C$DW$1001, DW_AT_const_value(0x02)
	.dwattr $C$DW$1001, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1001, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$1001, DW_AT_decl_column(0x05)

$C$DW$1002	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1002, DW_AT_name("XBAR_TRIP7")
	.dwattr $C$DW$1002, DW_AT_const_value(0x04)
	.dwattr $C$DW$1002, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1002, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$1002, DW_AT_decl_column(0x05)

$C$DW$1003	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1003, DW_AT_name("XBAR_TRIP8")
	.dwattr $C$DW$1003, DW_AT_const_value(0x06)
	.dwattr $C$DW$1003, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1003, DW_AT_decl_line(0xab)
	.dwattr $C$DW$1003, DW_AT_decl_column(0x05)

$C$DW$1004	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1004, DW_AT_name("XBAR_TRIP9")
	.dwattr $C$DW$1004, DW_AT_const_value(0x08)
	.dwattr $C$DW$1004, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1004, DW_AT_decl_line(0xac)
	.dwattr $C$DW$1004, DW_AT_decl_column(0x05)

$C$DW$1005	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1005, DW_AT_name("XBAR_TRIP10")
	.dwattr $C$DW$1005, DW_AT_const_value(0x0a)
	.dwattr $C$DW$1005, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1005, DW_AT_decl_line(0xad)
	.dwattr $C$DW$1005, DW_AT_decl_column(0x05)

$C$DW$1006	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1006, DW_AT_name("XBAR_TRIP11")
	.dwattr $C$DW$1006, DW_AT_const_value(0x0c)
	.dwattr $C$DW$1006, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1006, DW_AT_decl_line(0xae)
	.dwattr $C$DW$1006, DW_AT_decl_column(0x05)

$C$DW$1007	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1007, DW_AT_name("XBAR_TRIP12")
	.dwattr $C$DW$1007, DW_AT_const_value(0x0e)
	.dwattr $C$DW$1007, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1007, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$1007, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$117, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("XBAR_TripNum")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x01)
$C$DW$1008	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1008, DW_AT_name("XBAR_INPUT1")
	.dwattr $C$DW$1008, DW_AT_const_value(0x00)
	.dwattr $C$DW$1008, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1008, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$1008, DW_AT_decl_column(0x05)

$C$DW$1009	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1009, DW_AT_name("XBAR_INPUT2")
	.dwattr $C$DW$1009, DW_AT_const_value(0x01)
	.dwattr $C$DW$1009, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1009, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$1009, DW_AT_decl_column(0x05)

$C$DW$1010	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1010, DW_AT_name("XBAR_INPUT3")
	.dwattr $C$DW$1010, DW_AT_const_value(0x02)
	.dwattr $C$DW$1010, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1010, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$1010, DW_AT_decl_column(0x05)

$C$DW$1011	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1011, DW_AT_name("XBAR_INPUT4")
	.dwattr $C$DW$1011, DW_AT_const_value(0x03)
	.dwattr $C$DW$1011, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1011, DW_AT_decl_line(0xce)
	.dwattr $C$DW$1011, DW_AT_decl_column(0x05)

$C$DW$1012	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1012, DW_AT_name("XBAR_INPUT5")
	.dwattr $C$DW$1012, DW_AT_const_value(0x04)
	.dwattr $C$DW$1012, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1012, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$1012, DW_AT_decl_column(0x05)

$C$DW$1013	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1013, DW_AT_name("XBAR_INPUT6")
	.dwattr $C$DW$1013, DW_AT_const_value(0x05)
	.dwattr $C$DW$1013, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1013, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$1013, DW_AT_decl_column(0x05)

$C$DW$1014	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1014, DW_AT_name("XBAR_INPUT7")
	.dwattr $C$DW$1014, DW_AT_const_value(0x06)
	.dwattr $C$DW$1014, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1014, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$1014, DW_AT_decl_column(0x05)

$C$DW$1015	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1015, DW_AT_name("XBAR_INPUT8")
	.dwattr $C$DW$1015, DW_AT_const_value(0x07)
	.dwattr $C$DW$1015, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1015, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$1015, DW_AT_decl_column(0x05)

$C$DW$1016	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1016, DW_AT_name("XBAR_INPUT9")
	.dwattr $C$DW$1016, DW_AT_const_value(0x08)
	.dwattr $C$DW$1016, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1016, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$1016, DW_AT_decl_column(0x05)

$C$DW$1017	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1017, DW_AT_name("XBAR_INPUT10")
	.dwattr $C$DW$1017, DW_AT_const_value(0x09)
	.dwattr $C$DW$1017, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1017, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$1017, DW_AT_decl_column(0x05)

$C$DW$1018	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1018, DW_AT_name("XBAR_INPUT11")
	.dwattr $C$DW$1018, DW_AT_const_value(0x0a)
	.dwattr $C$DW$1018, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1018, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$1018, DW_AT_decl_column(0x05)

$C$DW$1019	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1019, DW_AT_name("XBAR_INPUT12")
	.dwattr $C$DW$1019, DW_AT_const_value(0x0b)
	.dwattr $C$DW$1019, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1019, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$1019, DW_AT_decl_column(0x05)

$C$DW$1020	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1020, DW_AT_name("XBAR_INPUT13")
	.dwattr $C$DW$1020, DW_AT_const_value(0x0c)
	.dwattr $C$DW$1020, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1020, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$1020, DW_AT_decl_column(0x05)

$C$DW$1021	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1021, DW_AT_name("XBAR_INPUT14")
	.dwattr $C$DW$1021, DW_AT_const_value(0x0d)
	.dwattr $C$DW$1021, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1021, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$1021, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$119, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("XBAR_InputNum")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121

$C$DW$T$121	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$1022	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1022, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH")
	.dwattr $C$DW$1022, DW_AT_const_value(0x00)
	.dwattr $C$DW$1022, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1022, DW_AT_decl_line(0x149)
	.dwattr $C$DW$1022, DW_AT_decl_column(0x05)

$C$DW$1023	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1023, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L")
	.dwattr $C$DW$1023, DW_AT_const_value(0x01)
	.dwattr $C$DW$1023, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1023, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$1023, DW_AT_decl_column(0x05)

$C$DW$1024	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1024, DW_AT_name("XBAR_EPWM_MUX00_ADCAEVT1")
	.dwattr $C$DW$1024, DW_AT_const_value(0x02)
	.dwattr $C$DW$1024, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1024, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$1024, DW_AT_decl_column(0x05)

$C$DW$1025	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1025, DW_AT_name("XBAR_EPWM_MUX00_ECAP1_OUT")
	.dwattr $C$DW$1025, DW_AT_const_value(0x03)
	.dwattr $C$DW$1025, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1025, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$1025, DW_AT_decl_column(0x05)

$C$DW$1026	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1026, DW_AT_name("XBAR_EPWM_MUX01_CMPSS1_CTRIPL")
	.dwattr $C$DW$1026, DW_AT_const_value(0x200)
	.dwattr $C$DW$1026, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1026, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$1026, DW_AT_decl_column(0x05)

$C$DW$1027	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1027, DW_AT_name("XBAR_EPWM_MUX01_INPUTXBAR1")
	.dwattr $C$DW$1027, DW_AT_const_value(0x201)
	.dwattr $C$DW$1027, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1027, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$1027, DW_AT_decl_column(0x05)

$C$DW$1028	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1028, DW_AT_name("XBAR_EPWM_MUX01_CLB1_OUT4")
	.dwattr $C$DW$1028, DW_AT_const_value(0x202)
	.dwattr $C$DW$1028, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1028, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$1028, DW_AT_decl_column(0x05)

$C$DW$1029	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1029, DW_AT_name("XBAR_EPWM_MUX01_ADCCEVT1")
	.dwattr $C$DW$1029, DW_AT_const_value(0x203)
	.dwattr $C$DW$1029, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1029, DW_AT_decl_line(0x150)
	.dwattr $C$DW$1029, DW_AT_decl_column(0x05)

$C$DW$1030	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1030, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH")
	.dwattr $C$DW$1030, DW_AT_const_value(0x400)
	.dwattr $C$DW$1030, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1030, DW_AT_decl_line(0x151)
	.dwattr $C$DW$1030, DW_AT_decl_column(0x05)

$C$DW$1031	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1031, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L")
	.dwattr $C$DW$1031, DW_AT_const_value(0x401)
	.dwattr $C$DW$1031, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1031, DW_AT_decl_line(0x152)
	.dwattr $C$DW$1031, DW_AT_decl_column(0x05)

$C$DW$1032	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1032, DW_AT_name("XBAR_EPWM_MUX02_ADCAEVT2")
	.dwattr $C$DW$1032, DW_AT_const_value(0x402)
	.dwattr $C$DW$1032, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1032, DW_AT_decl_line(0x153)
	.dwattr $C$DW$1032, DW_AT_decl_column(0x05)

$C$DW$1033	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1033, DW_AT_name("XBAR_EPWM_MUX02_ECAP2_OUT")
	.dwattr $C$DW$1033, DW_AT_const_value(0x403)
	.dwattr $C$DW$1033, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1033, DW_AT_decl_line(0x154)
	.dwattr $C$DW$1033, DW_AT_decl_column(0x05)

$C$DW$1034	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1034, DW_AT_name("XBAR_EPWM_MUX03_CMPSS2_CTRIPL")
	.dwattr $C$DW$1034, DW_AT_const_value(0x600)
	.dwattr $C$DW$1034, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1034, DW_AT_decl_line(0x155)
	.dwattr $C$DW$1034, DW_AT_decl_column(0x05)

$C$DW$1035	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1035, DW_AT_name("XBAR_EPWM_MUX03_INPUTXBAR2")
	.dwattr $C$DW$1035, DW_AT_const_value(0x601)
	.dwattr $C$DW$1035, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1035, DW_AT_decl_line(0x156)
	.dwattr $C$DW$1035, DW_AT_decl_column(0x05)

$C$DW$1036	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1036, DW_AT_name("XBAR_EPWM_MUX03_CLB1_OUT5")
	.dwattr $C$DW$1036, DW_AT_const_value(0x602)
	.dwattr $C$DW$1036, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1036, DW_AT_decl_line(0x157)
	.dwattr $C$DW$1036, DW_AT_decl_column(0x05)

$C$DW$1037	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1037, DW_AT_name("XBAR_EPWM_MUX03_ADCCEVT2")
	.dwattr $C$DW$1037, DW_AT_const_value(0x603)
	.dwattr $C$DW$1037, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1037, DW_AT_decl_line(0x158)
	.dwattr $C$DW$1037, DW_AT_decl_column(0x05)

$C$DW$1038	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1038, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH")
	.dwattr $C$DW$1038, DW_AT_const_value(0x800)
	.dwattr $C$DW$1038, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1038, DW_AT_decl_line(0x159)
	.dwattr $C$DW$1038, DW_AT_decl_column(0x05)

$C$DW$1039	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1039, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L")
	.dwattr $C$DW$1039, DW_AT_const_value(0x801)
	.dwattr $C$DW$1039, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1039, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$1039, DW_AT_decl_column(0x05)

$C$DW$1040	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1040, DW_AT_name("XBAR_EPWM_MUX04_ADCAEVT3")
	.dwattr $C$DW$1040, DW_AT_const_value(0x802)
	.dwattr $C$DW$1040, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1040, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$1040, DW_AT_decl_column(0x05)

$C$DW$1041	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1041, DW_AT_name("XBAR_EPWM_MUX04_ECAP3_OUT")
	.dwattr $C$DW$1041, DW_AT_const_value(0x803)
	.dwattr $C$DW$1041, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1041, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$1041, DW_AT_decl_column(0x05)

$C$DW$1042	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1042, DW_AT_name("XBAR_EPWM_MUX05_CMPSS3_CTRIPL")
	.dwattr $C$DW$1042, DW_AT_const_value(0xa00)
	.dwattr $C$DW$1042, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1042, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$1042, DW_AT_decl_column(0x05)

$C$DW$1043	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1043, DW_AT_name("XBAR_EPWM_MUX05_INPUTXBAR3")
	.dwattr $C$DW$1043, DW_AT_const_value(0xa01)
	.dwattr $C$DW$1043, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1043, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$1043, DW_AT_decl_column(0x05)

$C$DW$1044	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1044, DW_AT_name("XBAR_EPWM_MUX05_CLB2_OUT4")
	.dwattr $C$DW$1044, DW_AT_const_value(0xa02)
	.dwattr $C$DW$1044, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1044, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$1044, DW_AT_decl_column(0x05)

$C$DW$1045	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1045, DW_AT_name("XBAR_EPWM_MUX05_ADCCEVT3")
	.dwattr $C$DW$1045, DW_AT_const_value(0xa03)
	.dwattr $C$DW$1045, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1045, DW_AT_decl_line(0x160)
	.dwattr $C$DW$1045, DW_AT_decl_column(0x05)

$C$DW$1046	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1046, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH")
	.dwattr $C$DW$1046, DW_AT_const_value(0xc00)
	.dwattr $C$DW$1046, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1046, DW_AT_decl_line(0x161)
	.dwattr $C$DW$1046, DW_AT_decl_column(0x05)

$C$DW$1047	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1047, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH_OR_L")
	.dwattr $C$DW$1047, DW_AT_const_value(0xc01)
	.dwattr $C$DW$1047, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1047, DW_AT_decl_line(0x162)
	.dwattr $C$DW$1047, DW_AT_decl_column(0x05)

$C$DW$1048	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1048, DW_AT_name("XBAR_EPWM_MUX06_ADCAEVT4")
	.dwattr $C$DW$1048, DW_AT_const_value(0xc02)
	.dwattr $C$DW$1048, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1048, DW_AT_decl_line(0x163)
	.dwattr $C$DW$1048, DW_AT_decl_column(0x05)

$C$DW$1049	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1049, DW_AT_name("XBAR_EPWM_MUX06_ECAP4_OUT")
	.dwattr $C$DW$1049, DW_AT_const_value(0xc03)
	.dwattr $C$DW$1049, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1049, DW_AT_decl_line(0x164)
	.dwattr $C$DW$1049, DW_AT_decl_column(0x05)

$C$DW$1050	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1050, DW_AT_name("XBAR_EPWM_MUX07_CMPSS4_CTRIPL")
	.dwattr $C$DW$1050, DW_AT_const_value(0xe00)
	.dwattr $C$DW$1050, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1050, DW_AT_decl_line(0x165)
	.dwattr $C$DW$1050, DW_AT_decl_column(0x05)

$C$DW$1051	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1051, DW_AT_name("XBAR_EPWM_MUX07_INPUTXBAR4")
	.dwattr $C$DW$1051, DW_AT_const_value(0xe01)
	.dwattr $C$DW$1051, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1051, DW_AT_decl_line(0x166)
	.dwattr $C$DW$1051, DW_AT_decl_column(0x05)

$C$DW$1052	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1052, DW_AT_name("XBAR_EPWM_MUX07_CLB2_OUT5")
	.dwattr $C$DW$1052, DW_AT_const_value(0xe02)
	.dwattr $C$DW$1052, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1052, DW_AT_decl_line(0x167)
	.dwattr $C$DW$1052, DW_AT_decl_column(0x05)

$C$DW$1053	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1053, DW_AT_name("XBAR_EPWM_MUX07_ADCCEVT4")
	.dwattr $C$DW$1053, DW_AT_const_value(0xe03)
	.dwattr $C$DW$1053, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1053, DW_AT_decl_line(0x168)
	.dwattr $C$DW$1053, DW_AT_decl_column(0x05)

$C$DW$1054	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1054, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH")
	.dwattr $C$DW$1054, DW_AT_const_value(0x1000)
	.dwattr $C$DW$1054, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1054, DW_AT_decl_line(0x169)
	.dwattr $C$DW$1054, DW_AT_decl_column(0x05)

$C$DW$1055	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1055, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L")
	.dwattr $C$DW$1055, DW_AT_const_value(0x1001)
	.dwattr $C$DW$1055, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1055, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$1055, DW_AT_decl_column(0x05)

$C$DW$1056	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1056, DW_AT_name("XBAR_EPWM_MUX08_ADCBEVT1")
	.dwattr $C$DW$1056, DW_AT_const_value(0x1002)
	.dwattr $C$DW$1056, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1056, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$1056, DW_AT_decl_column(0x05)

$C$DW$1057	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1057, DW_AT_name("XBAR_EPWM_MUX08_ECAP5_OUT")
	.dwattr $C$DW$1057, DW_AT_const_value(0x1003)
	.dwattr $C$DW$1057, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1057, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$1057, DW_AT_decl_column(0x05)

$C$DW$1058	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1058, DW_AT_name("XBAR_EPWM_MUX09_CMPSS5_CTRIPL")
	.dwattr $C$DW$1058, DW_AT_const_value(0x1200)
	.dwattr $C$DW$1058, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1058, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$1058, DW_AT_decl_column(0x05)

$C$DW$1059	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1059, DW_AT_name("XBAR_EPWM_MUX09_INPUTXBAR5")
	.dwattr $C$DW$1059, DW_AT_const_value(0x1201)
	.dwattr $C$DW$1059, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1059, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$1059, DW_AT_decl_column(0x05)

$C$DW$1060	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1060, DW_AT_name("XBAR_EPWM_MUX09_CLB3_OUT4")
	.dwattr $C$DW$1060, DW_AT_const_value(0x1202)
	.dwattr $C$DW$1060, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1060, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$1060, DW_AT_decl_column(0x05)

$C$DW$1061	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1061, DW_AT_name("XBAR_EPWM_MUX09_ADCDEVT1")
	.dwattr $C$DW$1061, DW_AT_const_value(0x1203)
	.dwattr $C$DW$1061, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1061, DW_AT_decl_line(0x170)
	.dwattr $C$DW$1061, DW_AT_decl_column(0x05)

$C$DW$1062	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1062, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH")
	.dwattr $C$DW$1062, DW_AT_const_value(0x1400)
	.dwattr $C$DW$1062, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1062, DW_AT_decl_line(0x171)
	.dwattr $C$DW$1062, DW_AT_decl_column(0x05)

$C$DW$1063	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1063, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L")
	.dwattr $C$DW$1063, DW_AT_const_value(0x1401)
	.dwattr $C$DW$1063, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1063, DW_AT_decl_line(0x172)
	.dwattr $C$DW$1063, DW_AT_decl_column(0x05)

$C$DW$1064	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1064, DW_AT_name("XBAR_EPWM_MUX10_ADCBEVT2")
	.dwattr $C$DW$1064, DW_AT_const_value(0x1402)
	.dwattr $C$DW$1064, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1064, DW_AT_decl_line(0x173)
	.dwattr $C$DW$1064, DW_AT_decl_column(0x05)

$C$DW$1065	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1065, DW_AT_name("XBAR_EPWM_MUX10_ECAP6_OUT")
	.dwattr $C$DW$1065, DW_AT_const_value(0x1403)
	.dwattr $C$DW$1065, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1065, DW_AT_decl_line(0x174)
	.dwattr $C$DW$1065, DW_AT_decl_column(0x05)

$C$DW$1066	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1066, DW_AT_name("XBAR_EPWM_MUX11_CMPSS6_CTRIPL")
	.dwattr $C$DW$1066, DW_AT_const_value(0x1600)
	.dwattr $C$DW$1066, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1066, DW_AT_decl_line(0x175)
	.dwattr $C$DW$1066, DW_AT_decl_column(0x05)

$C$DW$1067	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1067, DW_AT_name("XBAR_EPWM_MUX11_INPUTXBAR6")
	.dwattr $C$DW$1067, DW_AT_const_value(0x1601)
	.dwattr $C$DW$1067, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1067, DW_AT_decl_line(0x176)
	.dwattr $C$DW$1067, DW_AT_decl_column(0x05)

$C$DW$1068	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1068, DW_AT_name("XBAR_EPWM_MUX11_CLB3_OUT5")
	.dwattr $C$DW$1068, DW_AT_const_value(0x1602)
	.dwattr $C$DW$1068, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1068, DW_AT_decl_line(0x177)
	.dwattr $C$DW$1068, DW_AT_decl_column(0x05)

$C$DW$1069	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1069, DW_AT_name("XBAR_EPWM_MUX11_ADCDEVT2")
	.dwattr $C$DW$1069, DW_AT_const_value(0x1603)
	.dwattr $C$DW$1069, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1069, DW_AT_decl_line(0x178)
	.dwattr $C$DW$1069, DW_AT_decl_column(0x05)

$C$DW$1070	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1070, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH")
	.dwattr $C$DW$1070, DW_AT_const_value(0x1800)
	.dwattr $C$DW$1070, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1070, DW_AT_decl_line(0x179)
	.dwattr $C$DW$1070, DW_AT_decl_column(0x05)

$C$DW$1071	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1071, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH_OR_L")
	.dwattr $C$DW$1071, DW_AT_const_value(0x1801)
	.dwattr $C$DW$1071, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1071, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$1071, DW_AT_decl_column(0x05)

$C$DW$1072	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1072, DW_AT_name("XBAR_EPWM_MUX12_ADCBEVT3")
	.dwattr $C$DW$1072, DW_AT_const_value(0x1802)
	.dwattr $C$DW$1072, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1072, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$1072, DW_AT_decl_column(0x05)

$C$DW$1073	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1073, DW_AT_name("XBAR_EPWM_MUX13_CMPSS7_CTRIPL")
	.dwattr $C$DW$1073, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$1073, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1073, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$1073, DW_AT_decl_column(0x05)

$C$DW$1074	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1074, DW_AT_name("XBAR_EPWM_MUX13_ADCSOCA")
	.dwattr $C$DW$1074, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$1074, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1074, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$1074, DW_AT_decl_column(0x05)

$C$DW$1075	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1075, DW_AT_name("XBAR_EPWM_MUX13_CLB4_OUT4")
	.dwattr $C$DW$1075, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$1075, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1075, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$1075, DW_AT_decl_column(0x05)

$C$DW$1076	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1076, DW_AT_name("XBAR_EPWM_MUX13_ADCDEVT3")
	.dwattr $C$DW$1076, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$1076, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1076, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$1076, DW_AT_decl_column(0x05)

$C$DW$1077	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1077, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH")
	.dwattr $C$DW$1077, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$1077, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1077, DW_AT_decl_line(0x180)
	.dwattr $C$DW$1077, DW_AT_decl_column(0x05)

$C$DW$1078	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1078, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH_OR_L")
	.dwattr $C$DW$1078, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$1078, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1078, DW_AT_decl_line(0x181)
	.dwattr $C$DW$1078, DW_AT_decl_column(0x05)

$C$DW$1079	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1079, DW_AT_name("XBAR_EPWM_MUX14_ADCBEVT4")
	.dwattr $C$DW$1079, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$1079, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1079, DW_AT_decl_line(0x182)
	.dwattr $C$DW$1079, DW_AT_decl_column(0x05)

$C$DW$1080	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1080, DW_AT_name("XBAR_EPWM_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$1080, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$1080, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1080, DW_AT_decl_line(0x183)
	.dwattr $C$DW$1080, DW_AT_decl_column(0x05)

$C$DW$1081	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1081, DW_AT_name("XBAR_EPWM_MUX15_CMPSS8_CTRIPL")
	.dwattr $C$DW$1081, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$1081, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1081, DW_AT_decl_line(0x184)
	.dwattr $C$DW$1081, DW_AT_decl_column(0x05)

$C$DW$1082	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1082, DW_AT_name("XBAR_EPWM_MUX15_ADCSOCB")
	.dwattr $C$DW$1082, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$1082, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1082, DW_AT_decl_line(0x185)
	.dwattr $C$DW$1082, DW_AT_decl_column(0x05)

$C$DW$1083	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1083, DW_AT_name("XBAR_EPWM_MUX15_CLB4_OUT5")
	.dwattr $C$DW$1083, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$1083, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1083, DW_AT_decl_line(0x186)
	.dwattr $C$DW$1083, DW_AT_decl_column(0x05)

$C$DW$1084	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1084, DW_AT_name("XBAR_EPWM_MUX15_ADCDEVT4")
	.dwattr $C$DW$1084, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$1084, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1084, DW_AT_decl_line(0x187)
	.dwattr $C$DW$1084, DW_AT_decl_column(0x05)

$C$DW$1085	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1085, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$1085, DW_AT_const_value(0x2000)
	.dwattr $C$DW$1085, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1085, DW_AT_decl_line(0x188)
	.dwattr $C$DW$1085, DW_AT_decl_column(0x05)

$C$DW$1086	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1086, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1086, DW_AT_const_value(0x2001)
	.dwattr $C$DW$1086, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1086, DW_AT_decl_line(0x189)
	.dwattr $C$DW$1086, DW_AT_decl_column(0x05)

$C$DW$1087	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1087, DW_AT_name("XBAR_EPWM_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$1087, DW_AT_const_value(0x2200)
	.dwattr $C$DW$1087, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1087, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$1087, DW_AT_decl_column(0x05)

$C$DW$1088	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1088, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$1088, DW_AT_const_value(0x2400)
	.dwattr $C$DW$1088, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1088, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$1088, DW_AT_decl_column(0x05)

$C$DW$1089	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1089, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1089, DW_AT_const_value(0x2401)
	.dwattr $C$DW$1089, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1089, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$1089, DW_AT_decl_column(0x05)

$C$DW$1090	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1090, DW_AT_name("XBAR_EPWM_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$1090, DW_AT_const_value(0x2600)
	.dwattr $C$DW$1090, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1090, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$1090, DW_AT_decl_column(0x05)

$C$DW$1091	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1091, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$1091, DW_AT_const_value(0x2800)
	.dwattr $C$DW$1091, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1091, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$1091, DW_AT_decl_column(0x05)

$C$DW$1092	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1092, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1092, DW_AT_const_value(0x2801)
	.dwattr $C$DW$1092, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1092, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$1092, DW_AT_decl_column(0x05)

$C$DW$1093	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1093, DW_AT_name("XBAR_EPWM_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$1093, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$1093, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1093, DW_AT_decl_line(0x190)
	.dwattr $C$DW$1093, DW_AT_decl_column(0x05)

$C$DW$1094	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1094, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$1094, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$1094, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1094, DW_AT_decl_line(0x191)
	.dwattr $C$DW$1094, DW_AT_decl_column(0x05)

$C$DW$1095	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1095, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1095, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$1095, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1095, DW_AT_decl_line(0x192)
	.dwattr $C$DW$1095, DW_AT_decl_column(0x05)

$C$DW$1096	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1096, DW_AT_name("XBAR_EPWM_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$1096, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$1096, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1096, DW_AT_decl_line(0x193)
	.dwattr $C$DW$1096, DW_AT_decl_column(0x05)

$C$DW$1097	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1097, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$1097, DW_AT_const_value(0x3000)
	.dwattr $C$DW$1097, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1097, DW_AT_decl_line(0x194)
	.dwattr $C$DW$1097, DW_AT_decl_column(0x05)

$C$DW$1098	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1098, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$1098, DW_AT_const_value(0x3001)
	.dwattr $C$DW$1098, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1098, DW_AT_decl_line(0x195)
	.dwattr $C$DW$1098, DW_AT_decl_column(0x05)

$C$DW$1099	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1099, DW_AT_name("XBAR_EPWM_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$1099, DW_AT_const_value(0x3200)
	.dwattr $C$DW$1099, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1099, DW_AT_decl_line(0x196)
	.dwattr $C$DW$1099, DW_AT_decl_column(0x05)

$C$DW$1100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1100, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$1100, DW_AT_const_value(0x3400)
	.dwattr $C$DW$1100, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1100, DW_AT_decl_line(0x197)
	.dwattr $C$DW$1100, DW_AT_decl_column(0x05)

$C$DW$1101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1101, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$1101, DW_AT_const_value(0x3401)
	.dwattr $C$DW$1101, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1101, DW_AT_decl_line(0x198)
	.dwattr $C$DW$1101, DW_AT_decl_column(0x05)

$C$DW$1102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1102, DW_AT_name("XBAR_EPWM_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$1102, DW_AT_const_value(0x3600)
	.dwattr $C$DW$1102, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1102, DW_AT_decl_line(0x199)
	.dwattr $C$DW$1102, DW_AT_decl_column(0x05)

$C$DW$1103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1103, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$1103, DW_AT_const_value(0x3800)
	.dwattr $C$DW$1103, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1103, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$1103, DW_AT_decl_column(0x05)

$C$DW$1104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1104, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$1104, DW_AT_const_value(0x3801)
	.dwattr $C$DW$1104, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1104, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$1104, DW_AT_decl_column(0x05)

$C$DW$1105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1105, DW_AT_name("XBAR_EPWM_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$1105, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$1105, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1105, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$1105, DW_AT_decl_column(0x05)

$C$DW$1106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1106, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$1106, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$1106, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1106, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$1106, DW_AT_decl_column(0x05)

$C$DW$1107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1107, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$1107, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$1107, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1107, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$1107, DW_AT_decl_column(0x05)

$C$DW$1108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1108, DW_AT_name("XBAR_EPWM_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$1108, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$1108, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$1108, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$1108, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$121, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$121

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("XBAR_EPWMMuxConfig")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$1109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1109, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$1109, DW_AT_const_value(0x00)
	.dwattr $C$DW$1109, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1109, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$1109, DW_AT_decl_column(0x05)

$C$DW$1110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1110, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$1110, DW_AT_const_value(0x01)
	.dwattr $C$DW$1110, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1110, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$1110, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$123, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125

$C$DW$T$125	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$1111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1111, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$1111, DW_AT_const_value(0x00)
	.dwattr $C$DW$1111, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1111, DW_AT_decl_line(0x97)
	.dwattr $C$DW$1111, DW_AT_decl_column(0x05)

$C$DW$1112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1112, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$1112, DW_AT_const_value(0x01)
	.dwattr $C$DW$1112, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1112, DW_AT_decl_line(0x98)
	.dwattr $C$DW$1112, DW_AT_decl_column(0x05)

$C$DW$1113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1113, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$1113, DW_AT_const_value(0x02)
	.dwattr $C$DW$1113, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1113, DW_AT_decl_line(0x99)
	.dwattr $C$DW$1113, DW_AT_decl_column(0x05)

$C$DW$1114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1114, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$1114, DW_AT_const_value(0x03)
	.dwattr $C$DW$1114, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1114, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$1114, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$125, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$125

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x01)
$C$DW$1115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1115, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$1115, DW_AT_const_value(0x00)
	.dwattr $C$DW$1115, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1115, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$1115, DW_AT_decl_column(0x05)

$C$DW$1116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1116, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$1116, DW_AT_const_value(0x01)
	.dwattr $C$DW$1116, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1116, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$1116, DW_AT_decl_column(0x05)

$C$DW$1117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1117, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$1117, DW_AT_const_value(0x02)
	.dwattr $C$DW$1117, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1117, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$1117, DW_AT_decl_column(0x05)

$C$DW$1118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1118, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$1118, DW_AT_const_value(0x03)
	.dwattr $C$DW$1118, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1118, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$1118, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$127, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x01)
$C$DW$1119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1119, DW_AT_name("MEMCFG_CLA_MEM_DATA")
	.dwattr $C$DW$1119, DW_AT_const_value(0x00)
	.dwattr $C$DW$1119, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1119, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$1119, DW_AT_decl_column(0x05)

$C$DW$1120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1120, DW_AT_name("MEMCFG_CLA_MEM_PROGRAM")
	.dwattr $C$DW$1120, DW_AT_const_value(0x01)
	.dwattr $C$DW$1120, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1120, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$1120, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$129, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("MemCfg_CLAMemoryType")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x01)
$C$DW$1121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1121, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_ONLY")
	.dwattr $C$DW$1121, DW_AT_const_value(0x00)
	.dwattr $C$DW$1121, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1121, DW_AT_decl_line(0xff)
	.dwattr $C$DW$1121, DW_AT_decl_column(0x05)

$C$DW$1122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1122, DW_AT_name("MEMCFG_LSRAMCONTROLLER_CPU_CLA1")
	.dwattr $C$DW$1122, DW_AT_const_value(0x01)
	.dwattr $C$DW$1122, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$1122, DW_AT_decl_line(0x100)
	.dwattr $C$DW$1122, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$131, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("MemCfg_LSRAMControllerSel")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/memcfg.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$132


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("_HAL_MTR_Obj_")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x12)
$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1123, DW_AT_name("pwmHandle")
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1123, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1123, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$1123, DW_AT_decl_column(0x0d)

$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1124, DW_AT_name("cmpssHandle")
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1124, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1124, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$1124, DW_AT_decl_column(0x0d)

$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1125, DW_AT_name("spiHandle")
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1125, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1125, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$1125, DW_AT_decl_column(0x0d)

$C$DW$1126	.dwtag  DW_TAG_member
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1126, DW_AT_name("qepHandle")
	.dwattr $C$DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1126, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1126, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$1126, DW_AT_decl_column(0x0d)

$C$DW$1127	.dwtag  DW_TAG_member
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$1127, DW_AT_name("flagEnablePWM")
	.dwattr $C$DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1127, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1127, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$1127, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133
$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("HAL_MTR_Obj")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$133, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134

$C$DW$T$134	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x24)
$C$DW$1128	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1128, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$134

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$T$135	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$135, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137
$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("HAL_MTR_Handle")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138
$C$DW$1129	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$137)

$C$DW$T$138	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$1129)

	.dwendtag $C$DW$TU$138


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("_HAL_Obj_")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x22)
$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1130, DW_AT_name("claHandle")
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1130, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1130, DW_AT_decl_line(0x87)
	.dwattr $C$DW$1130, DW_AT_decl_column(0x11)

$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1131, DW_AT_name("timerHandle")
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1131, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1131, DW_AT_decl_line(0x89)
	.dwattr $C$DW$1131, DW_AT_decl_column(0x11)

$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1132, DW_AT_name("sciHandle")
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1132, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1132, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$1132, DW_AT_decl_column(0x11)

$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1133, DW_AT_name("dacHandle")
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1133, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1133, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$1133, DW_AT_decl_column(0x11)

$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1134, DW_AT_name("adcHandle")
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1134, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1134, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$1134, DW_AT_decl_column(0x11)

$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1135, DW_AT_name("adcResult")
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1135, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$1135, DW_AT_decl_line(0x90)
	.dwattr $C$DW$1135, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145
$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("HAL_Obj")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$145, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$145


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146
$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("HAL_Handle")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_decl_file("D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/dual_axis_servo_drive_hal.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$147


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148
$C$DW$1136	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$147)

$C$DW$T$148	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$1136)

	.dwendtag $C$DW$TU$148


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


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152
$C$DW$1137	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$3)

$C$DW$T$152	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$1137)

	.dwendtag $C$DW$TU$152


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


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162
$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$162, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$162


$C$DW$TU$163	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$163
$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("int16_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$163, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$163


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$166	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$166
$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$166, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$166


$C$DW$TU$167	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$167
$C$DW$T$167	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$167, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$167, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$167


$C$DW$TU$238	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$238
$C$DW$1138	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1138, DW_AT_type(*$C$DW$T$167)

$C$DW$T$238	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$238, DW_AT_type(*$C$DW$1138)

	.dwendtag $C$DW$TU$238


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$1139	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1139, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$1140	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1140, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x08)
$C$DW$1141	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1141, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$244	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$244
$C$DW$1142	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1142, DW_AT_type(*$C$DW$T$20)

$C$DW$T$244	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$1142)

	.dwendtag $C$DW$TU$244


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139
$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("size_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$139, DW_AT_decl_file("D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/stdlib.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140
$C$DW$1143	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1143, DW_AT_type(*$C$DW$T$139)

$C$DW$T$140	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$1143)

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


$C$DW$TU$247	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$247
$C$DW$1144	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1144, DW_AT_type(*$C$DW$T$16)

$C$DW$T$247	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$1144)

	.dwendtag $C$DW$TU$247


$C$DW$TU$226	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$226
$C$DW$T$226	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$226, DW_AT_name("float32_t")
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$226, DW_AT_decl_file("D:\TI\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$226, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$226, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$226


$C$DW$TU$227	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$227
$C$DW$1145	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1145, DW_AT_type(*$C$DW$T$226)

$C$DW$T$227	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$1145)

	.dwendtag $C$DW$TU$227


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$248	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$248
$C$DW$T$248	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$248, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$248


$C$DW$TU$249	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$249
$C$DW$1146	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1146, DW_AT_type(*$C$DW$T$248)

$C$DW$T$249	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$249, DW_AT_type(*$C$DW$1146)

	.dwendtag $C$DW$TU$249


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$250	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$250
$C$DW$T$250	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$250, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$250, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$250


$C$DW$TU$251	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$251
$C$DW$1147	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1147, DW_AT_type(*$C$DW$T$250)

$C$DW$T$251	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$1147)

	.dwendtag $C$DW$TU$251


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$22, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$22, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$22

