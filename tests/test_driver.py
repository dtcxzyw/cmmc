#!/usr/bin/env python3

import json
import math
import os
import platform
import subprocess
import sys
import time
import platform
import CodeGenTAC.irsim_quiet as irsim
from collections import defaultdict

binary_path = sys.argv[1]
binary_dir = os.path.dirname(binary_path)
tests_path = sys.argv[2]

qemu_path = os.environ.get('QEMU_PATH', '')
stack_size = 128 << 20  # 128M
qemu_command = {
    'riscv': f'{qemu_path}/qemu-riscv64 -L /usr/riscv64-linux-gnu -cpu rv64,zba=true,zbb=true -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.split(),
    'mips': f'{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.split(),
    'arm': f'{qemu_path}/qemu-arm -L /usr/arm-linux-gnueabihf -cpu cortex-a7 -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.split(),
}
gcc_ref_command = "gcc -x c++ -O3 -DNDEBUG -march=native -s -funroll-loops -ffp-contract=on -w ".split()
clang_ref_command = "clang -Qn -O3 -DNDEBUG -emit-llvm -fno-slp-vectorize -fno-vectorize -mllvm -vectorize-loops=false -S -ffp-contract=on -w ".split()
qemu_gcc_ref_command = {
    'riscv': "riscv64-linux-gnu-gcc-11 -O2 -DNDEBUG -march=rv64gc -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ".split(),
    'mips': "mipsel-linux-gnu-gcc-10 -O2 -DNDEBUG -march=mips32r5 -Wa,--relax-branch -mhard-float -ffp-contract=on -w ".split(),
    'arm': "arm-linux-gnueabihf-gcc-12 -O2 -DNDEBUG -march=armv7 -mfpu=vfpv4 -ffp-contract=on -w -no-pie ".split(),
}
targets = set(['mips', 'riscv', 'arm'])

sysy_runtime = tests_path + "/SysY2022/sylib.c"
sysy_header = tests_path + "/SysY2022/sylib.h"

optimization_level = 3
fast_fail = False

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

summary = defaultdict(lambda: 1)
summary_samples = 0
tac_inst_count_ref = 224.116


class PerformanceEnv:
    def __enter__(self):
        if platform.machine() != 'riscv64':
            os.system('sudo cpupower frequency-set -g performance')

    def __exit__(self, exc_type, exc_value, traceback):
        if platform.machine() != 'riscv64':
            os.system('sudo cpupower frequency-set -g ondemand')


def geo_means(prod, count):
    return math.exp(math.log(float(prod)) / max(1, count))


class Sample:
    def __init__(self):
        self.reset()

    def reset(self):
        self.count = 0
        self.prod = 1
        self.log = dict()

    def add_sample(self, name: str, val):
        self.log[name] = val
        self.prod += math.log(val)
        self.count += 1

    def geo_means(self):
        return math.exp(self.prod / max(1, self.count))


samples = defaultdict(Sample)


def add_sample(sample_name, item_name, item_val):
    samples[sample_name].add_sample(item_name, item_val)


def basename(filename: str):
    return os.path.splitext(filename)[0]


def run_cmmc(source, *, target, output = '/dev/stdout', opt_level = None, emit_ir = False, hide_symbol = False, strict = False, input_file = None, more = [], check = True) -> subprocess.CompletedProcess:
    assert opt_level is None or 0 <= opt_level <= 3, "Invalid optimization level"

    command = [
        binary_path,
        '-t', target,
        '-O', str(optimization_level) if opt_level is None else str(opt_level),
        '-o', output,
    ]
    if emit_ir:
        command.append('--emitIR')
    if hide_symbol:
        command.append('--hide-symbol')
    if strict:
        command.append('--strict')
    if input_file is not None:
        command.extend(['-e', input_file])
    command = command + more + [source]

    process = subprocess.run(command, capture_output=True, text=True, check=check)
    assert not check or len(process.stderr) == 0, process.stderr
    return process


