################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/arch/mips/locore/trap.c 

S_UPPER_SRCS += \
../kern/arch/mips/locore/cache-mips161.S \
../kern/arch/mips/locore/exception-mips1.S 

OBJS += \
./kern/arch/mips/locore/cache-mips161.o \
./kern/arch/mips/locore/exception-mips1.o \
./kern/arch/mips/locore/trap.o 

C_DEPS += \
./kern/arch/mips/locore/trap.d 


# Each subdirectory must supply rules for building sources it contributes
kern/arch/mips/locore/%.o: ../kern/arch/mips/locore/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

kern/arch/mips/locore/%.o: ../kern/arch/mips/locore/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


