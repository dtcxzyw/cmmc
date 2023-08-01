.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl PR28968
PR28968:
	mvn r1, #0
	cmp r0, #1
	mov r0, r1
	moveq r0, #1
	bx lr
