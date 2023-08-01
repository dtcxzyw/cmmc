.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl binomial
binomial:
	push { r4 }
	cmp r0, r1
	mov r2, r1
	bhs label2
	mov r0, #0
label7:
	pop { r4 }
	bx lr
label2:
	cmp r2, #0
	bne label3
	mov r0, #1
	b label7
label3:
	cmp r2, #2
	blo label7
	mov r1, r0
	mov r3, #1
label4:
	sub r4, r0, r3
	add r3, r3, #1
	mul r1, r1, r4
	sub r4, r2, #1
	cmp r3, r4
	udiv r1, r1, r3
	bls label4
	mov r0, r1
	b label7
