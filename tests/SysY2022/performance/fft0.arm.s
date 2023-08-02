.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
a:
	.zero	8388608
.align 8
b:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
multiply:
	push { r4, r5, r6, r7, r8, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	beq label30
	cmp r1, #1
	bne label4
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label24
label30:
	mov r0, #0
label24:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	add r0, r5, #1
	cmp r0, #3
	blo label40
	sub r0, r5, #2
	add r1, r5, r5, lsr #31
	cmp r0, #2
	asr r6, r1, #1
	blo label23
	add r0, r5, #3
	cmp r0, #7
	bhs label13
	mov r0, #0
label10:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	and r1, r6, #-2147483647
	cmp r1, #1
	beq label12
	b label5
label40:
	mov r0, #0
label5:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	and r1, r5, #-2147483647
	cmp r1, #1
	beq label7
	b label24
label13:
	sub r0, r5, #4
	asr r1, r5, #31
	cmp r0, #4
	add r1, r5, r1, lsr #30
	asr r7, r1, #2
	bhs label15
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label10
label15:
	add r0, r7, #1
	cmp r0, #3
	bhs label16
	mov r0, #0
label20:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	and r1, r7, #-2147483647
	cmp r1, #1
	beq label22
	b label10
label16:
	sub r0, r7, #2
	asr r1, r5, #31
	cmp r0, #2
	add r1, r5, r1, lsr #29
	asr r8, r1, #3
	blo label19
	asr r0, r5, #31
	add r0, r5, r0, lsr #28
	asr r1, r0, #4
	mov r0, r4
	bl multiply
	movw r1, #51217
	movt r1, #4405
	lsl r0, r0, #1
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	and r1, r8, #-2147483647
	cmp r1, #1
	bne label20
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label20
label23:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label5
label22:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label10
label19:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label20
label7:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label24
label12:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label5
.p2align 4
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label403
	mov r0, #1
label405:
	add sp, sp, #4
	pop { r4, r5, pc }
label403:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label405
	mov r1, r4
	bl multiply
	b label405
.p2align 4
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	mov r8, r1
	mov r7, r0
	sub sp, sp, #20
	mov r1, r3
	str r3, [sp, #0]
	str r0, [sp, #4]
	add r0, r2, r2, lsr #31
	str r8, [sp, #8]
	asr r4, r0, #1
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	beq label223
	mov r1, #0
	cmp r2, r1
	bgt label243
label226:
	cmp r2, #0
	ble label227
	cmp r2, #4
	ble label232
	ldr r8, [sp, #8]
	sub r9, r2, #4
	mov r1, r0
	mov r10, #0
	add r6, r8, #3
	add r5, r8, #2
	add r3, r8, #1
.p2align 4
label238:
	ldr r8, [sp, #8]
	ldr r11, [r1, #0]
	ldr r7, [sp, #4]
	add r8, r8, r10
	str r11, [r7, r8, lsl #2]
	add r11, r3, r10
	ldr r8, [r1, #4]
	str r8, [r7, r11, lsl #2]
	add r11, r5, r10
	ldr r8, [r1, #8]
	str r8, [r7, r11, lsl #2]
	add r11, r6, r10
	ldr r8, [r1, #12]
	add r10, r10, #4
	cmp r9, r10
	str r8, [r7, r11, lsl #2]
	ble label330
	add r1, r1, #16
	b label238
.p2align 4
label243:
	ldr r8, [sp, #8]
	ands r5, r1, #1
	add r5, r1, r1, lsr #31
	asr r5, r5, #1
	add r3, r8, r1
	add r1, r1, #1
	beq label245
	add r5, r4, r5
	ldr r7, [sp, #4]
	ldr r3, [r7, r3, lsl #2]
	str r3, [r0, r5, lsl #2]
	cmp r2, r1
	bgt label243
	b label226
.p2align 4
label245:
	ldr r7, [sp, #4]
	ldr r3, [r7, r3, lsl #2]
	str r3, [r0, r5, lsl #2]
	cmp r2, r1
	bgt label243
	b label226
label223:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label232:
	mov r10, #0
label233:
	ldr r8, [sp, #8]
	ldr r3, [r0, #0]
	ldr r7, [sp, #4]
	add r1, r8, r10
	add r10, r10, #1
	str r3, [r7, r1, lsl #2]
	cmp r2, r10
	ble label227
	add r0, r0, #4
	b label233
label227:
	ldr r1, [sp, #0]
	mov r0, r1
	bl multiply
	ldr r8, [sp, #8]
	mov r6, r0
	ldr r7, [sp, #4]
	mov r0, r7
	mov r1, r8
	mov r2, r4
	mov r3, r6
	bl fft
	mov r0, r7
	add r5, r8, r4
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl fft
	cmp r4, #0
	bgt label269
	b label223
label330:
	add r0, r0, r10, lsl #2
	b label233
label269:
	mov r3, #0
	mov r6, #1
.p2align 4
label228:
	ldr r8, [sp, #8]
	ldr r7, [sp, #4]
	add r0, r8, r3
	add r9, r7, r0, lsl #2
	add r0, r5, r3
	ldr r8, [r9, #0]
	add r7, r7, r0, lsl #2
	ldr r1, [r7, #0]
	mov r0, r6
	bl multiply
	add r10, r8, r0
	movw r1, #51217
	movt r1, #4405
	sub r0, r8, r0
	smmul r2, r10, r1
	asr r11, r2, #26
	add r11, r11, r2, lsr #31
	movw r2, #1
	movt r2, #15232
	add r0, r0, r2
	mls r10, r11, r2, r10
	smmul r1, r0, r1
	str r10, [r9, #0]
	asr r8, r1, #26
	add r1, r8, r1, lsr #31
	mls r0, r1, r2, r0
	str r0, [r7, #0]
	ldr r1, [sp, #0]
	mov r0, r6
	bl multiply
	add r3, r3, #1
	cmp r4, r3
	ble label223
	mov r6, r0
	b label228
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #4
	mov r0, r4
	bl getarray
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mov r5, r0
	mov r0, r7
	bl getarray
	mov r6, r0
	mov r0, #60
	bl _sysy_starttime
	sub r0, r5, #1
	add r5, r6, r0
	cmp r5, #1
	ble label454
	mov r6, #1
	b label443
label429:
	mov r0, #998244352
	sdiv r8, r0, r6
	mov r0, #3
	mov r1, r8
	bl power
	mov r1, #0
	mov r9, r0
	mov r0, r4
	mov r2, r6
	mov r3, r9
	bl fft
	mov r1, #0
	mov r0, r7
	mov r2, r6
	mov r3, r9
	bl fft
	cmp r6, #0
	bgt label431
	b label436
.p2align 4
label443:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label443
	b label429
label431:
	mov r3, r4
	mov r9, #0
.p2align 4
label432:
	ldr r0, [r3, #0]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	add r9, r9, #1
	str r0, [r3, #0]
	cmp r6, r9
	ble label436
	add r3, r3, #4
	b label432
label436:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label442
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r4
	mov r3, r0
.p2align 4
label438:
	ldr r0, [r7, #0]
	mov r1, r3
	bl multiply
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r6, r8
	ble label442
	add r7, r7, #4
	b label438
label442:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label454:
	mov r6, #1
	b label429
