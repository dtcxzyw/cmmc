#!/usr/bin/env python3

import os
import sys
import subprocess

binary = sys.argv[1]
tests = sys.argv[2]


def test(src):
    out = subprocess.run(args=[binary, '-s', '-t', 'tac', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    return out.returncode == 0


print("Collecting tests...")
test_set = []
for r, ds, fs in os.walk(tests):
    for f in fs:
        if f.endswith(".spl"):
            f = r+f
            test_set.append(f)
test_set.sort(key=lambda x: x[0])

print("Testing...", end='')
cnt = 0
fail_set = []
for src in test_set:
    cnt += 1
    print("\rTesting... {}/{}".format(cnt, len(test_set)), end='')
    if not test(src):
        fail_set.append(src)

print("\r")
print("[==========] {} tests ran.".format(cnt))
print("[  PASSED  ] {} tests.".format(cnt-len(fail_set)))

if len(fail_set):
    print("[  FAILED  ] {} tests, listed below:".format(len(fail_set)))

    for src in fail_set:
        print("[  FAILED  ]", src)

    print(len(fail_set), "FAILED TEST")
