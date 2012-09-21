################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/sbin/halt/halt.c 

OBJS += \
./user/sbin/halt/halt.o 

C_DEPS += \
./user/sbin/halt/halt.d 


# Each subdirectory must supply rules for building sources it contributes
user/sbin/halt/%.o: ../user/sbin/halt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


