.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #84
	add r4, sp, #40
	bl getint
	str r0, [sp, #32]
	mov r8, r0
	bl getint
	str r0, [sp, #20]
	bl getint
	str r0, [sp, #0]
	mov r8, r0
	bl getint
	mov r5, #0
	str r0, [sp, #16]
	mov r8, r0
.p2align 4
label2:
	bl getint
	str r0, [r4, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #10
	blt label2
	ldr r8, [sp, #32]
	clz r0, r8
	lsr r8, r0, #5
	str r8, [sp, #28]
	ldr r0, [sp, #20]
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	and r0, r8, r0
	ldr r8, [sp, #0]
	cmp r8, #0
	bne label22
label5:
	ldr r1, [sp, #40]
	mov r4, #0
	ldr r2, [sp, #44]
	ldr r7, [sp, #48]
	cmp r7, #0
	str r7, [sp, #4]
	movwne r4, #1
	ldr r3, [sp, #52]
	str r3, [sp, #24]
	ldr r7, [sp, #56]
	clz r3, r3
	lsr r3, r3, #5
	and r4, r3, r4
	mov r5, r7
	str r7, [sp, #8]
	ldr r3, [sp, #60]
	cmp r3, #0
	moveq r5, #0
	cmp r2, #0
	movne r5, r4
	ldr r4, [sp, #64]
	ldr r8, [sp, #16]
	cmp r4, #0
	add r6, r5, r4
	clz r7, r8
	moveq r6, r5
	lsr r7, r7, #5
	cmp r8, #0
	add r5, r6, #1
	add r6, r8, r0
	ldr r8, [sp, #68]
	moveq r6, r0
	add r9, r6, #1
	str r8, [sp, #12]
	cmp r8, #0
	bne label21
	b label77
label22:
	ldr r8, [sp, #0]
	sdiv r1, r0, r8
	mls r0, r1, r8, r0
	b label5
label7:
	ldr r6, [sp, #72]
	ldr r5, [sp, #76]
	cmp r5, #0
	clz r8, r5
	lsr r8, r8, #5
	add r8, r6, r8
	movne r8, r6
	add r10, r8, #1
	ldr r8, [sp, #32]
	sub r11, r10, r8
	ldr r8, [sp, #28]
	cmp r8, #0
	mov r8, r11
	movne r8, r10
	cmp r9, #0
	mul r0, r0, r8
	ldr r8, [sp, #0]
	mov r9, r0
	movne r9, r1
	cmp r7, #0
	clz r0, r8
	ldr r8, [sp, #16]
	lsr r0, r0, #5
	add r8, r8, r0
	mov r7, r8
	movne r7, r0
	adds r7, r7, #1
	bne label9
	b label101
label21:
	ldr r8, [sp, #12]
	sdiv r0, r5, r8
	mls r0, r0, r8, r5
	b label7
label9:
	ldr r0, [sp, #20]
	sdiv r8, r0, r7
	mls r0, r8, r7, r0
label10:
	add r7, r9, r0
	cmp r0, #0
	mov r0, r7
	moveq r0, r9
	cmp r2, #0
	sub r7, r1, r2
	mov r2, r7
	moveq r2, r1
	ldr r7, [sp, #4]
	mla r0, r2, r0, r2
	cmp r7, #0
	bne label20
label12:
	ldr r7, [sp, #8]
	cmp r3, #0
	sub r1, r7, r3
	moveq r1, r7
	cmp r4, #0
	add r1, r1, #1
	bne label19
	b label14
label20:
	ldr r7, [sp, #4]
	sdiv r1, r0, r7
	mls r0, r1, r7, r0
	b label12
label14:
	clz r2, r6
	ldr r8, [sp, #12]
	cmp r6, #0
	lsr r2, r2, #5
	sub r2, r8, r2
	movne r2, r8
	cmp r5, #0
	mul r1, r1, r2
	bne label18
	b label16
label19:
	rsb r2, r4, #0
	sdiv r3, r1, r2
	mls r1, r3, r2, r1
	b label14
label16:
	ldr r8, [sp, #32]
	add r2, r8, r1
	ldr r8, [sp, #28]
	ldr r3, [sp, #24]
	add sp, sp, #84
	cmp r8, #0
	movne r2, r1
	adds r1, r2, #1
	sub r1, r3, r1
	moveq r1, r3
	mul r0, r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label18:
	rsb r2, r5, #0
	sdiv r3, r1, r2
	mls r1, r3, r2, r1
	b label16
label101:
	ldr r0, [sp, #20]
	b label10
label77:
	mov r0, r5
	b label7
