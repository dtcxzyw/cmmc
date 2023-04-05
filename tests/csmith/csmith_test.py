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
csmith_command = "csmith --no-pointers --quiet --no-packed-struct --no-unions --no-volatiles --no-volatile-pointers --no-const-pointers --no-builtins --no-jumps --no-bitfields --no-argc --no-safe-math --no-structs --output /dev/stdout"
gcc_command = "gcc -w -Wno-narrowing -O2 "
optimization_level = '1'
timeout = 25.0

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
    src = src.replace('static ', "")
    src = src.replace('int print_hash_value = 0;', 'int print_hash_value = 1;')
    src = src.replace('long', 'int64_t')
    src = src.replace('printf("index = [%d]\\n", ', 'putdim(')
    src = src.replace('printf("index = [%d][%d]\\n", ', 'putdim2(')
    src = src.replace('printf("index = [%d][%d][%d]\\n", ', 'putdim3(')
    try:
        ret = subprocess.run([binary, '-o', '/dev/null',
                              '--hide-symbol', '-O', optimization_level, '-t', 'llvm', '-i', '-x', 'SysY', '/dev/stdin'], input=src.encode(), capture_output=True, timeout=timeout)
        if ret.returncode == 0:
            return True
    except subprocess.TimeoutExpired:
        pass
    idx, file = tempfile.mkstemp(".sy", dir=cwd, text=True)
    # print(file)
    with open(file, 'w') as f:
        f.write(src)
    return False


L = list(range(test_count))
pbar = tqdm.tqdm(L)
error_count = 0

with ThreadPoolExecutor() as p:
    for res in p.map(csmith_test, L):
        error_count += 0 if res else 1
        pbar.update(1)
        pbar.set_description("Errors: {}".format(error_count))
