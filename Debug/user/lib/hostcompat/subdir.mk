################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/lib/hostcompat/err.c \
../user/lib/hostcompat/hostcompat.c \
../user/lib/hostcompat/time.c 

OBJS += \
./user/lib/hostcompat/err.o \
./user/lib/hostcompat/hostcompat.o \
./user/lib/hostcompat/time.o 

C_DEPS += \
./user/lib/hostcompat/err.d \
./user/lib/hostcompat/hostcompat.d \
./user/lib/hostcompat/time.d 


# Each subdirectory must supply rules for building sources it contributes
user/lib/hostcompat/%.o: ../user/lib/hostcompat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


