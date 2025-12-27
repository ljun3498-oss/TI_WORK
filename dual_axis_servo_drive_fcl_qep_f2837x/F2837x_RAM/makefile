################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./sources/dlog_4ch_f.obj" \
"./sources/dual_axis_servo_drive.obj" \
"./sources/dual_axis_servo_drive_cla_tasks.obj" \
"./sources/dual_axis_servo_drive_hal.obj" \
"./sources/dual_axis_servo_drive_user.obj" \
"./sources/fcl_cla_code_dm.obj" \
"./sources/fcl_cpu_code_dm.obj" \
"./sources/sfra_gui.obj" \
"./sources/sfra_gui_scicomms_driverlib.obj" \
"./src_device/F2837xD_CodeStartBranch.obj" \
"./src_device/F2837xD_GlobalVariableDefs.obj" \
"./src_device/device.obj" \
"./src_driver/adc.obj" \
"./src_driver/cla.obj" \
"./src_driver/cmpss.obj" \
"./src_driver/cputimer.obj" \
"./src_driver/eqep.obj" \
"./src_driver/flash.obj" \
"./src_driver/gpio.obj" \
"./src_driver/interrupt.obj" \
"./src_driver/memcfg.obj" \
"./src_driver/sci.obj" \
"./src_driver/sdfm.obj" \
"./src_driver/spi.obj" \
"./src_driver/sysctl.obj" \
"./src_driver/xbar.obj" \
"../driverlib.lib" \
"../sfra.lib" \
"../src_device/F2837xD_Headers_nonBIOS_cpu1_eabi.cmd" \
"../src_device/dual_axis_f2837x_ram_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include sources/subdir_vars.mk
-include src_device/subdir_vars.mk
-include src_driver/subdir_vars.mk
-include subdir_rules.mk
-include sources/subdir_rules.mk
-include src_device/subdir_rules.mk
-include src_driver/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
dual_axis_servo_drive_fcl_qep_f2837x.out 

EXE_OUTPUTS__QUOTED += \
"dual_axis_servo_drive_fcl_qep_f2837x.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "dual_axis_servo_drive_fcl_qep_f2837x.out"

# Tool invocations
dual_axis_servo_drive_fcl_qep_f2837x.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --define=_DEBUG --define=LARGE_MODEL --define=CPU1 --define=DAC128S_ENABLE --define=DAC128S_SPIA --define=_DUAL_HEADERS --define=TEST_ENABLE --define=F2837x_DEVICE --define=_LAUNCHXL_F28379D --define=_BOOSTXL_3PHGANINV -g --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --gen_func_subsections=on --abi=eabi -k --asm_listing -z -m"dual_axis_servo_drive_fcl_qep_f2837x.map" --stack_size=0x380 --warn_sections -i"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/lib" -i"D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/libraries/dsp/VCU/c28/lib" -i"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --reread_libs --define=CLA_C --diag_wrap=off --display_error_number --xml_link_info="dual_axis_servo_drive_fcl_qep_f2837x_linkInfo.xml" --entry_point=code_start --rom_model -o "dual_axis_servo_drive_fcl_qep_f2837x.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "sources/dlog_4ch_f.lst" "sources/dual_axis_servo_drive.lst" "sources/dual_axis_servo_drive_cla_tasks.lst" "sources/dual_axis_servo_drive_hal.lst" "sources/dual_axis_servo_drive_user.lst" "sources/fcl_cla_code_dm.lst" "sources/fcl_cpu_code_dm.lst" "sources/sfra_gui.lst" "sources/sfra_gui_scicomms_driverlib.lst" "src_device/F2837xD_CodeStartBranch.lst" "src_device/F2837xD_GlobalVariableDefs.lst" "src_device/device.lst" "src_driver/adc.lst" "src_driver/cla.lst" "src_driver/cmpss.lst" "src_driver/cputimer.lst" "src_driver/eqep.lst" "src_driver/flash.lst" "src_driver/gpio.lst" "src_driver/interrupt.lst" "src_driver/memcfg.lst" "src_driver/sci.lst" "src_driver/sdfm.lst" "src_driver/spi.lst" "src_driver/sysctl.lst" "src_driver/xbar.lst" 
	-$(RM) "sources\dlog_4ch_f.obj" "sources\dual_axis_servo_drive.obj" "sources\dual_axis_servo_drive_cla_tasks.obj" "sources\dual_axis_servo_drive_hal.obj" "sources\dual_axis_servo_drive_user.obj" "sources\fcl_cla_code_dm.obj" "sources\fcl_cpu_code_dm.obj" "sources\sfra_gui.obj" "sources\sfra_gui_scicomms_driverlib.obj" "src_device\F2837xD_CodeStartBranch.obj" "src_device\F2837xD_GlobalVariableDefs.obj" "src_device\device.obj" "src_driver\adc.obj" "src_driver\cla.obj" "src_driver\cmpss.obj" "src_driver\cputimer.obj" "src_driver\eqep.obj" "src_driver\flash.obj" "src_driver\gpio.obj" "src_driver\interrupt.obj" "src_driver\memcfg.obj" "src_driver\sci.obj" "src_driver\sdfm.obj" "src_driver\spi.obj" "src_driver\sysctl.obj" "src_driver\xbar.obj" 
	-$(RM) "sources\dlog_4ch_f.d" "sources\dual_axis_servo_drive.d" "sources\dual_axis_servo_drive_hal.d" "sources\dual_axis_servo_drive_user.d" "sources\fcl_cpu_code_dm.d" "sources\sfra_gui.d" "sources\sfra_gui_scicomms_driverlib.d" "src_device\F2837xD_GlobalVariableDefs.d" "src_device\device.d" "src_driver\adc.d" "src_driver\cla.d" "src_driver\cmpss.d" "src_driver\cputimer.d" "src_driver\eqep.d" "src_driver\flash.d" "src_driver\gpio.d" "src_driver\interrupt.d" "src_driver\memcfg.d" "src_driver\sci.d" "src_driver\sdfm.d" "src_driver\spi.d" "src_driver\sysctl.d" "src_driver\xbar.d" 
	-$(RM) "sources/dlog_4ch_f.asm" "sources/dual_axis_servo_drive.asm" "sources/dual_axis_servo_drive_cla_tasks.asm" "sources/dual_axis_servo_drive_hal.asm" "sources/dual_axis_servo_drive_user.asm" "sources/fcl_cla_code_dm.asm" "sources/fcl_cpu_code_dm.asm" "sources/sfra_gui.asm" "sources/sfra_gui_scicomms_driverlib.asm" "src_device/F2837xD_CodeStartBranch.asm" "src_device/F2837xD_GlobalVariableDefs.asm" "src_device/device.asm" "src_driver/adc.asm" "src_driver/cla.asm" "src_driver/cmpss.asm" "src_driver/cputimer.asm" "src_driver/eqep.asm" "src_driver/flash.asm" "src_driver/gpio.asm" "src_driver/interrupt.asm" "src_driver/memcfg.asm" "src_driver/sci.asm" "src_driver/sdfm.asm" "src_driver/spi.asm" "src_driver/sysctl.asm" "src_driver/xbar.asm" 
	-$(RM) "sources\dual_axis_servo_drive_cla_tasks.d" "sources\fcl_cla_code_dm.d" 
	-$(RM) "src_device\F2837xD_CodeStartBranch.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