def compare_output_with_standard_file(standard_filename: str, output: str, returncode: int):
    if len(output) != 0 and not output.endswith('\n'):
        output += '\n'
    output += str(returncode) + '\n'

    with open(standard_filename, encoding='utf-8', newline='\n') as f:
        standard_answer = f.read()
    if not standard_answer.endswith('\n'):
        standard_answer += '\n'

    if output != standard_answer:
        print(" Output mismatch")
        print("output:", output[:100], "stdans:", standard_answer[:100], sep='\n')
        return False
    return True


def print_and_compare(suffix: str):
    print(suffix.removeprefix('_'), 'result:')
    gcc_perf: Sample = samples['gcc'+suffix]
    cmmc_perf: Sample = samples['cmmc'+suffix]
    if gcc_perf:
        print("gcc: {:.3f}s".format(gcc_perf.geo_means()))
    if cmmc_perf and gcc_perf:
        print("cmmc: {:.3f}s -> {:.5f}x".format(cmmc_perf.geo_means(),
              cmmc_perf.geo_means()/gcc_perf.geo_means()))
        print("Regressions:")

        testcases = []
        score = 0
        for key in gcc_perf.log.keys():
            if key in cmmc_perf.log:
                lhs = gcc_perf.log[key]
                rhs = cmmc_perf.log[key]
                if lhs < rhs:
                    testcases.append((rhs / lhs, lhs, rhs, key))
                    score += lhs / rhs
                else:
                    score += 1.0

        testcases.sort(key=lambda x: -x[0])
        for ratio, lhs, rhs, key in testcases:
            print(f"{lhs:.6f} {rhs:.6f} {ratio:.3f} {key}")
        print("performance score: {:.6f} total {}".format(score, len(gcc_perf.log)))


def compare_and_parse_perf(src, out):
    output_file = basename(src) + '.out'
    if not compare_output_with_standard_file(output_file, out.stdout, out.returncode):
        raise RuntimeError("Output mismatch")

    for line in out.stderr.splitlines():
        if line.startswith('insns:'):
            used = int(line.removeprefix('insns:').strip())
            if 'performance' in src:
                print(f" {used}", end='')
            return used

    for line in out.stderr.splitlines():
        if line.startswith('TOTAL:'):
            perf = line.removeprefix('TOTAL: ').split('-')
            used = float(perf[0][:-1]) * 3600 + float(perf[1][:-1]) * 60 + \
                   float(perf[2][:-1]) + float(perf[3][:-2]) * 1e-6
            if 'performance' in src:
                print(f" {used:.6f}", end='')
            return max(1e-6, used)

    raise RuntimeError("No performance data")


def compare_with_ref_file(answer_file, output):
    if not os.path.exists(answer_file):
        return False
    with open(answer_file, encoding='utf-8') as f:
        answer = f.read()
    return answer == output


def parse_perf(result):
    global summary_samples
    try:
        perf = json.loads(result)
        for key in baseline.keys():
            summary[key] *= max(1, perf[key])
        summary_samples += 1
    except Exception:
        pass


def spl_parse(src, strict=True):
    args = [binary_path, '--emitAST', '-o', '/dev/stdout', src]
    if strict:
        args.insert(-1, '--strict')
    out = subprocess.run(args, capture_output=True, text=True)

    ref = basename(src) + ".out"
    with open(ref, encoding="utf-8") as f:
        ref_content = f.read()
    is_error = "Error" in ref_content
    if out.returncode == 0 and not is_error:
        return ref_content == out.stdout
    elif out.returncode != 0 and is_error:
        return ref_content == out.stderr
    return False

def spl_parse_ext(src):
    return spl_parse(src, strict=False)


def spl_semantic(src, strict=True):
    try:
        out = run_cmmc(src, target='tac', emit_ir=True, strict=strict)
    except subprocess.CalledProcessError as e:
        out = e

    ref = basename(src) + ".out"
    with open(ref, encoding="utf-8") as f:
        ref_content = f.read()
    is_error = ref_content != ""
    if out.returncode == 0 and not is_error:
        return len(out.stdout) != 0 and len(out.stderr) == 0
    elif out.returncode != 0 and is_error:
        return len(out.stdout) == 0 and ref_content == out.stderr
    return False

