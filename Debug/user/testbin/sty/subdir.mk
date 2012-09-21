################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/sty/sty.c 

OBJS += \
./user/testbin/sty/sty.o 

C_DEPS += \
./user/testbin/sty/sty.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/sty/%.o: ../user/testbin/sty/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


