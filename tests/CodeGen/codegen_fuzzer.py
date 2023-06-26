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

target = sys.argv[2]
qemu_path = os.environ.get('QEMU_PATH', '')
qemu_command = {
'riscv':'{qemu_path}/qemu-riscv64 -L /usr/riscv64-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'mips':'{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'arm': '{qemu_path}/qemu-arm -L /usr/arm-linux-gnueabihf -cpu cortex-a7 -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
}[target]
qemu_gcc_ref_command = { 
'riscv': "riscv64-linux-gnu-gcc-11 -x c++ -O2 -DNDEBUG -march=rv64gc -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ",
'mips': "mipsel-linux-gnu-gcc-10 -x c++ -O2 -DNDEBUG -march=mips32r5 -mhard-float -ffp-contract=on -w ",
'arm': "arm-linux-gnueabihf-gcc-12 -x c++ -O2 -DNDEBUG -march=armv7 -mfpu=vfpv4 -ffp-contract=on -w -no-pie ",
}[target]
binary_path = sys.argv[1]
test_count = int(sys.argv[3])
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
        rhs = ctx.get_fp() if ctx.random.randint(0,1) == 1 else lhs
        res = eval_fp_expr(lhs, rhs, op)
        if math.isnan(res):
            continue
        expr.append(fp_expr_fmts[expr_type].format(
            id=idx, lhs=lhs, rhs=rhs, op=fp_op_list[op], res=res))

    return expr

int_control_flow_fmts = [
"reportTest({id}); int t{id} = {rhs}; if(({lhs}) {op} t{id}) reportResult({res}); else reportResult(1^{res});",
"reportTest({id}); int t{id} = {lhs}, x{id} = {rhs}; if(t{id} {op} x{id}) reportResult({res}); else reportResult(1^{res});",
"reportTest({id}); int t{id} = {lhs}; if(t{id} {op} {rhs}) reportResult({res}); else reportResult(1^{res});",
]

def generate_integer_control_flow(ctx: Context):
    expr = []
    for idx in range(integer_expressions):
        expr_type = ctx.random.randrange(0, len(int_control_flow_fmts))
        op = ctx.random.randrange(10, len(int_op_list))
        lhs = ctx.get_imm()
        rhs = ctx.get_imm() if ctx.random.randint(0,1) == 1 else lhs
        res = eval_int_expr(lhs, rhs, op)
        # print(res, lhs, rhs, op)
        expr.append(int_control_flow_fmts[expr_type].format(
            id=idx, lhs=lhs, rhs=rhs, op=int_op_list[op], res=res))
    return expr

fp_control_flow_fmts = [
"reportTest({id}); float t{id} = {rhs}; if(({lhs}) {op} t{id}) reportResult({res}); else reportResult(1^{res});",
"reportTest({id}); float t{id} = {lhs}, x{id} = {rhs}; if(t{id} {op} x{id}) reportResult({res}); else reportResult(1^{res});",
"reportTest({id}); float t{id} = {lhs}; if(t{id} {op} {rhs}) reportResult({res}); else reportResult(1^{res});",
]

def generate_fp_control_flow(ctx: Context):
    expr = []
    for idx in range(fp_expressions):
        expr_type = ctx.random.randrange(0, len(fp_control_flow_fmts))
        op = ctx.random.randrange(4, len(fp_op_list))
        lhs = ctx.get_fp()
        rhs = ctx.get_fp() if ctx.random.randint(0,1) == 1 else lhs
        res = int(eval_fp_expr(lhs, rhs, op))
        # print(res, lhs, rhs, op)
        expr.append(fp_control_flow_fmts[expr_type].format(
            id=idx, lhs=lhs, rhs=rhs, op=fp_op_list[op], res=res))
    return expr

select_expr_flow_fmts = [
"{cmp_type} t{id} = {rhs}; {select_type} v1{id} = {v1}, v2{id} = {v2}; if(({lhs}) {op} t{id}) assert{Select_type}Equal({id}, (({lhs}) {op} t{id})?v1{id}:v2{id}, {res});",
"{cmp_type} t{id} = {lhs}, x{id} = {rhs}; {select_type} v1{id} = {v1}, v2{id} = {v2};  assert{Select_type}Equal({id}, (t{id} {op} x{id}) ?v1{id}:v2{id}, {res});",
"{cmp_type} t{id} = {lhs}; {select_type} v1{id} = {v1}, v2{id} = {v2}; assert{Select_type}Equal({id}, (t{id} {op} {rhs})?v1{id}:v2{id}, {res});",
]

def generate_select_expr(ctx: Context):
    expr = []
    for idx in range(integer_expressions+fp_expressions):
        op = ctx.random.randrange(0, 6)
        cmp_type = ["int","float"][ctx.random.randrange(0,2)]
        select_type = ["int","float"][ctx.random.randrange(0,2)]
        expr_type = ctx.random.randrange(0, len(select_expr_flow_fmts))
        if cmp_type == "int":
            lhs = ctx.get_imm()
            rhs = ctx.get_imm()
            op += 10
            op_str = int_op_list[op]
        else:
            lhs = ctx.get_fp()
            rhs = ctx.get_fp()
            op += 4
            op_str = fp_op_list[op]
        if ctx.random.randint(0,1) ==1:
            rhs = lhs
        if cmp_type == "int":
            res = eval_int_expr(lhs, rhs, op)
        else:
            res = int(eval_fp_expr(lhs,rhs,op))
            
        if select_type == "int":
            v1 = ctx.get_imm()
            v2 = ctx.get_imm()
        else:
            v1 = ctx.get_fp()
            v2 = ctx.get_fp()
        val = v1 if res == 1 else v2
        if math.isnan(val):
            continue
        # print(res, lhs, rhs, op)
        expr.append(select_expr_flow_fmts[expr_type].format(
            id=idx,cmp_type=cmp_type,select_type = select_type,Select_type = select_type.capitalize(), lhs=lhs, rhs=rhs, op=op_str, res=val,v1=v1,v2=v2))
    return expr

def generate_params():
    ctx = Context()
    params = {
        "int_expr": generate_integer_expr(ctx),
        "fp_expr": generate_fp_expr(ctx),
        "int_cf": generate_integer_control_flow(ctx),
        "fp_cf": generate_fp_control_flow(ctx),
        "select": generate_select_expr(ctx)
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
    cmmc_command = binary_path + ' -t {} -O {} -o '.format(target,optimization_level) + output_asm + ' ' + src
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
