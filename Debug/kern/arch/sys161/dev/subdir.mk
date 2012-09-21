################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/arch/sys161/dev/lamebus_machdep.c 

OBJS += \
./kern/arch/sys161/dev/lamebus_machdep.o 

C_DEPS += \
./kern/arch/sys161/dev/lamebus_machdep.d 


# Each subdirectory must supply rules for building sources it contributes
kern/arch/sys161/dev/%.o: ../kern/arch/sys161/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


