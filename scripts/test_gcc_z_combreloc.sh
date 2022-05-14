#!/bin/bash

BASEDIR=$(dirname "$0")
cd ${BASEDIR}

set -e


source functions

cd ../gcc_spec

# i686-none-linux-gnu-gcc  -v -z relro  test.c -o test

rm -rf *.so
i686-none-linux-gnu-gcc -g -O2 \
            -fPIC -shared -o conftest.so test.c \
            -nostartfiles -nostdlib \
            -Wl,-z,relro,-z,combreloc -v


i686-none-linux-gnu-readelf -Wl conftest.so > conftest.ph

awk -v commonpagesize=0x1000 -f conftest.awk
       conftest.ph > conftest.cps
