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
	beq label18
	cmp r1, #1
	beq label5
	add r0, r1, #1
	cmp r0, #3
	blo label28
	sub r0, r1, #2
	add r1, r1, r1, lsr #31
	cmp r0, #2
	asr r6, r1, #1
	blo label11
	b label12
label18:
	mov r0, #0
label2:
	pop { r4, r5, r6, pc }
label5:
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label2
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
label28:
	mov r0, #0
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
	beq label9
	b label2
label11:
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label7
label9:
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
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label263
	mov r0, #1
label261:
	add sp, sp, #4
	pop { r4, r5, pc }
label263:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label261
	mov r1, r4
	bl multiply
	b label261
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	sub sp, sp, #36
	mov r7, r1
	mov r5, r0
	str r2, [sp, #16]
	mov r1, r3
	str r3, [sp, #8]
	movw r3, #:lower16:temp
	str r0, [sp, #4]
	movt r3, #:upper16:temp
	add r0, r2, r2, lsr #31
	str r7, [sp, #0]
	asr r6, r0, #1
	str r6, [sp, #12]
	str r3, [sp, #20]
	beq label119
	mov r0, #0
	cmp r2, r0
	bgt label106
	cmp r2, #0
	bgt label159
label115:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r7, [sp, #0]
	mov r4, r0
	ldr r5, [sp, #4]
	ldr r6, [sp, #12]
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl fft
	add r1, r7, r6
	str r1, [sp, #24]
	mov r0, r5
	mov r2, r6
	mov r3, r4
	bl fft
	cmp r6, #0
	ble label119
	mov r4, #0
	mov r6, #1
label116:
	ldr r7, [sp, #0]
	ldr r5, [sp, #4]
	add r8, r7, r4
	ldr r9, [r5, r8, lsl #2]
	ldr r1, [sp, #24]
	add r7, r1, r4
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
	ldr r6, [sp, #12]
	add r4, r4, #1
	cmp r6, r4
	ble label119
	mov r6, r0
	b label116
label119:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label106:
	ands r1, r0, #1
	bne label108
	ldr r7, [sp, #0]
	add r2, r0, r0, lsr #31
	ldr r5, [sp, #4]
	asr r2, r2, #1
	add r1, r7, r0
	add r0, r0, #1
	ldr r1, [r5, r1, lsl #2]
	ldr r3, [sp, #20]
	str r1, [r3, r2, lsl #2]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label106
	cmp r2, #0
	bgt label159
	b label115
label108:
	add r1, r0, r0, lsr #31
	ldr r6, [sp, #12]
	ldr r7, [sp, #0]
	asr r1, r1, #1
	ldr r5, [sp, #4]
	add r1, r6, r1
	add r2, r7, r0
	add r0, r0, #1
	ldr r2, [r5, r2, lsl #2]
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label106
	cmp r2, #0
	ble label115
label159:
	mov r0, #0
label110:
	add r1, r0, #4
	ldr r2, [sp, #16]
	cmp r2, r1
	bgt label112
	ldr r7, [sp, #0]
	ldr r3, [sp, #20]
	add r1, r7, r0
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r5, [sp, #4]
	str r2, [r5, r1, lsl #2]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label113
	b label115
label112:
	ldr r7, [sp, #0]
	ldr r3, [sp, #20]
	add r4, r7, r0
	add r2, r3, r0, lsl #2
	ldr r3, [r3, r0, lsl #2]
	ldr r5, [sp, #4]
	str r3, [r5, r4, lsl #2]
	ldr r4, [r2, #4]
	add r3, r0, #1
	add r3, r7, r3
	str r4, [r5, r3, lsl #2]
	ldr r4, [r2, #8]
	add r3, r0, #2
	add r0, r0, #3
	add r3, r7, r3
	add r0, r7, r0
	str r4, [r5, r3, lsl #2]
	ldr r2, [r2, #12]
	str r2, [r5, r0, lsl #2]
	mov r0, r1
	b label110
label113:
	ldr r7, [sp, #0]
	ldr r3, [sp, #20]
	add r1, r7, r0
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r5, [sp, #4]
	str r2, [r5, r1, lsl #2]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label113
	b label115
.globl main
main:
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
	bgt label306
	mov r6, #1
	b label287
label306:
	mov r6, #1
label285:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label285
label287:
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
	ble label291
	mov r9, #0
label289:
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	bgt label289
label291:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	bgt label292
	b label295
label293:
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bgt label293
label295:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label292:
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r0
	b label293
