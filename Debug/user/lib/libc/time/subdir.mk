################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/libc/time/time.c 

OBJS += \
./user/lib/libc/time/time.o 

C_DEPS += \
./user/lib/libc/time/time.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/time/%.o: ../user/lib/libc/time/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


