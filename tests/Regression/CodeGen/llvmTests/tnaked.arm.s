.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl tnaked
tnaked:
.p2align 4
	bx lr
.globl tnonaked
tnonaked:
.p2align 4
	bx lr
