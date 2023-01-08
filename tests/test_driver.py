#!/usr/bin/env python3

import os
import sys
import time
import subprocess
import json
import CodeGenTAC.irsim_quiet as irsim
import platform
import math

gcc_ref_command = "gcc -x c++ -O3 -DNDEBUG -s -funroll-loops -w "
binary_path = sys.argv[1]
binary_dir = os.path.dirname(binary_path)
tests_path = sys.argv[2]
rars_path = tests_path + "/TAC2MC/rars.jar"
optimization_level = '3'
assert os.path.exists(rars_path)

# O0 reference
baseline = {
    "inst": 243.5,
    "branch": 29.7,
    "call": 7.3,
    "load": 74.5,
    "store": 41.6,
    "load_bytes": 281.4,
    "store_bytes": 173.2
}

summary = {}
summary_samples = 0
tac_inst_count = 1
tac_inst_count_samples = 0
tac_inst_count_ref = 286.292
total_perf_gcc_ref = 1
total_perf_gcc_ref_samples = 0
total_perf_self = 1
total_perf_self_samples = 1


def geo_means(prod, samples):
    return math.exp(math.log(prod) / max(1, samples))


def parse_perf(result):
    try:
        perf = json.loads(result)
        for key in baseline.keys():
            summary[key] = summary.get(key, 1) * max(1, perf[key])
        global summary_samples
        summary_samples += 1
    except:
        pass


def spl_parse(src, strict=True):
    args = [binary_path, '--emitAST', '-o', '/dev/stdout', src]
    if strict:
        args.insert(-1, '--strict')
    out = subprocess.run(args, capture_output=True, text=True)
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


def spl_parse_ext(src):
    return spl_parse(src, strict=False)


def spl_semantic(src, strict=True):
    args = [binary_path,  '--emitIR', '-t', 'tac', '-o', '/dev/stdout', src]
    if strict:
        args.insert(-1, '--strict')
    out = subprocess.run(args, capture_output=True, text=True)

    ref_content = ""
    ref = src[:-4]+".out"
    with open(ref, mode="r", encoding="utf-8") as f:
        for line in f.readlines():
            ref_content += line
    is_error = ref_content != ""
    if out.returncode == 0 and not is_error:
        if len(out.stdout) == 0 or len(out.stderr) != 0:
            return False
        return True
    elif out.returncode != 0 and is_error:
        if len(out.stdout) != 0:
            return False
        return ref_content == out.stderr
    return False


def spl_semantic_ext(src):
    return spl_semantic(src, False)


def spl_semantic_noref(src):
    out = subprocess.run(args=[binary_path, '--strict', '--emitIR', '-t', 'tac', '-o',
                               '/dev/null', src], capture_output=True, text=True)
    return out.returncode == 0


def spl_codegen_tac(src):
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'tac', '--hide-symbol', '-O', optimization_level, '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    ir = out.stdout
    if not irsim.check(ir):
        return False
    print('', ir.count('\n'), end='')
    name = str(os.path.basename(src)).split('.')[0]
    if name in irsim.test_generators:
        for inputs, answer in irsim.test_generators[name]():
            ret = irsim.exec(ir, inputs.copy())
            if ret == None:
                return False
            if answer != ret[1]:
                print("\ninput", inputs, "answer", answer, "output", ret[1])
                return False
            global tac_inst_count
            tac_inst_count *= max(1, ret[0])
            global tac_inst_count_samples
            tac_inst_count_samples += 1
    else:
        print("\nWarning: no test cases for", src)

    return True


def spl_codegen_mips(src):
    name = str(os.path.basename(src)).split('.')[0]
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'mips', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    spl_test_cases = irsim.test_generators[name]()
    for inputs, answer in spl_test_cases:
        out_spim = subprocess.run(
            args=['spim', '-file', tmp_out], input='\n'.join(map(lambda x: str(x), inputs)), capture_output=True, text=True)
        out = out_spim.stdout.splitlines()
        res = []
        start = False
        for v in out:
            if start:
                while v.startswith('Enter an integer:'):
                    v = v.removeprefix('Enter an integer:')
                res.append(int(v))
            elif v.startswith('Loaded:') and 'exceptions.s' in v:
                start = True

        if res != answer:
            print(out)
            print("\ninput", inputs, "answer", answer, "output", res)
            return False

    return True


