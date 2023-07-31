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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #76
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #20]
	mov r3, r0
	bl getint
	movw r6, #:lower16:a
	str r0, [sp, #24]
	mov r7, r0
	movt r6, #:upper16:a
	ldr r3, [sp, #20]
	mul r1, r3, r0
	str r1, [sp, #16]
	str r6, [sp, #28]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #36]
	bl getarray
	str r0, [sp, #32]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r1, [sp, #32]
	cmp r1, #0
	ble label63
	ldr r1, [sp, #16]
	add r0, r4, r4, lsr #31
	sub r2, r1, #4
	sub r1, r1, #20
	str r2, [sp, #40]
	asr r2, r0, #1
	str r1, [sp, #44]
	movw r1, #:lower16:b
	str r2, [sp, #48]
	movt r1, #:upper16:b
	str r1, [sp, #52]
	mov r1, #0
	str r1, [sp, #56]
	ldr r0, [sp, #36]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #60]
	str r0, [sp, #4]
.p2align 4
label5:
	ldr r2, [sp, #48]
	mov r1, #0
	ldr r0, [sp, #4]
	sub r2, r0, r2
	str r2, [sp, #8]
	ldr r2, [sp, #48]
	add r3, r2, r0
	str r3, [sp, #12]
	ldr r7, [sp, #24]
	mul r0, r7, r0
	str r0, [sp, #64]
	str r1, [sp, #0]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #20]
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
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	add r4, r0, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label507
.p2align 4
label150:
	str r0, [sp, #4]
	b label5
.p2align 4
label113:
	cmp r5, #0
	bge label376
.p2align 4
label22:
	adds r5, r5, #1073741824
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	b label473
.p2align 4
label252:
	mov r7, #1
	mov r8, #0
	b label59
.p2align 4
label281:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	bge label284
.p2align 4
label54:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label55
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label54
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label540
.p2align 4
label507:
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label526
.p2align 4
label376:
	add r4, r4, #1
	cmp r1, r4
	bgt label395
.p2align 4
label26:
	add r2, r2, #1
	ldr r3, [sp, #12]
	cmp r3, r2
	bgt label137
	ldr r0, [sp, #64]
	ldr r1, [sp, #0]
	add r0, r0, r1
	ldr r1, [sp, #52]
	str r5, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r7, [sp, #24]
	add r1, r1, #1
	cmp r7, r1
	ble label28
	str r1, [sp, #0]
	ldr r2, [sp, #48]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #8]
	ldr r3, [sp, #20]
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
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	add r4, r0, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label507
.p2align 4
label17:
	add r5, r5, r6
	cmp r5, #1073741824
	bgt label18
	b label113
.p2align 4
label284:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	bne label464
.p2align 4
label58:
	cmp r5, r6
	movle r5, r6
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label18:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label18
	cmp r5, #0
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label529
.p2align 4
label106:
	mov r6, #0
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
.p2align 4
label508:
	ldr r7, [sp, #60]
	cmp r7, #2
	beq label58
	b label527
.p2align 4
label137:
	ldr r3, [sp, #20]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	bne label474
.p2align 4
label258:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	bge label261
.p2align 4
label45:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label268
.p2align 4
label46:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label45
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label516
.p2align 4
label395:
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
.p2align 4
label529:
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label540:
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label55:
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label54
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label540
.p2align 4
label535:
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label268:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label46
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label45
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label535
.p2align 4
label59:
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
	blt label59
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label261:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label252
	cmp r7, #2
	beq label58
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
.p2align 4
label516:
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label535
.p2align 4
label527:
	ldr r7, [sp, #60]
	cmp r7, #3
	beq label258
	b label533
.p2align 4
label530:
	ldr r7, [sp, #60]
	cmp r7, #1
	beq label252
	b label508
.p2align 4
label533:
	ldr r7, [sp, #60]
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label464:
	ldr r7, [sp, #60]
	cmp r7, #3
	beq label258
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	b label540
.p2align 4
label526:
	ldr r7, [sp, #60]
	cmp r7, #1
	beq label252
	b label508
.p2align 4
label474:
	ldr r7, [sp, #60]
	cmp r7, #4
	beq label281
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label526
.p2align 4
label473:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #24]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label106
	ldr r7, [sp, #24]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #60]
	cmp r7, #0
	beq label17
	b label530
.p2align 4
label28:
	ldr r0, [sp, #4]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label150
	ldr r1, [sp, #16]
	cmp r1, #0
	ble label153
	cmp r1, #4
	ble label156
	ldr r2, [sp, #40]
	cmp r2, #16
	ble label159
	mov r0, #0
.p2align 4
label32:
	ldr r1, [sp, #52]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #28]
	add r2, r6, r0, lsl #2
	add r0, r0, #16
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
	ldr r3, [r1, #28]
	str r3, [r2, #28]
	ldr r3, [r1, #32]
	str r3, [r2, #32]
	ldr r3, [r1, #36]
	str r3, [r2, #36]
	ldr r3, [r1, #40]
	str r3, [r2, #40]
	ldr r3, [r1, #44]
	str r3, [r2, #44]
	ldr r3, [r1, #48]
	str r3, [r2, #48]
	ldr r3, [r1, #52]
	str r3, [r2, #52]
	ldr r3, [r1, #56]
	str r3, [r2, #56]
	ldr r1, [r1, #60]
	str r1, [r2, #60]
	ldr r1, [sp, #44]
	cmp r1, r0
	bgt label32
.p2align 4
label34:
	ldr r1, [sp, #52]
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #0]
	ldr r6, [sp, #28]
	add r2, r6, r0, lsl #2
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #40]
	cmp r2, r0
	bgt label34
.p2align 4
label36:
	ldr r1, [sp, #52]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	ldr r1, [sp, #56]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	bgt label249
	b label63
.p2align 4
label156:
	mov r0, #0
	ldr r1, [sp, #52]
	ldr r1, [r1, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	ldr r1, [sp, #56]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	ble label63
label249:
	mov r1, r0
	str r0, [sp, #56]
	ldr r0, [sp, #36]
	ldr r1, [sp, #56]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #60]
	str r0, [sp, #4]
	b label5
label63:
	mov r0, #116
	bl _sysy_stoptime
	ldr r1, [sp, #16]
	ldr r6, [sp, #28]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #76
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label153:
	ldr r1, [sp, #56]
	add r0, r1, #1
	ldr r1, [sp, #32]
	cmp r1, r0
	bgt label249
	b label63
.p2align 4
label159:
	mov r0, #0
	b label34
