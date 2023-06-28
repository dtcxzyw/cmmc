#!/usr/bin/env python3
#!/usr/bin/env python3

import os
import sys
import subprocess

target = sys.argv[1]
asm_path = sys.argv[2]
input_path = sys.argv[3]
output_path = sys.argv[4]
qemu_path = os.environ.get('QEMU_PATH', '')
qemu_command = {
'riscv':'{qemu_path}/qemu-riscv64 -L /usr/riscv64-linux-gnu -cpu rv64,zba=true,zbb=true -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'mips':'{qemu_path}/qemu-mipsel -L /usr/mipsel-linux-gnu -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
'arm': '{qemu_path}/qemu-arm -L /usr/arm-linux-gnueabihf -cpu cortex-a7 -d plugin -plugin {qemu_path}/tests/plugin/libinsn_clock.so -D /dev/stderr'.format(qemu_path=qemu_path).split(),
}[target]
qemu_gcc_ref_command = { 
'riscv': "riscv64-linux-gnu-gcc-11 -x c++ -O2 -DNDEBUG -march=rv64gc -mabi=lp64d -mcmodel=medlow -ffp-contract=on -w ",
'mips': "mipsel-linux-gnu-gcc-10 -x c++ -O2 -DNDEBUG -march=mips32r5 -mhard-float -ffp-contract=on -w ",
'arm': "arm-linux-gnueabihf-gcc-12 -x c++ -O2 -DNDEBUG -march=armv7 -mfpu=vfpv4 -ffp-contract=on -w -no-pie ",
}[target]

tests_path = os.path.abspath(os.path.dirname(__file__)+"/../")
runtime = tests_path + "/SysY2022/sylib.c"
output = asm_path+".out"
gcc_command = qemu_gcc_ref_command.replace('-x c++', '') + \
    ' -o {} {} {}'.format(output, runtime, asm_path)
out = subprocess.run(gcc_command.split(), capture_output=True, text=True)
if out.returncode != 0:
    exit(out.returncode)

with open(input_path, 'r') as f:
    with open(output_path, 'w') as f2:
        out = subprocess.run(qemu_command + [output], stdin=f, stdout=f2, stderr=subprocess.DEVNULL)
        exit(out.returncode)
