;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.2.LTS *
;* Date/Time created: Sat Jan 24 00:10:59 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.2.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\JUNLI\workspace_ccstheia\fcl_f2837x_tmdxiddk\f2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("PM_tformat_generateCRCTable")
	.dwattr $C$DW$1, DW_AT_linkage_name("PM_tformat_generateCRCTable")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$89)

	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("PM_tformat_setupPeriph")
	.dwattr $C$DW$5, DW_AT_linkage_name("PM_tformat_setupPeriph")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("PM_tformat_setFreq")
	.dwattr $C$DW$6, DW_AT_linkage_name("PM_tformat_setFreq")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x2b7)
	.dwattr $C$DW$6, DW_AT_decl_column(0x06)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("SPI_disableInterrupt")
	.dwattr $C$DW$8, DW_AT_linkage_name("SPI_disableInterrupt")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x5eb)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$63)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$11, DW_AT_linkage_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x61e)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$63)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("SPI_enableInterrupt")
	.dwattr $C$DW$14, DW_AT_linkage_name("SPI_enableInterrupt")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x5d3)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$63)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$17, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$19, DW_AT_linkage_name("GPIO_setControllerCore")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x3d2)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$63)

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$55)

	.dwendtag $C$DW$19


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$22, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x405)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$63)

	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$24, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x396)
	.dwattr $C$DW$24, DW_AT_decl_column(0x01)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$63)

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$53)

	.dwendtag $C$DW$24


$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$27, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x326)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$63)

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$51)

	.dwendtag $C$DW$27


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("XBAR_setCLBMuxConfig")
	.dwattr $C$DW$30, DW_AT_linkage_name("XBAR_setCLBMuxConfig")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x4fb)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0d)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$45)

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$49)

	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$33, DW_AT_linkage_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x49d)
	.dwattr $C$DW$33, DW_AT_decl_column(0x01)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$41)

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$47)

	.dwendtag $C$DW$33


$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("readTformatEncPosition")
	.dwattr $C$DW$36, DW_AT_linkage_name("readTformatEncPosition")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/include/fcl_tformat_f2837x_config.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x44)
	.dwattr $C$DW$36, DW_AT_decl_column(0x14)
	.dwendtag $C$DW$36


$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$37, DW_AT_linkage_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$94)

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$20)

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$20)

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$37


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$43, DW_AT_linkage_name("PM_tformat_startOperation")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x31d)
	.dwattr $C$DW$43, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$43


$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$44, DW_AT_linkage_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x398)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$44


$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("PM_tformat_receiveDataID2")
	.dwattr $C$DW$45, DW_AT_linkage_name("PM_tformat_receiveDataID2")
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x374)
	.dwattr $C$DW$45, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$45


$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("PM_tformat_receiveDataID0_1_7_8_C")
	.dwattr $C$DW$46, DW_AT_linkage_name("PM_tformat_receiveDataID0_1_7_8_C")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x350)
	.dwattr $C$DW$46, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$46


$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("PM_tformat_setupCommandReadEEPROM")
	.dwattr $C$DW$47, DW_AT_linkage_name("PM_tformat_setupCommandReadEEPROM")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x2f9)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$47


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("PM_tformat_setupCommandWriteEEPROM")
	.dwattr $C$DW$49, DW_AT_linkage_name("PM_tformat_setupCommandWriteEEPROM")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x30c)
	.dwattr $C$DW$49, DW_AT_decl_column(0x06)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$49


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("PM_tformat_receiveDataIDD")
	.dwattr $C$DW$52, DW_AT_linkage_name("PM_tformat_receiveDataIDD")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x3be)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("PM_tformat_receiveDataID6")
	.dwattr $C$DW$53, DW_AT_linkage_name("PM_tformat_receiveDataID6")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x3e4)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$53


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("__eallow")
	.dwattr $C$DW$54, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("__edis")
	.dwattr $C$DW$55, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
	.dwendtag $C$DW$55

	.global	||tformatRxData||
||tformatRxData||:	.usect	".bss:tformatRxData",12,0,0
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("tformatRxData")
	.dwattr $C$DW$56, DW_AT_linkage_name("tformatRxData")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||tformatRxData||]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x40)
	.dwattr $C$DW$56, DW_AT_decl_column(0x13)

	.global	||tformatData||
	.bss	||tformatData||,17,1,0
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("tformatData")
	.dwattr $C$DW$57, DW_AT_linkage_name("tformatData")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||tformatData||]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$57, DW_AT_decl_column(0x17)

	.global	||tformatCRCtable||
||tformatCRCtable||:	.usect	".bss:tformatCRCtable",256,0,0
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("tformatCRCtable")
	.dwattr $C$DW$58, DW_AT_linkage_name("tformatCRCtable")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||tformatCRCtable||]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0x39)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0a)

	.sblock	".bss"
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\opt2000.exe C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{35792F95-E128-4593-88D2-FCE52490D43F} C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{C2A7E472-FE56-4931-AC99-15C3FC57A9D1} 
;	D:\TI\ccs\ccs\tools\compiler\ti-cgt-c2000_22.6.2.LTS\bin\acia2000.exe -@C:\\Users\\JUNLI\\AppData\\Local\\Temp\\{BC3C8804-17A3-4343-BF4B-81E4C1636DDD} 
	.sect	".text:tformat_setupGPIO"
	.clink
	.global	||tformat_setupGPIO||

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("tformat_setupGPIO")
	.dwattr $C$DW$59, DW_AT_low_pc(||tformat_setupGPIO||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("tformat_setupGPIO")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x86)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 135,column 1,is_stmt,address ||tformat_setupGPIO||,isa 0

	.dwfde $C$DW$CIE, ||tformat_setupGPIO||

;***************************************************************
;* FNAME: tformat_setupGPIO             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_setupGPIO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 141,column 5,is_stmt,isa 0
        MOVB      ACC,#7                ; [CPU_ALU] |141| 
        MOVB      XAR4,#0               ; [CPU_ALU] |141| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |141| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |141| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 142,column 5,is_stmt,isa 0
        MOVL      XAR4,#396801          ; [CPU_ARAU] |142| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |142| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |142| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |142| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 148,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |148| 
        MOVB      ACC,#24               ; [CPU_ALU] |148| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |148| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |148| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 149,column 5,is_stmt,isa 0
        MOVL      XAR4,#528390          ; [CPU_ARAU] |149| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |149| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |149| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |149| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 150,column 5,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |150| 
        MOVB      ACC,#24               ; [CPU_ALU] |150| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |150| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |150| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 155,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |155| 
        MOVB      ACC,#25               ; [CPU_ALU] |155| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |155| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |155| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 156,column 5,is_stmt,isa 0
        MOVL      XAR4,#528902          ; [CPU_ARAU] |156| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |156| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |156| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |156| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 157,column 5,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |157| 
        MOVB      ACC,#25               ; [CPU_ALU] |157| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |157| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |157| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 163,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |163| 
        MOVB      ACC,#26               ; [CPU_ALU] |163| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |163| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |163| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 164,column 5,is_stmt,isa 0
        MOVL      XAR4,#529414          ; [CPU_ARAU] |164| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |164| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |164| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |164| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 165,column 5,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |165| 
        MOVB      ACC,#26               ; [CPU_ALU] |165| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |165| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |165| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 170,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |170| 
        MOVB      ACC,#27               ; [CPU_ALU] |170| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |170| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |170| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 171,column 5,is_stmt,isa 0
        MOVL      XAR4,#529926          ; [CPU_ARAU] |171| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |171| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |171| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |171| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 172,column 5,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |172| 
        MOVB      ACC,#27               ; [CPU_ALU] |172| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |172| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |172| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 178,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |178| 
        MOVB      ACC,#34               ; [CPU_ALU] |178| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |178| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |178| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 179,column 5,is_stmt,isa 0
        MOV       AL,#1025              ; [CPU_ALU] |179| 
        MOV       AH,#70                ; [CPU_ALU] |179| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |179| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |179| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 184,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |184| 
        MOVB      ACC,#32               ; [CPU_ALU] |184| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |184| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |184| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 185,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |185| 
        MOVB      ACC,#32               ; [CPU_ALU] |185| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |185| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |185| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0xba)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:tformat_configEPWM4"
	.clink
	.global	||tformat_configEPWM4||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("tformat_configEPWM4")
	.dwattr $C$DW$79, DW_AT_low_pc(||tformat_configEPWM4||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("tformat_configEPWM4")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x121)
	.dwattr $C$DW$79, DW_AT_decl_column(0x06)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 290,column 1,is_stmt,address ||tformat_configEPWM4||,isa 0

	.dwfde $C$DW$CIE, ||tformat_configEPWM4||

;***************************************************************
;* FNAME: tformat_configEPWM4           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_configEPWM4||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4103,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4103| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4384)        ; [CPU_ALU] |4104| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |4104| 
        ORB       AL,#0x01              ; [CPU_ALU] |4104| 
        MOV       *(0:0x4384),AL        ; [CPU_ALU] |4104| 
        MOV       AL,*(0:0x4384)        ; [CPU_ALU] |4104| 
        AND       AL,AL,#0xfff7         ; [CPU_ALU] |4104| 
        ORB       AL,#0x04              ; [CPU_ALU] |4104| 
        MOV       *(0:0x4384),AL        ; [CPU_ALU] |4104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x439b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x439b),AL        ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x138)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:tformat_configXBAR"
	.clink
	.global	||tformat_configXBAR||

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("tformat_configXBAR")
	.dwattr $C$DW$81, DW_AT_low_pc(||tformat_configXBAR||)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_linkage_name("tformat_configXBAR")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$81, DW_AT_decl_column(0x06)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 189,column 1,is_stmt,address ||tformat_configXBAR||,isa 0

	.dwfde $C$DW$CIE, ||tformat_configXBAR||

;***************************************************************
;* FNAME: tformat_configXBAR            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_configXBAR||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 969,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |969| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 971,column 5,is_stmt,isa 0
        MOVB      AL,#24                ; [CPU_ALU] |971| 
        MOV       *(0:0x7900),AL        ; [CPU_ALU] |971| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 973,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |973| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 194,column 5,is_stmt,isa 0
        MOV       AH,#513               ; [CPU_ALU] |194| 
        MOVB      AL,#0                 ; [CPU_ALU] |194| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("XBAR_setCLBMuxConfig")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #||XBAR_setCLBMuxConfig|| ; [CPU_ALU] |194| 
        ; call occurs [#||XBAR_setCLBMuxConfig||] ; [] |194| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 1073,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1073| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 1075,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a60)       ; [CPU_FPU] |1075| 
        ORB       AL,#0x02              ; [CPU_ALU] |1075| 
        MOV32     *(0:0x7a60),ACC       ; [CPU_FPU] |1075| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 1077,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1077| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 200,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |200| 
        MOV       AH,#6658              ; [CPU_ALU] |200| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #||XBAR_setOutputMuxConfig|| ; [CPU_ALU] |200| 
        ; call occurs [#||XBAR_setOutputMuxConfig||] ; [] |200| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 654,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |654| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 656,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7aa0)       ; [CPU_FPU] |656| 
        OR        AL,#8192              ; [CPU_ALU] |656| 
        MOV32     *(0:0x7aa0),ACC       ; [CPU_FPU] |656| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 658,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |658| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0xca)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text:tformat_configCLBConnect"
	.clink
	.global	||tformat_configCLBConnect||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("tformat_configCLBConnect")
	.dwattr $C$DW$85, DW_AT_low_pc(||tformat_configCLBConnect||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("tformat_configCLBConnect")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$85, DW_AT_decl_column(0x06)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 205,column 1,is_stmt,address ||tformat_configCLBConnect||,isa 0

	.dwfde $C$DW$CIE, ||tformat_configCLBConnect||

;***************************************************************
;* FNAME: tformat_configCLBConnect      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_configCLBConnect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 811,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d12)       ; [CPU_FPU] |811| 
        MOV32     *(0:0x3d12),ACC       ; [CPU_FPU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 712,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d0a)       ; [CPU_FPU] |712| 
        AND       AL,#65504             ; [CPU_ALU] |712| 
        MOV32     *(0:0x3d0a),ACC       ; [CPU_FPU] |712| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 647,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |647| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 767,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d14)       ; [CPU_FPU] |767| 
        AND       AL,#65408             ; [CPU_ALU] |767| 
        MOV32     *(0:0x3d14),ACC       ; [CPU_FPU] |767| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 619,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d08)        ; [CPU_ALU] |619| 
        ORB       AL,#0x01              ; [CPU_ALU] |619| 
        MOV       *(0:0x3d08),AL        ; [CPU_ALU] |619| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 547,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d06)        ; [CPU_ALU] |547| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |547| 
        ORB       AL,#0x01              ; [CPU_ALU] |547| 
        MOV       *(0:0x3d06),AL        ; [CPU_ALU] |547| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 712,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d0a)       ; [CPU_FPU] |712| 
        AND       AL,#64543             ; [CPU_ALU] |712| 
        MOV32     *(0:0x3d0a),ACC       ; [CPU_FPU] |712| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 767,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d14)       ; [CPU_FPU] |767| 
        AND       AL,#57471             ; [CPU_ALU] |767| 
        OR        AL,#8192              ; [CPU_ALU] |767| 
        MOV32     *(0:0x3d14),ACC       ; [CPU_FPU] |767| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 619,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d08)        ; [CPU_ALU] |619| 
        AND       AL,#0xfffd            ; [CPU_ALU] |619| 
        MOV       *(0:0x3d08),AL        ; [CPU_ALU] |619| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 570,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d07)        ; [CPU_ALU] |570| 
        ORB       AL,#0x02              ; [CPU_ALU] |570| 
        MOV       *(0:0x3d07),AL        ; [CPU_ALU] |570| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 547,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d06)        ; [CPU_ALU] |547| 
        AND       AL,AL,#0xfffb         ; [CPU_ALU] |547| 
        ORB       AL,#0x08              ; [CPU_ALU] |547| 
        MOV       *(0:0x3d06),AL        ; [CPU_ALU] |547| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 723,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d0c)       ; [CPU_FPU] |723| 
        AND       AL,#32767             ; [CPU_ALU] |723| 
        AND       AH,#65520             ; [CPU_ALU] |723| 
        MOV32     *(0:0x3d0c),ACC       ; [CPU_FPU] |723| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 775,column 9,is_stmt,isa 0
        MOV32     ACC,*(0:0x3d16)       ; [CPU_FPU] |775| 
        AND       AH,#61471             ; [CPU_ALU] |775| 
        MOV32     *(0:0x3d16),ACC       ; [CPU_FPU] |775| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 619,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d08)        ; [CPU_ALU] |619| 
        ORB       AL,#0x80              ; [CPU_ALU] |619| 
        MOV       *(0:0x3d08),AL        ; [CPU_ALU] |619| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 547,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d06)        ; [CPU_ALU] |547| 
        AND       AL,#0x3fff            ; [CPU_ALU] |547| 
        MOV       *(0:0x3d06),AL        ; [CPU_ALU] |547| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 647,column 5,is_stmt,isa 0
        MOV32     *(0:0x3d10),XAR6      ; [CPU_FPU] |647| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 462,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |462| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 463,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x3d00)        ; [CPU_ALU] |463| 
        AND       AL,#0xfffd            ; [CPU_ALU] |463| 
        MOV       *(0:0x3d00),AL        ; [CPU_ALU] |463| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h",line 464,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |464| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:tformat_init"
	.clink
	.global	||tformat_init||

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("tformat_init")
	.dwattr $C$DW$87, DW_AT_low_pc(||tformat_init||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("tformat_init")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x45)
	.dwattr $C$DW$87, DW_AT_decl_column(0x06)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 70,column 1,is_stmt,address ||tformat_init||,isa 0

	.dwfde $C$DW$CIE, ||tformat_init||

