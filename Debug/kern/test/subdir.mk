################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/test/arraytest.c \
../kern/test/bitmaptest.c \
../kern/test/fstest.c \
../kern/test/malloctest.c \
../kern/test/nettest.c \
../kern/test/synchtest.c \
../kern/test/threadtest.c \
../kern/test/tt3.c 

OBJS += \
./kern/test/arraytest.o \
./kern/test/bitmaptest.o \
./kern/test/fstest.o \
./kern/test/malloctest.o \
./kern/test/nettest.o \
./kern/test/synchtest.o \
./kern/test/threadtest.o \
./kern/test/tt3.o 

C_DEPS += \
./kern/test/arraytest.d \
./kern/test/bitmaptest.d \
./kern/test/fstest.d \
./kern/test/malloctest.d \
./kern/test/nettest.d \
./kern/test/synchtest.d \
./kern/test/threadtest.d \
./kern/test/tt3.d 


# Each subdirectory must supply rules for building sources it contributes
kern/test/%.o: ../kern/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


