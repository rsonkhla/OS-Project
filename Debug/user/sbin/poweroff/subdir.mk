################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/sbin/poweroff/poweroff.c 

OBJS += \
./user/sbin/poweroff/poweroff.o 

C_DEPS += \
./user/sbin/poweroff/poweroff.d 


# Each subdirectory must supply rules for building sources it contributes
user/sbin/poweroff/%.o: ../user/sbin/poweroff/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


