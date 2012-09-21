################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/bin/ln/ln.c 

OBJS += \
./user/bin/ln/ln.o 

C_DEPS += \
./user/bin/ln/ln.d 


# Each subdirectory must supply rules for building sources it contributes
user/bin/ln/%.o: ../user/bin/ln/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


