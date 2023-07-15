.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r1, #0
	mov r0, r1
	cmp r1, #100
	bge label8
	cmp r1, #50
	bne label7
	add r0, r1, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	b label52
label8:
	mov r0, r1
	bx lr
label57:
	cmp r0, #50
	bne label7
	b label52
label7:
	add r1, r1, r0
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
	add r0, r0, #1
	cmp r0, #100
	bge label8
	cmp r0, #50
	bne label7
label52:
	add r0, r0, #1
	cmp r0, #100
	bge label8
	b label57
