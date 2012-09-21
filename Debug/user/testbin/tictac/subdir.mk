################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/tictac/tictac.c 

OBJS += \
./user/testbin/tictac/tictac.o 

C_DEPS += \
./user/testbin/tictac/tictac.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/tictac/%.o: ../user/testbin/tictac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


