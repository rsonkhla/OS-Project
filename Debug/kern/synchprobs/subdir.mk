################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/synchprobs/drivers.c \
../kern/synchprobs/problems.c 

OBJS += \
./kern/synchprobs/drivers.o \
./kern/synchprobs/problems.o 

C_DEPS += \
./kern/synchprobs/drivers.d \
./kern/synchprobs/problems.d 


# Each subdirectory must supply rules for building sources it contributes
kern/synchprobs/%.o: ../kern/synchprobs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


