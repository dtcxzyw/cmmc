.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	mov r0, #0
	vmov s0, r0
	bx lr
