import os
import hashlib
from collections import defaultdict

subdir = ['functional', 'hidden_functional', 'performance']
tests = defaultdict(list)

for d in subdir:
    files = sorted(os.listdir(d))
    for file in files:
        file = os.path.join(d, file)
        key, ext = file.split('.', 1)
        if ext in ['in', 'out', 'sy', 'sy.ir']:
            tests[key].append(file)

print(tests)
hashes = {}

for key, files in tests.items():
    h = hashlib.sha3_512()
    for file in files:
        with open(file, 'rb') as f:
            h.update(f.read())
        h.update(b'1234567890')  # divider
    hash = h.hexdigest()

    if hash in hashes:
        print(f'Duplicated: {hashes[hash]} {key}')
    else:
        hashes[hash] = key
