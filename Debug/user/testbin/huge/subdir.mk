################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/huge/huge.c 

OBJS += \
./user/testbin/huge/huge.o 

C_DEPS += \
./user/testbin/huge/huge.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/huge/%.o: ../user/testbin/huge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


