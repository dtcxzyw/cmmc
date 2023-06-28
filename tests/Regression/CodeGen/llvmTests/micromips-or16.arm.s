.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	orr r0, r0, r1
	bx lr
.globl f2
f2:
	orr r0, r0, r1
	bx lr
