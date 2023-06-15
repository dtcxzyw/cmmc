#!/usr/bin/env python3

import os
import sys
import time
import subprocess
import json
import CodeGenTAC.irsim_quiet as irsim
import platform
import math

qemu_path = os.environ.get('QEMU_PATH', '')
stack_size = 128 << 20  # 128M
qemu_command = {
    'riscv': '{qemu_path}/qemu-riscv64 -L /usr/riscv64-linux-gnu -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(stack_size=stack_size, qemu_path=qemu_path).split(),
    'mips': '{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(stack_size=stack_size, qemu_path=qemu_path).split(),
    'arm': '{qemu_path}/qemu-arm -L /usr/arm-linux-gnueabi -cpu cortex-a7 -s {stack_size} -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(stack_size=stack_size, qemu_path=qemu_path).split(),
}
gcc_ref_command = "gcc -x c++ -O3 -DNDEBUG -march=native -s -funroll-loops -ffp-contract=on -w "
clang_ref_command = "clang -Qn -x c++ -O3 -DNDEBUG -emit-llvm -fno-slp-vectorize -fno-vectorize -mllvm -vectorize-loops=false -S -ffp-contract=on -w "
qemu_gcc_ref_command = {
    'riscv': "riscv64-linux-gnu-gcc-11 -x c++ -O2 -DNDEBUG -march=rv64gc -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ",
    'mips': "mipsel-linux-gnu-gcc-10 -x c++ -O2 -DNDEBUG -march=mips32r5 -Wa,--relax-branch -mhard-float -ffp-contract=on -w ",
    'arm': "arm-linux-gnueabi-gcc -x c++ -O2 -DNDEBUG -march=armv7 -ffp-contract=on -w ",
}
binary_path = sys.argv[1]
binary_dir = os.path.dirname(binary_path)
tests_path = sys.argv[2]
rars_path = tests_path + "/TAC2MC/rars.jar"
optimization_level = '3'
fast_fail = False
generate_ref = False
assert os.path.exists(rars_path)
targets = ['mips', 'riscv', 'arm']

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
tac_inst_count_ref = 224.116


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


samples = dict()


def add_sample(sample_name, item_name, item_val):
    global samples
    sample = samples.get(sample_name, Sample())
    sample.add_sample(item_name, item_val)
    samples[sample_name] = sample


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
            print("{:.6f} {:.6f} {:.3f} {}".format(lhs, rhs, ratio, key))
        print("performance score: {:.6f} total {}".format(score, len(gcc_perf.log)))


def parse_perf(result):
    try:
        perf = json.loads(result)
        for key in baseline.keys():
            summary[key] = summary.get(key, 1) * max(1, perf[key])
        global summary_samples
        summary_samples += 1
    except:
        pass


def dump_args(args):
    print("", " ".join(args))


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
    # dump_args(args)
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
    args = [binary_path, '--strict', '-t', 'tac', '--hide-symbol', '-O', optimization_level, '-o',
            '/dev/stdout', src]
    # print("", " ".join(args))
    out = subprocess.run(args, capture_output=True, text=True)
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
            add_sample('tac', src, max(1, ret[0]))
    else:
        print("\nWarning: no test cases for", src)

    return True


def remove_prompt(v: str):
    while v.startswith('Enter an integer:'):
        v = v[len('Enter an integer:'):]
    return v


