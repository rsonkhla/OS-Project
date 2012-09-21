################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/libc/stdio/__puts.c \
../user/lib/libc/stdio/getchar.c \
../user/lib/libc/stdio/printf.c \
../user/lib/libc/stdio/putchar.c \
../user/lib/libc/stdio/puts.c 

OBJS += \
./user/lib/libc/stdio/__puts.o \
./user/lib/libc/stdio/getchar.o \
./user/lib/libc/stdio/printf.o \
./user/lib/libc/stdio/putchar.o \
./user/lib/libc/stdio/puts.o 

C_DEPS += \
./user/lib/libc/stdio/__puts.d \
./user/lib/libc/stdio/getchar.d \
./user/lib/libc/stdio/printf.d \
./user/lib/libc/stdio/putchar.d \
./user/lib/libc/stdio/puts.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/stdio/%.o: ../user/lib/libc/stdio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


