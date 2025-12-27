################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
src_driver/%.obj: ../src_driver/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/Users/JUNLI/workspace_ccstheia/dual_axis_servo_drive_fcl_qep_f2837x" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/common/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/device_support/f2837xd/headers/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/driverlib/f2837xd/driverlib" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/libraries/math/FPUfastRTS/c28/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/c2000ware/libraries/control/DCL/c28/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/sfra/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/sfra/gui/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/datalog/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/fcl/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/position_sensing/qep/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/CLA_v1.0/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/math_blocks/include/v4.3/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/dacs/dac128s085/include" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/common/sensored_foc/include/" --include_path="D:/TI/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/solutions/boostxl_3phganinv/f2837x/include/" --include_path="D:/TI/ccs/tools/compiler/ti-cgt-c2000_22.6.2.LTS/include" --define=_DEBUG --define=LARGE_MODEL --define=CPU1 --define=DAC128S_ENABLE --define=DAC128S_SPIA --define=_DUAL_HEADERS --define=TEST_ENABLE --define=F2837x_DEVICE --define=_LAUNCHXL_F28379D --define=_BOOSTXL_3PHGANINV -g --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --gen_func_subsections=on --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="src_driver/$(basename $(<F)).d_raw" --obj_directory="src_driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


