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
	blt label5
	b label13
.p2align 4
label7:
	add r1, r1, #24
	cmp r1, #76
	blt label7
	add r1, r1, #6
	cmp r1, #100
	blt label9
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
.p2align 4
label9:
	add r1, r1, #6
	cmp r1, #100
	blt label9
	sub r1, r1, #100
	cmp r0, #100
	blt label5
label13:
	mov r0, r1
	bx lr
.p2align 4
label5:
	add r0, r0, #30
	cmp r1, #100
	blt label6
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
.p2align 4
label6:
	add r2, r1, #24
	cmp r2, #100
	blt label7
	add r1, r1, #6
	cmp r1, #100
	blt label9
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label13
