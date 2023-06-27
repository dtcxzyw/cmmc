.arch armv7ve
.data
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
	movw r0, #51217
	movt r0, #4405
	smmul r0, r4, r0
	asr r1, r0, #26
	add r0, r1, r0, lsr #31
	movw r1, #1
	movt r1, #15232
	mul r0, r0, r1
	sub r0, r4, r0
	b label2
label6:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl multiply
	lsl r0, r0, #1
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mul r1, r1, r2
	sub r0, r0, r1
	add r1, r5, r5, lsr #31
	asr r1, r1, #1
	mov r2, #2
	mul r1, r1, r2
	sub r1, r5, r1
	cmp r1, #1
	bne label2
	add r0, r4, r0
	movw r1, #51217
	movt r1, #4405
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mul r1, r1, r2
	sub r0, r0, r1
	b label2
power:
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	bne label564
	mov r0, #1
label562:
	add sp, sp, #4
	pop { r4, r5, pc }
label564:
	add r0, r5, r5, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl power
	mov r1, r0
	bl multiply
	add r1, r5, r5, lsr #31
	asr r1, r1, #1
	mov r2, #2
	mul r1, r1, r2
	sub r1, r5, r1
	cmp r1, #1
	bne label562
	mov r1, r4
	bl multiply
	b label562
