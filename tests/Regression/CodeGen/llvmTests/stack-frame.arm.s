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
	bx lr
.globl f2
f2:
	mov r0, #1
	bx lr
