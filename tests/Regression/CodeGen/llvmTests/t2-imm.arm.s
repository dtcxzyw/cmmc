.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f6
f6:
	movw r0, #1123
	movt r0, #1000
	bx lr
