#!/usr/bin/env python3
import json
import os
import subprocess
import sys

collected_perf_data_path = sys.argv[1]
os.makedirs(os.path.join(collected_perf_data_path), exist_ok=True)


def read_json(file):
    if not os.path.exists(file):
        return {}
    with open(file) as f:
        return json.load(f)


commit_json_file = os.path.join(collected_perf_data_path, 'commits.json')
commits_data = read_json(commit_json_file)

for i in range(16):
    head = f'HEAD~{i}'
    commit_hash = subprocess.check_output(['git', 'rev-parse', head]).decode('utf-8').strip()
    if commit_hash in commits_data:
        break

    commit_time = subprocess.check_output(['git', 'show', '-s', '--format=%ci', head]).decode('utf-8').strip()
    commit_msg = subprocess.check_output(['git', 'show', '-s', '--format=%s', head]).decode('utf-8').strip()
    commit_parent = subprocess.check_output(['git', 'rev-parse', f'HEAD~{i+1}']).decode('utf-8').strip()

    print(f'{commit_parent[:7]} -> {commit_hash[:7]}, {commit_msg}')

    commits_data[commit_hash] = {
        'time': commit_time,
        'message': commit_msg,
        'parent': commit_parent,
    }
else:
    print('WARNING: too many commits at one push')

with open(commit_json_file, 'w') as f:
    json.dump(commits_data, f, indent=2, sort_keys=True)
