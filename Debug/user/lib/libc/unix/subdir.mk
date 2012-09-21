################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/libc/unix/__assert.c \
../user/lib/libc/unix/err.c \
../user/lib/libc/unix/errno.c \
../user/lib/libc/unix/getcwd.c 

OBJS += \
./user/lib/libc/unix/__assert.o \
./user/lib/libc/unix/err.o \
./user/lib/libc/unix/errno.o \
./user/lib/libc/unix/getcwd.o 

C_DEPS += \
./user/lib/libc/unix/__assert.d \
./user/lib/libc/unix/err.d \
./user/lib/libc/unix/errno.d \
./user/lib/libc/unix/getcwd.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/unix/%.o: ../user/lib/libc/unix/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


