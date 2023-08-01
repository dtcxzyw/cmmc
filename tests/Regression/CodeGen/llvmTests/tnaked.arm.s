.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl tnaked
tnaked:
	bx lr
.p2align 4
.globl tnonaked
tnonaked:
	bx lr
