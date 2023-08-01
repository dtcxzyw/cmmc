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
multiply:
.p2align 4
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
	bhs label10
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
	and r1, r6, #-2147483647
	cmp r1, #1
	beq label22
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
	sub r0, r5, #4
	asr r1, r5, #31
	cmp r0, #4
	add r1, r5, r1, lsr #30
	asr r7, r1, #2
	bhs label11
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label20
label11:
	add r0, r7, #1
	cmp r0, #3
	bhs label12
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
	b label20
label12:
	sub r0, r7, #2
	asr r1, r5, #31
	cmp r0, #2
	add r1, r5, r1, lsr #29
	asr r8, r1, #3
	blo label15
	asr r0, r5, #31
	add r0, r5, r0, lsr #28
	asr r1, r0, #4
	mov r0, r4
	bl multiply
	movw r1, #51217
	lsl r0, r0, #1
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	and r1, r8, #-2147483647
	cmp r1, #1
	beq label14
	b label16
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
	b label20
label14:
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
label15:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label16
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
	b label5
power:
.p2align 4
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label428
	mov r0, #1
label426:
	add sp, sp, #4
	pop { r4, r5, pc }
label428:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label426
	mov r1, r4
	bl multiply
	b label426
fft:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r0
	mov r6, r1
	cmp r2, #1
	mov r9, r2
	sub sp, sp, #36
	movw r5, #:lower16:temp
	mov r1, r3
	str r2, [sp, #12]
	movt r5, #:upper16:temp
	str r0, [sp, #20]
	add r0, r2, r2, lsr #31
	str r3, [sp, #24]
	str r6, [sp, #28]
	asr r4, r0, #1
	str r4, [sp, #16]
	str r5, [sp, #8]
	beq label222
	mov r0, #0
	cmp r2, r0
	ble label228
.p2align 4
label225:
	ldr r6, [sp, #28]
	ands r2, r0, #1
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	add r1, r6, r0
	add r0, r0, #1
	beq label226
	ldr r4, [sp, #16]
	ldr r5, [sp, #20]
	add r2, r4, r2
	ldr r1, [r5, r1, lsl #2]
	ldr r5, [sp, #8]
	str r1, [r5, r2, lsl #2]
	ldr r9, [sp, #12]
	cmp r9, r0
	bgt label225
	b label228
.p2align 4
label226:
	ldr r5, [sp, #20]
	ldr r1, [r5, r1, lsl #2]
	ldr r5, [sp, #8]
	str r1, [r5, r2, lsl #2]
	ldr r9, [sp, #12]
	cmp r9, r0
	bgt label225
label228:
	ldr r9, [sp, #12]
	cmp r9, #0
	bgt label233
label229:
	ldr r1, [sp, #24]
	mov r0, r1
	bl multiply
	ldr r6, [sp, #28]
	mov r7, r0
	ldr r5, [sp, #20]
	ldr r4, [sp, #16]
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r7
	bl fft
	add r1, r6, r4
	str r1, [sp, #4]
	mov r0, r5
	mov r2, r4
	mov r3, r7
	bl fft
	cmp r4, #0
	bgt label281
	b label222
label233:
	ldr r9, [sp, #12]
	cmp r9, #8
	ble label304
	ldr r6, [sp, #28]
	mov r0, #0
	add r10, r6, #7
	add r8, r6, #6
	add r7, r6, #5
	add r4, r6, #4
	str r10, [sp, #0]
	add r3, r6, #3
	add r2, r6, #2
	add r1, r6, #1
	sub r9, r9, #8
label235:
	ldr r6, [sp, #28]
	ldr r5, [sp, #8]
	add r10, r6, r0
	add r6, r5, r0, lsl #2
	ldr r11, [r6, #0]
	ldr r5, [sp, #20]
	str r11, [r5, r10, lsl #2]
	add r11, r1, r0
	ldr r10, [r6, #4]
	str r10, [r5, r11, lsl #2]
	add r11, r2, r0
	ldr r10, [r6, #8]
	str r10, [r5, r11, lsl #2]
	add r11, r3, r0
	ldr r10, [r6, #12]
	str r10, [r5, r11, lsl #2]
	add r11, r4, r0
	ldr r10, [r6, #16]
	str r10, [r5, r11, lsl #2]
	add r11, r7, r0
	ldr r10, [r6, #20]
	str r10, [r5, r11, lsl #2]
	add r11, r8, r0
	ldr r10, [r6, #24]
	str r10, [r5, r11, lsl #2]
	ldr r6, [r6, #28]
	ldr r10, [sp, #0]
	add r10, r10, r0
	add r0, r0, #8
	str r6, [r5, r10, lsl #2]
	cmp r9, r0
	bgt label235
label237:
	ldr r6, [sp, #28]
	ldr r5, [sp, #8]
	add r1, r6, r0
	ldr r2, [r5, r0, lsl #2]
	add r0, r0, #1
	ldr r5, [sp, #20]
	str r2, [r5, r1, lsl #2]
	ldr r9, [sp, #12]
	cmp r9, r0
	bgt label237
	b label229
label281:
	mov r3, #0
	mov r4, #1
.p2align 4
label230:
	ldr r6, [sp, #28]
	ldr r5, [sp, #20]
	add r0, r6, r3
	add r6, r5, r0, lsl #2
	ldr r7, [r6, #0]
	ldr r1, [sp, #4]
	add r0, r1, r3
	add r5, r5, r0, lsl #2
	ldr r1, [r5, #0]
	mov r0, r4
	bl multiply
	mov r1, r0
	add r8, r7, r0
	sub r1, r7, r0
	movw r0, #51217
	movt r0, #4405
	smmul r2, r8, r0
	asr r9, r2, #26
	add r9, r9, r2, lsr #31
	movw r2, #1
	movt r2, #15232
	add r1, r1, r2
	mls r8, r9, r2, r8
	smmul r0, r1, r0
	str r8, [r6, #0]
	asr r6, r0, #26
	add r0, r6, r0, lsr #31
	mls r0, r0, r2, r1
	str r0, [r5, #0]
	ldr r1, [sp, #24]
	mov r0, r4
	bl multiply
	ldr r4, [sp, #16]
	add r3, r3, #1
	cmp r4, r3
	ble label222
	mov r4, r0
	b label230
label222:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label304:
	mov r0, #0
	b label237
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r4, #:lower16:a
	sub sp, sp, #4
	movt r4, #:upper16:a
	mov r0, r4
	bl getarray
	movw r7, #:lower16:b
	sub r5, r0, #1
	movt r7, #:upper16:b
	mov r0, r7
	bl getarray
	add r5, r5, r0
	mov r0, #60
	bl _sysy_starttime
	cmp r5, #1
	ble label472
	mov r6, #1
	b label461
label452:
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
	bgt label479
	b label456
.p2align 4
label461:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label461
	b label452
label479:
	mov r3, #0
.p2align 4
label454:
	add r9, r4, r3, lsl #2
	ldr r0, [r9, #0]
	ldr r1, [r7, r3, lsl #2]
	bl multiply
	add r3, r3, #1
	str r0, [r9, #0]
	cmp r6, r3
	bgt label454
label456:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label460
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, #0
	mov r3, r0
.p2align 4
label458:
	add r8, r4, r7, lsl #2
	ldr r0, [r8, #0]
	mov r1, r3
	bl multiply
	add r7, r7, #1
	str r0, [r8, #0]
	cmp r6, r7
	bgt label458
label460:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label472:
	mov r6, #1
	b label452
