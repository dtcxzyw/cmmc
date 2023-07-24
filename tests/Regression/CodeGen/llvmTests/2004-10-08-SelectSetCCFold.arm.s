.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	cmp r0, #0
	bne label11
	cmp r2, r3
	mov r0, #0
	movwlt r0, #1
	b label2
label11:
	mov r0, r1
label2:
	bx lr
