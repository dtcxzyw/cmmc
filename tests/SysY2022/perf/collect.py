#!/usr/bin/env python3
import csv
import json
import os
import subprocess
import sys
from collections import defaultdict

raw_perf_data_path = sys.argv[1]
collected_perf_data_path = sys.argv[2]
target = sys.argv[3]
os.makedirs(os.path.join(collected_perf_data_path, target, 'data'), exist_ok=True)
os.makedirs(os.path.join(collected_perf_data_path, target, 'summaries'), exist_ok=True)


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

dataset = {}

events = ['branch-load-misses:u', 'branch-loads:u', 'cycles:u', 'iTLB-load-misses:u', 'inst_retired:u', 'inst_spec:u', 'instructions:u', 'task-clock:u']
def is_full_event(data):
    return all(event in data for event in events)

for file in os.listdir(raw_perf_data_path):
    if not file.endswith('.0.csv'):
        continue
    # file is of format "{name}_perf.{target}.{i}.csv"
    name, target = file.removesuffix('.0.csv').split('_perf.')

    perf_data = []
    for i in range(5):
        piece = load_perf_data(os.path.join(raw_perf_data_path, f'{name}_perf.{target}.{i}.csv'))
        perf_data.append(piece)

    data_file = os.path.join(collected_perf_data_path, target, 'data', f'{name}_perf.json')
    data = read_json(data_file)
    if 'gcc' in target:
        data['gcc'] = perf_data
    else:
        data['data'] = data.get('data', {})  # init empty
        data['data'][commit_hash] = perf_data
    with open(data_file, 'w') as f:
        json.dump(data, f, indent=2, sort_keys=True)

    dataset[name] = perf_data


with open(os.path.join(collected_perf_data_path, target, 'summary.json')) as f:
    summary = json.load(f)

summary['previous'] = summary['current']
summary['previous_commit'] = summary['current_commit']
summary['current'] = dataset
summary['current_commit'] = commit_hash

with open(os.path.join(collected_perf_data_path, target, 'summary.json'), 'w') as f:
    json.dump(summary, f, indent=2, sort_keys=True)
with open(os.path.join(collected_perf_data_path, target, 'summaries', f'summary_{commit_hash[:7]}.json'), 'w') as f:
    json.dump(summary, f, indent=2, sort_keys=True)
