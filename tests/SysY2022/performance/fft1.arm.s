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
	bne label281
	mov r0, #1
label279:
	add sp, sp, #4
	pop { r4, r5, pc }
label281:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	and r1, r5, #-2147483647
	cmp r1, #1
	bne label279
	mov r1, r4
	bl multiply
	b label279
fft:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	mov r5, r0
	mov r7, r1
	cmp r2, #1
	str r3, [sp, #8]
	mov r1, r3
	str r0, [sp, #4]
	add r0, r2, r2, lsr #31
	str r7, [sp, #0]
	asr r6, r0, #1
	movw r0, #:lower16:temp
	str r6, [sp, #12]
	movt r0, #:upper16:temp
	beq label127
	mov r1, #0
	cmp r2, r1
	bgt label114
	cmp r2, #0
	bgt label167
	b label123
.p2align 4
label114:
	ands r3, r1, #1
	bne label116
	ldr r7, [sp, #0]
	add r4, r1, r1, lsr #31
	ldr r5, [sp, #4]
	asr r4, r4, #1
	add r3, r7, r1
	add r1, r1, #1
	ldr r3, [r5, r3, lsl #2]
	str r3, [r0, r4, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	bgt label167
	b label123
.p2align 4
label116:
	add r3, r1, r1, lsr #31
	ldr r6, [sp, #12]
	ldr r7, [sp, #0]
	asr r3, r3, #1
	ldr r5, [sp, #4]
	add r3, r6, r3
	add r4, r7, r1
	add r1, r1, #1
	ldr r4, [r5, r4, lsl #2]
	str r4, [r0, r3, lsl #2]
	cmp r2, r1
	bgt label114
	cmp r2, #0
	ble label123
label167:
	mov r1, #0
label118:
	add r3, r1, #4
	cmp r2, r3
	ble label121
	ldr r7, [sp, #0]
	add r4, r0, r1, lsl #2
	ldr r8, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r6, r7, r1
	str r8, [r5, r6, lsl #2]
	ldr r8, [r4, #4]
	add r6, r1, #1
	add r6, r7, r6
	str r8, [r5, r6, lsl #2]
	ldr r8, [r4, #8]
	add r6, r1, #2
	add r1, r1, #3
	add r6, r7, r6
	add r1, r7, r1
	str r8, [r5, r6, lsl #2]
	ldr r4, [r4, #12]
	str r4, [r5, r1, lsl #2]
	mov r1, r3
	b label118
label121:
	ldr r7, [sp, #0]
	ldr r4, [r0, r1, lsl #2]
	ldr r5, [sp, #4]
	add r3, r7, r1
	add r1, r1, #1
	str r4, [r5, r3, lsl #2]
	cmp r2, r1
	bgt label121
label123:
	ldr r1, [sp, #8]
	mov r0, r1
	bl multiply
	ldr r7, [sp, #0]
	mov r8, r0
	ldr r5, [sp, #4]
	ldr r6, [sp, #12]
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r8
	bl fft
	mov r0, r5
	add r4, r7, r6
	mov r1, r4
	mov r2, r6
	mov r3, r8
	bl fft
	cmp r6, #0
	ble label127
	mov r3, #0
	mov r6, #1
.p2align 4
label124:
	ldr r7, [sp, #0]
	ldr r5, [sp, #4]
	add r8, r7, r3
	add r7, r4, r3
	ldr r9, [r5, r8, lsl #2]
	ldr r1, [r5, r7, lsl #2]
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
	str r10, [r5, r8, lsl #2]
	asr r8, r1, #26
	add r1, r8, r1, lsr #31
	mls r0, r1, r2, r0
	str r0, [r5, r7, lsl #2]
	ldr r1, [sp, #8]
	mov r0, r6
	bl multiply
	ldr r6, [sp, #12]
	add r3, r3, #1
	cmp r6, r3
	ble label127
	mov r6, r0
	b label124
label127:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
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
	bgt label324
	mov r6, #1
	b label305
label324:
	mov r6, #1
	b label303
label305:
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
	ble label309
	mov r3, #0
.p2align 4
label307:
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r7, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	bgt label307
label309:
	rsb r1, r8, #998244352
	mov r0, #3
	bl power
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r6
	bl fft
	cmp r6, #0
	bgt label310
	b label313
.p2align 4
label311:
	ldr r0, [r4, r7, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label311
label313:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label310:
	mov r0, r6
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r7, #0
	mov r3, r0
	b label311
.p2align 4
label303:
	lsl r6, r6, #1
	cmp r5, r6
	bgt label303
	b label305
