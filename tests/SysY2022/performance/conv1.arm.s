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
	str r0, [sp, #44]
	mov r3, r0
	bl getint
	str r0, [sp, #36]
	mov r6, r0
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	str r6, [sp, #28]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #48]
	bl getarray
	str r0, [sp, #20]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r1, [sp, #20]
	cmp r1, #0
	bgt label2
	b label65
.p2align 4
label29:
	ldr r1, [sp, #56]
	cmp r1, #0
	bgt label30
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #20]
	cmp r1, r0
	bgt label251
label65:
	mov r0, #116
	bl _sysy_stoptime
	ldr r3, [sp, #44]
	ldr r6, [sp, #36]
	mul r0, r3, r6
	ldr r6, [sp, #28]
	mov r1, r6
	bl putarray
	add sp, sp, #76
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label30:
	ldr r1, [sp, #56]
	cmp r1, #4
	bgt label33
	mov r0, #0
	ldr r2, [sp, #12]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #56]
	add r0, r0, #1
	cmp r1, r0
	bgt label31
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #20]
	cmp r1, r0
	bgt label251
	b label65
.p2align 4
label404:
	mov r0, #0
	b label34
.p2align 4
label31:
	ldr r2, [sp, #12]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #56]
	add r0, r0, #1
	cmp r1, r0
	bgt label31
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #20]
	cmp r1, r0
	bgt label251
	b label65
.p2align 4
label33:
	ldr r2, [sp, #52]
	cmp r2, #16
	bgt label172
	b label404
.p2align 4
label34:
	ldr r2, [sp, #12]
	ldr r3, [r2, r0, lsl #2]
	add r1, r2, r0, lsl #2
	ldr r6, [sp, #28]
	str r3, [r6, r0, lsl #2]
	add r2, r6, r0, lsl #2
	ldr r3, [r1, #4]
	add r0, r0, #4
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #52]
	cmp r2, r0
	bgt label34
	ldr r2, [sp, #12]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #56]
	add r0, r0, #1
	cmp r1, r0
	bgt label31
	ldr r1, [sp, #8]
	add r0, r1, #1
	ldr r1, [sp, #20]
	cmp r1, r0
	ble label65
label251:
	mov r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #48]
	ldr r1, [sp, #8]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #4]
	str r0, [sp, #24]
.p2align 4
label5:
	ldr r2, [sp, #64]
	mov r1, #0
	ldr r0, [sp, #24]
	sub r2, r0, r2
	str r2, [sp, #32]
	ldr r2, [sp, #64]
	add r3, r2, r0
	str r3, [sp, #40]
	ldr r6, [sp, #36]
	mul r0, r6, r0
	str r0, [sp, #0]
	str r1, [sp, #16]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #32]
	ldr r3, [sp, #44]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r0
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	beq label642
.p2align 4
label108:
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	b label643
.p2align 4
label28:
	ldr r0, [sp, #24]
	ldr r3, [sp, #44]
	add r0, r0, #1
	cmp r3, r0
	ble label29
	str r0, [sp, #24]
	b label5
.p2align 4
label642:
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
.p2align 4
label678:
	ldr r7, [sp, #4]
	cmp r7, #1
	beq label254
.p2align 4
label643:
	ldr r7, [sp, #4]
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	b label690
.p2align 4
label27:
	ldr r0, [sp, #0]
	ldr r1, [sp, #16]
	ldr r2, [sp, #12]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r6, [sp, #36]
	cmp r6, r1
	ble label28
	str r1, [sp, #16]
	ldr r2, [sp, #64]
	mov r5, #0
	sub r0, r1, r2
	add r1, r2, r1
	ldr r2, [sp, #32]
	ldr r3, [sp, #44]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r0
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label642
.p2align 4
label690:
	ldr r7, [sp, #4]
	cmp r7, #4
	beq label281
	b label695
.p2align 4
label254:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	add r4, r4, #1
	cmp r1, r4
	ble label26
.p2align 4
label655:
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label691
.p2align 4
label43:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	beq label44
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label655
.p2align 4
label44:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label691
.p2align 4
label700:
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	bne label687
.p2align 4
label17:
	add r8, r5, r6
	cmp r8, #1073741824
	bgt label22
	cmp r8, #0
	blt label20
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
.p2align 4
label682:
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label687
.p2align 4
label22:
	add r8, r8, #-1073741824
	cmp r8, #1073741824
	bgt label22
	cmp r8, #0
	blt label20
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label682
.p2align 4
label26:
	add r2, r2, #1
	ldr r3, [sp, #40]
	cmp r3, r2
	ble label27
	mov r5, r8
	ldr r3, [sp, #44]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	ldr r6, [sp, #36]
	cmp r6, r0
	mov r6, #0
	movwle r6, #1
	cmp r0, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r0
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label678
.p2align 4
label691:
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label687
.p2align 4
label20:
	adds r8, r8, #1073741824
	blt label20
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
.p2align 4
label687:
	ldr r7, [sp, #4]
	cmp r7, #1
	beq label254
	b label643
.p2align 4
label277:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label59
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	add r4, r4, #1
	cmp r1, r4
	ble label26
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label705
.p2align 4
label633:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
.p2align 4
label705:
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label687
.p2align 4
label59:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label62
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label62
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label59
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	b label633
.p2align 4
label62:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label59
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label705
.p2align 4
label63:
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label687
.p2align 4
label281:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label52
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	add r4, r4, #1
	cmp r1, r4
	ble label26
.p2align 4
label664:
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label700
.p2align 4
label52:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label53
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label52
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label664
.p2align 4
label53:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label54
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label52
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label664
.p2align 4
label54:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label52
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label254
	cmp r7, #2
	beq label63
	cmp r7, #3
	beq label277
	cmp r7, #4
	beq label281
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	b label700
.p2align 4
label695:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	ldr r6, [sp, #36]
	cmp r6, r4
	mov r6, #0
	movwle r6, #1
	cmp r4, #0
	orrlt r6, r6, #1
	orrs r6, r3, r6
	bne label108
	ldr r6, [sp, #36]
	mla r7, r6, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #4]
	cmp r7, #0
	beq label17
	b label687
.p2align 4
label172:
	mov r0, #0
.p2align 4
label36:
	ldr r2, [sp, #12]
	ldr r3, [r2, r0, lsl #2]
	add r1, r2, r0, lsl #2
	ldr r6, [sp, #28]
	str r3, [r6, r0, lsl #2]
	add r2, r6, r0, lsl #2
	ldr r3, [r1, #4]
	add r0, r0, #16
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
	ldr r1, [sp, #60]
	cmp r1, r0
	bgt label36
	b label34
label2:
	ldr r3, [sp, #44]
	add r0, r4, r4, lsr #31
	ldr r6, [sp, #36]
	mul r1, r3, r6
	sub r2, r1, #4
	str r1, [sp, #56]
	sub r1, r1, #20
	str r2, [sp, #52]
	asr r2, r0, #1
	str r1, [sp, #60]
	mov r1, #0
	str r2, [sp, #64]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #12]
	str r1, [sp, #8]
	ldr r0, [sp, #48]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #4]
	str r0, [sp, #24]
	b label5
