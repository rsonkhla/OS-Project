################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/thread/clock.c \
../kern/thread/pid.c \
../kern/thread/spinlock.c \
../kern/thread/spl.c \
../kern/thread/synch.c \
../kern/thread/thread.c \
../kern/thread/threadlist.c 

OBJS += \
./kern/thread/clock.o \
./kern/thread/pid.o \
./kern/thread/spinlock.o \
./kern/thread/spl.o \
./kern/thread/synch.o \
./kern/thread/thread.o \
./kern/thread/threadlist.o 

C_DEPS += \
./kern/thread/clock.d \
./kern/thread/pid.d \
./kern/thread/spinlock.d \
./kern/thread/spl.d \
./kern/thread/synch.d \
./kern/thread/thread.d \
./kern/thread/threadlist.d 


# Each subdirectory must supply rules for building sources it contributes
kern/thread/%.o: ../kern/thread/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


