.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r1, #0
	mov r2, r1
label2:
.p2align 4
	add r0, r1, r2
	cmp r1, #50
	add r1, r1, #1
	moveq r0, r2
	mov r2, #51
	moveq r1, r2
	cmp r1, #100
	bge label5
	mov r2, r0
	b label2
label5:
	bx lr
