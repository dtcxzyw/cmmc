.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	push { r4, r5 }
	cmp r0, r1
	mov r2, r1
	beq label2
	mov r1, r0
	mov r0, r2
	rsb r5, r2, #0
	mov r3, r2
	mov r4, #0
	mla r2, r5, r4, r1
	cmp r3, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	b label73
label69:
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mov r4, #0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
label73:
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	b label69
label9:
	sub r2, r2, r0
	add r4, r4, #1
	cmp r0, r2
	beq label30
	mla r2, r5, r4, r1
	cmp r3, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mov r4, #0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	mov r1, r2
	rsb r5, r0, #0
	mov r3, r0
	mla r2, r5, r4, r2
	cmp r0, r2
	blt label9
	sub r0, r0, r2
	cmp r2, r0
	beq label30
	b label69
label2:
	pop { r4, r5 }
	bx lr
label30:
	mov r0, r2
	b label2
