################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/libc/stdlib/abort.c \
../user/lib/libc/stdlib/exit.c \
../user/lib/libc/stdlib/malloc.c \
../user/lib/libc/stdlib/random.c \
../user/lib/libc/stdlib/system.c 

OBJS += \
./user/lib/libc/stdlib/abort.o \
./user/lib/libc/stdlib/exit.o \
./user/lib/libc/stdlib/malloc.o \
./user/lib/libc/stdlib/random.o \
./user/lib/libc/stdlib/system.o 

C_DEPS += \
./user/lib/libc/stdlib/abort.d \
./user/lib/libc/stdlib/exit.d \
./user/lib/libc/stdlib/malloc.d \
./user/lib/libc/stdlib/random.d \
./user/lib/libc/stdlib/system.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/stdlib/%.o: ../user/lib/libc/stdlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


