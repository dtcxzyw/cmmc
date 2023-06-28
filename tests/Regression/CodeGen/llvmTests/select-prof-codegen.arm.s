.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	cmp r0, r1
	movhi r1, r0
	mov r0, r1
	bx lr
