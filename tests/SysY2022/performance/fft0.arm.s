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
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	bne label4
	mov r0, #0
label2:
	add sp, sp, #4
	pop { r4, r5, pc }
label4:
	cmp r5, #1
	bne label6
	movw r0, #1
	movt r0, #15232
	movw r1, #51217
	movt r1, #4405
	smmul r1, r4, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	b label2
label6:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl multiply
	lsl r0, r0, #1
	movw r1, #1
	movt r1, #15232
	movw r2, #51217
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
	movt r1, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	b label2
power:
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	bne label254
	mov r0, #1
label252:
	add sp, sp, #4
	pop { r4, r5, pc }
label254:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label252
	mov r1, r4
	bl multiply
	b label252
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r5, r0
	mov r8, r1
	mov r1, r3
	str r3, [sp, #8]
	str r0, [sp, #4]
	str r8, [sp, #0]
	cmp r2, #1
	bne label47
	b label71
label47:
	add r0, r2, r2, lsr #31
	asr r7, r0, #1
	str r7, [sp, #12]
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	mov r1, #0
label48:
	cmp r2, r1
	ble label54
	ands r3, r1, #1
	bne label90
	ldr r8, [sp, #0]
	add r3, r8, r1
	ldr r5, [sp, #4]
	ldr r3, [r5, r3, lsl #2]
	add r4, r1, r1, lsr #31
	asr r4, r4, #1
	str r3, [r0, r4, lsl #2]
	add r1, r1, #1
	b label48
label54:
	cmp r2, #0
	ble label55
	mov r1, #0
label60:
	add r3, r1, #4
	cmp r2, r3
	ble label63
	ldr r8, [sp, #0]
	add r6, r8, r1
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #1
	add r6, r8, r6
	ldr r7, [r4, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #2
	add r6, r8, r6
	ldr r7, [r4, #8]
	str r7, [r5, r6, lsl #2]
	add r1, r1, #3
	add r1, r8, r1
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	b label60
label90:
	add r3, r1, r1, lsr #31
	asr r3, r3, #1
	ldr r7, [sp, #12]
	add r3, r7, r3
	ldr r8, [sp, #0]
	add r4, r8, r1
	ldr r5, [sp, #4]
	ldr r4, [r5, r4, lsl #2]
	str r4, [r0, r3, lsl #2]
	add r1, r1, #1
	b label48
label63:
	add r3, r1, #4
	cmp r2, r3
	ble label66
	ldr r8, [sp, #0]
	add r6, r8, r1
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #1
	add r6, r8, r6
	ldr r7, [r4, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #2
	add r6, r8, r6
	ldr r7, [r4, #8]
	str r7, [r5, r6, lsl #2]
	add r1, r1, #3
	add r1, r8, r1
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	b label63
label66:
	add r3, r1, #4
	cmp r2, r3
	ble label68
	ldr r8, [sp, #0]
	add r6, r8, r1
	add r4, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #1
	add r6, r8, r6
	ldr r7, [r4, #4]
	str r7, [r5, r6, lsl #2]
	add r6, r1, #2
	add r6, r8, r6
	ldr r7, [r4, #8]
	str r7, [r5, r6, lsl #2]
	add r1, r1, #3
	add r1, r8, r1
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	b label66
label68:
	ldr r8, [sp, #0]
	add r3, r8, r1
	ldr r4, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	str r4, [r5, r3, lsl #2]
	add r1, r1, #1
	cmp r2, r1
	ble label55
	b label68
label71:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label55:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	mov r4, r0
	ldr r8, [sp, #0]
	ldr r5, [sp, #4]
	ldr r7, [sp, #12]
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl fft
	add r1, r8, r7
	mov r0, r5
	mov r2, r7
	mov r3, r4
	bl fft
	mov r6, #1
	mov r4, #0
label56:
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label71
	ldr r7, [sp, #12]
	add r0, r7, r4
	ldr r8, [sp, #0]
	add r7, r8, r0
	add r8, r8, r4
	ldr r5, [sp, #4]
	ldr r9, [r5, r8, lsl #2]
	ldr r1, [r5, r7, lsl #2]
	mov r0, r6
	bl multiply
	mov r1, r0
	add r3, r9, r0
	movw r0, #1
	movt r0, #15232
	movw r2, #51217
	movt r2, #4405
	smmul r10, r3, r2
	asr r11, r10, #26
	add r10, r11, r10, lsr #31
	mls r3, r10, r0, r3
	str r3, [r5, r8, lsl #2]
	sub r1, r9, r1
	add r1, r1, r0
	smmul r2, r1, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r0, r1
	str r0, [r5, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r6
	bl multiply
	add r4, r4, #1
	mov r6, r0
	b label56
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	movw r0, #:lower16:a
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
	ble label294
	mov r6, #1
	b label273
label294:
	mov r6, #1
	b label275
label273:
	lsl r6, r6, #1
	cmp r5, r6
	ble label275
	b label273
label275:
	mov r0, #998244352
	sdiv r8, r0, r6
	mov r0, #3
	mov r1, r8
	bl power
	mov r9, r0
	mov r0, r4
	mov r1, #0
	mov r2, r6
	mov r3, r9
	bl fft
	mov r0, r7
	mov r1, #0
	mov r2, r6
	mov r3, r9
	bl fft
	cmp r6, #0
	ble label277
	mov r9, #0
label282:
	ldr r0, [r4, r9, lsl #2]
	ldr r1, [r7, r9, lsl #2]
	bl multiply
	str r0, [r4, r9, lsl #2]
	add r9, r9, #1
	cmp r6, r9
	ble label277
	b label282
label277:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r3, r0
	mov r0, r4
	mov r1, #0
	mov r2, r6
	bl fft
	cmp r6, #0
	ble label281
	b label309
label281:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label309:
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, r0
	mov r8, #0
label279:
	ldr r0, [r4, r8, lsl #2]
	mov r1, r7
	bl multiply
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	ble label281
	b label279
