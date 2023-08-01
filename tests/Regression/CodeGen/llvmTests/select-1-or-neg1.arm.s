.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl PR28968
PR28968:
	mov r1, #1
	mvn r2, #0
	cmp r0, #1
	mov r0, r2
	moveq r0, r1
	bx lr
