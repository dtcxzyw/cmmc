# uncompyle6 version 3.8.0
# Python bytecode 3.6 (3379)
# Decompiled from: Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)]
# Embedded file name: irsim.py
from __future__ import division
import argparse
import logging
import operator
import os
import re
import signal
import urwid


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

    def load_ir_file(self, filename):
        with open(filename, 'r') as (r):
            lineno = 0
            for line in r:
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
            self.controller.log_error(
                "Cannot find program entrance. Please make sure the 'main' function does exist")
        else:
            if not self.label_check() or self.offset > 262144:
                self.controller.log_error('Loading failed')
            else:
                self.ip = self.mainIp
                self.memory = [0] * 64 * 1024
                self.controller.log_info('File loaded successfully')

    def step(self):
        if self.ip == -1:
            self.pauseRunning = True
            self.ip = self.mainIp
        elif self.ip < 0 or self.ip >= len(self.codeList):
            self.controller.log_warning(
                'Program Counter goes out of bound. The running program will be terminated instantly')
            self.ip = -1
            self.pauseRunning = False
            return
        else:
            code = self.codeList[self.ip]
            error_code = self.execute_code(code)
            if error_code == 1:
                self.controller.log_info('Program has exited gracefully')
                self.controller.log_info(
                    'Total instructions = %d', self.instCount)
                self.controller.console_info(
                    'Total instructions = %d', self.instCount)
                self.ip = -1
                self.pauseRunning = False
            else:
                if error_code == 2:
                    self.controller.log_error(
                        'An error occurred at line %d: Illegal memory access', self.ip + 1)
                    self.controller.console_error(
                        'An error occurred at line %d: Illegal memory access', self.ip + 1)
                    self.ip = -1
                    self.pauseRunning = False
                else:
                    if error_code == 3:
                        self.controller.log_warning(
                            'Program Counter goes out of bound')
                        self.controller.console_warning(
                            'Program Counter goes out of bound')
                        self.pauseRunning = False
                    else:
                        if error_code == 4:
                            self.controller.log_warning(
                                'Invalid input integer literal')
                            self.controller.console_warning(
                                'Invalid input integer literal')
                            self.pauseRunning = False
                        else:
                            self.ip += 1
                            self.controller.highlight_instruction(self.ip)
                            self.controller.update_variables()

    def run(self):
        while True:
            if self.ip < 0 or self.ip >= len(self.codeList):
                error_code = 3
                break
            code = self.codeList[self.ip]
            error_code = self.execute_code(code)
            if error_code > 0:
                break
            self.ip += 1
            self.controller.highlight_instruction(self.ip)
            self.controller.update_variables()

        if error_code == 1:
            self.controller.log_info('Program has exited gracefully')
            self.controller.log_info('Total instructions = %d', self.instCount)
            self.controller.console_info(
                'Total instructions = %d', self.instCount)
        else:
            if error_code == 2:
                self.controller.log_error(
                    'An error occurred at line %d: Illegal memory access', self.ip + 1)
                self.controller.console_error(
                    'An error occurred at line %d: Illegal memory access', self.ip + 1)
                self.controller.console_error(
                    'If this message keeps popping out, please reload the source file')
            else:
                if error_code == 3:
                    self.controller.log_warning(
                        'Program Counter goes out of bound. The running program will be terminated instantly')
                    self.controller.console_warning(
                        'Program Counter goes out of bound')
                elif error_code == 4:
                    self.controller.log_warning(
                        'Invalid input integer literal, program terminates')
                    self.controller.console_warning(
                        'Invalid input integer literal')
        self.ip = -1

    def stop(self):
        self.ip = -1
        self.memory = [0] * 64 * 1024
        self.pauseRunning = False
        self.instCount = 0
        self.callStack = list()
        self.argumentStack = list()

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
            self.controller.log_error(
                'Syntax error at line %d:\n%s', lineno + 1, inst)
        except DuplicatedLabelError:
            self.controller.log_error(
                'Duplicated label %s at line %d:\n%s', tokens[1], lineno + 1, inst)
        except DuplicatedVariableError:
            self.controller.log_error(
                'Duplicated variable %s at line %d:\n%s', tokens[1], lineno + 1, inst)
        except CurrentFunctionNoneError:
            self.controller.log_error(
                'Line %d does not belong to any function:\n%s', lineno + 1, inst)

        return False

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
            self.controller.log_error(
                'Undefined label at line %d: %s', i, inst)
            return False

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
            return 2
        else:
            return 0

    def get_new_addr(self, size):
        self.offset += size
        return self.offset - size


