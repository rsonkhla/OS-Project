################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/dev/generic/beep.c \
../kern/dev/generic/console.c \
../kern/dev/generic/random.c \
../kern/dev/generic/rtclock.c 

OBJS += \
./kern/dev/generic/beep.o \
./kern/dev/generic/console.o \
./kern/dev/generic/random.o \
./kern/dev/generic/rtclock.o 

C_DEPS += \
./kern/dev/generic/beep.d \
./kern/dev/generic/console.d \
./kern/dev/generic/random.d \
./kern/dev/generic/rtclock.d 


# Each subdirectory must supply rules for building sources it contributes
kern/dev/generic/%.o: ../kern/dev/generic/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


