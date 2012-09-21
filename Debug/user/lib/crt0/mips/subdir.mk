################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../user/lib/crt0/mips/crt0.S 

OBJS += \
./user/lib/crt0/mips/crt0.o 


# Each subdirectory must supply rules for building sources it contributes
user/lib/crt0/mips/%.o: ../user/lib/crt0/mips/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