;***************************************************************
;* FNAME: tformat_init                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381734          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 77,column 5,is_stmt,isa 0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("tformat_configEPWM4")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||tformat_configEPWM4|| ; [CPU_ALU] |77| 
        ; call occurs [#||tformat_configEPWM4||] ; [] |77| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 82,column 5,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |82| 
        MOVL      XAR4,#||tformatCRCtable|| ; [CPU_ARAU] |82| 
        MOVB      AL,#8                 ; [CPU_ALU] |82| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("PM_tformat_generateCRCTable")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||PM_tformat_generateCRCTable|| ; [CPU_ALU] |82| 
        ; call occurs [#||PM_tformat_generateCRCTable||] ; [] |82| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 89,column 5,is_stmt,isa 0
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("tformat_setupGPIO")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||tformat_setupGPIO|| ; [CPU_ALU] |89| 
        ; call occurs [#||tformat_setupGPIO||] ; [] |89| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 94,column 5,is_stmt,isa 0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("tformat_configXBAR")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #||tformat_configXBAR|| ; [CPU_ALU] |94| 
        ; call occurs [#||tformat_configXBAR||] ; [] |94| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 96,column 5,is_stmt,isa 0
        MOV       AL,#61568             ; [CPU_ALU] |96| 
        MOV       AH,#762               ; [CPU_ALU] |96| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("PM_tformat_setupPeriph")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #||PM_tformat_setupPeriph|| ; [CPU_ALU] |96| 
        ; call occurs [#||PM_tformat_setupPeriph||] ; [] |96| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 97,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |97| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("PM_tformat_setFreq")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #||PM_tformat_setFreq|| ; [CPU_ALU] |97| 
        ; call occurs [#||PM_tformat_setFreq||] ; [] |97| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 98,column 5,is_stmt,isa 0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("tformat_configCLBConnect")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||tformat_configCLBConnect|| ; [CPU_ALU] |98| 
        ; call occurs [#||tformat_configCLBConnect||] ; [] |98| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 486,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x6110)       ; [CPU_ALU] |486| 
        AND       AR6,#0xff7f           ; [CPU_ALU] |486| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 104,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |104| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |104| 
        MOV       ACC,#24848            ; [CPU_ALU] |104| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 486,column 5,is_stmt,isa 0
        MOV       *(0:0x6110),AR6       ; [CPU_ALU] |486| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 104,column 5,is_stmt,isa 0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("SPI_disableInterrupt")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #||SPI_disableInterrupt|| ; [CPU_ALU] |104| 
        ; call occurs [#||SPI_disableInterrupt||] ; [] |104| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 109,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |109| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |109| 
        MOV       ACC,#24848            ; [CPU_ALU] |109| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||SPI_clearInterruptStatus|| ; [CPU_ALU] |109| 
        ; call occurs [#||SPI_clearInterruptStatus||] ; [] |109| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 110,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |110| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |110| 
        MOV       ACC,#24848            ; [CPU_ALU] |110| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("SPI_enableInterrupt")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||SPI_enableInterrupt|| ; [CPU_ALU] |110| 
        ; call occurs [#||SPI_enableInterrupt||] ; [] |110| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 463,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6110)        ; [CPU_ALU] |463| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |473| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 463,column 5,is_stmt,isa 0
        ORB       AL,#0x80              ; [CPU_ALU] |463| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 121,column 5,is_stmt,isa 0
        MOV       AH,#915               ; [CPU_ALU] |121| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 463,column 5,is_stmt,isa 0
        MOV       *(0:0x6110),AL        ; [CPU_ALU] |463| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 121,column 5,is_stmt,isa 0
        MOV       AL,#34558             ; [CPU_ALU] |121| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0a),XAR6      ; [CPU_FPU] |473| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 121,column 5,is_stmt,isa 0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |121| 
        ; call occurs [#||SysCtl_delay||] ; [] |121| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x84)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:tformat_exCommands"
	.clink
	.global	||tformat_exCommands||

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("tformat_exCommands")
	.dwattr $C$DW$100, DW_AT_low_pc(||tformat_exCommands||)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_linkage_name("tformat_exCommands")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 335,column 1,is_stmt,address ||tformat_exCommands||,isa 0

	.dwfde $C$DW$CIE, ||tformat_exCommands||

;***************************************************************
;* FNAME: tformat_exCommands            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||tformat_exCommands||:
;* AR1   assigned to retval1
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("retval1")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 340,column 5,is_stmt,isa 0
        MOV       AL,#38463             ; [CPU_ALU] |340| 
        MOVB      XAR4,#11              ; [CPU_ALU] |340| 
        MOVB      XAR5,#11              ; [CPU_ALU] |340| 
        MOVB      AH,#110               ; [CPU_ALU] |340| 
        MOVB      *-SP[1],#12,UNC       ; [CPU_ALU] |340| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadoutOrReset|| ; [CPU_ALU] |340| 
        ; call occurs [#||PM_tformat_setupCommandReadoutOrReset||] ; [] |340| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 345,column 5,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |345| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |345| 
||$C$L1||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 346,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |346| 
        CMPB      AL,#1                 ; [CPU_ALU] |346| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 347,column 5,is_stmt,isa 0
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("PM_tformat_receiveDataID3")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID3|| ; [CPU_ALU] |347| 
        ; call occurs [#||PM_tformat_receiveDataID3||] ; [] |347| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 348,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |348| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |348| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |348| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
 ESTOP0
||$C$L2||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 353,column 5,is_stmt,isa 0
        MOVB      *-SP[1],#5,UNC        ; [CPU_ALU] |353| 
        MOV       AL,#37503             ; [CPU_ALU] |353| 
        MOVB      XAR4,#4               ; [CPU_ALU] |353| 
        MOVB      XAR5,#11              ; [CPU_ALU] |353| 
        MOVB      AH,#40                ; [CPU_ALU] |353| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadoutOrReset|| ; [CPU_ALU] |353| 
        ; call occurs [#||PM_tformat_setupCommandReadoutOrReset||] ; [] |353| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 358,column 5,is_stmt,isa 0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |358| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |358| 
||$C$L3||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 359,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |359| 
        CMPB      AL,#1                 ; [CPU_ALU] |359| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |359| 
        ; branchcc occurs ; [] |359| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 360,column 5,is_stmt,isa 0
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("PM_tformat_receiveDataID2")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID2|| ; [CPU_ALU] |360| 
        ; call occurs [#||PM_tformat_receiveDataID2||] ; [] |360| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 361,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |361| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |361| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |361| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
 ESTOP0
||$C$L4||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 366,column 5,is_stmt,isa 0
        MOV       ACC,#1598             ; [CPU_ALU] |366| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |366| 
        ; call occurs [#||SysCtl_delay||] ; [] |366| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 367,column 5,is_stmt,isa 0
        MOVB      *-SP[1],#7,UNC        ; [CPU_ALU] |367| 
        MOV       AL,#36927             ; [CPU_ALU] |367| 
        MOVB      XAR4,#6               ; [CPU_ALU] |367| 
        MOVB      XAR5,#11              ; [CPU_ALU] |367| 
        MOVB      AH,#60                ; [CPU_ALU] |367| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadoutOrReset|| ; [CPU_ALU] |367| 
        ; call occurs [#||PM_tformat_setupCommandReadoutOrReset||] ; [] |367| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 372,column 5,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |372| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |372| 
||$C$L5||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 373,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |373| 
        CMPB      AL,#1                 ; [CPU_ALU] |373| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 374,column 5,is_stmt,isa 0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("PM_tformat_receiveDataID0_1_7_8_C")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID0_1_7_8_C|| ; [CPU_ALU] |374| 
        ; call occurs [#||PM_tformat_receiveDataID0_1_7_8_C||] ; [] |374| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 375,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |375| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |375| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |375| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
 ESTOP0
||$C$L6||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 380,column 5,is_stmt,isa 0
        MOV       ACC,#1598             ; [CPU_ALU] |380| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |380| 
        ; call occurs [#||SysCtl_delay||] ; [] |380| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 381,column 5,is_stmt,isa 0
        MOVB      *-SP[1],#7,UNC        ; [CPU_ALU] |381| 
        MOV       AL,#38015             ; [CPU_ALU] |381| 
        MOVB      XAR4,#6               ; [CPU_ALU] |381| 
        MOVB      XAR5,#11              ; [CPU_ALU] |381| 
        MOVB      AH,#60                ; [CPU_ALU] |381| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("PM_tformat_setupCommandReadoutOrReset")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadoutOrReset|| ; [CPU_ALU] |381| 
        ; call occurs [#||PM_tformat_setupCommandReadoutOrReset||] ; [] |381| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 386,column 5,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |386| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |386| 
||$C$L7||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 387,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |387| 
        CMPB      AL,#1                 ; [CPU_ALU] |387| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 388,column 5,is_stmt,isa 0
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("PM_tformat_receiveDataID0_1_7_8_C")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID0_1_7_8_C|| ; [CPU_ALU] |388| 
        ; call occurs [#||PM_tformat_receiveDataID0_1_7_8_C||] ; [] |388| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 389,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |389| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |389| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |389| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |389| 
        ; branchcc occurs ; [] |389| 
 ESTOP0
||$C$L8||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 394,column 5,is_stmt,isa 0
        MOV       ACC,#1598             ; [CPU_ALU] |394| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |394| 
        ; call occurs [#||SysCtl_delay||] ; [] |394| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 396,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |396| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("PM_tformat_setupCommandReadEEPROM")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadEEPROM|| ; [CPU_ALU] |396| 
        ; call occurs [#||PM_tformat_setupCommandReadEEPROM||] ; [] |396| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 397,column 5,is_stmt,isa 0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |397| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |397| 
||$C$L9||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 398,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |398| 
        CMPB      AL,#1                 ; [CPU_ALU] |398| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |398| 
        ; branchcc occurs ; [] |398| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 399,column 5,is_stmt,isa 0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("PM_tformat_receiveDataIDD")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataIDD|| ; [CPU_ALU] |399| 
        ; call occurs [#||PM_tformat_receiveDataIDD||] ; [] |399| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 400,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |400| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |400| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |400| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
 ESTOP0
||$C$L10||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 405,column 5,is_stmt,isa 0
        MOVL      XAR4,#719998          ; [CPU_ARAU] |405| 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      ACC,XAR4              ; [CPU_ALU] |405| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |405| 
        ; call occurs [#||SysCtl_delay||] ; [] |405| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 407,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |407| 
        MOVB      AH,#35                ; [CPU_ALU] |407| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("PM_tformat_setupCommandWriteEEPROM")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandWriteEEPROM|| ; [CPU_ALU] |407| 
        ; call occurs [#||PM_tformat_setupCommandWriteEEPROM||] ; [] |407| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 408,column 5,is_stmt,isa 0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |408| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |408| 
||$C$L11||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 409,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |409| 
        CMPB      AL,#1                 ; [CPU_ALU] |409| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |409| 
        ; branchcc occurs ; [] |409| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 410,column 5,is_stmt,isa 0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("PM_tformat_receiveDataID6")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataID6|| ; [CPU_ALU] |410| 
        ; call occurs [#||PM_tformat_receiveDataID6||] ; [] |410| 
        MOVW      DP,#||tformatData||+10 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 411,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |411| 
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |411| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |411| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |411| 
        ; branchcc occurs ; [] |411| 
 ESTOP0
||$C$L12||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 416,column 5,is_stmt,isa 0
        MOVL      XAR4,#719998          ; [CPU_ARAU] |416| 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      ACC,XAR4              ; [CPU_ALU] |416| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |416| 
        ; call occurs [#||SysCtl_delay||] ; [] |416| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 418,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |418| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("PM_tformat_setupCommandReadEEPROM")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #||PM_tformat_setupCommandReadEEPROM|| ; [CPU_ALU] |418| 
        ; call occurs [#||PM_tformat_setupCommandReadEEPROM||] ; [] |418| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 419,column 5,is_stmt,isa 0
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("PM_tformat_startOperation")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #||PM_tformat_startOperation|| ; [CPU_ALU] |419| 
        ; call occurs [#||PM_tformat_startOperation||] ; [] |419| 
||$C$L13||:    
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 420,column 11,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+15 ; [CPU_ALU] |420| 
        CMPB      AL,#1                 ; [CPU_ALU] |420| 
        B         ||$C$L13||,NEQ        ; [CPU_ALU] |420| 
        ; branchcc occurs ; [] |420| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 421,column 5,is_stmt,isa 0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("PM_tformat_receiveDataIDD")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||PM_tformat_receiveDataIDD|| ; [CPU_ALU] |421| 
        ; call occurs [#||PM_tformat_receiveDataIDD||] ; [] |421| 
        MOVW      DP,#||tformatData||+11 ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 422,column 5,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(||tformatData||)+11 ; [CPU_ALU] |422| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 421,column 5,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_ALU] |421| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 422,column 5,is_stmt,isa 0
        MOVU      ACC,@$BLOCKED(||tformatData||)+10 ; [CPU_ALU] |422| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |422| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |422| 
        ; branchcc occurs ; [] |422| 
 ESTOP0
||$C$L14||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 427,column 5,is_stmt,isa 0
        MOV       ACC,#1598             ; [CPU_ALU] |427| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |427| 
        ; call occurs [#||SysCtl_delay||] ; [] |427| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 428,column 5,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |428| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x1ad)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x05)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text:tformat_error"
	.clink
	.global	||tformat_error||

$C$DW$130	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$130, DW_AT_name("tformat_error")
	.dwattr $C$DW$130, DW_AT_low_pc(||tformat_error||)
	.dwattr $C$DW$130, DW_AT_high_pc(0x00)
	.dwattr $C$DW$130, DW_AT_linkage_name("tformat_error")
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$130, DW_AT_decl_line(0x109)
	.dwattr $C$DW$130, DW_AT_decl_column(0x06)
	.dwattr $C$DW$130, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 266,column 1,is_stmt,address ||tformat_error||,isa 0

	.dwfde $C$DW$CIE, ||tformat_error||

;***************************************************************
;* FNAME: tformat_error                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_error||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 ESTOP0
||$C$L15||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 268,column 5,is_stmt,isa 0
        B         ||$C$L15||,UNC        ; [CPU_ALU] |268| 
        ; branch occurs ; [] |268| 
	.dwattr $C$DW$130, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$130, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$130, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$130

	.sect	".text:tformat_checkCRC"
	.clink
	.global	||tformat_checkCRC||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("tformat_checkCRC")
	.dwattr $C$DW$131, DW_AT_low_pc(||tformat_checkCRC||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("tformat_checkCRC")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 315,column 1,is_stmt,address ||tformat_checkCRC||,isa 0

	.dwfde $C$DW$CIE, ||tformat_checkCRC||
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("expectCRC5")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg0]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("receiveCRC5")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: tformat_checkCRC              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||tformat_checkCRC||:
;* AH    assigned to receiveCRC5
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("receiveCRC5")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 318,column 9,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |318| 
        MOVU      ACC,AH                ; [CPU_ALU] |318| 
        MOVB      XAR6,#0               ; [CPU_ALU] |318| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |318| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |318| 
        MOV       AL,AR6                ; [CPU_ALU] |318| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:spiRxFIFOISR"
	.retain
	.retainrefs
	.global	||spiRxFIFOISR||

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("spiRxFIFOISR")
	.dwattr $C$DW$136, DW_AT_low_pc(||spiRxFIFOISR||)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_linkage_name("spiRxFIFOISR")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_decl_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x110)
	.dwattr $C$DW$136, DW_AT_decl_column(0x10)
	.dwattr $C$DW$136, DW_AT_TI_interrupt
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-28)
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 273,column 1,is_stmt,address ||spiRxFIFOISR||,isa 0

	.dwfde $C$DW$CIE, ||spiRxFIFOISR||

;***************************************************************
;* FNAME: spiRxFIFOISR                  FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

||spiRxFIFOISR||:
;* AR6   assigned to $O$C2
;* AL    assigned to $O$R1
;* AL    assigned to $O$R1
;* AL    assigned to $O$R1
;* AR4   assigned to $O$U22
;* AR7   assigned to $O$V0
;* AR0   assigned to i
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("i")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg4]

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
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -28
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
        MOVW      DP,#||tformatData||+16 ; [CPU_ARAU] 
        MOVZ      AR7,@$BLOCKED(||tformatData||)+16 ; [CPU_ALU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 276,column 16,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |276| 
        ADD       AL,AR7                ; [CPU_ALU] |276| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |276| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 276,column 9,is_stmt,isa 0
        MOVB      XAR0,#0,EQ            ; [CPU_ALU] |276| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 276,column 44,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||tformatData||)+16 ; [CPU_ALU] |276| 
        ADDB      AL,#1                 ; [CPU_ALU] |276| 
        LSR       AL,1                  ; [CPU_ALU] |276| 
        MOVZ      AR6,AL                ; [CPU_ALU] |276| 
        MOVL      XAR4,#||tformatRxData|| ; [CPU_ARAU] 
        MOV       ACC,AR6 << #1         ; [CPU_ALU] |276| 
        MOVZ      AR0,AL                ; [CPU_ALU] |276| 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 276,column 16,is_stmt,isa 0
        RPTB      ||$C$L17||,AR6        ; [CPU_ALU] |276| 
        ; repeat block starts ; [] 
||$C$L16||:    
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 852,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6117)        ; [CPU_ALU] |852| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 278,column 9,is_stmt,isa 0
        ANDB      AL,#255               ; [CPU_ALU] |278| 
        MOV       *XAR4++,AL            ; [CPU_ALU] |278| 
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 852,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6117)        ; [CPU_ALU] |852| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 278,column 9,is_stmt,isa 0
        ANDB      AL,#255               ; [CPU_ALU] |278| 
        MOV       *XAR4++,AL            ; [CPU_ALU] |278| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ; repeat block ends ; [] 
||$C$L17||:    
        TBIT      AR7,#0                ; [CPU_ALU] 
        B         ||$C$L18||,TC         ; [CPU_ALU] 
        ; branchcc occurs ; [] 
; Peeled loop iterations for unrolled loop:
	.dwpsn	file "C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/spi.h",line 852,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6117)        ; [CPU_ALU] |852| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 278,column 9,is_stmt,isa 0
        MOVL      XAR4,#||tformatRxData|| ; [CPU_ARAU] |278| 
        ANDB      AL,#255               ; [CPU_ALU] |278| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |278| 
||$C$L18||:    
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 281,column 5,is_stmt,isa 0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("readTformatEncPosition")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #||readTformatEncPosition|| ; [CPU_ALU] |281| 
        ; call occurs [#||readTformatEncPosition||] ; [] |281| 
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 283,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |283| 
        MOVL      XAR4,#24848           ; [CPU_ARAU] |283| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |283| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |283| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #||SPI_clearInterruptStatus|| ; [CPU_ALU] |283| 
        ; call occurs [#||SPI_clearInterruptStatus||] ; [] |283| 
	.dwpsn	file "C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h",line 379,column 5,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_ALU] |379| 
        MOVW      DP,#||tformatData||+15 ; [CPU_ARAU] 
        MOV       *(0:0x0ce1),AL        ; [CPU_ALU] |379| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -26
	.dwpsn	file "../sources/fcl_tformat_f2837x_config.c",line 285,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||tformatData||)+15,#1,UNC ; [CPU_ALU] |285| 
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
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../sources/fcl_tformat_f2837x_config.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||PM_tformat_generateCRCTable||
	.global	||PM_tformat_setupPeriph||
	.global	||PM_tformat_setFreq||
	.global	||SPI_disableInterrupt||
	.global	||SPI_clearInterruptStatus||
	.global	||SPI_enableInterrupt||
	.global	||SysCtl_delay||
	.global	||GPIO_setControllerCore||
	.global	||GPIO_setPinConfig||
	.global	||GPIO_setQualificationMode||
	.global	||GPIO_setDirectionMode||
	.global	||XBAR_setCLBMuxConfig||
	.global	||XBAR_setOutputMuxConfig||
	.global	||readTformatEncPosition||
	.global	||PM_tformat_setupCommandReadoutOrReset||
	.global	||PM_tformat_startOperation||
	.global	||PM_tformat_receiveDataID3||
	.global	||PM_tformat_receiveDataID2||
	.global	||PM_tformat_receiveDataID0_1_7_8_C||
	.global	||PM_tformat_setupCommandReadEEPROM||
	.global	||PM_tformat_setupCommandWriteEEPROM||
	.global	||PM_tformat_receiveDataIDD||
	.global	||PM_tformat_receiveDataID6||

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

$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$141, DW_AT_const_value(0x00)
	.dwattr $C$DW$141, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x183)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$142, DW_AT_const_value(0x200)
	.dwattr $C$DW$142, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x184)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$143, DW_AT_const_value(0x300)
	.dwattr $C$DW$143, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x185)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$144, DW_AT_const_value(0x400)
	.dwattr $C$DW$144, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x186)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$145, DW_AT_const_value(0x500)
	.dwattr $C$DW$145, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x187)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$146, DW_AT_const_value(0x1000)
	.dwattr $C$DW$146, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x188)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$147, DW_AT_const_value(0x1200)
	.dwattr $C$DW$147, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x189)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$148, DW_AT_const_value(0x1300)
	.dwattr $C$DW$148, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$149, DW_AT_const_value(0x01)
	.dwattr $C$DW$149, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$150, DW_AT_const_value(0x101)
	.dwattr $C$DW$150, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

$C$DW$151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$151, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$151, DW_AT_const_value(0x02)
	.dwattr $C$DW$151, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$151, DW_AT_decl_column(0x05)

$C$DW$152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$152, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$152, DW_AT_const_value(0x102)
	.dwattr $C$DW$152, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$152, DW_AT_decl_column(0x05)

$C$DW$153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$153, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$153, DW_AT_const_value(0x202)
	.dwattr $C$DW$153, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$153, DW_AT_decl_column(0x05)

$C$DW$154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$154, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$154, DW_AT_const_value(0x302)
	.dwattr $C$DW$154, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x190)
	.dwattr $C$DW$154, DW_AT_decl_column(0x05)

$C$DW$155	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$155, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$155, DW_AT_const_value(0x402)
	.dwattr $C$DW$155, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x191)
	.dwattr $C$DW$155, DW_AT_decl_column(0x05)

$C$DW$156	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$156, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$156, DW_AT_const_value(0x502)
	.dwattr $C$DW$156, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x192)
	.dwattr $C$DW$156, DW_AT_decl_column(0x05)

$C$DW$157	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$157, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$157, DW_AT_const_value(0x602)
	.dwattr $C$DW$157, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x193)
	.dwattr $C$DW$157, DW_AT_decl_column(0x05)

$C$DW$158	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$158, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$158, DW_AT_const_value(0x702)
	.dwattr $C$DW$158, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x194)
	.dwattr $C$DW$158, DW_AT_decl_column(0x05)

$C$DW$159	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$159, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$159, DW_AT_const_value(0x802)
	.dwattr $C$DW$159, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x195)
	.dwattr $C$DW$159, DW_AT_decl_column(0x05)

$C$DW$160	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$160, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$160, DW_AT_const_value(0x902)
	.dwattr $C$DW$160, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x196)
	.dwattr $C$DW$160, DW_AT_decl_column(0x05)

$C$DW$161	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$161, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$161, DW_AT_const_value(0xa02)
	.dwattr $C$DW$161, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x197)
	.dwattr $C$DW$161, DW_AT_decl_column(0x05)

$C$DW$162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$162, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$162, DW_AT_const_value(0xb02)
	.dwattr $C$DW$162, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x198)
	.dwattr $C$DW$162, DW_AT_decl_column(0x05)

$C$DW$163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$163, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$163, DW_AT_const_value(0x03)
	.dwattr $C$DW$163, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x199)
	.dwattr $C$DW$163, DW_AT_decl_column(0x05)

$C$DW$164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$164, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$164, DW_AT_const_value(0x103)
	.dwattr $C$DW$164, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$164, DW_AT_decl_column(0x05)

$C$DW$165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$165, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$165, DW_AT_const_value(0x203)
	.dwattr $C$DW$165, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$165, DW_AT_decl_column(0x05)

$C$DW$166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$166, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$166, DW_AT_const_value(0x303)
	.dwattr $C$DW$166, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$166, DW_AT_decl_column(0x05)

$C$DW$167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$167, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$167, DW_AT_const_value(0x403)
	.dwattr $C$DW$167, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$167, DW_AT_decl_column(0x05)

$C$DW$168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$168, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$168, DW_AT_const_value(0x503)
	.dwattr $C$DW$168, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$168, DW_AT_decl_column(0x05)

$C$DW$169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$169, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$169, DW_AT_const_value(0x04)
	.dwattr $C$DW$169, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$169, DW_AT_decl_column(0x05)

$C$DW$170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$170, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$170, DW_AT_const_value(0x104)
	.dwattr $C$DW$170, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$170, DW_AT_decl_column(0x05)

$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$171, DW_AT_const_value(0x204)
	.dwattr $C$DW$171, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$171, DW_AT_decl_column(0x05)

$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$172, DW_AT_const_value(0x06)
	.dwattr $C$DW$172, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$172, DW_AT_decl_column(0x05)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$173, DW_AT_const_value(0x106)
	.dwattr $C$DW$173, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$173, DW_AT_decl_column(0x05)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$174, DW_AT_const_value(0x07)
	.dwattr $C$DW$174, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$175, DW_AT_const_value(0x107)
	.dwattr $C$DW$175, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$176, DW_AT_const_value(0x207)
	.dwattr $C$DW$176, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$177, DW_AT_const_value(0x307)
	.dwattr $C$DW$177, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$178, DW_AT_const_value(0x08)
	.dwattr $C$DW$178, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$179, DW_AT_const_value(0x108)
	.dwattr $C$DW$179, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

$C$DW$180	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$180, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$180, DW_AT_const_value(0x208)
	.dwattr $C$DW$180, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$180, DW_AT_decl_column(0x05)

$C$DW$181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$181, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$181, DW_AT_const_value(0x09)
	.dwattr $C$DW$181, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$181, DW_AT_decl_column(0x05)

$C$DW$182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$182, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$182, DW_AT_const_value(0x109)
	.dwattr $C$DW$182, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$182, DW_AT_decl_column(0x05)

$C$DW$183	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$183, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$183, DW_AT_const_value(0x0a)
	.dwattr $C$DW$183, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$183, DW_AT_decl_column(0x05)

$C$DW$184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$184, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$184, DW_AT_const_value(0x10a)
	.dwattr $C$DW$184, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$184, DW_AT_decl_column(0x05)

$C$DW$185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$185, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$185, DW_AT_const_value(0x0b)
	.dwattr $C$DW$185, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$185, DW_AT_decl_column(0x05)

$C$DW$186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$186, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$186, DW_AT_const_value(0x10b)
	.dwattr $C$DW$186, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$186, DW_AT_decl_column(0x05)

$C$DW$187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$187, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$187, DW_AT_const_value(0x100b)
	.dwattr $C$DW$187, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$187, DW_AT_decl_column(0x05)

$C$DW$188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$188, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$188, DW_AT_const_value(0x0c)
	.dwattr $C$DW$188, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$188, DW_AT_decl_column(0x05)

$C$DW$189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$189, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$189, DW_AT_const_value(0x0d)
	.dwattr $C$DW$189, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$189, DW_AT_decl_column(0x05)

$C$DW$190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$190, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$190, DW_AT_const_value(0x10d)
	.dwattr $C$DW$190, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$190, DW_AT_decl_column(0x05)

$C$DW$191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$191, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$191, DW_AT_const_value(0x20d)
	.dwattr $C$DW$191, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$191, DW_AT_decl_column(0x05)

$C$DW$192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$192, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$192, DW_AT_const_value(0x30d)
	.dwattr $C$DW$192, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$192, DW_AT_decl_column(0x05)

$C$DW$193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$193, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$193, DW_AT_const_value(0x0e)
	.dwattr $C$DW$193, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$193, DW_AT_decl_column(0x05)

$C$DW$194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$194, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$194, DW_AT_const_value(0x10e)
	.dwattr $C$DW$194, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$194, DW_AT_decl_column(0x05)

$C$DW$195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$195, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$195, DW_AT_const_value(0x20e)
	.dwattr $C$DW$195, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$195, DW_AT_decl_column(0x05)

$C$DW$196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$196, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$196, DW_AT_const_value(0x30e)
	.dwattr $C$DW$196, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$196, DW_AT_decl_column(0x05)

$C$DW$197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$197, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$197, DW_AT_const_value(0x40e)
	.dwattr $C$DW$197, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$197, DW_AT_decl_column(0x05)

$C$DW$198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$198, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$198, DW_AT_const_value(0x50e)
	.dwattr $C$DW$198, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$198, DW_AT_decl_column(0x05)

$C$DW$199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$199, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$199, DW_AT_const_value(0x60e)
	.dwattr $C$DW$199, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$199, DW_AT_decl_column(0x05)

$C$DW$200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$200, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$200, DW_AT_const_value(0x70e)
	.dwattr $C$DW$200, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$200, DW_AT_decl_column(0x05)

$C$DW$201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$201, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$201, DW_AT_const_value(0x1010)
	.dwattr $C$DW$201, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$201, DW_AT_decl_column(0x05)

$C$DW$202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$202, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$202, DW_AT_const_value(0x1110)
	.dwattr $C$DW$202, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$202, DW_AT_decl_column(0x05)

$C$DW$203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$203, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$203, DW_AT_const_value(0x1210)
	.dwattr $C$DW$203, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$203, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$204	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$204, DW_AT_name("CLB_IN0")
	.dwattr $C$DW$204, DW_AT_const_value(0x00)
	.dwattr $C$DW$204, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0xae)
	.dwattr $C$DW$204, DW_AT_decl_column(0x05)

$C$DW$205	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$205, DW_AT_name("CLB_IN1")
	.dwattr $C$DW$205, DW_AT_const_value(0x01)
	.dwattr $C$DW$205, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$205, DW_AT_decl_column(0x05)

$C$DW$206	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$206, DW_AT_name("CLB_IN2")
	.dwattr $C$DW$206, DW_AT_const_value(0x02)
	.dwattr $C$DW$206, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$206, DW_AT_decl_column(0x05)

$C$DW$207	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$207, DW_AT_name("CLB_IN3")
	.dwattr $C$DW$207, DW_AT_const_value(0x03)
	.dwattr $C$DW$207, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$207, DW_AT_decl_column(0x05)

$C$DW$208	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$208, DW_AT_name("CLB_IN4")
	.dwattr $C$DW$208, DW_AT_const_value(0x04)
	.dwattr $C$DW$208, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$208, DW_AT_decl_column(0x05)

$C$DW$209	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$209, DW_AT_name("CLB_IN5")
	.dwattr $C$DW$209, DW_AT_const_value(0x05)
	.dwattr $C$DW$209, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$209, DW_AT_decl_column(0x05)

$C$DW$210	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$210, DW_AT_name("CLB_IN6")
	.dwattr $C$DW$210, DW_AT_const_value(0x06)
	.dwattr $C$DW$210, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$210, DW_AT_decl_column(0x05)

$C$DW$211	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$211, DW_AT_name("CLB_IN7")
	.dwattr $C$DW$211, DW_AT_const_value(0x07)
	.dwattr $C$DW$211, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$211, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("CLB_Inputs")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$212	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$212, DW_AT_name("CLB_FILTER_NONE")
	.dwattr $C$DW$212, DW_AT_const_value(0x00)
	.dwattr $C$DW$212, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$212, DW_AT_decl_column(0x05)

$C$DW$213	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$213, DW_AT_name("CLB_FILTER_RISING_EDGE")
	.dwattr $C$DW$213, DW_AT_const_value(0x01)
	.dwattr $C$DW$213, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$213, DW_AT_decl_column(0x05)

$C$DW$214	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$214, DW_AT_name("CLB_FILTER_FALLING_EDGE")
	.dwattr $C$DW$214, DW_AT_const_value(0x02)
	.dwattr $C$DW$214, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$214, DW_AT_decl_column(0x05)

$C$DW$215	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$215, DW_AT_name("CLB_FILTER_ANY_EDGE")
	.dwattr $C$DW$215, DW_AT_const_value(0x03)
	.dwattr $C$DW$215, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$215, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("CLB_FilterType")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$216	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$216, DW_AT_name("CLB_GP_IN_MUX_EXTERNAL")
	.dwattr $C$DW$216, DW_AT_const_value(0x00)
	.dwattr $C$DW$216, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$216, DW_AT_decl_column(0x05)

$C$DW$217	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$217, DW_AT_name("CLB_GP_IN_MUX_GP_REG")
	.dwattr $C$DW$217, DW_AT_const_value(0x01)
	.dwattr $C$DW$217, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xff)
	.dwattr $C$DW$217, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("CLB_GPInputMux")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$218	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$218, DW_AT_name("CLB_LOCAL_IN_MUX_GLOBAL_IN")
	.dwattr $C$DW$218, DW_AT_const_value(0x00)
	.dwattr $C$DW$218, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$218, DW_AT_decl_column(0x05)

$C$DW$219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$219, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCAEVT1")
	.dwattr $C$DW$219, DW_AT_const_value(0x01)
	.dwattr $C$DW$219, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$219, DW_AT_decl_column(0x05)

$C$DW$220	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$220, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCAEVT2")
	.dwattr $C$DW$220, DW_AT_const_value(0x02)
	.dwattr $C$DW$220, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$220, DW_AT_decl_column(0x05)

$C$DW$221	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$221, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCBEVT1")
	.dwattr $C$DW$221, DW_AT_const_value(0x03)
	.dwattr $C$DW$221, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$221, DW_AT_decl_column(0x05)

$C$DW$222	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$222, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCBEVT2")
	.dwattr $C$DW$222, DW_AT_const_value(0x04)
	.dwattr $C$DW$222, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$222, DW_AT_decl_column(0x05)

$C$DW$223	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$223, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCAH")
	.dwattr $C$DW$223, DW_AT_const_value(0x05)
	.dwattr $C$DW$223, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$223, DW_AT_decl_column(0x05)

$C$DW$224	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$224, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCAL")
	.dwattr $C$DW$224, DW_AT_const_value(0x06)
	.dwattr $C$DW$224, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x110)
	.dwattr $C$DW$224, DW_AT_decl_column(0x05)

$C$DW$225	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$225, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCBH")
	.dwattr $C$DW$225, DW_AT_const_value(0x07)
	.dwattr $C$DW$225, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x111)
	.dwattr $C$DW$225, DW_AT_decl_column(0x05)

$C$DW$226	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$226, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_DCBL")
	.dwattr $C$DW$226, DW_AT_const_value(0x08)
	.dwattr $C$DW$226, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x112)
	.dwattr $C$DW$226, DW_AT_decl_column(0x05)

$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_OST")
	.dwattr $C$DW$227, DW_AT_const_value(0x09)
	.dwattr $C$DW$227, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x113)
	.dwattr $C$DW$227, DW_AT_decl_column(0x05)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("CLB_LOCAL_IN_MUX_EPWM_CBC")
	.dwattr $C$DW$228, DW_AT_const_value(0x0a)
	.dwattr $C$DW$228, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x114)
	.dwattr $C$DW$228, DW_AT_decl_column(0x05)

$C$DW$229	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$229, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_ECAPIN")
	.dwattr $C$DW$229, DW_AT_const_value(0x0b)
	.dwattr $C$DW$229, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x115)
	.dwattr $C$DW$229, DW_AT_decl_column(0x05)

$C$DW$230	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$230, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_ECAP_OUT")
	.dwattr $C$DW$230, DW_AT_const_value(0x0c)
	.dwattr $C$DW$230, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x116)
	.dwattr $C$DW$230, DW_AT_decl_column(0x05)

$C$DW$231	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$231, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_ECAP_OUT_EN")
	.dwattr $C$DW$231, DW_AT_const_value(0x0d)
	.dwattr $C$DW$231, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x117)
	.dwattr $C$DW$231, DW_AT_decl_column(0x05)

