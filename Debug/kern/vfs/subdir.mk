################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/vfs/device.c \
../kern/vfs/devnull.c \
../kern/vfs/vfscwd.c \
../kern/vfs/vfslist.c \
../kern/vfs/vfslookup.c \
../kern/vfs/vfspath.c \
../kern/vfs/vnode.c 

OBJS += \
./kern/vfs/device.o \
./kern/vfs/devnull.o \
./kern/vfs/vfscwd.o \
./kern/vfs/vfslist.o \
./kern/vfs/vfslookup.o \
./kern/vfs/vfspath.o \
./kern/vfs/vnode.o 

C_DEPS += \
./kern/vfs/device.d \
./kern/vfs/devnull.d \
./kern/vfs/vfscwd.d \
./kern/vfs/vfslist.d \
./kern/vfs/vfslookup.d \
./kern/vfs/vfspath.d \
./kern/vfs/vnode.d 


# Each subdirectory must supply rules for building sources it contributes
kern/vfs/%.o: ../kern/vfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


