.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	and r0, r0, #3
	cmp r0, #1
	mov r0, r2
	moveq r0, r1
	bx lr
