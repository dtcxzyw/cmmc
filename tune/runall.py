import paramiko
import sys
import os
import subprocess

# python3 ../tune/runall.py 10.16.226.226 bin/cmmc ../tests/
host = sys.argv[1]
cmmc_bin = sys.argv[2]
# tmp_dir = os.path.dirname(cmmc_bin) + "/tune"
# if os.path.exists(tmp_dir):
#     os.removedirs(tmp_dir)
# os.makedirs(tmp_dir)
test_dir = sys.argv[3]+"/SysY2022/performance/"

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.connect(hostname=host)
sftp = ssh.open_sftp()

def generate_build_cmd(test_case):
    return [cmmc_bin, '-O', '3','-H','-o','/dev/stdout','-t','riscv','--enable-parallel', test_case]

def parse_performance(stderr: str):
    for line in stderr.splitlines():
        if line.startswith('TOTAL:'):
            perf = line.removeprefix('TOTAL: ').split('-')
            used = float(perf[0][:-1]) * 3600 + float(perf[1][:-1]) * 60 + \
                   float(perf[2][:-1]) + float(perf[3][:-2]) * 1e-6
            return used
    print(stderr)
    return 1e10

def run(test_case: str):
    cmd = generate_build_cmd(test_case)
    #print(cmd)
    asm = subprocess.check_output(cmd)
    with sftp.open("prog.s", "w") as f:
        f.write(asm)
    stdin, stdout, stderr = ssh.exec_command("gcc -O3 prog.s sylib.c -o exec")
    stdout.channel.recv_exit_status()
    remote_exec_cmd = "./exec <./tests/SysY2022/performance/{} >/dev/null".format(os.path.basename(test_case).removesuffix(".sy") + '.in')
    #print(remote_exec_cmd)
    stdin, stdout, stderr = ssh.exec_command(remote_exec_cmd)
    perf = parse_performance(stderr.read().decode('utf-8'))
    print(test_case.removeprefix(test_dir), perf)

srcs = []
for r,ds,fs in os.walk(test_dir):
    for f in fs:
        if f.endswith(".sy"):
            srcs.append(os.path.join(r,f))
srcs.sort()
for src in srcs:
    run(src)

sftp.close()
ssh.close()
