.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	uxtb r0, r0
	mov r1, #37
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
