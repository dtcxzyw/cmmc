.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl binomial
binomial:
	push { r4 }
	cmp r0, r1
	mov r2, r1
	blo label13
	cmp r1, #0
	beq label17
	cmp r1, #2
	blo label2
	mov r1, r0
	mov r3, #1
	sub r4, r0, r3
	mul r1, r0, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	blo label30
	mov r3, r4
	sub r4, r0, r4
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	blo label30
	mov r3, r4
	sub r4, r0, r4
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	blo label30
	mov r3, r4
	sub r4, r0, r4
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	blo label30
	b label47
label13:
	mov r0, #0
label2:
	pop { r4 }
	bx lr
label17:
	mov r0, #1
	b label2
label47:
	mov r3, r4
	sub r4, r0, r4
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	bhs label47
label30:
	mov r0, r1
	b label2
