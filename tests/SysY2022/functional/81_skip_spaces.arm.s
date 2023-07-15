.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r5, #0
	sub sp, sp, #404
	mov r4, sp
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
	beq label24
	mov r0, #0
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	b label61
label24:
	mov r0, #0
label9:
	mov r1, #79
	movw r2, #14933
	add sp, sp, #404
	movt r2, #26546
	smmul r2, r0, r2
	asr r3, r2, #5
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	pop { r4, r5, pc }
label61:
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
label6:
	subs r5, r5, #1
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	beq label9
	b label6
