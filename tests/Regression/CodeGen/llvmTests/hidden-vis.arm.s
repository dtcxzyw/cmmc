.arch armv7ve
.data
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl t1
t1:
	bx lr
.globl t2
t2:
	bx lr
