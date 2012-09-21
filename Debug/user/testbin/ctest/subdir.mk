################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/ctest/ctest.c 

OBJS += \
./user/testbin/ctest/ctest.o 

C_DEPS += \
./user/testbin/ctest/ctest.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/ctest/%.o: ../user/testbin/ctest/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


