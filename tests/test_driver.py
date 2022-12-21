#!/usr/bin/env python3

import os
import sys
import time
import subprocess
import json
import CodeGenTAC.irsim_quiet as irsim
import platform

gcc_ref_command = "gcc -x c++ -O3 -DNDEBUG -s -funroll-loops -w "
binary_path = sys.argv[1]
binary_dir = os.path.dirname(binary_path)
tests_path = sys.argv[2]
rars_path = tests_path + "/TAC2MC/rars.jar"
assert os.path.exists(rars_path)

# 10/27/2022
baseline = {
    "inst": 207616174,
    "branch": 18005070,
    "call": 15663,
    "load": 10519398,
    "store": 31260338,
    "load_bytes": 42168672,
    "store_bytes": 179166224
}

summary = {}
tac_inst_count = 0
tac_inst_count_ref = 4490137
total_perf_gcc_ref = 0
total_perf_self = 0


def parse_perf(result):
    try:
        perf = json.loads(result)
        for key in baseline.keys():
            summary[key] = summary.get(key, 0) + perf[key]
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
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'tac', '--hide-symbol', '-o',
                               '/dev/stdout', src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    ir = out.stdout
    if not irsim.check(ir):
        return False
    print('', ir.count('\n'), end='')
    name = os.path.basename(src)
    if name in irsim.test_generators:
        for inputs, answer in irsim.test_generators[name]():
            ret = irsim.exec(ir, inputs.copy())
            if ret == None:
                return False
            if answer != ret[1]:
                print("\ninput", inputs, "answer", answer, "output", ret[1])
                return False
            global tac_inst_count
            tac_inst_count += ret[0]
    else:
        print("\nWarning: no test cases for", src)

    return True


def test_gen_fact():
    ret = [([-1], [1]), ([0], [1]), ([1], [1])]
    res = 1
    for idx in range(2, 12):
        res *= idx
        ret.append(([idx], [res]))
    return ret


def test_gen_hanoi():
    return [([], [10003, 10002, 30002, 10003, 20001, 20003, 10003])]


def test_gen_sign():
    return irsim.testgen_test_01()


def test_gen_arith():
    return [([], [19])]


spl_test_generators = {
    'test_4_fact.spl': test_gen_fact,
    'test_4_r01.spl': test_gen_hanoi,
    'test_4_r02.spl': test_gen_sign,
    'test_4_r03.spl': test_gen_arith,
}


def spl_codegen_mips(src):
    name = os.path.basename(src)
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'mips', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    spl_test_cases = spl_test_generators[name]()
    for inputs, answer in spl_test_cases:
        out_spim = subprocess.run(
            args=['spim', '-file', tmp_out], input='\n'.join(map(lambda x: str(x), inputs)), capture_output=True, text=True)
        out = out_spim.stdout.splitlines()
        res = []
        start = False
        for v in out:
            if start:
                v = v.removeprefix('Enter an integer:')
                res.append(int(v))
            elif v.startswith('Loaded:') and 'exceptions.s' in v:
                start = True

        if res != answer:
            print("\ninput", inputs, "answer", answer, "output", res)
            return False

    return True


def spl_codegen_riscv64(src):
    name = os.path.basename(src)
    tmp_out = os.path.join(binary_dir, 'tmp.S')
    out = subprocess.run(args=[binary_path, '--strict', '-t', 'riscv', '--hide-symbol', '-o',
                               tmp_out, src], capture_output=True, text=True)
    if out.returncode != 0 or len(out.stderr) != 0:
        return False
    spl_test_cases = spl_test_generators[name]()
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
    args = [binary_path, '-t', 'sim', '--hide-symbol', '-o',
            '/dev/stdout', '-e', input_file, src]

    if not opt:
        args.insert(-1, '-O')
        args.insert(-1, '0')

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
    subprocess.run(args=[binary_path, '-t', 'riscv64', '-o',
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
            total_perf_gcc_ref += used

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
    res.append(test("SPL TAC->IR project4", tests_path +
                    "/TAC2MC", ".ir", spl_tac2ir))

if "codegen" in test_cases:
    res.append(test("SPL SPL->MIPS project4", tests_path +
               "/TAC2MC", ".spl", spl_codegen_mips))
    res.append(test("SPL SPL->RISCV64 project4", tests_path +
               "/TAC2MC", ".spl", spl_codegen_riscv64))
    # TODO: IR->MIPS


if "opt" in test_cases:
    res.append(test("SysY opt & test functional", tests_path +
                    "/SysY2022/functional", ".sy", sysy_test))
    res.append(test("SysY opt hidden_functional", tests_path +
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

print("\nPerformance metrics:")
baseline['tac_inst_count'] = tac_inst_count_ref
summary['tac_inst_count'] = tac_inst_count

for key in summary.keys():
    print(key, "= {} baseline = {} ratio = {:.3f}".format(
        summary[key], baseline[key], summary[key] / baseline[key]))

if "gcc" in test_cases:
    print('Platform: ', platform.platform())
    print("gcc: {:.3f}s with command '{}'".format(
        total_perf_gcc_ref, gcc_ref_command))
    print("cmmc: {:.3f}s -> {:.2f}x".format(total_perf_self,
                                            total_perf_self/total_perf_gcc_ref))

exit(0 if failed_tests == 0 else -1)