def spl_semantic_ext(src):
    return spl_semantic(src, False)


def spl_semantic_noref(src):
    run_cmmc(src, target='tac', emit_ir=True, strict=True)


def spl_codegen_tac(src):
    out = run_cmmc(src, target='tac', strict=True, hide_symbol=True)
    ir = out.stdout
    if not irsim.check(ir):
        return False
    print('', ir.count('\n'), end='')
    name = basename(os.path.basename(src))
    if name in irsim.test_generators:
        for inputs, answer in irsim.test_generators[name]():
            ret = irsim.exec(ir, inputs.copy())
            if ret is None:
                return False
            if answer != ret[1]:
                print("\ninput", inputs, "answer", answer, "output", ret[1])
                return False
            add_sample('tac', src, max(1, ret[0]))
    else:
        print("\nWarning: no test cases for", src)

    return True


def remove_prompt(v: str):
    PROMPT = 'Enter an integer:'
    while v.startswith(PROMPT):
        v = v.removeprefix(PROMPT)
    return v


def spl_codegen_mips(src):
    name = basename(os.path.basename(src))
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    run_cmmc(src, target='mips', output=tmp_out, strict=True, hide_symbol=True)
    spl_test_cases = irsim.test_generators[name]()
    for inputs, answer in spl_test_cases:
        out_spim = subprocess.run(
            args=['spim', '-delayed_branches', '-file', tmp_out],
            input='\n'.join(map(str, inputs)),
            capture_output=True, text=True)
        # print(out_spim.stdout)
        out = out_spim.stdout.splitlines()
        res = []
        start = False
        for v in out:
            if start:
                v = remove_prompt(v)
                res.append(int(v))
            elif v.startswith('Loaded:') and 'exceptions.s' in v:
                start = True

        if res != answer:
            print(out)
            print("\ninput", inputs, "answer", answer, "output", res)
            return False

    return True


def sysy_codegen_mips(src):
    run_cmmc(src, target='mips', hide_symbol=True)

def sysy_codegen_riscv64(src):
    run_cmmc(src, target='riscv64', hide_symbol=True)

def spl_tac2ir(src):
    run_cmmc(src, target='mips', emit_ir=True)

def sysy_parse(src):
    subprocess.run([binary_path, '--grammar-check', src], capture_output=True, text=True, check=True)

def sysy_semantic(src):
    run_cmmc(src, target='sim', opt_level=0, emit_ir=True)

def sysy_opt(src):
    run_cmmc(src, target='sim', emit_ir=True, hide_symbol=True)


def sysy_test(src: str, opt=True):
    input_file = basename(src) + '.in'
    if not os.path.exists(input_file):
        input_file = "/dev/null"

    opt_level = None if opt else 0
    out = run_cmmc(src, target='sim', opt_level=opt_level, hide_symbol=True, input_file=input_file, check=False)

    output_file = basename(src) + '.out'
    if not compare_output_with_standard_file(output_file, out.stdout, out.returncode):
        return False

    parse_perf(out.stderr)


def sysy_test_noopt(src: str):
    return sysy_test(src, opt=False)


def spl_ref(src):
    run_cmmc(src, target='tac', output=src+'.ir', emit_ir=True)

def spl_tac_ref(src):
    name = basename(src) + '.ir' if 'Project' in src else src + '.tacir'
    run_cmmc(src, target='tac', output=name, hide_symbol=True)

def spl_mips_ref(src):
    name = basename(src) + '.s' if 'Project' in src else src + '.mips32.S'
    run_cmmc(src, target='mips', output=name, hide_symbol=True)

def spl_riscv64_ref(src):
    run_cmmc(src, target='riscv', output=src+'.riscv64.S', hide_symbol=True)

def sysy_ref(src):
    run_cmmc(src, target='sim', output=src+'.ir', hide_symbol=True, emit_ir=True)