$C$DW$232	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$232, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_CEVT1")
	.dwattr $C$DW$232, DW_AT_const_value(0x0e)
	.dwattr $C$DW$232, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x118)
	.dwattr $C$DW$232, DW_AT_decl_column(0x05)

$C$DW$233	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$233, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_CEVT2")
	.dwattr $C$DW$233, DW_AT_const_value(0x0f)
	.dwattr $C$DW$233, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x119)
	.dwattr $C$DW$233, DW_AT_decl_column(0x05)

$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_CEVT3")
	.dwattr $C$DW$234, DW_AT_const_value(0x10)
	.dwattr $C$DW$234, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$234, DW_AT_decl_column(0x05)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("CLB_LOCAL_IN_MUX_ECAP_CEVT4")
	.dwattr $C$DW$235, DW_AT_const_value(0x11)
	.dwattr $C$DW$235, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$235, DW_AT_decl_column(0x05)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("CLB_LOCAL_IN_MUX_EQEP_EQEPA")
	.dwattr $C$DW$236, DW_AT_const_value(0x12)
	.dwattr $C$DW$236, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$236, DW_AT_decl_column(0x05)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("CLB_LOCAL_IN_MUX_EQEP_EQEPB")
	.dwattr $C$DW$237, DW_AT_const_value(0x13)
	.dwattr $C$DW$237, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$237, DW_AT_decl_column(0x05)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("CLB_LOCAL_IN_MUX_EQEP_EQEPI")
	.dwattr $C$DW$238, DW_AT_const_value(0x14)
	.dwattr $C$DW$238, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$238, DW_AT_decl_column(0x05)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("CLB_LOCAL_IN_MUX_EQEP_EQEPS")
	.dwattr $C$DW$239, DW_AT_const_value(0x15)
	.dwattr $C$DW$239, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$239, DW_AT_decl_column(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("CLB_LOCAL_IN_MUX_CPU1_TBCLKSYNC")
	.dwattr $C$DW$240, DW_AT_const_value(0x16)
	.dwattr $C$DW$240, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x120)
	.dwattr $C$DW$240, DW_AT_decl_column(0x05)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("CLB_LOCAL_IN_MUX_CPU2_TBCLKSYNC")
	.dwattr $C$DW$241, DW_AT_const_value(0x17)
	.dwattr $C$DW$241, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x121)
	.dwattr $C$DW$241, DW_AT_decl_column(0x05)

