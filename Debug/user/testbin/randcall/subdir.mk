################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/randcall/calls.c \
../user/testbin/randcall/main.c 

OBJS += \
./user/testbin/randcall/calls.o \
./user/testbin/randcall/main.o 

C_DEPS += \
./user/testbin/randcall/calls.d \
./user/testbin/randcall/main.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/randcall/%.o: ../user/testbin/randcall/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


