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
	mov r0, #324
	bl _sysy_starttime
	bl getint
	cmp r0, #0
	bgt label2
	mov r1, #0
	b label10
.p2align 4
label3:
	ands r3, r0, #1
	beq label8
	add r1, r2, r1
	movw r3, #32769
	movt r3, #32768
	smmla r3, r1, r3, r1
	asr r4, r3, #15
	add r3, r4, r3, lsr #31
	rsb r3, r3, r3, lsl #16
	sub r1, r1, r3
.p2align 4
label8:
	lsl r2, r2, #1
	movw r3, #32769
	lsr r0, r0, #1
	movt r3, #32768
	cmp r0, #0
	smmla r3, r2, r3, r2
	asr r4, r3, #15
	add r3, r4, r3, lsr #31
	rsb r3, r3, r3, lsl #16
	sub r2, r2, r3
	bne label3
label10:
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	mov r0, #0
	pop { r4, pc }
label2:
	movw r1, #32769
	movt r1, #32768
	smmla r1, r0, r1, r0
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	rsb r1, r1, r1, lsl #16
	sub r2, r0, r1
	mov r1, #0
	movw r0, #4950
	b label3
