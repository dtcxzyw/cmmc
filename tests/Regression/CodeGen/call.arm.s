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
	sub sp, sp, #8
	str lr, [sp, #0]
	bl callee_cmmc_noinline
	ldr lr, [sp, #0]
	add sp, sp, #8
	bx lr
.globl ret_forwarding
ret_forwarding:
	sub sp, sp, #8
	str lr, [sp, #0]
	bl getint
	bl putint
	ldr lr, [sp, #0]
	add sp, sp, #8
	bx lr
