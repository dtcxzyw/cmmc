.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r0, #0
	mov r1, r0
	cmp r0, #100
	bge label7
	cmp r0, #50
	bne label6
	b label7
label6:
	add r0, r0, r1
	add r1, r1, #1
	cmp r1, #100
	bge label7
	cmp r1, #50
	bne label6
label7:
	bx lr
