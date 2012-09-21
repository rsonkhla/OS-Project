################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/libc/string/memcmp.c \
../user/lib/libc/string/memset.c \
../user/lib/libc/string/strerror.c \
../user/lib/libc/string/strtok.c 

OBJS += \
./user/lib/libc/string/memcmp.o \
./user/lib/libc/string/memset.o \
./user/lib/libc/string/strerror.o \
./user/lib/libc/string/strtok.o 

C_DEPS += \
./user/lib/libc/string/memcmp.d \
./user/lib/libc/string/memset.d \
./user/lib/libc/string/strerror.d \
./user/lib/libc/string/strtok.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/string/%.o: ../user/lib/libc/string/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


