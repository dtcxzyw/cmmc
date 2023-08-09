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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[68] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #76
	bl getint
	mov r5, r0
	bl getint
	str r0, [sp, #24]
	mov r2, r0
	bl getint
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r0, [sp, #28]
	mov r7, r0
	mov r0, r3
	bl getarray
	movw r4, #:lower16:kernelid
	movt r4, #:upper16:kernelid
	mov r0, r4
	bl getarray
	str r0, [sp, #16]
	mov r1, r0
	mov r0, #109
	bl _sysy_starttime
	ldr r2, [sp, #24]
	add r0, r5, r5, lsr #31
	ldr r7, [sp, #28]
	asr r0, r0, #1
	mul r2, r2, r7
	sub r3, r2, #3
	str r2, [sp, #20]
	sub r2, r2, #18
	str r3, [sp, #32]
	str r2, [sp, #36]
	str r0, [sp, #40]
	mov r0, #0
	str r4, [sp, #44]
	str r0, [sp, #48]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r7, [r4, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r2, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label139:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
.p2align 4
label424:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	ble label444
.p2align 4
label60:
	ldr r7, [sp, #28]
	ldr r1, [sp, #56]
	add r1, r1, r7, lsl #2
	str r1, [sp, #56]
	str r0, [sp, #12]
	mov r1, r0
.p2align 4
label5:
	ldr r0, [sp, #40]
	ldr r1, [sp, #12]
	sub r1, r1, r0
	str r1, [sp, #64]
	ldr r1, [sp, #12]
	add r2, r0, r1
	str r2, [sp, #60]
	ldr r1, [sp, #56]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0]
	mov r5, #0
	sub r4, r1, r0
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #64]
.p2align 4
label11:
	ldr r2, [sp, #24]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r4, [sp, #4]
	cmp r2, r1
	add r3, r3, r4, lsl #2
	mov r2, #0
	movwle r2, #1
	orr r6, r1, r4
	ldr r7, [sp, #28]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label112
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	bne label441
.p2align 4
label274:
	mov r7, #1
	mov r8, #0
.p2align 4
label62:
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
	blt label62
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label449
.p2align 4
label32:
	ldr r1, [sp, #8]
	mov r5, #0
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r1, r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0]
	ldr r0, [sp, #40]
	ldr r1, [sp, #0]
	sub r4, r1, r0
	add r3, r3, r4, lsl #2
	add r0, r0, r1
	str r4, [sp, #4]
	ldr r1, [sp, #64]
	ldr r2, [sp, #24]
	ldr r7, [sp, #28]
	orr r6, r1, r4
	cmp r2, r1
	lsr r6, r6, #31
	mov r2, #0
	and r6, r6, #1
	movwle r2, #1
	cmp r7, r4
	orr r6, r2, r6
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label112
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	beq label274
	cmp r7, #2
	beq label66
	cmp r7, #3
	beq label297
	cmp r7, #4
	beq label301
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	b label500
.p2align 4
label441:
	ldr r7, [sp, #52]
	cmp r7, #2
	beq label66
	cmp r7, #3
	bne label476
.p2align 4
label297:
	mov r7, #1
	mov r8, #0
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label414
.p2align 4
label324:
	mov r9, #1
	lsl r7, r7, #1
	add r8, r9, r8, lsl #1
	cmp r7, #1073741824
	bge label418
.p2align 4
label75:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label324
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label75
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label444:
	ldr r2, [sp, #20]
	cmp r2, #0
	ble label35
.p2align 4
label38:
	ldr r2, [sp, #20]
	cmp r2, #3
	ble label170
	ldr r3, [sp, #32]
	cmp r3, #15
	ble label189
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	mov r1, #0
	mov r0, r3
.p2align 4
label56:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r1, lsl #2
	add r1, r1, #16
	ldr r3, [r2, #0]
	str r3, [r0, #0]
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r3, [r2, #12]
	str r3, [r0, #12]
	ldr r3, [r2, #16]
	str r3, [r0, #16]
	ldr r3, [r2, #20]
	str r3, [r0, #20]
	ldr r3, [r2, #24]
	str r3, [r0, #24]
	ldr r3, [r2, #28]
	str r3, [r0, #28]
	ldr r3, [r2, #32]
	str r3, [r0, #32]
	ldr r3, [r2, #36]
	str r3, [r0, #36]
	ldr r3, [r2, #40]
	str r3, [r0, #40]
	ldr r3, [r2, #44]
	str r3, [r0, #44]
	ldr r3, [r2, #48]
	str r3, [r0, #48]
	ldr r3, [r2, #52]
	str r3, [r0, #52]
	ldr r3, [r2, #56]
	str r3, [r0, #56]
	ldr r2, [r2, #60]
	str r2, [r0, #60]
	ldr r2, [sp, #36]
	cmp r2, r1
	ble label266
	add r0, r0, #64
	b label56
.p2align 4
label112:
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label115
.p2align 4
label20:
	add r5, r5, r6
	cmp r5, #1073741824
	ble label120
.p2align 4
label21:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	bgt label21
	cmp r5, #0
	bge label129
.p2align 4
label25:
	adds r5, r5, #1073741824
	blt label25
	add r4, r4, #1
	cmp r0, r4
	ble label139
.p2align 4
label29:
	add r3, r3, #4
	orr r6, r1, r4
	ldr r7, [sp, #28]
	lsr r6, r6, #31
	and r6, r6, #1
	orr r6, r2, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label112
	ldr r7, [sp, #28]
	mul r6, r7, r1
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	beq label20
	cmp r7, #1
	beq label274
	cmp r7, #2
	bne label463
.p2align 4
label66:
	cmp r5, r6
	add r4, r4, #1
	movle r5, r6
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label115:
	ldr r7, [sp, #52]
	cmp r7, #1
	beq label274
	cmp r7, #2
	beq label66
	cmp r7, #3
	beq label297
	cmp r7, #4
	bne label461
.p2align 4
label301:
	mov r7, #1
	mov r8, #0
	b label69
.p2align 4
label74:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	bge label417
.p2align 4
label69:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label74
	mov r9, #0
	add r8, r9, r8, lsl #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label69
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
label471:
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label266:
	mov r2, r1
	ldr r3, [sp, #32]
	cmp r3, r1
	ble label408
.p2align 4
label50:
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	mov r1, r2
	add r0, r3, r2, lsl #2
	b label51
.p2align 4
label54:
	add r0, r0, #16
.p2align 4
label51:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	ldr r3, [r2, #0]
	str r3, [r0, #0]
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	ldr r3, [sp, #32]
	cmp r3, r1
	bgt label54
	ldr r2, [sp, #20]
	cmp r2, r1
	ble label407
.p2align 4
label41:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r0, r2, r1, lsl #2
	b label42
.p2align 4
label45:
	add r0, r0, #4
.p2align 4
label42:
	ldr r2, [r0, #0]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #20]
	add r1, r1, #1
	cmp r2, r1
	bgt label45
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	ble label36
.p2align 4
label37:
	ldr r1, [sp, #44]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r1, r1, #4
	str r1, [sp, #44]
	str r0, [sp, #48]
	ldr r7, [r1, #0]
	mov r1, #0
	str r7, [sp, #52]
	str r2, [sp, #56]
	str r1, [sp, #12]
	b label5
.p2align 4
label418:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label463:
	ldr r7, [sp, #52]
	cmp r7, #3
	beq label297
	cmp r7, #4
	beq label301
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	b label501
.p2align 4
label449:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label417:
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	b label471
.p2align 4
label461:
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
.p2align 4
label501:
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label476:
	ldr r7, [sp, #52]
	cmp r7, #4
	beq label301
	mov r5, #0
	add r4, r4, #1
	cmp r0, r4
	bgt label29
.p2align 4
label500:
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	b label501
.p2align 4
label120:
	cmp r5, #0
	blt label25
.p2align 4
label129:
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r5, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	b label424
label170:
	mov r1, #0
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label41
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label37
	b label36
label189:
	mov r2, #0
	mov r1, r2
	ldr r3, [sp, #32]
	cmp r3, r2
	bgt label50
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label41
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label37
	b label36
.p2align 4
label408:
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label41
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label37
label36:
	mov r0, #116
	bl _sysy_stoptime
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	ldr r2, [sp, #20]
	mov r0, r2
	mov r1, r3
	bl putarray
	add sp, sp, #76
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label35:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label37
	b label36
.p2align 4
label414:
	sdiv r9, r6, r7
	lsl r7, r7, #1
	cmp r7, #1073741824
	and r9, r9, #-2147483647
	sub r9, r9, #1
	clz r9, r9
	lsr r9, r9, #5
	add r8, r9, r8, lsl #1
	blt label75
	mov r5, r8
	add r4, r4, #1
	cmp r0, r4
	bgt label29
	add r1, r1, #1
	ldr r2, [sp, #60]
	cmp r2, r1
	bgt label11
	ldr r1, [sp, #0]
	add r0, r1, #1
	ldr r1, [sp, #8]
	str r8, [r1, #0]
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label32
	ldr r1, [sp, #12]
	ldr r2, [sp, #24]
	add r0, r1, #1
	cmp r2, r0
	bgt label60
	ldr r2, [sp, #20]
	cmp r2, #0
	bgt label38
	b label35
.p2align 4
label407:
	ldr r0, [sp, #48]
	ldr r1, [sp, #16]
	add r0, r0, #1
	cmp r1, r0
	bgt label37
	b label36
