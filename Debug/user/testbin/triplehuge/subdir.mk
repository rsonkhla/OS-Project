################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/triplehuge/triple.c \
../user/testbin/triplehuge/triplehuge.c 

OBJS += \
./user/testbin/triplehuge/triple.o \
./user/testbin/triplehuge/triplehuge.o 

C_DEPS += \
./user/testbin/triplehuge/triple.d \
./user/testbin/triplehuge/triplehuge.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/triplehuge/%.o: ../user/testbin/triplehuge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


