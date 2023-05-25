from __future__ import division
import operator
import re
from typing import List
import random
import calendar
import math
import traceback


class IRSyntaxError(Exception):
    pass


class DuplicatedLabelError(Exception):
    pass


class UndefinedLabelError(Exception):
    pass


class DuplicatedVariableError(Exception):
    pass


class CurrentFunctionNoneError(Exception):
    pass


class IRSimModel:
    def __init__(self, controller):
        self.controller = controller
        self.variableDict = dict()
        self.functionDict = dict()
        self.labelDict = dict()
        self.codeList = list()
        self.instructionList = list()
        self.mainIp = -1
        self.ip = -1
        self.memory = None
        self.offset = 0
        self.pauseRunning = False
        self.instCount = 0
        self.currentFunction = None
        self.callStack = list()
        self.argumentStack = list()
        self.debug = False

    def load_ir_file(self, ir: str):
        if self.debug:
            print(ir)

        lineno = 0
        for line in ir.splitlines():
            inst = re.sub('\\s+', ' ', line.strip())
            if str.isspace(inst):
                pass
            else:
                if self.sanity_check(inst, lineno):
                    self.instructionList.append(inst)
                else:
                    break
            lineno += 1

        if self.mainIp == -1:
            raise RuntimeError(
                "Cannot find program entrance. Please make sure the 'main' function does exist")
        else:
            if not self.label_check() or self.offset > 262144:
                raise RuntimeError('Loading failed')
            else:
                self.ip = self.mainIp
                self.memory = [0] * 64 * 1024

    def run(self) -> int:
        while True:
            if self.ip < 0 or self.ip >= len(self.codeList):
                error_code = 3
                break
            code = self.codeList[self.ip]
            error_code = self.execute_code(code)
            if self.debug:
                for key in self.variableDict.keys():
                    print('{}: {}'.format(key, self.get_value(key)), end=' ')
                print("")

            if error_code > 0:
                break
            self.ip += 1

        if error_code == 1:
            return self.instCount
        else:
            if error_code == 2:
                raise RuntimeError(
                    'An error occurred at line %d: Illegal memory access', self.ip + 1)
            else:
                if error_code == 3:
                    raise RuntimeError(
                        'Program Counter goes out of bound. The running program will be terminated instantly')
                elif error_code == 4:
                    raise RuntimeError(
                        'Invalid input integer literal, program terminates')

    def sanity_check(self, inst, lineno):
        tokens = inst.split()
        relops = ['>', '<', '>=', '<=', '==', '!=']
        arithops = ['+', '-', '*', '/']
        try:
            if len(tokens) == 0:
                self.codeList.append(tuple())
            else:
                if tokens[0] in ('LABEL', 'FUNCTION'):
                    if not (len(tokens) == 3 and tokens[2] == ':'):
                        raise IRSyntaxError
                    else:
                        if tokens[1] in self.labelDict:
                            raise DuplicatedLabelError
                        self.labelDict[tokens[1]] = lineno
                        if tokens[1] == 'main':
                            if tokens[0] == 'LABEL':
                                raise IRSyntaxError
                            self.mainIp = lineno
                        if tokens[0] == 'FUNCTION':
                            self.currentFunction = tokens[1]
                            self.functionDict[tokens[1]] = list()
                    self.codeList.append(('LABEL', tokens[1]))
                else:
                    if self.currentFunction is None:
                        raise CurrentFunctionNoneError
                    if tokens[0] == 'GOTO':
                        if len(tokens) != 2:
                            raise IRSyntaxError
                        self.codeList.append(('GOTO', tokens[1]))
                    else:
                        if tokens[0] in ('RETURN', 'READ', 'WRITE', 'ARG', 'PARAM'):
                            if len(tokens) != 2:
                                raise IRSyntaxError
                            if tokens[0] in ('READ', 'PARAM'):
                                if not tokens[1][0].isalpha():
                                    raise IRSyntaxError
                            self.table_insert(tokens[1])
                            self.codeList.append((tokens[0], tokens[1]))
                        else:
                            if tokens[0] == 'DEC':
                                if len(tokens) != 3 or int(tokens[2]) % 4 != 0:
                                    raise IRSyntaxError
                                if tokens[1] in self.variableDict:
                                    raise DuplicatedVariableError
                                self.table_insert(
                                    tokens[1], int(tokens[2]), True)
                                self.codeList.append('DEC')
                            else:
                                if tokens[0] == 'IF':
                                    if len(tokens) != 6 or tokens[4] != 'GOTO' or tokens[2] not in relops:
                                        raise IRSyntaxError
                                    self.table_insert(tokens[1])
                                    self.table_insert(tokens[3])
                                    self.codeList.append(
                                        ('IF', tokens[1], tokens[2], tokens[3], tokens[5]))
                                else:
                                    if tokens[1] != ':=' or len(tokens) < 3:
                                        raise IRSyntaxError
                                    if tokens[0][0] == '&' or tokens[0][0] == '#':
                                        raise IRSyntaxError
                                    self.table_insert(tokens[0])
                                    if tokens[2] == 'CALL':
                                        if len(tokens) != 4:
                                            raise IRSyntaxError
                                        self.codeList.append(
                                            ('CALL', tokens[0], tokens[3]))
                                    else:
                                        if len(tokens) == 3:
                                            self.table_insert(tokens[2])
                                            self.codeList.append(
                                                ('MOV', tokens[0], tokens[2]))
                                        elif len(tokens) == 5:
                                            if tokens[3] in arithops:
                                                self.table_insert(tokens[2])
                                                self.table_insert(tokens[4])
                                                self.codeList.append(
                                                    ('ARITH', tokens[0], tokens[2], tokens[3], tokens[4]))
                                        else:
                                            raise IRSyntaxError
            return True
        except (IRSyntaxError, ValueError):
            raise RuntimeError(
                'Syntax error at line %d:\n%s', lineno + 1, inst)
        except DuplicatedLabelError:
            raise RuntimeError(
                'Duplicated label %s at line %d:\n%s', tokens[1], lineno + 1, inst)
        except DuplicatedVariableError:
            raise RuntimeError(
                'Duplicated variable %s at line %d:\n%s', tokens[1], lineno + 1, inst)
        except CurrentFunctionNoneError:
            raise RuntimeError(
                'Line %d does not belong to any function:\n%s', lineno + 1, inst)

    def label_check(self):
        try:
            for i, inst in enumerate((self.instructionList), start=1):
                tokens = inst.split()
                if not tokens:
                    continue
                if tokens[0] == 'GOTO':
                    if tokens[1] not in self.labelDict:
                        raise UndefinedLabelError
                elif tokens[0] == 'IF':
                    if tokens[5] not in self.labelDict:
                        raise UndefinedLabelError
                else:
                    if len(tokens) > 2:
                        if tokens[2] == 'CALL':
                            if tokens[3] not in self.labelDict:
                                raise UndefinedLabelError

            return True
        except UndefinedLabelError:
            raise RuntimeError(
                'Undefined label at line %d: %s', i, inst)

    def table_insert(self, var, size=4, array=False):
        if var.isdigit():
            raise IRSyntaxError
        else:
            if var[0] == '&' or var[0] == '*':
                var = var[1:]
            else:
                if var[0] == '#':
                    return
            if var in self.variableDict:
                return
            self.functionDict[self.currentFunction].append(var)
            if self.currentFunction == 'main':
                self.variableDict[var] = (
                    self.offset, size, array)
                self.offset += size
            else:
                self.variableDict[var] = (
                    -1, size, array)

    def get_value(self, var):
        if var[0] == '#':
            return int(var[1:])
        else:
            if var[0] == '&':
                return self.variableDict[var[1:]][0]
            if var[0] == '*':
                ptr = self.variableDict[var[1:]][0] // 4
                addr = self.memory[ptr] // 4
                return self.memory[addr]
            addr = self.variableDict[var][0] // 4
            return self.memory[addr]

    def execute_code(self, code):
        self.instCount += 1
        try:
            if code[0] == 'READ':
                result, ok = self.controller.read_int(code[1])
                if ok:
                    addr = self.variableDict[code[1]][0] // 4
                    self.memory[addr] = result
                else:
                    return 4
            else:
                if code[0] == 'WRITE':
                    output = self.get_value(code[1])
                    self.controller.write_int(output)
                else:
                    if code[0] == 'GOTO':
                        self.ip = self.labelDict[code[1]]
                        if self.debug:
                            print('GOTO', code[1])
                    else:
                        if code[0] == 'IF':
                            value1 = self.get_value(code[1])
                            value2 = self.get_value(code[3])
                            result = {'<': operator.lt,
                                      '<=': operator.le,
                                      '>': operator.gt,
                                      '>=': operator.ge,
                                      '!=': operator.ne,
                                      '==': operator.eq}.get(code[2])(value1, value2)
                            if result:
                                self.ip = self.labelDict[code[4]]
                                if self.debug:
                                    print('GOTO', code[4])
                            else:
                                if self.debug:
                                    print('FALLTHROUGH')
                        else:
                            if code[0] == 'MOV':
                                value = self.get_value(code[2])
                                if code[1][0] == '*':
                                    ptr = self.variableDict[code[1]
                                                            [1:]][0] // 4
                                    addr = self.memory[ptr] // 4
                                    self.memory[addr] = value
                                else:
                                    addr = self.variableDict[code[1]][0] // 4
                                    self.memory[addr] = value
                            else:
                                if code[0] == 'ARITH':
                                    value1 = self.get_value(code[2])
                                    value2 = self.get_value(code[4])
                                    addr = self.variableDict[code[1]][0] // 4
                                    result = {'+': operator.add,
                                              '-': operator.sub,
                                              '*': operator.mul,
                                              '/': operator.ifloordiv}.get(code[3])(value1, value2)
                                    self.memory[addr] = result
                                else:
                                    if code[0] == 'RETURN':
                                        if len(self.callStack) == 0:
                                            return 1
                                        returnValue = self.get_value(code[1])
                                        stackItem = self.callStack.pop()
                                        self.ip = stackItem[0]
                                        for key in stackItem[2].keys():
                                            self.variableDict[key] = stackItem[2][key]

                                        self.offset = stackItem[3]
                                        addr = self.variableDict[stackItem[1]][0] // 4
                                        self.memory[addr] = returnValue

                                        if self.debug:
                                            print("RETURN", returnValue)
                                    else:
                                        if code[0] == 'CALL':
                                            oldAddrs = dict()
                                            oldOffset = self.offset
                                            for key in self.functionDict[code[2]]:
                                                oldAddrs[key] = self.variableDict[key]
                                                self.variableDict[key] = (self.get_new_addr(
                                                    self.variableDict[key][1]), self.variableDict[key][1], self.variableDict[key][2])

                                            self.callStack.append(
                                                (self.ip, code[1], oldAddrs, oldOffset))
                                            self.ip = self.labelDict[code[2]]

                                            if self.debug:
                                                print(
                                                    'CALL', code[2], 'with', self.argumentStack)
                                        else:
                                            if code[0] == 'ARG':
                                                self.argumentStack.append(
                                                    self.get_value(code[1]))
                                            else:
                                                if code[0] == 'PARAM':
                                                    addr = self.variableDict[code[1]][0] // 4
                                                    self.memory[addr] = self.argumentStack.pop(
                                                    )
        except IndexError:
            # print(traceback.format_exc())
            return 2
        else:
            return 0

    def get_new_addr(self, size):
        self.offset += size
        return self.offset - size