$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("CLB_LOCAL_IN_MUX_CPU1_HALT")
	.dwattr $C$DW$242, DW_AT_const_value(0x18)
	.dwattr $C$DW$242, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x122)
	.dwattr $C$DW$242, DW_AT_decl_column(0x05)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("CLB_LOCAL_IN_MUX_CPU2_HALT")
	.dwattr $C$DW$243, DW_AT_const_value(0x19)
	.dwattr $C$DW$243, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x123)
	.dwattr $C$DW$243, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("CLB_LocalInputMux")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1A")
	.dwattr $C$DW$244, DW_AT_const_value(0x00)
	.dwattr $C$DW$244, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$244, DW_AT_decl_column(0x05)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1A_OE")
	.dwattr $C$DW$245, DW_AT_const_value(0x01)
	.dwattr $C$DW$245, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1B")
	.dwattr $C$DW$246, DW_AT_const_value(0x02)
	.dwattr $C$DW$246, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x130)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1B_OE")
	.dwattr $C$DW$247, DW_AT_const_value(0x03)
	.dwattr $C$DW$247, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x131)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_ZERO")
	.dwattr $C$DW$248, DW_AT_const_value(0x04)
	.dwattr $C$DW$248, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x132)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_PRD")
	.dwattr $C$DW$249, DW_AT_const_value(0x05)
	.dwattr $C$DW$249, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x133)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTRDIR")
	.dwattr $C$DW$250, DW_AT_const_value(0x06)
	.dwattr $C$DW$250, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x134)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_TBCLK")
	.dwattr $C$DW$251, DW_AT_const_value(0x07)
	.dwattr $C$DW$251, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x135)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_CMPA")
	.dwattr $C$DW$252, DW_AT_const_value(0x08)
	.dwattr $C$DW$252, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x136)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_CMPB")
	.dwattr $C$DW$253, DW_AT_const_value(0x09)
	.dwattr $C$DW$253, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x137)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_CMPC")
	.dwattr $C$DW$254, DW_AT_const_value(0x0a)
	.dwattr $C$DW$254, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x138)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1_CTR_CMPD")
	.dwattr $C$DW$255, DW_AT_const_value(0x0b)
	.dwattr $C$DW$255, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x139)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1A_AQ")
	.dwattr $C$DW$256, DW_AT_const_value(0x0c)
	.dwattr $C$DW$256, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1B_AQ")
	.dwattr $C$DW$257, DW_AT_const_value(0x0d)
	.dwattr $C$DW$257, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

$C$DW$258	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$258, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1A_DB")
	.dwattr $C$DW$258, DW_AT_const_value(0x0e)
	.dwattr $C$DW$258, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$258, DW_AT_decl_column(0x05)

$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM1B_DB")
	.dwattr $C$DW$259, DW_AT_const_value(0x0f)
	.dwattr $C$DW$259, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2A")
	.dwattr $C$DW$260, DW_AT_const_value(0x10)
	.dwattr $C$DW$260, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2A_OE")
	.dwattr $C$DW$261, DW_AT_const_value(0x11)
	.dwattr $C$DW$261, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x140)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2B")
	.dwattr $C$DW$262, DW_AT_const_value(0x12)
	.dwattr $C$DW$262, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x141)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2B_OE")
	.dwattr $C$DW$263, DW_AT_const_value(0x13)
	.dwattr $C$DW$263, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x142)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_ZERO")
	.dwattr $C$DW$264, DW_AT_const_value(0x14)
	.dwattr $C$DW$264, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x143)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_PRD")
	.dwattr $C$DW$265, DW_AT_const_value(0x15)
	.dwattr $C$DW$265, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x144)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTRDIR")
	.dwattr $C$DW$266, DW_AT_const_value(0x16)
	.dwattr $C$DW$266, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x145)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

$C$DW$267	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$267, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_TBCLK")
	.dwattr $C$DW$267, DW_AT_const_value(0x17)
	.dwattr $C$DW$267, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x146)
	.dwattr $C$DW$267, DW_AT_decl_column(0x05)

$C$DW$268	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$268, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_CMPA")
	.dwattr $C$DW$268, DW_AT_const_value(0x18)
	.dwattr $C$DW$268, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x147)
	.dwattr $C$DW$268, DW_AT_decl_column(0x05)

$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_CMPB")
	.dwattr $C$DW$269, DW_AT_const_value(0x19)
	.dwattr $C$DW$269, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x148)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_CMPC")
	.dwattr $C$DW$270, DW_AT_const_value(0x1a)
	.dwattr $C$DW$270, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x149)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2_CTR_CMPD")
	.dwattr $C$DW$271, DW_AT_const_value(0x1b)
	.dwattr $C$DW$271, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

$C$DW$272	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$272, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2A_AQ")
	.dwattr $C$DW$272, DW_AT_const_value(0x1c)
	.dwattr $C$DW$272, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$272, DW_AT_decl_column(0x05)

$C$DW$273	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$273, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2B_AQ")
	.dwattr $C$DW$273, DW_AT_const_value(0x1d)
	.dwattr $C$DW$273, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$273, DW_AT_decl_column(0x05)

$C$DW$274	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$274, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2A_DB")
	.dwattr $C$DW$274, DW_AT_const_value(0x1e)
	.dwattr $C$DW$274, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$274, DW_AT_decl_column(0x05)

$C$DW$275	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$275, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM2B_DB")
	.dwattr $C$DW$275, DW_AT_const_value(0x1f)
	.dwattr $C$DW$275, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$275, DW_AT_decl_column(0x05)

