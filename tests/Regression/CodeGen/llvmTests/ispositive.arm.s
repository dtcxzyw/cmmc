.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	cmp r0, #0
	mov r0, #0
	movwlt r0, #1
	bx lr
