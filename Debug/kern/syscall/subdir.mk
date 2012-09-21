################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/syscall/file.c \
../kern/syscall/file_syscalls.c \
../kern/syscall/loadelf.c \
../kern/syscall/proc_syscalls.c \
../kern/syscall/runprogram.c \
../kern/syscall/time_syscalls.c 

OBJS += \
./kern/syscall/file.o \
./kern/syscall/file_syscalls.o \
./kern/syscall/loadelf.o \
./kern/syscall/proc_syscalls.o \
./kern/syscall/runprogram.o \
./kern/syscall/time_syscalls.o 

C_DEPS += \
./kern/syscall/file.d \
./kern/syscall/file_syscalls.d \
./kern/syscall/loadelf.d \
./kern/syscall/proc_syscalls.d \
./kern/syscall/runprogram.d \
./kern/syscall/time_syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
kern/syscall/%.o: ../kern/syscall/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


