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
.p2align 4
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
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label2
label6:
	add r0, r5, #1
	cmp r0, #3
	bhs label10
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
	mls r0, r1, r2, r0
	and r1, r5, #-2147483647
	cmp r1, #1
	beq label9
	b label2
label10:
	sub r0, r5, #2
	add r1, r5, r5, lsr #31
	cmp r0, #2
	asr r6, r1, #1
	bhs label12
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mls r0, r0, r1, r4
	b label7
label12:
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
	beq label13
	b label7
label9:
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
	b label7
power:
.p2align 4
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label286
	mov r0, #1
label284:
	add sp, sp, #4
	pop { r4, r5, pc }
label286:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label284
	mov r1, r4
	bl multiply
	b label284
fft:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r6, r0
	cmp r2, #1
	mov r7, r1
	str r3, [sp, #8]
	mov r1, r3
	str r0, [sp, #4]
	add r0, r2, r2, lsr #31
	str r7, [sp, #0]
	asr r5, r0, #1
	movw r0, #:lower16:temp
	str r5, [sp, #12]
	movt r0, #:upper16:temp
	beq label127
	mov r1, #0
	cmp r2, r1
	bgt label114
	cmp r2, #0
	add r5, r7, #3
	add r4, r7, #2
	add r3, r7, #1
	bgt label118
	b label123
.p2align 4
label114:
	ands r3, r1, #1
	bne label116
	ldr r7, [sp, #0]
	add r4, r1, r1, lsr #31
	ldr r6, [sp, #4]
	asr r4, r4, #1
	add r3, r7, r1
	add r1, r1, #1
	ldr r3, [r6, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	add r5, r7, #3
	add r4, r7, #2
	add r3, r7, #1
	bgt label118
	b label123
.p2align 4
label116:
	add r3, r1, r1, lsr #31
	ldr r5, [sp, #12]
	ldr r7, [sp, #0]
	asr r3, r3, #1
	ldr r6, [sp, #4]
	add r3, r5, r3
	add r4, r7, r1
	add r1, r1, #1
	ldr r4, [r6, r4, lsl #2]
	str r4, [r0, r3, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	add r5, r7, #3
	add r4, r7, #2
	add r3, r7, #1
	ble label123
label118:
	cmp r2, #4
	bgt label174
	mov r1, #0
	b label121
label174:
	mov r1, #0
	b label119
label121:
	ldr r7, [sp, #0]
	ldr r4, [r0, r1, lsl #2]
	ldr r6, [sp, #4]
	add r3, r7, r1
	add r1, r1, #1
	str r4, [r6, r3, lsl #2]
	cmp r2, r1
	bgt label121
label123:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r7, [sp, #0]
	mov r8, r0
	ldr r6, [sp, #4]
	ldr r5, [sp, #12]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r8
	bl fft
	mov r0, r6
	add r4, r7, r5
	mov r1, r4
	mov r2, r5
	mov r3, r8
	bl fft
	cmp r5, #0
	ble label127
	mov r3, #0
	mov r5, #1
.p2align 4
label124:
	ldr r7, [sp, #0]
	ldr r6, [sp, #4]
	add r8, r7, r3
	add r7, r4, r3
	ldr r9, [r6, r8, lsl #2]
	ldr r1, [r6, r7, lsl #2]
	mov r0, r5
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
	str r10, [r6, r8, lsl #2]
	asr r8, r1, #26
	add r1, r8, r1, lsr #31
	mls r0, r1, r2, r0
	str r0, [r6, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r5
	bl multiply
	ldr r5, [sp, #12]
	add r3, r3, #1
	cmp r5, r3
	ble label127
	mov r5, r0
	b label124
label127:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label119:
	ldr r7, [sp, #0]
	ldr r9, [r0, r1, lsl #2]
	ldr r6, [sp, #4]
	add r8, r7, r1
	add r7, r0, r1, lsl #2
	str r9, [r6, r8, lsl #2]
	add r9, r3, r1
	ldr r8, [r7, #4]
	str r8, [r6, r9, lsl #2]
	add r9, r4, r1
	ldr r8, [r7, #8]
	str r8, [r6, r9, lsl #2]
	add r8, r5, r1
	ldr r7, [r7, #12]
	str r7, [r6, r8, lsl #2]
	add r6, r1, #8
	cmp r2, r6
	add r1, r1, #4
	bgt label119
	b label121
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
	bgt label329
	mov r6, #1
	b label310
label329:
	mov r6, #1
	b label308
label310:
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
	ble label312
	mov r3, #0
	b label317
label312:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	bgt label313
	b label316
.p2align 4
label317:
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r7, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	bgt label317
	b label312
.p2align 4
label314:
	ldr r0, [r4, r7, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label314
label316:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label313:
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, #0
	mov r3, r0
	b label314
.p2align 4
label308:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label308
	b label310
