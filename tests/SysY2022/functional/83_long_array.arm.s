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
	mov r4, #7
	mov r5, #8
	movw r0, #:lower16:a1
	sub sp, sp, #188
	mov r2, #15
	mov r3, #16
	str r0, [sp, #108]
	mov r8, #11
	mov r1, #14
	mov r10, #13
	mov r9, #12
	mov r7, #10
	mov r6, #9
	movt r0, #:upper16:a1
	str r0, [sp, #108]
	movw r0, #:lower16:a2
	str r0, [sp, #112]
	movt r0, #:upper16:a2
	str r0, [sp, #112]
	movw r0, #:lower16:a3
	str r0, [sp, #116]
	movt r0, #:upper16:a3
	str r0, [sp, #116]
	mov r0, #1
	str r3, [sp, #104]
	str r2, [sp, #96]
	str r1, [sp, #92]
	str r10, [sp, #88]
	str r9, [sp, #84]
	str r8, [sp, #80]
	str r7, [sp, #76]
	str r6, [sp, #72]
	str r5, [sp, #68]
	str r4, [sp, #120]
	mov r4, #6
	str r4, [sp, #124]
	mov r4, #5
	str r4, [sp, #128]
	mov r4, #4
	str r4, [sp, #132]
	mov r4, #3
	str r4, [sp, #136]
	mov r4, #2
	str r4, [sp, #140]
	mov r4, #0
	mov r11, r4
	str r4, [sp, #144]
	str r0, [sp, #100]
	str r4, [sp, #148]
.p2align 4
label2:
	ldr r0, [sp, #108]
	ldr r11, [sp, #148]
	add r3, r0, r11, lsl #2
	add r11, r11, #16
	str r3, [sp, #152]
	movw r3, #26215
	str r3, [sp, #160]
	movt r3, #26214
	str r3, [sp, #160]
	ldr r4, [sp, #144]
	smmul r0, r4, r3
	ldr r3, [sp, #152]
	asr r1, r0, #2
	add r0, r1, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r0, r4, r0, lsl #1
	str r0, [r3, #0]
	ldr r0, [sp, #100]
	ldr r3, [sp, #160]
	add r1, r4, r0
	add r0, r0, #32
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #4]
	ldr r4, [sp, #140]
	add r1, r4, #2
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #8]
	ldr r4, [sp, #136]
	add r1, r4, #6
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #12]
	ldr r4, [sp, #132]
	add r1, r4, #12
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #16]
	ldr r4, [sp, #128]
	add r1, r4, #20
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #20]
	ldr r4, [sp, #124]
	add r1, r4, #30
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #24]
	ldr r4, [sp, #120]
	add r1, r4, #42
	ldr r4, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #28]
	ldr r5, [sp, #68]
	ldr r3, [sp, #160]
	add r1, r5, #56
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #32]
	ldr r6, [sp, #72]
	ldr r3, [sp, #160]
	add r1, r6, #72
	add r6, r6, #288
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #36]
	ldr r7, [sp, #76]
	ldr r3, [sp, #160]
	add r1, r7, #90
	add r7, r7, #320
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #40]
	ldr r8, [sp, #80]
	ldr r3, [sp, #160]
	add r1, r8, #110
	add r8, r8, #352
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #44]
	ldr r9, [sp, #84]
	ldr r3, [sp, #160]
	add r1, r9, #132
	add r9, r9, #384
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #48]
	ldr r10, [sp, #88]
	ldr r3, [sp, #160]
	add r1, r10, #156
	add r10, r10, #416
	add r1, r4, r1
	smmul r2, r1, r3
	asr r3, r2, #2
	add r2, r3, r2, lsr #31
	ldr r3, [sp, #152]
	add r2, r2, r2, lsl #2
	sub r1, r1, r2, lsl #1
	str r1, [r3, #52]
	ldr r1, [sp, #92]
	ldr r3, [sp, #160]
	add r2, r1, #182
	add r1, r1, #448
	add r2, r4, r2
	smmul r3, r2, r3
	asr r4, r3, #2
	add r3, r4, r3, lsr #31
	add r3, r3, r3, lsl #2
	sub r2, r2, r3, lsl #1
	ldr r3, [sp, #152]
	str r2, [r3, #56]
	ldr r2, [sp, #96]
	ldr r4, [sp, #144]
	add r3, r2, #210
	add r2, r2, #480
	add r4, r4, r3
	ldr r3, [sp, #160]
	smmul r3, r4, r3
	asr r5, r3, #2
	add r3, r5, r3, lsr #31
	add r3, r3, r3, lsl #2
	sub r4, r4, r3, lsl #1
	ldr r3, [sp, #152]
	str r4, [r3, #60]
	ldr r3, [sp, #104]
	ldr r4, [sp, #144]
	add r5, r3, #240
	add r3, r3, #512
	add r4, r4, r5
	str r4, [sp, #52]
	str r11, [sp, #48]
	ldr r4, [sp, #140]
	add r4, r4, #64
	str r4, [sp, #40]
	ldr r4, [sp, #136]
	add r4, r4, #96
	str r4, [sp, #24]
	ldr r4, [sp, #132]
	add r4, r4, #128
	str r4, [sp, #16]
	ldr r4, [sp, #128]
	add r4, r4, #160
	str r4, [sp, #8]
	ldr r4, [sp, #124]
	add r4, r4, #192
	str r4, [sp, #0]
	ldr r4, [sp, #120]
	ldr r5, [sp, #68]
	str r0, [sp, #44]
	movw r0, #10000
	add r4, r4, #224
	cmp r11, r0
	add r5, r5, #256
	bge label134
	str r3, [sp, #104]
	str r2, [sp, #96]
	str r1, [sp, #92]
	str r10, [sp, #88]
	str r9, [sp, #84]
	str r8, [sp, #80]
	str r7, [sp, #76]
	str r6, [sp, #72]
	str r5, [sp, #68]
	str r4, [sp, #120]
	ldr r4, [sp, #0]
	str r4, [sp, #124]
	ldr r4, [sp, #8]
	str r4, [sp, #128]
	ldr r4, [sp, #16]
	str r4, [sp, #132]
	ldr r4, [sp, #24]
	str r4, [sp, #136]
	ldr r4, [sp, #40]
	str r4, [sp, #140]
	ldr r4, [sp, #52]
	str r4, [sp, #144]
	ldr r0, [sp, #44]
	str r0, [sp, #100]
	str r11, [sp, #148]
	b label2
label134:
	mov r2, #0
	str r2, [sp, #164]
.p2align 4
label21:
	ldr r0, [sp, #108]
	ldr r2, [sp, #164]
	add r0, r0, r2, lsl #2
	str r0, [sp, #172]
	ldr r0, [r0, #0]
	mul r1, r0, r0
	movw r0, #26215
	str r0, [sp, #168]
	movt r0, #26214
	str r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #112]
	ldr r2, [sp, #164]
	add r0, r0, r2, lsl #2
	str r0, [sp, #176]
	str r1, [r0, #0]
	ldr r0, [sp, #172]
	ldr r0, [r0, #4]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #4]
	ldr r0, [sp, #172]
	ldr r0, [r0, #8]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #8]
	ldr r0, [sp, #172]
	ldr r0, [r0, #12]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #12]
	ldr r0, [sp, #172]
	ldr r0, [r0, #16]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #16]
	ldr r0, [sp, #172]
	ldr r0, [r0, #20]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #20]
	ldr r0, [sp, #172]
	ldr r0, [r0, #24]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #24]
	ldr r0, [sp, #172]
	ldr r0, [r0, #28]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #28]
	ldr r0, [sp, #172]
	ldr r0, [r0, #32]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #32]
	ldr r0, [sp, #172]
	ldr r0, [r0, #36]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #36]
	ldr r0, [sp, #172]
	ldr r0, [r0, #40]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #40]
	ldr r0, [sp, #172]
	ldr r0, [r0, #44]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #44]
	ldr r0, [sp, #172]
	ldr r0, [r0, #48]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #48]
	ldr r0, [sp, #172]
	ldr r0, [r0, #52]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #52]
	ldr r0, [sp, #172]
	ldr r0, [r0, #56]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #56]
	ldr r0, [sp, #172]
	ldr r0, [r0, #60]
	mul r1, r0, r0
	ldr r0, [sp, #168]
	smmul r0, r1, r0
	asr r2, r0, #2
	add r0, r2, r0, lsr #31
	add r0, r0, r0, lsl #2
	sub r1, r1, r0, lsl #1
	ldr r0, [sp, #176]
	str r1, [r0, #60]
	movw r0, #10000
	ldr r2, [sp, #164]
	add r2, r2, #16
	cmp r2, r0
	bge label221
	str r2, [sp, #164]
	b label21
label221:
	mov r1, #0
	str r1, [sp, #56]
.p2align 4
label23:
	ldr r0, [sp, #112]
	ldr r1, [sp, #56]
	add r0, r0, r1, lsl #2
	movw r1, #34079
	str r0, [sp, #28]
	ldr r0, [r0, #0]
	str r1, [sp, #36]
	movt r1, #20971
	str r1, [sp, #36]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r2, r2, r1, r0
	ldr r0, [sp, #108]
	ldr r1, [sp, #56]
	add r0, r0, r1, lsl #2
	str r0, [sp, #32]
	ldr r0, [r0, #0]
	add r2, r2, r0
	ldr r0, [sp, #116]
	add r0, r0, r1, lsl #2
	str r0, [sp, #20]
	str r2, [r0, #0]
	ldr r0, [sp, #28]
	ldr r0, [r0, #4]
	ldr r1, [sp, #36]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #32]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #20]
	str r1, [r0, #4]
	ldr r0, [sp, #28]
	ldr r0, [r0, #8]
	ldr r1, [sp, #36]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #32]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #20]
	str r1, [r0, #8]
	ldr r0, [sp, #28]
	ldr r0, [r0, #12]
	ldr r1, [sp, #36]
	mul r0, r0, r0
	smmul r1, r0, r1
	asr r2, r1, #5
	add r2, r2, r1, lsr #31
	mov r1, #100
	mls r1, r2, r1, r0
	ldr r0, [sp, #32]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #20]
	str r1, [r0, #12]
	movw r0, #10000
	ldr r1, [sp, #56]
	add r1, r1, #4
	cmp r1, r0
	bge label261
	str r1, [sp, #56]
	b label23
label261:
	mov r4, #0
	str r4, [sp, #12]
	mov r2, r4
	movw r0, #10000
	cmp r4, r0
	bge label45
.p2align 4
label28:
	ldr r2, [sp, #12]
	add r2, r2, #1
	str r2, [sp, #156]
	ldr r2, [sp, #12]
	cmp r2, #10
	blt label29
	cmp r2, #20
	blt label40
	b label797
.p2align 4
label29:
	ldr r0, [sp, #116]
	movw r1, #3835
	ldr r2, [sp, #12]
	movt r1, #12586
	ldr r0, [r0, r2, lsl #2]
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #8
	add r1, r2, r1, lsr #31
	movw r2, #1333
	mls r4, r1, r2, r0
	mov r0, r4
	bl putint
	ldr r2, [sp, #156]
	str r2, [sp, #12]
	movw r0, #10000
	cmp r2, r0
	blt label28
label45:
	mov r0, r4
	add sp, sp, #188
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label797:
	ldr r2, [sp, #12]
	cmp r2, #30
	bge label39
	movw r1, #5000
	movw r0, #10000
	cmp r1, r0
	blt label36
.p2align 4
label35:
	mov r0, r4
	bl putint
	ldr r2, [sp, #156]
	str r2, [sp, #12]
	movw r0, #10000
	cmp r2, r0
	blt label28
	b label45
.p2align 4
label36:
	movw r0, #2233
	cmp r1, r0
	bgt label38
	ldr r0, [sp, #108]
	ldr r2, [sp, #12]
	ldr r2, [r0, r2, lsl #2]
	ldr r0, [sp, #116]
	add r2, r4, r2
	ldr r0, [r0, r1, lsl #2]
	add r1, r1, #2
	add r0, r0, r2
	movw r2, #19047
	movt r2, #5033
	smmul r2, r0, r2
	asr r3, r2, #10
	add r2, r3, r2, lsr #31
	movw r3, #13333
	mls r4, r2, r3, r0
	movw r0, #10000
	cmp r1, r0
	blt label36
	b label35
.p2align 4
label38:
	ldr r0, [sp, #112]
	ldr r2, [sp, #12]
	ldr r0, [r0, r2, lsl #2]
	add r2, r4, r0
	ldr r0, [sp, #108]
	ldr r0, [r0, r1, lsl #2]
	add r1, r1, #1
	sub r4, r2, r0
	movw r0, #10000
	cmp r1, r0
	blt label36
	b label35
.p2align 4
label39:
	ldr r0, [sp, #116]
	movw r1, #27117
	ldr r2, [sp, #12]
	movt r1, #21477
	ldr r0, [r0, r2, lsl #2]
	add r0, r0, r0, lsl #3
	add r0, r4, r0
	smmul r1, r0, r1
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #34452
	movt r2, #1
	mls r4, r1, r2, r0
	ldr r2, [sp, #156]
	str r2, [sp, #12]
	movw r0, #10000
	cmp r2, r0
	blt label28
	b label45
.p2align 4
label40:
	ldr r0, [sp, #116]
	mov r1, r4
	ldr r2, [sp, #12]
	ldr r0, [r0, r2, lsl #2]
	movw r2, #5000
	str r0, [sp, #180]
	str r2, [sp, #64]
.p2align 4
label41:
	ldr r0, [sp, #108]
	ldr r2, [sp, #64]
	add r0, r0, r2, lsl #2
	str r0, [sp, #60]
	ldr r2, [r0, #0]
	ldr r0, [sp, #180]
	add r0, r0, r1
	sub r1, r0, r2
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #8]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #12]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #16]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #20]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #24]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #28]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #32]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #36]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #40]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #44]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #48]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #52]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #56]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #60]
	ldr r0, [r0, #60]
	ldr r2, [sp, #64]
	sub r1, r1, r0
	add r2, r2, #16
	movw r0, #9992
	cmp r2, r0
	bge label44
	str r2, [sp, #64]
	b label41
.p2align 4
label44:
	ldr r0, [sp, #108]
	add r0, r0, r2, lsl #2
	str r0, [sp, #4]
	ldr r2, [r0, #0]
	ldr r0, [sp, #180]
	add r0, r0, r1
	sub r1, r0, r2
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #12]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #16]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #20]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #24]
	sub r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r0, #28]
	sub r4, r1, r0
	mov r0, r4
	bl putint
	ldr r2, [sp, #156]
	str r2, [sp, #12]
	movw r0, #10000
	cmp r2, r0
	blt label28
	b label45
