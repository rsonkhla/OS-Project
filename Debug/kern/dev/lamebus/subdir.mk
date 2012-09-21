################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kern/dev/lamebus/beep_ltimer.c \
../kern/dev/lamebus/con_lscreen.c \
../kern/dev/lamebus/con_lser.c \
../kern/dev/lamebus/emu.c \
../kern/dev/lamebus/emu_att.c \
../kern/dev/lamebus/lamebus.c \
../kern/dev/lamebus/lhd.c \
../kern/dev/lamebus/lhd_att.c \
../kern/dev/lamebus/lnet.c \
../kern/dev/lamebus/lnet_att.c \
../kern/dev/lamebus/lrandom.c \
../kern/dev/lamebus/lrandom_att.c \
../kern/dev/lamebus/lscreen.c \
../kern/dev/lamebus/lscreen_att.c \
../kern/dev/lamebus/lser.c \
../kern/dev/lamebus/lser_att.c \
../kern/dev/lamebus/ltimer.c \
../kern/dev/lamebus/ltimer_att.c \
../kern/dev/lamebus/ltrace.c \
../kern/dev/lamebus/ltrace_att.c \
../kern/dev/lamebus/random_lrandom.c \
../kern/dev/lamebus/rtclock_ltimer.c 

OBJS += \
./kern/dev/lamebus/beep_ltimer.o \
./kern/dev/lamebus/con_lscreen.o \
./kern/dev/lamebus/con_lser.o \
./kern/dev/lamebus/emu.o \
./kern/dev/lamebus/emu_att.o \
./kern/dev/lamebus/lamebus.o \
./kern/dev/lamebus/lhd.o \
./kern/dev/lamebus/lhd_att.o \
./kern/dev/lamebus/lnet.o \
./kern/dev/lamebus/lnet_att.o \
./kern/dev/lamebus/lrandom.o \
./kern/dev/lamebus/lrandom_att.o \
./kern/dev/lamebus/lscreen.o \
./kern/dev/lamebus/lscreen_att.o \
./kern/dev/lamebus/lser.o \
./kern/dev/lamebus/lser_att.o \
./kern/dev/lamebus/ltimer.o \
./kern/dev/lamebus/ltimer_att.o \
./kern/dev/lamebus/ltrace.o \
./kern/dev/lamebus/ltrace_att.o \
./kern/dev/lamebus/random_lrandom.o \
./kern/dev/lamebus/rtclock_ltimer.o 

C_DEPS += \
./kern/dev/lamebus/beep_ltimer.d \
./kern/dev/lamebus/con_lscreen.d \
./kern/dev/lamebus/con_lser.d \
./kern/dev/lamebus/emu.d \
./kern/dev/lamebus/emu_att.d \
./kern/dev/lamebus/lamebus.d \
./kern/dev/lamebus/lhd.d \
./kern/dev/lamebus/lhd_att.d \
./kern/dev/lamebus/lnet.d \
./kern/dev/lamebus/lnet_att.d \
./kern/dev/lamebus/lrandom.d \
./kern/dev/lamebus/lrandom_att.d \
./kern/dev/lamebus/lscreen.d \
./kern/dev/lamebus/lscreen_att.d \
./kern/dev/lamebus/lser.d \
./kern/dev/lamebus/lser_att.d \
./kern/dev/lamebus/ltimer.d \
./kern/dev/lamebus/ltimer_att.d \
./kern/dev/lamebus/ltrace.d \
./kern/dev/lamebus/ltrace_att.d \
./kern/dev/lamebus/random_lrandom.d \
./kern/dev/lamebus/rtclock_ltimer.d 


# Each subdirectory must supply rules for building sources it contributes
kern/dev/lamebus/%.o: ../kern/dev/lamebus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


