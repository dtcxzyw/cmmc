.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	bx lr
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	bl callee_cmmc_noinline
	bx lr
.globl ret_forwarding
ret_forwarding:
	bl getint
	bl putint
	bx lr
