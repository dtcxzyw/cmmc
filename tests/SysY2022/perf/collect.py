#!/usr/bin/env python3
import csv
import json
import os
import subprocess
import sys
from collections import defaultdict

raw_perf_data_path = sys.argv[1]
collected_perf_data_path = sys.argv[2]
os.makedirs(os.path.join(collected_perf_data_path, 'data'), exist_ok=True)


def read_json(file):
    if not os.path.exists(file):
        return {}
    with open(file) as f:
        return json.load(f)

def load_perf_data(file):
    data = {}
    with open(file) as f:
        # column format: value(float),unit,name,_,_,explain1,explain2
        reader = csv.reader(f)
        for row in reader:
            try:
                value, _, name, _, _, explain1, explain2 = row
                if value != '<not counted>':
                    if '.' in value:
                        data[name] = float(value)
                    else:
                        data[name] = int(value)
            except ValueError:
                pass
    return data


commit_hash = subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()


for file in os.listdir(raw_perf_data_path):
    if not file.endswith('.csv'):
        continue
    # file is of format "{name}_perf.{target}.csv"
    name, target = file.removesuffix('.csv').split('_perf.')

    perf_data = load_perf_data(os.path.join(raw_perf_data_path, file))

    data_file = os.path.join(collected_perf_data_path, 'data', f'{name}_perf.json')
    data = read_json(data_file)
    data[target] = data.get(target, {})
    if 'gcc' in target:
        data[target] = perf_data
    else:    
        data[target][commit_hash] = perf_data
    with open(data_file, 'w') as f:
        json.dump(data, f, indent=2, sort_keys=True)
