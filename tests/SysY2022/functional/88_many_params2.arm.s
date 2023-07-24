.arch armv7ve
.data
.bss
.align 4
b:
	.zero	12508
.align 4
a:
	.zero	16348
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r6, #:lower16:a
	sub sp, sp, #12
	movt r6, #:upper16:a
label2:
.p2align 4
	add r1, r0, #4
	movw r2, #4087
	cmp r1, r2
	bge label5
	add r2, r6, r0, lsl #2
	mov r3, #0
	str r3, [r6, r0, lsl #2]
	mov r0, r1
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	b label2
label5:
	mov r1, #0
	str r1, [r6, r0, lsl #2]
	movw r1, #4087
	add r0, r0, #1
	cmp r0, r1
	blt label5
	movw r0, #:lower16:b
	mov r1, #0
	movt r0, #:upper16:b
label8:
.p2align 4
	add r2, r1, #4
	movw r3, #3127
	cmp r2, r3
	bge label10
	add r3, r0, r1, lsl #2
	mov r4, #0
	str r4, [r0, r1, lsl #2]
	mov r1, r2
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	b label8
label10:
	mov r2, #0
	str r2, [r0, r1, lsl #2]
	movw r2, #3127
	add r1, r1, #1
	cmp r1, r2
	blt label10
	movw r1, #4584
	mov r9, #0
	add r2, r6, r1
	mov r1, #9
	str r1, [r2, #0]
	mov r2, #1
	str r2, [r0, #1420]
	mov r2, #2
	str r2, [r0, #1424]
	mov r2, #3
	str r2, [r0, #1428]
	str r1, [r0, #1452]
	movw r1, #1416
	add r5, r0, r1
	mov r4, r5
	ldr r1, [r0, #1416]
	str r1, [sp, #0]
	movw r1, #8040
	add r1, r0, r1
	ldr r7, [r1, #0]
	movw r1, #12108
	add r0, r0, r1
	ldr r8, [r0, #0]
label13:
.p2align 4
	ldr r0, [r4, r9, lsl #2]
	bl putint
	add r9, r9, #1
	cmp r9, #10
	blt label13
	mov r0, #10
	bl putch
	movw r0, #4584
	add r0, r6, r0
	ldr r0, [r0, #0]
	bl putint
	mov r0, #10
	bl putch
	cmp r8, #10
	blt label85
	ldr r1, [sp, #0]
	add r0, r1, #3
	add r5, r0, r0, lsl #1
	cmn r5, #1
	bgt label18
	b label17
label85:
	mov r6, r8
	mov r0, r7
	b label20
label17:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label18:
.p2align 4
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	sub r5, r5, #1
	cmn r5, #1
	bgt label18
	b label17
label16:
	ldr r1, [sp, #0]
	add r0, r1, #3
	add r5, r0, r0, lsl #1
	cmn r5, #1
	bgt label18
	b label17
label20:
.p2align 4
	add r1, r6, #4
	cmp r1, #10
	blt label26
label23:
	movw r1, #63339
	movw r2, #3724
	movw r3, #18373
	movt r1, #1
	movt r3, #36041
	mul r1, r0, r1
	add r0, r0, #7
	smmla r3, r1, r3, r1
	asr r7, r3, #11
	add r3, r7, r3, lsr #31
	mls r1, r3, r2, r1
	str r1, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #10
	blt label23
	b label16
label26:
	add r2, r5, r6, lsl #2
	movw r7, #63339
	movw r3, #3724
	movw r8, #18373
	movt r7, #1
	movt r8, #36041
	mul r9, r0, r7
	smmla r10, r9, r8, r9
	asr r11, r10, #11
	add r10, r11, r10, lsr #31
	mls r9, r10, r3, r9
	str r9, [r5, r6, lsl #2]
	add r6, r0, #7
	mul r6, r6, r7
	smmla r9, r6, r8, r6
	asr r10, r9, #11
	add r9, r10, r9, lsr #31
	mls r6, r9, r3, r6
	str r6, [r2, #4]
	add r6, r0, #14
	mul r6, r6, r7
	smmla r9, r6, r8, r6
	asr r10, r9, #11
	add r9, r10, r9, lsr #31
	mls r6, r9, r3, r6
	str r6, [r2, #8]
	add r6, r0, #21
	add r0, r0, #28
	mul r6, r6, r7
	smmla r7, r6, r8, r6
	asr r8, r7, #11
	add r7, r8, r7, lsr #31
	mls r3, r7, r3, r6
	mov r6, r1
	str r3, [r2, #12]
	b label20
