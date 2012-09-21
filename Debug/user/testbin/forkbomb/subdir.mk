################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/forkbomb/forkbomb.c 

OBJS += \
./user/testbin/forkbomb/forkbomb.o 

C_DEPS += \
./user/testbin/forkbomb/forkbomb.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/forkbomb/%.o: ../user/testbin/forkbomb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


