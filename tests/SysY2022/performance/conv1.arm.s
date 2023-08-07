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
	mov r5, r0
	bl getint
	str r0, [sp, #16]
	mov r3, r0
	bl getint
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	str r0, [sp, #20]
	mov r7, r0
	mov r0, r6
	bl getarray
	movw r4, #:lower16:kernelid
	movt r4, #:upper16:kernelid
	mov r0, r4
	bl getarray
	str r0, [sp, #8]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r3, [sp, #16]
	mov r1, r4
	add r0, r5, r5, lsr #31
	ldr r7, [sp, #20]
	mul r2, r3, r7
	sub r3, r2, #4
	str r2, [sp, #12]
	sub r2, r2, #20
	str r3, [sp, #24]
	str r2, [sp, #28]
	asr r2, r0, #1
	mov r0, #0
	str r2, [sp, #32]
	str r4, [sp, #36]
	str r0, [sp, #40]
	ldr r7, [r4, #0]
	str r7, [sp, #44]
	str r0, [sp, #4]
.p2align 4
label5:
	ldr r2, [sp, #32]
	mov r1, #0
	ldr r0, [sp, #4]
	sub r2, r0, r2
	str r2, [sp, #56]
	ldr r2, [sp, #32]
	add r3, r2, r0
	str r3, [sp, #52]
	ldr r7, [sp, #20]
	mul r0, r7, r0
	str r0, [sp, #48]
	str r1, [sp, #0]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #56]
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
	bne label103
	b label102
.p2align 4
label148:
	str r0, [sp, #4]
	b label5
.p2align 4
label103:
	mov r6, #0
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	b label399
.p2align 4
label17:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label111
.p2align 4
label18:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label18
	cmp r5, #0
	bge label120
.p2align 4
label22:
	adds r5, r5, #1073741824
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label130
.p2align 4
label466:
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
.p2align 4
label479:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	b label478
.p2align 4
label26:
	add r2, r2, #1
	ldr r3, [sp, #52]
	cmp r3, r2
	bgt label135
	ldr r0, [sp, #48]
	ldr r1, [sp, #0]
	add r1, r0, r1
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	str r5, [r0, r1, lsl #2]
	ldr r1, [sp, #0]
	ldr r7, [sp, #20]
	add r1, r1, #1
	cmp r7, r1
	ble label28
	str r1, [sp, #0]
	mov r5, #0
	ldr r2, [sp, #32]
	sub r0, r1, r2
	mov r4, r0
	add r1, r2, r1
	ldr r2, [sp, #56]
	ldr r3, [sp, #16]
	orr r6, r2, r0
	cmp r3, r2
	lsr r6, r6, #31
	mov r3, #0
	and r6, r6, #1
	movwle r3, #1
	cmp r7, r0
	orr r6, r3, r6
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	b label436
.p2align 4
label54:
	cmp r5, r6
	add r4, r4, #1
	movle r5, r6
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	b label466
.p2align 4
label28:
	ldr r0, [sp, #4]
	ldr r3, [sp, #16]
	add r0, r0, #1
	cmp r3, r0
	bgt label148
	ldr r2, [sp, #12]
	cmp r2, #0
	ble label49
	cmp r2, #4
	ble label31
	ldr r3, [sp, #24]
	cmp r3, #16
	ble label169
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
.p2align 4
label44:
	ldr r3, [r0, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r2, r6, r1, lsl #2
	add r1, r1, #16
	str r3, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r3, [r0, #16]
	str r3, [r2, #16]
	ldr r3, [r0, #20]
	str r3, [r2, #20]
	ldr r3, [r0, #24]
	str r3, [r2, #24]
	ldr r3, [r0, #28]
	str r3, [r2, #28]
	ldr r3, [r0, #32]
	str r3, [r2, #32]
	ldr r3, [r0, #36]
	str r3, [r2, #36]
	ldr r3, [r0, #40]
	str r3, [r2, #40]
	ldr r3, [r0, #44]
	str r3, [r2, #44]
	ldr r3, [r0, #48]
	str r3, [r2, #48]
	ldr r3, [r0, #52]
	str r3, [r2, #52]
	ldr r3, [r0, #56]
	str r3, [r2, #56]
	ldr r3, [r0, #60]
	str r3, [r2, #60]
	ldr r2, [sp, #28]
	cmp r2, r1
	ble label242
	add r0, r0, #64
	b label44
.p2align 4
label436:
	ldr r7, [sp, #44]
	cmp r7, #1
	bne label452
.p2align 4
label256:
	mov r7, #1
	mov r8, #0
	b label70
.p2align 4
label265:
	mov r7, #1
	mov r8, #0
	b label56
.p2align 4
label70:
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
	blt label70
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label479
.p2align 4
label56:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label271
.p2align 4
label59:
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
label459:
	ldr r7, [sp, #44]
	cmp r7, #3
	beq label265
	b label450
.p2align 4
label271:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label59
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label56
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	b label459
label486:
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	b label478
.p2align 4
label135:
	ldr r3, [sp, #16]
	mov r4, r0
	orr r6, r2, r0
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r7, r0
	orr r6, r3, r6
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	mov r5, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label486
.p2align 4
label130:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
.p2align 4
label401:
	ldr r7, [sp, #44]
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
.p2align 4
label434:
	ldr r7, [sp, #44]
	cmp r7, #3
	beq label265
.p2align 4
label450:
	ldr r7, [sp, #44]
	cmp r7, #4
	bne label466
.p2align 4
label288:
	mov r7, #1
	mov r8, #0
.p2align 4
label64:
	sdiv r9, r5, r7
	lsl r8, r8, #1
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label69
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label64
	b label299
.p2align 4
label69:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r8, r9
	blt label64
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	b label445
.p2align 4
label399:
	ldr r7, [sp, #44]
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
.p2align 4
label478:
	ldr r7, [sp, #44]
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	b label434
.p2align 4
label102:
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label477
.p2align 4
label299:
	mov r5, r8
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label256
label445:
	ldr r7, [sp, #44]
	cmp r7, #2
	beq label54
	b label434
label477:
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label486
.p2align 4
label452:
	ldr r7, [sp, #44]
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label265
	cmp r7, #4
	beq label288
	mov r5, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label477
.p2align 4
label111:
	cmp r5, #0
	blt label22
.p2align 4
label120:
	add r4, r4, #1
	cmp r1, r4
	ble label26
	orr r6, r2, r4
	ldr r7, [sp, #20]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #20]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #44]
	cmp r7, #0
	beq label17
	b label401
label31:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
.p2align 4
label32:
	ldr r2, [r0, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	str r2, [r6, r1, lsl #2]
	ldr r2, [sp, #12]
	add r1, r1, #1
	cmp r2, r1
	ble label164
.p2align 4
label35:
	add r0, r0, #4
	b label32
.p2align 4
label40:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r0, r0, r1, lsl #2
	ldr r2, [r0, #0]
	str r2, [r6, r1, lsl #2]
	ldr r2, [sp, #12]
	add r1, r1, #1
	cmp r2, r1
	bgt label35
	ldr r0, [sp, #40]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	bgt label50
	b label51
.p2align 4
label164:
	ldr r0, [sp, #40]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	ble label51
.p2align 4
label50:
	ldr r1, [sp, #36]
	add r1, r1, #4
	str r1, [sp, #36]
	str r0, [sp, #40]
	mov r0, #0
	ldr r7, [r1, #0]
	str r7, [sp, #44]
	str r0, [sp, #4]
	b label5
label49:
	ldr r0, [sp, #40]
	ldr r1, [sp, #8]
	add r0, r0, #1
	cmp r1, r0
	bgt label50
label51:
	mov r0, #116
	bl _sysy_stoptime
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	ldr r2, [sp, #12]
	mov r0, r2
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label242:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	add r0, r0, r1, lsl #2
.p2align 4
label37:
	ldr r3, [r0, #0]
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	add r2, r6, r1, lsl #2
	add r1, r1, #4
	str r3, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r3, [sp, #24]
	cmp r3, r1
	ble label40
	add r0, r0, #16
	b label37
label169:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r1, #0
	b label37
