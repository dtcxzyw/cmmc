.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r0, #0
	mov r1, r0
label2:
	cmp r1, #100
	blt label6
label5:
	bx lr
label6:
	cmp r1, #50
	beq label5
	add r0, r0, r1
	add r1, r1, #1
	b label2