class IRSimView(urwid.WidgetWrap):
    palette = [
        ('bg', 'black', 'dark blue'),
        ('reveal focus', 'black', 'dark cyan', 'standout')]

    class SelectableText(urwid.Edit):

        def valid_char(self, ch):
            return False

    def __init__(self, controller):
        self.controller = controller
        main_window = self.main_window()
        super(IRSimView, self).__init__(main_window)

    def instruction_view(self):
        if not hasattr(self, 'list_instruction'):
            instruction_list = []
            for inst in self.controller.get_instructions():
                st = self.SelectableText('   ' + inst)
                instruction_list.append(st)

            self.list_instruction = urwid.ListBox(
                urwid.SimpleListWalker(instruction_list))
        v = self.list_instruction
        v = urwid.LineBox(v)
        return v

    def button_view(self):

        def on_step(btn):
            self.controller.on_step()

        step = urwid.Button('step', on_step)

        def on_run(btn):
            self.controller.on_run()

        run = urwid.Button('exec', on_run)

        def on_stop(btn):
            self.controller.on_stop()

        stop = urwid.Button('stop', on_stop)
        v = urwid.GridFlow([
            step, run, stop], 8, 2, 0, 'center')
        v.focus_position = 1
        v = urwid.Filler(v)
        return v

    def variable_view(self):
        if not hasattr(self, 'list_variable'):
            variable_list = []
            variables = self.controller.get_variables()
            for variable, value in variables.items():
                value = 'array' if value[2] else 'int'
                text = f"{variable:>4s} | {value}"
                st = self.SelectableText(text)
                variable_list.append(st)

            self.walker = urwid.SimpleListWalker(variable_list)
            self.list_variable = urwid.ListBox(self.walker)
        v = self.list_variable
        v = urwid.LineBox(v)
        return v

    def console_view(self):
        if not hasattr(self, 'txt_console'):
            self.txt_console = urwid.Text('')
        v = urwid.Filler((self.txt_console), valign='top')
        v = urwid.LineBox(v)
        return v

    def input_view(self):
        if not hasattr(self, 'edit_input'):
            self.edit_input = urwid.IntEdit()
        v = urwid.ListBox(urwid.SimpleListWalker([self.edit_input]))
        return v

    def main_window(self):
        self.instructions = self.instruction_view()
        self.buttons = self.button_view()
        self.variables = self.variable_view()
        self.console = self.console_view()
        self.txt_banner = urwid.Text('    SUSTech-CS323 IR-Simulator [#]')
        left = urwid.Pile([
            (
                1, urwid.Filler(urwid.Text('CODE', align='center'))),
            (
                3, self.buttons),
            self.instructions],
            focus_item=1)
        left = urwid.Filler(left, valign='top', height=('relative', 100))
        left = urwid.Padding(left, left=2, right=1)
        right = urwid.Pile([
            (
                1, urwid.Filler(urwid.Text('SYMBOLS', align='center'))),
            self.variables,
            self.console])
        right = urwid.Filler(right, valign='top', height=('relative', 100))
        right = urwid.Padding(right, left=1, right=2)
        w = urwid.Columns([
            left,
            right],
            dividechars=1)
        w = urwid.Pile([
            (
                'pack', self.txt_banner),
            urwid.LineBox(w)])
        w = urwid.Filler(w, height=('relative', 90))
        return w

    def set_filename(self, filepath):
        filename = os.path.basename(filepath)
        banner = self.txt_banner.text
        new_banner = banner.replace('#', filename)
        self.txt_banner.set_text(new_banner)

    def flush_console(self):
        self.txt_console.set_text('')

    def append_console(self, msg, *args):
        txt, _ = self.txt_console.get_text()
        if not txt:
            self.txt_console.set_text(msg % args)
        else:
            new_txt = '%s\n%s' % (txt, msg % args)
            self.txt_console.set_text(new_txt)


