################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/bin/mkdir/mkdir.c 

OBJS += \
./user/bin/mkdir/mkdir.o 

C_DEPS += \
./user/bin/mkdir/mkdir.d 


# Each subdirectory must supply rules for building sources it contributes
user/bin/mkdir/%.o: ../user/bin/mkdir/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


