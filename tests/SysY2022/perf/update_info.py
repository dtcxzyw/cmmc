#!/usr/bin/env python3
import json
import os
import subprocess
import sys

collected_perf_data_path = sys.argv[1]
os.makedirs(os.path.join(collected_perf_data_path, 'data'), exist_ok=True)


def read_json(file):
    if not os.path.exists(file):
        return {}
    with open(file) as f:
        return json.load(f)


commit_hash = subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()
commit_time = subprocess.check_output(['git', 'show', '-s', '--format=%ci', 'HEAD']).decode('utf-8').strip()
commit_msg = subprocess.check_output(['git', 'show', '-s', '--format=%s', 'HEAD']).decode('utf-8').strip()
commit_parent = subprocess.check_output(['git', 'rev-parse', 'HEAD^']).decode('utf-8').strip()

commit_json_file = os.path.join(collected_perf_data_path, 'commits.json')
commits_data = read_json(commit_json_file)
commits_data[commit_hash] = {
    'time': commit_time,
    'message': commit_msg,
    'parent': commit_parent,
}
with open(commit_json_file, 'w') as f:
    json.dump(commits_data, f, indent=2, sort_keys=True)
