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
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #0
	mov r0, #5
	sub sp, sp, #36
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	mov r2, #3
	mov r9, #7
	str r3, [sp, #24]
	mov r5, r3
	mov r8, #10
	mov r7, #9
	mov r4, r1
	str r8, [sp, #16]
	mov r3, #1
	str r7, [sp, #12]
	str r9, [sp, #4]
	mov r9, #6
	str r9, [sp, #0]
	str r3, [sp, #20]
.p2align 4
label2:
	movw r6, #26215
	movt r6, #26214
	add r4, r4, #16
	smmul r3, r1, r6
	asr r5, r3, #2
	add r3, r5, r3, lsr #31
	ldr r5, [sp, #24]
	add r3, r3, r3, lsl #2
	sub r3, r1, r3, lsl #1
	str r3, [r5, #0]
	ldr r3, [sp, #20]
	add r7, r1, r3
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #4]
	add r7, r3, #1
	add r7, r1, r7, lsl #1
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #8]
	add r7, r2, #6
	add r2, r2, #96
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #12]
	lsl r7, r3, #2
	add r7, r7, #12
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #16]
	add r7, r0, #20
	add r0, r0, #160
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #20]
	ldr r9, [sp, #0]
	add r7, r9, #30
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #24]
	ldr r9, [sp, #4]
	add r7, r9, #42
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #28]
	lsl r7, r3, #3
	add r7, r7, #56
	add r7, r1, r7
	smmul r8, r7, r6
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r7, r7, r8, lsl #1
	str r7, [r5, #32]
	ldr r7, [sp, #12]
	add r8, r7, #72
	add r7, r7, #288
	add r8, r1, r8
	smmul r9, r8, r6
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	add r9, r9, r9, lsl #2
	sub r8, r8, r9, lsl #1
	str r8, [r5, #36]
	ldr r8, [sp, #16]
	add r9, r8, #90
	add r8, r8, #320
	add r9, r1, r9
	smmul r10, r9, r6
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r5, #40]
	mov r9, #11
	mul r9, r3, r9
	add r9, r9, #110
	add r9, r1, r9
	smmul r10, r9, r6
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r5, #44]
	add r9, r3, r3, lsl #1
	lsl r9, r9, #2
	add r9, r9, #132
	add r9, r1, r9
	smmul r10, r9, r6
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r5, #48]
	mov r9, #13
	mul r9, r3, r9
	add r9, r9, #156
	add r9, r1, r9
	smmul r10, r9, r6
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	str r9, [r5, #52]
	rsb r9, r3, r3, lsl #3
	lsl r9, r9, #1
	add r9, r9, #182
	add r9, r1, r9
	smmul r10, r9, r6
	asr r11, r10, #2
	add r10, r11, r10, lsr #31
	add r10, r10, r10, lsl #2
	sub r9, r9, r10, lsl #1
	rsb r10, r3, r3, lsl #4
	str r9, [r5, #56]
	add r10, r10, #210
	lsl r9, r3, #4
	add r10, r1, r10
	add r3, r3, #32
	smmul r6, r10, r6
	asr r11, r6, #2
	add r6, r11, r6, lsr #31
	add r6, r6, r6, lsl #2
	sub r6, r10, r6, lsl #1
	str r6, [r5, #60]
	add r5, r9, #240
	ldr r9, [sp, #0]
	add r1, r1, r5
	movw r5, #10000
	cmp r4, r5
	add r6, r9, #192
	ldr r9, [sp, #4]
	add r9, r9, #224
	bge label140
	ldr r5, [sp, #24]
	add r5, r5, #64
	str r5, [sp, #24]
	str r8, [sp, #16]
	str r7, [sp, #12]
	str r9, [sp, #4]
	str r6, [sp, #0]
	mov r9, r6
	str r3, [sp, #20]
	b label2
label140:
	movw r3, #:lower16:a2
	movt r3, #:upper16:a2
	mov r1, #0
	mov r0, r3
.p2align 4
label15:
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	add r2, r3, r1, lsl #2
	add r1, r1, #16
	ldr r3, [r2, #0]
	mul r4, r3, r3
	movw r3, #26215
	movt r3, #26214
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #0]
	ldr r4, [r2, #4]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #4]
	ldr r4, [r2, #8]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #8]
	ldr r4, [r2, #12]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #12]
	ldr r4, [r2, #16]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #16]
	ldr r4, [r2, #20]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #20]
	ldr r4, [r2, #24]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #24]
	ldr r4, [r2, #28]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #28]
	ldr r4, [r2, #32]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #32]
	ldr r4, [r2, #36]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #36]
	ldr r4, [r2, #40]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #40]
	ldr r4, [r2, #44]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #44]
	ldr r4, [r2, #48]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #48]
	ldr r4, [r2, #52]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #52]
	ldr r4, [r2, #56]
	mul r4, r4, r4
	smmul r5, r4, r3
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r4, r4, r5, lsl #1
	str r4, [r0, #56]
	ldr r2, [r2, #60]
	mul r2, r2, r2
	smmul r3, r2, r3
	asr r4, r3, #2
	add r3, r4, r3, lsr #31
	add r3, r3, r3, lsl #2
	sub r2, r2, r3, lsl #1
	str r2, [r0, #60]
	movw r2, #10000
	cmp r1, r2
	bge label226
	add r0, r0, #64
	b label15
label226:
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	mov r1, #0
	mov r0, r2
	b label20
.p2align 4
label53:
	add r0, r0, #16
.p2align 4
label20:
	movw r3, #:lower16:a2
	movt r3, #:upper16:a2
	movw r4, #34079
	movt r4, #20971
	add r2, r3, r1, lsl #2
	ldr r3, [r2, #0]
	mul r3, r3, r3
	smmul r5, r3, r4
	asr r6, r5, #5
	add r6, r6, r5, lsr #31
	mov r5, #100
	mls r6, r6, r5, r3
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	ldr r7, [r3, #0]
	add r6, r6, r7
	str r6, [r0, #0]
	ldr r6, [r2, #4]
	mul r6, r6, r6
	smmul r7, r6, r4
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	ldr r7, [r3, #4]
	add r6, r6, r7
	str r6, [r0, #4]
	ldr r6, [r2, #8]
	mul r6, r6, r6
	smmul r7, r6, r4
	asr r8, r7, #5
	add r7, r8, r7, lsr #31
	mls r6, r7, r5, r6
	ldr r7, [r3, #8]
	add r6, r6, r7
	str r6, [r0, #8]
	ldr r2, [r2, #12]
	ldr r3, [r3, #12]
	mul r2, r2, r2
	smmul r4, r2, r4
	asr r6, r4, #5
	add r4, r6, r4, lsr #31
	mls r2, r4, r5, r2
	add r2, r2, r3
	str r2, [r0, #12]
	movw r2, #10000
	cmp r1, r2
	blt label53
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	mov r4, #0
	str r2, [sp, #8]
	mov r0, r2
	mov r5, r4
	cmp r4, #10
	bge label269
.p2align 4
label32:
	ldr r0, [sp, #8]
	movw r1, #3835
	movt r1, #12586
	ldr r0, [r0, #0]
	add r0, r5, r0
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r5, r1, r2, r0
	mov r0, r5
	bl putint
	movw r0, #10000
	add r4, r4, #1
	cmp r4, r0
	bge label31
.p2align 4
label30:
	ldr r0, [sp, #8]
	cmp r4, #10
	add r0, r0, #4
	str r0, [sp, #8]
	blt label32
	cmp r4, #20
	bge label778
.p2align 4
label34:
	ldr r0, [sp, #8]
	movw r1, #20000
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	movw r2, #5000
	add r1, r3, r1
	mov r3, r5
	ldr r0, [r0, #0]
	b label35
.p2align 4
label40:
	add r1, r1, #64
.p2align 4
label35:
	add r3, r0, r3
	ldr r5, [r1, #0]
	add r2, r2, #16
	sub r3, r3, r5
	ldr r5, [r1, #4]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #8]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #12]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #16]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #20]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #24]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #28]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #32]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #36]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #40]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #44]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #48]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #52]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #56]
	add r3, r0, r3
	sub r3, r3, r5
	ldr r5, [r1, #60]
	add r3, r0, r3
	sub r3, r3, r5
	movw r5, #9992
	cmp r2, r5
	blt label40
	add r2, r0, r3
	ldr r3, [r1, #64]
	sub r2, r2, r3
	ldr r3, [r1, #68]
	add r2, r0, r2
	sub r2, r2, r3
	ldr r3, [r1, #72]
	add r2, r0, r2
	sub r2, r2, r3
	ldr r3, [r1, #76]
	add r2, r0, r2
	sub r2, r2, r3
	ldr r3, [r1, #80]
	add r2, r0, r2
	sub r2, r2, r3
	ldr r3, [r1, #84]
	add r2, r0, r2
	sub r2, r2, r3
	ldr r3, [r1, #88]
	add r2, r0, r2
	ldr r1, [r1, #92]
	sub r2, r2, r3
	add r0, r0, r2
	sub r5, r0, r1
	mov r0, r5
	bl putint
	movw r0, #10000
	add r4, r4, #1
	cmp r4, r0
	blt label30
	b label31
.p2align 4
label778:
	cmp r4, #30
	bge label52
.p2align 4
label42:
	movw r0, #20000
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	add r1, r3, r0
	add r0, r2, r0
	movw r2, #5000
	movw r3, #10000
	cmp r2, r3
	blt label49
	b label48
.p2align 4
label51:
	movw r3, #:lower16:a2
	movt r3, #:upper16:a2
	add r2, r2, #1
	add r0, r0, #4
	ldr r3, [r3, r4, lsl #2]
	add r3, r5, r3
	ldr r5, [r1, #0]
	add r1, r1, #4
	sub r5, r3, r5
	movw r3, #10000
	cmp r2, r3
	bge label48
.p2align 4
label49:
	movw r3, #2233
	cmp r2, r3
	bgt label51
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	add r2, r2, #2
	add r1, r1, #8
	ldr r3, [r3, r4, lsl #2]
	add r3, r5, r3
	ldr r5, [r0, #0]
	add r0, r0, #8
	add r3, r3, r5
	movw r5, #19047
	movt r5, #5033
	smmul r5, r3, r5
	asr r6, r5, #10
	add r5, r6, r5, lsr #31
	movw r6, #13333
	mls r5, r5, r6, r3
	movw r3, #10000
	cmp r2, r3
	blt label49
	b label48
.p2align 4
label52:
	ldr r0, [sp, #8]
	movw r1, #27117
	movt r1, #21477
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r0, r0, r0, lsl #3
	add r0, r5, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r5, r1, r2, r0
	movw r0, #10000
	cmp r4, r0
	blt label30
	b label31
.p2align 4
label48:
	mov r0, r5
	bl putint
	movw r0, #10000
	add r4, r4, #1
	cmp r4, r0
	blt label30
label31:
	mov r0, r5
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label269:
	cmp r4, #20
	blt label34
	cmp r4, #30
	blt label42
	b label52
