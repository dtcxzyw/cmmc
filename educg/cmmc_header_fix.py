#!/usr/bin/env python3

import os
import sys

cmmc_root = sys.argv[1]
for root, dirs, files in os.walk(cmmc_root):
    for file in files:
        lines = []
        with open(root + '/' + file) as f:
            for line in f.readlines():
                stripped = line.strip()
                if stripped.startswith('#include <cmmc') or stripped.startswith('#include <Spl') or stripped.startswith('#include <SysY'):
                    line = stripped
                    header = line[10:line.find('>')]
                    lines.append(
                        '#include "' + os.path.relpath(os.path.abspath(cmmc_root), os.path.abspath(root)) + '/' + header + '"\n')
                else:
                    lines.append(line)
        with open(root + '/' + file, 'w') as f:
            f.writelines(lines)
