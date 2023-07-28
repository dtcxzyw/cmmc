.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r1, #7
	mov r0, #5
	cmp r0, #100
	bge label13
.p2align 4
label5:
	add r0, r0, #30
	cmp r1, #100
	blt label8
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
.p2align 4
label8:
	add r2, r1, #24
	cmp r2, #100
	blt label9
	add r1, r1, #6
	cmp r1, #100
	blt label11
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
.p2align 4
label11:
	add r1, r1, #6
	cmp r1, #100
	blt label11
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
.p2align 4
label9:
	add r2, r1, #48
	cmp r2, #100
	add r1, r1, #24
	blt label9
	add r1, r1, #6
	cmp r1, #100
	blt label11
	sub r1, r1, #100
	cmp r0, #100
	blt label5
label13:
	mov r0, r1
	bx lr
