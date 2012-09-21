################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/arch/mips/vm/page_table.c \
../kern/arch/mips/vm/ram.c \
../kern/arch/mips/vm/swap.c \
../kern/arch/mips/vm/vm.c 

S_UPPER_SRCS += \
../kern/arch/mips/vm/tlb-mips1.S 

OBJS += \
./kern/arch/mips/vm/page_table.o \
./kern/arch/mips/vm/ram.o \
./kern/arch/mips/vm/swap.o \
./kern/arch/mips/vm/tlb-mips1.o \
./kern/arch/mips/vm/vm.o 

C_DEPS += \
./kern/arch/mips/vm/page_table.d \
./kern/arch/mips/vm/ram.d \
./kern/arch/mips/vm/swap.d \
./kern/arch/mips/vm/vm.d 


# Each subdirectory must supply rules for building sources it contributes
kern/arch/mips/vm/%.o: ../kern/arch/mips/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

kern/arch/mips/vm/%.o: ../kern/arch/mips/vm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


