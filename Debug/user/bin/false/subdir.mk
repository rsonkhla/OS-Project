################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/bin/false/false.c 

OBJS += \
./user/bin/false/false.o 

C_DEPS += \
./user/bin/false/false.d 


# Each subdirectory must supply rules for building sources it contributes
user/bin/false/%.o: ../user/bin/false/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


