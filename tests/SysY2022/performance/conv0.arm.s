.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #16]
	mov r3, r0
	bl getint
	movw r6, #:lower16:a
	str r0, [sp, #20]
	mov r7, r0
	movt r6, #:upper16:a
	ldr r3, [sp, #16]
	mul r1, r3, r0
	str r1, [sp, #12]
	str r6, [sp, #24]
	mov r0, r6
	bl getarray
	movw r1, #:lower16:kernelid
	movt r1, #:upper16:kernelid
	str r1, [sp, #32]
	mov r0, r1
	bl getarray
	str r0, [sp, #28]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r1, [sp, #28]
	cmp r1, #0
	ble label60
	ldr r1, [sp, #12]
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #0
	sub r1, r1, #8
	str r1, [sp, #36]
	movw r1, #:lower16:b
	str r2, [sp, #40]
	movt r1, #:upper16:b
	str r1, [sp, #44]
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #4]
.p2align 4
label5:
	ldr r2, [sp, #40]
	mov r1, #0
	ldr r0, [sp, #4]
	sub r2, r0, r2
	str r2, [sp, #8]
	ldr r2, [sp, #40]
	add r3, r2, r0
	str r3, [sp, #60]
	ldr r7, [sp, #20]
	mul r0, r7, r0
	str r0, [sp, #56]
	str r1, [sp, #0]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #16]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label100
.p2align 4
label131:
	str r0, [sp, #4]
	b label5
.p2align 4
label101:
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	b label367
label324:
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label347
.p2align 4
label20:
	add r2, r2, #1
	ldr r3, [sp, #60]
	cmp r3, r2
	ble label21
	ldr r3, [sp, #16]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label348
.p2align 4
label32:
	cmp r5, r6
	movle r5, r6
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label330
.p2align 4
label53:
	add r5, r5, r6
	cmp r5, #1073741824
	bgt label58
	b label54
.p2align 4
label56:
	adds r5, r5, #1073741824
	blt label56
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label342
.p2align 4
label58:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label58
	cmp r5, #0
	blt label56
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label324
.p2align 4
label348:
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	bne label391
.p2align 4
label187:
	mov r7, #1
	mov r8, #0
.p2align 4
label50:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	add r8, r8, #1
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	sub r9, r9, r10
	clz r9, r9
	lsr r9, r9, #5
	sub r8, r8, r9
	blt label50
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label440
.p2align 4
label21:
	ldr r0, [sp, #56]
	ldr r1, [sp, #0]
	add r0, r0, r1
	ldr r1, [sp, #44]
	str r5, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r7, [sp, #20]
	add r1, r1, #1
	cmp r7, r1
	bgt label126
	ldr r0, [sp, #4]
	ldr r3, [sp, #16]
	add r0, r0, #1
	cmp r3, r0
	bgt label131
	ldr r1, [sp, #12]
	cmp r1, #0
	ble label29
	cmp r1, #8
	ble label137
	mov r0, #0
	b label27
.p2align 4
label25:
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #24]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
.p2align 4
label147:
	ldr r0, [sp, #48]
	ldr r1, [sp, #28]
	add r0, r0, #1
	cmp r1, r0
	bgt label184
	b label60
.p2align 4
label27:
	ldr r1, [sp, #44]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #24]
	add r2, r6, r0, lsl #2
	add r0, r0, #8
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ldr r3, [r1, #16]
	str r3, [r2, #16]
	ldr r3, [r1, #20]
	str r3, [r2, #20]
	ldr r3, [r1, #24]
	str r3, [r2, #24]
	ldr r1, [r1, #28]
	str r1, [r2, #28]
	ldr r1, [sp, #36]
	cmp r1, r0
	bgt label27
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
	b label327
.p2align 4
label184:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #4]
	b label5
label440:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label439
.p2align 4
label194:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label37
	b label197
.p2align 4
label342:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label440
label417:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label194
	b label410
.p2align 4
label37:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label38
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label333
.p2align 4
label38:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label37
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	b label417
label437:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label448
.p2align 4
label126:
	str r1, [sp, #0]
	ldr r2, [sp, #40]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #16]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	add r4, r0, #1
	cmp r1, r4
	ble label20
	b label437
.p2align 4
label330:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	b label425
.p2align 4
label367:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label194
	cmp r7, #4
	bne label408
.p2align 4
label217:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label46
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label381
.p2align 4
label46:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label49
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label46
	b label338
.p2align 4
label49:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label46
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label381
.p2align 4
label100:
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label437
label448:
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label439
.p2align 4
label391:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label32
	cmp r7, #3
	beq label194
	cmp r7, #4
	beq label217
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label448
label376:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label187
	b label397
.p2align 4
label333:
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label37
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label376
.p2align 4
label408:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	cmp r7, #1
	beq label187
label450:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label32
	b label390
label381:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	b label390
.p2align 4
label338:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label381
label54:
	cmp r5, #0
	blt label56
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label324
label390:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label194
label410:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label217
label425:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label20
	b label440
label439:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label187
	b label450
label29:
	ldr r0, [sp, #48]
	ldr r1, [sp, #28]
	add r0, r0, #1
	cmp r1, r0
	bgt label184
	b label60
label137:
	mov r0, #0
	ldr r1, [sp, #44]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #24]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #12]
	add r0, r0, #1
	cmp r1, r0
	bgt label25
	b label147
label60:
	mov r0, #116
	bl _sysy_stoptime
	ldr r1, [sp, #12]
	ldr r6, [sp, #24]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label347:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label187
	cmp r7, #2
	beq label32
	b label390
label197:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label20
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #20]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label53
	b label376
label327:
	ldr r0, [sp, #48]
	ldr r1, [sp, #28]
	add r0, r0, #1
	cmp r1, r0
	bgt label184
	b label60
label397:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label32
	b label417
