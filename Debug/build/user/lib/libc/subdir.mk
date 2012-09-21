################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/user/lib/libc/__assert.o \
../build/user/lib/libc/__printf.o \
../build/user/lib/libc/__puts.o \
../build/user/lib/libc/abort.o \
../build/user/lib/libc/adddi3.o \
../build/user/lib/libc/anddi3.o \
../build/user/lib/libc/ashldi3.o \
../build/user/lib/libc/ashrdi3.o \
../build/user/lib/libc/atoi.o \
../build/user/lib/libc/bzero.o \
../build/user/lib/libc/cmpdi2.o \
../build/user/lib/libc/divdi3.o \
../build/user/lib/libc/err.o \
../build/user/lib/libc/errno.o \
../build/user/lib/libc/exit.o \
../build/user/lib/libc/getchar.o \
../build/user/lib/libc/getcwd.o \
../build/user/lib/libc/iordi3.o \
../build/user/lib/libc/lshldi3.o \
../build/user/lib/libc/lshrdi3.o \
../build/user/lib/libc/malloc.o \
../build/user/lib/libc/memcmp.o \
../build/user/lib/libc/memcpy.o \
../build/user/lib/libc/memmove.o \
../build/user/lib/libc/memset.o \
../build/user/lib/libc/moddi3.o \
../build/user/lib/libc/muldi3.o \
../build/user/lib/libc/negdi2.o \
../build/user/lib/libc/notdi2.o \
../build/user/lib/libc/printf.o \
../build/user/lib/libc/putchar.o \
../build/user/lib/libc/puts.o \
../build/user/lib/libc/qdivrem.o \
../build/user/lib/libc/random.o \
../build/user/lib/libc/setjmp.o \
../build/user/lib/libc/snprintf.o \
../build/user/lib/libc/strcat.o \
../build/user/lib/libc/strchr.o \
../build/user/lib/libc/strcmp.o \
../build/user/lib/libc/strcpy.o \
../build/user/lib/libc/strerror.o \
../build/user/lib/libc/strlen.o \
../build/user/lib/libc/strrchr.o \
../build/user/lib/libc/strtok.o \
../build/user/lib/libc/strtok_r.o \
../build/user/lib/libc/subdi3.o \
../build/user/lib/libc/syscalls.o \
../build/user/lib/libc/system.o \
../build/user/lib/libc/time.o \
../build/user/lib/libc/ucmpdi2.o \
../build/user/lib/libc/udivdi3.o \
../build/user/lib/libc/umoddi3.o \
../build/user/lib/libc/xordi3.o 

S_UPPER_SRCS += \
../build/user/lib/libc/syscalls.S 

OBJS += \
./build/user/lib/libc/syscalls.o 


# Each subdirectory must supply rules for building sources it contributes
build/user/lib/libc/%.o: ../build/user/lib/libc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


