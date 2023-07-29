#!/usr/bin/env python3

import os
import sys
import yaml
import jinja2
import copy
import typing
from typing import Dict, Any

comment_sep = '#'

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
    operands_idx = dict()
    for idx, op in enumerate(operands):
        operands_idx[op['name']] = idx
        op['idx'] = idx
    for idx in range(len(fmt_list)):
        val = fmt_list[idx]
        if val in operands_idx:
            fmt_list[idx] = operands_idx[val]

    inst['operands'] = operands
    comment_list = []
    for idx, fmt in enumerate(fmt_list):
        if isinstance(fmt, str) and comment_sep in fmt:
            # workaround for sw
            if fmt.startswith(')'):
                comment_list = [ fmt.removeprefix(')')] + fmt_list[idx+1:]
                fmt_list = fmt_list[:idx] + [')']
            else:
                comment_list = fmt_list[idx:]
                fmt_list = fmt_list[:idx]
            break
        
    inst['Format'] = fmt_list
    inst['Comment'] = comment_list
    # print(inst)


def load_inst_info(isa_desc_file: str):
    isa_desc = None
    with open(isa_desc_file, 'r') as f:
        isa_desc = yaml.load(f, Loader=yaml.FullLoader)

    target_name = os.path.basename(isa_desc_file).removesuffix('.yml')
    if target_name == 'ARM':
        global comment_sep
        comment_sep = '@'
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
    branches = []
    for name, inst in insts.items():
        flags = inst.get('Flag')
        if flags and ('Branch' in flags):
            idx_map = dict()
            for operand in inst['operands']:
                idx_map[operand['name']] = operand['idx']
            branches.append(
                {'inst': name, 'target': idx_map['Tgt'], 'prob': -1 if 'NoFallthrough' in flags else idx_map['Prob']})
    return target_name, insts, branches


def load_isel_info(isa_desc_file: str):
    isa_desc = None
    with open(isa_desc_file, 'r') as f:
        isa_desc = yaml.load(f, Loader=yaml.FullLoader)
    isel_info = isa_desc['InstSelection']
    return isel_info


global_idx = 0


def get_id():
    global global_idx
    global_idx += 1
    return global_idx


def handle_new_ops(code: str, map, new_ops):
    while True:
        pos = code.find('[$')
        if pos == -1:
            return code
        end = code.find(']', pos)
        name = code[pos+1:end]
        new_id = get_id()
        code = code.replace(code[pos:end+1], 'op'+str(new_id))
        map[name] = new_id
        new_ops.append(new_id)


def replace_operand(code: str, map):
    for k, v in map.items():
        code = code.replace(k, 'op'+str(v))
    return code


def parse_isel_pattern_match(pattern: dict, root_id, insts, match_info: list, match_insts: set, operand_map: dict):
    assert len(pattern) == 1
    for inst, sub in pattern.items():
        match_insts.add(inst)
        inst_info = insts[inst]
        local_map = dict()
        capture_list = []
        lookup_list = []
        for operand in inst_info['operands']:
            idx = get_id()
            local_map[operand['name']] = idx
            capture_list.append(idx)
        match_info.append(
            {"type": "match_inst", "root": root_id, "inst": inst, "capture_list": capture_list, "lookup_list": lookup_list})
        if sub:
            for k, v in sub.items():
                if k == '$Predicate':
                    new_ops = []
                    v = handle_new_ops(v, operand_map, new_ops)
                    match_info.append(
                        {'type': 'predicate', 'code': replace_operand(v, operand_map), 'new_ops': new_ops})
                elif k == '$Capture':
                    operand_map[v] = local_map[k]
                elif isinstance(v, str):
                    assert v.startswith('$')
                    operand_map[v] = local_map[k]
                elif isinstance(v, dict):
                    lookup_list.append(local_map[k])
                    parse_isel_pattern_match(
                        v, local_map[k], insts, match_info,  match_insts, operand_map)
                else:
                    raise RuntimeError("Unrecognized DAG")


