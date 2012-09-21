################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/malloctest/malloctest.c 

OBJS += \
./user/testbin/malloctest/malloctest.o 

C_DEPS += \
./user/testbin/malloctest/malloctest.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/malloctest/%.o: ../user/testbin/malloctest/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


