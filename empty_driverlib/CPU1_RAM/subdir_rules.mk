################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.C $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O3 --opt_for_speed=3 --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib" --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib/device" --include_path="C:/TI/C2000Ware_6_00_01_00/driverlib/f2837xd/driverlib/" --include_path="D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --define=DEBUG --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib/CPU1_RAM/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-877337535: ../c2000.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/TI/sysconfig_1.25.0/sysconfig_cli.bat" --script "C:/Users/JUNLI/workspace_ccstheia/empty_driverlib/c2000.syscfg" -o "syscfg" -s "C:/TI/C2000Ware_6_00_01_00/.metadata/sdk.json" -d "F2837xD" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-877337535 ../c2000.syscfg
syscfg/board.h: build-877337535
syscfg/board.cmd.genlibs: build-877337535
syscfg/board.opt: build-877337535
syscfg/board.json: build-877337535
syscfg/pinmux.csv: build-877337535
syscfg/c2000ware_libraries.cmd.genlibs: build-877337535
syscfg/c2000ware_libraries.opt: build-877337535
syscfg/c2000ware_libraries.c: build-877337535
syscfg/c2000ware_libraries.h: build-877337535
syscfg/clocktree.h: build-877337535
syscfg: build-877337535

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O3 --opt_for_speed=3 --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib" --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib/device" --include_path="C:/TI/C2000Ware_6_00_01_00/driverlib/f2837xd/driverlib/" --include_path="D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --define=DEBUG --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/JUNLI/workspace_ccstheia/empty_driverlib/CPU1_RAM/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


