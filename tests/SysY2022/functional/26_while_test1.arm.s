.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	mov r1, #7
	mov r0, #5
label2:
	cmp r0, #100
	bge label13
.p2align 4
label5:
	add r0, r0, #30
	cmp r1, #100
	bge label20
	add r2, r1, #24
	cmp r2, #100
	bge label25
.p2align 4
label7:
	add r1, r1, #24
	cmp r1, #76
	blt label7
.p2align 4
label9:
	add r1, r1, #6
	cmp r1, #100
	blt label9
.p2align 4
label11:
	sub r1, r1, #100
	cmp r0, #100
	blt label5
label13:
	mov r0, r1
	bx lr
label25:
	add r1, r1, #6
	cmp r1, #100
	blt label9
	b label11
label20:
	sub r1, r1, #100
	b label2