class IRSimController:
    def __init__(self, ir, inputs):
        self.inputs = inputs
        self.model = IRSimModel(self)
        self.model.load_ir_file(ir)
        self.output = []

    def run(self):
        return [self.model.run(), self.output]

    def read_int(self, var):
        val = self.inputs.pop(0)
        return (val, True)

    def write_int(self, val):
        self.output.append(val)


def exec(ir: str, inputs: List[int]) -> List[int]:
    src = inputs.copy()
    try:
        irsim = IRSimController(ir, inputs)
        return irsim.run()
    except Exception as e:
        print(src)
        print(e)
        return None


def check(ir: str) -> bool:
    try:
        model = IRSimModel(None)
        model.load_ir_file(ir)
        return True
    except Exception as e:
        print(e)
        return False


if __name__ == "__main__":
    ir = """FUNCTION main :
READ v4
IF v4 <= #0 GOTO label2
LABEL label1 :
WRITE #1
RETURN #0
LABEL label2 :
IF v4 >= #0 GOTO label4
LABEL label3 :
WRITE #-1
RETURN #0
LABEL label4 :
WRITE #0
RETURN #0
"""
    print(exec(ir, inputs=[10]))


def testgen_test_01():
    return [([1], [1]), ([0], [0]), ([-1], [-1]), ([10], [1]), ([-10], [-1])]


