.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r1, #7
	mov r0, #5
	cmp r0, #100
	bge label16
	add r0, r0, #30
	cmp r1, #100
	bge label14
	add r2, r1, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
label67:
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	b label67
label14:
	sub r1, r1, #100
	cmp r0, #100
	bge label16
	add r0, r0, #30
	cmp r1, #100
	bge label14
	add r2, r1, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label8
	b label67
label8:
	add r2, r1, #96
	cmp r2, #100
	bge label10
	mov r1, r2
	b label8
label10:
	add r2, r1, #24
	cmp r2, #100
	bge label12
	mov r1, r2
	b label10
label12:
	add r1, r1, #6
	cmp r1, #100
	bge label14
	b label12
label16:
	mov r0, r1
	bx lr
