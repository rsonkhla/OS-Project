################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/testbin/badcall/bad_chdir.c \
../user/testbin/badcall/bad_close.c \
../user/testbin/badcall/bad_dup2.c \
../user/testbin/badcall/bad_execv.c \
../user/testbin/badcall/bad_fsync.c \
../user/testbin/badcall/bad_ftruncate.c \
../user/testbin/badcall/bad_getcwd.c \
../user/testbin/badcall/bad_getdirentry.c \
../user/testbin/badcall/bad_ioctl.c \
../user/testbin/badcall/bad_link.c \
../user/testbin/badcall/bad_lseek.c \
../user/testbin/badcall/bad_mkdir.c \
../user/testbin/badcall/bad_open.c \
../user/testbin/badcall/bad_pipe.c \
../user/testbin/badcall/bad_read.c \
../user/testbin/badcall/bad_readlink.c \
../user/testbin/badcall/bad_reboot.c \
../user/testbin/badcall/bad_remove.c \
../user/testbin/badcall/bad_rename.c \
../user/testbin/badcall/bad_rmdir.c \
../user/testbin/badcall/bad_sbrk.c \
../user/testbin/badcall/bad_stat.c \
../user/testbin/badcall/bad_symlink.c \
../user/testbin/badcall/bad_time.c \
../user/testbin/badcall/bad_waitpid.c \
../user/testbin/badcall/bad_write.c \
../user/testbin/badcall/common_buf.c \
../user/testbin/badcall/common_fds.c \
../user/testbin/badcall/common_path.c \
../user/testbin/badcall/driver.c 

OBJS += \
./user/testbin/badcall/bad_chdir.o \
./user/testbin/badcall/bad_close.o \
./user/testbin/badcall/bad_dup2.o \
./user/testbin/badcall/bad_execv.o \
./user/testbin/badcall/bad_fsync.o \
./user/testbin/badcall/bad_ftruncate.o \
./user/testbin/badcall/bad_getcwd.o \
./user/testbin/badcall/bad_getdirentry.o \
./user/testbin/badcall/bad_ioctl.o \
./user/testbin/badcall/bad_link.o \
./user/testbin/badcall/bad_lseek.o \
./user/testbin/badcall/bad_mkdir.o \
./user/testbin/badcall/bad_open.o \
./user/testbin/badcall/bad_pipe.o \
./user/testbin/badcall/bad_read.o \
./user/testbin/badcall/bad_readlink.o \
./user/testbin/badcall/bad_reboot.o \
./user/testbin/badcall/bad_remove.o \
./user/testbin/badcall/bad_rename.o \
./user/testbin/badcall/bad_rmdir.o \
./user/testbin/badcall/bad_sbrk.o \
./user/testbin/badcall/bad_stat.o \
./user/testbin/badcall/bad_symlink.o \
./user/testbin/badcall/bad_time.o \
./user/testbin/badcall/bad_waitpid.o \
./user/testbin/badcall/bad_write.o \
./user/testbin/badcall/common_buf.o \
./user/testbin/badcall/common_fds.o \
./user/testbin/badcall/common_path.o \
./user/testbin/badcall/driver.o 

C_DEPS += \
./user/testbin/badcall/bad_chdir.d \
./user/testbin/badcall/bad_close.d \
./user/testbin/badcall/bad_dup2.d \
./user/testbin/badcall/bad_execv.d \
./user/testbin/badcall/bad_fsync.d \
./user/testbin/badcall/bad_ftruncate.d \
./user/testbin/badcall/bad_getcwd.d \
./user/testbin/badcall/bad_getdirentry.d \
./user/testbin/badcall/bad_ioctl.d \
./user/testbin/badcall/bad_link.d \
./user/testbin/badcall/bad_lseek.d \
./user/testbin/badcall/bad_mkdir.d \
./user/testbin/badcall/bad_open.d \
./user/testbin/badcall/bad_pipe.d \
./user/testbin/badcall/bad_read.d \
./user/testbin/badcall/bad_readlink.d \
./user/testbin/badcall/bad_reboot.d \
./user/testbin/badcall/bad_remove.d \
./user/testbin/badcall/bad_rename.d \
./user/testbin/badcall/bad_rmdir.d \
./user/testbin/badcall/bad_sbrk.d \
./user/testbin/badcall/bad_stat.d \
./user/testbin/badcall/bad_symlink.d \
./user/testbin/badcall/bad_time.d \
./user/testbin/badcall/bad_waitpid.d \
./user/testbin/badcall/bad_write.d \
./user/testbin/badcall/common_buf.d \
./user/testbin/badcall/common_fds.d \
./user/testbin/badcall/common_path.d \
./user/testbin/badcall/driver.d 


# Each subdirectory must supply rules for building sources it contributes
user/testbin/badcall/%.o: ../user/testbin/badcall/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