def testgen_test_02():
    ret = [([-1], [1]), ([0], [1]), ([1], [1])]
    res = 1
    for idx in range(2, 20):
        res *= idx
        ret.append(([idx], [res]))
    return ret


def testgen_test_03():
    return [([], [3])]


def testgen_test_04():
    return [([], [1, 3])]


def Joseph(n: int, m: int):
    people = [0] * 100
    res = []
    i = 1
    j = k = num = 0
    while i <= n:
        people[i] = 1
        i = i + 1

    i = 1
    while (i <= n):
        if people[i] == 1:
            j = j + people[i]
            if j == m:
                res.append(i)
                j = 0
                people[i] = 0
                k = k + 1

            if k == n:
                num = i
                return res

        if i == n:
            i = 0
        i = i + 1
    return res


def testgen_test_3_b01():
    res = []
    for a in range(1, 20):
        for b in range(1, 20):
            res.append(([a, b], Joseph(a, b)))
    return res


def testgen_test_3_b02():
    res = []
    rng = random.Random(114514)
    for i in range(100):
        inputs = []
        for _ in range(8):
            inputs.append(rng.randint(-100, 100))
        outputs = inputs.copy()
        outputs.sort()
        res.append((inputs, outputs))

    return res


def testgen_test_3_b03():
    return [([], [3875])]


