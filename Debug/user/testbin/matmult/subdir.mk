################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/matmult/matmult-orig.c \
../user/testbin/matmult/matmult.c 

OBJS += \
./user/testbin/matmult/matmult-orig.o \
./user/testbin/matmult/matmult.o 

C_DEPS += \
./user/testbin/matmult/matmult-orig.d \
./user/testbin/matmult/matmult.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/matmult/%.o: ../user/testbin/matmult/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