def sysy_codegen_mips(src):
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '-t', 'mips', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False

    return True


def sysy_codegen_riscv64(src):
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '-t', 'riscv', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False

    return True


def spl_codegen_riscv64(src):
    name = str(os.path.basename(src)).split('.')[0]
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'riscv', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    spl_test_cases = irsim.test_generators[name]()
    for inputs, answer in spl_test_cases:
        out_rars = subprocess.run(
            args=['java', '-jar', rars_path, 'nc',
                  'me', 'rv64', '65536', tmp_out],
            input='\n'.join(map(lambda x: str(x), inputs)),
            capture_output=True, text=True
        )
        out = out_rars.stdout.splitlines()
        res = []
        for v in out:
            v = v.removeprefix('Enter an integer:')
            res.append(int(v))
        if res != answer:
            print("\ninput", inputs, "answer", answer, "output", res)
            return False

    return True


def spl_tac2ir(src):
    out = subprocess.run(args=[binary_path, '--emitIR', '-t', 'mips', '-o',
                               '/dev/null', src], capture_output=True, text=True)
    return out.returncode == 0


def sysy_parse(src):
    out = subprocess.run(
        args=[binary_path, '--grammar-check', src], capture_output=True, text=True)
    return out.returncode == 0


def sysy_semantic(src):
    out = subprocess.run(args=[binary_path, '--emitIR', '-t', 'sim', '-O', '0', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    return out.returncode == 0


white_list = ["long_code", "vector_mul1", "vector_mul2", "vector_mul3"]


def sysy_opt(src):
    args = [binary_path, '--emitIR', '-t', 'sim', '--hide-symbol', '-o',
            '/dev/stdout', src]

    for key in white_list:
        if key in src:
            args.insert(-1, '--do-not-check-uninitialized-value')
            break

    out = subprocess.run(args, capture_output=True, text=True)
    return out.returncode == 0


def sysy_test(src: str, opt=True):
    input_file = src[:-3] + '.in'
    if not os.path.exists(input_file):
        input_file = "/dev/null"
    args = [binary_path, '-t', 'sim', '--hide-symbol', '-O', optimization_level if opt else '0', '-o',
            '/dev/stdout', '-e', input_file, src]

    for key in white_list:
        if key in src:
            args.insert(-1, '--do-not-check-uninitialized-value')
            break

    out = subprocess.run(args, capture_output=True, text=True)
    output = out.stdout
    if len(output) != 0 and output[-1] != '\n':
        output += '\n'
    output += str(out.returncode) + '\n'
    output_file = src[:-3] + '.out'
    # print(output.encode('utf-8'))
    standard_answer = ''
    with open(output_file, mode="r", encoding="utf-8", newline='\n') as f:
        for line in f.readlines():
            standard_answer += line
    # print(standard_answer.encode('utf-8'))
    if output == standard_answer:
        parse_perf(out.stderr)
        return True
    return False


def sysy_test_noopt(src: str):
    return sysy_test(src, opt=False)


def spl_ref(src):
    subprocess.run(args=[binary_path, '--emitIR', '-t', 'tac', '-o',
                         src+".ir", src], stderr=subprocess.DEVNULL)
    return True


def spl_tac_ref(src):
    subprocess.run(args=[binary_path, '-t', 'tac', '-o',
                         src+".tacir", src], stderr=subprocess.DEVNULL)
    return True


def spl_mips_ref(src):
    subprocess.run(args=[binary_path, '-t', 'mips', '-o',
                         src+".mips32.S", src], stderr=subprocess.DEVNULL)
    return True


def spl_riscv64_ref(src):
    subprocess.run(args=[binary_path, '-t', 'riscv', '-o',
                         src+".riscv64.S", src], stderr=subprocess.DEVNULL)
    return True


def sysy_ref(src):
    subprocess.run(args=[binary_path, '--emitIR', '-t', 'sim', '--hide-symbol', '-o',
                         src+".ir", src], stderr=subprocess.DEVNULL)
    return True


def sysy_gcc(src):
    runtime = tests_path + "/SysY2022/sylib.c"
    header = tests_path + "/SysY2022/sylib.h"
    rel = os.path.relpath(src[:-3], tests_path)
    output = os.path.join(binary_dir, rel)
    output_path = os.path.dirname(output)
    if not os.path.exists(output_path):
        os.makedirs(output_path)
    command = gcc_ref_command + \
        ' -o {} -include {} {} {}'.format(output, header, runtime, src)
    if os.system(command) != 0:
        return False

    inputs = src[:-3]+".in"
    out = None
    if os.path.exists(inputs):
        with open(inputs, 'r', encoding='utf-8') as input_file:
            out = subprocess.run([output], stdin=input_file,
                                 capture_output=True, text=True)
    else:
        out = subprocess.run([output], capture_output=True, text=True)

    output = out.stdout
    if len(output) != 0 and output[-1] != '\n':
        output += '\n'
    output += str(out.returncode) + '\n'
    output_file = src[:-3] + '.out'
    # print(output.encode('utf-8'))
    standard_answer = ''
    with open(output_file, mode="r", encoding="utf-8", newline='\n') as f:
        for line in f.readlines():
            standard_answer += line
    if not standard_answer.endswith('\n'):
        standard_answer += '\n'

    # print(standard_answer.encode('utf-8'))
    if output != standard_answer:
        return False

    for line in out.stderr.splitlines():
        if line.startswith('TOTAL:'):
            perf = line[7:].split('-')
            used = float(perf[0][:-1])*3600+float(perf[1][:-1]) * \
                60+float(perf[2][:-1])+float(perf[3][:-2])*1e-6
            global total_perf_gcc_ref
            total_perf_gcc_ref *= max(1e-6, used)
            global total_perf_gcc_ref_samples
            total_perf_gcc_ref_samples += 1

    return True


skip_list = []


def test(name, path, filter, tester):
    print("Test", name)
    print("Collecting tests...")
    test_set = []
    for r, ds, fs in os.walk(path):
        for f in fs:
            if f.endswith(filter) and not f.endswith(".spl.ir") and not f.endswith(".sy.ir"):
                skip = False
                for name in skip_list:
                    if name in f:
                        skip = True
                        break
                if not skip:
                    test_set.append(r+'/'+f)
    test_set.sort(key=lambda x: x)

    cnt = 0
    fail_set = []
    for src in test_set:
        cnt += 1
        print("Testing... {}/{} {}".format(cnt, len(test_set), src), end='')
        sys.stdout.flush()
        if tester(src):
            print(" Passed")
        else:
            print(" Failed")
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


test_cases = ["gcc", "parse", "semantic", "opt", "tac", "codegen"]
generate_ref = False

if generate_ref:
    test_cases = []

res = []
start = time.perf_counter()

if "gcc" in test_cases:
    res.append(test("SysY gcc performance", tests_path +
                    "/SysY2022/performance", ".sy", sysy_gcc))
    res.append(test("SysY gcc final_performance", tests_path +
                    "/SysY2022/final_performance", ".sy", sysy_gcc))

if "parse" in test_cases:
    res.append(test("SPL parse std", tests_path+"/Parse", ".spl", spl_parse))
    res.append(test("SPL parse project1 extra", tests_path +
                    "/Project1/test-ex", ".spl", spl_parse_ext))
    res.append(test("SPL parse project1 self", tests_path +
                    "/Project1/test", ".spl", spl_parse))
    res.append(test("SPL parse project1 student", tests_path +
                    "/Project1/student_test", ".spl", spl_parse))

if "semantic" in test_cases:
    res.append(test("SPL semantic & opt", tests_path +
                    "/Semantic", ".spl", spl_semantic))
    res.append(test("SPL parse project2 extra", tests_path +
                    "/Project2/test-ex", ".spl", spl_semantic_ext))
    res.append(test("SPL parse project2 self", tests_path +
                    "/Project2/test", ".spl", spl_semantic))
    res.append(test("SPL parse project2 student", tests_path +
                    "/Project2/student_test", ".spl", spl_semantic))

if "tac" in test_cases:
    res.append(test("SPL SPL->TAC sample", tests_path +
                    "/TAC2MC", ".spl", spl_semantic_noref))
    res.append(test("SPL codegen TAC", tests_path +
                    "/CodeGenTAC", ".spl", spl_codegen_tac))
    res.append(test("SPL TAC->IR project3", tests_path +
                    "/CodeGenTAC", ".ir", spl_tac2ir))
    res.append(test("SPL TAC->IR project3 self", tests_path +
                    "/Project3", ".spl", spl_tac2ir))
    res.append(test("SPL TAC->IR project4", tests_path +
                    "/TAC2MC", ".ir", spl_codegen_tac))
    res.append(test("SPL TAC->IR project4 self", tests_path +
                    "/Project4", ".spl", spl_codegen_tac))


if "codegen" in test_cases:
    res.append(test("SPL SPL->MIPS project4", tests_path +
               "/TAC2MC", ".spl", spl_codegen_mips))
    res.append(test("SPL SPL->RISCV64 project4", tests_path +
               "/TAC2MC", ".spl", spl_codegen_riscv64))
    res.append(test("SPL TAC->MIPS project4", tests_path +
                    "/TAC2MC", ".ir", spl_codegen_mips))
    res.append(test("SPL SPL->MIPS project4 self", tests_path +
                    "/Project4", ".spl", spl_codegen_mips))
    # res.append(test("SysY ->MIPS functional", tests_path +
    #           "/SysY2022/functional", ".sy", sysy_codegen_mips))
    # res.append(test("SysY ->RISCV64 functional", tests_path +
    #           "/SysY2022/functional", ".sy", sysy_codegen_riscv64))


if "opt" in test_cases:
    res.append(test("SysY opt & test functional", tests_path +
                    "/SysY2022/functional", ".sy", sysy_test))
    res.append(test("SysY opt & test hidden_functional", tests_path +
                    "/SysY2022/hidden_functional", ".sy", sysy_opt))
    res.append(test("SysY opt performance", tests_path +
                    "/SysY2022/performance", ".sy", sysy_opt))
    res.append(test("SysY opt final_performance", tests_path +
                    "/SysY2022/final_performance", ".sy", sysy_opt))
    res.append(test("SysY extra", tests_path + "/Extra", ".sy", sysy_opt))
    res.append(test("Transform", tests_path + "/Transform", ".sy", sysy_opt))

if generate_ref:
    test("Reference SysY", tests_path + "/", ".sy", sysy_ref)
    test("Reference Spl", tests_path + "/", ".spl", spl_ref)
    test("Reference Spl->TAC", tests_path + "/CodeGenTAC", ".spl", spl_tac_ref)
    test("Reference Spl->MIPS", tests_path + "/TAC2MC", ".spl", spl_mips_ref)
    test("Reference Spl->RISCV64", tests_path +
         "/TAC2MC", ".spl", spl_riscv64_ref)

end = time.perf_counter()

total_tests = 0
failed_tests = 0
for t, f in res:
    total_tests += t
    failed_tests += f

print("Passed", total_tests-failed_tests,
      "Failed", failed_tests, "Total", total_tests)
print("Total time: ", end-start)

print("\nPerformance metrics (GeoMeans):")

for key in summary.keys():
    val = geo_means(summary[key], summary_samples)
    print(key, "= {:.3f} baseline = {:.3f} ratio = {:.3f}".format(
        val, baseline[key], val / baseline[key]))

tac_perf = geo_means(tac_inst_count, tac_inst_count_samples)
print("tac_inst_count = {:.3f} baseline = {:.3f} ratio = {:.3f}".format(
    tac_perf, tac_inst_count_ref, tac_perf / tac_inst_count_ref))

if "gcc" in test_cases:
    print('Platform: ', platform.platform())
    gcc_perf = geo_means(total_perf_gcc_ref, total_perf_gcc_ref_samples)
    self_perf = geo_means(total_perf_self, total_perf_self_samples)
    print("gcc: {:.3f}s with command '{}'".format(gcc_perf, gcc_ref_command))
    print("cmmc: {:.3f}s -> {:.2f}x".format(self_perf, self_perf/gcc_perf))

exit(0 if failed_tests == 0 else -1)
