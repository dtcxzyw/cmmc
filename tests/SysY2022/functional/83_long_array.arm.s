.arch armv7ve
.data
.bss
.align 4
a1:
	.zero	40000
.align 4
a2:
	.zero	40000
.align 4
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
	mov r0, #1
	mov r8, #11
	movw r2, #:lower16:a3
	mov r3, #16
	movw r1, #:lower16:a1
	mov r6, #9
	mov r10, #13
	sub sp, sp, #188
	mov r9, #12
	mov r5, #8
	mov r7, #10
	mov r4, #7
	movt r2, #:upper16:a3
	movt r1, #:upper16:a1
	str r1, [sp, #176]
	movw r1, #:lower16:a2
	movt r1, #:upper16:a2
	str r1, [sp, #168]
	mov r1, #14
	str r2, [sp, #160]
	mov r2, #15
	str r3, [sp, #148]
	str r2, [sp, #76]
	str r1, [sp, #84]
	str r10, [sp, #92]
	str r9, [sp, #100]
	str r8, [sp, #108]
	str r7, [sp, #116]
	str r6, [sp, #124]
	str r5, [sp, #132]
	str r4, [sp, #60]
	mov r4, #6
	str r4, [sp, #56]
	mov r4, #5
	str r4, [sp, #52]
	mov r4, #4
	str r4, [sp, #44]
	mov r4, #3
	str r4, [sp, #40]
	mov r4, #2
	str r4, [sp, #36]
	mov r4, #0
	mov r11, r4
	str r4, [sp, #32]
	str r0, [sp, #68]
	str r4, [sp, #28]
.p2align 4
label2:
	ldr r1, [sp, #176]
	ldr r11, [sp, #28]
	add r3, r1, r11, lsl #2
	str r3, [sp, #16]
	movw r3, #26215
	str r3, [sp, #172]
	movt r3, #26214
	str r3, [sp, #172]
	ldr r4, [sp, #32]
	smmul r0, r4, r3
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r0, r4, r0, lsl #1
	str r0, [r1, r11, lsl #2]
	add r11, r11, #16
	ldr r0, [sp, #68]
	add r1, r4, r0
	add r0, r0, #32
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #4]
	ldr r4, [sp, #36]
	add r1, r4, #2
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #8]
	ldr r4, [sp, #40]
	add r1, r4, #6
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #12]
	ldr r4, [sp, #44]
	add r1, r4, #12
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #16]
	ldr r4, [sp, #52]
	add r1, r4, #20
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #20]
	ldr r4, [sp, #56]
	add r1, r4, #30
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #24]
	ldr r4, [sp, #60]
	add r1, r4, #42
	ldr r4, [sp, #32]
	ldr r3, [sp, #172]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #28]
	ldr r5, [sp, #132]
	ldr r3, [sp, #172]
	add r1, r5, #56
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #32]
	ldr r6, [sp, #124]
	ldr r3, [sp, #172]
	add r1, r6, #72
	add r6, r6, #288
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #36]
	ldr r7, [sp, #116]
	ldr r3, [sp, #172]
	add r1, r7, #90
	add r7, r7, #320
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #40]
	ldr r8, [sp, #108]
	ldr r3, [sp, #172]
	add r1, r8, #110
	add r8, r8, #352
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #44]
	ldr r9, [sp, #100]
	ldr r3, [sp, #172]
	add r1, r9, #132
	add r9, r9, #384
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #48]
	ldr r10, [sp, #92]
	ldr r3, [sp, #172]
	add r1, r10, #156
	add r10, r10, #416
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #16]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #52]
	ldr r1, [sp, #84]
	ldr r3, [sp, #172]
	add r2, r1, #182
	add r1, r1, #448
	add r2, r4, r2
	smmul r3, r2, r3
	asr r4, r3, #2
	add r3, r4, r3, lsr #31
	add r3, r3, r3, lsl #2
	sub r2, r2, r3, lsl #1
	ldr r3, [sp, #16]
	str r2, [r3, #56]
	ldr r2, [sp, #76]
	ldr r4, [sp, #32]
	add r3, r2, #210
	add r2, r2, #480
	add r4, r4, r3
	ldr r3, [sp, #172]
	smmul r3, r4, r3
	asr r5, r3, #2
	add r3, r5, r3, lsr #31
	add r3, r3, r3, lsl #2
	sub r4, r4, r3, lsl #1
	ldr r3, [sp, #16]
	str r4, [r3, #60]
	ldr r3, [sp, #148]
	ldr r4, [sp, #32]
	add r5, r3, #240
	add r3, r3, #512
	add r4, r4, r5
	str r4, [sp, #96]
	str r11, [sp, #104]
	ldr r4, [sp, #36]
	add r4, r4, #64
	str r4, [sp, #120]
	ldr r4, [sp, #40]
	add r4, r4, #96
	str r4, [sp, #128]
	ldr r4, [sp, #44]
	add r4, r4, #128
	str r4, [sp, #136]
	ldr r4, [sp, #52]
	add r4, r4, #160
	str r4, [sp, #140]
	ldr r4, [sp, #56]
	add r4, r4, #192
	str r4, [sp, #152]
	ldr r4, [sp, #60]
	ldr r5, [sp, #132]
	str r0, [sp, #112]
	movw r0, #10000
	add r4, r4, #224
	cmp r11, r0
	add r5, r5, #256
	blt label135
	mov r0, #0
	str r0, [sp, #164]
	b label21
.p2align 4
label135:
	str r3, [sp, #148]
	str r2, [sp, #76]
	str r1, [sp, #84]
	str r10, [sp, #92]
	str r9, [sp, #100]
	str r8, [sp, #108]
	str r7, [sp, #116]
	str r6, [sp, #124]
	str r5, [sp, #132]
	str r4, [sp, #60]
	ldr r4, [sp, #152]
	str r4, [sp, #56]
	ldr r4, [sp, #140]
	str r4, [sp, #52]
	ldr r4, [sp, #136]
	str r4, [sp, #44]
	ldr r4, [sp, #128]
	str r4, [sp, #40]
	ldr r4, [sp, #120]
	str r4, [sp, #36]
	ldr r4, [sp, #96]
	str r4, [sp, #32]
	ldr r0, [sp, #112]
	str r0, [sp, #68]
	ldr r11, [sp, #104]
	str r11, [sp, #28]
	b label2
.p2align 4
label21:
	ldr r1, [sp, #176]
	ldr r0, [sp, #164]
	add r0, r1, r0, lsl #2
	str r0, [sp, #64]
	ldr r0, [sp, #164]
	ldr r0, [r1, r0, lsl #2]
	mul r1, r0, r0
	movw r0, #26215
	str r0, [sp, #144]
	movt r0, #26214
	str r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r2, r1, r0, lsl #1
	ldr r1, [sp, #168]
	ldr r0, [sp, #164]
	add r0, r1, r0, lsl #2
	str r0, [sp, #156]
	ldr r0, [sp, #164]
	str r2, [r1, r0, lsl #2]
	ldr r0, [sp, #64]
	ldr r0, [r0, #4]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #4]
	ldr r0, [sp, #64]
	ldr r0, [r0, #8]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #8]
	ldr r0, [sp, #64]
	ldr r0, [r0, #12]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #12]
	ldr r0, [sp, #64]
	ldr r0, [r0, #16]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #16]
	ldr r0, [sp, #64]
	ldr r0, [r0, #20]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #20]
	ldr r0, [sp, #64]
	ldr r0, [r0, #24]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #24]
	ldr r0, [sp, #64]
	ldr r0, [r0, #28]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #28]
	ldr r0, [sp, #64]
	ldr r0, [r0, #32]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #32]
	ldr r0, [sp, #64]
	ldr r0, [r0, #36]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #36]
	ldr r0, [sp, #64]
	ldr r0, [r0, #40]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #40]
	ldr r0, [sp, #64]
	ldr r0, [r0, #44]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #44]
	ldr r0, [sp, #64]
	ldr r0, [r0, #48]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #48]
	ldr r0, [sp, #64]
	ldr r0, [r0, #52]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #52]
	ldr r0, [sp, #64]
	ldr r0, [r0, #56]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #56]
	ldr r0, [sp, #64]
	ldr r0, [r0, #60]
	mul r1, r0, r0
	ldr r0, [sp, #144]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #156]
	str r1, [r0, #60]
	movw r1, #10000
	ldr r0, [sp, #164]
	add r0, r0, #16
	cmp r0, r1
	blt label222
	mov r0, #0
	str r0, [sp, #48]
	b label23
.p2align 4
label222:
	str r0, [sp, #164]
	b label21
.p2align 4
label23:
	ldr r1, [sp, #168]
	ldr r0, [sp, #48]
	add r0, r1, r0, lsl #2
	str r0, [sp, #8]
	ldr r0, [sp, #48]
	ldr r0, [r1, r0, lsl #2]
	mul r1, r0, r0
	movw r0, #34079
	str r0, [sp, #12]
	movt r0, #20971
	str r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	mov r0, #100
	mls r2, r2, r0, r1
	str r0, [sp, #24]
	ldr r1, [sp, #176]
	ldr r0, [sp, #48]
	add r0, r1, r0, lsl #2
	str r0, [sp, #20]
	ldr r0, [sp, #48]
	ldr r0, [r1, r0, lsl #2]
	add r1, r2, r0
	ldr r2, [sp, #160]
	ldr r0, [sp, #48]
	add r0, r2, r0, lsl #2
	str r0, [sp, #4]
	ldr r0, [sp, #48]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #8]
	ldr r0, [r0, #12]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #12]
	ldr r0, [sp, #8]
	ldr r0, [r0, #16]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #16]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #16]
	ldr r0, [sp, #8]
	ldr r0, [r0, #20]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #20]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #20]
	ldr r0, [sp, #8]
	ldr r0, [r0, #24]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #24]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #24]
	ldr r0, [sp, #8]
	ldr r0, [r0, #28]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #28]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #28]
	ldr r0, [sp, #8]
	ldr r0, [r0, #32]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #32]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #32]
	ldr r0, [sp, #8]
	ldr r0, [r0, #36]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #36]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #36]
	ldr r0, [sp, #8]
	ldr r0, [r0, #40]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #40]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #40]
	ldr r0, [sp, #8]
	ldr r0, [r0, #44]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #44]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #44]
	ldr r0, [sp, #8]
	ldr r0, [r0, #48]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #48]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #48]
	ldr r0, [sp, #8]
	ldr r0, [r0, #52]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #52]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #52]
	ldr r0, [sp, #8]
	ldr r0, [r0, #56]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #56]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #56]
	ldr r0, [sp, #8]
	ldr r0, [r0, #60]
	mul r1, r0, r0
	ldr r0, [sp, #12]
	smmul r0, r1, r0
	asr r2, r0, #5
	add r2, r2, r0, lsr #31
	ldr r0, [sp, #24]
	mls r1, r2, r0, r1
	ldr r0, [sp, #20]
	ldr r0, [r0, #60]
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #60]
	movw r1, #10000
	ldr r0, [sp, #48]
	add r0, r0, #16
	cmp r0, r1
	blt label358
	mov r1, #0
	str r1, [sp, #0]
	mov r3, r1
	movw r0, #10000
	cmp r1, r0
	blt label28
	b label45
.p2align 4
label358:
	str r0, [sp, #48]
	b label23
.p2align 4
label28:
	ldr r3, [sp, #0]
	cmp r3, #10
	blt label44
	cmp r3, #20
	blt label30
	cmp r3, #30
	blt label481
	b label43
.p2align 4
label30:
	ldr r2, [sp, #160]
	ldr r3, [sp, #0]
	ldr r0, [r2, r3, lsl #2]
	mov r2, r1
	str r0, [sp, #72]
	movw r0, #5000
	str r0, [sp, #80]
.p2align 4
label31:
	ldr r1, [sp, #176]
	ldr r0, [sp, #80]
	add r0, r1, r0, lsl #2
	str r0, [sp, #88]
	ldr r0, [sp, #80]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #72]
	add r0, r0, r2
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #8]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #12]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #16]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #20]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #24]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #28]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #32]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #36]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #40]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #44]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #48]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #52]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #56]
	sub r1, r1, r0
	ldr r0, [sp, #72]
	add r1, r0, r1
	ldr r0, [sp, #88]
	ldr r0, [r0, #60]
	sub r2, r1, r0
	movw r1, #9992
	ldr r0, [sp, #80]
	add r0, r0, #16
	cmp r0, r1
	bge label34
	str r0, [sp, #80]
	b label31
.p2align 4
label34:
	ldr r1, [sp, #176]
	add r3, r1, r0, lsl #2
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #72]
	add r0, r0, r2
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #4]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #8]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #12]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #16]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #20]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #24]
	sub r1, r0, r1
	ldr r0, [sp, #72]
	add r0, r0, r1
	ldr r1, [r3, #28]
	sub r4, r0, r1
	mov r0, r4
	bl putint
	mov r1, r4
	ldr r3, [sp, #0]
	add r3, r3, #1
	str r3, [sp, #0]
	movw r0, #10000
	cmp r3, r0
	blt label28
	b label45
label481:
	mov r4, r1
	movw r0, #5000
	movw r1, #10000
	cmp r0, r1
	bge label39
.p2align 4
label40:
	movw r1, #2233
	cmp r0, r1
	bgt label42
	ldr r1, [sp, #176]
	ldr r3, [sp, #0]
	ldr r1, [r1, r3, lsl #2]
	ldr r2, [sp, #160]
	add r1, r4, r1
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #2
	add r1, r2, r1
	movw r2, #19047
	movt r2, #5033
	smmul r2, r1, r2
	asr r3, r2, #10
	add r2, r3, r2, lsr #31
	movw r3, #13333
	mls r4, r2, r3, r1
	movw r1, #10000
	cmp r0, r1
	blt label40
	b label39
.p2align 4
label42:
	ldr r1, [sp, #168]
	ldr r3, [sp, #0]
	ldr r1, [r1, r3, lsl #2]
	add r2, r4, r1
	ldr r1, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	add r0, r0, #1
	sub r4, r2, r1
	movw r1, #10000
	cmp r0, r1
	blt label40
	b label39
label43:
	ldr r2, [sp, #160]
	ldr r3, [sp, #0]
	ldr r0, [r2, r3, lsl #2]
	add r3, r3, #1
	str r3, [sp, #0]
	add r0, r0, r0, lsl #3
	add r0, r1, r0
	movw r1, #27117
	movt r1, #21477
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r1, r1, r2, r0
	b label25
label45:
	mov r0, r1
	add sp, sp, #188
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label25:
	movw r0, #10000
	ldr r3, [sp, #0]
	cmp r3, r0
	blt label28
	b label45
label39:
	mov r0, r4
	bl putint
	mov r1, r4
	ldr r3, [sp, #0]
	add r3, r3, #1
	str r3, [sp, #0]
	b label25
.p2align 4
label44:
	ldr r2, [sp, #160]
	ldr r3, [sp, #0]
	ldr r0, [r2, r3, lsl #2]
	add r0, r1, r0
	movw r1, #3835
	movt r1, #12586
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r4, r1, r2, r0
	mov r0, r4
	bl putint
	mov r1, r4
	ldr r3, [sp, #0]
	add r3, r3, #1
	str r3, [sp, #0]
	movw r0, #10000
	cmp r3, r0
	blt label28
	b label45