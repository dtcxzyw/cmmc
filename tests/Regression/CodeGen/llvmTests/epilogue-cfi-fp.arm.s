.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	ldr r1, [sp, #0]
	mov r0, #0
	bx lr
