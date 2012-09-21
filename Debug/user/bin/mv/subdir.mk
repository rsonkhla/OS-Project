################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/bin/mv/mv.c 

OBJS += \
./user/bin/mv/mv.o 

C_DEPS += \
./user/bin/mv/mv.d 


# Each subdirectory must supply rules for building sources it contributes
user/bin/mv/%.o: ../user/bin/mv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


