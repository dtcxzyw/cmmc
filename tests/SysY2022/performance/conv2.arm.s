.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
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
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #20]
	mov r3, r0
	bl getint
	movw r6, #:lower16:a
	str r0, [sp, #12]
	mov r7, r0
	movt r6, #:upper16:a
	str r6, [sp, #24]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #32]
	bl getarray
	str r0, [sp, #28]
	mov r1, r0
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #109
	str r2, [sp, #36]
	bl _sysy_starttime
	ldr r1, [sp, #28]
	cmp r1, #0
	bgt label2
	b label62
label29:
.p2align 4
	ldr r2, [sp, #40]
	cmp r2, #0
	bgt label149
	ldr r1, [sp, #48]
	add r0, r1, #1
	ldr r1, [sp, #28]
	cmp r1, r0
	bgt label183
	b label62
label149:
.p2align 4
	mov r1, #0
label30:
.p2align 4
	add r0, r1, #4
	ldr r2, [sp, #40]
	cmp r2, r0
	bgt label32
	ldr r3, [sp, #44]
	ldr r0, [r3, r1, lsl #2]
	ldr r6, [sp, #24]
	str r0, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r2, r1
	bgt label33
	ldr r1, [sp, #48]
	add r0, r1, #1
	ldr r1, [sp, #28]
	cmp r1, r0
	bgt label183
	b label62
label32:
.p2align 4
	ldr r3, [sp, #44]
	ldr r4, [r3, r1, lsl #2]
	add r2, r3, r1, lsl #2
	ldr r6, [sp, #24]
	str r4, [r6, r1, lsl #2]
	add r3, r6, r1, lsl #2
	ldr r1, [r2, #4]
	str r1, [r3, #4]
	ldr r1, [r2, #8]
	str r1, [r3, #8]
	ldr r1, [r2, #12]
	str r1, [r3, #12]
	mov r1, r0
	b label30
label33:
.p2align 4
	ldr r3, [sp, #44]
	ldr r0, [r3, r1, lsl #2]
	ldr r6, [sp, #24]
	str r0, [r6, r1, lsl #2]
	ldr r2, [sp, #40]
	add r1, r1, #1
	cmp r2, r1
	bgt label33
	ldr r1, [sp, #48]
	add r0, r1, #1
	ldr r1, [sp, #28]
	cmp r1, r0
	ble label62
label183:
	mov r1, r0
	str r0, [sp, #48]
	ldr r0, [sp, #32]
	ldr r1, [sp, #48]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #16]
	b label5
label62:
	mov r0, #116
	bl _sysy_stoptime
	ldr r3, [sp, #20]
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mul r0, r3, r7
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
.p2align 4
	ldr r2, [sp, #36]
	mov r1, #0
	ldr r0, [sp, #16]
	sub r3, r0, r2
	str r3, [sp, #0]
	add r3, r2, r0
	str r3, [sp, #4]
	ldr r7, [sp, #12]
	mul r0, r7, r0
	str r0, [sp, #56]
	str r1, [sp, #8]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #20]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label539
label101:
.p2align 4
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	b label540
label28:
.p2align 4
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	ble label29
	str r0, [sp, #16]
	b label5
label22:
.p2align 4
	adds r8, r8, #1073741824
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label579
label26:
.p2align 4
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label27
	mov r5, r8
	ldr r3, [sp, #20]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label573
label186:
.p2align 4
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	add r4, r4, #1
	cmp r1, r4
	ble label26
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
label602:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label581
label539:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
label573:
.p2align 4
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label186
label540:
.p2align 4
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	b label584
label27:
.p2align 4
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r3, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	ble label28
	str r1, [sp, #8]
	ldr r2, [sp, #36]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #20]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label539
label584:
.p2align 4
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label217
	b label586
label568:
.p2align 4
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label602
label58:
.p2align 4
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	beq label59
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label568
label18:
.p2align 4
	add r8, r8, #-1073741824
	cmp r8, #1073741824
	bgt label18
	cmp r8, #0
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label578
label579:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label581
label17:
.p2align 4
	add r8, r5, r6
	cmp r8, #1073741824
	bgt label18
	cmp r8, #0
	blt label22
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
label578:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
label581:
.p2align 4
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label186
	b label540
label589:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label581
label192:
.p2align 4
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label42
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
label521:
.p2align 4
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label589
label42:
.p2align 4
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label43
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label43
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label42
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	b label521
label59:
.p2align 4
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label602
label586:
.p2align 4
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label588
label54:
.p2align 4
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label581
label588:
.p2align 4
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label581
label217:
.p2align 4
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	add r4, r4, #1
	cmp r1, r4
	ble label26
label562:
.p2align 4
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label596
label50:
.p2align 4
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label562
label596:
.p2align 4
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	b label581
label52:
.p2align 4
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label596
label51:
.p2align 4
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label52
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	b label562
label43:
.p2align 4
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label42
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	ldr r7, [sp, #12]
	ldr r6, [sp, #24]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label17
	cmp r7, #1
	beq label186
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label192
	cmp r7, #4
	beq label217
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label26
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #12]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label101
	b label589
label2:
	ldr r3, [sp, #20]
	mov r1, #0
	ldr r7, [sp, #12]
	mul r2, r3, r7
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	str r2, [sp, #40]
	str r3, [sp, #44]
	str r1, [sp, #48]
	ldr r0, [sp, #32]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #16]
	b label5
