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
	str r0, [sp, #12]
	mov r3, r0
	bl getint
	str r0, [sp, #24]
	mov r7, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r0, [sp, #20]
	mov r6, r0
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #28]
	mov r1, r0
	bl getarray
	str r0, [sp, #32]
	mov r1, r0
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #109
	str r2, [sp, #36]
	bl _sysy_starttime
	ldr r1, [sp, #32]
	cmp r1, #0
	ble label2
	ldr r3, [sp, #12]
	mov r0, #0
	ldr r7, [sp, #24]
	mul r2, r3, r7
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	str r2, [sp, #40]
	str r3, [sp, #44]
	str r0, [sp, #48]
	ldr r1, [sp, #28]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label6:
	ldr r2, [sp, #36]
	mov r1, #0
	ldr r0, [sp, #16]
	sub r3, r0, r2
	str r3, [sp, #0]
	add r3, r2, r0
	str r3, [sp, #4]
	ldr r7, [sp, #24]
	mul r0, r7, r0
	str r0, [sp, #56]
	str r1, [sp, #8]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #12]
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
	beq label62
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label25
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label540
label610:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
label615:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label615
label220:
	str r0, [sp, #16]
	b label6
label62:
	ldr r7, [sp, #24]
	ldr r6, [sp, #20]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label25
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label610
label609:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label610
label19:
	cmp r5, #0
	bge label114
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	adds r5, r5, #1073741824
	bge label119
	b label613
label119:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label202
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label207
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	bgt label215
	ldr r0, [sp, #16]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label220
	ldr r2, [sp, #40]
	cmp r2, #0
	ble label61
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label228
	b label58
label25:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label26
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	b label564
label26:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label27
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	bgt label202
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label207
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	bgt label215
	ldr r0, [sp, #16]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label220
	ldr r2, [sp, #40]
	cmp r2, #0
	ble label61
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label228
	b label58
label27:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label28
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	b label558
label28:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label137
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	b label513
label137:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	bgt label202
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label207
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	bgt label215
	ldr r0, [sp, #16]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label220
	ldr r2, [sp, #40]
	cmp r2, #0
	ble label61
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label228
	b label58
label558:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	b label592
label564:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	b label598
label202:
	mov r5, r8
	cmp r4, #0
	mov r6, #0
	ldr r7, [sp, #24]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label62
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label25
	add r5, r8, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label609
label613:
	adds r5, r5, #1073741824
	bge label119
	b label614
label114:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label202
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label207
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	bgt label215
	ldr r0, [sp, #16]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label220
	ldr r2, [sp, #40]
	cmp r2, #0
	ble label61
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label228
	b label58
label614:
	adds r5, r5, #1073741824
	bge label119
	b label614
label575:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label609
label50:
	add r4, r4, #1
	cmp r1, r4
	bgt label202
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label207
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r3, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	bgt label215
	ldr r0, [sp, #16]
	ldr r3, [sp, #12]
	add r0, r0, #1
	cmp r3, r0
	bgt label220
	ldr r2, [sp, #40]
	cmp r2, #0
	ble label61
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label228
	b label58
label207:
	mov r5, r8
	ldr r3, [sp, #12]
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
	ldr r7, [sp, #24]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label62
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label25
	add r5, r8, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label575
label540:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label575
label215:
	str r1, [sp, #8]
	ldr r2, [sp, #36]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #12]
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
	ldr r7, [sp, #24]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label62
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label25
	add r5, r5, r6
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label19
	b label540
label598:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	b label598
label49:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label49
	b label598
label592:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	b label626
label41:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label42
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	b label630
label42:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	b label592
label630:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	b label592
label626:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label41
	b label592
label228:
	mov r0, r1
	ldr r3, [sp, #44]
	ldr r1, [r3, r1, lsl #2]
	ldr r6, [sp, #20]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #40]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	ldr r1, [r3, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r2, r0
	ble label61
label641:
	ldr r3, [sp, #44]
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #20]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #40]
	add r0, r0, #1
	cmp r2, r0
	ble label61
	b label641
label513:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
label552:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	b label552
label33:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label33
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label50
	b label552
label58:
	ldr r3, [sp, #44]
	ldr r4, [r3, r1, lsl #2]
	add r2, r3, r1, lsl #2
	ldr r6, [sp, #20]
	str r4, [r6, r1, lsl #2]
	add r3, r6, r1, lsl #2
	ldr r1, [r2, #4]
	str r1, [r3, #4]
	ldr r1, [r2, #8]
	str r1, [r3, #8]
	ldr r1, [r2, #12]
	str r1, [r3, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #40]
	cmp r2, r0
	ble label228
	b label58
label324:
	str r0, [sp, #48]
	ldr r1, [sp, #28]
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #16]
	b label6
label61:
	ldr r0, [sp, #48]
	ldr r1, [sp, #32]
	add r0, r0, #1
	cmp r1, r0
	ble label2
	b label324
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r3, [sp, #12]
	ldr r7, [sp, #24]
	ldr r6, [sp, #20]
	mul r0, r3, r7
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
