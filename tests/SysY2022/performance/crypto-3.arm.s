.arch armv7ve
.data
.align 4
buffer:
	.4byte	0
	.zero	131068
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #740
	add r3, sp, #168
	str r3, [sp, #708]
	add r1, sp, #132
	str r1, [sp, #716]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r2, #0
	str r2, [sp, #132]
	ldr r1, [sp, #716]
	add r0, r1, #4
	str r0, [sp, #160]
	ldr r1, [sp, #716]
	str r2, [r1, #4]
	ldr r1, [sp, #716]
	add r0, r1, #8
	str r0, [sp, #492]
	ldr r1, [sp, #716]
	str r2, [r1, #8]
	ldr r1, [sp, #716]
	add r0, r1, #12
	str r0, [sp, #496]
	ldr r1, [sp, #716]
	str r2, [r1, #12]
	ldr r1, [sp, #716]
	add r0, r1, #16
	str r0, [sp, #156]
	ldr r1, [sp, #716]
	str r2, [r1, #16]
	movw r0, #:lower16:buffer
	movt r0, #:upper16:buffer
	mov r11, r0
	str r0, [sp, #124]
	add r1, r0, #128000
	str r1, [sp, #120]
	ldr r3, [sp, #708]
	add r1, r3, #4
	str r1, [sp, #116]
	ldr r3, [sp, #708]
	add r1, r3, #8
	str r1, [sp, #728]
	ldr r3, [sp, #708]
	add r1, r3, #12
	str r1, [sp, #552]
	ldr r3, [sp, #708]
	add r1, r3, #16
	str r1, [sp, #576]
	ldr r3, [sp, #708]
	add r1, r3, #20
	str r1, [sp, #568]
	ldr r3, [sp, #708]
	add r1, r3, #24
	str r1, [sp, #560]
	ldr r3, [sp, #708]
	add r1, r3, #28
	str r1, [sp, #112]
	ldr r3, [sp, #708]
	add r1, r3, #32
	str r1, [sp, #616]
	ldr r3, [sp, #708]
	add r1, r3, #36
	str r1, [sp, #504]
	ldr r3, [sp, #708]
	add r1, r3, #40
	str r1, [sp, #512]
	ldr r3, [sp, #708]
	add r1, r3, #44
	str r1, [sp, #520]
	ldr r3, [sp, #708]
	add r1, r3, #48
	str r1, [sp, #528]
	ldr r3, [sp, #708]
	add r1, r3, #52
	str r1, [sp, #732]
	ldr r3, [sp, #708]
	add r1, r3, #56
	str r1, [sp, #536]
	ldr r3, [sp, #708]
	add r1, r3, #60
	str r1, [sp, #544]
	mov r0, r4
	mov r1, r5
	str r5, [sp, #584]
	cmp r5, #0
	ble label48
label78:
	mov r10, #0
	str r10, [sp, #12]
label5:
	movw r1, #8193
	mul r2, r0, r1
	asr r3, r2, #31
	add r2, r2, r3, lsr #15
	asr r2, r2, #17
	mla r9, r0, r1, r2
	str r9, [sp, #724]
	movw r4, #8225
	str r4, [sp, #656]
	movt r4, #4
	str r4, [sp, #656]
	mul r0, r9, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r8, r9, r4, r0
	str r8, [sp, #700]
	mul r0, r8, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r7, r8, r4, r0
	str r7, [sp, #684]
	mul r0, r7, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r5, r7, r4, r0
	str r5, [sp, #676]
	mul r0, r5, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r5, r5, r4, r0
	str r5, [sp, #508]
	mul r0, r5, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r3, r5, r4, r0
	str r3, [sp, #516]
	mul r0, r3, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r2, r3, r4, r0
	str r2, [sp, #548]
	mul r0, r2, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r1, r2, r4, r0
	str r1, [sp, #596]
	mul r0, r1, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	ldr r1, [sp, #596]
	mla r0, r1, r4, r0
	str r0, [sp, #652]
	mul r0, r0, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r1, r0, #17
	ldr r0, [sp, #652]
	mla r0, r0, r4, r1
	str r0, [sp, #636]
	mul r0, r0, r4
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r1, r0, #17
	ldr r0, [sp, #636]
	mla r0, r0, r4, r1
	mul r1, r0, r4
	asr r2, r1, #31
	add r1, r1, r2, lsr #15
	asr r1, r1, #17
	mla r1, r0, r4, r1
	mul r2, r1, r4
	asr r3, r2, #31
	add r2, r2, r3, lsr #15
	asr r2, r2, #17
	mla r2, r1, r4, r2
	mul r3, r2, r4
	asr r4, r3, #31
	add r3, r3, r4, lsr #15
	asr r3, r3, #17
	ldr r4, [sp, #656]
	mla r3, r2, r4, r3
	ldr r4, [sp, #656]
	mul r4, r3, r4
	asr r5, r4, #31
	add r4, r4, r5, lsr #15
	asr r5, r4, #17
	ldr r4, [sp, #656]
	mla r5, r3, r4, r5
	ldr r4, [sp, #656]
	mul r4, r5, r4
	asr r6, r4, #31
	add r4, r4, r6, lsr #15
	asr r6, r4, #17
	ldr r4, [sp, #656]
	mla r4, r5, r4, r6
	mov r6, #33
	str r6, [sp, #556]
	mul r4, r4, r6
	str r4, [sp, #592]
	mov r6, #256
	str r6, [sp, #540]
	asr r6, r4, #31
	add r4, r4, r6, lsr #24
	asr r7, r4, #8
	ldr r4, [sp, #592]
	ldr r6, [sp, #540]
	mls r4, r7, r6, r4
	str r4, [sp, #152]
	ldr r6, [sp, #556]
	mul r4, r5, r6
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	ldr r6, [sp, #540]
	mls r4, r5, r6, r4
	str r4, [sp, #564]
	ldr r6, [sp, #556]
	mul r3, r3, r6
	asr r4, r3, #31
	add r4, r3, r4, lsr #24
	asr r4, r4, #8
	ldr r6, [sp, #540]
	mls r3, r4, r6, r3
	str r3, [sp, #588]
	ldr r6, [sp, #556]
	mul r2, r2, r6
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	ldr r6, [sp, #540]
	mls r2, r3, r6, r2
	str r2, [sp, #660]
	ldr r6, [sp, #556]
	mul r1, r1, r6
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	ldr r6, [sp, #540]
	mls r1, r2, r6, r1
	str r1, [sp, #648]
	ldr r6, [sp, #556]
	mul r0, r0, r6
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r6, [sp, #540]
	mls r0, r1, r6, r0
	str r0, [sp, #640]
	ldr r6, [sp, #556]
	ldr r0, [sp, #636]
	mul r0, r0, r6
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r6, [sp, #540]
	mls r0, r1, r6, r0
	str r0, [sp, #620]
	ldr r6, [sp, #556]
	ldr r0, [sp, #652]
	mul r0, r0, r6
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r6, [sp, #540]
	mls r0, r1, r6, r0
	ldr r6, [sp, #556]
	ldr r1, [sp, #596]
	mul r1, r1, r6
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	ldr r6, [sp, #540]
	mls r1, r2, r6, r1
	ldr r2, [sp, #548]
	ldr r6, [sp, #556]
	mul r2, r2, r6
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	ldr r6, [sp, #540]
	mls r2, r3, r6, r2
	ldr r3, [sp, #516]
	ldr r6, [sp, #556]
	mul r3, r3, r6
	asr r4, r3, #31
	add r4, r3, r4, lsr #24
	asr r4, r4, #8
	ldr r6, [sp, #540]
	mls r3, r4, r6, r3
	ldr r5, [sp, #508]
	ldr r6, [sp, #556]
	mul r4, r5, r6
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	ldr r6, [sp, #540]
	mls r4, r5, r6, r4
	ldr r5, [sp, #676]
	ldr r6, [sp, #556]
	mul r5, r5, r6
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r7, r6, #8
	ldr r6, [sp, #540]
	mls r5, r7, r6, r5
	ldr r7, [sp, #684]
	ldr r6, [sp, #556]
	mul r7, r7, r6
	asr r6, r7, #31
	add r6, r7, r6, lsr #24
	asr r8, r6, #8
	ldr r6, [sp, #540]
	mls r7, r8, r6, r7
	ldr r8, [sp, #700]
	ldr r6, [sp, #556]
	mul r8, r8, r6
	asr r6, r8, #31
	add r6, r8, r6, lsr #24
	asr r9, r6, #8
	ldr r6, [sp, #540]
	mls r8, r9, r6, r8
	ldr r9, [sp, #724]
	ldr r6, [sp, #556]
	mul r9, r9, r6
	asr r6, r9, #31
	add r6, r9, r6, lsr #24
	asr r10, r6, #8
	ldr r6, [sp, #540]
	mls r9, r10, r6, r9
	ldr r11, [sp, #124]
	ldr r10, [sp, #12]
	add r6, r11, r10, lsl #2
	ldr r11, [sp, #124]
	ldr r10, [sp, #12]
	str r9, [r11, r10, lsl #2]
	str r8, [r6, #4]
	str r7, [r6, #8]
	str r5, [r6, #12]
	str r4, [r6, #16]
	str r3, [r6, #20]
	str r2, [r6, #24]
	str r1, [r6, #28]
	str r0, [r6, #32]
	ldr r0, [sp, #620]
	str r0, [r6, #36]
	ldr r0, [sp, #640]
	str r0, [r6, #40]
	ldr r1, [sp, #648]
	str r1, [r6, #44]
	ldr r2, [sp, #660]
	str r2, [r6, #48]
	ldr r3, [sp, #588]
	str r3, [r6, #52]
	ldr r4, [sp, #564]
	str r4, [r6, #56]
	ldr r4, [sp, #152]
	str r4, [r6, #60]
	ldr r10, [sp, #12]
	add r10, r10, #16
	cmp r10, #32000
	bge label8
	ldr r4, [sp, #592]
	mov r0, r4
	str r10, [sp, #12]
	b label5
label8:
	mov r0, #128
	ldr r1, [sp, #120]
	str r0, [r1, #0]
	movw r0, #32001
	b label9
label47:
	ldr r1, [sp, #132]
	ldr r2, [sp, #92]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #92]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #132]
	ldr r0, [sp, #160]
	ldr r1, [r0, #0]
	ldr r2, [sp, #100]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #100]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #160]
	str r1, [r0, #0]
	ldr r0, [sp, #492]
	ldr r1, [r0, #0]
	ldr r2, [sp, #108]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #108]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #492]
	str r1, [r0, #0]
	ldr r0, [sp, #496]
	ldr r1, [r0, #0]
	ldr r2, [sp, #608]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #608]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #496]
	str r1, [r0, #0]
	ldr r0, [sp, #156]
	ldr r1, [r0, #0]
	ldr r2, [sp, #600]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #600]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #156]
	str r1, [r0, #0]
	ldr r1, [sp, #584]
	sub r1, r1, #1
	ldr r4, [sp, #592]
	mov r0, r4
	str r1, [sp, #584]
	cmp r1, #0
	ble label48
	b label78
label9:
	add r1, r0, #1
	mov r2, #64
	asr r3, r1, #31
	add r3, r1, r3, lsr #26
	asr r3, r3, #6
	mls r2, r3, r2, r1
	mov r3, #0
	ldr r11, [sp, #124]
	str r3, [r11, r0, lsl #2]
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r11, [sp, #124]
	add r3, r11, r1, lsl #2
	mov r2, #0
	ldr r11, [sp, #124]
	str r2, [r11, r1, lsl #2]
	str r2, [r3, #4]
	mov r1, #125
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r0, r0, #5
	str r0, [sp, #104]
	mov r0, r2
label12:
	ldr r3, [sp, #708]
	add r1, r3, r0, lsl #2
	mov r2, #0
	ldr r3, [sp, #708]
	str r2, [r3, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	add r0, r0, #16
	cmp r0, #80
	bge label217
	b label12
label217:
	mov r0, #0
	str r0, [sp, #84]
	mov r1, r0
	str r0, [sp, #88]
	mov r2, r0
	str r0, [sp, #96]
	movw r2, #57840
	str r2, [sp, #600]
	movt r2, #50130
	str r2, [sp, #600]
	movw r2, #21622
	str r2, [sp, #608]
	movt r2, #4146
	str r2, [sp, #608]
	movw r2, #56574
	str r2, [sp, #108]
	movt r2, #39098
	str r2, [sp, #108]
	movw r2, #43913
	str r2, [sp, #100]
	movt r2, #61389
	str r2, [sp, #100]
	movw r2, #8961
	str r2, [sp, #92]
	movt r2, #26437
	str r2, [sp, #92]
	ldr r0, [sp, #104]
	ldr r2, [sp, #96]
	cmp r2, r0
	bge label47
label23:
	ldr r11, [sp, #124]
	ldr r2, [sp, #96]
	add r0, r11, r2, lsl #2
	str r0, [sp, #696]
	ldr r11, [sp, #124]
	ldr r2, [sp, #96]
	ldr r1, [r11, r2, lsl #2]
	ldr r0, [r0, #4]
	lsl r1, r1, #24
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #8]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #12]
	add r0, r1, r0
	str r0, [sp, #168]
	ldr r0, [sp, #696]
	ldr r0, [r0, #16]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #20]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #24]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #28]
	add r0, r1, r0
	ldr r1, [sp, #116]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #32]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #36]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #40]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #44]
	add r0, r1, r0
	ldr r1, [sp, #728]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #48]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #52]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #56]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #60]
	add r0, r1, r0
	ldr r1, [sp, #552]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #64]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #68]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #72]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #76]
	add r0, r1, r0
	ldr r1, [sp, #576]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #80]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #84]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #88]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #92]
	add r0, r1, r0
	ldr r1, [sp, #568]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #96]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #100]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #104]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #108]
	add r0, r1, r0
	ldr r1, [sp, #560]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #112]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #116]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #120]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #124]
	add r0, r1, r0
	ldr r1, [sp, #112]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #128]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #132]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #136]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #140]
	add r0, r1, r0
	ldr r1, [sp, #616]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #144]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #148]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #152]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #156]
	add r0, r1, r0
	ldr r1, [sp, #504]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #160]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #164]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #168]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #172]
	add r0, r1, r0
	ldr r1, [sp, #512]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #176]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #180]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #184]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #188]
	add r0, r1, r0
	ldr r1, [sp, #520]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #192]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #196]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #200]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #204]
	add r0, r1, r0
	ldr r1, [sp, #528]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #208]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #212]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #216]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #220]
	add r0, r1, r0
	ldr r1, [sp, #732]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #224]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #228]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #232]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #236]
	add r0, r1, r0
	ldr r1, [sp, #536]
	str r0, [r1, #0]
	ldr r0, [sp, #696]
	ldr r0, [r0, #240]
	lsl r1, r0, #24
	ldr r0, [sp, #696]
	ldr r0, [r0, #244]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #696]
	ldr r0, [r0, #248]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #696]
	ldr r0, [r0, #252]
	add r0, r1, r0
	ldr r1, [sp, #544]
	str r0, [r1, #0]
	mov r1, #16
	str r1, [sp, #80]
label24:
	ldr r3, [sp, #708]
	ldr r1, [sp, #80]
	add r3, r3, r1, lsl #2
	str r3, [sp, #76]
	ldr r1, [r3, #-12]
	str r1, [sp, #72]
	ldr r0, [r3, #-32]
	str r0, [sp, #44]
	add r2, r1, r0
	sub r1, r1, r2
	add r0, r0, r1
	sub r1, r0, r2
	ldr r0, [r3, #-56]
	add r2, r1, r0
	sub r1, r1, r2
	add r1, r0, r1
	sub r1, r1, r2
	ldr r3, [r3, #-64]
	add r2, r1, r3
	sub r1, r1, r2
	add r1, r3, r1
	sub r2, r1, r2
	str r2, [sp, #24]
	mov r4, #2
	str r4, [sp, #68]
	add r1, r2, r2, lsr #31
	asr r1, r1, #1
	mls r1, r1, r4, r2
	str r1, [sp, #20]
	add r4, r1, r2, lsl #1
	str r4, [sp, #52]
	ldr r3, [sp, #708]
	ldr r1, [sp, #80]
	str r4, [r3, r1, lsl #2]
	ldr r3, [sp, #76]
	ldr r4, [r3, #-8]
	str r4, [sp, #56]
	ldr r3, [sp, #76]
	ldr r3, [r3, #-28]
	str r3, [sp, #688]
	add r1, r4, r3
	sub r2, r4, r1
	add r2, r3, r2
	sub r2, r2, r1
	ldr r3, [sp, #76]
	ldr r1, [r3, #-52]
	add r3, r2, r1
	sub r2, r2, r3
	add r2, r1, r2
	sub r2, r2, r3
	ldr r3, [sp, #76]
	ldr r3, [r3, #-60]
	add r4, r2, r3
	sub r2, r2, r4
	add r2, r3, r2
	sub r2, r2, r4
	str r2, [sp, #632]
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r4, [sp, #68]
	ldr r2, [sp, #632]
	mls r3, r3, r4, r2
	str r3, [sp, #628]
	ldr r2, [sp, #632]
	add r2, r3, r2, lsl #1
	str r2, [sp, #704]
	ldr r3, [sp, #76]
	str r2, [r3, #4]
	ldr r3, [sp, #76]
	ldr r4, [r3, #-4]
	str r4, [sp, #64]
	ldr r3, [sp, #76]
	ldr r2, [r3, #-24]
	str r2, [sp, #60]
	add r3, r4, r2
	sub r4, r4, r3
	add r2, r2, r4
	sub r2, r2, r3
	ldr r3, [sp, #76]
	ldr r3, [r3, #-48]
	str r3, [sp, #572]
	add r4, r2, r3
	sub r2, r2, r4
	add r2, r3, r2
	sub r3, r2, r4
	add r2, r0, r3
	sub r3, r3, r2
	add r0, r0, r3
	sub r2, r0, r2
	str r2, [sp, #40]
	add r0, r2, r2, lsr #31
	asr r0, r0, #1
	ldr r4, [sp, #68]
	mls r3, r0, r4, r2
	str r3, [sp, #36]
	add r4, r3, r2, lsl #1
	str r4, [sp, #48]
	ldr r3, [sp, #76]
	str r4, [r3, #8]
	ldr r3, [sp, #76]
	ldr r3, [r3, #-20]
	str r3, [sp, #28]
	ldr r4, [sp, #52]
	add r0, r4, r3
	ldr r4, [sp, #52]
	sub r2, r4, r0
	add r2, r3, r2
	sub r0, r2, r0
	ldr r3, [sp, #76]
	ldr r2, [r3, #-44]
	str r2, [sp, #712]
	add r3, r0, r2
	sub r0, r0, r3
	add r0, r2, r0
	sub r2, r0, r3
	add r0, r1, r2
	sub r2, r2, r0
	add r1, r1, r2
	sub r1, r1, r0
	str r1, [sp, #4]
	ldr r4, [sp, #56]
	add r0, r4, r1, lsl #1
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	ldr r4, [sp, #68]
	ldr r1, [sp, #4]
	mls r2, r2, r4, r1
	str r2, [sp, #0]
	add r0, r0, r2
	ldr r1, [sp, #4]
	add r4, r2, r1, lsl #1
	str r4, [sp, #164]
	sub r1, r4, r0
	ldr r4, [sp, #56]
	add r1, r4, r1
	sub r2, r1, r0
	ldr r0, [sp, #44]
	add r1, r0, r2
	sub r2, r2, r1
	ldr r0, [sp, #44]
	add r0, r0, r2
	sub r1, r0, r1
	ldr r3, [sp, #76]
	ldr r4, [sp, #164]
	str r4, [r3, #12]
	ldr r3, [sp, #76]
	ldr r4, [r3, #-16]
	str r4, [sp, #32]
	ldr r3, [sp, #76]
	ldr r0, [r3, #-40]
	add r2, r0, r1
	sub r1, r1, r2
	add r1, r0, r1
	sub r3, r1, r2
	str r3, [sp, #8]
	ldr r2, [sp, #632]
	add r1, r2, r3
	ldr r3, [sp, #628]
	add r1, r3, r1, lsl #1
	ldr r3, [sp, #8]
	add r2, r3, r3, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #68]
	ldr r3, [sp, #8]
	mls r4, r2, r4, r3
	str r4, [sp, #128]
	add r1, r1, r4
	ldr r3, [sp, #8]
	add r4, r4, r3, lsl #1
	str r4, [sp, #16]
	sub r3, r4, r1
	ldr r2, [sp, #704]
	add r2, r2, r3
	sub r2, r2, r1
	ldr r3, [sp, #28]
	add r1, r3, r2
	sub r2, r2, r1
	ldr r3, [sp, #28]
	add r2, r3, r2
	sub r2, r2, r1
	ldr r3, [sp, #688]
	add r1, r3, r2
	sub r2, r2, r1
	ldr r3, [sp, #688]
	add r2, r3, r2
	sub r1, r2, r1
	ldr r4, [sp, #32]
	ldr r2, [sp, #704]
	add r3, r2, r4
	ldr r2, [sp, #704]
	sub r2, r2, r3
	ldr r4, [sp, #32]
	add r2, r4, r2
	sub r3, r2, r3
	add r2, r3, r0
	sub r3, r3, r2
	add r0, r0, r3
	sub r2, r0, r2
	ldr r3, [sp, #572]
	add r0, r3, r2
	sub r2, r2, r0
	ldr r3, [sp, #572]
	add r2, r3, r2
	sub r0, r2, r0
	add r2, r0, r1
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #68]
	mls r3, r3, r4, r0
	add r2, r3, r2, lsl #1
	add r4, r1, r1, lsr #31
	asr r5, r4, #1
	ldr r4, [sp, #68]
	mls r5, r5, r4, r1
	add r4, r2, r5
	add r2, r5, r1, lsl #1
	str r2, [sp, #720]
	sub r1, r2, r4
	add r2, r3, r0, lsl #1
	add r1, r2, r1
	sub r5, r1, r4
	ldr r4, [sp, #56]
	add r1, r4, r5
	sub r5, r5, r1
	ldr r4, [sp, #56]
	add r4, r4, r5
	sub r5, r4, r1
	ldr r4, [sp, #32]
	add r1, r4, r5
	sub r5, r5, r1
	ldr r4, [sp, #32]
	add r4, r4, r5
	sub r1, r4, r1
	ldr r4, [sp, #64]
	add r0, r4, r0, lsl #1
	add r0, r0, r3
	sub r3, r2, r0
	ldr r4, [sp, #64]
	add r3, r4, r3
	sub r4, r3, r0
	ldr r3, [sp, #688]
	add r0, r3, r4
	sub r4, r4, r0
	ldr r3, [sp, #688]
	add r3, r3, r4
	sub r4, r3, r0
	ldr r3, [sp, #76]
	str r2, [r3, #16]
	ldr r3, [sp, #76]
	ldr r0, [r3, #-36]
	add r2, r0, r4
	sub r3, r4, r2
	add r3, r0, r3
	sub r3, r3, r2
	str r3, [sp, #612]
	add r2, r3, r1
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r4, [sp, #68]
	ldr r3, [sp, #612]
	mls r4, r5, r4, r3
	str r4, [sp, #624]
	add r2, r4, r2, lsl #1
	add r3, r1, r1, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #68]
	mls r3, r3, r4, r1
	add r2, r2, r3
	add r1, r3, r1, lsl #1
	str r1, [sp, #680]
	sub r1, r1, r2
	ldr r4, [sp, #624]
	ldr r3, [sp, #612]
	add r4, r4, r3, lsl #1
	str r4, [sp, #500]
	add r1, r4, r1
	sub r3, r1, r2
	ldr r2, [sp, #704]
	add r1, r2, r3
	sub r3, r3, r1
	ldr r2, [sp, #704]
	add r2, r2, r3
	sub r2, r2, r1
	ldr r4, [sp, #64]
	add r1, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #64]
	add r2, r4, r2
	sub r1, r2, r1
	add r2, r1, r1, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #68]
	mls r2, r2, r4, r1
	add r1, r2, r1, lsl #1
	str r1, [sp, #692]
	ldr r1, [sp, #72]
	ldr r2, [sp, #40]
	add r1, r1, r2, lsl #1
	ldr r3, [sp, #36]
	add r2, r1, r3
	ldr r4, [sp, #48]
	sub r3, r4, r2
	ldr r1, [sp, #72]
	add r1, r1, r3
	sub r2, r1, r2
	add r1, r2, r0
	sub r2, r2, r1
	add r0, r0, r2
	sub r1, r0, r1
	ldr r2, [sp, #712]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #712]
	add r1, r2, r1
	sub r1, r1, r0
	str r1, [sp, #524]
	ldr r2, [sp, #24]
	add r0, r2, r1
	ldr r1, [sp, #20]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #524]
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	ldr r4, [sp, #68]
	ldr r1, [sp, #524]
	mls r2, r2, r4, r1
	str r2, [sp, #532]
	add r0, r0, r2
	ldr r1, [sp, #524]
	add r4, r2, r1, lsl #1
	str r4, [sp, #488]
	sub r1, r4, r0
	ldr r4, [sp, #52]
	add r1, r4, r1
	sub r1, r1, r0
	ldr r2, [sp, #60]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #60]
	add r1, r2, r1
	sub r2, r1, r0
	ldr r0, [sp, #44]
	add r1, r0, r2
	sub r2, r2, r1
	ldr r0, [sp, #44]
	add r0, r0, r2
	sub r0, r0, r1
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r2, [sp, #0]
	add r1, r2, r1, lsl #1
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #68]
	mls r2, r2, r4, r0
	add r1, r1, r2
	add r2, r2, r0, lsl #1
	sub r0, r2, r1
	ldr r4, [sp, #164]
	add r0, r4, r0
	sub r3, r0, r1
	ldr r1, [sp, #72]
	add r0, r1, r3
	sub r3, r3, r0
	ldr r1, [sp, #72]
	add r1, r1, r3
	sub r1, r1, r0
	ldr r3, [sp, #28]
	add r0, r3, r1
	sub r1, r1, r0
	ldr r3, [sp, #28]
	add r1, r3, r1
	sub r0, r1, r0
	ldr r3, [sp, #8]
	add r1, r3, r0
	ldr r4, [sp, #128]
	add r1, r4, r1, lsl #1
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #68]
	mls r4, r3, r4, r0
	add r3, r1, r4
	add r1, r4, r0, lsl #1
	sub r0, r1, r3
	ldr r4, [sp, #16]
	add r0, r4, r0
	sub r3, r0, r3
	ldr r4, [sp, #52]
	add r0, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #52]
	add r3, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #56]
	add r0, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #56]
	add r3, r4, r3
	sub r0, r3, r0
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #68]
	mls r3, r3, r4, r0
	add r0, r3, r0, lsl #1
	ldr r3, [sp, #76]
	ldr r4, [sp, #488]
	str r4, [r3, #20]
	ldr r3, [sp, #76]
	ldr r4, [sp, #16]
	str r4, [r3, #24]
	ldr r3, [sp, #76]
	ldr r4, [sp, #500]
	str r4, [r3, #28]
	ldr r3, [sp, #76]
	str r2, [r3, #32]
	ldr r3, [sp, #76]
	ldr r2, [sp, #720]
	str r2, [r3, #36]
	ldr r2, [sp, #40]
	ldr r3, [sp, #612]
	add r2, r2, r3
	ldr r3, [sp, #36]
	add r2, r3, r2, lsl #1
	ldr r4, [sp, #624]
	add r2, r2, r4
	ldr r4, [sp, #500]
	sub r3, r4, r2
	ldr r4, [sp, #48]
	add r3, r4, r3
	sub r3, r3, r2
	ldr r4, [sp, #32]
	add r2, r4, r3
	sub r3, r3, r2
	ldr r4, [sp, #32]
	add r3, r4, r3
	sub r4, r3, r2
	ldr r2, [sp, #60]
	add r3, r2, r4
	sub r4, r4, r3
	ldr r2, [sp, #60]
	add r2, r2, r4
	sub r2, r2, r3
	add r3, r2, r2, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #68]
	mls r5, r3, r4, r2
	add r4, r5, r2, lsl #1
	ldr r3, [sp, #76]
	str r4, [r3, #40]
	ldr r3, [sp, #76]
	str r1, [r3, #44]
	ldr r3, [sp, #76]
	ldr r1, [sp, #680]
	str r1, [r3, #48]
	ldr r1, [sp, #524]
	add r1, r1, r2
	ldr r2, [sp, #532]
	add r1, r2, r1, lsl #1
	add r1, r1, r5
	sub r2, r4, r1
	ldr r4, [sp, #488]
	add r2, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #64]
	add r1, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #64]
	add r2, r4, r2
	sub r3, r2, r1
	ldr r1, [sp, #72]
	add r2, r1, r3
	sub r3, r3, r2
	ldr r1, [sp, #72]
	add r1, r1, r3
	sub r1, r1, r2
	add r2, r1, r1, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #68]
	mls r2, r2, r4, r1
	add r1, r2, r1, lsl #1
	ldr r3, [sp, #76]
	str r1, [r3, #52]
	ldr r3, [sp, #76]
	str r0, [r3, #56]
	ldr r3, [sp, #76]
	ldr r1, [sp, #692]
	str r1, [r3, #60]
	ldr r1, [sp, #80]
	add r1, r1, #16
	cmp r1, #80
	bge label767
	str r1, [sp, #80]
	b label24
label767:
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	mov r4, #0
	str r4, [sp, #672]
	ldr r2, [sp, #600]
	mov r6, r2
	str r2, [sp, #644]
	ldr r2, [sp, #608]
	mov r6, r2
	str r2, [sp, #580]
	ldr r2, [sp, #108]
	mov r5, r2
	str r2, [sp, #604]
	ldr r2, [sp, #100]
	mov r4, r2
	str r2, [sp, #668]
	ldr r2, [sp, #92]
	mov r4, r2
	str r2, [sp, #664]
	ldr r4, [sp, #672]
	cmp r4, #80
	bge label46
	ldr r4, [sp, #672]
	cmp r4, #20
	bge label39
	b label45
label36:
	ldr r4, [sp, #664]
	ldr r6, [sp, #644]
	add r2, r6, r4, lsl #5
	add r2, r2, r0
	add r2, r2, r1
	mov r3, #32
	ldr r4, [sp, #664]
	asr r5, r4, #31
	ldr r4, [sp, #664]
	add r4, r4, r5, lsr #27
	asr r5, r4, #5
	ldr r4, [sp, #664]
	mls r3, r5, r3, r4
	add r2, r2, r3
	ldr r3, [sp, #708]
	ldr r4, [sp, #672]
	ldr r3, [r3, r4, lsl #2]
	add r2, r2, r3
	mov r3, #1073741824
	ldr r4, [sp, #668]
	asr r5, r4, #31
	ldr r4, [sp, #668]
	add r4, r4, r5, lsr #2
	asr r5, r4, #30
	ldr r4, [sp, #668]
	mls r3, r5, r3, r4
	ldr r4, [sp, #668]
	add r3, r3, r4, lsl #30
	ldr r4, [sp, #672]
	add r4, r4, #1
	str r4, [sp, #672]
	ldr r6, [sp, #580]
	str r6, [sp, #644]
	ldr r4, [sp, #664]
	str r4, [sp, #668]
	ldr r5, [sp, #604]
	mov r6, r5
	str r5, [sp, #580]
	mov r4, r2
	str r2, [sp, #664]
	mov r5, r3
	str r3, [sp, #604]
	ldr r4, [sp, #672]
	cmp r4, #80
	bge label46
	ldr r4, [sp, #672]
	cmp r4, #20
	bge label39
label45:
	ldr r6, [sp, #580]
	ldr r5, [sp, #604]
	add r0, r6, r5
	ldr r4, [sp, #668]
	add r0, r0, r4
	mvn r1, #0
	ldr r4, [sp, #668]
	sub r1, r1, r4
	add r0, r0, r1
	ldr r5, [sp, #604]
	ldr r4, [sp, #668]
	add r2, r5, r4
	sub r2, r2, r0
	ldr r6, [sp, #580]
	add r1, r6, r1
	add r1, r1, r2
	sub r2, r1, r0
	add r1, r0, r2
	sub r2, r2, r1
	add r0, r0, r2
	sub r1, r0, r1
	movw r0, #31129
	movt r0, #23170
	b label36
label39:
	ldr r4, [sp, #672]
	cmp r4, #40
	bge label40
	b label44
label40:
	ldr r4, [sp, #672]
	cmp r4, #60
	bge label41
	ldr r6, [sp, #580]
	ldr r5, [sp, #604]
	add r0, r6, r5
	ldr r4, [sp, #668]
	add r1, r0, r4, lsl #1
	ldr r5, [sp, #604]
	ldr r4, [sp, #668]
	add r2, r5, r4
	sub r2, r2, r1
	ldr r6, [sp, #580]
	ldr r4, [sp, #668]
	add r3, r6, r4
	add r2, r3, r2
	sub r3, r2, r1
	add r2, r1, r3
	sub r3, r3, r2
	add r1, r1, r3
	sub r2, r1, r2
	add r1, r0, r2
	sub r2, r2, r1
	add r0, r0, r2
	sub r2, r0, r1
	add r0, r1, r2
	sub r2, r2, r0
	add r1, r1, r2
	sub r1, r1, r0
	movw r0, #48348
	movt r0, #36635
	b label36
label44:
	ldr r5, [sp, #604]
	ldr r4, [sp, #668]
	add r0, r5, r4
	ldr r4, [sp, #668]
	sub r1, r4, r0
	ldr r5, [sp, #604]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #580]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #580]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #60289
	movt r0, #28377
	b label36
label41:
	ldr r4, [sp, #672]
	cmp r4, #80
	bge label36
	ldr r5, [sp, #604]
	ldr r4, [sp, #668]
	add r0, r5, r4
	ldr r4, [sp, #668]
	sub r1, r4, r0
	ldr r5, [sp, #604]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #580]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #580]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #49414
	movt r0, #51810
	b label36
label46:
	ldr r2, [sp, #92]
	ldr r4, [sp, #664]
	add r3, r2, r4
	ldr r2, [sp, #100]
	ldr r4, [sp, #668]
	add r4, r2, r4
	ldr r2, [sp, #108]
	ldr r5, [sp, #604]
	add r5, r2, r5
	ldr r2, [sp, #608]
	ldr r6, [sp, #580]
	add r7, r2, r6
	ldr r2, [sp, #600]
	ldr r6, [sp, #644]
	add r6, r2, r6
	ldr r2, [sp, #96]
	add r2, r2, #64
	str r0, [sp, #84]
	str r1, [sp, #88]
	str r2, [sp, #96]
	mov r2, r6
	str r6, [sp, #600]
	mov r2, r7
	str r7, [sp, #608]
	mov r2, r5
	str r5, [sp, #108]
	mov r2, r4
	str r4, [sp, #100]
	mov r2, r3
	str r3, [sp, #92]
	ldr r0, [sp, #104]
	ldr r2, [sp, #96]
	cmp r2, r0
	bge label47
	b label23
label48:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #716]
	bl putarray
	mov r0, #0
	add sp, sp, #740
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
