#!/bin/sh

 rm -rf adc blink clocks cmake CMakeFiles divider dma elf2uf2 flash generated > /dev/null 2>&1
 rm -rf gpio hello_world i2c interp multicore picoboard pico-sdk pio pioasm > /dev/null 2>&1
 rm -rf pwm reset rtc spi system timer uart usb watchdog > /dev/null 2>&1
 rm -rf CMakeCache.txt CMakeDox* cmake_install.cmake Makefile  > /dev/null 2>&1
 rm -rf cdc_msc_hid pcemouse > /dev/null 2>&1

exit 0
# old:
rm -rf camelforth-b CM* el* cm* Ma* ge* pi*
