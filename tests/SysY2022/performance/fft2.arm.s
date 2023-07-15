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
	bne label5
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label2
label5:
	add r0, r5, #1
	cmp r0, #3
	bhs label9
	mov r0, #0
	b label6
label9:
	sub r0, r5, #2
	add r1, r5, r5, lsr #31
	cmp r0, #2
	asr r6, r1, #1
	bhs label11
	b label91
label6:
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
label91:
	movw r0, #1
	movw r1, #51217
	movt r0, #15232
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label6
label11:
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
	bne label6
	add r0, r4, r0
	movw r1, #1
	movw r2, #51217
	movt r1, #15232
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	b label6
power:
	push { r4, r5, lr }
	cmp r1, #0
	mov r5, r1
	mov r4, r0
	sub sp, sp, #4
	bne label262
	mov r0, #1
	b label264
label262:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label264
	mov r1, r4
	bl multiply
label264:
	add sp, sp, #4
	pop { r4, r5, pc }
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r2, #1
	mov r7, r1
	sub sp, sp, #36
	mov r5, r2
	mov r6, r0
	mov r1, r3
	str r2, [sp, #16]
	movw r6, #:lower16:temp
	str r3, [sp, #8]
	movt r6, #:upper16:temp
	str r0, [sp, #4]
	add r0, r2, r2, lsr #31
	str r7, [sp, #0]
	asr r8, r0, #1
	str r8, [sp, #12]
	str r6, [sp, #20]
	bne label118
	b label108
label118:
	mov r0, #0
	ldr r5, [sp, #16]
	cmp r5, r0
	ble label98
	ands r1, r0, #1
	bne label97
	b label237
label98:
	ldr r7, [sp, #0]
	ldr r5, [sp, #16]
	add r4, r7, #3
	add r3, r7, #2
	add r2, r7, #1
	cmp r5, #0
	ble label104
	mov r0, #0
	add r1, r0, #4
	cmp r5, r1
	ble label102
	b label101
label237:
	ldr r7, [sp, #0]
	add r2, r0, r0, lsr #31
	ldr r6, [sp, #4]
	asr r2, r2, #1
	add r1, r7, r0
	add r0, r0, #1
	ldr r1, [r6, r1, lsl #2]
	ldr r6, [sp, #20]
	str r1, [r6, r2, lsl #2]
	ldr r5, [sp, #16]
	cmp r5, r0
	ble label98
	ands r1, r0, #1
	bne label97
	b label237
label97:
	add r1, r0, r0, lsr #31
	ldr r8, [sp, #12]
	ldr r7, [sp, #0]
	asr r1, r1, #1
	ldr r6, [sp, #4]
	add r1, r8, r1
	add r2, r7, r0
	add r0, r0, #1
	ldr r2, [r6, r2, lsl #2]
	ldr r6, [sp, #20]
	str r2, [r6, r1, lsl #2]
	ldr r5, [sp, #16]
	cmp r5, r0
	ble label98
	ands r1, r0, #1
	bne label97
	b label237
label101:
	ldr r7, [sp, #0]
	ldr r6, [sp, #20]
	add r7, r7, r0
	ldr r8, [r6, r0, lsl #2]
	add r5, r6, r0, lsl #2
	ldr r6, [sp, #4]
	str r8, [r6, r7, lsl #2]
	add r8, r2, r0
	ldr r7, [r5, #4]
	str r7, [r6, r8, lsl #2]
	add r8, r3, r0
	ldr r7, [r5, #8]
	add r0, r4, r0
	str r7, [r6, r8, lsl #2]
	ldr r5, [r5, #12]
	str r5, [r6, r0, lsl #2]
	mov r0, r1
	add r1, r1, #4
	ldr r5, [sp, #16]
	cmp r5, r1
	ble label102
	b label101
label102:
	ldr r7, [sp, #0]
	ldr r6, [sp, #20]
	add r1, r7, r0
	ldr r2, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r6, [sp, #4]
	str r2, [r6, r1, lsl #2]
	ldr r5, [sp, #16]
	cmp r5, r0
	ble label104
	b label102
label108:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label104:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r7, [sp, #0]
	mov r4, r0
	ldr r6, [sp, #4]
	ldr r8, [sp, #12]
	mov r0, r6
	mov r1, r7
	mov r2, r8
	mov r3, r4
	bl fft
	add r1, r7, r8
	str r1, [sp, #24]
	mov r0, r6
	mov r2, r8
	mov r3, r4
	bl fft
	cmp r8, #0
	ble label108
	mov r4, #0
	mov r5, #1
label105:
	ldr r7, [sp, #0]
	ldr r6, [sp, #4]
	add r8, r7, r4
	ldr r9, [r6, r8, lsl #2]
	ldr r1, [sp, #24]
	add r7, r1, r4
	ldr r1, [r6, r7, lsl #2]
	mov r0, r5
	bl multiply
	add r3, r9, r0
	mov r1, r0
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
	str r3, [r6, r8, lsl #2]
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r0, r1
	str r0, [r6, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r5
	bl multiply
	ldr r8, [sp, #12]
	add r4, r4, #1
	cmp r8, r4
	ble label108
	mov r5, r0
	b label105
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
	ble label304
	mov r6, #1
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	b label283
label304:
	mov r6, #1
	b label285
label283:
	lsl r6, r6, #1
	cmp r5, r6
	ble label285
	b label283
label285:
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
	ble label289
	mov r9, #0
label287:
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label289
	b label287
label289:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label290
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r8, #0
	mov r7, r0
label292:
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label290
	b label292
label290:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
