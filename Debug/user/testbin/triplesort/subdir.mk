################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/triplesort/triple.c \
../user/testbin/triplesort/triplesort.c 

OBJS += \
./user/testbin/triplesort/triple.o \
./user/testbin/triplesort/triplesort.o 

C_DEPS += \
./user/testbin/triplesort/triple.d \
./user/testbin/triplesort/triplesort.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/triplesort/%.o: ../user/testbin/triplesort/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


