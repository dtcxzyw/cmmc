#!/usr/bin/env python3

import os
import sys
import yaml
import jinja2
import copy
import typing
from typing import Dict, Any


def generate_from_template(template: Dict[str, Any], params: Dict[str, Any]):
    new_inst = copy.deepcopy(template)
    if 'Instances' in new_inst:
        new_inst.pop('Instances')
    fmt: str = new_inst['Format']
    for key, val in params.items():
        if key == 'Template':
            continue
        pattern = '${}:Template'.format(key)
        if pattern in fmt:
            fmt = fmt.replace(pattern, val)
        else:
            new_inst[key] = val
    new_inst['Format'] = fmt
    return new_inst


def generate_file(template_file: str, output_dir: str, params: Dict[str, Any]):
    environment = jinja2.Environment(
        loader=jinja2.loaders.FileSystemLoader(os.path.dirname(__file__)))
    template: jinja2.Template = environment.get_template(template_file)
    output_file = os.path.join(
        output_dir, template_file.removesuffix('.jinja2'))
    with open(output_file, 'w') as f:
        res = template.render(params)
        f.write(res)
    os.system('clang-format -i {}'.format(output_file))


operand_order = {
    'Dst': 0,
    'Src': 1,
    'Cond': 2,
    'Lhs': 3,
    'Rhs': 4,
    'Rd': 5,
    'Rs': 6,
    'Rs1': 7,
    'Rs2': 8,
    'Tgt': 9,
    'Addr': 10,
    'Imm': 11,
    'Off': 12,
    'Prob': 13,
    'Idx': 14,
    'Op': 15
}


def parse_inst_format(inst):
    fmt: str = inst['Format']
    fmt_list = []
    operands = []
    while '$' in fmt:
        beg = fmt.index('$')
        end = fmt.index(']', beg)+1
        operand_desc = fmt[beg:end]
        if beg != 0:
            fmt_list.append(fmt[:beg])
        fmt = fmt[end:]
        p1 = operand_desc.index(':')
        p2 = operand_desc.index('[')
        operand_name = operand_desc[1:p1]
        operand_class = operand_desc[p1+1:p2]
        operand_flag = operand_desc[p2+1:-1]
        operands.append(
            {'name': operand_name, 'class': operand_class, 'flag': operand_flag})
        fmt_list.append(operand_name)
    if len(fmt) > 0:
        fmt_list.append(fmt)
    operands.sort(key=lambda x: operand_order[x['name']])
    operands_idx = dict()
    for idx, op in enumerate(operands):
        operands_idx[op['name']] = idx
        op['idx'] = idx
    for idx in range(len(fmt_list)):
        val = fmt_list[idx]
        if val in operands_idx:
            fmt_list[idx] = operands_idx[val]

    inst['operands'] = operands
    inst['Format'] = fmt_list
    # print(inst)


if __name__ == "__main__":
    isa_desc_file = sys.argv[1]
    isa_desc = None
    with open(isa_desc_file, 'r') as f:
        isa_desc = yaml.load(f, Loader=yaml.FullLoader)
    output_dir = sys.argv[2]
    os.makedirs(output_dir, exist_ok=True)
    target_name = os.path.basename(isa_desc_file).removesuffix('.yml')
    inst_info: Dict[str, dict] = isa_desc['InstInfo']
    inst_templates = dict()
    insts = dict()
    for name, value in inst_info.items():
        if name.startswith('Instance'):
            template = inst_templates.get(value['Template'])
            for key, val in value.items():
                if key == 'Template':
                    continue
                insts[key] = generate_from_template(template, val)
        else:
            fmt: str = value['Format']
            if fmt.count('Template'):
                inst_templates[name] = value
                if 'Instances' in value:
                    instances: Dict[str, dict] = value['Instances']
                    for inst_name, inst_value in instances.items():
                        insts[inst_name] = generate_from_template(
                            value, inst_value)
            else:
                insts[name] = value
    # print(yaml.dump(insts))
    for inst in insts.values():
        parse_inst_format(inst)
    inst_list = []
    for key, value in insts.items():
        value['name'] = key
        inst_list.append(value)
    params = {
        'target': target_name,
        'insts': inst_list
    }
    generate_file('InstInfoDecl.hpp.jinja2', output_dir, params)
    generate_file('InstInfoImpl.hpp.jinja2', output_dir, params)
