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
	bge label16
label5:
.p2align 4
	add r0, r0, #30
	cmp r1, #100
	blt label6
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label16
label6:
.p2align 4
	add r2, r1, #384
	cmp r2, #100
	blt label29
	add r2, r1, #96
	cmp r2, #100
	blt label34
	add r2, r1, #24
	cmp r2, #100
	blt label39
	add r1, r1, #6
	cmp r1, #100
	blt label12
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label16
label29:
.p2align 4
	mov r1, r2
	b label6
label8:
.p2align 4
	add r2, r1, #96
	cmp r2, #100
	blt label34
	add r2, r1, #24
	cmp r2, #100
	blt label39
	add r1, r1, #6
	cmp r1, #100
	blt label12
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label16
label34:
.p2align 4
	mov r1, r2
	b label8
label10:
.p2align 4
	add r2, r1, #24
	cmp r2, #100
	blt label39
	add r1, r1, #6
	cmp r1, #100
	blt label12
	sub r1, r1, #100
	cmp r0, #100
	blt label5
	b label16
label39:
.p2align 4
	mov r1, r2
	b label10
label12:
.p2align 4
	add r1, r1, #6
	cmp r1, #100
	blt label12
	sub r1, r1, #100
	cmp r0, #100
	blt label5
label16:
	mov r0, r1
	bx lr
