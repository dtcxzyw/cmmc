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
	beq label25
	add r0, r1, #1
	cmp r0, #3
	bhs label9
	mov r0, #0
label6:
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
	beq label8
	b label2
label30:
	mov r0, #0
label2:
	pop { r4, r5, r6, r7, r8, pc }
label9:
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
	b label6
label10:
	add r0, r5, #3
	cmp r0, #7
	blo label59
	sub r0, r5, #4
	asr r1, r5, #31
	cmp r0, #4
	add r1, r5, r1, lsr #30
	asr r7, r1, #2
	bhs label12
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label21
label59:
	mov r0, #0
label21:
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
	beq label23
	b label6
label12:
	add r0, r7, #1
	cmp r0, #3
	blo label70
	sub r0, r7, #2
	asr r1, r5, #31
	cmp r0, #2
	add r1, r5, r1, lsr #29
	asr r8, r1, #3
	blo label16
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
	beq label15
	b label17
label70:
	mov r0, #0
label17:
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
	beq label19
	b label21
label23:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label6
label15:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label17
label19:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label21
label16:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label17
label8:
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label2
label25:
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label2
.p2align 4
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label533
	mov r0, #1
label531:
	add sp, sp, #4
	pop { r4, r5, pc }
label533:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label531
	mov r1, r4
	bl multiply
	b label531
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
	str r8, [sp, #8]
	beq label221
	add r0, r2, r2, lsr #31
	cmp r2, #0
	asr r4, r0, #1
	ble label223
	sub r6, r2, #4
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	cmp r2, #4
	add r5, r8, #3
	add r3, r8, #2
	add r1, r8, #1
	ble label305
	mov r9, #0
.p2align 4
label245:
	ldr r8, [sp, #8]
	ands r7, r9, #1
	add r7, r9, r9, lsr #31
	asr r10, r7, #1
	add r8, r8, r9
	beq label258
	add r10, r4, r10
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	add r8, r1, r9
	add r7, r9, #1
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	beq label256
	b label248
label250:
	add r10, r4, r10
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	add r8, r5, r9
	str r7, [r0, r10, lsl #2]
	add r7, r9, #3
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	bne label253
label254:
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	add r9, r9, #4
	cmp r6, r9
	bgt label245
	b label228
label248:
	add r10, r4, r10
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	add r8, r3, r9
	add r7, r9, #2
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	bne label250
label251:
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	add r8, r5, r9
	add r7, r9, #3
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	beq label254
label253:
	add r10, r4, r10
	ldr r7, [sp, #4]
	add r9, r9, #4
	cmp r6, r9
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	bgt label245
	b label228
label256:
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	add r8, r3, r9
	str r7, [r0, r10, lsl #2]
	add r7, r9, #2
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	beq label251
	b label250
label258:
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	add r8, r1, r9
	str r7, [r0, r10, lsl #2]
	add r7, r9, #1
	ands r10, r7, #1
	add r7, r7, r7, lsr #31
	asr r10, r7, #1
	beq label256
	b label248
label228:
	ldr r8, [sp, #8]
	ands r7, r9, #1
	add r7, r9, r9, lsr #31
	asr r10, r7, #1
	add r8, r8, r9
	beq label244
	b label312
label230:
	add r9, r9, #1
	cmp r2, r9
	bgt label228
	b label231
label244:
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	b label230
label221:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label231:
	cmp r2, #4
	ble label320
	mov r9, r0
	mov r10, #0
.p2align 4
label233:
	ldr r8, [sp, #8]
	ldr r11, [r9, #0]
	ldr r7, [sp, #4]
	add r8, r8, r10
	str r11, [r7, r8, lsl #2]
	add r11, r1, r10
	ldr r8, [r9, #4]
	str r8, [r7, r11, lsl #2]
	add r11, r3, r10
	ldr r8, [r9, #8]
	str r8, [r7, r11, lsl #2]
	add r11, r5, r10
	ldr r8, [r9, #12]
	add r10, r10, #4
	cmp r6, r10
	str r8, [r7, r11, lsl #2]
	ble label236
	add r9, r9, #16
	b label233
label236:
	add r0, r0, r10, lsl #2
label238:
	ldr r8, [sp, #8]
	ldr r3, [r0, #0]
	ldr r7, [sp, #4]
	add r1, r8, r10
	add r10, r10, #1
	str r3, [r7, r1, lsl #2]
	cmp r2, r10
	ble label223
	add r0, r0, #4
	b label238
label223:
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
	ble label221
	mov r3, #0
	mov r6, #1
.p2align 4
label224:
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
	ble label221
	mov r6, r0
	b label224
label312:
	add r10, r4, r10
	ldr r7, [sp, #4]
	ldr r7, [r7, r8, lsl #2]
	str r7, [r0, r10, lsl #2]
	b label230
label305:
	mov r9, #0
	b label228
label320:
	mov r10, #0
	b label238
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
	ble label582
	mov r6, #1
	b label571
label557:
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
	bgt label559
	b label564
.p2align 4
label571:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label571
	b label557
label559:
	mov r3, r4
	mov r9, #0
.p2align 4
label560:
	ldr r0, [r3, #0]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	add r9, r9, #1
	str r0, [r3, #0]
	cmp r6, r9
	ble label564
	add r3, r3, #4
	b label560
label564:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label570
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r4
	mov r3, r0
.p2align 4
label566:
	ldr r0, [r7, #0]
	mov r1, r3
	bl multiply
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r6, r8
	ble label570
	add r7, r7, #4
	b label566
label570:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label582:
	mov r6, #1
	b label557
