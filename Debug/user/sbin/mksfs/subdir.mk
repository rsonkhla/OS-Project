################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/sbin/mksfs/disk.c \
../user/sbin/mksfs/mksfs.c \
../user/sbin/mksfs/support.c 

OBJS += \
./user/sbin/mksfs/disk.o \
./user/sbin/mksfs/mksfs.o \
./user/sbin/mksfs/support.o 

C_DEPS += \
./user/sbin/mksfs/disk.d \
./user/sbin/mksfs/mksfs.d \
./user/sbin/mksfs/support.d 


# Each subdirectory must supply rules for building sources it contributes
user/sbin/mksfs/%.o: ../user/sbin/mksfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


