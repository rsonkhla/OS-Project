################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../common/libc/arch/mips/setjmp.S 

OBJS += \
./common/libc/arch/mips/setjmp.o 


# Each subdirectory must supply rules for building sources it contributes
common/libc/arch/mips/%.o: ../common/libc/arch/mips/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


