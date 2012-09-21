################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../user/lib/libc/arch/mips/syscalls-mips.S 

OBJS += \
./user/lib/libc/arch/mips/syscalls-mips.o 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/arch/mips/%.o: ../user/lib/libc/arch/mips/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