def sysy_ref_clang(src: str):
    output = basename(src) + ".ll"
    if "many_params3" in src:
        extra_command = ['-x', 'c']
    else:
        extra_command = ['-x', 'c++', '-include', sysy_header]
    subprocess.run(clang_ref_command + extra_command + ['-Ddelete=delete_', '-o', output, src], check=True)


def get_output_path(src):
    output = os.path.join(binary_dir, os.path.relpath(basename(src), tests_path))
    os.makedirs(os.path.dirname(output), exist_ok=True)
    return output


def link_executable(src, target, output, *, runtime = sysy_runtime, extra_command = []):
    command = qemu_gcc_ref_command[target] + extra_command + ['-o', output, runtime, src]
    subprocess.run(command, check=True)


def run_executable(command, src, sample_name):
    input_file = basename(src) + '.in'
    if os.path.exists(input_file):
        with open(input_file, encoding='utf-8') as f:
            out = subprocess.run(command, stdin=f, capture_output=True, text=True)
    else:
        out = subprocess.run(command, capture_output=True, text=True)
    time_used = compare_and_parse_perf(src, out)
    add_sample(sample_name, src, time_used)
    return time_used


def collect_perf_data(src, target, i, time_used):
    if 'performance' in src:
        sysy_time_line = f'{time_used:.6f},,sysy_time,,100.00,,'
        with open('perf.txt', 'a') as f:
            f.write(sysy_time_line + '\n')

        perf_data = get_output_path(src) + f'_perf.{target}.{i}.csv'
        os.makedirs(os.path.dirname(perf_data), exist_ok=True)
        os.rename('perf.txt', perf_data)


def sysy_gcc(src):
    output = get_output_path(src)
    subprocess.run(gcc_ref_command + ['-o', output, '-include', sysy_header, sysy_runtime, src], check=True)
    run_executable([output], src, "gcc_host")


def sysy_gcc_qemu(src, target):
    output = get_output_path(src)
    link_executable(src, target, output, extra_command=['-x', 'c++', '-include', sysy_header])
    run_executable(qemu_command[target] + [output], src, f'gcc_qemu_{target}')


def sysy_cmmc_qemu(src, target):
    output = get_output_path(src) + "_cmmc"
    output_asm = output + '.s'

    run_cmmc(src, target=target, output=output_asm, hide_symbol=True)
    link_executable(output_asm, target, output)
    run_executable(qemu_command[target] + [output], src, f'cmmc_qemu_{target}')


def sysy_cmmc_native(src, target):
    output = get_output_path(src) + "_cmmc"
    output_asm = output + '.s'

    run_cmmc(src, target=target, output=output_asm, hide_symbol=True)
    link_executable(output_asm, target, output)
    run_executable([output], fake_src, f"cmmc_native_{target}")


def sysy_cmmc_compile_only(src, target):
    output = get_output_path(src) + "_cmmc"
    output_asm = f'{output}.{target}.s'
    run_cmmc(src, target=target, output=output_asm, hide_symbol=True)
    # link_executable(output_asm, target, output)


def sysy_gcc_native_perf(src, target, i):
    output = get_output_path(src)
    subprocess.run(gcc_ref_command + ['-o', output, '-include', sysy_header, os.path.join(tests_path, 'SysY2022/perf/runtime.c'), src], check=True)
    time_used = run_executable(['taskset', '-c', '2,3', output], src, f'gcc_native_{target}')
    collect_perf_data(src, f'{target}_gcc', i, time_used)


def sysy_cmmc_native_perf(src, target, i):
    testname = src.removesuffix(f'_cmmc.{target}.s').split('SysY2022/')[1]
    output = os.path.join(binary_dir, testname) + '_cmmc'
    os.makedirs(os.path.dirname(output), exist_ok=True)
    fake_src = os.path.join(tests_path, 'SysY2022', testname) + '.sy'

    link_executable(src, target, output, runtime=os.path.join(tests_path, 'SysY2022/perf/runtime.c'))
    time_used = run_executable(['taskset', '-c', '2,3', output], fake_src, f"cmmc_native_{target}")
    collect_perf_data(fake_src, target, i, time_used)


