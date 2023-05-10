#!/usr/bin/env python3
import os
import sys

cmmc_root = sys.argv[1]
for root, dirs, files in os.walk(cmmc_root):
    for file in files:
        if not (file.endswith('.hpp') or file.endswith('.cpp') or file.startswith('LICENSE') or file.startswith('Makefile')):
            os.remove(root + '/' + file)
