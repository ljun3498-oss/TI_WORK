################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
excluded/%.obj: ../excluded/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 -O3 --include_path="C:/Users/JUNLI/workspace_ccstheia/sci_cc_f2837xd" --include_path="C:/Users/JUNLI/workspace_ccstheia/sci_cc_f2837xd/device" --include_path="C:/TI/C2000Ware_6_00_01_00/driverlib/f2837xd/driverlib" --include_path="D:/TI/ccs/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --include_path="C:/Users/JUNLI/workspace_ccstheia/sci_cc_f2837xd/excluded" --define=DEBUG --define=CPU1 --define=C2K_GEN2_DEVICES --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="excluded/$(basename $(<F)).d_raw" --include_path="C:/Users/JUNLI/workspace_ccstheia/sci_cc_f2837xd/CPU1_RAM/syscfg" --obj_directory="excluded" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


