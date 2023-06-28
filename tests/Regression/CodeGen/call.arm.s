.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee_cmmc_noinline
callee_cmmc_noinline:
	bx lr
.globl caller_cmmc_noinline
caller_cmmc_noinline:
	push { lr }
	sub sp, sp, #4
	bl callee_cmmc_noinline
	add sp, sp, #4
	pop { pc }
.globl ret_forwarding
ret_forwarding:
	push { lr }
	sub sp, sp, #4
	bl getint
	bl putint
	add sp, sp, #4
	pop { pc }
