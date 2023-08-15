import optuna
import paramiko
import sys
import os
import subprocess

# python3 ../tune/tune.py 10.16.226.226 bin/cmmc ../tests/SysY2022/performance/00_bitset1.sy 10
host = sys.argv[1]
cmmc_bin = sys.argv[2]
# tmp_dir = os.path.dirname(cmmc_bin) + "/tune"
# if os.path.exists(tmp_dir):
#     os.removedirs(tmp_dir)
# os.makedirs(tmp_dir)
test_case = sys.argv[3]
trail = int(sys.argv[4])

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.connect(hostname=host)
sftp = ssh.open_sftp()

class TuneOpt:
    def __init__(self, trail:optuna.Trial):
        self.str = ""
        self.trail = trail
    def generate_build_cmd(self):
        return [cmmc_bin, '-O', '3','-H','-o','/dev/stdout','-t','riscv','--enable-parallel','--tune={}'.format(self.str), test_case]
    def key(self):
        return self.str
    def add_pass(self, name):
        choice = self.trail.suggest_int(name, 0, 1)
        self.str +="{} {} ".format(name, choice)
    def add_param(self, name, minv, maxv):
        v = self.trail.suggest_int(name, minv, maxv)
        self.str +="{} {} ".format(name, v)
    def add_select(self, name, choices):
        v = self.trail.suggest_categorical(name, choices)
        self.str +="{} {} ".format(name, v)

def parse_performance(stderr: str):
    for line in stderr.splitlines():
        if line.startswith('TOTAL:'):
            perf = line.removeprefix('TOTAL: ').split('-')
            used = float(perf[0][:-1]) * 3600 + float(perf[1][:-1]) * 60 + \
                   float(perf[2][:-1]) + float(perf[3][:-2]) * 1e-6
            return used
    return 1e10

cache = dict()
stage = 0
max_stages = 5
fixed = ""

def objective_func(trail: optuna.Trial):
    global cache

    opt = TuneOpt(trail)
    opt.str = fixed
    if stage == 0:
        pass # baseline
    if stage == 1:
        opt.add_pass("loop_parallel")
    if stage == 2:
        opt.add_pass("loop_extract")
        opt.add_pass("loop_unroll")
        opt.add_pass("dyn_loop_unroll")
    if stage == 3:
        opt.add_select("unroll_block_size", [2, 4, 8, 16])
        opt.add_select("max_unroll_body_size", [8, 16, 24, 32, 48, 64, 96, 128])
    if stage == 4:
        opt.add_param("max_constant_hoist_count", 0, 16)
    # opt.add_param("duplication_threshold", 2, 20)
    # opt.add_param("duplication_iterations", 0, 20)
    # opt.add_param("branch_limit", 0, 1000)
    # opt.add_param("branch_prediction_warmup_threshold", 0, 32)
    # opt.add_param("max_mul_constant_cost", 1, 5)

    k = opt.key()
    if k in cache:
        #print("hit cache", k)
        return cache[k]

    cmd = opt.generate_build_cmd()
    #print(cmd)
    asm = subprocess.check_output(cmd)
    hash_asm = str(hash(asm))
    if hash_asm in cache:
        cache[k] = cache[hash_asm]
        return cache[hash_asm]

    with sftp.open("prog.s", "w") as f:
        f.write(asm)
    stdin, stdout, stderr = ssh.exec_command("gcc -O3 prog.s sylib.c -o exec")
    stdout.channel.recv_exit_status()
    remote_exec_cmd = "./exec <./tests/SysY2022/performance/{} >/dev/null".format(os.path.basename(test_case).removesuffix(".sy") + '.in')
    #print(remote_exec_cmd)
    stdin, stdout, stderr = ssh.exec_command(remote_exec_cmd)
    perf = parse_performance(stderr.read().decode('utf-8'))
    cache[k] = perf
    cache[hash_asm] = perf
    return perf

best = 1e10
baseline = 0
for i in range(max_stages):
    print("stage", i)
    stage = i
    study = optuna.create_study()
    study.optimize(objective_func, n_trials=trail if i > 0 else 1, show_progress_bar=True)
    if i == 0:
        baseline = study.best_value
        continue

    print("Best value: {} (params: {})\n".format(study.best_value, study.best_params))
    final_str = ""
    for k, v in study.best_params.items():
        final_str += "{} {} ".format(k,v)
    #print(final_str)
    if study.best_value < best:
        best = study.best_value
        fixed = fixed + final_str

print("final: ", fixed)
print("baseline: ", baseline)
print("best: ", best)
print("improvement: {:.2f}%".format((baseline - best) / baseline * 100))

sftp.close()
ssh.close()
