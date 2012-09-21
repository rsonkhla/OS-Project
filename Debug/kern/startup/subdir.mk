################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/startup/main.c \
../kern/startup/menu.c 

OBJS += \
./kern/startup/main.o \
./kern/startup/menu.o 

C_DEPS += \
./kern/startup/main.d \
./kern/startup/menu.d 


# Each subdirectory must supply rules for building sources it contributes
kern/startup/%.o: ../kern/startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


