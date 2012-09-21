################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/vm/addrspace.c \
../kern/vm/copyinout.c \
../kern/vm/kmalloc.c 

OBJS += \
./kern/vm/addrspace.o \
./kern/vm/copyinout.o \
./kern/vm/kmalloc.o 

C_DEPS += \
./kern/vm/addrspace.d \
./kern/vm/copyinout.d \
./kern/vm/kmalloc.d 


# Each subdirectory must supply rules for building sources it contributes
kern/vm/%.o: ../kern/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


