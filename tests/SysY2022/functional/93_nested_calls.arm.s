.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #84
	mov r5, sp
	bl getint
	str r0, [sp, #44]
	mov r8, r0
	bl getint
	str r0, [sp, #56]
	bl getint
	mov r4, r0
	bl getint
	mov r6, #0
	str r0, [sp, #60]
	mov r8, r0
label2:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #10
	bge label4
	b label2
label4:
	ldr r8, [sp, #44]
	clz r0, r8
	lsr r8, r0, #5
	str r8, [sp, #48]
	ldr r0, [sp, #56]
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	cmp r4, #0
	and r0, r8, r0
	beq label5
	b label42
label5:
	ldr r1, [sp, #0]
	mov r6, #0
	ldr r2, [r5, #4]
	ldr r7, [r5, #8]
	cmp r7, #0
	str r7, [sp, #68]
	movwne r6, #1
	ldr r3, [r5, #12]
	str r3, [sp, #52]
	ldr r7, [r5, #16]
	clz r3, r3
	lsr r3, r3, #5
	and r3, r3, r6
	mov r6, #0
	str r7, [sp, #64]
	ldr r8, [r5, #20]
	cmp r8, #0
	str r8, [sp, #72]
	moveq r7, r6
	cmp r2, #0
	mov r6, r7
	movne r6, r3
	ldr r3, [r5, #24]
	ldr r8, [sp, #60]
	add r7, r6, r3
	cmp r3, #0
	add r9, r8, r0
	moveq r7, r6
	cmp r8, #0
	add r6, r7, #1
	clz r7, r8
	mov r8, r9
	lsr r7, r7, #5
	moveq r8, r0
	add r9, r8, #1
	ldr r8, [r5, #28]
	cmp r8, #0
	str r8, [sp, #40]
	beq label78
	b label77
label78:
	mov r0, r6
label8:
	ldr r6, [r5, #32]
	ldr r5, [r5, #36]
	cmp r5, #0
	clz r8, r5
	lsr r8, r8, #5
	add r8, r6, r8
	movne r8, r6
	add r10, r8, #1
	ldr r8, [sp, #44]
	sub r11, r10, r8
	ldr r8, [sp, #48]
	cmp r8, #0
	mov r8, r11
	movne r8, r10
	cmp r9, #0
	mul r0, r0, r8
	ldr r8, [sp, #60]
	mov r9, r0
	movne r9, r1
	cmp r7, #0
	clz r0, r4
	lsr r0, r0, #5
	add r4, r8, r0
	movne r4, r0
	adds r4, r4, #1
	beq label103
	b label102
label103:
	ldr r0, [sp, #56]
label10:
	add r4, r9, r0
	cmp r0, #0
	ldr r7, [sp, #68]
	mov r0, r4
	moveq r0, r9
	cmp r2, #0
	sub r4, r1, r2
	mov r2, r4
	moveq r2, r1
	cmp r7, #0
	mla r0, r2, r0, r2
	beq label12
	sdiv r1, r0, r7
	mls r0, r1, r7, r0
	ldr r7, [sp, #64]
	ldr r8, [sp, #72]
	cmp r8, #0
	sub r1, r7, r8
	moveq r1, r7
	cmp r3, #0
	add r1, r1, #1
	beq label14
	b label121
label12:
	ldr r7, [sp, #64]
	ldr r8, [sp, #72]
	cmp r8, #0
	sub r1, r7, r8
	moveq r1, r7
	cmp r3, #0
	add r1, r1, #1
	beq label14
	b label121
label14:
	clz r2, r6
	ldr r8, [sp, #40]
	cmp r6, #0
	lsr r2, r2, #5
	sub r2, r8, r2
	movne r2, r8
	cmp r5, #0
	mul r1, r1, r2
	beq label16
	b label184
label16:
	ldr r8, [sp, #44]
	add r2, r8, r1
	ldr r8, [sp, #48]
	ldr r3, [sp, #52]
	add sp, sp, #84
	cmp r8, #0
	movne r2, r1
	adds r1, r2, #1
	sub r1, r3, r1
	moveq r1, r3
	mul r0, r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label121:
	rsb r2, r3, #0
	sdiv r3, r1, r2
	mls r1, r3, r2, r1
	clz r2, r6
	ldr r8, [sp, #40]
	cmp r6, #0
	lsr r2, r2, #5
	sub r2, r8, r2
	movne r2, r8
	cmp r5, #0
	mul r1, r1, r2
	beq label16
label184:
	rsb r2, r5, #0
	sdiv r3, r1, r2
	mls r1, r3, r2, r1
	b label16
label42:
	sdiv r1, r0, r4
	mls r0, r1, r4, r0
	b label5
label102:
	ldr r0, [sp, #56]
	sdiv r7, r0, r4
	mls r0, r7, r4, r0
	b label10
label77:
	ldr r8, [sp, #40]
	sdiv r0, r6, r8
	mls r0, r0, r8, r6
	b label8
