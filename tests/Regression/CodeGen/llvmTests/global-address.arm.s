.arch armv7ve
.data
.data
.p2align 2
.globl g
g:
	.4byte	0
.p2align 2
.globl G
G:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	bx lr
