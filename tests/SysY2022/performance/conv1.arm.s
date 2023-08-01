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
	sub sp, sp, #60
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #12]
	mov r3, r0
	bl getint
	str r0, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r7, r0
	mov r0, r6
	bl getarray
	movw r1, #:lower16:kernelid
	movt r1, #:upper16:kernelid
	mov r0, r1
	bl getarray
	str r0, [sp, #4]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r3, [sp, #12]
	add r0, r4, r4, lsr #31
	ldr r7, [sp, #16]
	mul r1, r3, r7
	sub r2, r1, #4
	str r1, [sp, #8]
	sub r1, r1, #20
	str r2, [sp, #20]
	asr r2, r0, #1
	str r1, [sp, #24]
	mov r0, #0
	str r2, [sp, #28]
	str r0, [sp, #32]
	movw r1, #:lower16:kernelid
	movt r1, #:upper16:kernelid
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #36]
	str r0, [sp, #52]
.p2align 4
label4:
	ldr r2, [sp, #28]
	mov r1, #0
	ldr r0, [sp, #52]
	sub r2, r0, r2
	str r2, [sp, #48]
	ldr r2, [sp, #28]
	add r3, r2, r0
	str r3, [sp, #44]
	ldr r7, [sp, #16]
	mul r0, r7, r0
	str r0, [sp, #40]
	str r1, [sp, #0]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #48]
	ldr r3, [sp, #12]
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
	bne label94
	b label93
.p2align 4
label144:
	str r0, [sp, #52]
	b label4
.p2align 4
label94:
	mov r6, #0
	ldr r7, [sp, #36]
	cmp r7, #0
	bne label367
.p2align 4
label17:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label107
.p2align 4
label18:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label18
	cmp r5, #0
	bge label116
.p2align 4
label22:
	adds r5, r5, #1073741824
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
.p2align 4
label390:
	ldr r7, [sp, #36]
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	b label429
.p2align 4
label26:
	add r2, r2, #1
	ldr r3, [sp, #44]
	cmp r3, r2
	ble label27
	ldr r3, [sp, #12]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	orr r6, r2, r0
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	bne label449
.p2align 4
label42:
	cmp r5, r6
	movle r5, r6
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label259
	cmp r7, #4
	beq label282
	b label467
.p2align 4
label429:
	ldr r7, [sp, #36]
	cmp r7, #3
	beq label259
.p2align 4
label448:
	ldr r7, [sp, #36]
	cmp r7, #4
	beq label282
.p2align 4
label467:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
.p2align 4
label482:
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	b label481
label441:
	ldr r7, [sp, #36]
	cmp r7, #2
	beq label42
	b label429
.p2align 4
label56:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label57
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	b label403
.p2align 4
label57:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	b label441
.p2align 4
label367:
	ldr r7, [sp, #36]
	cmp r7, #1
	bne label387
.p2align 4
label250:
	mov r7, #1
	mov r8, #0
.p2align 4
label60:
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
	blt label60
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label259
	cmp r7, #4
	beq label282
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label482
label479:
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	b label490
.p2align 4
label27:
	ldr r0, [sp, #40]
	ldr r1, [sp, #0]
	add r0, r0, r1
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	str r5, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r7, [sp, #16]
	add r1, r1, #1
	cmp r7, r1
	ble label28
	str r1, [sp, #0]
	ldr r2, [sp, #28]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #48]
	ldr r3, [sp, #12]
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
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label259
	cmp r7, #4
	beq label282
	add r4, r0, #1
	cmp r1, r4
	ble label26
	b label479
.p2align 4
label387:
	ldr r7, [sp, #36]
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label259
	cmp r7, #4
	bne label446
.p2align 4
label282:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	b label441
.p2align 4
label28:
	ldr r0, [sp, #52]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label144
	ldr r1, [sp, #8]
	cmp r1, #0
	ble label30
	cmp r1, #4
	ble label157
	ldr r2, [sp, #20]
	cmp r2, #16
	ble label161
	mov r0, #0
	b label36
.p2align 4
label34:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r6, r0, lsl #2
	ldr r3, [r1, #0]
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	bgt label34
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	bgt label38
	b label373
.p2align 4
label36:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r6, r0, lsl #2
	ldr r3, [r1, #0]
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
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label36
	b label34
.p2align 4
label449:
	ldr r7, [sp, #36]
	cmp r7, #3
	bne label468
.p2align 4
label259:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	b label436
label455:
	ldr r7, [sp, #36]
	cmp r7, #3
	beq label259
	b label448
.p2align 4
label47:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label48
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label380
.p2align 4
label48:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	b label455
.p2align 4
label154:
	str r0, [sp, #32]
	movw r1, #:lower16:kernelid
	movt r1, #:upper16:kernelid
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #36]
	str r0, [sp, #52]
	b label4
label31:
	mov r0, #116
	bl _sysy_stoptime
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	ldr r1, [sp, #8]
	mov r0, r1
	mov r1, r6
	bl putarray
	add sp, sp, #60
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label157:
	mov r0, #0
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	ble label245
.p2align 4
label38:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	ldr r1, [r1, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	bgt label38
.p2align 4
label245:
	ldr r0, [sp, #32]
	ldr r1, [sp, #4]
	add r0, r0, #1
	cmp r1, r0
	bgt label154
	b label31
.p2align 4
label93:
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	cmp r7, #2
	beq label42
	cmp r7, #3
	beq label259
	cmp r7, #4
	beq label282
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label479
label436:
	ldr r7, [sp, #36]
	cmp r7, #2
	beq label42
	b label455
.p2align 4
label380:
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label47
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	b label436
.p2align 4
label446:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
label492:
	ldr r7, [sp, #36]
	cmp r7, #2
	beq label42
	b label429
.p2align 4
label403:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label250
	b label441
label490:
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	b label481
.p2align 4
label468:
	ldr r7, [sp, #36]
	cmp r7, #4
	beq label282
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	b label490
.p2align 4
label107:
	cmp r5, #0
	blt label22
.p2align 4
label116:
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #16]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label94
	ldr r7, [sp, #16]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #36]
	cmp r7, #0
	beq label17
	b label390
label481:
	ldr r7, [sp, #36]
	cmp r7, #1
	beq label250
	b label492
label30:
	ldr r0, [sp, #32]
	ldr r1, [sp, #4]
	add r0, r0, #1
	cmp r1, r0
	bgt label154
	b label31
.p2align 4
label373:
	ldr r0, [sp, #32]
	ldr r1, [sp, #4]
	add r0, r0, #1
	cmp r1, r0
	bgt label154
	b label31
label161:
	mov r0, #0
	b label34