def sysy_regression(src):
    out = run_cmmc(src, target='sim', emit_ir=True)
    return compare_with_ref_file(src + '.ir', out.stdout)

def sysy_regression_codegen(src, target):
    output_asm = f'{basename(src)}.{target}.s'
    out = run_cmmc(src, target=target)
    return compare_with_ref_file(output_asm, out.stdout)

def sysy_regression_ref(src):
    output_asm = src + '.ir'
    run_cmmc(src, target='sim', output=output_asm, emit_ir=True)

def sysy_regression_ref_codegen(src, target):
    output_asm = f'{basename(src)}.{target}.s'
    run_cmmc(src, target=target, output=output_asm)

def sysy_perf_ref_codegen(src, target):
    output_asm = f'{basename(src)}.{target}.s'
    run_cmmc(src, target=target, output=output_asm, hide_symbol=True)

def sysy_codegen_llvm(src):
    input_file = basename(src) + ".in"
    if not os.path.exists(input_file):
        input_file = '/dev/null'

    out = run_cmmc(src, target='llvm', hide_symbol=True, input_file=input_file, check=False)

    time_used = compare_and_parse_perf(src, out)
    add_sample("cmmc_host", src, time_used)


skip_list = []

def test(name, path, filter, tester):
    print("Test", name)
    print("Collecting tests...")
    test_set = []
    for r, ds, fs in os.walk(path):
        # if 'llvmTests' in r:
        #     continue
        for f in fs:
            if f.endswith(filter) and not f.endswith(".spl.ir") and not f.endswith(".sy.ir"):
                skip = any(name in f for name in skip_list)
                if not skip:
                    test_set.append(os.path.join(r, f))
    test_set.sort()

    cnt = 0
    fail_set = []
    for src in test_set:
        cnt += 1
        print(f"Testing... {cnt}/{len(test_set)} {src}", end='', flush=True)
        try:
            if tester(src) is not False:
                print(" Passed")
                continue
        except Exception as e:
            import traceback
            traceback.print_exc()

        print(" Failed")
        fail_set.append(src)
        if fast_fail:
            exit(-1)

    print("\r")
    print("[==========] {} tests ran.".format(cnt))
    print("[  PASSED  ] {} tests.".format(cnt - len(fail_set)))

    if len(fail_set):
        print("[  FAILED  ] {} tests, listed below:".format(len(fail_set)))
        for src in fail_set:
            print("[  FAILED  ]", src)
        print(len(fail_set), "FAILED TEST")
    print()

    return len(test_set), len(fail_set)


test_cases = set(["parse", "semantic", "opt", "tac", "codegen", "regression", 'mips', 'riscv', 'arm'])
if len(sys.argv) >= 4:
    test_cases = set(sys.argv[3].split(','))

generate_ref = 'ref' in test_cases
if generate_ref:
    fast_fail = False

res = []
start = time.perf_counter()


def test_sysy_groups(name, target, test_func):
    sample_name = f'cmmc_qemu_{target}'
    res.append(test(f"SysY codegen functional ({name}-{target})", tests_path +
                    "/SysY2022/functional", ".sy", lambda x: test_func(x, target)))
    res.append(test(f"SysY codegen hidden_functional ({name}-{target})", tests_path +
                    "/SysY2022/hidden_functional", ".sy", lambda x: test_func(x, target)))
    if sample_name in samples:
        samples[sample_name].reset()
    res.append(test(f"SysY codegen performance ({name}-{target})", tests_path +
                    "/SysY2022/performance", ".sy", lambda x: test_func(x, target)))


