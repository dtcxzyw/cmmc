.arch armv7ve
.data
.data
.p2align 2
.globl a
a:
	.4byte	0
.bss
.p2align 2
.globl b
b:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t1
t1:
	bx lr
.p2align 4
.globl t2
t2:
	bx lr
