################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/arch/mips/thread/cpu.c \
../kern/arch/mips/thread/switchframe.c \
../kern/arch/mips/thread/thread_machdep.c 

S_UPPER_SRCS += \
../kern/arch/mips/thread/switch.S \
../kern/arch/mips/thread/threadstart.S 

OBJS += \
./kern/arch/mips/thread/cpu.o \
./kern/arch/mips/thread/switch.o \
./kern/arch/mips/thread/switchframe.o \
./kern/arch/mips/thread/thread_machdep.o \
./kern/arch/mips/thread/threadstart.o 

C_DEPS += \
./kern/arch/mips/thread/cpu.d \
./kern/arch/mips/thread/switchframe.d \
./kern/arch/mips/thread/thread_machdep.d 


# Each subdirectory must supply rules for building sources it contributes
kern/arch/mips/thread/%.o: ../kern/arch/mips/thread/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

kern/arch/mips/thread/%.o: ../kern/arch/mips/thread/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


