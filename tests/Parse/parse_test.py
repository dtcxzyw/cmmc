#!/usr/bin/env python3

import os
import sys
import subprocess

binary = sys.argv[1]
tests = sys.argv[2]


def test(src, ref):
    out = subprocess.run(args=[binary, '-s', '-a', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    #print('\n', out.stdout + out.stderr)
    return out.returncode == 0


print("Collecting tests...")
test_set = []
for r, ds, fs in os.walk(tests):
    for f in fs:
        if f.endswith(".spl"):
            f = r+f
            out = f[:-4]+".out"
            test_set.append((f, out))
test_set.sort(key=lambda x: x[0])

print("Testing...", end='')
cnt = 0
fail_set = []
for src, ref in test_set:
    cnt += 1
    print("\rTesting... {}/{}".format(cnt, len(test_set)), end='')
    if not test(src, ref):
        fail_set.append(src)

print("\r")
print("[==========] {} tests ran.".format(cnt))
print("[  PASSED  ] {} test.".format(cnt-len(fail_set)))

if len(fail_set):
    print("[  FAILED  ] {} test, listed below:".format(len(fail_set)))

    for src in fail_set:
        print("[  FAILED  ]", src)

    print(len(fail_set), "FAILED TEST")
