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
	bge label6
	add r2, r1, #384
	cmp r2, #100
	bge label10
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
label66:
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
	b label66
label6:
	sub r1, r1, #100
	cmp r0, #100
	bge label16
	add r0, r0, #30
	cmp r1, #100
	bge label6
	add r2, r1, #384
	cmp r2, #100
	bge label10
	mov r1, r2
	add r2, r2, #384
	cmp r2, #100
	bge label10
	b label66
label10:
	add r2, r1, #96
	cmp r2, #100
	bge label12
	mov r1, r2
	b label10
label12:
	add r2, r1, #24
	cmp r2, #100
	bge label14
	mov r1, r2
	b label12
label14:
	add r1, r1, #6
	cmp r1, #100
	bge label6
	b label14
label16:
	mov r0, r1
	bx lr
