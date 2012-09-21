################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/arch/mips/syscall/syscall.c 

OBJS += \
./kern/arch/mips/syscall/syscall.o 

C_DEPS += \
./kern/arch/mips/syscall/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
kern/arch/mips/syscall/%.o: ../kern/arch/mips/syscall/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


