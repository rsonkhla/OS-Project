################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/forktest/forktest.c 

OBJS += \
./user/testbin/forktest/forktest.o 

C_DEPS += \
./user/testbin/forktest/forktest.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/forktest/%.o: ../user/testbin/forktest/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


