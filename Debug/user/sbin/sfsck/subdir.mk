################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/sbin/sfsck/sfsck.c 

OBJS += \
./user/sbin/sfsck/sfsck.o 

C_DEPS += \
./user/sbin/sfsck/sfsck.d 


# Each subdirectory must supply rules for building sources it contributes
user/sbin/sfsck/%.o: ../user/sbin/sfsck/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


