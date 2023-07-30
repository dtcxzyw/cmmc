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
	push { r4, r5, r6, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	bne label2
	mov r0, #0
	b label12
label2:
	cmp r5, #1
	bne label4
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label12
label4:
	add r0, r5, #1
	cmp r0, #3
	bhs label8
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
	b label12
label8:
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
label10:
	asr r0, r5, #31
	add r0, r5, r0, lsr #30
	asr r1, r0, #2
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
	and r1, r6, #-2147483647
	cmp r1, #1
	beq label11
	b label5
label12:
	pop { r4, r5, r6, pc }
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
	b label12
label11:
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
	movs r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label290
	mov r0, #1
label288:
	add sp, sp, #4
	pop { r4, r5, pc }
label290:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label288
	mov r1, r4
	bl multiply
	b label288
fft:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	mov r8, r1
	mov r7, r0
	sub sp, sp, #20
	mov r1, r3
	str r3, [sp, #8]
	str r0, [sp, #4]
	add r0, r2, r2, lsr #31
	str r8, [sp, #0]
	asr r4, r0, #1
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	beq label128
	mov r1, #0
	cmp r2, r1
	bgt label114
	cmp r2, #0
	bgt label118
	b label124
.p2align 4
label114:
	ands r3, r1, #1
	beq label116
	add r3, r1, r1, lsr #31
	ldr r8, [sp, #0]
	ldr r7, [sp, #4]
	asr r3, r3, #1
	add r3, r4, r3
	add r5, r8, r1
	add r1, r1, #1
	ldr r5, [r7, r5, lsl #2]
	str r5, [r0, r3, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	bgt label118
	b label124
.p2align 4
label116:
	ldr r8, [sp, #0]
	add r5, r1, r1, lsr #31
	ldr r7, [sp, #4]
	asr r5, r5, #1
	add r3, r8, r1
	add r1, r1, #1
	ldr r3, [r7, r3, lsl #2]
	str r3, [r0, r5, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	ble label124
label118:
	cmp r2, #4
	bgt label119
	mov r1, #0
	b label122
label128:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label120:
	ldr r8, [sp, #0]
	add r10, r8, r1
	add r8, r0, r1, lsl #2
	ldr r11, [r8, #0]
	ldr r7, [sp, #4]
	str r11, [r7, r10, lsl #2]
	add r11, r3, r1
	ldr r10, [r8, #4]
	str r10, [r7, r11, lsl #2]
	add r11, r5, r1
	ldr r10, [r8, #8]
	str r10, [r7, r11, lsl #2]
	add r10, r6, r1
	ldr r8, [r8, #12]
	add r1, r1, #4
	cmp r9, r1
	str r8, [r7, r10, lsl #2]
	bgt label120
label122:
	ldr r8, [sp, #0]
	ldr r5, [r0, r1, lsl #2]
	ldr r7, [sp, #4]
	add r3, r8, r1
	add r1, r1, #1
	str r5, [r7, r3, lsl #2]
	cmp r2, r1
	bgt label122
label124:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r8, [sp, #0]
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
	ble label128
	mov r3, #0
	mov r6, #1
.p2align 4
label125:
	ldr r8, [sp, #0]
	ldr r7, [sp, #4]
	add r0, r8, r3
	add r8, r7, r0, lsl #2
	add r0, r5, r3
	ldr r9, [r8, #0]
	add r7, r7, r0, lsl #2
	ldr r1, [r7, #0]
	mov r0, r6
	bl multiply
	movw r1, #51217
	add r10, r9, r0
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
	ldr r1, [sp, #8]
	mov r0, r6
	bl multiply
	add r3, r3, #1
	cmp r4, r3
	ble label128
	mov r6, r0
	b label125
label119:
	ldr r8, [sp, #0]
	sub r9, r2, #4
	mov r1, #0
	add r6, r8, #3
	add r5, r8, #2
	add r3, r8, #1
	b label120
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
	bgt label333
	mov r6, #1
	b label312
label333:
	mov r6, #1
	b label321
label312:
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
	ble label316
	mov r3, #0
.p2align 4
label314:
	add r9, r4, r3, lsl #2
	ldr r0, [r9, #0]
	ldr r1, [r7, r3, lsl #2]
	bl multiply
	add r3, r3, #1
	str r0, [r9, #0]
	cmp r6, r3
	bgt label314
label316:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	bgt label317
	b label320
.p2align 4
label321:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label321
	b label312
.p2align 4
label318:
	add r8, r4, r7, lsl #2
	ldr r0, [r8, #0]
	mov r1, r3
	bl multiply
	add r7, r7, #1
	str r0, [r8, #0]
	cmp r6, r7
	bgt label318
label320:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label317:
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, #0
	mov r3, r0
	b label318