if not generate_ref:
    if "parse" in test_cases:
        res.append(test("SPL parse std", tests_path + "/Parse", ".spl", spl_parse))
        res.append(test("SPL parse project1 extra", tests_path + "/Project1/test-ex", ".spl", spl_parse_ext))
        res.append(test("SPL parse project1 self", tests_path + "/Project1/test", ".spl", spl_parse))
        res.append(test("SPL parse project1 student", tests_path + "/Project1/student_test", ".spl", spl_parse))

    if "semantic" in test_cases:
        res.append(test("SPL semantic & opt", tests_path + "/Semantic", ".spl", spl_semantic))
        res.append(test("SPL parse project2 extra", tests_path + "/Project2/test-ex", ".spl", spl_semantic_ext))
        res.append(test("SPL parse project2 self", tests_path + "/Project2/test", ".spl", spl_semantic))
        res.append(test("SPL parse project2 student", tests_path + "/Project2/student_test", ".spl", spl_semantic))

    if "opt" in test_cases:
        res.append(test("SysY opt & test functional", tests_path + "/SysY2022/functional", ".sy", sysy_test))
        res.append(test("SysY opt & test hidden_functional", tests_path + "/SysY2022/hidden_functional", ".sy", sysy_opt))
        res.append(test("SysY opt performance", tests_path + "/SysY2022/performance", ".sy", sysy_opt))
        res.append(test("SysY extra", tests_path + "/Extra", ".sy", sysy_opt))

    if "tac" in test_cases:
        res.append(test("SPL SPL->TAC sample", tests_path + "/TAC2MC", ".spl", spl_semantic_noref))
        res.append(test("SPL codegen TAC", tests_path + "/CodeGenTAC", ".spl", spl_codegen_tac))
        res.append(test("SPL TAC->IR project3", tests_path + "/CodeGenTAC", ".ir", spl_tac2ir))
        res.append(test("SPL TAC->IR project3 self", tests_path + "/Project3", ".spl", spl_tac2ir))
        res.append(test("SPL TAC->IR project4", tests_path + "/TAC2MC", ".ir", spl_codegen_tac))
        res.append(test("SPL TAC->IR project4 self", tests_path + "/Project4", ".spl", spl_codegen_tac))

    if "codegen" in test_cases:
        if 'mips' in test_cases:
            res.append(test("SPL SPL->MIPS project4", tests_path + "/TAC2MC", ".spl", spl_codegen_mips))
            res.append(test("SPL TAC->MIPS project4", tests_path + "/TAC2MC", ".ir", spl_codegen_mips))
            res.append(test("SPL SPL->MIPS project4 self", tests_path + "/Project4", ".spl", spl_codegen_mips))
        # if 'riscv' in test_cases:
        #     res.append(test("SPL SPL->RISCV64 project4", tests_path + "/TAC2MC", ".spl", spl_codegen_riscv64))
        #     res.append(test("SPL SPL->RIRCV64 project4 self", tests_path + "/Project4", ".spl", spl_codegen_riscv64))

    if "gcc" in test_cases:
        res.append(test("SysY gcc performance", tests_path + "/SysY2022/performance", ".sy", sysy_gcc))

    if "llvm" in test_cases:
        res.append(test("SysY SysY->LLVMIR functional", tests_path +
                        "/SysY2022/functional", ".sy", sysy_codegen_llvm))
        res.append(test("SysY SysY->LLVMIR hidden_functional", tests_path +
                        "/SysY2022/hidden_functional", ".sy", sysy_codegen_llvm))
        samples['cmmc_host'].reset()
        res.append(test("SysY SysY->LLVMIR performance", tests_path +
                        "/SysY2022/performance", ".sy", sysy_codegen_llvm))

    if "regression" in test_cases:
        res.append(test("SysY regression", tests_path + "/Regression/Transform", ".sy", sysy_regression))

    for target in targets & test_cases:
        if "qemu-gcc" in test_cases:
            res.append(test(f"SysY gcc performance (qemu-{target})", tests_path +
                            "/SysY2022/performance", ".sy", lambda x: sysy_gcc_qemu(x, target)))
        if "qemu" in test_cases:
            test_sysy_groups('qemu', target, sysy_cmmc_qemu)
        if "compile" in test_cases:
            test_sysy_groups('compile', target, sysy_cmmc_compile_only)
        if "run" in test_cases:
            # WARNING: use pre-compiled assembly file under SysY2022/performance
            with PerformanceEnv():
                for i in range(5):
                    res.append(test("SysY codegen performance (native-{})".format(target),
                                    "SysY2022/performance", f".{target}.s", lambda x: sysy_cmmc_native_perf(x, target, i)))
        if "run-gcc" in test_cases:
            with PerformanceEnv():
                for i in range(5):
                    res.append(test(f"SysY gcc performance (native-{target})", tests_path +
                                    "/SysY2022/performance", ".sy", lambda x: sysy_gcc_native_perf(x, target, i)))
        if "native" in test_cases:
            test_sysy_groups('native', target, sysy_cmmc_native)
        if "regression" in test_cases:
            res.append(test(f"SysY regression {target}", tests_path +"/Regression/CodeGen", ".sy", lambda x: sysy_regression_codegen(x, target)))


