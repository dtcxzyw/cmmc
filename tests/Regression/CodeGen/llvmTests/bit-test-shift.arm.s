.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl x
x:
	and r0, r0, #256
	cmp r0, #0
	mov r1, #0
	mvn r0, #25
	moveq r0, r1
	bx lr
