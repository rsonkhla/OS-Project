################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/libc/printf/__printf.c \
../common/libc/printf/snprintf.c 

OBJS += \
./common/libc/printf/__printf.o \
./common/libc/printf/snprintf.o 

C_DEPS += \
./common/libc/printf/__printf.d \
./common/libc/printf/snprintf.d 


# Each subdirectory must supply rules for building sources it contributes
common/libc/printf/%.o: ../common/libc/printf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


