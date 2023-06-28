.arch armv7ve
.data
.align 4
temp:
	.zero	8388608
.align 4
a:
	.zero	8388608
.align 4
b:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
multiply:
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	bne label4
	mov r0, #0
label2:
	add sp, sp, #4
	pop { r4, r5, pc }
label4:
	cmp r5, #1
	bne label6
	movw r0, #1
	movt r0, #15232
	movw r1, #51217
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label2
label6:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl multiply
	lsl r0, r0, #1
	movw r1, #1
	movt r1, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	mov r1, #2
	add r2, r5, r5, lsr #31
	asr r2, r2, #1
	mls r1, r2, r1, r5
	cmp r1, #1
	bne label2
	add r0, r4, r0
	movw r1, #1
	movt r1, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	b label2
power:
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	bne label564
	mov r0, #1
label562:
	add sp, sp, #4
	pop { r4, r5, pc }
label564:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	mov r1, #2
	add r2, r5, r5, lsr #31
	asr r2, r2, #1
	mls r1, r2, r1, r5
	cmp r1, #1
	bne label562
	mov r1, r4
	bl multiply
	b label562
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r6, r0
	str r0, [sp, #8]
	str r1, [sp, #4]
	mov r1, r3
	str r3, [sp, #0]
	cmp r2, #1
	bne label52
	b label51
label52:
	add r0, r2, r2, lsr #31
	asr r5, r0, #1
	movw r3, #:lower16:temp
	movt r3, #:upper16:temp
	mov r0, #0
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	b label543
label59:
	cmp r2, #0
	ble label60
	mov r0, #0
	add r4, r0, #16
	cmp r4, r2
	bge label67
	b label75
label60:
	ldr r1, [sp, #0]
	mov r0, r1
	ldr r1, [sp, #0]
	bl multiply
	mov r4, r0
	ldr r6, [sp, #8]
	mov r0, r6
	ldr r1, [sp, #4]
	mov r2, r5
	mov r3, r4
	bl fft
	ldr r1, [sp, #4]
	add r1, r5, r1
	ldr r6, [sp, #8]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl fft
	mov r4, #1
	mov r7, #0
	cmp r7, r5
	bge label51
label64:
	ldr r1, [sp, #4]
	add r8, r7, r1
	ldr r6, [sp, #8]
	ldr r9, [r6, r8, lsl #2]
	add r0, r7, r5
	ldr r1, [sp, #4]
	add r10, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r10, lsl #2]
	mov r0, r4
	bl multiply
	add r3, r9, r0
	movw r1, #1
	movt r1, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r6, r3, r2
	asr r11, r6, #26
	add r6, r11, r6, lsr #31
	mls r3, r6, r1, r3
	ldr r6, [sp, #8]
	str r3, [r6, r8, lsl #2]
	sub r0, r9, r0
	add r0, r0, r1
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	ldr r6, [sp, #8]
	str r0, [r6, r10, lsl #2]
	mov r0, r4
	ldr r1, [sp, #0]
	bl multiply
	add r7, r7, #1
	mov r4, r0
	cmp r7, r5
	bge label51
	b label64
label543:
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
label538:
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	b label546
label58:
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	add r4, r5, r1
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	ldr r1, [sp, #4]
	add r1, r0, r1
	ldr r6, [sp, #8]
	ldr r1, [r6, r1, lsl #2]
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	str r1, [r3, r4, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label59
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	b label538
label546:
	mov r1, #2
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	mls r1, r4, r1, r0
	cmp r1, #0
	bne label58
	b label538
label67:
	add r4, r0, #16
	cmp r4, r2
	bge label69
label74:
	ldr r1, [sp, #4]
	add r1, r0, r1
	add r7, r3, r0, lsl #2
	ldr r8, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #1
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #4]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #2
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #8]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #3
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #12]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #4
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #16]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #5
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #20]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #6
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #24]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #7
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #28]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #8
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #32]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #9
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #36]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #10
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #40]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #11
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #44]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #12
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #48]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #13
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #52]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #14
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #56]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r0, r0, #15
	ldr r1, [sp, #4]
	add r0, r0, r1
	ldr r1, [r7, #60]
	ldr r6, [sp, #8]
	str r1, [r6, r0, lsl #2]
	mov r0, r4
	add r4, r4, #16
	cmp r4, r2
	bge label69
	b label74
label69:
	add r4, r0, #16
	cmp r4, r2
	bge label72
label71:
	ldr r1, [sp, #4]
	add r1, r0, r1
	add r7, r3, r0, lsl #2
	ldr r8, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #1
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #4]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #2
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #8]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #3
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #12]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #4
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #16]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #5
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #20]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #6
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #24]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #7
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #28]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #8
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #32]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #9
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #36]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #10
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #40]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #11
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #44]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #12
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #48]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #13
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #52]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #14
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #56]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r0, r0, #15
	ldr r1, [sp, #4]
	add r0, r0, r1
	ldr r1, [r7, #60]
	ldr r6, [sp, #8]
	str r1, [r6, r0, lsl #2]
	mov r0, r4
	add r4, r4, #16
	cmp r4, r2
	bge label72
	b label71
label72:
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
label549:
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r4, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r4, [r6, r1, lsl #2]
	add r0, r0, #1
	cmp r0, r2
	bge label60
	b label549
label51:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label75:
	ldr r1, [sp, #4]
	add r1, r0, r1
	add r7, r3, r0, lsl #2
	ldr r8, [r3, r0, lsl #2]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #1
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #4]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #2
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #8]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #3
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #12]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #4
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #16]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #5
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #20]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #6
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #24]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #7
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #28]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #8
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #32]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #9
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #36]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #10
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #40]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #11
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #44]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #12
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #48]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #13
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #52]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r6, r0, #14
	ldr r1, [sp, #4]
	add r1, r6, r1
	ldr r8, [r7, #56]
	ldr r6, [sp, #8]
	str r8, [r6, r1, lsl #2]
	add r0, r0, #15
	ldr r1, [sp, #4]
	add r0, r0, r1
	ldr r1, [r7, #60]
	ldr r6, [sp, #8]
	str r1, [r6, r0, lsl #2]
	mov r0, r4
	add r4, r4, #16
	cmp r4, r2
	bge label67
	b label75
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r4, r0
	bl getarray
	sub r5, r0, #1
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r6, r0
	bl getarray
	add r8, r5, r0
	mov r0, #60
	bl _sysy_starttime
	cmp r8, #1
	ble label607
	mov r5, #1
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	b label711
label607:
	mov r5, #1
	b label586
label711:
	lsl r5, r5, #1
	cmp r5, r8
	bge label586
	b label711
label586:
	mov r0, #998244352
	sdiv r9, r0, r5
	mov r0, #3
	mov r1, r9
	bl power
	mov r7, r0
	mov r0, r4
	mov r1, #0
	mov r2, r5
	mov r3, r7
	bl fft
	mov r0, r6
	mov r1, #0
	mov r2, r5
	mov r3, r7
	bl fft
	cmp r5, #0
	ble label590
	mov r7, #0
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
label708:
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label590
	b label708
label590:
	rsb r1, r9, #998244352
	mov r0, #3
	bl power
	mov r3, r0
	mov r0, r4
	mov r1, #0
	mov r2, r5
	bl fft
	cmp r5, #0
	ble label594
	mov r0, r5
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r6, r0
	mov r7, #0
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
label710:
	ldr r0, [r4, r7, lsl #2]
	mov r1, r6
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r5
	bge label594
	b label710
label594:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r8
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
