################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/triplemat/triple.c \
../user/testbin/triplemat/triplemat.c 

OBJS += \
./user/testbin/triplemat/triple.o \
./user/testbin/triplemat/triplemat.o 

C_DEPS += \
./user/testbin/triplemat/triple.d \
./user/testbin/triplemat/triplemat.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/triplemat/%.o: ../user/testbin/triplemat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


