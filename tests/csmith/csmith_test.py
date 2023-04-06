#!/usr/bin/env python3

from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm
import os
import sys
import subprocess
import tempfile
import shutil
import tqdm

binary = sys.argv[1]
test_count = int(sys.argv[2])
csmith_command = "csmith --no-pointers --quiet --no-packed-struct --no-unions --no-volatiles --no-volatile-pointers --no-const-pointers --no-builtins --no-jumps --no-bitfields --no-argc --no-structs --output /dev/stdout"
gcc_command = "gcc -Wno-narrowing -O3 -DNDEBUG -ffp-contract=on -w "
gcc_header = """
#include <stdio.h>
#include <stdint.h>

static void putint(int x) {
    printf("%d", x);
}
static void putch(int ch) {
    printf("%c", ch);
}
"""
cmmc_header = """
float fabsf(float x) {
    return x>=0.0f?x:-x;
}
double fabs(double x) {
    return x>=0.0?x:-x;
}
"""
optimization_level = '0'
prog_timeout = 10.0
cmmc_timeout = 30.0

cwd = os.path.dirname(binary)+"/csmith"
if os.path.exists(cwd):
    shutil.rmtree(cwd)
os.makedirs(cwd)
base = os.path.dirname(os.path.abspath(__file__))
header_path = base+"/csmith_header.h"
with open(header_path) as f:
    header = f.read()


def csmith_test(i):
    src = subprocess.check_output(csmith_command.split(' '), cwd=cwd).decode()
    src = src.replace('#include "csmith.h"', header)
    src = src.replace('int print_hash_value = 0;', 'int print_hash_value = 1;')
    src = src.replace('long', 'int64_t')
    src = src.replace('printf("index = [%d]\\n", ', 'putdim(')
    src = src.replace('printf("index = [%d][%d]\\n", ', 'putdim2(')
    src = src.replace('printf("index = [%d][%d][%d]\\n", ', 'putdim3(')

    idx, file_c = tempfile.mkstemp(".c", dir=cwd, text=True)
    file_ref = file_c[:-2]+".out"
    with open(file_c, 'w') as f:
        f.write(gcc_header)
        f.write(src)
    ret = os.system(gcc_command+" -o "+file_ref+" "+file_c)
    assert ret == 0
    ref_timeout = False
    try:
        ref_output = subprocess.check_output(file_ref, timeout=prog_timeout)
    except subprocess.TimeoutExpired:
        ref_timeout = True

    if ref_timeout:
        os.remove(file_c)
        os.remove(file_ref)
        # skip this test
        return None

    src = src.replace('static ', "")
    src = cmmc_header + src
    try:
        ret = subprocess.run([binary, '-o', '/dev/stdout',
                              '--hide-symbol', '-O', optimization_level, '-t', 'llvm', '-e', '/dev/null', '-x', 'SysY', '-D', '/dev/stdin'], input=src.encode(), capture_output=True, timeout=cmmc_timeout)
        if ret.returncode == 0 and ref_output == ret.stdout:
            os.remove(file_c)
            os.remove(file_ref)
            return True
        # print(ret.returncode)

    except subprocess.TimeoutExpired:
        pass
    file_sy = file_c[:-2]+".sy"
    # print(file)
    with open(file_sy, 'w') as f:
        f.write(src)
    return False


L = list(range(test_count))
pbar = tqdm.tqdm(L)
error_count = 0
skipped_count = 0

with ThreadPoolExecutor() as p:
    for res in p.map(csmith_test, L):
        if res is not None:
            error_count += 0 if res else 1
        else:
            skipped_count += 1

        pbar.update(1)
        pbar.set_description("Failed: {} Skipped: {}".format(
            error_count, skipped_count))
