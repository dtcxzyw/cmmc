.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	mov r5, #0
	sub sp, sp, #404
	mov r4, sp
.p2align 4
label2:
	bl getint
	cmp r0, #0
	beq label5
	bl getint
	str r0, [r4, r5, lsl #2]
	add r5, r5, #1
	b label2
label5:
	cmp r5, #0
	beq label23
	mov r0, r5
	mov r1, #0
.p2align 4
label6:
	subs r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	bne label6
label9:
	movw r0, #14933
	add sp, sp, #404
	movt r0, #26546
	smmul r0, r1, r0
	asr r2, r0, #5
	add r0, r2, r0, lsr #31
	mov r2, #79
	mls r0, r0, r2, r1
	pop { r4, r5, pc }
label23:
	mov r1, #0
	b label9
