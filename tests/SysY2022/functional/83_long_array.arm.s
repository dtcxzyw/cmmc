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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[168] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r9, #1
	mov r7, #13
	mov r10, #15
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	mov r0, #16
	mov r5, #11
	mov r8, #14
	mov r3, #9
	mov r6, #12
	mov r1, #7
	sub sp, sp, #172
	mov r4, #10
	str r2, [sp, #96]
	mov r2, #8
	str r0, [sp, #88]
	str r10, [sp, #80]
	str r8, [sp, #76]
	str r7, [sp, #72]
	str r6, [sp, #64]
	str r5, [sp, #60]
	str r4, [sp, #56]
	str r3, [sp, #52]
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
	b label2
.p2align 4
label62:
	ldr r0, [sp, #96]
	add r0, r0, #64
	str r0, [sp, #96]
	str r9, [sp, #88]
	mov r0, r9
	str r10, [sp, #80]
	str r8, [sp, #76]
	str r7, [sp, #72]
	str r6, [sp, #64]
	str r5, [sp, #60]
	str r4, [sp, #56]
	str r3, [sp, #52]
	str r2, [sp, #108]
	str r1, [sp, #112]
	ldr r1, [sp, #0]
	str r1, [sp, #116]
	ldr r1, [sp, #8]
	str r1, [sp, #120]
	ldr r1, [sp, #20]
	str r1, [sp, #124]
	ldr r1, [sp, #24]
	str r1, [sp, #128]
	ldr r1, [sp, #28]
	str r1, [sp, #132]
	ldr r1, [sp, #40]
	str r1, [sp, #136]
	ldr r9, [sp, #32]
	str r9, [sp, #84]
	ldr r11, [sp, #36]
	str r11, [sp, #140]
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
	ldr r0, [sp, #96]
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
	ldr r3, [sp, #52]
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
	ldr r7, [sp, #72]
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
	str r1, [sp, #20]
	ldr r1, [sp, #120]
	add r1, r1, #160
	str r1, [sp, #8]
	ldr r1, [sp, #116]
	add r1, r1, #192
	str r1, [sp, #0]
	ldr r1, [sp, #112]
	ldr r2, [sp, #108]
	ldr r3, [sp, #52]
	str r9, [sp, #32]
	add r1, r1, #224
	add r9, r0, #512
	add r2, r2, #256
	movw r0, #10000
	add r3, r3, #288
	cmp r11, r0
	blt label62
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	mov r0, #0
	str r2, [sp, #144]
	str r0, [sp, #148]
	b label23
.p2align 4
label61:
	ldr r0, [sp, #144]
	add r0, r0, #64
	str r0, [sp, #144]
	str r1, [sp, #148]
	mov r0, r1
.p2align 4
label23:
	ldr r0, [sp, #144]
	ldr r0, [r0, #0]
	mul r1, r0, r0
	movw r0, #26215
	movt r0, #26214
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r2, r1, r0, lsl #1
	ldr r0, [sp, #148]
	movw r1, #:lower16:a2
	movt r1, #:upper16:a2
	add r0, r1, r0, lsl #2
	str r0, [sp, #152]
	str r2, [r0, #0]
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
	blt label61
	movw r5, #:lower16:a3
	movt r5, #:upper16:a3
	mov r0, #0
	str r5, [sp, #48]
	str r0, [sp, #44]
	b label27
.p2align 4
label30:
	ldr r0, [sp, #48]
	add r0, r0, #16
	str r0, [sp, #48]
	str r1, [sp, #44]
	mov r0, r1
.p2align 4
label27:
	movw r1, #:lower16:a2
	movt r1, #:upper16:a2
	ldr r0, [sp, #44]
	add r0, r1, r0, lsl #2
	movw r1, #34079
	movt r1, #20971
	str r0, [sp, #16]
	ldr r0, [r0, #0]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #44]
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	add r0, r2, r0, lsl #2
	str r0, [sp, #12]
	ldr r0, [r0, #0]
	add r1, r1, r0
	ldr r0, [sp, #48]
	str r1, [r0, #0]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #16]
	ldr r0, [r0, #4]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #12]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #48]
	str r1, [r0, #4]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #16]
	ldr r0, [r0, #8]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #12]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #48]
	str r1, [r0, #8]
	movw r1, #34079
	movt r1, #20971
	ldr r0, [sp, #16]
	ldr r0, [r0, #12]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #12]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #48]
	str r1, [r0, #12]
	ldr r0, [sp, #44]
	add r1, r0, #4
	movw r0, #10000
	cmp r1, r0
	blt label30
	movw r5, #:lower16:a3
	movt r5, #:upper16:a3
	movw r1, #:lower16:a2
	movt r1, #:upper16:a2
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	mov r4, #0
	str r5, [sp, #92]
	mov r0, r4
	str r1, [sp, #68]
	str r2, [sp, #104]
	movw r1, #10000
	cmp r4, r1
	blt label38
	b label60
.p2align 4
label46:
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #64]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #68]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #72]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #76]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #80]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #84]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #88]
	sub r1, r1, r0
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #92]
	sub r4, r1, r0
	mov r0, r4
	bl putint
	ldr r2, [sp, #104]
	add r0, r2, #4
	ldr r2, [sp, #68]
	ldr r5, [sp, #92]
	add r2, r2, #4
	add r5, r5, #4
	str r5, [sp, #92]
	str r2, [sp, #68]
	str r0, [sp, #104]
	mov r2, r0
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	bge label60
.p2align 4
label38:
	add r1, r0, #1
	cmp r0, #10
	str r1, [sp, #100]
	bge label282
	ldr r5, [sp, #92]
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
	ldr r2, [sp, #104]
	add r5, r5, #4
	add r0, r2, #4
	ldr r2, [sp, #68]
	str r5, [sp, #92]
	add r2, r2, #4
	str r2, [sp, #68]
	str r0, [sp, #104]
	mov r2, r0
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label38
label60:
	mov r0, r4
	add sp, sp, #172
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label282:
	cmp r0, #20
	bge label803
	ldr r5, [sp, #92]
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	mov r1, r4
	ldr r0, [r5, #0]
	str r0, [sp, #156]
	movw r0, #20000
	add r0, r2, r0
	movw r2, #5000
	str r0, [sp, #160]
	str r2, [sp, #164]
.p2align 4
label42:
	ldr r0, [sp, #156]
	add r1, r0, r1
	ldr r0, [sp, #160]
	ldr r0, [r0, #0]
	sub r1, r1, r0
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
	bge label46
	ldr r0, [sp, #160]
	add r0, r0, #64
	str r0, [sp, #160]
	str r2, [sp, #164]
	b label42
.p2align 4
label803:
	cmp r0, #30
	bge label59
	movw r1, #20000
	movw r2, #:lower16:a1
	movt r2, #:upper16:a1
	movw r5, #:lower16:a3
	movt r5, #:upper16:a3
	add r0, r2, r1
	add r2, r5, r1
	movw r1, #5000
	str r2, [sp, #4]
	movw r2, #10000
	cmp r1, r2
	blt label56
	b label55
.p2align 4
label57:
	ldr r2, [sp, #104]
	add r1, r1, #2
	add r0, r0, #8
	ldr r2, [r2, #0]
	add r3, r4, r2
	ldr r2, [sp, #4]
	ldr r2, [r2, #0]
	add r2, r3, r2
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
	bge label55
.p2align 4
label56:
	movw r2, #2233
	cmp r1, r2
	ble label57
	ldr r2, [sp, #68]
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
	blt label56
.p2align 4
label55:
	mov r0, r4
	bl putint
	ldr r2, [sp, #104]
	add r0, r2, #4
	ldr r2, [sp, #68]
	ldr r5, [sp, #92]
	add r2, r2, #4
	add r5, r5, #4
	str r5, [sp, #92]
	str r2, [sp, #68]
	str r0, [sp, #104]
	mov r2, r0
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label38
	b label60
.p2align 4
label59:
	ldr r5, [sp, #92]
	movw r1, #27117
	movt r1, #21477
	ldr r0, [r5, #0]
	add r5, r5, #4
	add r0, r0, r0, lsl #3
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r4, r1, r2, r0
	ldr r2, [sp, #104]
	add r0, r2, #4
	ldr r2, [sp, #68]
	str r5, [sp, #92]
	add r2, r2, #4
	str r2, [sp, #68]
	str r0, [sp, #104]
	mov r2, r0
	ldr r1, [sp, #100]
	mov r0, r1
	movw r1, #10000
	cmp r0, r1
	blt label38
	b label60