fft:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	mov r4, r0
	mov r5, r1
	str r2, [sp, #0]
	mov r1, r3
	str r3, [sp, #4]
	cmp r2, #1
	bne label55
	b label79
label55:
	movw r1, #:lower16:temp
	movt r1, #:upper16:temp
	mov r0, #0
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	b label544
label62:
	ldr r2, [sp, #0]
	cmp r2, #0
	ble label63
	mov r0, #0
	add r3, r0, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label70
label78:
	add r6, r0, r5
	add r2, r1, r0, lsl #2
	ldr r7, [r1, r0, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #1
	add r6, r6, r5
	ldr r7, [r2, #4]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #2
	add r6, r6, r5
	ldr r7, [r2, #8]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #3
	add r6, r6, r5
	ldr r7, [r2, #12]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #4
	add r6, r6, r5
	ldr r7, [r2, #16]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #5
	add r6, r6, r5
	ldr r7, [r2, #20]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #6
	add r6, r6, r5
	ldr r7, [r2, #24]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #7
	add r6, r6, r5
	ldr r7, [r2, #28]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #8
	add r6, r6, r5
	ldr r7, [r2, #32]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #9
	add r6, r6, r5
	ldr r7, [r2, #36]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #10
	add r6, r6, r5
	ldr r7, [r2, #40]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #11
	add r6, r6, r5
	ldr r7, [r2, #44]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #12
	add r6, r6, r5
	ldr r7, [r2, #48]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #13
	add r6, r6, r5
	ldr r7, [r2, #52]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #14
	add r6, r6, r5
	ldr r7, [r2, #56]
	str r7, [r4, r6, lsl #2]
	add r0, r0, #15
	add r0, r0, r5
	ldr r2, [r2, #60]
	str r2, [r4, r0, lsl #2]
	mov r0, r3
	add r3, r3, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label70
	b label78
label544:
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	b label541
label63:
	ldr r1, [sp, #4]
	mov r0, r1
	ldr r1, [sp, #4]
	bl multiply
	mov r6, r0
	ldr r2, [sp, #0]
	add r0, r2, r2, lsr #31
	asr r7, r0, #1
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl fft
	add r1, r5, r7
	mov r0, r4
	mov r2, r7
	mov r3, r6
	bl fft
	mov r3, #1
	mov r6, #0
	ldr r2, [sp, #0]
	add r0, r2, r2, lsr #31
	asr r0, r0, #1
	cmp r6, r0
	bge label79
label67:
	add r9, r6, r5
	ldr r8, [r4, r9, lsl #2]
	add r0, r6, r0
	add r7, r0, r5
	ldr r1, [r4, r7, lsl #2]
	mov r0, r3
	bl multiply
	add r10, r8, r0
	movw r1, #51217
	movt r1, #4405
	smmul r2, r10, r1
	asr r11, r2, #26
	add r11, r11, r2, lsr #31
	movw r2, #1
	movt r2, #15232
	mul r11, r11, r2
	sub r10, r10, r11
	str r10, [r4, r9, lsl #2]
	sub r0, r8, r0
	add r0, r0, r2
	smmul r1, r0, r1
	asr r8, r1, #26
	add r1, r8, r1, lsr #31
	mul r1, r1, r2
	sub r0, r0, r1
	str r0, [r4, r7, lsl #2]
	mov r0, r3
	ldr r1, [sp, #4]
	bl multiply
	add r6, r6, #1
	mov r3, r0
	ldr r2, [sp, #0]
	add r0, r2, r2, lsr #31
	asr r0, r0, #1
	cmp r6, r0
	bge label79
	b label67
label60:
	ldr r2, [sp, #0]
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	add r2, r2, r3
	add r3, r0, r5
	ldr r3, [r4, r3, lsl #2]
	str r3, [r1, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
label541:
	add r2, r0, r5
	ldr r2, [r4, r2, lsl #2]
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	str r2, [r1, r3, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label62
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	mov r3, #2
	mul r2, r2, r3
	sub r2, r0, r2
	cmp r2, #0
	bne label60
	b label541
label70:
	add r3, r0, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label72
	b label77
label72:
	add r3, r0, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label75
label74:
	add r6, r0, r5
	add r2, r1, r0, lsl #2
	ldr r7, [r1, r0, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #1
	add r6, r6, r5
	ldr r7, [r2, #4]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #2
	add r6, r6, r5
	ldr r7, [r2, #8]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #3
	add r6, r6, r5
	ldr r7, [r2, #12]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #4
	add r6, r6, r5
	ldr r7, [r2, #16]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #5
	add r6, r6, r5
	ldr r7, [r2, #20]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #6
	add r6, r6, r5
	ldr r7, [r2, #24]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #7
	add r6, r6, r5
	ldr r7, [r2, #28]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #8
	add r6, r6, r5
	ldr r7, [r2, #32]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #9
	add r6, r6, r5
	ldr r7, [r2, #36]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #10
	add r6, r6, r5
	ldr r7, [r2, #40]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #11
	add r6, r6, r5
	ldr r7, [r2, #44]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #12
	add r6, r6, r5
	ldr r7, [r2, #48]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #13
	add r6, r6, r5
	ldr r7, [r2, #52]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #14
	add r6, r6, r5
	ldr r7, [r2, #56]
	str r7, [r4, r6, lsl #2]
	add r0, r0, #15
	add r0, r0, r5
	ldr r2, [r2, #60]
	str r2, [r4, r0, lsl #2]
	mov r0, r3
	add r3, r3, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label75
	b label74
label75:
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
label550:
	add r2, r5, r0
	ldr r3, [r1, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #0]
	cmp r0, r2
	bge label63
	b label550
label79:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label77:
	add r6, r0, r5
	add r2, r1, r0, lsl #2
	ldr r7, [r1, r0, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #1
	add r6, r6, r5
	ldr r7, [r2, #4]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #2
	add r6, r6, r5
	ldr r7, [r2, #8]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #3
	add r6, r6, r5
	ldr r7, [r2, #12]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #4
	add r6, r6, r5
	ldr r7, [r2, #16]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #5
	add r6, r6, r5
	ldr r7, [r2, #20]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #6
	add r6, r6, r5
	ldr r7, [r2, #24]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #7
	add r6, r6, r5
	ldr r7, [r2, #28]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #8
	add r6, r6, r5
	ldr r7, [r2, #32]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #9
	add r6, r6, r5
	ldr r7, [r2, #36]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #10
	add r6, r6, r5
	ldr r7, [r2, #40]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #11
	add r6, r6, r5
	ldr r7, [r2, #44]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #12
	add r6, r6, r5
	ldr r7, [r2, #48]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #13
	add r6, r6, r5
	ldr r7, [r2, #52]
	str r7, [r4, r6, lsl #2]
	add r6, r0, #14
	add r6, r6, r5
	ldr r7, [r2, #56]
	str r7, [r4, r6, lsl #2]
	add r0, r0, #15
	add r0, r0, r5
	ldr r2, [r2, #60]
	str r2, [r4, r0, lsl #2]
	mov r0, r3
	add r3, r3, #16
	ldr r2, [sp, #0]
	cmp r3, r2
	bge label72
	b label77
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
	mov r6, r0
	bl getarray
	add r8, r5, r0
	mov r0, #60
	bl _sysy_starttime
	cmp r8, #1
	ble label608
	mov r5, #1
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	b label707
label608:
	mov r5, #1
	b label589
label707:
	lsl r5, r5, #1
	cmp r5, r8
	bge label589
	b label707
label589:
	mov r0, #998244352
	sdiv r9, r0, r5
	mov r0, #3
	mov r1, r9
	bl power
	mov r7, r0
	mov r0, r4
	mov r1, #0
	mov r2, r5
	mov r3, r7
	bl fft
	mov r0, r6
	mov r1, #0
	mov r2, r5
	mov r3, r7
	bl fft
	cmp r5, #0
	ble label593
	mov r3, #0
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	b label710
label593:
	rsb r1, r9, #998244352
	mov r0, #3
	bl power
	mov r3, r0
	mov r0, r4
	mov r1, #0
	mov r2, r5
	bl fft
	cmp r5, #0
	ble label597
	mov r0, r5
	movw r1, #65535
	movt r1, #15231
	bl power
	mov r3, r0
	mov r6, #0
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
label712:
	ldr r0, [r4, r6, lsl #2]
	mov r1, r3
	bl multiply
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label597
	b label712
label710:
	ldr r0, [r4, r3, lsl #2]
	ldr r1, [r6, r3, lsl #2]
	bl multiply
	str r0, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label593
	b label710
label597:
	mov r0, #79
	bl _sysy_stoptime
	mov r0, r8
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
