#!/usr/bin/env python3

import os
import sys
import subprocess

binary_path = sys.argv[1]
tests_path = sys.argv[2]


def spl_parse(src):
    out = subprocess.run(args=[binary_path, '-s', '-a', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    ref_content = ""
    ref = src[:-4]+".out"
    with open(ref, mode="r", encoding="utf-8") as f:
        for line in f.readlines():
            ref_content += line
    is_error = "Error" in ref_content
    if out.returncode == 0 and not is_error:
        return ref_content == out.stdout
    elif out.returncode != 0 and is_error:
        return ref_content == out.stderr
    return False


def spl_semantic(src):
    out = subprocess.run(args=[binary_path, '-s', '-i', '-t', 'tac', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    ref_content = ""
    ref = src[:-4]+".out"
    with open(ref, mode="r", encoding="utf-8") as f:
        for line in f.readlines():
            ref_content += line
    is_error = ref_content != ""
    if out.returncode == 0 and not is_error:
        return True
    elif out.returncode != 0 and is_error:
        if len(out.stdout) == 0 and len(out.stderr) == 0:
            return False
        return True
    return False


def spl_codegen_tac(src):
    out = subprocess.run(args=[binary_path, '-s', '-t', 'tac', '-o',
                               '/dev/null', src], capture_output=True, text=True)
    return out.returncode == 0


def sysy_parse(src):
    out = subprocess.run(
        args=[binary_path, '-g', src], capture_output=True, text=True)
    return out.returncode == 0


def sysy_semantic(src):
    out = subprocess.run(args=[binary_path, '-i', '-t', 'riscv', '-O', '0', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    return out.returncode == 0


def sysy_opt(src):
    out = subprocess.run(args=[binary_path, '-i', '-t', 'riscv', '-H', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    return out.returncode == 0


def test(name, path, filter, tester):
    print("Test", name)
    print("Collecting tests...")
    test_set = []
    for r, ds, fs in os.walk(path):
        for f in fs:
            if f.endswith(filter):
                test_set.append(r+'/'+f)
    test_set.sort(key=lambda x: x)

    print("Testing...", end='')
    cnt = 0
    fail_set = []
    for src in test_set:
        cnt += 1
        print("\rTesting... {}/{}".format(cnt, len(test_set)), end='')
        sys.stdout.flush()
        if not tester(src):
            fail_set.append(src)

    print("\r")
    print("[==========] {} tests ran.".format(cnt))
    print("[  PASSED  ] {} tests.".format(cnt-len(fail_set)))

    if len(fail_set):
        print("[  FAILED  ] {} tests, listed below:".format(len(fail_set)))

        for src in fail_set:
            print("[  FAILED  ]", src)

        print(len(fail_set), "FAILED TEST")
    print()

    return len(test_set), len(fail_set)


res = []
res.append(test("SPL parse", tests_path+"/Parse", ".spl", spl_parse))
res.append(test("SPL semantic & opt", tests_path +
           "/Semantic", ".spl", spl_semantic))
res.append(test("SPL codegen TAC", tests_path +
           "/CodeGenTAC", ".spl", spl_codegen_tac))
# res.append(test("SysY parse", tests_path+"/SysY2022", ".sy", sysy_parse))
res.append(test("SysY semantic", tests_path+"/SysY2022", ".sy", sysy_semantic))
# res.append(test("SysY opt", tests_path+"/SysY2022", ".sy", sysy_opt))


total_tests = 0
failed_tests = 0
for t, f in res:
    total_tests += t
    failed_tests += f

print("Passed", total_tests-failed_tests,
      "Failed", failed_tests, "Total", total_tests)
