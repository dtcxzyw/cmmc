.arch armv7ve
.data
.align 4
.globl v
v:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	bx lr
