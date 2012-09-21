################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../user/build/lib/libc/__assert.o \
../user/build/lib/libc/__printf.o \
../user/build/lib/libc/__puts.o \
../user/build/lib/libc/abort.o \
../user/build/lib/libc/adddi3.o \
../user/build/lib/libc/anddi3.o \
../user/build/lib/libc/ashldi3.o \
../user/build/lib/libc/ashrdi3.o \
../user/build/lib/libc/atoi.o \
../user/build/lib/libc/bzero.o \
../user/build/lib/libc/cmpdi2.o \
../user/build/lib/libc/divdi3.o \
../user/build/lib/libc/err.o \
../user/build/lib/libc/errno.o \
../user/build/lib/libc/exit.o \
../user/build/lib/libc/getchar.o \
../user/build/lib/libc/getcwd.o \
../user/build/lib/libc/iordi3.o \
../user/build/lib/libc/lshldi3.o \
../user/build/lib/libc/lshrdi3.o \
../user/build/lib/libc/malloc.o \
../user/build/lib/libc/memcmp.o \
../user/build/lib/libc/memcpy.o \
../user/build/lib/libc/memmove.o \
../user/build/lib/libc/memset.o \
../user/build/lib/libc/moddi3.o \
../user/build/lib/libc/muldi3.o \
../user/build/lib/libc/negdi2.o \
../user/build/lib/libc/notdi2.o \
../user/build/lib/libc/printf.o \
../user/build/lib/libc/putchar.o \
../user/build/lib/libc/puts.o \
../user/build/lib/libc/qdivrem.o \
../user/build/lib/libc/random.o \
../user/build/lib/libc/setjmp.o \
../user/build/lib/libc/snprintf.o \
../user/build/lib/libc/strcat.o \
../user/build/lib/libc/strchr.o \
../user/build/lib/libc/strcmp.o \
../user/build/lib/libc/strcpy.o \
../user/build/lib/libc/strerror.o \
../user/build/lib/libc/strlen.o \
../user/build/lib/libc/strrchr.o \
../user/build/lib/libc/strtok.o \
../user/build/lib/libc/strtok_r.o \
../user/build/lib/libc/subdi3.o \
../user/build/lib/libc/syscalls.o \
../user/build/lib/libc/system.o \
../user/build/lib/libc/time.o \
../user/build/lib/libc/ucmpdi2.o \
../user/build/lib/libc/udivdi3.o \
../user/build/lib/libc/umoddi3.o \
../user/build/lib/libc/xordi3.o 

S_UPPER_SRCS += \
../user/build/lib/libc/syscalls.S 

OBJS += \
./user/build/lib/libc/syscalls.o 


# Each subdirectory must supply rules for building sources it contributes
user/build/lib/libc/%.o: ../user/build/lib/libc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


