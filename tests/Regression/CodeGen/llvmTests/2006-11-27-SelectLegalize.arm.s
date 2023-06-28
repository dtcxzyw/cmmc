.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
