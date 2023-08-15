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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
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
	blo label49
	add r0, r4, #3
	cmp r0, #7
	bhs label15
	mov r0, #0
label12:
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
	beq label14
	mov r0, r1
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
	beq label9
	mov r0, r1
	b label2
label15:
	sub r0, r4, #4
	asr r1, r4, #31
	cmp r0, #4
	add r1, r4, r1, lsr #30
	asr r6, r1, #2
	bhs label17
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label12
label17:
	add r0, r6, #1
	cmp r0, #3
	bhs label18
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
	and r0, r6, #-2147483647
	cmp r0, #1
	beq label48
	mov r0, r1
	b label12
label18:
	sub r0, r6, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #29
	asr r7, r1, #3
	bhs label19
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
label19:
	add r0, r4, #15
	asr r1, r4, #31
	cmp r0, #31
	add r1, r4, r1, lsr #28
	asr r8, r1, #4
	bhs label20
	mov r0, #0
label42:
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
	beq label44
	mov r0, r1
	b label46
label20:
	sub r0, r4, #16
	cmp r0, #16
	bhs label22
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label42
label22:
	add r0, r8, #1
	cmp r0, #3
	bhs label23
	mov r0, #0
label39:
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
	bne label194
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
	b label42
label23:
	sub r0, r8, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #27
	asr r9, r1, #5
	bhs label24
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label39
label24:
	add r0, r8, #3
	cmp r0, #7
	bhs label28
	mov r0, #0
	b label25
label166:
	mov r0, r1
label25:
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
	beq label27
	mov r0, r1
	b label39
label28:
	sub r0, r8, #4
	asr r1, r4, #31
	cmp r0, #4
	add r1, r4, r1, lsr #26
	asr r10, r1, #6
	blo label29
	add r0, r10, #1
	cmp r0, #3
	blo label160
	sub r0, r10, #2
	asr r1, r4, #31
	cmp r0, #2
	add r1, r4, r1, lsr #25
	asr r11, r1, #7
	bhs label35
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label31
label160:
	mov r0, #0
label31:
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
	bne label166
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
	b label25
label35:
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
	beq label36
	mov r0, r1
	b label31
label194:
	mov r0, r1
	b label42
label27:
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
	b label39
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
	b label12
label36:
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
	b label31
label44:
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
label29:
	movw r1, #51217
	movt r1, #4405
	ldr r0, [sp, #0]
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	b label25
label14:
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
label9:
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
	b label7
.p2align 4
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label627
	mov r0, #1
label625:
	add sp, sp, #4
	pop { r4, r5, pc }
label627:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label625
	mov r1, r4
	bl multiply
	b label625
.p2align 4
fft:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	mov r8, r1
	mov r7, r0
	sub sp, sp, #20
	mov r1, r3
	str r3, [sp, #0]
	str r0, [sp, #4]
	str r8, [sp, #8]
	beq label444
	add r0, r2, r2, lsr #31
	sub r1, r2, #3
	cmp r2, #0
	asr r4, r0, #1
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	add r3, r0, r4, lsl #2
	ble label464
	mov r5, #0
	b label446
.p2align 4
label577:
	mov r6, r0
.p2align 4
label466:
	ldr r8, [sp, #8]
	ldr r7, [sp, #4]
	add r0, r8, r5
	add r9, r7, r0, lsl #2
	add r7, r3, r0, lsl #2
	ldr r8, [r9, #0]
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
	add r5, r5, #1
	cmp r4, r5
	bgt label577
label444:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label448:
	ldr r7, [sp, #4]
	add r5, r5, #1
	cmp r2, r5
	ldr r6, [r7, r6, lsl #2]
	str r6, [r3, r8, lsl #2]
	ble label451
.p2align 4
label446:
	ands r6, r5, #1
	ldr r8, [sp, #8]
	add r7, r5, r5, lsr #31
	add r6, r8, r5
	asr r8, r7, #1
	bne label448
	ldr r7, [sp, #4]
	ldr r6, [r7, r6, lsl #2]
	str r6, [r0, r8, lsl #2]
	add r5, r5, #1
	cmp r2, r5
	bgt label446
label451:
	cmp r2, #3
	ble label510
	ldr r8, [sp, #8]
	mov r6, #0
	ldr r7, [sp, #4]
	add r3, r8, #1
	add r5, r7, r3, lsl #2
	mov r3, r0
	b label460
.p2align 4
label463:
	add r3, r3, #16
.p2align 4
label460:
	ldr r8, [sp, #8]
	ldr r9, [r3, #0]
	ldr r7, [sp, #4]
	add r8, r8, r6
	str r9, [r7, r8, lsl #2]
	ldr r8, [r3, #4]
	add r7, r5, r6, lsl #2
	add r6, r6, #4
	cmp r1, r6
	str r8, [r7, #0]
	ldr r8, [r3, #8]
	str r8, [r7, #4]
	ldr r8, [r3, #12]
	str r8, [r7, #8]
	bgt label463
label452:
	cmp r2, r6
	ble label464
	add r0, r0, r6, lsl #2
	mov r1, r6
	b label455
label458:
	add r0, r0, #4
label455:
	ldr r8, [sp, #8]
	ldr r5, [r0, #0]
	ldr r7, [sp, #4]
	add r3, r8, r1
	add r1, r1, #1
	str r5, [r7, r3, lsl #2]
	cmp r2, r1
	bgt label458
label464:
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
	ble label444
	ldr r7, [sp, #4]
	mov r5, #0
	mov r6, #1
	add r3, r7, r4, lsl #2
	b label466
label510:
	mov r6, #0
	b label452
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
	ble label676
	mov r6, #1
.p2align 4
label665:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label665
label651:
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
	ble label658
	mov r3, r4
	mov r9, #0
.p2align 4
label654:
	ldr r0, [r3, #0]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	add r9, r9, #1
	str r0, [r3, #0]
	cmp r6, r9
	ble label658
	add r3, r3, #4
	b label654
label658:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label664
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, r4
	mov r8, #0
	mov r3, r0
	b label660
.p2align 4
label663:
	add r7, r7, #4
.p2align 4
label660:
	ldr r0, [r7, #0]
	mov r1, r3
	bl multiply
	add r8, r8, #1
	str r0, [r7, #0]
	cmp r6, r8
	bgt label663
label664:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label676:
	mov r6, #1
	b label651
