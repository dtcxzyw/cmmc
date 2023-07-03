.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl sgt
sgt:
	movw r1, #32767
	cmp r0, r1
	mov r0, #5
	mov r1, #7
	movgt r0, r1
	bx lr
.globl slt
slt:
	cmp r0, #7
	mov r0, #0
	movwlt r0, #1
	rsb r0, r0, #4
	bx lr
