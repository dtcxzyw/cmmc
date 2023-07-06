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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #20]
	mov r3, r0
	bl getint
	str r0, [sp, #12]
	mov r7, r0
	ldr r3, [sp, #20]
	mul r2, r3, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r2, [sp, #24]
	mov r6, r0
	str r0, [sp, #28]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #32]
	mov r1, r0
	bl getarray
	str r0, [sp, #36]
	mov r1, r0
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #109
	str r2, [sp, #40]
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #44]
	ldr r1, [sp, #36]
	cmp r1, #0
	ble label2
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label5:
	ldr r2, [sp, #40]
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
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label35
	add r5, r5, r6
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label589
label132:
	str r0, [sp, #16]
	b label5
label33:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label25
	b label33
label67:
	ldr r7, [sp, #12]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label35
	add r5, r5, r6
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label661
label660:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
label661:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label688
label17:
	add r4, r4, #1
	cmp r1, r4
	bgt label114
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label119
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label127
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label132
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label34
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label25
	b label33
label114:
	mov r5, r8
	cmp r4, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label35
	add r5, r8, r6
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label660
label688:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
label691:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label691
label625:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label660
label119:
	mov r5, r8
	ldr r3, [sp, #20]
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label35
	add r5, r8, r6
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label625
label589:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label625
label127:
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #20]
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label35
	add r5, r5, r6
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label61
	b label589
label35:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label42
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	b label634
label42:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label43
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	bgt label114
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label119
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label127
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label132
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label34
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label25
	b label33
label61:
	cmp r5, #0
	bge label289
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	adds r5, r5, #1073741824
	bge label294
	b label689
label289:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label114
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label119
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label127
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label132
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label34
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label25
	b label33
label689:
	adds r5, r5, #1073741824
	bge label294
	b label690
label294:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label114
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label119
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label127
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label132
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label34
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label25
	b label33
label690:
	adds r5, r5, #1073741824
	bge label294
	b label690
label634:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	b label668
label41:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	b label634
label668:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label41
	b label634
label43:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label44
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	b label613
label44:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label237
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	b label565
label237:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	bgt label114
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label119
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label127
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label132
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label34
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label25
	b label33
label606:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	b label606
label51:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	b label606
label613:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
label648:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	b label682
label57:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	b label648
label58:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	b label648
label682:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label57
	b label648
label338:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #16]
	b label5
label164:
	mov r0, r1
	ldr r2, [sp, #44]
	ldr r1, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	b label666
label32:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label164
	b label32
label34:
	ldr r0, [sp, #48]
	ldr r1, [sp, #36]
	add r0, r0, #1
	cmp r1, r0
	ble label2
	b label338
label666:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label34
	b label666
label565:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label17
	b label606
label25:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label28
label27:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label28
	b label27
label28:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label164
	b label32
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #24]
	ldr r6, [sp, #28]
	mov r0, r2
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
