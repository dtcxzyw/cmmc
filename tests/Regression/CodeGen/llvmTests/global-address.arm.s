.arch armv7ve
.data
.align 4
.globl g
g:
	.4byte	0
.align 4
.globl G
G:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	bx lr
