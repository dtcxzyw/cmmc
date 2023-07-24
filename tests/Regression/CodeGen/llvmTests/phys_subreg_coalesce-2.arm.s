.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl binomial
binomial:
.p2align 4
	push { r4 }
	cmp r0, r1
	mov r2, r1
	bhs label4
	mov r0, #0
label2:
	pop { r4 }
	bx lr
label4:
	cmp r2, #0
	bne label5
	mov r0, #1
	b label2
label5:
	cmp r2, #2
	blo label2
	mov r1, r0
	mov r3, #1
label6:
	sub r4, r0, r3
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	bhs label30
	mov r0, r1
	b label2
label30:
	mov r3, r4
	b label6
