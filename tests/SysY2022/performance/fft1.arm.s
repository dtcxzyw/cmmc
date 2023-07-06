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
	push { r4, r5, r6, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	bne label4
	mov r0, #0
label2:
	pop { r4, r5, r6, pc }
label4:
	cmp r5, #1
	bne label6
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label2
label89:
	mov r0, #0
	b label7
label6:
	add r0, r5, r5, lsr #31
	asr r6, r0, #1
	cmp r6, #0
	bne label10
	b label89
label7:
	lsl r0, r0, #1
	movw r1, #1
	movw r2, #51217
	movt r1, #15232
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label2
	add r0, r4, r0
	movw r1, #1
	movw r2, #51217
	movt r1, #15232
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	b label2
label10:
	cmp r6, #1
	bne label12
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label7
label12:
	asr r0, r5, #31
	add r0, r5, r0, lsr #30
	asr r1, r0, #2
	mov r0, r4
	bl multiply
	movw r2, #51217
	movw r1, #1
	lsl r0, r0, #1
	movt r2, #4405
	movt r1, #15232
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	and r1, r6, #-2147483647
	cmp r1, #1
	bne label7
	add r0, r4, r0
	movw r1, #1
	movw r2, #51217
	movt r1, #15232
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	b label7
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label365
	mov r0, #1
label363:
	add sp, sp, #4
	pop { r4, r5, pc }
label365:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label363
	mov r1, r4
	bl multiply
	b label363
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	mov r5, r0
	mov r8, r1
	sub sp, sp, #20
	mov r1, r3
	str r3, [sp, #8]
	str r0, [sp, #4]
	str r8, [sp, #0]
	bne label93
	b label92
label93:
	add r0, r2, r2, lsr #31
	mov r1, #0
	asr r7, r0, #1
	movw r0, #:lower16:temp
	str r7, [sp, #12]
	movt r0, #:upper16:temp
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	ldr r8, [sp, #0]
	add r4, r1, r1, lsr #31
	ldr r5, [sp, #4]
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	b label343
label99:
	cmp r2, #0
	ble label100
	mov r1, #0
	add r3, r1, #4
	cmp r2, r3
	ble label107
label115:
	ldr r8, [sp, #0]
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r6, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #4]
	add r6, r1, #1
	add r6, r8, r6
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #8]
	add r6, r1, #2
	add r1, r1, #3
	add r6, r8, r6
	add r1, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r2, r3
	ble label107
	b label115
label100:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r8, [sp, #0]
	mov r4, r0
	ldr r5, [sp, #4]
	ldr r7, [sp, #12]
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl fft
	mov r0, r5
	add r1, r8, r7
	mov r2, r7
	mov r3, r4
	bl fft
	mov r4, #0
	mov r6, #1
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label92
label104:
	ldr r7, [sp, #12]
	ldr r8, [sp, #0]
	ldr r5, [sp, #4]
	add r0, r7, r4
	add r7, r8, r0
	add r8, r8, r4
	ldr r9, [r5, r8, lsl #2]
	ldr r1, [r5, r7, lsl #2]
	mov r0, r6
	bl multiply
	mov r1, r0
	add r3, r9, r0
	movw r2, #51217
	sub r1, r9, r0
	movw r0, #1
	movt r2, #4405
	movt r0, #15232
	smmul r10, r3, r2
	add r1, r1, r0
	smmul r2, r1, r2
	asr r11, r10, #26
	add r10, r11, r10, lsr #31
	mls r3, r10, r0, r3
	str r3, [r5, r8, lsl #2]
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r0, r1
	str r0, [r5, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r6
	bl multiply
	mov r6, r0
	add r4, r4, #1
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label92
	b label104
label97:
	add r3, r1, r1, lsr #31
	ldr r7, [sp, #12]
	ldr r8, [sp, #0]
	asr r3, r3, #1
	ldr r5, [sp, #4]
	add r3, r7, r3
	add r4, r8, r1
	add r1, r1, #1
	ldr r4, [r5, r4, lsl #2]
	str r4, [r0, r3, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
label343:
	ldr r8, [sp, #0]
	add r4, r1, r1, lsr #31
	ldr r5, [sp, #4]
	asr r4, r4, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	ble label99
	ands r3, r1, #1
	bne label97
	b label343
label107:
	add r3, r1, #4
	cmp r2, r3
	ble label109
	b label114
label109:
	add r3, r1, #4
	cmp r2, r3
	ble label111
	b label113
label111:
	ldr r8, [sp, #0]
	ldr r4, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	ldr r4, [r0, r1, lsl #2]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
label353:
	ldr r8, [sp, #0]
	ldr r4, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r3, r8, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	ble label100
	b label353
label114:
	ldr r8, [sp, #0]
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r6, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #4]
	add r6, r1, #1
	add r6, r8, r6
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #8]
	add r6, r1, #2
	add r1, r1, #3
	add r6, r8, r6
	add r1, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r2, r3
	ble label109
	b label114
label113:
	ldr r8, [sp, #0]
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r6, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #4]
	add r6, r1, #1
	add r6, r8, r6
	str r7, [r5, r6, lsl #2]
	ldr r7, [r4, #8]
	add r6, r1, #2
	add r1, r1, #3
	add r6, r8, r6
	add r1, r8, r1
	str r7, [r5, r6, lsl #2]
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	add r3, r3, #4
	cmp r2, r3
	ble label111
	b label113
label92:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r0, #:lower16:a
	sub sp, sp, #4
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
	ble label406
	mov r6, #1
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	b label507
label406:
	mov r6, #1
	b label385
label507:
	lsl r6, r6, #1
	cmp r5, r6
	ble label385
	b label507
label385:
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
	ble label389
	mov r9, #0
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
label504:
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label389
	b label504
label389:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label393
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r0
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
label506:
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label393
	b label506
label393:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