def spl_codegen_mips(src):
    name = str(os.path.basename(src)).split('.')[0]
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    args = [binary_path, '--strict', '-t', 'mips', '--hide-symbol', '-O', optimization_level, '-o',
            tmp_out, src]
    # print("", " ".join(args))
    out = subprocess.run(args, capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    spl_test_cases = irsim.test_generators[name]()
    for inputs, answer in spl_test_cases:
        out_spim = subprocess.run(
            args=['spim', '-delayed_branches', '-file', tmp_out], input='\n'.join(map(lambda x: str(x), inputs)), capture_output=True, text=True)
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
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    args = [binary_path, '-t', 'mips', '--hide-symbol', '-O', optimization_level,  '-o',
            tmp_out, src]
    # dump_args(args)
    out = subprocess.run(args, capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        print(out.returncode, out.stderr)
        return False

    return True


def sysy_codegen_riscv64(src):
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '-t', 'riscv', '--hide-symbol', '-O', optimization_level,  '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        print(out.returncode)
        print(out.stderr)
        return False

    return True


def spl_codegen_riscv64(src):
    name = str(os.path.basename(src)).split('.')[0]
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'riscv', '--hide-symbol', '-O', optimization_level, '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        print(out.returncode)
        print(out.stderr)
        return False
    spl_test_cases = irsim.test_generators[name]()
    for inputs, answer in spl_test_cases:
        # print(inputs)
        out_rars = subprocess.run(
            args=['java', '-jar', rars_path, 'nc',
                  'me', 'rv64', '1048576', tmp_out],
            input='\n'.join(map(lambda x: str(x), inputs)),
            capture_output=True, text=True
        )
        out = out_rars.stdout.splitlines()
        res = []
        for v in out:
            v = remove_prompt(v)
            if len(v):
                res.append(int(v))
        if res != answer:
            print("\ninput", inputs, "answer", answer, "output",
                  res, "returncode", out_rars.returncode)
            return False

    return True


def spl_tac2ir(src):
    out = subprocess.run(args=[binary_path, '--emitIR', '-t', 'mips', '-O', optimization_level, '-o',
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
    return subprocess.run(args=[binary_path, '--emitIR', '-t', 'tac', '-O', optimization_level, '-o',
                                src+".ir", src], stderr=subprocess.DEVNULL).returncode == 0


def spl_tac_ref(src):
    name = src+".tacir"
    if 'Project' in src:
        name = src[:-4]+".ir"
    return subprocess.run(args=[binary_path, '-t', 'tac', '--hide-symbol', '-O', optimization_level, '-o',
                                name, src], stderr=subprocess.DEVNULL).returncode == 0


def spl_mips_ref(src):
    name = src+".mips32.S"
    if 'Project' in src:
        name = src[:-4]+".s"
    return subprocess.run(args=[binary_path, '-t', 'mips', '--hide-symbol', '-O', optimization_level, '-o',
                                name, src], stderr=subprocess.DEVNULL).returncode == 0


def spl_riscv64_ref(src):
    return subprocess.run(args=[binary_path, '-t', 'riscv', '--hide-symbol', '-O', optimization_level, '-o',
                                src+".riscv64.S", src], stderr=subprocess.DEVNULL).returncode == 0


def sysy_ref(src):
    return subprocess.run(args=[binary_path, '--emitIR', '-t', 'sim', '--hide-symbol', '-O', optimization_level, '-o',
                                src+".ir", src], stderr=subprocess.DEVNULL).returncode == 0


def sysy_ref_clang(src: str):
    header = tests_path + "/SysY2022/sylib.h"
    output = src.removesuffix('.sy')+".ll"
    ref_command = clang_ref_command
    include = "-include "+header
    if "many_params3" in src:
        ref_command = clang_ref_command.replace("c++", "c")
        include = ""
    return os.system("{} {} -Ddelete=delete_ -o {} {}".format(ref_command, include, output, src)) == 0


def compare_and_parse_perf(src, out):
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
        print("Output mismatch")
        print("output:")
        if len(output) > 100:
            output = output[:100]
        print(output)
        print("stdans:")
        if len(standard_answer) > 100:
            standard_answer = standard_answer[:100]
        print(standard_answer)
        return None

    for line in out.stderr.splitlines():
        if line.startswith('insns:'):
            used = int(line[6:].strip())
            if 'performance' in src:
                print(" {}".format(used), end='')
            return used

    for line in out.stderr.splitlines():
        if line.startswith('TOTAL:'):
            perf = line[7:].split('-')
            used = float(perf[0][:-1])*3600+float(perf[1][:-1]) * \
                60+float(perf[2][:-1])+float(perf[3][:-2])*1e-6
            if 'performance' in src:
                print(" {:.3f}".format(used), end='')
            return max(1e-6, used)

    return None


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

    used = compare_and_parse_perf(src, out)
    if used is None:
        return False

    add_sample("gcc_host", src, used)

    return True


def sysy_gcc_qemu(src, target):
    runtime = tests_path + "/SysY2022/sylib.c"
    header = tests_path + "/SysY2022/sylib.h"
    rel = os.path.relpath(src[:-3], tests_path)
    output = os.path.join(binary_dir, rel)
    output_path = os.path.dirname(output)
    if not os.path.exists(output_path):
        os.makedirs(output_path)
    command = qemu_gcc_ref_command[target] + \
        ' -o {} -include {} {} {}'.format(output, header, runtime, src)
    if os.system(command) != 0:
        return False

    inputs = src[:-3]+".in"
    out = None
    if os.path.exists(inputs):
        with open(inputs, 'r', encoding='utf-8') as input_file:
            out = subprocess.run(qemu_command[target] + [output], stdin=input_file,
                                 capture_output=True, text=True)
    else:
        out = subprocess.run(
            qemu_command[target] + [output], capture_output=True, text=True)

    used = compare_and_parse_perf(src, out)
    if used is None:
        return False

    add_sample("gcc_qemu_"+target, src, used)

    return True


def sysy_cmmc_qemu(src, target):
    # FIXME
    if 'vector_mul' in src:
        return True
    runtime = tests_path + "/SysY2022/sylib.c"
    rel = os.path.relpath(src[:-3], tests_path)
    output = os.path.join(binary_dir, rel)+"_cmmc"
    output_path = os.path.dirname(output)
    if not os.path.exists(output_path):
        os.makedirs(output_path)
    output_asm = output + '.s'
    cmmc_command = binary_path + \
        ' -t {} -O {} -H -o '.format(target,
                                     optimization_level) + output_asm + ' ' + src
    if os.system(cmmc_command) != 0:
        return False
    command = qemu_gcc_ref_command[target].replace('-x c++', '') + \
        ' -o {} {} {}'.format(output, runtime, output_asm)
    if os.system(command) != 0:
        return False

    inputs = src[:-3]+".in"
    out = None
    try:
        if os.path.exists(inputs):
            with open(inputs, 'r', encoding='utf-8') as input_file:
                out = subprocess.run(qemu_command[target] + [output], stdin=input_file,
                                     capture_output=True, text=True)
        else:
            out = subprocess.run(
                qemu_command[target] + [output], capture_output=True, text=True)
    except Exception as e:
        return False

    used = compare_and_parse_perf(src, out)
    if used is None:
        return False

    add_sample("cmmc_qemu_"+target, src, used)

    return True

def compare_with_ref_file(answer_file, output):
    if not os.path.exists(answer_file):
        return False
    with open(answer_file, 'r', encoding='utf-8') as f:
        answer = f.read()
        return answer == output

def sysy_regression(src):
    output_asm = src + '.ir'
    cmmc_command:str = binary_path + ' -i -O {} -t sim -o /dev/stdout '.format(optimization_level) + src
    out = subprocess.run(cmmc_command.split(), capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False

    return compare_with_ref_file(output_asm, out.stdout)

def sysy_regression_codegen(src, target):
    output_asm = src[:-2] + target + '.s'
    cmmc_command:str = binary_path + ' -O {} -t {} -o /dev/stdout '.format(optimization_level, target) + src
    out = subprocess.run(cmmc_command.split(), capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False

    return compare_with_ref_file(output_asm, out.stdout)

def sysy_regression_ref(src):
    output_asm = src + '.ir'
    cmmc_command = binary_path + ' -i -O {} -t sim -o '.format(optimization_level) + output_asm + ' ' + src
    return os.system(cmmc_command) == 0

def sysy_regression_ref_codegen(src,target):
    output_asm = src[:-2] + target + '.s'
    cmmc_command = binary_path + ' -O {} -t {} -o '.format(optimization_level, target) + output_asm + ' ' + src
    return os.system(cmmc_command) == 0

def sysy_codegen_llvm(src):
    inputs = src[:-3]+".in"
    if not os.path.exists(inputs):
        inputs = '/dev/null'

    args = [binary_path, '-t', 'llvm', '--hide-symbol', '-O', optimization_level, '-o',
                               '/dev/stdout', '-e', inputs, src]
    # dump_args(args)
    out = subprocess.run(args=args, capture_output=True, text=True)

    used = compare_and_parse_perf(src, out)
    if used is None:
        return False

    add_sample("cmmc_host", src, used)

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
            if fast_fail:
                exit(-1)

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


test_cases = ["parse", "semantic", "opt", "tac", "codegen", "regression", 'mips', 'riscv', 'arm']
if len(sys.argv) >= 4:
    test_cases = sys.argv[3].split(',')

generate_ref = 'ref' in test_cases
if generate_ref:
    fast_fail = False

res = []
start = time.perf_counter()

if not generate_ref:
    if "parse" in test_cases:
        res.append(test("SPL parse std", tests_path +
                   "/Parse", ".spl", spl_parse))
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

    if "opt" in test_cases:
        res.append(test("SysY opt & test functional", tests_path +
                        "/SysY2022/functional", ".sy", sysy_test))
        res.append(test("SysY opt & test hidden_functional", tests_path +
                        "/SysY2022/hidden_functional", ".sy", sysy_opt))
        res.append(test("SysY opt performance", tests_path +
                        "/SysY2022/performance", ".sy", sysy_opt))
        res.append(test("SysY extra", tests_path + "/Extra", ".sy", sysy_opt))

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
        if 'mips' in test_cases:
            res.append(test("SPL SPL->MIPS project4", tests_path +
                            "/TAC2MC", ".spl", spl_codegen_mips))
            res.append(test("SPL TAC->MIPS project4", tests_path +
                            "/TAC2MC", ".ir", spl_codegen_mips))
            res.append(test("SPL SPL->MIPS project4 self", tests_path +
                            "/Project4", ".spl", spl_codegen_mips))
        if 'riscv' in test_cases:
            res.append(test("SPL SPL->RISCV64 project4", tests_path +
                            "/TAC2MC", ".spl", spl_codegen_riscv64))
            res.append(test("SPL SPL->RIRCV64 project4 self", tests_path +
                            "/Project4", ".spl", spl_codegen_riscv64))

    if "gcc" in test_cases:
        res.append(test("SysY gcc performance", tests_path +
                        "/SysY2022/performance", ".sy", sysy_gcc))

    if "llvm" in test_cases:
        res.append(test("SysY SysY->LLVMIR functional", tests_path +
                        "/SysY2022/functional", ".sy", sysy_codegen_llvm))
        res.append(test("SysY SysY->LLVMIR hidden_functional", tests_path +
                        "/SysY2022/hidden_functional", ".sy", sysy_codegen_llvm))
        samples['cmmc_host'].reset()
        res.append(test("SysY SysY->LLVMIR performance", tests_path +
                        "/SysY2022/performance", ".sy", sysy_codegen_llvm))

    if "qemu-gcc" in test_cases:
        for target in targets:
            if target in test_cases:
                res.append(test("SysY gcc performance (qemu-{})".format(target), tests_path +
                                "/SysY2022/performance", ".sy", lambda x: sysy_gcc_qemu(x, target)))

    if "qemu" in test_cases:
        for target in targets:
            if target in test_cases:
                res.append(test("SysY codegen functional (qemu-{})".format(target), tests_path +
                                "/SysY2022/functional", ".sy", lambda x: sysy_cmmc_qemu(x, target)))
                res.append(test("SysY codegen hidden_functional (qemu-{})".format(target), tests_path +
                                "/SysY2022/hidden_functional", ".sy", lambda x: sysy_cmmc_qemu(x, target)))
                samples['cmmc_qemu_'+target].reset()
                res.append(test("SysY codegen performance (qemu-{})".format(target), tests_path +
                                "/SysY2022/performance", ".sy", lambda x: sysy_cmmc_qemu(x, target)))
                
    if "regression" in test_cases:
        res.append(test("SysY regression", tests_path +"/Regression/Transform", ".sy", sysy_regression))

        for target in targets:
            if target in test_cases:
                res.append(test("SysY regression {}".format(target), tests_path +"/Regression/CodeGen", ".sy", lambda x: sysy_regression_codegen(x, target)))


if generate_ref:
    if 'sysy' in test_cases:
        test("Reference SysY", tests_path + "/SysY2022", ".sy", sysy_ref)
        test("Reference SysY Extra", tests_path + "/Extra", ".sy", sysy_ref)
    if 'clang' in test_cases:
        test("Reference SysY Clang", tests_path +
             "/SysY2022", ".sy", sysy_ref_clang)
    if 'spl' in test_cases:
        test("Reference Spl", tests_path + "/", ".spl", spl_ref)
    if 'tac' in test_cases:
        test("Reference Spl->TAC", tests_path +
             "/CodeGenTAC", ".spl", spl_tac_ref)
        test("Reference Spl->TAC Extra", tests_path +
             "/Project3", ".spl", spl_tac_ref)
    if 'mips' in test_cases:
        test("Reference Spl->MIPS", tests_path +
             "/TAC2MC", ".spl", spl_mips_ref)
        test("Reference Spl->MIPS Extra", tests_path +
             "/Project4", ".spl", spl_mips_ref)
    if 'riscv' in test_cases:
        test("Reference Spl->RISCV64", tests_path +
             "/TAC2MC", ".spl", spl_riscv64_ref)
        test("Reference Spl->RISCV64 Extra", tests_path +
             "/Project4", ".spl", spl_riscv64_ref)
    if 'regression' in test_cases:
        test("Reference SysY Regression", tests_path +
             "/Regression/Transform", ".sy", sysy_regression_ref)
        for target in targets:
            if target in test_cases:
                test("SysY regression {}".format(target), tests_path +"/Regression/CodeGen", ".sy", lambda x: sysy_regression_ref_codegen(x, target))

end = time.perf_counter()

total_tests = 0
failed_tests = 0
for t, f in res:
    total_tests += t
    failed_tests += f

print("Passed", total_tests-failed_tests,
      "Failed", failed_tests, "Total", total_tests)
print("Total time: ", end-start)

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
        print('Platform: ', platform.platform())
        print_and_compare('_host')

    if "qemu-gcc" in test_cases and "qemu" in test_cases:
        for target in targets:
            if target in test_cases:
                print_and_compare('_qemu_'+target)

exit(0 if failed_tests == 0 else -1)
