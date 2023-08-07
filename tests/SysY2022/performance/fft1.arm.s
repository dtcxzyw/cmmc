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
	bhs label10
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
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
label10:
	add r0, r5, #3
	cmp r0, #7
	blo label61
	sub r0, r5, #4
	asr r1, r5, #31
	cmp r0, #4
	add r1, r5, r1, lsr #30
	asr r7, r1, #2
	blo label23
	add r0, r7, #1
	cmp r0, #3
	bhs label19
	mov r0, #0
label16:
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
	beq label18
	b label11
label61:
	mov r0, #0
label11:
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
	beq label13
	b label5
label19:
	sub r0, r7, #2
	asr r1, r5, #31
	cmp r0, #2
	add r1, r5, r1, lsr #29
	asr r8, r1, #3
	bhs label20
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label16
label20:
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
	bne label16
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label16
label13:
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
label23:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label11
label18:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label11
.p2align 4
power:
	push { r4, r5, lr }
	movs r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label404
	mov r0, #1
label402:
	add sp, sp, #4
	pop { r4, r5, pc }
label404:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label402
	mov r1, r4
	bl multiply
	b label402
.p2align 4
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, r1
	mov r7, r0
	cmp r2, #1
	sub sp, sp, #20
	mov r1, r3
	str r3, [sp, #0]
	str r0, [sp, #4]
	str r8, [sp, #8]
	beq label245
	add r0, r2, r2, lsr #31
	cmp r2, #0
	asr r4, r0, #1
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	ble label241
	mov r1, #0
.p2align 4
label224:
	ldr r8, [sp, #8]
	ands r5, r1, #1
	add r5, r1, r1, lsr #31
	asr r5, r5, #1
	add r3, r8, r1
	beq label227
	add r5, r4, r5
	ldr r7, [sp, #4]
	add r1, r1, #1
	cmp r2, r1
	ldr r3, [r7, r3, lsl #2]
	str r3, [r0, r5, lsl #2]
	bgt label224
	b label229
.p2align 4
label227:
	ldr r7, [sp, #4]
	ldr r3, [r7, r3, lsl #2]
	str r3, [r0, r5, lsl #2]
	add r1, r1, #1
	cmp r2, r1
	bgt label224
label229:
	cmp r2, #4
	ble label230
	ldr r8, [sp, #8]
	sub r9, r2, #4
	mov r1, r0
	mov r10, #0
	add r6, r8, #3
	add r5, r8, #2
	add r3, r8, #1
.p2align 4
label236:
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
	ble label323
	add r1, r1, #16
	b label236
label245:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label230:
	mov r10, #0
label231:
	ldr r8, [sp, #8]
	ldr r3, [r0, #0]
	ldr r7, [sp, #4]
	add r1, r8, r10
	add r10, r10, #1
	str r3, [r7, r1, lsl #2]
	cmp r2, r10
	ble label241
	add r0, r0, #4
	b label231
label241:
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
	ble label245
	mov r3, #0
	mov r6, #1
.p2align 4
label242:
	ldr r8, [sp, #8]
	ldr r7, [sp, #4]
	add r0, r8, r3
	add r8, r7, r0, lsl #2
	add r0, r5, r3
	ldr r9, [r8, #0]
	add r7, r7, r0, lsl #2
	ldr r1, [r7, #0]
	mov r0, r6
	bl multiply
	add r10, r9, r0
	movw r1, #51217
	movt r1, #4405
	sub r0, r9, r0
	smmul r2, r10, r1
	asr r11, r2, #26
	add r11, r11, r2, lsr #31
	movw r2, #1
	movt r2, #15232
	add r0, r0, r2
	mls r10, r11, r2, r10
	smmul r1, r0, r1
	str r10, [r8, #0]
	asr r8, r1, #26
	add r1, r8, r1, lsr #31
	mls r0, r1, r2, r0
	str r0, [r7, #0]
	ldr r1, [sp, #0]
	mov r0, r6
	bl multiply
	add r3, r3, #1
	cmp r4, r3
	ble label245
	mov r6, r0
	b label242
label323:
	add r0, r0, r10, lsl #2
	b label231
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
	ble label453
	mov r6, #1
	b label442
label428:
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
	bgt label430
	b label435
.p2align 4
label442:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label442
	b label428
label430:
	mov r3, r4
	mov r9, #0
.p2align 4
label431:
	ldr r0, [r3, #0]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	add r9, r9, #1
	str r0, [r3, #0]
	cmp r6, r9
	ble label435
	add r3, r3, #4
	b label431
label435:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label441
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r4
	mov r3, r0
.p2align 4
label437:
	ldr r0, [r7, #0]
	mov r1, r3
	bl multiply
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r6, r8
	ble label441
	add r7, r7, #4
	b label437
label441:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label453:
	mov r6, #1
	b label428
