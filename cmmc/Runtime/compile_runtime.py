#!/usr/bin/env python3

import sys
import subprocess
import os

target = sys.argv[1]
dst = sys.argv[2]
src =  os.path.dirname(os.path.abspath(__file__)) + '/cmmc_sysy_rt.cpp'

gcc_ref_command = {
    'RISCV': "riscv64-linux-gnu-g++-12 -O3 -DNDEBUG -march=rv64gc_zba_zbb -fno-stack-protector -fomit-frame-pointer -mcpu=sifive-u74 -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ".split(),
    'ARM': "arm-linux-gnueabihf-g++-12 -O3 -DNDEBUG -march=armv7 -fno-stack-protector -fomit-frame-pointer -mcpu=cortex-a72 -mfpu=vfpv4 -ffp-contract=on -w -no-pie ".split(),
}[target]

ret = subprocess.check_output(gcc_ref_command + [src, '-S', '-o', '/dev/stdout']).decode('utf-8')
with open(dst, 'w') as f:
    f.write('// Automatically generated file, do not edit!\n')
    f.write('R"(')
    f.write(ret)
    f.write(')"')
