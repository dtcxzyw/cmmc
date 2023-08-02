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
	mov r5, #12
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	mov r7, #13
	mov r9, #15
	mov r10, #16
	mov r8, #14
	mov r4, #11
	mov r3, #10
	mov r2, #9
	mov r1, #8
	mov r0, #7
	sub sp, sp, #180
	str r6, [sp, #92]
	mov r6, #1
	str r10, [sp, #88]
	str r9, [sp, #76]
	str r8, [sp, #72]
	str r7, [sp, #68]
	str r5, [sp, #64]
	str r4, [sp, #112]
	str r3, [sp, #116]
	str r2, [sp, #120]
	str r1, [sp, #124]
	str r0, [sp, #128]
	mov r0, #6
	str r0, [sp, #132]
	mov r0, #5
	str r0, [sp, #136]
	mov r0, #4
	str r0, [sp, #140]
	mov r0, #3
	str r0, [sp, #144]
	mov r0, #2
	str r0, [sp, #148]
	mov r0, #0
	str r0, [sp, #152]
	str r6, [sp, #80]
	str r0, [sp, #156]
	mov r6, r0
.p2align 4
label2:
	ldr r0, [sp, #152]
	movw r1, #26215
	movt r1, #26214
	movw r11, #10000
	smmul r0, r0, r1
	asr r1, r0, #2
	add r0, r1, r0, lsr #31
	add r1, r0, r0, lsl #2
	ldr r0, [sp, #152]
	ldr r6, [sp, #92]
	sub r0, r0, r1, lsl #1
	movw r1, #26215
	movt r1, #26214
	str r0, [r6, #0]
	ldr r6, [sp, #80]
	ldr r0, [sp, #152]
	add r0, r0, r6
	ldr r6, [sp, #92]
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #4]
	ldr r0, [sp, #148]
	add r1, r0, #2
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #8]
	ldr r0, [sp, #144]
	add r1, r0, #6
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #12]
	ldr r0, [sp, #140]
	add r1, r0, #12
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #16]
	ldr r0, [sp, #136]
	add r1, r0, #20
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #20]
	ldr r0, [sp, #132]
	add r1, r0, #30
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #24]
	ldr r0, [sp, #128]
	add r1, r0, #42
	ldr r0, [sp, #152]
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #28]
	ldr r1, [sp, #124]
	ldr r0, [sp, #152]
	add r1, r1, #56
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #32]
	ldr r2, [sp, #120]
	ldr r0, [sp, #152]
	add r1, r2, #72
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #36]
	ldr r3, [sp, #116]
	ldr r0, [sp, #152]
	add r1, r3, #90
	add r3, r3, #320
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #40]
	ldr r4, [sp, #112]
	ldr r0, [sp, #152]
	add r1, r4, #110
	add r4, r4, #352
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #44]
	ldr r5, [sp, #64]
	ldr r0, [sp, #152]
	add r1, r5, #132
	add r5, r5, #384
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #48]
	ldr r7, [sp, #68]
	ldr r0, [sp, #152]
	add r1, r7, #156
	add r7, r7, #416
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #52]
	ldr r8, [sp, #72]
	ldr r0, [sp, #152]
	add r1, r8, #182
	add r8, r8, #448
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #56]
	ldr r9, [sp, #76]
	ldr r0, [sp, #152]
	add r1, r9, #210
	add r9, r9, #480
	add r0, r0, r1
	movw r1, #26215
	movt r1, #26214
	smmul r1, r0, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r0, r0, r1, lsl #1
	str r0, [r6, #60]
	ldr r10, [sp, #88]
	ldr r0, [sp, #152]
	add r1, r10, #240
	add r10, r10, #512
	add r0, r0, r1
	str r0, [sp, #40]
	ldr r6, [sp, #156]
	add r6, r6, #16
	str r6, [sp, #36]
	ldr r0, [sp, #148]
	add r0, r0, #64
	str r0, [sp, #28]
	ldr r0, [sp, #144]
	add r0, r0, #96
	str r0, [sp, #24]
	ldr r0, [sp, #140]
	add r0, r0, #128
	str r0, [sp, #16]
	ldr r0, [sp, #136]
	add r0, r0, #160
	str r0, [sp, #8]
	ldr r0, [sp, #132]
	add r0, r0, #192
	str r0, [sp, #0]
	ldr r0, [sp, #128]
	ldr r1, [sp, #124]
	ldr r2, [sp, #120]
	ldr r6, [sp, #80]
	add r0, r0, #224
	add r1, r1, #256
	add r2, r2, #288
	add r6, r6, #32
	str r6, [sp, #32]
	ldr r6, [sp, #36]
	cmp r6, r11
	bge label22
	ldr r6, [sp, #92]
	add r6, r6, #64
	str r6, [sp, #92]
	str r10, [sp, #88]
	str r9, [sp, #76]
	str r8, [sp, #72]
	str r7, [sp, #68]
	str r5, [sp, #64]
	str r4, [sp, #112]
	str r3, [sp, #116]
	str r2, [sp, #120]
	str r1, [sp, #124]
	str r0, [sp, #128]
	ldr r0, [sp, #0]
	str r0, [sp, #132]
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #16]
	str r0, [sp, #140]
	ldr r0, [sp, #24]
	str r0, [sp, #144]
	ldr r0, [sp, #28]
	str r0, [sp, #148]
	ldr r0, [sp, #40]
	str r0, [sp, #152]
	ldr r6, [sp, #32]
	str r6, [sp, #80]
	ldr r6, [sp, #36]
	str r6, [sp, #156]
	b label2
label22:
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	str r6, [sp, #160]
	mov r0, r6
	mov r0, #0
	str r0, [sp, #164]
.p2align 4
label23:
	ldr r0, [sp, #160]
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
	ldr r0, [sp, #164]
	add r0, r2, r0, lsl #2
	str r0, [sp, #168]
	str r1, [r0, #0]
	ldr r0, [sp, #160]
	ldr r0, [r0, #4]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #4]
	ldr r0, [sp, #160]
	ldr r0, [r0, #8]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #8]
	ldr r0, [sp, #160]
	ldr r0, [r0, #12]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #12]
	ldr r0, [sp, #160]
	ldr r0, [r0, #16]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #16]
	ldr r0, [sp, #160]
	ldr r0, [r0, #20]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #20]
	ldr r0, [sp, #160]
	ldr r0, [r0, #24]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #24]
	ldr r0, [sp, #160]
	ldr r0, [r0, #28]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #28]
	ldr r0, [sp, #160]
	ldr r0, [r0, #32]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #32]
	ldr r0, [sp, #160]
	ldr r0, [r0, #36]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #36]
	ldr r0, [sp, #160]
	ldr r0, [r0, #40]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #40]
	ldr r0, [sp, #160]
	ldr r0, [r0, #44]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #44]
	ldr r0, [sp, #160]
	ldr r0, [r0, #48]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #48]
	ldr r0, [sp, #160]
	ldr r0, [r0, #52]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #52]
	ldr r0, [sp, #160]
	ldr r0, [r0, #56]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #56]
	ldr r0, [sp, #160]
	ldr r0, [r0, #60]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #168]
	str r1, [r0, #60]
	ldr r0, [sp, #164]
	add r1, r0, #16
	movw r0, #10000
	cmp r1, r0
	bge label236
	ldr r0, [sp, #160]
	add r0, r0, #64
	str r0, [sp, #160]
	str r1, [sp, #164]
	mov r0, r1
	b label23
label236:
	movw r2, #:lower16:a2
	movt r2, #:upper16:a2
	str r2, [sp, #48]
	mov r0, r2
	mov r0, #0
	str r0, [sp, #44]
.p2align 4
label28:
	ldr r0, [sp, #48]
	movw r1, #34079
	movt r1, #20971
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
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
	add r0, r6, r0, lsl #2
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
	bge label32
	ldr r0, [sp, #48]
	add r0, r0, #16
	str r0, [sp, #48]
	str r1, [sp, #44]
	mov r0, r1
	b label28
label32:
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	mov r4, #0
	mov r5, r2
	str r2, [sp, #104]
	mov r0, r2
	mov r1, r2
	str r2, [sp, #100]
	mov r0, r4
	str r2, [sp, #96]
	movw r2, #:lower16:a2
	movt r2, #:upper16:a2
	str r2, [sp, #84]
	str r6, [sp, #60]
	movw r1, #10000
	cmp r4, r1
	bge label63
.p2align 4
label41:
	add r1, r0, #1
	cmp r0, #10
	str r1, [sp, #108]
	bge label285
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
	ldr r6, [sp, #60]
	add r5, r5, #4
	ldr r2, [sp, #84]
	ldr r1, [sp, #100]
	ldr r0, [sp, #104]
	add r6, r6, #4
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #4
	str r0, [sp, #104]
	str r1, [sp, #100]
	str r5, [sp, #96]
	str r2, [sp, #84]
	str r6, [sp, #60]
	ldr r1, [sp, #108]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label41
	b label63
.p2align 4
label49:
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	add r2, r6, r2, lsl #2
	ldr r3, [r2, #0]
	ldr r0, [sp, #172]
	add r0, r0, r1
	sub r1, r0, r3
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #4]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #8]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #12]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #16]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #20]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #24]
	sub r1, r0, r1
	ldr r0, [sp, #172]
	add r0, r0, r1
	ldr r1, [r2, #28]
	sub r4, r0, r1
	mov r0, r4
	bl putint
	ldr r6, [sp, #60]
	ldr r2, [sp, #84]
	ldr r5, [sp, #96]
	ldr r1, [sp, #100]
	add r6, r6, #4
	ldr r0, [sp, #104]
	add r2, r2, #4
	add r5, r5, #4
	add r1, r1, #4
	add r0, r0, #4
	str r0, [sp, #104]
	str r1, [sp, #100]
	str r5, [sp, #96]
	str r2, [sp, #84]
	str r6, [sp, #60]
	ldr r1, [sp, #108]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label41
	b label63
.p2align 4
label285:
	cmp r0, #20
	bge label817
	ldr r1, [sp, #100]
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	movw r2, #5000
	ldr r0, [r1, #0]
	mov r1, r4
	str r0, [sp, #172]
	movw r0, #20000
	add r0, r6, r0
	str r0, [sp, #56]
	str r2, [sp, #52]
.p2align 4
label45:
	ldr r0, [sp, #56]
	ldr r2, [r0, #0]
	ldr r0, [sp, #172]
	add r0, r0, r1
	sub r1, r0, r2
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #8]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #12]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #16]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #20]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #24]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #28]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #32]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #36]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #40]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #44]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #48]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #52]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #56]
	sub r1, r1, r0
	ldr r0, [sp, #172]
	add r1, r0, r1
	ldr r0, [sp, #56]
	ldr r0, [r0, #60]
	ldr r2, [sp, #52]
	sub r1, r1, r0
	add r2, r2, #16
	movw r0, #9992
	cmp r2, r0
	bge label49
	ldr r0, [sp, #56]
	add r0, r0, #64
	str r0, [sp, #56]
	str r2, [sp, #52]
	b label45
.p2align 4
label817:
	cmp r0, #30
	bge label62
	movw r1, #20000
	movw r6, #:lower16:a1
	movt r6, #:upper16:a1
	movw r2, #:lower16:a3
	movt r2, #:upper16:a3
	add r0, r6, r1
	add r2, r2, r1
	movw r1, #5000
	str r2, [sp, #4]
	movw r2, #10000
	cmp r1, r2
	blt label59
.p2align 4
label58:
	mov r0, r4
	bl putint
	ldr r6, [sp, #60]
	ldr r2, [sp, #84]
	ldr r5, [sp, #96]
	ldr r1, [sp, #100]
	add r6, r6, #4
	ldr r0, [sp, #104]
	add r2, r2, #4
	add r5, r5, #4
	add r1, r1, #4
	add r0, r0, #4
	str r0, [sp, #104]
	str r1, [sp, #100]
	str r5, [sp, #96]
	str r2, [sp, #84]
	str r6, [sp, #60]
	ldr r1, [sp, #108]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label41
	b label63
.p2align 4
label59:
	movw r2, #2233
	cmp r1, r2
	bgt label61
	ldr r6, [sp, #60]
	add r1, r1, #2
	add r0, r0, #8
	ldr r3, [r6, #0]
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
	blt label59
	b label58
.p2align 4
label61:
	ldr r2, [sp, #84]
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
	blt label59
	b label58
.p2align 4
label62:
	ldr r0, [sp, #104]
	movw r2, #27117
	movt r2, #21477
	ldr r1, [r0, #0]
	add r0, r0, #4
	ldr r6, [sp, #60]
	add r1, r1, r1, lsl #3
	add r6, r6, #4
	add r1, r4, r1
	smmul r2, r1, r2
	asr r3, r2, #15
	add r2, r3, r2, lsr #31
	movw r3, #34452
	movt r3, #1
	mls r4, r2, r3, r1
	ldr r2, [sp, #84]
	ldr r5, [sp, #96]
	ldr r1, [sp, #100]
	str r0, [sp, #104]
	add r2, r2, #4
	add r5, r5, #4
	add r1, r1, #4
	str r1, [sp, #100]
	str r5, [sp, #96]
	str r2, [sp, #84]
	str r6, [sp, #60]
	ldr r1, [sp, #108]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label41
label63:
	mov r0, r4
	add sp, sp, #180
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