$C$DW$276	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$276, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3A")
	.dwattr $C$DW$276, DW_AT_const_value(0x20)
	.dwattr $C$DW$276, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x150)
	.dwattr $C$DW$276, DW_AT_decl_column(0x05)

$C$DW$277	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$277, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3A_OE")
	.dwattr $C$DW$277, DW_AT_const_value(0x21)
	.dwattr $C$DW$277, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x151)
	.dwattr $C$DW$277, DW_AT_decl_column(0x05)

$C$DW$278	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$278, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3B")
	.dwattr $C$DW$278, DW_AT_const_value(0x22)
	.dwattr $C$DW$278, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x152)
	.dwattr $C$DW$278, DW_AT_decl_column(0x05)

$C$DW$279	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$279, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3B_OE")
	.dwattr $C$DW$279, DW_AT_const_value(0x23)
	.dwattr $C$DW$279, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x153)
	.dwattr $C$DW$279, DW_AT_decl_column(0x05)

$C$DW$280	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$280, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_ZERO")
	.dwattr $C$DW$280, DW_AT_const_value(0x24)
	.dwattr $C$DW$280, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x154)
	.dwattr $C$DW$280, DW_AT_decl_column(0x05)

$C$DW$281	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$281, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_PRD")
	.dwattr $C$DW$281, DW_AT_const_value(0x25)
	.dwattr $C$DW$281, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x155)
	.dwattr $C$DW$281, DW_AT_decl_column(0x05)

$C$DW$282	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$282, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTRDIR")
	.dwattr $C$DW$282, DW_AT_const_value(0x26)
	.dwattr $C$DW$282, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x156)
	.dwattr $C$DW$282, DW_AT_decl_column(0x05)

$C$DW$283	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$283, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_TBCLK")
	.dwattr $C$DW$283, DW_AT_const_value(0x27)
	.dwattr $C$DW$283, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x157)
	.dwattr $C$DW$283, DW_AT_decl_column(0x05)

$C$DW$284	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$284, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_CMPA")
	.dwattr $C$DW$284, DW_AT_const_value(0x28)
	.dwattr $C$DW$284, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x158)
	.dwattr $C$DW$284, DW_AT_decl_column(0x05)

$C$DW$285	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$285, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_CMPB")
	.dwattr $C$DW$285, DW_AT_const_value(0x29)
	.dwattr $C$DW$285, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x159)
	.dwattr $C$DW$285, DW_AT_decl_column(0x05)

$C$DW$286	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$286, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_CMPC")
	.dwattr $C$DW$286, DW_AT_const_value(0x2a)
	.dwattr $C$DW$286, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$286, DW_AT_decl_column(0x05)

$C$DW$287	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$287, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3_CTR_CMPD")
	.dwattr $C$DW$287, DW_AT_const_value(0x2b)
	.dwattr $C$DW$287, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$287, DW_AT_decl_column(0x05)

$C$DW$288	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$288, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3A_AQ")
	.dwattr $C$DW$288, DW_AT_const_value(0x2c)
	.dwattr $C$DW$288, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$288, DW_AT_decl_column(0x05)

$C$DW$289	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$289, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3B_AQ")
	.dwattr $C$DW$289, DW_AT_const_value(0x2d)
	.dwattr $C$DW$289, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$289, DW_AT_decl_column(0x05)

$C$DW$290	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$290, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3A_DB")
	.dwattr $C$DW$290, DW_AT_const_value(0x2e)
	.dwattr $C$DW$290, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$290, DW_AT_decl_column(0x05)

$C$DW$291	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$291, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM3B_DB")
	.dwattr $C$DW$291, DW_AT_const_value(0x2f)
	.dwattr $C$DW$291, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$291, DW_AT_decl_column(0x05)

$C$DW$292	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$292, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4A")
	.dwattr $C$DW$292, DW_AT_const_value(0x30)
	.dwattr $C$DW$292, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x161)
	.dwattr $C$DW$292, DW_AT_decl_column(0x05)

$C$DW$293	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$293, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4A_OE")
	.dwattr $C$DW$293, DW_AT_const_value(0x31)
	.dwattr $C$DW$293, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x162)
	.dwattr $C$DW$293, DW_AT_decl_column(0x05)

$C$DW$294	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$294, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4B")
	.dwattr $C$DW$294, DW_AT_const_value(0x32)
	.dwattr $C$DW$294, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x163)
	.dwattr $C$DW$294, DW_AT_decl_column(0x05)

$C$DW$295	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$295, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4B_OE")
	.dwattr $C$DW$295, DW_AT_const_value(0x33)
	.dwattr $C$DW$295, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x164)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)

$C$DW$296	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$296, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_ZERO")
	.dwattr $C$DW$296, DW_AT_const_value(0x34)
	.dwattr $C$DW$296, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x165)
	.dwattr $C$DW$296, DW_AT_decl_column(0x05)

$C$DW$297	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$297, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_PRD")
	.dwattr $C$DW$297, DW_AT_const_value(0x35)
	.dwattr $C$DW$297, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x166)
	.dwattr $C$DW$297, DW_AT_decl_column(0x05)

$C$DW$298	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$298, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTRDIR")
	.dwattr $C$DW$298, DW_AT_const_value(0x36)
	.dwattr $C$DW$298, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x167)
	.dwattr $C$DW$298, DW_AT_decl_column(0x05)

$C$DW$299	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$299, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_TBCLK")
	.dwattr $C$DW$299, DW_AT_const_value(0x37)
	.dwattr $C$DW$299, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x168)
	.dwattr $C$DW$299, DW_AT_decl_column(0x05)

$C$DW$300	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$300, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_CMPA")
	.dwattr $C$DW$300, DW_AT_const_value(0x38)
	.dwattr $C$DW$300, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x169)
	.dwattr $C$DW$300, DW_AT_decl_column(0x05)

$C$DW$301	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$301, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_CMPB")
	.dwattr $C$DW$301, DW_AT_const_value(0x39)
	.dwattr $C$DW$301, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$301, DW_AT_decl_column(0x05)

$C$DW$302	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$302, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_CMPC")
	.dwattr $C$DW$302, DW_AT_const_value(0x3a)
	.dwattr $C$DW$302, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$302, DW_AT_decl_column(0x05)

$C$DW$303	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$303, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4_CTR_CMPD")
	.dwattr $C$DW$303, DW_AT_const_value(0x3b)
	.dwattr $C$DW$303, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)

$C$DW$304	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$304, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4A_AQ")
	.dwattr $C$DW$304, DW_AT_const_value(0x3c)
	.dwattr $C$DW$304, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$304, DW_AT_decl_column(0x05)

$C$DW$305	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$305, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4B_AQ")
	.dwattr $C$DW$305, DW_AT_const_value(0x3d)
	.dwattr $C$DW$305, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$305, DW_AT_decl_column(0x05)

$C$DW$306	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$306, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4A_DB")
	.dwattr $C$DW$306, DW_AT_const_value(0x3e)
	.dwattr $C$DW$306, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$306, DW_AT_decl_column(0x05)

$C$DW$307	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$307, DW_AT_name("CLB_GLOBAL_IN_MUX_EPWM4B_DB")
	.dwattr $C$DW$307, DW_AT_const_value(0x3f)
	.dwattr $C$DW$307, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x170)
	.dwattr $C$DW$307, DW_AT_decl_column(0x05)

$C$DW$308	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$308, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG0")
	.dwattr $C$DW$308, DW_AT_const_value(0x40)
	.dwattr $C$DW$308, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x172)
	.dwattr $C$DW$308, DW_AT_decl_column(0x05)

$C$DW$309	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$309, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG1")
	.dwattr $C$DW$309, DW_AT_const_value(0x41)
	.dwattr $C$DW$309, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x173)
	.dwattr $C$DW$309, DW_AT_decl_column(0x05)

$C$DW$310	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$310, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG2")
	.dwattr $C$DW$310, DW_AT_const_value(0x42)
	.dwattr $C$DW$310, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x174)
	.dwattr $C$DW$310, DW_AT_decl_column(0x05)

$C$DW$311	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$311, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG3")
	.dwattr $C$DW$311, DW_AT_const_value(0x43)
	.dwattr $C$DW$311, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x175)
	.dwattr $C$DW$311, DW_AT_decl_column(0x05)

$C$DW$312	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$312, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG4")
	.dwattr $C$DW$312, DW_AT_const_value(0x44)
	.dwattr $C$DW$312, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x176)
	.dwattr $C$DW$312, DW_AT_decl_column(0x05)

$C$DW$313	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$313, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG5")
	.dwattr $C$DW$313, DW_AT_const_value(0x45)
	.dwattr $C$DW$313, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x177)
	.dwattr $C$DW$313, DW_AT_decl_column(0x05)

$C$DW$314	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$314, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG6")
	.dwattr $C$DW$314, DW_AT_const_value(0x46)
	.dwattr $C$DW$314, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x178)
	.dwattr $C$DW$314, DW_AT_decl_column(0x05)

$C$DW$315	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$315, DW_AT_name("CLB_GLOBAL_IN_MUX_CLB_AUXSIG7")
	.dwattr $C$DW$315, DW_AT_const_value(0x47)
	.dwattr $C$DW$315, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x179)
	.dwattr $C$DW$315, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("CLB_GlobalInputMux")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/clb.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$316, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZA")
	.dwattr $C$DW$316, DW_AT_const_value(0x00)
	.dwattr $C$DW$316, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x301)
	.dwattr $C$DW$316, DW_AT_decl_column(0x05)

$C$DW$317	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$317, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZB")
	.dwattr $C$DW$317, DW_AT_const_value(0x02)
	.dwattr $C$DW$317, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x302)
	.dwattr $C$DW$317, DW_AT_decl_column(0x05)

$C$DW$318	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$318, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT1")
	.dwattr $C$DW$318, DW_AT_const_value(0x04)
	.dwattr $C$DW$318, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x303)
	.dwattr $C$DW$318, DW_AT_decl_column(0x05)

$C$DW$319	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$319, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT2")
	.dwattr $C$DW$319, DW_AT_const_value(0x06)
	.dwattr $C$DW$319, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x304)
	.dwattr $C$DW$319, DW_AT_decl_column(0x05)

$C$DW$320	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$320, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT1")
	.dwattr $C$DW$320, DW_AT_const_value(0x08)
	.dwattr $C$DW$320, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x305)
	.dwattr $C$DW$320, DW_AT_decl_column(0x05)

$C$DW$321	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$321, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT2")
	.dwattr $C$DW$321, DW_AT_const_value(0x0a)
	.dwattr $C$DW$321, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x306)
	.dwattr $C$DW$321, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x300)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("EPWM_TripZoneEvent")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x307)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$322	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$322, DW_AT_name("EPWM_TZ_ACTION_HIGH_Z")
	.dwattr $C$DW$322, DW_AT_const_value(0x00)
	.dwattr $C$DW$322, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x311)
	.dwattr $C$DW$322, DW_AT_decl_column(0x05)

$C$DW$323	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$323, DW_AT_name("EPWM_TZ_ACTION_HIGH")
	.dwattr $C$DW$323, DW_AT_const_value(0x01)
	.dwattr $C$DW$323, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x312)
	.dwattr $C$DW$323, DW_AT_decl_column(0x05)

$C$DW$324	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$324, DW_AT_name("EPWM_TZ_ACTION_LOW")
	.dwattr $C$DW$324, DW_AT_const_value(0x02)
	.dwattr $C$DW$324, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x313)
	.dwattr $C$DW$324, DW_AT_decl_column(0x05)

$C$DW$325	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$325, DW_AT_name("EPWM_TZ_ACTION_DISABLE")
	.dwattr $C$DW$325, DW_AT_const_value(0x03)
	.dwattr $C$DW$325, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x314)
	.dwattr $C$DW$325, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x310)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("EPWM_TripZoneAction")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x315)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$326	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$326, DW_AT_name("XBAR_OUTPUT1")
	.dwattr $C$DW$326, DW_AT_const_value(0x00)
	.dwattr $C$DW$326, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x95)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)

$C$DW$327	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$327, DW_AT_name("XBAR_OUTPUT2")
	.dwattr $C$DW$327, DW_AT_const_value(0x02)
	.dwattr $C$DW$327, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x96)
	.dwattr $C$DW$327, DW_AT_decl_column(0x05)

$C$DW$328	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$328, DW_AT_name("XBAR_OUTPUT3")
	.dwattr $C$DW$328, DW_AT_const_value(0x04)
	.dwattr $C$DW$328, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x97)
	.dwattr $C$DW$328, DW_AT_decl_column(0x05)

$C$DW$329	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$329, DW_AT_name("XBAR_OUTPUT4")
	.dwattr $C$DW$329, DW_AT_const_value(0x06)
	.dwattr $C$DW$329, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x98)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)

$C$DW$330	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$330, DW_AT_name("XBAR_OUTPUT5")
	.dwattr $C$DW$330, DW_AT_const_value(0x08)
	.dwattr $C$DW$330, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x99)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)

$C$DW$331	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$331, DW_AT_name("XBAR_OUTPUT6")
	.dwattr $C$DW$331, DW_AT_const_value(0x0a)
	.dwattr $C$DW$331, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)

$C$DW$332	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$332, DW_AT_name("XBAR_OUTPUT7")
	.dwattr $C$DW$332, DW_AT_const_value(0x0c)
	.dwattr $C$DW$332, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)

$C$DW$333	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$333, DW_AT_name("XBAR_OUTPUT8")
	.dwattr $C$DW$333, DW_AT_const_value(0x0e)
	.dwattr $C$DW$333, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$40, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("XBAR_OutputNum")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$334, DW_AT_name("XBAR_INPUT1")
	.dwattr $C$DW$334, DW_AT_const_value(0x00)
	.dwattr $C$DW$334, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$334, DW_AT_decl_column(0x05)

$C$DW$335	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$335, DW_AT_name("XBAR_INPUT2")
	.dwattr $C$DW$335, DW_AT_const_value(0x01)
	.dwattr $C$DW$335, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$335, DW_AT_decl_column(0x05)

$C$DW$336	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$336, DW_AT_name("XBAR_INPUT3")
	.dwattr $C$DW$336, DW_AT_const_value(0x02)
	.dwattr $C$DW$336, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$336, DW_AT_decl_column(0x05)

$C$DW$337	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$337, DW_AT_name("XBAR_INPUT4")
	.dwattr $C$DW$337, DW_AT_const_value(0x03)
	.dwattr $C$DW$337, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0xce)
	.dwattr $C$DW$337, DW_AT_decl_column(0x05)

$C$DW$338	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$338, DW_AT_name("XBAR_INPUT5")
	.dwattr $C$DW$338, DW_AT_const_value(0x04)
	.dwattr $C$DW$338, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$338, DW_AT_decl_column(0x05)

$C$DW$339	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$339, DW_AT_name("XBAR_INPUT6")
	.dwattr $C$DW$339, DW_AT_const_value(0x05)
	.dwattr $C$DW$339, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$339, DW_AT_decl_column(0x05)

