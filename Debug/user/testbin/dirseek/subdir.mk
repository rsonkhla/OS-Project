################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/dirseek/dirseek.c 

OBJS += \
./user/testbin/dirseek/dirseek.o 

C_DEPS += \
./user/testbin/dirseek/dirseek.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/dirseek/%.o: ../user/testbin/dirseek/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


