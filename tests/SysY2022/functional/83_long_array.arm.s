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
	mov r3, #1
	sub sp, sp, #12
	mov r2, #2
	movw r6, #:lower16:a1
	movw r4, #:lower16:a3
	mov r1, #3
	mov r0, #4
	mov r5, #0
	movt r6, #:upper16:a1
	movt r4, #:upper16:a3
	mov r7, r5
	str r6, [sp, #0]
	movw r6, #:lower16:a2
	movt r6, #:upper16:a2
	str r6, [sp, #4]
.p2align 4
label2:
	ldr r6, [sp, #0]
	movw r9, #26215
	movt r9, #26214
	smmul r10, r5, r9
	add r8, r6, r7, lsl #2
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r10, r5, r10, lsl #1
	str r10, [r6, r7, lsl #2]
	add r7, r7, #4
	add r6, r5, r3
	add r3, r3, #8
	smmul r10, r6, r9
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r6, r6, r10, lsl #1
	str r6, [r8, #4]
	add r6, r2, #2
	add r2, r2, #16
	add r6, r5, r6
	smmul r10, r6, r9
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r6, r6, r10, lsl #1
	str r6, [r8, #8]
	add r6, r1, #6
	add r1, r1, #24
	add r6, r5, r6
	smmul r9, r6, r9
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	add r9, r9, r9, lsl #2
	sub r6, r6, r9, lsl #1
	str r6, [r8, #12]
	add r6, r0, #12
	add r0, r0, #32
	add r5, r5, r6
	movw r6, #10000
	cmp r7, r6
	blt label2
	mov r0, #0
.p2align 4
label9:
	ldr r6, [sp, #0]
	ldr r2, [r6, r0, lsl #2]
	add r1, r6, r0, lsl #2
	mul r3, r2, r2
	movw r2, #26215
	movt r2, #26214
	smmul r5, r3, r2
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	ldr r6, [sp, #4]
	add r5, r5, r5, lsl #2
	sub r5, r3, r5, lsl #1
	add r3, r6, r0, lsl #2
	str r5, [r6, r0, lsl #2]
	add r0, r0, #4
	ldr r5, [r1, #4]
	mul r5, r5, r5
	smmul r6, r5, r2
	asr r7, r6, #2
	add r6, r7, r6, lsr #31
	add r6, r6, r6, lsl #2
	sub r5, r5, r6, lsl #1
	str r5, [r3, #4]
	ldr r5, [r1, #8]
	mul r5, r5, r5
	smmul r6, r5, r2
	asr r7, r6, #2
	add r6, r7, r6, lsr #31
	add r6, r6, r6, lsl #2
	sub r5, r5, r6, lsl #1
	str r5, [r3, #8]
	ldr r1, [r1, #12]
	mul r1, r1, r1
	smmul r2, r1, r2
	asr r5, r2, #2
	add r2, r5, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #12]
	movw r1, #10000
	cmp r0, r1
	blt label9
	mov r0, #0
.p2align 4
label11:
	ldr r6, [sp, #4]
	ldr r2, [r6, r0, lsl #2]
	add r1, r6, r0, lsl #2
	mul r5, r2, r2
	movw r2, #34079
	movt r2, #20971
	smmul r3, r5, r2
	asr r6, r3, #5
	add r6, r6, r3, lsr #31
	mov r3, #100
	mls r7, r6, r3, r5
	ldr r6, [sp, #0]
	add r5, r6, r0, lsl #2
	ldr r6, [r6, r0, lsl #2]
	add r7, r7, r6
	str r7, [r4, r0, lsl #2]
	add r6, r4, r0, lsl #2
	ldr r7, [r1, #4]
	add r0, r0, #4
	mul r7, r7, r7
	smmul r8, r7, r2
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	mls r7, r8, r3, r7
	ldr r8, [r5, #4]
	add r7, r7, r8
	str r7, [r6, #4]
	ldr r7, [r1, #8]
	mul r7, r7, r7
	smmul r8, r7, r2
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	mls r7, r8, r3, r7
	ldr r8, [r5, #8]
	add r7, r7, r8
	str r7, [r6, #8]
	ldr r1, [r1, #12]
	mul r1, r1, r1
	smmul r2, r1, r2
	asr r7, r2, #5
	add r2, r7, r2, lsr #31
	mls r1, r2, r3, r1
	ldr r2, [r5, #12]
	add r1, r1, r2
	str r1, [r6, #12]
	movw r1, #10000
	cmp r0, r1
	blt label11
	mov r3, #0
	mov r5, r3
	movw r0, #10000
	cmp r3, r0
	blt label16
	b label33
.p2align 4
label13:
	movw r0, #10000
	cmp r5, r0
	bge label33
.p2align 4
label16:
	cmp r5, #10
	blt label17
	cmp r5, #20
	blt label148
	cmp r5, #30
	blt label152
	b label20
.p2align 4
label17:
	ldr r0, [r4, r5, lsl #2]
	movw r1, #3835
	movt r1, #12586
	add r0, r3, r0
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r6, r1, r2, r0
	mov r0, r6
	bl putint
	mov r3, r6
	add r5, r5, #1
	movw r0, #10000
	cmp r5, r0
	blt label16
	b label33
label152:
	mov r7, r3
	movw r0, #5000
	b label21
label20:
	ldr r0, [r4, r5, lsl #2]
	movw r1, #27117
	add r5, r5, #1
	movt r1, #21477
	add r0, r0, r0, lsl #3
	add r0, r3, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r3, r1, r2, r0
	b label13
.p2align 4
label21:
	movw r1, #10000
	cmp r0, r1
	blt label25
label24:
	mov r0, r7
	bl putint
	mov r3, r7
	add r5, r5, #1
	b label13
.p2align 4
label25:
	movw r1, #2233
	cmp r0, r1
	bgt label27
	ldr r6, [sp, #0]
	ldr r2, [r6, r5, lsl #2]
	ldr r1, [r4, r0, lsl #2]
	add r0, r0, #2
	add r2, r7, r2
	add r1, r1, r2
	movw r2, #19047
	movt r2, #5033
	smmul r2, r1, r2
	asr r3, r2, #10
	add r2, r3, r2, lsr #31
	movw r3, #13333
	mls r7, r2, r3, r1
	movw r1, #10000
	cmp r0, r1
	blt label25
	b label24
.p2align 4
label27:
	ldr r6, [sp, #4]
	ldr r1, [r6, r5, lsl #2]
	ldr r6, [sp, #0]
	add r1, r7, r1
	ldr r2, [r6, r0, lsl #2]
	add r0, r0, #1
	sub r7, r1, r2
	movw r1, #10000
	cmp r0, r1
	blt label25
	b label24
.p2align 4
label148:
	ldr r0, [r4, r5, lsl #2]
	movw r1, #5000
.p2align 4
label29:
	ldr r6, [sp, #0]
	add r3, r0, r3
	add r2, r6, r1, lsl #2
	ldr r6, [r6, r1, lsl #2]
	add r1, r1, #16
	sub r3, r3, r6
	ldr r6, [r2, #4]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #8]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #12]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #16]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #20]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #24]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #28]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #32]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #36]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #40]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #44]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #48]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #52]
	add r3, r0, r3
	sub r3, r3, r6
	ldr r6, [r2, #56]
	add r3, r0, r3
	ldr r2, [r2, #60]
	sub r3, r3, r6
	add r3, r0, r3
	sub r2, r3, r2
	movw r3, #9992
	cmp r1, r3
	bge label32
	mov r3, r2
	b label29
.p2align 4
label32:
	ldr r6, [sp, #0]
	add r2, r0, r2
	add r3, r6, r1, lsl #2
	ldr r1, [r6, r1, lsl #2]
	sub r1, r2, r1
	ldr r2, [r3, #4]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #8]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #12]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #16]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #20]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #24]
	add r1, r0, r1
	sub r1, r1, r2
	add r0, r0, r1
	ldr r1, [r3, #28]
	sub r6, r0, r1
	mov r0, r6
	bl putint
	mov r3, r6
	add r5, r5, #1
	movw r0, #10000
	cmp r5, r0
	blt label16
label33:
	mov r0, r3
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
