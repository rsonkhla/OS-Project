################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/bigfile/bigfile.c 

OBJS += \
./user/testbin/bigfile/bigfile.o 

C_DEPS += \
./user/testbin/bigfile/bigfile.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/bigfile/%.o: ../user/testbin/bigfile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


