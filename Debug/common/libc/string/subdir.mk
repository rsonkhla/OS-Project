################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/libc/string/bzero.c \
../common/libc/string/memcpy.c \
../common/libc/string/memmove.c \
../common/libc/string/strcat.c \
../common/libc/string/strchr.c \
../common/libc/string/strcmp.c \
../common/libc/string/strcpy.c \
../common/libc/string/strlen.c \
../common/libc/string/strrchr.c \
../common/libc/string/strtok_r.c 

OBJS += \
./common/libc/string/bzero.o \
./common/libc/string/memcpy.o \
./common/libc/string/memmove.o \
./common/libc/string/strcat.o \
./common/libc/string/strchr.o \
./common/libc/string/strcmp.o \
./common/libc/string/strcpy.o \
./common/libc/string/strlen.o \
./common/libc/string/strrchr.o \
./common/libc/string/strtok_r.o 

C_DEPS += \
./common/libc/string/bzero.d \
./common/libc/string/memcpy.d \
./common/libc/string/memmove.d \
./common/libc/string/strcat.d \
./common/libc/string/strchr.d \
./common/libc/string/strcmp.d \
./common/libc/string/strcpy.d \
./common/libc/string/strlen.d \
./common/libc/string/strrchr.d \
./common/libc/string/strtok_r.d 


# Each subdirectory must supply rules for building sources it contributes
common/libc/string/%.o: ../common/libc/string/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


