#!/usr/bin/env python3

import os
import sys
import subprocess
import jinja2
import random
from concurrent.futures import ThreadPoolExecutor
import tqdm
import numpy as np
import shutil
import math
import warnings

warnings.filterwarnings('ignore')

qemu_path = os.environ.get('QEMU_PATH', '')
qemu_command = "{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr".format(
    qemu_path=qemu_path).split()
qemu_gcc_ref_command = "mipsel-linux-gnu-gcc-10 -x c++ -O2 -DNDEBUG -march=mips32r5 -mhard-float -ffp-contract=on -w "
binary_path = sys.argv[1]
test_count = int(sys.argv[2])
binary_dir = os.path.dirname(binary_path)
output_dir = binary_dir+"/codegen_fuzzer"
if os.path.exists(output_dir):
    shutil.rmtree(output_dir)
os.makedirs(output_dir, exist_ok=False)
tests_path = os.path.abspath(os.path.dirname(__file__)+"/../")
environment = jinja2.Environment(
    loader=jinja2.loaders.FileSystemLoader(os.path.dirname(__file__)))
optimization_level = '0'
fast_fail = True

integer_expressions = 10
fp_expressions = 10
control_flow_expressions = 10


class Context:
    def __init__(self) -> None:
        self.random = random.Random(os.urandom(16))
        self.ranges = [(-2147483648, 2147483647), (-32768, 32767),
                       (-2048, 2047), (-128, 127), (-8, 7), (-1, 1)]
        self.special_fp = np.asarray(
            [0.0, -np.float32(0.0), -1.0, 1.0, np.nan, -np.nan, np.inf, -np.inf], np.float32)

    def get_imm(self):
        minv, maxv = self.ranges[self.random.randrange(0, len(self.ranges))]
        return self.random.randint(minv, maxv)

    def get_imm_shamt(self):
        return self.random.randint(0, 31)

    def get_fp(self):
        if self.random.randrange(0, 2) == 0:
            return self.special_fp[self.random.randrange(0, len(self.special_fp))]
        return self.random.random()


int_op_list = ['+', '-', '*', '/', '%', '<<', '>>', '&',
               '|', '^', '<', '>', '<=', '>=', '==', '!=']


def get_imm_typed(ctx: Context, op):
    if 5 <= op <= 6:
        return ctx.get_imm_shamt()
    while True:
        val = ctx.get_imm()
        if val == 0 and (3 <= op <= 4):
            continue
        return val


def eval_int_expr(l, r, op):
    lhs = np.int32(l)
    rhs = np.int32(r)
    match op:
        case 0: return lhs + rhs
        case 1: return lhs - rhs
        case 2: return lhs * rhs
        case 3: return np.int32(np.fix(np.true_divide(lhs, rhs)))
        case 4: return np.int32(lhs - rhs * np.int32(np.fix(np.true_divide(lhs, rhs))))
        case 5: return lhs << rhs
        case 6: return lhs >> rhs
        case 7: return lhs & rhs
        case 8: return lhs | rhs
        case 9: return lhs ^ rhs
        case 10: return 1 if lhs < rhs else 0
        case 11: return 1 if lhs > rhs else 0
        case 12: return 1 if lhs <= rhs else 0
        case 13: return 1 if lhs >= rhs else 0
        case 14: return 1 if lhs == rhs else 0
        case 15: return 1 if lhs != rhs else 0


int_expr_fmts = [
    # imm reg
    "int t{id} = {rhs}; assertIntEqual({id}, ({lhs}) {op} t{id}, {res});",
    # reg imm
    "int t{id} = {lhs}; assertIntEqual({id}, t{id} {op} ({rhs}), {res});",
    # reg reg
    "int t{id} = {lhs}; int x{id} = {rhs}; assertIntEqual({id}, t{id} {op} x{id}, {res});"
]


def generate_integer_expr(ctx: Context):
    expr = []
    for idx in range(integer_expressions):
        expr_type = ctx.random.randrange(0, len(int_expr_fmts))
        op = ctx.random.randrange(0, len(int_op_list))
        lhs = ctx.get_imm()
        rhs = get_imm_typed(ctx, op)
        res = eval_int_expr(lhs, rhs, op)
        # print(res, lhs, rhs, op)
        expr.append(int_expr_fmts[expr_type].format(
            id=idx, lhs=lhs, rhs=rhs, op=int_op_list[op], res=res))

    return expr


