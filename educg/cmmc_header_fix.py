#!/usr/bin/env python3

import os
import sys

prefixes = ['cmmc', 'Spl', 'SysY', 'Generic', 'RISCV', 'TAC', 'MIPS']


def is_owned_header(line: str):
    if not line.startswith('#include <'):
        return False
    for prefix in prefixes:
        if line.startswith('#include <'+prefix):
            return True
    return False


cmmc_root = sys.argv[1]
for root, dirs, files in os.walk(cmmc_root):
    for file in files:
        lines = []
        with open(root + '/' + file) as f:
            for line in f.readlines():
                stripped = line.strip()
                if is_owned_header(stripped):
                    line = stripped
                    header = line[10:line.find('>')]
                    lines.append(
                        '#include "' + os.path.relpath(os.path.abspath(cmmc_root), os.path.abspath(root)) + '/' + header + '"\n')
                else:
                    lines.append(line)
        with open(root + '/' + file, 'w') as f:
            f.writelines(lines)
