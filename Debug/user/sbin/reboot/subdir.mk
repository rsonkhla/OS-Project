################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/sbin/reboot/reboot.c 

OBJS += \
./user/sbin/reboot/reboot.o 

C_DEPS += \
./user/sbin/reboot/reboot.d 


# Each subdirectory must supply rules for building sources it contributes
user/sbin/reboot/%.o: ../user/sbin/reboot/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