if generate_ref:
    if 'sysy' in test_cases:
        test("Reference SysY", tests_path + "/SysY2022", ".sy", sysy_ref)
        test("Reference SysY Extra", tests_path + "/Extra", ".sy", sysy_ref)
    if 'clang' in test_cases:
        test("Reference SysY Clang", tests_path + "/SysY2022", ".sy", sysy_ref_clang)
    if 'spl' in test_cases:
        test("Reference Spl", tests_path + "/", ".spl", spl_ref)
    if 'tac' in test_cases:
        test("Reference Spl->TAC", tests_path + "/CodeGenTAC", ".spl", spl_tac_ref)
        test("Reference Spl->TAC Extra", tests_path + "/Project3", ".spl", spl_tac_ref)
    if 'mips' in test_cases:
        test("Reference Spl->MIPS", tests_path + "/TAC2MC", ".spl", spl_mips_ref)
        test("Reference Spl->MIPS Extra", tests_path + "/Project4", ".spl", spl_mips_ref)
    if 'riscv' in test_cases:
        test("Reference Spl->RISCV64", tests_path + "/TAC2MC", ".spl", spl_riscv64_ref)
        test("Reference Spl->RISCV64 Extra", tests_path + "/Project4", ".spl", spl_riscv64_ref)
    if 'regression' in test_cases:
        test("Reference SysY Regression", tests_path + "/Regression/Transform", ".sy", sysy_regression_ref)
        for target in targets & test_cases:
            test(f"SysY regression {target}", tests_path +"/Regression/CodeGen", ".sy", lambda x: sysy_regression_ref_codegen(x, target))
    if 'perf' in test_cases:
        for target in targets & test_cases:
            test(f"SysY performance {target}", tests_path +"/SysY2022/performance", ".sy", lambda x: sysy_perf_ref_codegen(x, target))

end = time.perf_counter()

total_tests = sum([t for t, f in res])
failed_tests = sum([f for t, f in res])

print("Passed", total_tests - failed_tests,
      "Failed", failed_tests, "Total", total_tests)
print("Total time: ", end - start)

if not generate_ref:
    print("\nPerformance metrics (GeoMeans):")

    for key in summary.keys():
        val = geo_means(summary[key], summary_samples)
        print(key, "= {:.3f} baseline = {:.3f} ratio = {:.3f}".format(
            val, baseline[key], val / baseline[key]))

    if "tac" in test_cases:
        tac_perf = samples['tac'].geo_means()
        print("tac_inst_count = {:.3f} baseline = {:.3f} ratio = {:.3f}".format(
            tac_perf, tac_inst_count_ref, tac_perf / tac_inst_count_ref))

    if "gcc" in test_cases and "llvm" in test_cases:
        print('Platform:', platform.platform())
        print_and_compare('_host')

    if "qemu-gcc" in test_cases and "qemu" in test_cases:
        for target in targets & test_cases:
            print_and_compare(f'_qemu_{target}')

exit(0 if failed_tests == 0 else -1)
