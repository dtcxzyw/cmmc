.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
.p2align 4
	cmp r0, r1
	movhi r1, r0
	mov r0, r1
	bx lr