def parse_isel_pattern_select(rep, insts, select_info: list, operand_map: dict, used_as_operand: bool = False):
    if isinstance(rep, str):
        idx = get_id()
        select_info.append(
            {'type': 'custom', 'code': replace_operand(rep, operand_map), 'idx': idx})
        return idx

    assert len(rep) == 1
    for inst, sub in rep.items():
        local_map = dict()
        inst_ref = inst
        if sub:
            for k, v in sub.items():
                if k == '$Opcode':
                    inst = replace_operand(v, operand_map)
                elif k == '$Template':
                    inst_ref = v
                else:
                    local_map[k] = parse_isel_pattern_select(
                        v, insts, select_info, operand_map, True)
        inst_info = insts[inst_ref]
        operands = []
        for operand in inst_info['operands']:
            operands.append(local_map[operand['name']])
        idx = get_id()
        select_info.append(
            {'type': 'select_inst', 'inst': inst, 'inst_ref': inst_ref, 'operands': operands, 'idx': idx, 'used_as_operand': used_as_operand})
        return idx


def has_reg_def(inst_info):
    for operand in inst_info['operands']:
        if operand['flag'] == 'Def':
            return True
    return False


def parse_isel_pattern(pattern, insts, match_insts):
    p = pattern['Pattern']
    r = pattern['Replace']

    if '$Instances' in p:
        instances = p['$Instances']
        ret = []
        template = p['$Template']
        p.pop('$Template')
        p.pop('$Instances')
        for inst in instances:
            p[inst] = template
            ret.append(parse_isel_pattern(pattern, insts, match_insts))
            p.pop(inst)
        return ret

    pattern_info = dict()
    match_info = list()
    select_info = list()
    operand_map = dict()
    root_id = get_id()
    parse_isel_pattern_match(p, root_id, insts, match_info,
                             match_insts, operand_map)
    pattern_info['match_id'] = root_id
    pattern_info['match_inst'] = match_info[0]['inst']
    pattern_info['match_list'] = match_info
    pattern_info['replace_id'] = parse_isel_pattern_select(
        r, insts, select_info, operand_map)
    pattern_info['select_list'] = select_info
    pattern_info['replace_operand'] = has_reg_def(
        insts[match_info[0]['inst']]) and has_reg_def(insts[select_info[-1]['inst_ref']])

    return pattern_info


def load_schedule_info(isa_desc_file):
    isa_desc = None
    with open(isa_desc_file, 'r') as f:
        isa_desc = yaml.load(f, Loader=yaml.FullLoader)
    models: dict = isa_desc['ScheduleModel']
    models_info = []
    for name, info in models.items():
        models_info.append({'name': name, 'class_name': name.replace('-', '_'), 'peephole': info.get(
            'CustomPeepholeOpt', False), 'post_peephole':  info.get('CustomPostPeepholeOpt', False), 'classes': info.get('Classes', dict())})
    return models_info


if __name__ == "__main__":
    target_name, insts, branch_list = load_inst_info(sys.argv[1])
    output_dir = sys.argv[2]
    os.makedirs(output_dir, exist_ok=True)
    inst_list = []
    for key, value in insts.items():
        value['name'] = key
        inst_list.append(value)
    params = {
        'target': target_name,
        'insts': inst_list,
        'branches': branch_list
    }
    generate_file('InstInfoDecl.hpp.jinja2', output_dir, params)
    generate_file('InstInfoImpl.hpp.jinja2', output_dir, params)

    # Instruction Selection
    if target_name == "Generic":
        exit(0)

    models = load_schedule_info(sys.argv[1])
    params = {
        'target': target_name,
        'models': models
    }
    generate_file('ScheduleModelDecl.hpp.jinja2', output_dir, params)
    generate_file('ScheduleModelImpl.hpp.jinja2', output_dir, params)

    _, generic_insts, _ = load_inst_info(sys.argv[1].removesuffix(
        target_name+'/'+target_name+'.yml')+'Generic/Generic.yml')
    for key, value in generic_insts.items():
        insts['Inst'+key] = value

    isel_patterns = load_isel_info(sys.argv[1])
    isel_patterns_info = []
    match_insts = set()
    for pattern in isel_patterns:
        ret = parse_isel_pattern(pattern, insts, match_insts)
        if isinstance(ret, list):
            for parsed_pattern in ret:
                isel_patterns_info.append(parsed_pattern)
        else:
            isel_patterns_info.append(ret)

    isel_patterns_map = dict()
    for pattern in isel_patterns_info:
        key = pattern['match_inst']
        arr = isel_patterns_map.get(key, [])
        arr.append(pattern)
        isel_patterns_map[key] = arr

    params = {
        'target': target_name,
        'isel_patterns': isel_patterns_map,
        'match_insts': match_insts,
        'inst_map': insts
    }
    generate_file('ISelInfoDecl.hpp.jinja2', output_dir, params)
    generate_file('ISelInfoImpl.hpp.jinja2', output_dir, params)
