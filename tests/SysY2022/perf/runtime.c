#define _sysy_starttime _sysy_starttime_real
#define _sysy_stoptime _sysy_stoptime_real
#include "../sylib.c"
#undef _sysy_starttime
#undef _sysy_stoptime

#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <signal.h>
#include <fcntl.h>

bool perf_started = false;
bool perf_stopped = false;
int perf_pid = 0;
int ctl_fd = 0;

const char perf_ctl_fifo[] = "/tmp/perf_ctl_fifo";

void _sysy_starttime(int lineno) {
    if(!perf_started) {
        perf_started = true;

        mkfifo(perf_ctl_fifo, 0666);

        int self_pid = getpid();
        perf_pid = fork();
        if(perf_pid == 0) {
            char pid_buffer[16];
            char fifo_arg_buffer[64];
            sprintf(pid_buffer, "%d", self_pid);
            sprintf(fifo_arg_buffer, "fifo:%s", perf_ctl_fifo);

            char *args[] = {
                "perf", "stat",
                "-x", ",",
                "-D", "-1",
                "-e", "task-clock,cycles,instructions,inst_retired,inst_spec,branch-load-misses,branch-loads,iTLB-load-misses",
                "--control", fifo_arg_buffer,
                "--pid", pid_buffer,
                "-o", "perf.txt",
                NULL};
            execve("/usr/bin/perf", args, NULL);
            // unreachable
        }

        ctl_fd = open(perf_ctl_fifo, O_WRONLY);
        write(ctl_fd, "enable\n", 7);
    }

    _sysy_starttime_real(lineno);
}

void _sysy_stoptime(int lineno) {
    _sysy_stoptime_real(lineno);

    if(perf_started && !perf_stopped) {
        perf_stopped = true;

        write(ctl_fd, "disable\n", 8);

        kill(perf_pid, SIGINT);
        waitpid(perf_pid, NULL, 0);

        close(ctl_fd);
        unlink(perf_ctl_fifo);
    }
}
