################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../user/lib/libc/build/__assert.o \
../user/lib/libc/build/__printf.o \
../user/lib/libc/build/__puts.o \
../user/lib/libc/build/abort.o \
../user/lib/libc/build/adddi3.o \
../user/lib/libc/build/anddi3.o \
../user/lib/libc/build/ashldi3.o \
../user/lib/libc/build/ashrdi3.o \
../user/lib/libc/build/atoi.o \
../user/lib/libc/build/bzero.o \
../user/lib/libc/build/cmpdi2.o \
../user/lib/libc/build/divdi3.o \
../user/lib/libc/build/err.o \
../user/lib/libc/build/errno.o \
../user/lib/libc/build/exit.o \
../user/lib/libc/build/getchar.o \
../user/lib/libc/build/getcwd.o \
../user/lib/libc/build/iordi3.o \
../user/lib/libc/build/lshldi3.o \
../user/lib/libc/build/lshrdi3.o \
../user/lib/libc/build/malloc.o \
../user/lib/libc/build/memcmp.o \
../user/lib/libc/build/memcpy.o \
../user/lib/libc/build/memmove.o \
../user/lib/libc/build/memset.o \
../user/lib/libc/build/moddi3.o \
../user/lib/libc/build/muldi3.o \
../user/lib/libc/build/negdi2.o \
../user/lib/libc/build/notdi2.o \
../user/lib/libc/build/printf.o \
../user/lib/libc/build/putchar.o \
../user/lib/libc/build/puts.o \
../user/lib/libc/build/qdivrem.o \
../user/lib/libc/build/random.o \
../user/lib/libc/build/setjmp.o \
../user/lib/libc/build/snprintf.o \
../user/lib/libc/build/strcat.o \
../user/lib/libc/build/strchr.o \
../user/lib/libc/build/strcmp.o \
../user/lib/libc/build/strcpy.o \
../user/lib/libc/build/strerror.o \
../user/lib/libc/build/strlen.o \
../user/lib/libc/build/strrchr.o \
../user/lib/libc/build/strtok.o \
../user/lib/libc/build/strtok_r.o \
../user/lib/libc/build/subdi3.o \
../user/lib/libc/build/syscalls.o \
../user/lib/libc/build/system.o \
../user/lib/libc/build/time.o \
../user/lib/libc/build/ucmpdi2.o \
../user/lib/libc/build/udivdi3.o \
../user/lib/libc/build/umoddi3.o \
../user/lib/libc/build/xordi3.o 

S_UPPER_SRCS += \
../user/lib/libc/build/syscalls.S 

OBJS += \
./user/lib/libc/build/syscalls.o 


# Each subdirectory must supply rules for building sources it contributes
user/lib/libc/build/%.o: ../user/lib/libc/build/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