def testgen_test_3_b04():
    return [([], [2, 70])]


def testgen_test_3_r01():
    return [([], [175, 36, 103])]


def testgen_test_3_r02():
    res = []
    for year in [2000, 2100, 2012, 2010]:
        leap = calendar.isleap(year)
        res.append(([year, 1], [31]))
        res.append(([year, 2], [29 if leap else 28]))
        res.append(([year, 4], [30]))

    return res


def testgen_test_3_r03():
    return [([], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29])]


def testgen_test_3_r04():
    res = []
    for i in range(-100, 100):
        res.append(([i], [i, i*i, i*i*i]))
    return res


def testgen_test_3_r05():
    res = [([-1], [0])]
    arr = [0, 1]
    for i in range(50):
        arr.append(arr[i] + arr[i+1])
    for idx, val in enumerate(arr):
        res.append(([idx], [val]))
    return res


def testgen_test_3_r06():
    return [([], [1000003, 1000002, 3000002, 1000003, 2000001, 2000003, 1000003])]


def testgen_test_3_r07():
    res = []
    for i in range(1, 50):
        for j in range(1, 50):
            res.append(([i, j], [math.gcd(i, j), math.gcd(i, j)]))
    return res


def testgen_test_3_r08():
    res = [([-1], [-1])]
    for i in range(1000):
        j = i
        digit_sum = 0
        while j != 0:
            digit_sum += j % 10
            j = j // 10
        res.append(([i], [digit_sum]))
    return res


def testgen_test_3_r09():
    return [([], [370, 371, 407, 3])]


def testgen_test_3_r10():
    return testgen_test_01()


def testgen_fact():
    ret = [([-1], [1]), ([0], [1]), ([1], [1])]
    res = 1
    for idx in range(2, 12):
        res *= idx
        ret.append(([idx], [res]))
    return ret


def testgen_hanoi():
    return [([], [10003, 10002, 30002, 10003, 20001, 20003, 10003])]


def testgen_sign():
    return testgen_test_01()


def testgen_arith():
    return [([], [19])]


def testgen_sort():
    res = []
    rng = random.Random(114514)
    for i in range(100):
        cnt = rng.randint(0, 100)
        inputs = []
        for _ in range(cnt):
            inputs.append(rng.randint(-100, 100))
        outputs = inputs.copy()
        outputs.sort()
        inputs.insert(0, cnt)
        res.append((inputs, outputs))

    return res


def testgen_regalloc():
    return [([1]*16, [10])]


def testgen_gcd():
    res = []
    for i in range(1, 8):
        for j in range(1, 8):
            res.append(([i, j], [math.gcd(i, j)]))
    return res


test_generators = {"test01": testgen_test_01,
                   "test02": testgen_test_02,
                   "test03": testgen_test_03,
                   "test04": testgen_test_04,
                   "test_3_b01": testgen_test_3_b01,
                   "test_3_b02": testgen_test_3_b02,
                   "test_3_b03": testgen_test_3_b03,
                   "test_3_b04": testgen_test_3_b04,
                   "test_3_r01": testgen_test_3_r01,
                   "test_3_r02": testgen_test_3_r02,
                   "test_3_r03": testgen_test_3_r03,
                   "test_3_r04": testgen_test_3_r04,
                   "test_3_r05": testgen_test_3_r05,
                   "test_3_r06": testgen_test_3_r06,
                   "test_3_r07": testgen_test_3_r07,
                   "test_3_r08": testgen_test_3_r08,
                   "test_3_r09": testgen_test_3_r09,
                   "test_3_r10": testgen_test_3_r10,
                   'test_4_fact': testgen_fact,
                   'test_4_r01': testgen_hanoi,
                   'test_4_r02': testgen_sign,
                   'test_4_r03': testgen_arith,
                   'mergesort': testgen_sort,
                   'regalloc': testgen_regalloc,
                   'stackalloc': testgen_sort,
                   'struct': testgen_gcd
                   }
