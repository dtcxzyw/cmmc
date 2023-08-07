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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, #13
	mov r0, #16
	mov r10, #15
	mov r8, #14
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	mov r9, #1
	sub sp, sp, #172
	mov r5, #11
	mov r6, #12
	mov r4, #10
	str r3, [sp, #92]
	mov r2, #8
	mov r1, #7
	str r0, [sp, #88]
	mov r3, #9
	str r10, [sp, #80]
	str r8, [sp, #76]
	str r7, [sp, #68]
	str r6, [sp, #64]
	str r5, [sp, #60]
	str r4, [sp, #56]
	str r3, [sp, #104]
	str r2, [sp, #108]
	str r1, [sp, #112]
	mov r1, #6
	str r1, [sp, #116]
	mov r1, #5
	str r1, [sp, #120]
	mov r1, #4
	str r1, [sp, #124]
	mov r1, #3
	str r1, [sp, #128]
	mov r1, #2
	str r1, [sp, #132]
	mov r1, #0
	mov r11, r1
	str r1, [sp, #136]
	str r9, [sp, #84]
	str r1, [sp, #140]
.p2align 4
label2:
	ldr r1, [sp, #136]
	movw r2, #26215
	movt r2, #26214
	smmul r0, r1, r2
	asr r1, r0, #2
	add r0, r1, r0, lsr #31
	ldr r1, [sp, #136]
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #92]
	str r1, [r0, #0]
	ldr r9, [sp, #84]
	ldr r1, [sp, #136]
	add r1, r1, r9
	add r9, r9, #32
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #4]
	ldr r1, [sp, #132]
	add r2, r1, #2
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #8]
	ldr r1, [sp, #128]
	add r2, r1, #6
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #12]
	ldr r1, [sp, #124]
	add r2, r1, #12
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #16]
	ldr r1, [sp, #120]
	add r2, r1, #20
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #20]
	ldr r1, [sp, #116]
	add r2, r1, #30
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #24]
	ldr r1, [sp, #112]
	add r2, r1, #42
	ldr r1, [sp, #136]
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #28]
	ldr r2, [sp, #108]
	ldr r1, [sp, #136]
	add r2, r2, #56
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #32]
	ldr r3, [sp, #104]
	ldr r1, [sp, #136]
	add r2, r3, #72
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #36]
	ldr r4, [sp, #56]
	ldr r1, [sp, #136]
	add r2, r4, #90
	add r4, r4, #320
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #40]
	ldr r5, [sp, #60]
	ldr r1, [sp, #136]
	add r2, r5, #110
	add r5, r5, #352
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #44]
	ldr r6, [sp, #64]
	ldr r1, [sp, #136]
	add r2, r6, #132
	add r6, r6, #384
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #48]
	ldr r7, [sp, #68]
	ldr r1, [sp, #136]
	add r2, r7, #156
	add r7, r7, #416
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #52]
	ldr r8, [sp, #76]
	ldr r1, [sp, #136]
	add r2, r8, #182
	add r8, r8, #448
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #56]
	ldr r10, [sp, #80]
	ldr r1, [sp, #136]
	add r2, r10, #210
	add r10, r10, #480
	add r1, r1, r2
	movw r2, #26215
	movt r2, #26214
	smmul r2, r1, r2
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r0, #60]
	ldr r0, [sp, #88]
	ldr r1, [sp, #136]
	add r2, r0, #240
	add r1, r1, r2
	str r1, [sp, #40]
	ldr r11, [sp, #140]
	add r11, r11, #16
	str r11, [sp, #36]
	ldr r1, [sp, #132]
	add r1, r1, #64
	str r1, [sp, #28]
	ldr r1, [sp, #128]
	add r1, r1, #96
	str r1, [sp, #24]
	ldr r1, [sp, #124]
	add r1, r1, #128
	str r1, [sp, #16]
	ldr r1, [sp, #120]
	add r1, r1, #160
	str r1, [sp, #8]
	ldr r1, [sp, #116]
	add r1, r1, #192
	str r1, [sp, #0]
	ldr r1, [sp, #112]
	ldr r2, [sp, #108]
	ldr r3, [sp, #104]
	str r9, [sp, #32]
	add r1, r1, #224
	add r9, r0, #512
	add r2, r2, #256
	movw r0, #10000
	add r3, r3, #288
	cmp r11, r0
	bge label149
	ldr r0, [sp, #92]
	add r0, r0, #64
	str r0, [sp, #92]
	str r9, [sp, #88]
	mov r0, r9
	str r10, [sp, #80]
	str r8, [sp, #76]
	str r7, [sp, #68]
	str r6, [sp, #64]
	str r5, [sp, #60]
	str r4, [sp, #56]
	str r3, [sp, #104]
	str r2, [sp, #108]
	str r1, [sp, #112]
	ldr r1, [sp, #0]
	str r1, [sp, #116]
	ldr r1, [sp, #8]
	str r1, [sp, #120]
	ldr r1, [sp, #16]
	str r1, [sp, #124]
	ldr r1, [sp, #24]
	str r1, [sp, #128]
	ldr r1, [sp, #28]
	str r1, [sp, #132]
	ldr r1, [sp, #40]
	str r1, [sp, #136]
	ldr r9, [sp, #32]
	str r9, [sp, #84]
	str r11, [sp, #140]
	b label2
label149:
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	mov r0, #0
	str r3, [sp, #144]
	str r0, [sp, #148]
.p2align 4
label24:
	ldr r0, [sp, #144]
	ldr r0, [r0, #0]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	movw r2, #:lower16:a2
	movt r2, #:upper16:a2
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #148]
	add r0, r2, r0, lsl #2
	str r0, [sp, #152]
	str r1, [r0, #0]
	ldr r0, [sp, #144]
	ldr r0, [r0, #4]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #4]
	ldr r0, [sp, #144]
	ldr r0, [r0, #8]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #8]
	ldr r0, [sp, #144]
	ldr r0, [r0, #12]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #12]
	ldr r0, [sp, #144]
	ldr r0, [r0, #16]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #16]
	ldr r0, [sp, #144]
	ldr r0, [r0, #20]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #20]
	ldr r0, [sp, #144]
	ldr r0, [r0, #24]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #24]
	ldr r0, [sp, #144]
	ldr r0, [r0, #28]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #28]
	ldr r0, [sp, #144]
	ldr r0, [r0, #32]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #32]
	ldr r0, [sp, #144]
	ldr r0, [r0, #36]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #36]
	ldr r0, [sp, #144]
	ldr r0, [r0, #40]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #40]
	ldr r0, [sp, #144]
	ldr r0, [r0, #44]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #44]
	ldr r0, [sp, #144]
	ldr r0, [r0, #48]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #48]
	ldr r0, [sp, #144]
	ldr r0, [r0, #52]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #52]
	ldr r0, [sp, #144]
	ldr r0, [r0, #56]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #56]
	ldr r0, [sp, #144]
	ldr r0, [r0, #60]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #152]
	str r1, [r0, #60]
	ldr r0, [sp, #148]
	add r1, r0, #16
	movw r0, #10000
	cmp r1, r0
	bge label27
	ldr r0, [sp, #144]
	add r0, r0, #64
	str r0, [sp, #144]
	str r1, [sp, #148]
	mov r0, r1
	b label24
label27:
	movw r2, #:lower16:a2
	movt r2, #:upper16:a2
	mov r0, #0
	str r2, [sp, #48]
	str r0, [sp, #44]
.p2align 4
label28:
	ldr r0, [sp, #48]
	movw r1, #34079
	movt r1, #20971
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	ldr r0, [r0, #0]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	ldr r0, [sp, #44]
	add r0, r3, r0, lsl #2
	str r0, [sp, #20]
	ldr r0, [r0, #0]
	add r1, r1, r0
	ldr r0, [sp, #44]
	add r0, r2, r0, lsl #2
	str r0, [sp, #12]
	str r1, [r0, #0]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #48]
	ldr r0, [r0, #4]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #20]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #12]
	str r1, [r0, #4]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #48]
	ldr r0, [r0, #8]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #20]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #12]
	str r1, [r0, #8]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #48]
	ldr r0, [r0, #12]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #20]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #12]
	str r1, [r0, #12]
	ldr r0, [sp, #44]
	add r1, r0, #4
	movw r0, #10000
	cmp r1, r0
	bge label273
	ldr r0, [sp, #48]
	add r0, r0, #16
	str r0, [sp, #48]
	str r1, [sp, #44]
	mov r0, r1
	b label28
label273:
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	mov r4, #0
	str r2, [sp, #96]
	mov r5, r2
	mov r0, r4
	movw r2, #:lower16:a2
	movt r2, #:upper16:a2
	str r2, [sp, #72]
	str r3, [sp, #52]
	movw r1, #10000
	cmp r4, r1
	bge label61
.p2align 4
label39:
	add r1, r0, #1
	cmp r0, #10
	str r1, [sp, #100]
	bge label283
	ldr r5, [sp, #96]
	movw r1, #3835
	movt r1, #12586
	ldr r0, [r5, #0]
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r4, r1, r2, r0
	mov r0, r4
	bl putint
	add r5, r5, #4
	ldr r3, [sp, #52]
	ldr r2, [sp, #72]
	str r5, [sp, #96]
	add r3, r3, #4
	add r2, r2, #4
	str r2, [sp, #72]
	str r3, [sp, #52]
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label39
	b label61
.p2align 4
label47:
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	add r2, r3, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r0, [sp, #156]
	add r0, r0, r1
	sub r1, r0, r3
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #4]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #8]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #12]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #16]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #20]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #24]
	sub r1, r0, r1
	ldr r0, [sp, #156]
	add r0, r0, r1
	ldr r1, [r2, #28]
	sub r4, r0, r1
	mov r0, r4
	bl putint
	ldr r3, [sp, #52]
	ldr r2, [sp, #72]
	ldr r5, [sp, #96]
	add r3, r3, #4
	add r2, r2, #4
	add r5, r5, #4
	str r5, [sp, #96]
	str r2, [sp, #72]
	str r3, [sp, #52]
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label39
	b label61
.p2align 4
label283:
	cmp r0, #20
	bge label805
	ldr r5, [sp, #96]
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	movw r2, #5000
	mov r1, r4
	ldr r0, [r5, #0]
	str r0, [sp, #156]
	movw r0, #20000
	add r0, r3, r0
	str r0, [sp, #160]
	str r2, [sp, #164]
.p2align 4
label43:
	ldr r0, [sp, #160]
	ldr r2, [r0, #0]
	ldr r0, [sp, #156]
	add r0, r0, r1
	sub r1, r0, r2
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #8]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #12]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #16]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #20]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #24]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #28]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #32]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #36]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #40]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #44]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #48]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #52]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #56]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #60]
	ldr r2, [sp, #164]
	sub r1, r1, r0
	add r2, r2, #16
	movw r0, #9992
	cmp r2, r0
	bge label47
	ldr r0, [sp, #160]
	add r0, r0, #64
	str r0, [sp, #160]
	str r2, [sp, #164]
	b label43
.p2align 4
label805:
	cmp r0, #30
	bge label60
	movw r1, #20000
	movw r3, #:lower16:a1
	movt r3, #:upper16:a1
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	add r0, r3, r1
	add r2, r2, r1
	movw r1, #5000
	str r2, [sp, #4]
	movw r2, #10000
	cmp r1, r2
	blt label57
.p2align 4
label56:
	mov r0, r4
	bl putint
	ldr r3, [sp, #52]
	ldr r2, [sp, #72]
	ldr r5, [sp, #96]
	add r3, r3, #4
	add r2, r2, #4
	add r5, r5, #4
	str r5, [sp, #96]
	str r2, [sp, #72]
	str r3, [sp, #52]
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label39
	b label61
.p2align 4
label57:
	movw r2, #2233
	cmp r1, r2
	bgt label59
	ldr r3, [sp, #52]
	add r1, r1, #2
	add r0, r0, #8
	ldr r3, [r3, #0]
	ldr r2, [sp, #4]
	add r3, r4, r3
	ldr r2, [r2, #0]
	add r2, r2, r3
	movw r3, #19047
	movt r3, #5033
	smmul r3, r2, r3
	asr r4, r3, #10
	add r3, r4, r3, lsr #31
	movw r4, #13333
	mls r4, r3, r4, r2
	ldr r2, [sp, #4]
	add r2, r2, #8
	str r2, [sp, #4]
	movw r2, #10000
	cmp r1, r2
	blt label57
	b label56
.p2align 4
label59:
	ldr r2, [sp, #72]
	add r1, r1, #1
	ldr r2, [r2, #0]
	ldr r3, [r0, #0]
	add r0, r0, #4
	add r2, r4, r2
	sub r4, r2, r3
	ldr r2, [sp, #4]
	add r2, r2, #4
	str r2, [sp, #4]
	movw r2, #10000
	cmp r1, r2
	blt label57
	b label56
.p2align 4
label60:
	ldr r5, [sp, #96]
	movw r1, #27117
	movt r1, #21477
	ldr r0, [r5, #0]
	add r5, r5, #4
	ldr r3, [sp, #52]
	add r0, r0, r0, lsl #3
	add r3, r3, #4
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r4, r1, r2, r0
	ldr r2, [sp, #72]
	str r5, [sp, #96]
	add r2, r2, #4
	str r2, [sp, #72]
	str r3, [sp, #52]
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label39
label61:
	mov r0, r4
	add sp, sp, #172
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