$C$DW$340	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$340, DW_AT_name("XBAR_INPUT7")
	.dwattr $C$DW$340, DW_AT_const_value(0x06)
	.dwattr $C$DW$340, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$340, DW_AT_decl_column(0x05)

$C$DW$341	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$341, DW_AT_name("XBAR_INPUT8")
	.dwattr $C$DW$341, DW_AT_const_value(0x07)
	.dwattr $C$DW$341, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)

$C$DW$342	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$342, DW_AT_name("XBAR_INPUT9")
	.dwattr $C$DW$342, DW_AT_const_value(0x08)
	.dwattr $C$DW$342, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$342, DW_AT_decl_column(0x05)

$C$DW$343	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$343, DW_AT_name("XBAR_INPUT10")
	.dwattr $C$DW$343, DW_AT_const_value(0x09)
	.dwattr $C$DW$343, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$343, DW_AT_decl_column(0x05)

$C$DW$344	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$344, DW_AT_name("XBAR_INPUT11")
	.dwattr $C$DW$344, DW_AT_const_value(0x0a)
	.dwattr $C$DW$344, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$344, DW_AT_decl_column(0x05)

$C$DW$345	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$345, DW_AT_name("XBAR_INPUT12")
	.dwattr $C$DW$345, DW_AT_const_value(0x0b)
	.dwattr $C$DW$345, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$345, DW_AT_decl_column(0x05)

$C$DW$346	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$346, DW_AT_name("XBAR_INPUT13")
	.dwattr $C$DW$346, DW_AT_const_value(0x0c)
	.dwattr $C$DW$346, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$346, DW_AT_decl_column(0x05)

$C$DW$347	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$347, DW_AT_name("XBAR_INPUT14")
	.dwattr $C$DW$347, DW_AT_const_value(0x0d)
	.dwattr $C$DW$347, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$347, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("XBAR_InputNum")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$348	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$348, DW_AT_name("XBAR_AUXSIG0")
	.dwattr $C$DW$348, DW_AT_const_value(0x00)
	.dwattr $C$DW$348, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0xba)
	.dwattr $C$DW$348, DW_AT_decl_column(0x05)

$C$DW$349	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$349, DW_AT_name("XBAR_AUXSIG1")
	.dwattr $C$DW$349, DW_AT_const_value(0x02)
	.dwattr $C$DW$349, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$349, DW_AT_decl_column(0x05)

$C$DW$350	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$350, DW_AT_name("XBAR_AUXSIG2")
	.dwattr $C$DW$350, DW_AT_const_value(0x04)
	.dwattr $C$DW$350, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$350, DW_AT_decl_column(0x05)

$C$DW$351	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$351, DW_AT_name("XBAR_AUXSIG3")
	.dwattr $C$DW$351, DW_AT_const_value(0x06)
	.dwattr $C$DW$351, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$351, DW_AT_decl_column(0x05)

$C$DW$352	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$352, DW_AT_name("XBAR_AUXSIG4")
	.dwattr $C$DW$352, DW_AT_const_value(0x08)
	.dwattr $C$DW$352, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$352, DW_AT_decl_column(0x05)

$C$DW$353	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$353, DW_AT_name("XBAR_AUXSIG5")
	.dwattr $C$DW$353, DW_AT_const_value(0x0a)
	.dwattr $C$DW$353, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$353, DW_AT_decl_column(0x05)

$C$DW$354	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$354, DW_AT_name("XBAR_AUXSIG6")
	.dwattr $C$DW$354, DW_AT_const_value(0x0c)
	.dwattr $C$DW$354, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$354, DW_AT_decl_column(0x05)

$C$DW$355	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$355, DW_AT_name("XBAR_AUXSIG7")
	.dwattr $C$DW$355, DW_AT_const_value(0x0e)
	.dwattr $C$DW$355, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$355, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$44, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("XBAR_AuxSigNum")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$356	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$356, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH")
	.dwattr $C$DW$356, DW_AT_const_value(0x00)
	.dwattr $C$DW$356, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$356, DW_AT_decl_column(0x05)

$C$DW$357	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$357, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH_OR_L")
	.dwattr $C$DW$357, DW_AT_const_value(0x01)
	.dwattr $C$DW$357, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$357, DW_AT_decl_column(0x05)

$C$DW$358	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$358, DW_AT_name("XBAR_OUT_MUX00_ADCAEVT1")
	.dwattr $C$DW$358, DW_AT_const_value(0x02)
	.dwattr $C$DW$358, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$358, DW_AT_decl_column(0x05)

$C$DW$359	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$359, DW_AT_name("XBAR_OUT_MUX00_ECAP1_OUT")
	.dwattr $C$DW$359, DW_AT_const_value(0x03)
	.dwattr $C$DW$359, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0xea)
	.dwattr $C$DW$359, DW_AT_decl_column(0x05)

$C$DW$360	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$360, DW_AT_name("XBAR_OUT_MUX01_CMPSS1_CTRIPOUTL")
	.dwattr $C$DW$360, DW_AT_const_value(0x200)
	.dwattr $C$DW$360, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$360, DW_AT_decl_column(0x05)

$C$DW$361	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$361, DW_AT_name("XBAR_OUT_MUX01_INPUTXBAR1")
	.dwattr $C$DW$361, DW_AT_const_value(0x201)
	.dwattr $C$DW$361, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0xec)
	.dwattr $C$DW$361, DW_AT_decl_column(0x05)

$C$DW$362	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$362, DW_AT_name("XBAR_OUT_MUX01_CLB1_OUT4")
	.dwattr $C$DW$362, DW_AT_const_value(0x202)
	.dwattr $C$DW$362, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0xed)
	.dwattr $C$DW$362, DW_AT_decl_column(0x05)

$C$DW$363	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$363, DW_AT_name("XBAR_OUT_MUX01_ADCCEVT1")
	.dwattr $C$DW$363, DW_AT_const_value(0x203)
	.dwattr $C$DW$363, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0xee)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)

$C$DW$364	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$364, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH")
	.dwattr $C$DW$364, DW_AT_const_value(0x400)
	.dwattr $C$DW$364, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xef)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)

$C$DW$365	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$365, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH_OR_L")
	.dwattr $C$DW$365, DW_AT_const_value(0x401)
	.dwattr $C$DW$365, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$365, DW_AT_decl_column(0x05)

$C$DW$366	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$366, DW_AT_name("XBAR_OUT_MUX02_ADCAEVT2")
	.dwattr $C$DW$366, DW_AT_const_value(0x402)
	.dwattr $C$DW$366, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$366, DW_AT_decl_column(0x05)

$C$DW$367	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$367, DW_AT_name("XBAR_OUT_MUX02_ECAP2_OUT")
	.dwattr $C$DW$367, DW_AT_const_value(0x403)
	.dwattr $C$DW$367, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$367, DW_AT_decl_column(0x05)

$C$DW$368	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$368, DW_AT_name("XBAR_OUT_MUX03_CMPSS2_CTRIPOUTL")
	.dwattr $C$DW$368, DW_AT_const_value(0x600)
	.dwattr $C$DW$368, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)

$C$DW$369	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$369, DW_AT_name("XBAR_OUT_MUX03_INPUTXBAR2")
	.dwattr $C$DW$369, DW_AT_const_value(0x601)
	.dwattr $C$DW$369, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)

$C$DW$370	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$370, DW_AT_name("XBAR_OUT_MUX03_CLB1_OUT5")
	.dwattr $C$DW$370, DW_AT_const_value(0x602)
	.dwattr $C$DW$370, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)

$C$DW$371	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$371, DW_AT_name("XBAR_OUT_MUX03_ADCCEVT2")
	.dwattr $C$DW$371, DW_AT_const_value(0x603)
	.dwattr $C$DW$371, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)

$C$DW$372	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$372, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH")
	.dwattr $C$DW$372, DW_AT_const_value(0x800)
	.dwattr $C$DW$372, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$372, DW_AT_decl_column(0x05)

$C$DW$373	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$373, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH_OR_L")
	.dwattr $C$DW$373, DW_AT_const_value(0x801)
	.dwattr $C$DW$373, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$373, DW_AT_decl_column(0x05)

$C$DW$374	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$374, DW_AT_name("XBAR_OUT_MUX04_ADCAEVT3")
	.dwattr $C$DW$374, DW_AT_const_value(0x802)
	.dwattr $C$DW$374, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$374, DW_AT_decl_column(0x05)

$C$DW$375	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$375, DW_AT_name("XBAR_OUT_MUX04_ECAP3_OUT")
	.dwattr $C$DW$375, DW_AT_const_value(0x803)
	.dwattr $C$DW$375, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$375, DW_AT_decl_column(0x05)

$C$DW$376	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$376, DW_AT_name("XBAR_OUT_MUX05_CMPSS3_CTRIPOUTL")
	.dwattr $C$DW$376, DW_AT_const_value(0xa00)
	.dwattr $C$DW$376, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$376, DW_AT_decl_column(0x05)

$C$DW$377	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$377, DW_AT_name("XBAR_OUT_MUX05_INPUTXBAR3")
	.dwattr $C$DW$377, DW_AT_const_value(0xa01)
	.dwattr $C$DW$377, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$377, DW_AT_decl_column(0x05)

$C$DW$378	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$378, DW_AT_name("XBAR_OUT_MUX05_CLB2_OUT4")
	.dwattr $C$DW$378, DW_AT_const_value(0xa02)
	.dwattr $C$DW$378, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$378, DW_AT_decl_column(0x05)

$C$DW$379	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$379, DW_AT_name("XBAR_OUT_MUX05_ADCCEVT3")
	.dwattr $C$DW$379, DW_AT_const_value(0xa03)
	.dwattr $C$DW$379, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)

$C$DW$380	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$380, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH")
	.dwattr $C$DW$380, DW_AT_const_value(0xc00)
	.dwattr $C$DW$380, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0xff)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)

$C$DW$381	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$381, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH_OR_L")
	.dwattr $C$DW$381, DW_AT_const_value(0xc01)
	.dwattr $C$DW$381, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x100)
	.dwattr $C$DW$381, DW_AT_decl_column(0x05)

$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("XBAR_OUT_MUX06_ADCAEVT4")
	.dwattr $C$DW$382, DW_AT_const_value(0xc02)
	.dwattr $C$DW$382, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x101)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("XBAR_OUT_MUX06_ECAP4_OUT")
	.dwattr $C$DW$383, DW_AT_const_value(0xc03)
	.dwattr $C$DW$383, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x102)
	.dwattr $C$DW$383, DW_AT_decl_column(0x05)

$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("XBAR_OUT_MUX07_CMPSS4_CTRIPOUTL")
	.dwattr $C$DW$384, DW_AT_const_value(0xe00)
	.dwattr $C$DW$384, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x103)
	.dwattr $C$DW$384, DW_AT_decl_column(0x05)

$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("XBAR_OUT_MUX07_INPUTXBAR4")
	.dwattr $C$DW$385, DW_AT_const_value(0xe01)
	.dwattr $C$DW$385, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x104)
	.dwattr $C$DW$385, DW_AT_decl_column(0x05)

$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("XBAR_OUT_MUX07_CLB2_OUT5")
	.dwattr $C$DW$386, DW_AT_const_value(0xe02)
	.dwattr $C$DW$386, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x105)
	.dwattr $C$DW$386, DW_AT_decl_column(0x05)

$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("XBAR_OUT_MUX07_ADCCEVT4")
	.dwattr $C$DW$387, DW_AT_const_value(0xe03)
	.dwattr $C$DW$387, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x106)
	.dwattr $C$DW$387, DW_AT_decl_column(0x05)

$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH")
	.dwattr $C$DW$388, DW_AT_const_value(0x1000)
	.dwattr $C$DW$388, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x107)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH_OR_L")
	.dwattr $C$DW$389, DW_AT_const_value(0x1001)
	.dwattr $C$DW$389, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x108)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("XBAR_OUT_MUX08_ADCBEVT1")
	.dwattr $C$DW$390, DW_AT_const_value(0x1002)
	.dwattr $C$DW$390, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x109)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("XBAR_OUT_MUX08_ECAP5_OUT")
	.dwattr $C$DW$391, DW_AT_const_value(0x1003)
	.dwattr $C$DW$391, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("XBAR_OUT_MUX09_CMPSS5_CTRIPOUTL")
	.dwattr $C$DW$392, DW_AT_const_value(0x1200)
	.dwattr $C$DW$392, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("XBAR_OUT_MUX09_INPUTXBAR5")
	.dwattr $C$DW$393, DW_AT_const_value(0x1201)
	.dwattr $C$DW$393, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("XBAR_OUT_MUX09_CLB3_OUT4")
	.dwattr $C$DW$394, DW_AT_const_value(0x1202)
	.dwattr $C$DW$394, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("XBAR_OUT_MUX09_ADCDEVT1")
	.dwattr $C$DW$395, DW_AT_const_value(0x1203)
	.dwattr $C$DW$395, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH")
	.dwattr $C$DW$396, DW_AT_const_value(0x1400)
	.dwattr $C$DW$396, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH_OR_L")
	.dwattr $C$DW$397, DW_AT_const_value(0x1401)
	.dwattr $C$DW$397, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x110)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("XBAR_OUT_MUX10_ADCBEVT2")
	.dwattr $C$DW$398, DW_AT_const_value(0x1402)
	.dwattr $C$DW$398, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x111)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("XBAR_OUT_MUX10_ECAP6_OUT")
	.dwattr $C$DW$399, DW_AT_const_value(0x1403)
	.dwattr $C$DW$399, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x112)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("XBAR_OUT_MUX11_CMPSS6_CTRIPOUTL")
	.dwattr $C$DW$400, DW_AT_const_value(0x1600)
	.dwattr $C$DW$400, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x113)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("XBAR_OUT_MUX11_INPUTXBAR6")
	.dwattr $C$DW$401, DW_AT_const_value(0x1601)
	.dwattr $C$DW$401, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x114)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("XBAR_OUT_MUX11_CLB3_OUT5")
	.dwattr $C$DW$402, DW_AT_const_value(0x1602)
	.dwattr $C$DW$402, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x115)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("XBAR_OUT_MUX11_ADCDEVT2")
	.dwattr $C$DW$403, DW_AT_const_value(0x1603)
	.dwattr $C$DW$403, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x116)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH")
	.dwattr $C$DW$404, DW_AT_const_value(0x1800)
	.dwattr $C$DW$404, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x117)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH_OR_L")
	.dwattr $C$DW$405, DW_AT_const_value(0x1801)
	.dwattr $C$DW$405, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x118)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("XBAR_OUT_MUX12_ADCBEVT3")
	.dwattr $C$DW$406, DW_AT_const_value(0x1802)
	.dwattr $C$DW$406, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x119)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("XBAR_OUT_MUX13_CMPSS7_CTRIPOUTL")
	.dwattr $C$DW$407, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$407, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("XBAR_OUT_MUX13_ADCSOCA")
	.dwattr $C$DW$408, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$408, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("XBAR_OUT_MUX13_CLB4_OUT4")
	.dwattr $C$DW$409, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$409, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("XBAR_OUT_MUX13_ADCDEVT3")
	.dwattr $C$DW$410, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$410, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$410, DW_AT_decl_column(0x05)

