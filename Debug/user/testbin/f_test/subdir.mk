################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/f_test/f_read.c \
../user/testbin/f_test/f_test.c \
../user/testbin/f_test/f_write.c 

OBJS += \
./user/testbin/f_test/f_read.o \
./user/testbin/f_test/f_test.o \
./user/testbin/f_test/f_write.o 

C_DEPS += \
./user/testbin/f_test/f_read.d \
./user/testbin/f_test/f_test.d \
./user/testbin/f_test/f_write.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/f_test/%.o: ../user/testbin/f_test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


