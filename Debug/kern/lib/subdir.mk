################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/lib/array.c \
../kern/lib/bitmap.c \
../kern/lib/bswap.c \
../kern/lib/kgets.c \
../kern/lib/kprintf.c \
../kern/lib/misc.c \
../kern/lib/uio.c 

OBJS += \
./kern/lib/array.o \
./kern/lib/bitmap.o \
./kern/lib/bswap.o \
./kern/lib/kgets.o \
./kern/lib/kprintf.o \
./kern/lib/misc.o \
./kern/lib/uio.o 

C_DEPS += \
./kern/lib/array.d \
./kern/lib/bitmap.d \
./kern/lib/bswap.d \
./kern/lib/kgets.d \
./kern/lib/kprintf.d \
./kern/lib/misc.d \
./kern/lib/uio.d 


# Each subdirectory must supply rules for building sources it contributes
kern/lib/%.o: ../kern/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