$C$DW$411	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$411, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH")
	.dwattr $C$DW$411, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$411, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$411, DW_AT_decl_column(0x05)

$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH_OR_L")
	.dwattr $C$DW$412, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$412, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$412, DW_AT_decl_column(0x05)

$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("XBAR_OUT_MUX14_ADCBEVT4")
	.dwattr $C$DW$413, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$413, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x120)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("XBAR_OUT_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$414, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$414, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x121)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("XBAR_OUT_MUX15_CMPSS8_CTRIPOUTL")
	.dwattr $C$DW$415, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$415, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x122)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("XBAR_OUT_MUX15_ADCSOCB")
	.dwattr $C$DW$416, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$416, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x123)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("XBAR_OUT_MUX15_CLB4_OUT5")
	.dwattr $C$DW$417, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$417, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x124)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("XBAR_OUT_MUX15_ADCDEVT4")
	.dwattr $C$DW$418, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$418, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x125)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$419, DW_AT_const_value(0x2000)
	.dwattr $C$DW$419, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x126)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$420, DW_AT_const_value(0x2001)
	.dwattr $C$DW$420, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x127)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("XBAR_OUT_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$421, DW_AT_const_value(0x2200)
	.dwattr $C$DW$421, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x128)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$422, DW_AT_const_value(0x2400)
	.dwattr $C$DW$422, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x129)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$423, DW_AT_const_value(0x2401)
	.dwattr $C$DW$423, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("XBAR_OUT_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$424, DW_AT_const_value(0x2600)
	.dwattr $C$DW$424, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$425, DW_AT_const_value(0x2800)
	.dwattr $C$DW$425, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$426, DW_AT_const_value(0x2801)
	.dwattr $C$DW$426, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("XBAR_OUT_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$427, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$427, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$428, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$428, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$429, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$429, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x130)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("XBAR_OUT_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$430, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$430, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x131)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$431, DW_AT_const_value(0x3000)
	.dwattr $C$DW$431, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x132)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

$C$DW$432	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$432, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$432, DW_AT_const_value(0x3001)
	.dwattr $C$DW$432, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x133)
	.dwattr $C$DW$432, DW_AT_decl_column(0x05)

$C$DW$433	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$433, DW_AT_name("XBAR_OUT_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$433, DW_AT_const_value(0x3200)
	.dwattr $C$DW$433, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x134)
	.dwattr $C$DW$433, DW_AT_decl_column(0x05)

$C$DW$434	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$434, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$434, DW_AT_const_value(0x3400)
	.dwattr $C$DW$434, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x135)
	.dwattr $C$DW$434, DW_AT_decl_column(0x05)

$C$DW$435	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$435, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$435, DW_AT_const_value(0x3401)
	.dwattr $C$DW$435, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x136)
	.dwattr $C$DW$435, DW_AT_decl_column(0x05)

$C$DW$436	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$436, DW_AT_name("XBAR_OUT_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$436, DW_AT_const_value(0x3600)
	.dwattr $C$DW$436, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x137)
	.dwattr $C$DW$436, DW_AT_decl_column(0x05)

$C$DW$437	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$437, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$437, DW_AT_const_value(0x3800)
	.dwattr $C$DW$437, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x138)
	.dwattr $C$DW$437, DW_AT_decl_column(0x05)

$C$DW$438	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$438, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$438, DW_AT_const_value(0x3801)
	.dwattr $C$DW$438, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x139)
	.dwattr $C$DW$438, DW_AT_decl_column(0x05)

$C$DW$439	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$439, DW_AT_name("XBAR_OUT_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$439, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$439, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$439, DW_AT_decl_column(0x05)

$C$DW$440	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$440, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$440, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$440, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$440, DW_AT_decl_column(0x05)

$C$DW$441	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$441, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$441, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$441, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$441, DW_AT_decl_column(0x05)

$C$DW$442	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$442, DW_AT_name("XBAR_OUT_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$442, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$442, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$442, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$46, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("XBAR_OutputMuxConfig")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$443	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$443, DW_AT_name("XBAR_CLB_MUX00_CMPSS1_CTRIPH")
	.dwattr $C$DW$443, DW_AT_const_value(0x00)
	.dwattr $C$DW$443, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$443, DW_AT_decl_column(0x05)

$C$DW$444	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$444, DW_AT_name("XBAR_CLB_MUX00_CMPSS1_CTRIPH_OR_L")
	.dwattr $C$DW$444, DW_AT_const_value(0x01)
	.dwattr $C$DW$444, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$444, DW_AT_decl_column(0x05)

$C$DW$445	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$445, DW_AT_name("XBAR_CLB_MUX00_ADCAEVT1")
	.dwattr $C$DW$445, DW_AT_const_value(0x02)
	.dwattr $C$DW$445, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$445, DW_AT_decl_column(0x05)

$C$DW$446	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$446, DW_AT_name("XBAR_CLB_MUX00_ECAP1_OUT")
	.dwattr $C$DW$446, DW_AT_const_value(0x03)
	.dwattr $C$DW$446, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$446, DW_AT_decl_column(0x05)

$C$DW$447	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$447, DW_AT_name("XBAR_CLB_MUX01_CMPSS1_CTRIPL")
	.dwattr $C$DW$447, DW_AT_const_value(0x200)
	.dwattr $C$DW$447, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$447, DW_AT_decl_column(0x05)

$C$DW$448	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$448, DW_AT_name("XBAR_CLB_MUX01_INPUTXBAR1")
	.dwattr $C$DW$448, DW_AT_const_value(0x201)
	.dwattr $C$DW$448, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$448, DW_AT_decl_column(0x05)

$C$DW$449	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$449, DW_AT_name("XBAR_CLB_MUX01_CLB1_OUT4")
	.dwattr $C$DW$449, DW_AT_const_value(0x202)
	.dwattr $C$DW$449, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$449, DW_AT_decl_column(0x05)

$C$DW$450	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$450, DW_AT_name("XBAR_CLB_MUX01_ADCCEVT1")
	.dwattr $C$DW$450, DW_AT_const_value(0x203)
	.dwattr $C$DW$450, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$450, DW_AT_decl_column(0x05)

$C$DW$451	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$451, DW_AT_name("XBAR_CLB_MUX02_CMPSS2_CTRIPH")
	.dwattr $C$DW$451, DW_AT_const_value(0x400)
	.dwattr $C$DW$451, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)

$C$DW$452	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$452, DW_AT_name("XBAR_CLB_MUX02_CMPSS2_CTRIPH_OR_L")
	.dwattr $C$DW$452, DW_AT_const_value(0x401)
	.dwattr $C$DW$452, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)

$C$DW$453	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$453, DW_AT_name("XBAR_CLB_MUX02_ADCAEVT2")
	.dwattr $C$DW$453, DW_AT_const_value(0x402)
	.dwattr $C$DW$453, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)

$C$DW$454	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$454, DW_AT_name("XBAR_CLB_MUX02_ECAP2_OUT")
	.dwattr $C$DW$454, DW_AT_const_value(0x403)
	.dwattr $C$DW$454, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$454, DW_AT_decl_column(0x05)

$C$DW$455	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$455, DW_AT_name("XBAR_CLB_MUX03_CMPSS2_CTRIPL")
	.dwattr $C$DW$455, DW_AT_const_value(0x600)
	.dwattr $C$DW$455, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$455, DW_AT_decl_column(0x05)

$C$DW$456	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$456, DW_AT_name("XBAR_CLB_MUX03_INPUTXBAR2")
	.dwattr $C$DW$456, DW_AT_const_value(0x601)
	.dwattr $C$DW$456, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$456, DW_AT_decl_column(0x05)

$C$DW$457	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$457, DW_AT_name("XBAR_CLB_MUX03_CLB1_OUT5")
	.dwattr $C$DW$457, DW_AT_const_value(0x602)
	.dwattr $C$DW$457, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$457, DW_AT_decl_column(0x05)

$C$DW$458	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$458, DW_AT_name("XBAR_CLB_MUX03_ADCCEVT2")
	.dwattr $C$DW$458, DW_AT_const_value(0x603)
	.dwattr $C$DW$458, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$458, DW_AT_decl_column(0x05)

$C$DW$459	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$459, DW_AT_name("XBAR_CLB_MUX04_CMPSS3_CTRIPH")
	.dwattr $C$DW$459, DW_AT_const_value(0x800)
	.dwattr $C$DW$459, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$459, DW_AT_decl_column(0x05)

$C$DW$460	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$460, DW_AT_name("XBAR_CLB_MUX04_CMPSS3_CTRIPH_OR_L")
	.dwattr $C$DW$460, DW_AT_const_value(0x801)
	.dwattr $C$DW$460, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$460, DW_AT_decl_column(0x05)

$C$DW$461	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$461, DW_AT_name("XBAR_CLB_MUX04_ADCAEVT3")
	.dwattr $C$DW$461, DW_AT_const_value(0x802)
	.dwattr $C$DW$461, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$461, DW_AT_decl_column(0x05)

$C$DW$462	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$462, DW_AT_name("XBAR_CLB_MUX04_ECAP3_OUT")
	.dwattr $C$DW$462, DW_AT_const_value(0x803)
	.dwattr $C$DW$462, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$462, DW_AT_decl_column(0x05)

$C$DW$463	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$463, DW_AT_name("XBAR_CLB_MUX05_CMPSS3_CTRIPL")
	.dwattr $C$DW$463, DW_AT_const_value(0xa00)
	.dwattr $C$DW$463, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$463, DW_AT_decl_column(0x05)

$C$DW$464	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$464, DW_AT_name("XBAR_CLB_MUX05_INPUTXBAR3")
	.dwattr $C$DW$464, DW_AT_const_value(0xa01)
	.dwattr $C$DW$464, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$464, DW_AT_decl_column(0x05)

$C$DW$465	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$465, DW_AT_name("XBAR_CLB_MUX05_CLB2_OUT4")
	.dwattr $C$DW$465, DW_AT_const_value(0xa02)
	.dwattr $C$DW$465, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$465, DW_AT_decl_column(0x05)

$C$DW$466	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$466, DW_AT_name("XBAR_CLB_MUX05_ADCCEVT3")
	.dwattr $C$DW$466, DW_AT_const_value(0xa03)
	.dwattr $C$DW$466, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$466, DW_AT_decl_column(0x05)

$C$DW$467	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$467, DW_AT_name("XBAR_CLB_MUX06_CMPSS4_CTRIPH")
	.dwattr $C$DW$467, DW_AT_const_value(0xc00)
	.dwattr $C$DW$467, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$467, DW_AT_decl_column(0x05)

$C$DW$468	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$468, DW_AT_name("XBAR_CLB_MUX06_CMPSS4_CTRIPH_OR_L")
	.dwattr $C$DW$468, DW_AT_const_value(0xc01)
	.dwattr $C$DW$468, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$468, DW_AT_decl_column(0x05)

$C$DW$469	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$469, DW_AT_name("XBAR_CLB_MUX06_ADCAEVT4")
	.dwattr $C$DW$469, DW_AT_const_value(0xc02)
	.dwattr $C$DW$469, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$469, DW_AT_decl_column(0x05)

$C$DW$470	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$470, DW_AT_name("XBAR_CLB_MUX06_ECAP4_OUT")
	.dwattr $C$DW$470, DW_AT_const_value(0xc03)
	.dwattr $C$DW$470, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$470, DW_AT_decl_column(0x05)

$C$DW$471	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$471, DW_AT_name("XBAR_CLB_MUX07_CMPSS4_CTRIPL")
	.dwattr $C$DW$471, DW_AT_const_value(0xe00)
	.dwattr $C$DW$471, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$471, DW_AT_decl_column(0x05)

$C$DW$472	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$472, DW_AT_name("XBAR_CLB_MUX07_INPUTXBAR4")
	.dwattr $C$DW$472, DW_AT_const_value(0xe01)
	.dwattr $C$DW$472, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$472, DW_AT_decl_column(0x05)

$C$DW$473	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$473, DW_AT_name("XBAR_CLB_MUX07_CLB2_OUT5")
	.dwattr $C$DW$473, DW_AT_const_value(0xe02)
	.dwattr $C$DW$473, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$473, DW_AT_decl_column(0x05)

$C$DW$474	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$474, DW_AT_name("XBAR_CLB_MUX07_ADCCEVT4")
	.dwattr $C$DW$474, DW_AT_const_value(0xe03)
	.dwattr $C$DW$474, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$474, DW_AT_decl_column(0x05)

$C$DW$475	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$475, DW_AT_name("XBAR_CLB_MUX08_CMPSS5_CTRIPH")
	.dwattr $C$DW$475, DW_AT_const_value(0x1000)
	.dwattr $C$DW$475, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$475, DW_AT_decl_column(0x05)

$C$DW$476	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$476, DW_AT_name("XBAR_CLB_MUX08_CMPSS5_CTRIPH_OR_L")
	.dwattr $C$DW$476, DW_AT_const_value(0x1001)
	.dwattr $C$DW$476, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$476, DW_AT_decl_column(0x05)

$C$DW$477	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$477, DW_AT_name("XBAR_CLB_MUX08_ADCBEVT1")
	.dwattr $C$DW$477, DW_AT_const_value(0x1002)
	.dwattr $C$DW$477, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$477, DW_AT_decl_column(0x05)

$C$DW$478	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$478, DW_AT_name("XBAR_CLB_MUX08_ECAP5_OUT")
	.dwattr $C$DW$478, DW_AT_const_value(0x1003)
	.dwattr $C$DW$478, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$478, DW_AT_decl_column(0x05)

$C$DW$479	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$479, DW_AT_name("XBAR_CLB_MUX09_CMPSS5_CTRIPL")
	.dwattr $C$DW$479, DW_AT_const_value(0x1200)
	.dwattr $C$DW$479, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$479, DW_AT_decl_column(0x05)

$C$DW$480	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$480, DW_AT_name("XBAR_CLB_MUX09_INPUTXBAR5")
	.dwattr $C$DW$480, DW_AT_const_value(0x1201)
	.dwattr $C$DW$480, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$480, DW_AT_decl_column(0x05)

$C$DW$481	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$481, DW_AT_name("XBAR_CLB_MUX09_CLB3_OUT4")
	.dwattr $C$DW$481, DW_AT_const_value(0x1202)
	.dwattr $C$DW$481, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$481, DW_AT_decl_column(0x05)

$C$DW$482	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$482, DW_AT_name("XBAR_CLB_MUX09_ADCDEVT1")
	.dwattr $C$DW$482, DW_AT_const_value(0x1203)
	.dwattr $C$DW$482, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$482, DW_AT_decl_column(0x05)

$C$DW$483	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$483, DW_AT_name("XBAR_CLB_MUX10_CMPSS6_CTRIPH")
	.dwattr $C$DW$483, DW_AT_const_value(0x1400)
	.dwattr $C$DW$483, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$483, DW_AT_decl_column(0x05)

