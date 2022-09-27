#!/usr/bin/env python3

import os
import sys
import subprocess

binary = sys.argv[1]
tests = sys.argv[2]


def test(src, ref):
    out = subprocess.run(args=[binary, '-s', '-a', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    ref_content = ""
    with open(ref, mode="r", encoding="utf-8") as f:
        for line in f.readlines():
            ref_content += line
    is_error = "Error" in ref_content
    if out.returncode == 0 and not is_error:
        return ref_content == out.stdout
    elif out.returncode != 0 and is_error:
        return ref_content == out.stderr
    return False


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
print("[  PASSED  ] {} tests.".format(cnt-len(fail_set)))

if len(fail_set):
    print("[  FAILED  ] {} tests, listed below:".format(len(fail_set)))

    for src in fail_set:
        print("[  FAILED  ]", src)

    print(len(fail_set), "FAILED TEST")