fp_op_list = ['+', '-', '*', '/', '<', '>', '<=', '>=', '==', '!=']


def eval_fp_expr(l, r, op):
    lhs = np.float32(l)
    rhs = np.float32(r)
    match op:
        case 0: return lhs + rhs
        case 1: return lhs - rhs
        case 2: return lhs * rhs
        case 3: return lhs / rhs
        case 4: return 1.0 if lhs < rhs else 0.0
        case 5: return 1.0 if lhs > rhs else 0.0
        case 6: return 1.0 if lhs <= rhs else 0.0
        case 7: return 1.0 if lhs >= rhs else 0.0
        case 8: return 1.0 if lhs == rhs else 0.0
        case 9: return 1.0 if lhs != rhs else 0.0


fp_expr_fmts = [
    # imm reg
    "float t{id} = {rhs}; assertFloatEqual({id}, ({lhs}) {op} t{id}, {res});",
    # reg imm
    "float t{id} = {lhs}; assertFloatEqual({id}, t{id} {op} ({rhs}), {res});",
    # reg reg
    "float t{id} = {lhs}; float x{id} = {rhs}; assertFloatEqual({id}, t{id} {op} x{id}, {res});"
]


def generate_fp_expr(ctx: Context):
    expr = []
    for idx in range(fp_expressions):
        expr_type = ctx.random.randrange(0, len(fp_expr_fmts))
        op = ctx.random.randrange(0, len(fp_op_list))
        lhs = ctx.get_fp()
        rhs = ctx.get_fp()
        res = eval_fp_expr(lhs, rhs, op)
        if math.isnan(res):
            continue
        expr.append(fp_expr_fmts[expr_type].format(
            id=idx, lhs=lhs, rhs=rhs, op=fp_op_list[op], res=res))

    return expr


def generate_control_flow_expr(ctx: Context):
    return []


def generate_params():
    ctx = Context()
    params = {
        "int_expr": generate_integer_expr(ctx),
        "fp_expr": generate_fp_expr(ctx),
        "control_flow_expr": generate_control_flow_expr(ctx),
    }
    return params


template: jinja2.Template = environment.get_template("lowering.sy.jinja2")


def codegen_test(id):
    params = generate_params()
    src = os.path.join(output_dir, f"test{id}.sy")
    with open(src, 'w') as f:
        res = template.render(params)
        f.write(res)
    os.system('clang-format -i {}'.format(src))
    runtime = tests_path + "/SysY2022/sylib.c"
    output = src[:-3]+"_cmmc"
    output_path = os.path.dirname(output)
    if not os.path.exists(output_path):
        os.makedirs(output_path)
    output_asm = output + '.s'
    cmmc_command = binary_path + ' -t mips -O 0 -o ' + output_asm + ' ' + src
    out = subprocess.run(cmmc_command.split(), capture_output=True, text=True)
    if out.returncode != 0:
        if test_count == 1:
            print(out.stderr)
        return False
    gcc_command = qemu_gcc_ref_command.replace('-x c++', '') + \
        ' -o {} {} {}'.format(output, runtime, output_asm)
    out = subprocess.run(gcc_command.split(), capture_output=True, text=True)
    if out.returncode != 0:
        if test_count == 1:
            print(out.stderr)
        return False

    out = subprocess.run(
        qemu_command + [output], capture_output=True, text=True)
    if out.returncode != 0:
        if test_count == 1:
            print(out.returncode)
            print(out.stderr)
            print(out.stdout)
        return False

    os.remove(src)
    os.remove(output_asm)
    os.remove(output)
    return True


L = list(range(test_count))
pbar = tqdm.tqdm(L)
error_count = 0

with ThreadPoolExecutor() as p:
    for res in p.map(codegen_test, L):
        error_count += 0 if res else 1
        pbar.update(1)
        pbar.set_description("Failed: {}".format(error_count))
