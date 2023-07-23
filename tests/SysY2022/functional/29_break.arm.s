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
label5:
	cmp r1, #50
	beq label7
	add r0, r0, r1
	add r1, r1, #1
	cmp r1, #100
	blt label5
label7:
	bx lr
