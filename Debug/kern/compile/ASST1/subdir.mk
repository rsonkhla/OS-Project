################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../kern/compile/ASST1/__printf.o \
../kern/compile/ASST1/adddi3.o \
../kern/compile/ASST1/anddi3.o \
../kern/compile/ASST1/array.o \
../kern/compile/ASST1/arraytest.o \
../kern/compile/ASST1/ashldi3.o \
../kern/compile/ASST1/ashrdi3.o \
../kern/compile/ASST1/atoi.o \
../kern/compile/ASST1/autoconf.o \
../kern/compile/ASST1/beep.o \
../kern/compile/ASST1/beep_ltimer.o \
../kern/compile/ASST1/bitmap.o \
../kern/compile/ASST1/bitmaptest.o \
../kern/compile/ASST1/bswap.o \
../kern/compile/ASST1/bzero.o \
../kern/compile/ASST1/cache-mips161.o \
../kern/compile/ASST1/clock.o \
../kern/compile/ASST1/cmpdi2.o \
../kern/compile/ASST1/con_lser.o \
../kern/compile/ASST1/console.o \
../kern/compile/ASST1/copyinout.o \
../kern/compile/ASST1/cpu.o \
../kern/compile/ASST1/device.o \
../kern/compile/ASST1/devnull.o \
../kern/compile/ASST1/divdi3.o \
../kern/compile/ASST1/drivers.o \
../kern/compile/ASST1/dumbvm.o \
../kern/compile/ASST1/emu.o \
../kern/compile/ASST1/emu_att.o \
../kern/compile/ASST1/exception-mips1.o \
../kern/compile/ASST1/fstest.o \
../kern/compile/ASST1/iordi3.o \
../kern/compile/ASST1/kgets.o \
../kern/compile/ASST1/kmalloc.o \
../kern/compile/ASST1/kprintf.o \
../kern/compile/ASST1/lamebus.o \
../kern/compile/ASST1/lamebus_machdep.o \
../kern/compile/ASST1/lhd.o \
../kern/compile/ASST1/lhd_att.o \
../kern/compile/ASST1/loadelf.o \
../kern/compile/ASST1/lrandom.o \
../kern/compile/ASST1/lrandom_att.o \
../kern/compile/ASST1/lser.o \
../kern/compile/ASST1/lser_att.o \
../kern/compile/ASST1/lshldi3.o \
../kern/compile/ASST1/lshrdi3.o \
../kern/compile/ASST1/ltimer.o \
../kern/compile/ASST1/ltimer_att.o \
../kern/compile/ASST1/ltrace.o \
../kern/compile/ASST1/ltrace_att.o \
../kern/compile/ASST1/main.o \
../kern/compile/ASST1/malloctest.o \
../kern/compile/ASST1/memcpy.o \
../kern/compile/ASST1/memmove.o \
../kern/compile/ASST1/menu.o \
../kern/compile/ASST1/misc.o \
../kern/compile/ASST1/moddi3.o \
../kern/compile/ASST1/muldi3.o \
../kern/compile/ASST1/negdi2.o \
../kern/compile/ASST1/notdi2.o \
../kern/compile/ASST1/problems.o \
../kern/compile/ASST1/qdivrem.o \
../kern/compile/ASST1/ram.o \
../kern/compile/ASST1/random.o \
../kern/compile/ASST1/random_lrandom.o \
../kern/compile/ASST1/rtclock.o \
../kern/compile/ASST1/rtclock_ltimer.o \
../kern/compile/ASST1/runprogram.o \
../kern/compile/ASST1/setjmp.o \
../kern/compile/ASST1/sfs_fs.o \
../kern/compile/ASST1/sfs_io.o \
../kern/compile/ASST1/sfs_vnode.o \
../kern/compile/ASST1/snprintf.o \
../kern/compile/ASST1/spinlock.o \
../kern/compile/ASST1/spl.o \
../kern/compile/ASST1/start.o \
../kern/compile/ASST1/strcat.o \
../kern/compile/ASST1/strchr.o \
../kern/compile/ASST1/strcmp.o \
../kern/compile/ASST1/strcpy.o \
../kern/compile/ASST1/strlen.o \
../kern/compile/ASST1/strrchr.o \
../kern/compile/ASST1/strtok_r.o \
../kern/compile/ASST1/subdi3.o \
../kern/compile/ASST1/switch.o \
../kern/compile/ASST1/switchframe.o \
../kern/compile/ASST1/synch.o \
../kern/compile/ASST1/synchtest.o \
../kern/compile/ASST1/syscall.o \
../kern/compile/ASST1/thread.o \
../kern/compile/ASST1/thread_machdep.o \
../kern/compile/ASST1/threadlist.o \
../kern/compile/ASST1/threadstart.o \
../kern/compile/ASST1/threadtest.o \
../kern/compile/ASST1/time_syscalls.o \
../kern/compile/ASST1/tlb-mips1.o \
../kern/compile/ASST1/trap.o \
../kern/compile/ASST1/tt3.o \
../kern/compile/ASST1/ucmpdi2.o \
../kern/compile/ASST1/udivdi3.o \
../kern/compile/ASST1/uio.o \
../kern/compile/ASST1/umoddi3.o \
../kern/compile/ASST1/vers.o \
../kern/compile/ASST1/vfscwd.o \
../kern/compile/ASST1/vfslist.o \
../kern/compile/ASST1/vfslookup.o \
../kern/compile/ASST1/vfspath.o \
../kern/compile/ASST1/vnode.o \
../kern/compile/ASST1/xordi3.o 

C_SRCS += \
../kern/compile/ASST1/autoconf.c \
../kern/compile/ASST1/vers.c 

OBJS += \
./kern/compile/ASST1/autoconf.o \
./kern/compile/ASST1/vers.o 

C_DEPS += \
./kern/compile/ASST1/autoconf.d \
./kern/compile/ASST1/vers.d 


# Each subdirectory must supply rules for building sources it contributes
kern/compile/ASST1/%.o: ../kern/compile/ASST1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


