.arch armv7ve
.data
.bss
.align 8
a1:
	.zero	40000
.align 8
a2:
	.zero	40000
.align 8
a3:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r2, #3
	mov r0, #5
	mov r10, #6
	movw r3, #:lower16:a2
	movw r6, #:lower16:a1
	mov r9, #7
	mov r4, #0
	sub sp, sp, #36
	mov r1, #4
	mov r7, #8
	movw r5, #:lower16:a3
	movt r3, #:upper16:a2
	movt r6, #:upper16:a1
	movt r5, #:upper16:a3
	str r6, [sp, #28]
	mov r6, #1
	str r3, [sp, #24]
	mov r3, #2
	str r5, [sp, #20]
	mov r5, r4
	str r7, [sp, #12]
	str r9, [sp, #4]
	str r10, [sp, #0]
	str r6, [sp, #8]
.p2align 4
label2:
	ldr r6, [sp, #28]
	movw r8, #26215
	movt r8, #26214
	add r7, r6, r5, lsl #2
	add r5, r5, #8
	smmul r6, r4, r8
	asr r9, r6, #2
	add r6, r9, r6, lsr #31
	add r6, r6, r6, lsl #2
	sub r6, r4, r6, lsl #1
	str r6, [r7, #0]
	ldr r6, [sp, #8]
	add r9, r4, r6
	add r6, r6, #16
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #4]
	add r9, r3, #2
	add r3, r3, #32
	add r9, r4, r9
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #8]
	add r9, r2, #6
	add r2, r2, #48
	add r9, r4, r9
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #12]
	add r9, r1, #12
	add r1, r1, #64
	add r9, r4, r9
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #16]
	add r9, r0, #20
	add r0, r0, #80
	add r9, r4, r9
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #20]
	ldr r10, [sp, #0]
	add r9, r10, #30
	add r9, r4, r9
	smmul r10, r9, r8
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r7, #24]
	ldr r9, [sp, #4]
	add r10, r9, #42
	add r9, r9, #112
	add r10, r4, r10
	smmul r8, r10, r8
	asr r11, r8, #2
	add r8, r11, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r8, r10, r8, lsl #1
	str r8, [r7, #28]
	ldr r7, [sp, #12]
	ldr r10, [sp, #0]
	add r8, r7, #56
	add r10, r10, #96
	add r7, r7, #128
	add r4, r4, r8
	movw r8, #10000
	cmp r5, r8
	bge label86
	str r7, [sp, #12]
	str r9, [sp, #4]
	str r10, [sp, #0]
	str r6, [sp, #8]
	b label2
label86:
	mov r0, #0
.p2align 4
label13:
	ldr r6, [sp, #28]
	add r1, r6, r0, lsl #2
	ldr r2, [r1, #0]
	mul r3, r2, r2
	movw r2, #26215
	movt r2, #26214
	smmul r4, r3, r2
	asr r5, r4, #2
	add r4, r5, r4, lsr #31
	add r4, r4, r4, lsl #2
	sub r4, r3, r4, lsl #1
	ldr r3, [sp, #24]
	add r3, r3, r0, lsl #2
	add r0, r0, #8
	str r4, [r3, #0]
	ldr r4, [r1, #4]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #4]
	ldr r4, [r1, #8]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #8]
	ldr r4, [r1, #12]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #12]
	ldr r4, [r1, #16]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #16]
	ldr r4, [r1, #20]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #20]
	ldr r4, [r1, #24]
	mul r4, r4, r4
	smmul r5, r4, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r3, #24]
	ldr r1, [r1, #28]
	mul r1, r1, r1
	smmul r2, r1, r2
	asr r4, r2, #2
	add r2, r4, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #28]
	movw r1, #10000
	cmp r0, r1
	blt label13
	mov r0, #0
.p2align 4
label15:
	ldr r3, [sp, #24]
	add r1, r3, r0, lsl #2
	ldr r2, [r1, #0]
	ldr r6, [sp, #28]
	mul r4, r2, r2
	movw r2, #34079
	movt r2, #20971
	smmul r3, r4, r2
	asr r5, r3, #5
	add r5, r5, r3, lsr #31
	mov r3, #100
	mls r5, r5, r3, r4
	add r4, r6, r0, lsl #2
	ldr r6, [r4, #0]
	add r6, r5, r6
	ldr r5, [sp, #20]
	add r5, r5, r0, lsl #2
	add r0, r0, #8
	str r6, [r5, #0]
	ldr r6, [r1, #4]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #4]
	add r6, r6, r7
	str r6, [r5, #4]
	ldr r6, [r1, #8]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #8]
	add r6, r6, r7
	str r6, [r5, #8]
	ldr r6, [r1, #12]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #12]
	add r6, r6, r7
	str r6, [r5, #12]
	ldr r6, [r1, #16]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #16]
	add r6, r6, r7
	str r6, [r5, #16]
	ldr r6, [r1, #20]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #20]
	add r6, r6, r7
	str r6, [r5, #20]
	ldr r6, [r1, #24]
	mul r6, r6, r6
	smmul r7, r6, r2
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r3, r6
	ldr r7, [r4, #24]
	add r6, r6, r7
	str r6, [r5, #24]
	ldr r1, [r1, #28]
	mul r1, r1, r1
	smmul r2, r1, r2
	asr r6, r2, #5
	add r2, r6, r2, lsr #31
	mls r1, r2, r3, r1
	ldr r2, [r4, #28]
	add r1, r1, r2
	str r1, [r5, #28]
	movw r1, #10000
	cmp r0, r1
	blt label15
	mov r4, #0
	mov r0, r4
	cmp r4, r1
	bge label37
.p2align 4
label20:
	add r1, r0, #1
	cmp r0, #10
	str r1, [sp, #16]
	blt label36
	cmp r0, #20
	blt label31
	b label22
.p2align 4
label36:
	ldr r5, [sp, #20]
	movw r1, #3835
	movt r1, #12586
	ldr r0, [r5, r0, lsl #2]
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r4, r1, r2, r0
	mov r0, r4
	bl putint
	ldr r1, [sp, #16]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label20
label37:
	mov r0, r4
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label22:
	cmp r0, #30
	bge label23
	movw r1, #5000
	movw r2, #10000
	cmp r1, r2
	bge label27
.p2align 4
label28:
	movw r2, #2233
	cmp r1, r2
	bgt label30
	ldr r6, [sp, #28]
	ldr r2, [r6, r0, lsl #2]
	ldr r5, [sp, #20]
	add r2, r4, r2
	ldr r3, [r5, r1, lsl #2]
	add r1, r1, #2
	add r2, r3, r2
	movw r3, #19047
	movt r3, #5033
	smmul r3, r2, r3
	asr r4, r3, #10
	add r3, r4, r3, lsr #31
	movw r4, #13333
	mls r4, r3, r4, r2
	movw r2, #10000
	cmp r1, r2
	blt label28
	b label27
.p2align 4
label30:
	ldr r3, [sp, #24]
	ldr r2, [r3, r0, lsl #2]
	ldr r6, [sp, #28]
	add r2, r4, r2
	ldr r3, [r6, r1, lsl #2]
	add r1, r1, #1
	sub r4, r2, r3
	movw r2, #10000
	cmp r1, r2
	blt label28
	b label27
.p2align 4
label31:
	ldr r5, [sp, #20]
	movw r1, #5000
	ldr r0, [r5, r0, lsl #2]
.p2align 4
label32:
	ldr r6, [sp, #28]
	add r4, r0, r4
	add r2, r6, r1, lsl #2
	add r1, r1, #8
	ldr r3, [r2, #0]
	sub r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r0, r3
	sub r3, r3, r4
	ldr r4, [r2, #8]
	add r3, r0, r3
	sub r3, r3, r4
	ldr r4, [r2, #12]
	add r3, r0, r3
	sub r3, r3, r4
	ldr r4, [r2, #16]
	add r3, r0, r3
	sub r3, r3, r4
	ldr r4, [r2, #20]
	add r3, r0, r3
	sub r3, r3, r4
	ldr r4, [r2, #24]
	add r3, r0, r3
	ldr r2, [r2, #28]
	sub r3, r3, r4
	add r3, r0, r3
	sub r4, r3, r2
	movw r2, #10000
	cmp r1, r2
	blt label32
	mov r0, r4
	bl putint
	ldr r1, [sp, #16]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label20
	b label37
.p2align 4
label23:
	ldr r5, [sp, #20]
	movw r1, #27117
	movt r1, #21477
	ldr r0, [r5, r0, lsl #2]
	add r0, r0, r0, lsl #3
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r4, r1, r2, r0
	ldr r1, [sp, #16]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label20
	b label37
.p2align 4
label27:
	mov r0, r4
	bl putint
	ldr r1, [sp, #16]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label20
	b label37
