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
	bhs label4
	mov r0, #0
	b label2
label34:
	mov r0, #1
label2:
	pop { r4 }
	bx lr
label4:
	cmp r2, #0
	bne label5
	b label34
label5:
	cmp r2, #2
	bhs label23
	b label2
label23:
	mov r3, #1
	mov r1, r0
	sub r4, r0, r3
	mul r1, r0, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	bhs label32
label35:
	mov r0, r1
	b label2
label32:
	mov r3, r4
	sub r4, r0, r4
	mul r1, r1, r4
	add r4, r3, #1
	add r3, r3, #2
	udiv r1, r1, r4
	cmp r2, r3
	bhs label32
	b label35