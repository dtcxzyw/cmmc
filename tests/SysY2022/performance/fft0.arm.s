.arch armv7ve
.data
.bss
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
	bne label335
	mov r0, #1
label333:
	add sp, sp, #4
	pop { r4, r5, pc }
label335:
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
	bne label333
	mov r1, r4
	bl multiply
	b label333
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r4, r0
	mov r7, r1
	mov r1, r3
	str r3, [sp, #8]
	str r0, [sp, #4]
	str r7, [sp, #0]
	cmp r2, #1
	bne label52
label51:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label52:
	add r0, r2, r2, lsr #31
	asr r9, r0, #1
	str r9, [sp, #12]
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	mov r1, #0
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	b label317
label59:
	cmp r2, #0
	ble label60
	mov r1, #0
	add r3, r1, #4
	cmp r3, r2
	bge label67
	b label75
label60:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	mov r5, r0
	ldr r7, [sp, #0]
	ldr r4, [sp, #4]
	ldr r9, [sp, #12]
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r5
	bl fft
	add r1, r9, r7
	mov r0, r4
	mov r2, r9
	mov r3, r5
	bl fft
	mov r6, #1
	mov r5, #0
	ldr r9, [sp, #12]
	cmp r5, r9
	bge label51
label64:
	ldr r7, [sp, #0]
	add r8, r5, r7
	ldr r4, [sp, #4]
	ldr r10, [r4, r8, lsl #2]
	ldr r9, [sp, #12]
	add r0, r5, r9
	add r7, r0, r7
	ldr r1, [r4, r7, lsl #2]
	mov r0, r6
	bl multiply
	mov r1, r0
	add r3, r10, r0
	movw r0, #1
	movt r0, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r9, r3, r2
	asr r11, r9, #26
	add r9, r11, r9, lsr #31
	mls r3, r9, r0, r3
	str r3, [r4, r8, lsl #2]
	sub r1, r10, r1
	add r1, r1, r0
	smmul r2, r1, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r0, r1
	str r0, [r4, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r6
	bl multiply
	add r5, r5, #1
	mov r6, r0
	ldr r9, [sp, #12]
	cmp r5, r9
	bge label51
	b label64
label317:
	and r3, r1, #1
	cmp r3, #0
	bne label57
label314:
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	b label314
label57:
	add r3, r1, r1, lsr #31
	asr r3, r3, #1
	ldr r9, [sp, #12]
	add r3, r9, r3
	ldr r7, [sp, #0]
	add r5, r1, r7
	ldr r4, [sp, #4]
	ldr r4, [r4, r5, lsl #2]
	str r4, [r0, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	ldr r7, [sp, #0]
	add r3, r1, r7
	ldr r4, [sp, #4]
	ldr r3, [r4, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label59
	and r3, r1, #1
	cmp r3, #0
	bne label57
	b label314
label67:
	add r3, r1, #4
	cmp r3, r2
	bge label70
	b label69
label70:
	add r3, r1, #4
	cmp r3, r2
	bge label72
	b label74
label72:
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
label322:
	ldr r7, [sp, #0]
	add r3, r7, r1
	ldr r5, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r5, [r4, r3, lsl #2]
	add r1, r1, #1
	cmp r1, r2
	bge label60
	b label322
label74:
	ldr r7, [sp, #0]
	add r6, r1, r7
	add r5, r0, r1, lsl #2
	ldr r8, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #1
	add r6, r6, r7
	ldr r8, [r5, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #2
	add r6, r6, r7
	ldr r8, [r5, #8]
	str r8, [r4, r6, lsl #2]
	add r1, r1, #3
	add r1, r1, r7
	ldr r5, [r5, #12]
	str r5, [r4, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r3, r2
	bge label72
	b label74
label75:
	ldr r7, [sp, #0]
	add r6, r1, r7
	add r5, r0, r1, lsl #2
	ldr r8, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #1
	add r6, r6, r7
	ldr r8, [r5, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #2
	add r6, r6, r7
	ldr r8, [r5, #8]
	str r8, [r4, r6, lsl #2]
	add r1, r1, #3
	add r1, r1, r7
	ldr r5, [r5, #12]
	str r5, [r4, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r3, r2
	bge label67
	b label75
label69:
	ldr r7, [sp, #0]
	add r6, r1, r7
	add r5, r0, r1, lsl #2
	ldr r8, [r0, r1, lsl #2]
	ldr r4, [sp, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #1
	add r6, r6, r7
	ldr r8, [r5, #4]
	str r8, [r4, r6, lsl #2]
	add r6, r1, #2
	add r6, r6, r7
	ldr r8, [r5, #8]
	str r8, [r4, r6, lsl #2]
	add r1, r1, #3
	add r1, r1, r7
	ldr r5, [r5, #12]
	str r5, [r4, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r3, r2
	bge label70
	b label69
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
	mov r7, r0
	bl getarray
	add r5, r5, r0
	mov r0, #60
	bl _sysy_starttime
	cmp r5, #1
	ble label378
	mov r6, #1
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	b label477
label378:
	mov r6, #1
	b label359
label477:
	lsl r6, r6, #1
	cmp r6, r5
	bge label359
	b label477
label359:
	mov r0, #998244352
	sdiv r8, r0, r6
	mov r0, #3
	mov r1, r8
	bl power
	mov r9, r0
	mov r0, r4
	mov r1, #0
	mov r2, r6
	mov r3, r9
	bl fft
	mov r0, r7
	mov r1, #0
	mov r2, r6
	mov r3, r9
	bl fft
	cmp r6, #0
	ble label363
	mov r9, #0
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	b label480
label363:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r3, r0
	mov r0, r4
	mov r1, #0
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label367
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, r0
	mov r8, #0
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
label482:
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r6
	bge label367
	b label482
label480:
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r6
	bge label363
	b label480
label367:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
