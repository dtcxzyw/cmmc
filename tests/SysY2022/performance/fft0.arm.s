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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r1, #0
	mov r4, r1
	sub sp, sp, #12
	str r0, [sp, #0]
	beq label54
	cmp r1, #1
	bne label6
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label2
label54:
	mov r0, #0
label2:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label6:
	add r0, r4, #1
	cmp r0, #3
	blo label64
	sub r0, r4, #2
	add r1, r4, r4, lsr #31
	cmp r0, #2
	asr r5, r1, #1
	bhs label12
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label7
label64:
	mov r0, #0
label7:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r4, #-2147483647
	cmp r0, #1
	bne label70
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label2
label12:
	add r0, r4, #3
	cmp r0, #7
	blo label85
	sub r0, r4, #4
	asr r1, r4, #31
	cmp r0, #4
	add r1, r4, r1, lsr #30
	asr r6, r1, #2
	bhs label18
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label13
label85:
	mov r0, #0
label13:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r5, #-2147483647
	cmp r0, #1
	beq label15
	mov r0, r1
	b label7
label18:
	add r0, r6, #1
	cmp r0, #3
	blo label106
	sub r0, r6, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #29
	asr r7, r1, #3
	blo label49
	add r0, r4, #15
	asr r1, r4, #31
	cmp r0, #31
	add r1, r4, r1, lsr #28
	asr r8, r1, #4
	bhs label24
	mov r0, #0
label46:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r7, #-2147483647
	cmp r0, #1
	beq label48
	mov r0, r1
	b label19
label106:
	mov r0, #0
label19:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r6, #-2147483647
	cmp r0, #1
	beq label21
	mov r0, r1
	b label13
label24:
	sub r0, r4, #16
	cmp r0, #16
	bhs label26
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label46
label26:
	add r0, r8, #1
	cmp r0, #3
	bhs label27
	mov r0, #0
label43:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r8, #-2147483647
	cmp r0, #1
	beq label45
	mov r0, r1
	b label46
label27:
	sub r0, r8, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #27
	asr r9, r1, #5
	blo label42
	add r0, r8, #3
	cmp r0, #7
	bhs label32
	mov r0, #0
	b label29
label176:
	mov r0, r1
label29:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r9, #-2147483647
	cmp r0, #1
	bne label155
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label43
label32:
	sub r0, r8, #4
	asr r1, r4, #31
	cmp r0, #4
	add r1, r4, r1, lsr #26
	asr r10, r1, #6
	blo label33
	add r0, r10, #1
	cmp r0, #3
	bhs label38
	mov r0, #0
	b label35
label38:
	sub r0, r10, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #25
	asr r11, r1, #7
	blo label41
	asr r0, r4, #31
	add r0, r4, r0, lsr #24
	asr r1, r0, #8
	ldr r0, [sp, #0]
	bl multiply
	movw r1, #51217
	movt r1, #4405
	lsl r0, r0, #1
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r11, #-2147483647
	cmp r0, #1
	beq label40
	mov r0, r1
label35:
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r1, r1, r2, r0
	and r0, r10, #-2147483647
	cmp r0, #1
	bne label176
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label29
label42:
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label43
label155:
	mov r0, r1
	b label43
label15:
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label7
label40:
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label35
label41:
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label35
label33:
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label29
label45:
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label46
label49:
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label19
label48:
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label19
label21:
	ldr r0, [sp, #0]
	add r0, r0, r1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label13
label70:
	mov r0, r1
	b label2
.p2align 4
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label623
	mov r0, #1
label621:
	add sp, sp, #4
	pop { r4, r5, pc }
label623:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label621
	mov r1, r4
	bl multiply
	b label621
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
	beq label442
	add r0, r2, r2, lsr #31
	sub r1, r2, #4
	cmp r2, #0
	asr r4, r0, #1
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	add r3, r0, r4, lsl #2
	ble label461
	mov r5, #0
	b label444
.p2align 4
label574:
	mov r6, r0
.p2align 4
label463:
	ldr r8, [sp, #8]
	ldr r7, [sp, #4]
	add r0, r8, r5
	add r8, r7, r0, lsl #2
	add r7, r3, r0, lsl #2
	ldr r9, [r8, #0]
	ldr r1, [r7, #0]
	mov r0, r6
	bl multiply
	movw r1, #51217
	movt r1, #4405
	add r10, r9, r0
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
	add r5, r5, #1
	cmp r4, r5
	bgt label574
label442:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label446:
	ldr r7, [sp, #4]
	add r5, r5, #1
	cmp r2, r5
	ldr r6, [r7, r6, lsl #2]
	str r6, [r3, r8, lsl #2]
	ble label449
.p2align 4
label444:
	ldr r8, [sp, #8]
	ands r7, r5, #1
	add r7, r5, r5, lsr #31
	add r6, r8, r5
	asr r8, r7, #1
	bne label446
	ldr r7, [sp, #4]
	ldr r6, [r7, r6, lsl #2]
	str r6, [r0, r8, lsl #2]
	add r5, r5, #1
	cmp r2, r5
	bgt label444
label449:
	cmp r2, #4
	ble label450
	ldr r8, [sp, #8]
	mov r10, #0
	ldr r7, [sp, #4]
	add r3, r8, #1
	add r5, r7, r3, lsl #2
	mov r3, r0
	add r9, r5, #8
	add r6, r5, #4
	b label456
.p2align 4
label459:
	add r3, r3, #16
.p2align 4
label456:
	ldr r8, [sp, #8]
	ldr r11, [r3, #0]
	ldr r7, [sp, #4]
	add r8, r8, r10
	str r11, [r7, r8, lsl #2]
	ldr r7, [r3, #4]
	str r7, [r5, r10, lsl #2]
	ldr r7, [r3, #8]
	str r7, [r6, r10, lsl #2]
	ldr r7, [r3, #12]
	str r7, [r9, r10, lsl #2]
	add r10, r10, #4
	cmp r1, r10
	bgt label459
	add r0, r0, r10, lsl #2
	b label451
label454:
	add r0, r0, #4
label451:
	ldr r8, [sp, #8]
	ldr r3, [r0, #0]
	ldr r7, [sp, #4]
	add r1, r8, r10
	add r10, r10, #1
	str r3, [r7, r1, lsl #2]
	cmp r2, r10
	bgt label454
label461:
	ldr r1, [sp, #0]
	mov r0, r1
	bl multiply
	ldr r8, [sp, #8]
	mov r5, r0
	ldr r7, [sp, #4]
	mov r0, r7
	mov r1, r8
	mov r2, r4
	mov r3, r5
	bl fft
	mov r0, r7
	add r1, r8, r4
	mov r2, r4
	mov r3, r5
	bl fft
	cmp r4, #0
	ble label442
	ldr r7, [sp, #4]
	mov r5, #0
	mov r6, #1
	add r3, r7, r4, lsl #2
	b label463
label450:
	mov r10, #0
	b label451
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
	ble label672
	mov r6, #1
.p2align 4
label661:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label661
label647:
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
	ble label654
	mov r3, r4
	mov r9, #0
.p2align 4
label650:
	ldr r0, [r3, #0]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	add r9, r9, #1
	str r0, [r3, #0]
	cmp r6, r9
	ble label654
	add r3, r3, #4
	b label650
label654:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label660
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r4
	mov r3, r0
	b label656
.p2align 4
label659:
	add r7, r7, #4
.p2align 4
label656:
	ldr r0, [r7, #0]
	mov r1, r3
	bl multiply
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r6, r8
	bgt label659
label660:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label672:
	mov r6, #1
	b label647
