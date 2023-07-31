.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
.p2align 4
	push { r4, r5 }
	cmp r0, r1
	mov r2, r1
	beq label9
	mov r1, r0
	mov r0, r2
	rsb r5, r2, #0
	mov r3, r2
	mov r4, #0
	b label5
label29:
	mov r0, r2
label9:
	pop { r4, r5 }
	bx lr
label5:
	mla r2, r5, r4, r1
	cmp r3, r2
	blt label7
	sub r0, r0, r2
	cmp r2, r0
	beq label29
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mov r4, #0
	b label5
label7:
	sub r2, r2, r0
	add r4, r4, #1
	cmp r0, r2
	bne label5
	b label29
