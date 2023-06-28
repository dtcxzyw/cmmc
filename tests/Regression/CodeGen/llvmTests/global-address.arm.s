.arch armv7ve
.data
.data
.align 4
.globl g
g:
	.4byte	0
.align 4
.globl G
G:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	bx lr
