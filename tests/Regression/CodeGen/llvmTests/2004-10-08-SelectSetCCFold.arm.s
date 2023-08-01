.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	cmp r0, #0
	beq label10
	mov r0, r1
	b label2
label10:
	cmp r2, r3
	mov r0, #0
	movwlt r0, #1
label2:
	bx lr
