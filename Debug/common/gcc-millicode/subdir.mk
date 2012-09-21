################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/gcc-millicode/adddi3.c \
../common/gcc-millicode/anddi3.c \
../common/gcc-millicode/ashldi3.c \
../common/gcc-millicode/ashrdi3.c \
../common/gcc-millicode/cmpdi2.c \
../common/gcc-millicode/divdi3.c \
../common/gcc-millicode/iordi3.c \
../common/gcc-millicode/lshldi3.c \
../common/gcc-millicode/lshrdi3.c \
../common/gcc-millicode/moddi3.c \
../common/gcc-millicode/muldi3.c \
../common/gcc-millicode/negdi2.c \
../common/gcc-millicode/notdi2.c \
../common/gcc-millicode/qdivrem.c \
../common/gcc-millicode/subdi3.c \
../common/gcc-millicode/ucmpdi2.c \
../common/gcc-millicode/udivdi3.c \
../common/gcc-millicode/umoddi3.c \
../common/gcc-millicode/xordi3.c 

OBJS += \
./common/gcc-millicode/adddi3.o \
./common/gcc-millicode/anddi3.o \
./common/gcc-millicode/ashldi3.o \
./common/gcc-millicode/ashrdi3.o \
./common/gcc-millicode/cmpdi2.o \
./common/gcc-millicode/divdi3.o \
./common/gcc-millicode/iordi3.o \
./common/gcc-millicode/lshldi3.o \
./common/gcc-millicode/lshrdi3.o \
./common/gcc-millicode/moddi3.o \
./common/gcc-millicode/muldi3.o \
./common/gcc-millicode/negdi2.o \
./common/gcc-millicode/notdi2.o \
./common/gcc-millicode/qdivrem.o \
./common/gcc-millicode/subdi3.o \
./common/gcc-millicode/ucmpdi2.o \
./common/gcc-millicode/udivdi3.o \
./common/gcc-millicode/umoddi3.o \
./common/gcc-millicode/xordi3.o 

C_DEPS += \
./common/gcc-millicode/adddi3.d \
./common/gcc-millicode/anddi3.d \
./common/gcc-millicode/ashldi3.d \
./common/gcc-millicode/ashrdi3.d \
./common/gcc-millicode/cmpdi2.d \
./common/gcc-millicode/divdi3.d \
./common/gcc-millicode/iordi3.d \
./common/gcc-millicode/lshldi3.d \
./common/gcc-millicode/lshrdi3.d \
./common/gcc-millicode/moddi3.d \
./common/gcc-millicode/muldi3.d \
./common/gcc-millicode/negdi2.d \
./common/gcc-millicode/notdi2.d \
./common/gcc-millicode/qdivrem.d \
./common/gcc-millicode/subdi3.d \
./common/gcc-millicode/ucmpdi2.d \
./common/gcc-millicode/udivdi3.d \
./common/gcc-millicode/umoddi3.d \
./common/gcc-millicode/xordi3.d 


# Each subdirectory must supply rules for building sources it contributes
common/gcc-millicode/%.o: ../common/gcc-millicode/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