$C$DW$484	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$484, DW_AT_name("XBAR_CLB_MUX10_CMPSS6_CTRIPH_OR_L")
	.dwattr $C$DW$484, DW_AT_const_value(0x1401)
	.dwattr $C$DW$484, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$484, DW_AT_decl_column(0x05)

$C$DW$485	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$485, DW_AT_name("XBAR_CLB_MUX10_ADCBEVT2")
	.dwattr $C$DW$485, DW_AT_const_value(0x1402)
	.dwattr $C$DW$485, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$485, DW_AT_decl_column(0x05)

$C$DW$486	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$486, DW_AT_name("XBAR_CLB_MUX10_ECAP6_OUT")
	.dwattr $C$DW$486, DW_AT_const_value(0x1403)
	.dwattr $C$DW$486, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$486, DW_AT_decl_column(0x05)

$C$DW$487	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$487, DW_AT_name("XBAR_CLB_MUX11_CMPSS6_CTRIPL")
	.dwattr $C$DW$487, DW_AT_const_value(0x1600)
	.dwattr $C$DW$487, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$487, DW_AT_decl_column(0x05)

$C$DW$488	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$488, DW_AT_name("XBAR_CLB_MUX11_INPUTXBAR6")
	.dwattr $C$DW$488, DW_AT_const_value(0x1601)
	.dwattr $C$DW$488, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$488, DW_AT_decl_column(0x05)

$C$DW$489	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$489, DW_AT_name("XBAR_CLB_MUX11_CLB3_OUT5")
	.dwattr $C$DW$489, DW_AT_const_value(0x1602)
	.dwattr $C$DW$489, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$489, DW_AT_decl_column(0x05)

$C$DW$490	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$490, DW_AT_name("XBAR_CLB_MUX11_ADCDEVT2")
	.dwattr $C$DW$490, DW_AT_const_value(0x1603)
	.dwattr $C$DW$490, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$490, DW_AT_decl_column(0x05)

$C$DW$491	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$491, DW_AT_name("XBAR_CLB_MUX12_CMPSS7_CTRIPH")
	.dwattr $C$DW$491, DW_AT_const_value(0x1800)
	.dwattr $C$DW$491, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$491, DW_AT_decl_column(0x05)

$C$DW$492	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$492, DW_AT_name("XBAR_CLB_MUX12_CMPSS7_CTRIPH_OR_L")
	.dwattr $C$DW$492, DW_AT_const_value(0x1801)
	.dwattr $C$DW$492, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$492, DW_AT_decl_column(0x05)

$C$DW$493	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$493, DW_AT_name("XBAR_CLB_MUX12_ADCBEVT3")
	.dwattr $C$DW$493, DW_AT_const_value(0x1802)
	.dwattr $C$DW$493, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$493, DW_AT_decl_column(0x05)

$C$DW$494	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$494, DW_AT_name("XBAR_CLB_MUX13_CMPSS7_CTRIPL")
	.dwattr $C$DW$494, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$494, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$494, DW_AT_decl_column(0x05)

$C$DW$495	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$495, DW_AT_name("XBAR_CLB_MUX13_ADCSOCA")
	.dwattr $C$DW$495, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$495, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$495, DW_AT_decl_column(0x05)

$C$DW$496	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$496, DW_AT_name("XBAR_CLB_MUX13_CLB4_OUT4")
	.dwattr $C$DW$496, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$496, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$496, DW_AT_decl_column(0x05)

$C$DW$497	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$497, DW_AT_name("XBAR_CLB_MUX13_ADCDEVT3")
	.dwattr $C$DW$497, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$497, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$497, DW_AT_decl_column(0x05)

$C$DW$498	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$498, DW_AT_name("XBAR_CLB_MUX14_CMPSS8_CTRIPH")
	.dwattr $C$DW$498, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$498, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$498, DW_AT_decl_column(0x05)

$C$DW$499	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$499, DW_AT_name("XBAR_CLB_MUX14_CMPSS8_CTRIPH_OR_L")
	.dwattr $C$DW$499, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$499, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$499, DW_AT_decl_column(0x05)

$C$DW$500	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$500, DW_AT_name("XBAR_CLB_MUX14_ADCBEVT4")
	.dwattr $C$DW$500, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$500, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$500, DW_AT_decl_column(0x05)

$C$DW$501	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$501, DW_AT_name("XBAR_CLB_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$501, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$501, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$501, DW_AT_decl_column(0x05)

$C$DW$502	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$502, DW_AT_name("XBAR_CLB_MUX15_CMPSS8_CTRIPL")
	.dwattr $C$DW$502, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$502, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$502, DW_AT_decl_column(0x05)

$C$DW$503	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$503, DW_AT_name("XBAR_CLB_MUX15_ADCSOCB")
	.dwattr $C$DW$503, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$503, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$503, DW_AT_decl_column(0x05)

$C$DW$504	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$504, DW_AT_name("XBAR_CLB_MUX15_CLB4_OUT5")
	.dwattr $C$DW$504, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$504, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$504, DW_AT_decl_column(0x05)

$C$DW$505	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$505, DW_AT_name("XBAR_CLB_MUX15_ADCDEVT4")
	.dwattr $C$DW$505, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$505, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$505, DW_AT_decl_column(0x05)

$C$DW$506	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$506, DW_AT_name("XBAR_CLB_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$506, DW_AT_const_value(0x2000)
	.dwattr $C$DW$506, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$506, DW_AT_decl_column(0x05)

$C$DW$507	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$507, DW_AT_name("XBAR_CLB_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$507, DW_AT_const_value(0x2001)
	.dwattr $C$DW$507, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$507, DW_AT_decl_column(0x05)

$C$DW$508	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$508, DW_AT_name("XBAR_CLB_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$508, DW_AT_const_value(0x2200)
	.dwattr $C$DW$508, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x1eb)
	.dwattr $C$DW$508, DW_AT_decl_column(0x05)

$C$DW$509	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$509, DW_AT_name("XBAR_CLB_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$509, DW_AT_const_value(0x2400)
	.dwattr $C$DW$509, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$509, DW_AT_decl_column(0x05)

$C$DW$510	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$510, DW_AT_name("XBAR_CLB_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$510, DW_AT_const_value(0x2401)
	.dwattr $C$DW$510, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$510, DW_AT_decl_column(0x05)

$C$DW$511	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$511, DW_AT_name("XBAR_CLB_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$511, DW_AT_const_value(0x2600)
	.dwattr $C$DW$511, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$511, DW_AT_decl_column(0x05)

$C$DW$512	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$512, DW_AT_name("XBAR_CLB_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$512, DW_AT_const_value(0x2800)
	.dwattr $C$DW$512, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$512, DW_AT_decl_column(0x05)

$C$DW$513	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$513, DW_AT_name("XBAR_CLB_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$513, DW_AT_const_value(0x2801)
	.dwattr $C$DW$513, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$513, DW_AT_decl_column(0x05)

$C$DW$514	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$514, DW_AT_name("XBAR_CLB_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$514, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$514, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$514, DW_AT_decl_column(0x05)

$C$DW$515	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$515, DW_AT_name("XBAR_CLB_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$515, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$515, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$515, DW_AT_decl_column(0x05)

$C$DW$516	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$516, DW_AT_name("XBAR_CLB_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$516, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$516, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$516, DW_AT_decl_column(0x05)

$C$DW$517	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$517, DW_AT_name("XBAR_CLB_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$517, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$517, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$517, DW_AT_decl_column(0x05)

$C$DW$518	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$518, DW_AT_name("XBAR_CLB_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$518, DW_AT_const_value(0x3000)
	.dwattr $C$DW$518, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$518, DW_AT_decl_column(0x05)

$C$DW$519	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$519, DW_AT_name("XBAR_CLB_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$519, DW_AT_const_value(0x3001)
	.dwattr $C$DW$519, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$519, DW_AT_decl_column(0x05)

$C$DW$520	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$520, DW_AT_name("XBAR_CLB_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$520, DW_AT_const_value(0x3200)
	.dwattr $C$DW$520, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$520, DW_AT_decl_column(0x05)

$C$DW$521	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$521, DW_AT_name("XBAR_CLB_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$521, DW_AT_const_value(0x3400)
	.dwattr $C$DW$521, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$521, DW_AT_decl_column(0x05)

$C$DW$522	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$522, DW_AT_name("XBAR_CLB_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$522, DW_AT_const_value(0x3401)
	.dwattr $C$DW$522, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$522, DW_AT_decl_column(0x05)

$C$DW$523	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$523, DW_AT_name("XBAR_CLB_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$523, DW_AT_const_value(0x3600)
	.dwattr $C$DW$523, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$523, DW_AT_decl_column(0x05)

$C$DW$524	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$524, DW_AT_name("XBAR_CLB_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$524, DW_AT_const_value(0x3800)
	.dwattr $C$DW$524, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$524, DW_AT_decl_column(0x05)

$C$DW$525	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$525, DW_AT_name("XBAR_CLB_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$525, DW_AT_const_value(0x3801)
	.dwattr $C$DW$525, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$525, DW_AT_decl_column(0x05)

$C$DW$526	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$526, DW_AT_name("XBAR_CLB_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$526, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$526, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$526, DW_AT_decl_column(0x05)

$C$DW$527	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$527, DW_AT_name("XBAR_CLB_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$527, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$527, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$527, DW_AT_decl_column(0x05)

$C$DW$528	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$528, DW_AT_name("XBAR_CLB_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$528, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$528, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$528, DW_AT_decl_column(0x05)

$C$DW$529	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$529, DW_AT_name("XBAR_CLB_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$529, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$529, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x200)
	.dwattr $C$DW$529, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$48, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("XBAR_CLBMuxConfig")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:\TI\C2000Ware_MotorControl_SDK_5_04_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x201)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$530	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$530, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$530, DW_AT_const_value(0x00)
	.dwattr $C$DW$530, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$530, DW_AT_decl_column(0x05)

$C$DW$531	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$531, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$531, DW_AT_const_value(0x01)
	.dwattr $C$DW$531, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$531, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$532	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$532, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$532, DW_AT_const_value(0x00)
	.dwattr $C$DW$532, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x97)
	.dwattr $C$DW$532, DW_AT_decl_column(0x05)

$C$DW$533	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$533, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$533, DW_AT_const_value(0x01)
	.dwattr $C$DW$533, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x98)
	.dwattr $C$DW$533, DW_AT_decl_column(0x05)

$C$DW$534	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$534, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$534, DW_AT_const_value(0x02)
	.dwattr $C$DW$534, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x99)
	.dwattr $C$DW$534, DW_AT_decl_column(0x05)

$C$DW$535	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$535, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$535, DW_AT_const_value(0x03)
	.dwattr $C$DW$535, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$535, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$536	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$536, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$536, DW_AT_const_value(0x00)
	.dwattr $C$DW$536, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$536, DW_AT_decl_column(0x05)

$C$DW$537	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$537, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$537, DW_AT_const_value(0x01)
	.dwattr $C$DW$537, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$537, DW_AT_decl_column(0x05)

$C$DW$538	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$538, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$538, DW_AT_const_value(0x02)
	.dwattr $C$DW$538, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$538, DW_AT_decl_column(0x05)

$C$DW$539	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$539, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$539, DW_AT_const_value(0x03)
	.dwattr $C$DW$539, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$539, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$55


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("PM_tformat_DataStruct")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x11)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$540, DW_AT_name("controlField")
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0f)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$541, DW_AT_name("statusField")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0f)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$542, DW_AT_name("dataField0")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x22e)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0f)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$543, DW_AT_name("dataField1")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x22f)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0f)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$544, DW_AT_name("dataField2")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x230)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0f)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$545, DW_AT_name("dataField3")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x231)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0f)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$546, DW_AT_name("dataField4")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x232)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0f)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$547, DW_AT_name("dataField5")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x233)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0f)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$548, DW_AT_name("dataField6")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x234)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0f)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$549, DW_AT_name("dataField7")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x235)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0f)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$550, DW_AT_name("crcField")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x236)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0f)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$551, DW_AT_name("crcCheck")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x237)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0f)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$552, DW_AT_name("eepromAddressField")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x238)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0f)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$553, DW_AT_name("eepromWrDataField")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x239)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0f)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$554, DW_AT_name("eepromRdDataField")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0f)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$555, DW_AT_name("dataReady")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$555, DW_AT_decl_column(0x14)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$556, DW_AT_name("fifoLevel")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("PM_tformat_DataStruct")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$56


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$T$89	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$89


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x100)
$C$DW$557	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$557, DW_AT_upper_bound(0xff)

	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$558	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$20)

$C$DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$558)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x0c)
$C$DW$559	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$559, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$560	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$20)

$C$DW$T$114	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$560)

	.dwendtag $C$DW$TU$114


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


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$62, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_decl_file("D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$63


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$21, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$21, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$561	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$21)

$C$DW$T$22	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$561)

	.dwendtag $C$DW$TU$22


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94

$C$DW$T$94	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$94, DW_AT_name("commandID0_1_2_3_7_8_C")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$562	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$562, DW_AT_name("PM_TFORMAT_ID0")
	.dwattr $C$DW$562, DW_AT_const_value(0x903f)
	.dwattr $C$DW$562, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0xee)
	.dwattr $C$DW$562, DW_AT_decl_column(0x09)

$C$DW$563	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$563, DW_AT_name("PM_TFORMAT_ID1")
	.dwattr $C$DW$563, DW_AT_const_value(0x947f)
	.dwattr $C$DW$563, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0xef)
	.dwattr $C$DW$563, DW_AT_decl_column(0x09)

$C$DW$564	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$564, DW_AT_name("PM_TFORMAT_ID2")
	.dwattr $C$DW$564, DW_AT_const_value(0x927f)
	.dwattr $C$DW$564, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$564, DW_AT_decl_column(0x09)

$C$DW$565	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$565, DW_AT_name("PM_TFORMAT_ID3")
	.dwattr $C$DW$565, DW_AT_const_value(0x963f)
	.dwattr $C$DW$565, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$565, DW_AT_decl_column(0x09)

$C$DW$566	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$566, DW_AT_name("PM_TFORMAT_ID7")
	.dwattr $C$DW$566, DW_AT_const_value(0x977f)
	.dwattr $C$DW$566, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$566, DW_AT_decl_column(0x09)

$C$DW$567	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$567, DW_AT_name("PM_TFORMAT_ID8")
	.dwattr $C$DW$567, DW_AT_const_value(0x90ff)
	.dwattr $C$DW$567, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$567, DW_AT_decl_column(0x09)

$C$DW$568	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$568, DW_AT_name("PM_TFORMAT_IDC")
	.dwattr $C$DW$568, DW_AT_const_value(0x91bf)
	.dwattr $C$DW$568, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$568, DW_AT_decl_column(0x09)

	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/include/PM_tformat_include.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$T$94

	.dwendtag $C$DW$TU$94

