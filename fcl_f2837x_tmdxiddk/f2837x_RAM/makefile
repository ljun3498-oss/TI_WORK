################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./sources/dlog_4ch_f.obj" \
"./sources/fcl_cla_code.obj" \
"./sources/fcl_cpu_code.obj" \
"./sources/fcl_f2837x_sfra_gui.obj" \
"./sources/fcl_f2837x_tmdxiddk.obj" \
"./sources/fcl_f2837x_tmdxiddk_cla_tasks.obj" \
"./sources/fcl_tformat_f2837x_config.obj" \
"./sources/sfra_gui_scicomms_driverlib.obj" \
"./sources/speed_observer.obj" \
"./src_device/F2837xD_CodeStartBranch.obj" \
"./src_device/F2837xD_GlobalVariableDefs.obj" \
"./src_device/device.obj" \
"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib/ccs/Release/driverlib.lib" \
"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/sfra/lib/sfra_f32_tmu_eabi.lib" \
"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/cmd/F2837xD_Headers_nonBIOS_cpu1_eabi.cmd" \
"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/tmdxiddk379d/f2837x/cmd/iddk_servo_2837x_ram_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-lPM_tformat_lib_f2837x.lib \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include sources/subdir_vars.mk
-include src_device/subdir_vars.mk
-include subdir_rules.mk
-include sources/subdir_rules.mk
-include src_device/subdir_rules.mk
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
fcl_f2837x_tmdxiddk.out 

EXE_OUTPUTS__QUOTED += \
"fcl_f2837x_tmdxiddk.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "fcl_f2837x_tmdxiddk.out"

# Tool invocations
fcl_f2837x_tmdxiddk.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --define=_DEBUG --define=CPU1 --define=_F2837X --define=F2837x_DEVICE --define=_DUAL_HEADERS --define=LARGE_MODEL -g --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --gen_func_subsections=on --abi=eabi -k --asm_listing -z -m"fcl_f2837x_tmdxiddk.map" --stack_size=0x380 --warn_sections -i"D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/lib" -i"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/libraries/dsp/VCU/c28/lib" -i"C:/TI/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/tformat/lib" -i"D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --reread_libs --define=CLA_C --diag_wrap=off --display_error_number --xml_link_info="fcl_f2837x_tmdxiddk_linkInfo.xml" --entry_point=code_start --rom_model -o "fcl_f2837x_tmdxiddk.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "sources/dlog_4ch_f.lst" "sources/fcl_cla_code.lst" "sources/fcl_cpu_code.lst" "sources/fcl_f2837x_sfra_gui.lst" "sources/fcl_f2837x_tmdxiddk.lst" "sources/fcl_f2837x_tmdxiddk_cla_tasks.lst" "sources/fcl_tformat_f2837x_config.lst" "sources/sfra_gui_scicomms_driverlib.lst" "sources/speed_observer.lst" "src_device/F2837xD_CodeStartBranch.lst" "src_device/F2837xD_GlobalVariableDefs.lst" "src_device/device.lst" 
	-$(RM) "sources\dlog_4ch_f.obj" "sources\fcl_cla_code.obj" "sources\fcl_cpu_code.obj" "sources\fcl_f2837x_sfra_gui.obj" "sources\fcl_f2837x_tmdxiddk.obj" "sources\fcl_f2837x_tmdxiddk_cla_tasks.obj" "sources\fcl_tformat_f2837x_config.obj" "sources\sfra_gui_scicomms_driverlib.obj" "sources\speed_observer.obj" "src_device\F2837xD_CodeStartBranch.obj" "src_device\F2837xD_GlobalVariableDefs.obj" "src_device\device.obj" 
	-$(RM) "sources\dlog_4ch_f.d" "sources\fcl_cpu_code.d" "sources\fcl_f2837x_sfra_gui.d" "sources\fcl_f2837x_tmdxiddk.d" "sources\fcl_tformat_f2837x_config.d" "sources\sfra_gui_scicomms_driverlib.d" "sources\speed_observer.d" "src_device\F2837xD_GlobalVariableDefs.d" "src_device\device.d" 
	-$(RM) "sources/dlog_4ch_f.asm" "sources/fcl_cla_code.asm" "sources/fcl_cpu_code.asm" "sources/fcl_f2837x_sfra_gui.asm" "sources/fcl_f2837x_tmdxiddk.asm" "sources/fcl_f2837x_tmdxiddk_cla_tasks.asm" "sources/fcl_tformat_f2837x_config.asm" "sources/sfra_gui_scicomms_driverlib.asm" "sources/speed_observer.asm" "src_device/F2837xD_CodeStartBranch.asm" "src_device/F2837xD_GlobalVariableDefs.asm" "src_device/device.asm" 
	-$(RM) "sources\fcl_cla_code.d" "sources\fcl_f2837x_tmdxiddk_cla_tasks.d" 
	-$(RM) "src_device\F2837xD_CodeStartBranch.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

