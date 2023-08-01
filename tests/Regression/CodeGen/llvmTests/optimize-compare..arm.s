.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f
f:
	cmp r0, r1
	movhi r1, r0
	mov r0, r1
	bx lr
