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
	bne label4
	cmp r5, #0
	bne label24
	b label45
.p2align 4
label4:
	bl getint
	str r0, [r4, r5, lsl #2]
	add r5, r5, #1
	b label2
label24:
	mov r1, #0
.p2align 4
label6:
	subs r0, r5, #1
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	bne label33
	mov r0, r1
	b label9
label33:
	mov r5, r0
	b label6
.p2align 4
label45:
	mov r0, #0
label9:
	movw r1, #14933
	add sp, sp, #404
	movt r1, #26546
	smmul r1, r0, r1
	asr r2, r1, #5
	add r1, r2, r1, lsr #31
	mov r2, #79
	mls r0, r1, r2, r0
	pop { r4, r5, pc }
