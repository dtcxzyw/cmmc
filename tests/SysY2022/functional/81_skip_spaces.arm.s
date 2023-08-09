.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[400] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	mov r6, #0
	sub sp, sp, #400
	mov r4, sp
	mov r5, r4
.p2align 4
label2:
	bl getint
	cmp r0, #0
	beq label6
	bl getint
	add r6, r6, #1
	str r0, [r5, #0]
	add r5, r5, #4
	b label2
label6:
	cmp r6, #0
	beq label23
	mov r0, r6
	mov r1, #0
.p2align 4
label7:
	subs r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	bne label7
label10:
	movw r0, #14933
	movt r0, #26546
	add sp, sp, #400
	smmul r0, r1, r0
	asr r2, r0, #5
	add r0, r2, r0, lsr #31
	mov r2, #79
	mls r0, r0, r2, r1
	pop { r4, r5, r6, pc }
label23:
	mov r1, #0
	b label10
