.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl PR28968
PR28968:
	cmp r0, #1
	mov r1, #1
	mvn r0, #0
	moveq r0, r1
	bx lr
