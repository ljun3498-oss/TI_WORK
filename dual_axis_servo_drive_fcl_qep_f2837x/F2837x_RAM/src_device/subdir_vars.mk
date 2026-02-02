################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../src_device/F2837xD_Headers_nonBIOS_cpu1_eabi.cmd \
../src_device/dual_axis_f2837x_ram_lnk_cpu1.cmd 

ASM_SRCS += \
../src_device/F2837xD_CodeStartBranch.asm 

C_SRCS += \
../src_device/F2837xD_GlobalVariableDefs.c \
../src_device/device.c 

C_DEPS += \
./src_device/F2837xD_GlobalVariableDefs.d \
./src_device/device.d 

OBJS += \
./src_device/F2837xD_CodeStartBranch.obj \
./src_device/F2837xD_GlobalVariableDefs.obj \
./src_device/device.obj 

ASM_DEPS += \
./src_device/F2837xD_CodeStartBranch.d 

OBJS__QUOTED += \
"src_device\F2837xD_CodeStartBranch.obj" \
"src_device\F2837xD_GlobalVariableDefs.obj" \
"src_device\device.obj" 

C_DEPS__QUOTED += \
"src_device\F2837xD_GlobalVariableDefs.d" \
"src_device\device.d" 

ASM_DEPS__QUOTED += \
"src_device\F2837xD_CodeStartBranch.d" 

ASM_SRCS__QUOTED += \
"../src_device/F2837xD_CodeStartBranch.asm" 

C_SRCS__QUOTED += \
"../src_device/F2837xD_GlobalVariableDefs.c" \
"../src_device/device.c" 


