################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/libc/stdlib/atoi.c 

OBJS += \
./common/libc/stdlib/atoi.o 

C_DEPS += \
./common/libc/stdlib/atoi.d 


# Each subdirectory must supply rules for building sources it contributes
common/libc/stdlib/%.o: ../common/libc/stdlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


