#!/bin/bash

BASEDIR=$(dirname "$0")
cd ${BASEDIR}

set -e


source functions

cd ../../build/glibc-2.15/localedata
env
i686-none-linux-gnu-gcc ../sysdeps/i386/i686/multiarch/strcat.S  -v --verbose -c \
   -I../include -I/Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/build/glibc_build/string \
   -I/Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/build/glibc_build -I../sysdeps/i386/elf \
   -I../nptl/sysdeps/unix/sysv/linux/i386/i686 -I../sysdeps/unix/sysv/linux/i386/i686 \
   -I../nptl/sysdeps/unix/sysv/linux/i386 -I../sysdeps/unix/sysv/linux/i386 \
   -I../nptl/sysdeps/unix/sysv/linux -I../nptl/sysdeps/pthread \
   -I../sysdeps/pthread -I../sysdeps/unix/sysv/linux -I../sysdeps/gnu \
   -I../sysdeps/unix/common -I../sysdeps/unix/mman -I../sysdeps/unix/inet \
   -I../sysdeps/unix/sysv/i386 -I../nptl/sysdeps/unix/sysv \
   -I../sysdeps/unix/sysv -I../sysdeps/unix/i386 \
   -I../nptl/sysdeps/unix -I../sysdeps/unix \
   -I../sysdeps/posix \
   -I../sysdeps/i386/i686/fpu \
   -I../sysdeps/i386/i686/multiarch -I../nptl/sysdeps/i386/i686 \
   -I../sysdeps/i386/i686 -I../sysdeps/i386/i486 -I../nptl/sysdeps/i386/i486 \
   -I../sysdeps/i386/fpu -I../nptl/sysdeps/i386 \
   -I../sysdeps/i386 -I../sysdeps/wordsize-32 \
   -I../sysdeps/ieee754/ldbl-96 -I../sysdeps/ieee754/dbl-64 -I../sysdeps/ieee754/flt-32 \
   -I../sysdeps/ieee754 -I../sysdeps/generic/elf -I../sysdeps/generic -I../nptl  \
   -I.. -I../libio -I. -nostdinc \
   -isystem /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/cross-tool/bin/../lib/gcc/i686-none-linux-gnu/4.7.3/include \
   -isystem /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/cross-tool/bin/../lib/gcc/i686-none-linux-gnu/4.7.3/include-fixed \
   -isystem /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/vita/scripts/../..//sysroot/usr/include -D_LIBC_REENTRANT \
   -include ../include/libc-symbols.h   -DNOT_IN_libc    -DASSEMBLER  -DGAS_SYNTAX -g  -Wa,--noexecstack  -Wa,-mtune=i686 \
   -o /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/build/glibc_build/string/strcat.o

#i686-none-linux-gnu-gcc -S /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/build/glibc_build/string/strcat.i -o /Users/lee/Desktop/Computer_Systems/linux/build_kernel/3.7.4/Inside_the_Linux_Operating_System/build/glibc_build/string/strcat.s
