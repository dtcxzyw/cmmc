.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	mov r2, #0
	mov r0, #51
	mov r3, r2
.p2align 4
label2:
	add r1, r2, r3
	cmp r2, #50
	add r2, r2, #1
	moveq r1, r3
	moveq r2, r0
	cmp r2, #100
	bge label5
	mov r3, r1
	b label2
label5:
	mov r0, r1
	bx lr