class IRSimController:

    def __init__(self, irpath, inputs='', logger=None):
        self._logger = logger
        self.inputs = self.process_inputs(inputs)
        self.model = IRSimModel(self)
        self.model.load_ir_file(irpath)
        self.view = IRSimView(self)
        self.view.set_filename(irpath)
        self.highlight_instruction(self.model.ip)
        self.update_variables()

    def process_inputs(self, inputs):
        elems = []
        for elem in inputs.split(','):
            if len(elem) == 0:
                pass
            else:
                if elem.isdigit() or elem[0] == '-' and elem[1].isdigit():
                    elems.append(int(elem))
                else:
                    if len(elem) == 1:
                        elems.append(elem)
                    else:
                        self.log_debug('unsupported input: %s', elem)

        return elems[::-1]

    def get_instructions(self):
        return self.model.instructionList

    def get_variables(self):
        return self.model.variableDict

    def get_ip(self):
        return self.model.ip

    def on_step(self):
        return self.model.step()

    def on_run(self):
        return self.model.run()

    def on_stop(self):
        return self.model.stop()

    def highlight_instruction(self, ip):
        insts = self.view.list_instruction
        for inst in insts.body:
            new_text = inst.text.replace(' @ ', '   ')
            inst.set_caption(new_text)

        insts.set_focus(ip)
        new_focus, new_index = insts.get_focus()
        text = new_focus.text.replace('   ', ' @ ')
        new_focus.set_caption(text)

    def update_variables(self):
        vars = list(self.model.variableDict.items())
        sym_table = []
        for symbol, (addr, size, is_array) in sorted(vars):
            if addr >= 0:
                raw_value = self.model.memory[addr // 4:(addr + size) // 4]
                sym_table.append((symbol, raw_value))

        sym_widget = []
        for symbol, raw_value in sym_table:
            if len(raw_value) == 1:
                value = str(raw_value[0])
            else:
                value = str(raw_value)
            st = self.view.SelectableText(f"{symbol:>4s} | {value}")
            sym_widget.append(st)

        self.view.walker[:] = sym_widget

    def read_int(self, var):
        val = self.inputs.pop()
        return (val, True)

    def write_int(self, val):
        self.view.append_console('[program output] %d', val)

    def log_debug(self, msg, *args):
        self._logger.debug(msg % args)

    def console_debug(self, msg, *args):
        msg = '[DEBUG] ' + msg
        (self.view.append_console)(msg, *args)

    def log_info(self, msg, *args):
        self._logger.info(msg % args)

    def console_info(self, msg, *args):
        msg = '[INFO] ' + msg
        (self.view.append_console)(msg, *args)

    def log_warning(self, msg, *args):
        self._logger.warning(msg % args)

    def console_warning(self, msg, *args):
        msg = '[WARN] ' + msg
        (self.view.append_console)(msg, *args)

    def log_error(self, msg, *args):
        self._logger.error(msg % args)

    def console_error(self, msg, *args):
        msg = '[ERROR] ' + msg
        (self.view.append_console)(msg, *args)

    @staticmethod
    def exit_on_key(key):
        if key == 'esc':
            raise urwid.ExitMainLoop

    def run(self):
        self.loop = urwid.MainLoop(
            (self.view), (self.view.palette), unhandled_input=(self.exit_on_key))
        self.loop.run()


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('irpath', type=str, help='path to IR code file')
    parser.add_argument('-i', type=str, dest='inputs',
                        default='', help='input int/char seperated by comma')
    parser.add_argument('-l', type=str, dest='logpath',
                        default='irsim.log', help='path to log file')
    return parser.parse_args()


def init_logger(logpath):
    logger = logging.getLogger('irsim')
    logger.setLevel(logging.DEBUG)
    formatter = logging.Formatter(
        '[%(levelname)s] %(asctime)s (%(filename)s %(lineno)s): %(msg)s')
    handler = logging.FileHandler(logpath)
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    return logger


def main():
    args = parse_args()
    logger = init_logger(args.logpath)
    logger.debug('Parsed arguments: %s' % args.__dict__)
    irsim = IRSimController((args.irpath), inputs=(args.inputs), logger=logger)

    def on_interrupt(signum, frame):
        irsim.log_info('KeyboardInterrupt raised, quit program')
        raise urwid.ExitMainLoop

    signal.signal(signal.SIGINT, on_interrupt)
    irsim.run()


main()
# okay decompiling .\irsim.pyc
