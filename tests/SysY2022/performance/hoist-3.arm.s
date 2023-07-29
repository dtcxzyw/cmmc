.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, lr }
	bl getint
	mov r4, r0
	mov r0, #121
	bl _sysy_starttime
	cmp r4, #0
	bgt label2
	mov r4, #0
	b label10
.p2align 4
label3:
	ands r3, r0, #1
	beq label8
	add r1, r2, r1
	movw r3, #16511
	movt r3, #183
	smmul r3, r1, r3
	asr r4, r3, #22
	add r3, r4, r3, lsr #31
	movw r4, #12033
	movt r4, #22888
	mls r1, r3, r4, r1
.p2align 4
label8:
	lsl r2, r2, #1
	movw r3, #16511
	lsr r0, r0, #1
	movt r3, #183
	cmp r0, #0
	smmul r3, r2, r3
	asr r4, r3, #22
	add r3, r4, r3, lsr #31
	movw r4, #12033
	movt r4, #22888
	mls r2, r3, r4, r2
	bne label3
	mov r4, r1
label10:
	mov r0, #123
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, pc }
label2:
	movw r0, #16511
	movt r0, #183
	smmul r0, r4, r0
	asr r1, r0, #22
	add r0, r1, r0, lsr #31
	movw r1, #12033
	movt r1, #22888
	mls r2, r0, r1, r4
	mov r1, #0
	mov r0, #15
	b label3
