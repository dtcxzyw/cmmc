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
	sub sp, sp, #732
	add r3, sp, #8
	str r3, [sp, #460]
	add r1, sp, #704
	str r1, [sp, #464]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r2, #0
	str r2, [sp, #704]
	ldr r1, [sp, #464]
	add r0, r1, #4
	str r0, [sp, #680]
	ldr r1, [sp, #464]
	str r2, [r1, #4]
	ldr r1, [sp, #464]
	add r0, r1, #8
	str r0, [sp, #452]
	ldr r1, [sp, #464]
	str r2, [r1, #8]
	ldr r1, [sp, #464]
	add r0, r1, #12
	str r0, [sp, #456]
	ldr r1, [sp, #464]
	str r2, [r1, #12]
	ldr r1, [sp, #464]
	add r0, r1, #16
	str r0, [sp, #448]
	ldr r1, [sp, #464]
	str r2, [r1, #16]
	movw r0, #:lower16:buffer
	movt r0, #:upper16:buffer
	mov r11, r0
	str r0, [sp, #468]
	add r1, r0, #128000
	str r1, [sp, #444]
	ldr r3, [sp, #460]
	add r1, r3, #4
	str r1, [sp, #440]
	ldr r3, [sp, #460]
	add r1, r3, #8
	str r1, [sp, #536]
	ldr r3, [sp, #460]
	add r1, r3, #12
	str r1, [sp, #552]
	ldr r3, [sp, #460]
	add r1, r3, #16
	str r1, [sp, #568]
	ldr r3, [sp, #460]
	add r1, r3, #20
	str r1, [sp, #560]
	ldr r3, [sp, #460]
	add r1, r3, #24
	str r1, [sp, #576]
	ldr r3, [sp, #460]
	add r1, r3, #28
	str r1, [sp, #436]
	ldr r3, [sp, #460]
	add r1, r3, #32
	str r1, [sp, #432]
	ldr r3, [sp, #460]
	add r1, r3, #36
	str r1, [sp, #488]
	ldr r3, [sp, #460]
	add r1, r3, #40
	str r1, [sp, #496]
	ldr r3, [sp, #460]
	add r1, r3, #44
	str r1, [sp, #504]
	ldr r3, [sp, #460]
	add r1, r3, #48
	str r1, [sp, #512]
	ldr r3, [sp, #460]
	add r1, r3, #52
	str r1, [sp, #520]
	ldr r3, [sp, #460]
	add r1, r3, #56
	str r1, [sp, #528]
	ldr r3, [sp, #460]
	add r1, r3, #60
	str r1, [sp, #544]
	mov r0, r4
	mov r1, r5
	str r5, [sp, #584]
	cmp r5, #0
	ble label48
label78:
	mov r10, #0
	str r10, [sp, #340]
label5:
	movw r1, #8193
	mul r0, r0, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r9, r1, r0
	str r9, [sp, #0]
	movw r5, #8225
	str r5, [sp, #608]
	movt r5, #4
	str r5, [sp, #608]
	mul r0, r9, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r8, r1, r0
	str r8, [sp, #700]
	mul r0, r8, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r6, r1, r0
	str r6, [sp, #684]
	mul r0, r6, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r6, r1, r0
	str r6, [sp, #660]
	mul r0, r6, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r4, r1, r0
	str r4, [sp, #484]
	mul r0, r4, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r3, r1, r0
	str r3, [sp, #500]
	mul r0, r3, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	str r2, [sp, #556]
	mul r0, r2, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r1, r1, r0
	str r1, [sp, #580]
	mul r0, r1, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r1, r0
	str r0, [sp, #620]
	mul r0, r0, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r1, r0
	str r0, [sp, #600]
	mul r0, r0, r5
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r1, r0
	mul r1, r0, r5
	asr r2, r1, #31
	add r2, r1, r2, lsr #15
	asr r2, r2, #17
	add r1, r2, r1
	mul r2, r1, r5
	asr r3, r2, #31
	add r3, r2, r3, lsr #15
	asr r3, r3, #17
	add r2, r3, r2
	mul r3, r2, r5
	asr r4, r3, #31
	add r4, r3, r4, lsr #15
	asr r4, r4, #17
	add r3, r4, r3
	mul r4, r3, r5
	asr r5, r4, #31
	add r5, r4, r5, lsr #15
	asr r5, r5, #17
	add r4, r5, r4
	ldr r5, [sp, #608]
	mul r5, r4, r5
	asr r6, r5, #31
	add r6, r5, r6, lsr #15
	asr r6, r6, #17
	add r5, r6, r5
	mov r7, #33
	str r7, [sp, #524]
	mul r5, r5, r7
	str r5, [sp, #592]
	asr r6, r5, #31
	add r5, r5, r6, lsr #24
	asr r5, r5, #8
	mov r7, #256
	str r7, [sp, #516]
	mul r6, r5, r7
	ldr r5, [sp, #592]
	sub r5, r5, r6
	str r5, [sp, #508]
	ldr r7, [sp, #524]
	mul r4, r4, r7
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	ldr r7, [sp, #516]
	mul r5, r5, r7
	sub r4, r4, r5
	str r4, [sp, #548]
	ldr r7, [sp, #524]
	mul r3, r3, r7
	asr r4, r3, #31
	add r4, r3, r4, lsr #24
	asr r4, r4, #8
	ldr r7, [sp, #516]
	mul r4, r4, r7
	sub r3, r3, r4
	str r3, [sp, #572]
	ldr r7, [sp, #524]
	mul r2, r2, r7
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	ldr r7, [sp, #516]
	mul r3, r3, r7
	sub r2, r2, r3
	str r2, [sp, #588]
	ldr r7, [sp, #524]
	mul r1, r1, r7
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	ldr r7, [sp, #516]
	mul r2, r2, r7
	sub r1, r1, r2
	str r1, [sp, #632]
	ldr r7, [sp, #524]
	mul r0, r0, r7
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r7, [sp, #516]
	mul r1, r1, r7
	sub r0, r0, r1
	str r0, [sp, #612]
	ldr r7, [sp, #524]
	ldr r0, [sp, #600]
	mul r0, r0, r7
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r7, [sp, #516]
	mul r1, r1, r7
	sub r0, r0, r1
	str r0, [sp, #596]
	ldr r7, [sp, #524]
	ldr r0, [sp, #620]
	mul r0, r0, r7
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	ldr r7, [sp, #516]
	mul r1, r1, r7
	sub r0, r0, r1
	ldr r7, [sp, #524]
	ldr r1, [sp, #580]
	mul r1, r1, r7
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	ldr r7, [sp, #516]
	mul r2, r2, r7
	sub r1, r1, r2
	ldr r7, [sp, #524]
	ldr r2, [sp, #556]
	mul r2, r2, r7
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	ldr r7, [sp, #516]
	mul r3, r3, r7
	sub r2, r2, r3
	ldr r3, [sp, #500]
	ldr r7, [sp, #524]
	mul r3, r3, r7
	asr r4, r3, #31
	add r4, r3, r4, lsr #24
	asr r4, r4, #8
	ldr r7, [sp, #516]
	mul r4, r4, r7
	sub r3, r3, r4
	ldr r4, [sp, #484]
	ldr r7, [sp, #524]
	mul r4, r4, r7
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	ldr r7, [sp, #516]
	mul r5, r5, r7
	sub r4, r4, r5
	ldr r6, [sp, #660]
	ldr r7, [sp, #524]
	mul r5, r6, r7
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	ldr r7, [sp, #516]
	mul r6, r6, r7
	sub r5, r5, r6
	ldr r6, [sp, #684]
	ldr r7, [sp, #524]
	mul r6, r6, r7
	asr r7, r6, #31
	add r7, r6, r7, lsr #24
	asr r8, r7, #8
	ldr r7, [sp, #516]
	mul r7, r8, r7
	sub r6, r6, r7
	ldr r8, [sp, #700]
	ldr r7, [sp, #524]
	mul r8, r8, r7
	asr r7, r8, #31
	add r7, r8, r7, lsr #24
	asr r9, r7, #8
	ldr r7, [sp, #516]
	mul r7, r9, r7
	sub r8, r8, r7
	ldr r9, [sp, #0]
	ldr r7, [sp, #524]
	mul r9, r9, r7
	asr r7, r9, #31
	add r7, r9, r7, lsr #24
	asr r10, r7, #8
	ldr r7, [sp, #516]
	mul r7, r10, r7
	sub r9, r9, r7
	ldr r11, [sp, #468]
	ldr r10, [sp, #340]
	add r7, r11, r10, lsl #2
	ldr r11, [sp, #468]
	ldr r10, [sp, #340]
	str r9, [r11, r10, lsl #2]
	str r8, [r7, #4]
	str r6, [r7, #8]
	str r5, [r7, #12]
	str r4, [r7, #16]
	str r3, [r7, #20]
	str r2, [r7, #24]
	str r1, [r7, #28]
	str r0, [r7, #32]
	ldr r0, [sp, #596]
	str r0, [r7, #36]
	ldr r0, [sp, #612]
	str r0, [r7, #40]
	ldr r1, [sp, #632]
	str r1, [r7, #44]
	ldr r2, [sp, #588]
	str r2, [r7, #48]
	ldr r3, [sp, #572]
	str r3, [r7, #52]
	ldr r4, [sp, #548]
	str r4, [r7, #56]
	ldr r5, [sp, #508]
	str r5, [r7, #60]
	ldr r10, [sp, #340]
	add r10, r10, #16
	cmp r10, #32000
	bge label8
	ldr r5, [sp, #592]
	mov r0, r5
	str r10, [sp, #340]
	b label5
label12:
	ldr r3, [sp, #460]
	add r1, r3, r0, lsl #2
	mov r2, #0
	ldr r3, [sp, #460]
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
	str r0, [sp, #616]
	mov r1, r0
	str r0, [sp, #408]
	mov r2, r0
	str r0, [sp, #416]
	movw r2, #57840
	str r2, [sp, #656]
	movt r2, #50130
	str r2, [sp, #656]
	movw r2, #21622
	str r2, [sp, #648]
	movt r2, #4146
	str r2, [sp, #648]
	movw r2, #56574
	str r2, [sp, #428]
	movt r2, #39098
	str r2, [sp, #428]
	movw r2, #43913
	str r2, [sp, #420]
	movt r2, #61389
	str r2, [sp, #420]
	movw r2, #8961
	str r2, [sp, #412]
	movt r2, #26437
	str r2, [sp, #412]
	ldr r0, [sp, #424]
	ldr r2, [sp, #416]
	cmp r2, r0
	bge label47
	b label23
label47:
	ldr r1, [sp, #704]
	ldr r2, [sp, #412]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #412]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #704]
	ldr r0, [sp, #680]
	ldr r1, [r0, #0]
	ldr r2, [sp, #420]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #420]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #680]
	str r1, [r0, #0]
	ldr r0, [sp, #452]
	ldr r1, [r0, #0]
	ldr r2, [sp, #428]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #428]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #452]
	str r1, [r0, #0]
	ldr r0, [sp, #456]
	ldr r1, [r0, #0]
	ldr r2, [sp, #648]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #648]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #456]
	str r1, [r0, #0]
	ldr r0, [sp, #448]
	ldr r1, [r0, #0]
	ldr r2, [sp, #656]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #656]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #448]
	str r1, [r0, #0]
	ldr r1, [sp, #584]
	sub r1, r1, #1
	ldr r5, [sp, #592]
	mov r0, r5
	str r1, [sp, #584]
	cmp r1, #0
	ble label48
	b label78
label23:
	ldr r11, [sp, #468]
	ldr r2, [sp, #416]
	add r0, r11, r2, lsl #2
	str r0, [sp, #676]
	ldr r11, [sp, #468]
	ldr r2, [sp, #416]
	ldr r1, [r11, r2, lsl #2]
	ldr r0, [r0, #4]
	lsl r1, r1, #24
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #8]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #12]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #676]
	ldr r0, [r0, #16]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #20]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #24]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #28]
	add r0, r1, r0
	ldr r1, [sp, #440]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #32]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #36]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #40]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #44]
	add r0, r1, r0
	ldr r1, [sp, #536]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #48]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #52]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #56]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #60]
	add r0, r1, r0
	ldr r1, [sp, #552]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #64]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #68]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #72]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #76]
	add r0, r1, r0
	ldr r1, [sp, #568]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #80]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #84]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #88]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #92]
	add r0, r1, r0
	ldr r1, [sp, #560]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #96]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #100]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #104]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #108]
	add r0, r1, r0
	ldr r1, [sp, #576]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #112]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #116]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #120]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #124]
	add r0, r1, r0
	ldr r1, [sp, #436]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #128]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #132]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #136]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #140]
	add r0, r1, r0
	ldr r1, [sp, #432]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #144]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #148]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #152]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #156]
	add r0, r1, r0
	ldr r1, [sp, #488]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #160]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #164]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #168]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #172]
	add r0, r1, r0
	ldr r1, [sp, #496]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #176]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #180]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #184]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #188]
	add r0, r1, r0
	ldr r1, [sp, #504]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #192]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #196]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #200]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #204]
	add r0, r1, r0
	ldr r1, [sp, #512]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #208]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #212]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #216]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #220]
	add r0, r1, r0
	ldr r1, [sp, #520]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #224]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #228]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #232]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #236]
	add r0, r1, r0
	ldr r1, [sp, #528]
	str r0, [r1, #0]
	ldr r0, [sp, #676]
	ldr r0, [r0, #240]
	lsl r1, r0, #24
	ldr r0, [sp, #676]
	ldr r0, [r0, #244]
	add r1, r1, r0, lsl #16
	ldr r0, [sp, #676]
	ldr r0, [r0, #248]
	add r1, r1, r0, lsl #8
	ldr r0, [sp, #676]
	ldr r0, [r0, #252]
	add r0, r1, r0
	ldr r1, [sp, #544]
	str r0, [r1, #0]
	mov r0, #16
	str r0, [sp, #472]
	b label24
label35:
	ldr r2, [sp, #412]
	ldr r4, [sp, #624]
	add r3, r2, r4
	ldr r2, [sp, #420]
	ldr r4, [sp, #628]
	add r4, r2, r4
	ldr r2, [sp, #428]
	ldr r5, [sp, #640]
	add r5, r2, r5
	ldr r2, [sp, #648]
	ldr r6, [sp, #644]
	add r7, r2, r6
	ldr r2, [sp, #656]
	ldr r6, [sp, #604]
	add r6, r2, r6
	ldr r2, [sp, #416]
	add r2, r2, #64
	str r0, [sp, #616]
	str r1, [sp, #408]
	str r2, [sp, #416]
	mov r2, r6
	str r6, [sp, #656]
	mov r2, r7
	str r7, [sp, #648]
	mov r2, r5
	str r5, [sp, #428]
	mov r2, r4
	str r4, [sp, #420]
	mov r2, r3
	str r3, [sp, #412]
	ldr r0, [sp, #424]
	ldr r2, [sp, #416]
	cmp r2, r0
	bge label47
	b label23
label24:
	ldr r3, [sp, #460]
	ldr r0, [sp, #472]
	add r4, r3, r0, lsl #2
	str r4, [sp, #404]
	ldr r1, [r4, #-12]
	str r1, [sp, #400]
	ldr r2, [r4, #-32]
	str r2, [sp, #368]
	add r0, r1, r2
	sub r1, r1, r0
	add r1, r2, r1
	sub r0, r1, r0
	ldr r2, [r4, #-56]
	add r1, r0, r2
	sub r0, r0, r1
	add r0, r2, r0
	sub r0, r0, r1
	ldr r3, [r4, #-64]
	add r1, r0, r3
	sub r0, r0, r1
	add r0, r3, r0
	sub r0, r0, r1
	str r0, [sp, #352]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	mov r4, #2
	str r4, [sp, #396]
	mul r1, r0, r4
	ldr r0, [sp, #352]
	sub r1, r0, r1
	str r1, [sp, #348]
	ldr r0, [sp, #352]
	add r4, r1, r0, lsl #1
	str r4, [sp, #380]
	ldr r3, [sp, #460]
	ldr r0, [sp, #472]
	str r4, [r3, r0, lsl #2]
	ldr r4, [sp, #404]
	ldr r4, [r4, #-8]
	str r4, [sp, #384]
	ldr r4, [sp, #404]
	ldr r0, [r4, #-28]
	str r0, [sp, #668]
	ldr r4, [sp, #384]
	add r1, r4, r0
	ldr r4, [sp, #384]
	sub r3, r4, r1
	add r0, r0, r3
	sub r0, r0, r1
	ldr r4, [sp, #404]
	ldr r3, [r4, #-52]
	add r1, r0, r3
	sub r0, r0, r1
	add r0, r3, r0
	sub r0, r0, r1
	ldr r4, [sp, #404]
	ldr r4, [r4, #-60]
	add r1, r0, r4
	sub r0, r0, r1
	add r0, r4, r0
	sub r0, r0, r1
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	ldr r4, [sp, #396]
	mul r1, r1, r4
	sub r1, r0, r1
	add r5, r1, r0, lsl #1
	str r5, [sp, #688]
	ldr r4, [sp, #404]
	str r5, [r4, #4]
	ldr r4, [sp, #404]
	ldr r4, [r4, #-4]
	str r4, [sp, #392]
	ldr r4, [sp, #404]
	ldr r5, [r4, #-24]
	str r5, [sp, #388]
	ldr r4, [sp, #392]
	add r6, r4, r5
	ldr r4, [sp, #392]
	sub r4, r4, r6
	add r4, r5, r4
	sub r5, r4, r6
	ldr r4, [sp, #404]
	ldr r4, [r4, #-48]
	str r4, [sp, #652]
	add r6, r5, r4
	sub r5, r5, r6
	add r4, r4, r5
	sub r5, r4, r6
	add r4, r2, r5
	sub r5, r5, r4
	add r2, r2, r5
	sub r2, r2, r4
	str r2, [sp, #372]
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #396]
	mul r4, r2, r4
	ldr r2, [sp, #372]
	sub r4, r2, r4
	str r4, [sp, #364]
	ldr r2, [sp, #372]
	add r5, r4, r2, lsl #1
	str r5, [sp, #376]
	ldr r4, [sp, #404]
	str r5, [r4, #8]
	ldr r4, [sp, #404]
	ldr r5, [r4, #-20]
	str r5, [sp, #356]
	ldr r4, [sp, #380]
	add r2, r4, r5
	ldr r4, [sp, #380]
	sub r4, r4, r2
	add r4, r5, r4
	sub r2, r4, r2
	ldr r4, [sp, #404]
	ldr r4, [r4, #-44]
	str r4, [sp, #692]
	add r5, r2, r4
	sub r2, r2, r5
	add r2, r4, r2
	sub r4, r2, r5
	add r2, r3, r4
	sub r4, r4, r2
	add r3, r3, r4
	sub r3, r3, r2
	str r3, [sp, #328]
	ldr r4, [sp, #384]
	add r2, r4, r3, lsl #1
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r4, r3, r4
	ldr r3, [sp, #328]
	sub r4, r3, r4
	str r4, [sp, #724]
	add r2, r2, r4
	ldr r3, [sp, #328]
	add r5, r4, r3, lsl #1
	str r5, [sp, #336]
	sub r3, r5, r2
	ldr r4, [sp, #384]
	add r3, r4, r3
	sub r4, r3, r2
	ldr r2, [sp, #368]
	add r3, r2, r4
	sub r4, r4, r3
	ldr r2, [sp, #368]
	add r2, r2, r4
	sub r3, r2, r3
	ldr r4, [sp, #404]
	str r5, [r4, #12]
	ldr r4, [sp, #404]
	ldr r4, [r4, #-16]
	str r4, [sp, #360]
	ldr r4, [sp, #404]
	ldr r2, [r4, #-40]
	add r4, r2, r3
	sub r3, r3, r4
	add r3, r2, r3
	sub r3, r3, r4
	str r3, [sp, #332]
	add r0, r0, r3
	add r0, r1, r0, lsl #1
	add r1, r3, r3, lsr #31
	asr r1, r1, #1
	ldr r4, [sp, #396]
	mul r1, r1, r4
	sub r1, r3, r1
	str r1, [sp, #4]
	add r0, r0, r1
	add r5, r1, r3, lsl #1
	str r5, [sp, #344]
	sub r1, r5, r0
	ldr r5, [sp, #688]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r5, [sp, #356]
	add r0, r5, r1
	sub r1, r1, r0
	ldr r5, [sp, #356]
	add r1, r5, r1
	sub r3, r1, r0
	ldr r0, [sp, #668]
	add r1, r0, r3
	sub r3, r3, r1
	ldr r0, [sp, #668]
	add r0, r0, r3
	sub r1, r0, r1
	ldr r4, [sp, #360]
	ldr r5, [sp, #688]
	add r0, r5, r4
	ldr r5, [sp, #688]
	sub r3, r5, r0
	ldr r4, [sp, #360]
	add r3, r4, r3
	sub r3, r3, r0
	add r0, r3, r2
	sub r3, r3, r0
	add r2, r2, r3
	sub r2, r2, r0
	ldr r4, [sp, #652]
	add r0, r4, r2
	sub r2, r2, r0
	ldr r4, [sp, #652]
	add r2, r4, r2
	sub r0, r2, r0
	add r3, r0, r1
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #396]
	mul r2, r2, r4
	sub r2, r0, r2
	add r3, r2, r3, lsl #1
	add r4, r1, r1, lsr #31
	asr r5, r4, #1
	ldr r4, [sp, #396]
	mul r4, r5, r4
	sub r5, r1, r4
	add r4, r3, r5
	add r3, r5, r1, lsl #1
	str r3, [sp, #696]
	sub r1, r3, r4
	add r3, r2, r0, lsl #1
	add r1, r3, r1
	sub r5, r1, r4
	ldr r4, [sp, #384]
	add r1, r4, r5
	sub r5, r5, r1
	ldr r4, [sp, #384]
	add r4, r4, r5
	sub r5, r4, r1
	ldr r4, [sp, #360]
	add r1, r4, r5
	sub r5, r5, r1
	ldr r4, [sp, #360]
	add r4, r4, r5
	sub r1, r4, r1
	ldr r4, [sp, #392]
	add r0, r4, r0, lsl #1
	add r0, r0, r2
	sub r2, r3, r0
	ldr r4, [sp, #392]
	add r2, r4, r2
	sub r4, r2, r0
	ldr r0, [sp, #668]
	add r2, r0, r4
	sub r4, r4, r2
	ldr r0, [sp, #668]
	add r0, r0, r4
	sub r2, r0, r2
	ldr r4, [sp, #404]
	str r3, [r4, #16]
	ldr r4, [sp, #404]
	ldr r0, [r4, #-36]
	add r3, r0, r2
	sub r2, r2, r3
	add r2, r0, r2
	sub r3, r2, r3
	str r3, [sp, #476]
	add r2, r3, r1
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r4, r3, r4
	ldr r3, [sp, #476]
	sub r4, r3, r4
	str r4, [sp, #480]
	add r2, r4, r2, lsl #1
	add r3, r1, r1, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r3, r3, r4
	sub r3, r1, r3
	add r2, r2, r3
	add r1, r3, r1, lsl #1
	str r1, [sp, #664]
	sub r1, r1, r2
	ldr r3, [sp, #476]
	ldr r4, [sp, #480]
	add r3, r4, r3, lsl #1
	str r3, [sp, #492]
	add r1, r3, r1
	sub r2, r1, r2
	ldr r5, [sp, #688]
	add r1, r5, r2
	sub r2, r2, r1
	ldr r5, [sp, #688]
	add r2, r5, r2
	sub r2, r2, r1
	ldr r4, [sp, #392]
	add r1, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #392]
	add r2, r4, r2
	sub r1, r2, r1
	add r2, r1, r1, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #396]
	mul r2, r2, r4
	sub r2, r1, r2
	add r1, r2, r1, lsl #1
	str r1, [sp, #672]
	ldr r1, [sp, #400]
	ldr r2, [sp, #372]
	add r1, r1, r2, lsl #1
	ldr r4, [sp, #364]
	add r2, r1, r4
	ldr r5, [sp, #376]
	sub r3, r5, r2
	ldr r1, [sp, #400]
	add r1, r1, r3
	sub r2, r1, r2
	add r1, r2, r0
	sub r2, r2, r1
	add r0, r0, r2
	sub r1, r0, r1
	ldr r4, [sp, #692]
	add r0, r4, r1
	sub r1, r1, r0
	ldr r4, [sp, #692]
	add r1, r4, r1
	sub r1, r1, r0
	str r1, [sp, #532]
	ldr r0, [sp, #352]
	add r0, r0, r1
	ldr r1, [sp, #348]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #532]
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r4, [sp, #396]
	mul r2, r1, r4
	ldr r1, [sp, #532]
	sub r2, r1, r2
	str r2, [sp, #564]
	add r0, r0, r2
	ldr r1, [sp, #532]
	add r3, r2, r1, lsl #1
	str r3, [sp, #540]
	sub r1, r3, r0
	ldr r4, [sp, #380]
	add r1, r4, r1
	sub r1, r1, r0
	ldr r5, [sp, #388]
	add r0, r5, r1
	sub r1, r1, r0
	ldr r5, [sp, #388]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r2, [sp, #368]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #368]
	add r1, r2, r1
	sub r0, r1, r0
	ldr r3, [sp, #328]
	add r1, r3, r0
	ldr r4, [sp, #724]
	add r1, r4, r1, lsl #1
	add r2, r0, r0, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #396]
	mul r2, r2, r4
	sub r2, r0, r2
	add r1, r1, r2
	add r2, r2, r0, lsl #1
	sub r0, r2, r1
	ldr r5, [sp, #336]
	add r0, r5, r0
	sub r3, r0, r1
	ldr r1, [sp, #400]
	add r0, r1, r3
	sub r3, r3, r0
	ldr r1, [sp, #400]
	add r1, r1, r3
	sub r1, r1, r0
	ldr r5, [sp, #356]
	add r0, r5, r1
	sub r1, r1, r0
	ldr r5, [sp, #356]
	add r1, r5, r1
	sub r0, r1, r0
	ldr r3, [sp, #332]
	add r3, r3, r0
	ldr r1, [sp, #4]
	add r1, r1, r3, lsl #1
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r3, r3, r4
	sub r4, r0, r3
	add r3, r1, r4
	add r1, r4, r0, lsl #1
	sub r0, r1, r3
	ldr r5, [sp, #344]
	add r0, r5, r0
	sub r3, r0, r3
	ldr r4, [sp, #380]
	add r0, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #380]
	add r3, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #384]
	add r0, r4, r3
	sub r3, r3, r0
	ldr r4, [sp, #384]
	add r3, r4, r3
	sub r0, r3, r0
	add r3, r0, r0, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r3, r3, r4
	sub r3, r0, r3
	add r0, r3, r0, lsl #1
	ldr r4, [sp, #404]
	ldr r3, [sp, #540]
	str r3, [r4, #20]
	ldr r4, [sp, #404]
	ldr r5, [sp, #344]
	str r5, [r4, #24]
	ldr r4, [sp, #404]
	ldr r3, [sp, #492]
	str r3, [r4, #28]
	ldr r4, [sp, #404]
	str r2, [r4, #32]
	ldr r4, [sp, #404]
	ldr r3, [sp, #696]
	str r3, [r4, #36]
	ldr r2, [sp, #372]
	ldr r3, [sp, #476]
	add r2, r2, r3
	ldr r4, [sp, #364]
	add r2, r4, r2, lsl #1
	ldr r4, [sp, #480]
	add r2, r2, r4
	ldr r3, [sp, #492]
	sub r3, r3, r2
	ldr r5, [sp, #376]
	add r3, r5, r3
	sub r3, r3, r2
	ldr r4, [sp, #360]
	add r2, r4, r3
	sub r3, r3, r2
	ldr r4, [sp, #360]
	add r3, r4, r3
	sub r3, r3, r2
	ldr r5, [sp, #388]
	add r2, r5, r3
	sub r3, r3, r2
	ldr r5, [sp, #388]
	add r3, r5, r3
	sub r2, r3, r2
	add r3, r2, r2, lsr #31
	asr r3, r3, #1
	ldr r4, [sp, #396]
	mul r3, r3, r4
	sub r5, r2, r3
	add r3, r5, r2, lsl #1
	ldr r4, [sp, #404]
	str r3, [r4, #40]
	ldr r4, [sp, #404]
	str r1, [r4, #44]
	ldr r4, [sp, #404]
	ldr r1, [sp, #664]
	str r1, [r4, #48]
	ldr r1, [sp, #532]
	add r1, r1, r2
	ldr r2, [sp, #564]
	add r1, r2, r1, lsl #1
	add r1, r1, r5
	sub r2, r3, r1
	ldr r3, [sp, #540]
	add r2, r3, r2
	sub r2, r2, r1
	ldr r4, [sp, #392]
	add r1, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #392]
	add r2, r4, r2
	sub r3, r2, r1
	ldr r1, [sp, #400]
	add r2, r1, r3
	sub r3, r3, r2
	ldr r1, [sp, #400]
	add r1, r1, r3
	sub r1, r1, r2
	add r2, r1, r1, lsr #31
	asr r2, r2, #1
	ldr r4, [sp, #396]
	mul r2, r2, r4
	sub r2, r1, r2
	add r1, r2, r1, lsl #1
	ldr r4, [sp, #404]
	str r1, [r4, #52]
	ldr r4, [sp, #404]
	str r0, [r4, #56]
	ldr r4, [sp, #404]
	ldr r1, [sp, #672]
	str r1, [r4, #60]
	ldr r0, [sp, #472]
	add r0, r0, #16
	cmp r0, #80
	bge label767
	str r0, [sp, #472]
	b label24
label767:
	ldr r0, [sp, #616]
	ldr r1, [sp, #408]
	mov r4, #0
	str r4, [sp, #636]
	ldr r2, [sp, #656]
	mov r6, r2
	str r2, [sp, #604]
	ldr r2, [sp, #648]
	mov r6, r2
	str r2, [sp, #644]
	ldr r2, [sp, #428]
	mov r5, r2
	str r2, [sp, #640]
	ldr r2, [sp, #420]
	mov r4, r2
	str r2, [sp, #628]
	ldr r2, [sp, #412]
	mov r4, r2
	str r2, [sp, #624]
	ldr r4, [sp, #636]
	cmp r4, #80
	bge label35
	ldr r4, [sp, #636]
	cmp r4, #20
	bge label40
	b label46
label37:
	ldr r4, [sp, #624]
	ldr r6, [sp, #604]
	add r2, r6, r4, lsl #5
	add r2, r2, r0
	add r2, r2, r1
	ldr r4, [sp, #624]
	asr r3, r4, #31
	ldr r4, [sp, #624]
	add r3, r4, r3, lsr #27
	asr r3, r3, #5
	mov r4, #32
	mul r3, r3, r4
	ldr r4, [sp, #624]
	sub r3, r4, r3
	add r2, r2, r3
	ldr r3, [sp, #460]
	ldr r4, [sp, #636]
	ldr r3, [r3, r4, lsl #2]
	add r2, r2, r3
	ldr r4, [sp, #628]
	asr r3, r4, #31
	ldr r4, [sp, #628]
	add r3, r4, r3, lsr #2
	asr r3, r3, #30
	mov r4, #1073741824
	mul r3, r3, r4
	ldr r4, [sp, #628]
	sub r3, r4, r3
	ldr r4, [sp, #628]
	add r3, r3, r4, lsl #30
	ldr r4, [sp, #636]
	add r4, r4, #1
	str r4, [sp, #636]
	ldr r6, [sp, #644]
	str r6, [sp, #604]
	ldr r4, [sp, #624]
	str r4, [sp, #628]
	ldr r5, [sp, #640]
	mov r6, r5
	str r5, [sp, #644]
	mov r4, r2
	str r2, [sp, #624]
	mov r5, r3
	str r3, [sp, #640]
	ldr r4, [sp, #636]
	cmp r4, #80
	bge label35
	ldr r4, [sp, #636]
	cmp r4, #20
	bge label40
	b label46
label40:
	ldr r4, [sp, #636]
	cmp r4, #40
	bge label41
	ldr r5, [sp, #640]
	ldr r4, [sp, #628]
	add r0, r5, r4
	ldr r4, [sp, #628]
	sub r1, r4, r0
	ldr r5, [sp, #640]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #644]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #644]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #60289
	movt r0, #28377
	b label37
label46:
	ldr r6, [sp, #644]
	ldr r5, [sp, #640]
	add r0, r6, r5
	ldr r4, [sp, #628]
	add r0, r0, r4
	mvn r1, #0
	ldr r4, [sp, #628]
	sub r1, r1, r4
	add r0, r0, r1
	ldr r5, [sp, #640]
	ldr r4, [sp, #628]
	add r2, r5, r4
	sub r2, r2, r0
	ldr r6, [sp, #644]
	add r1, r6, r1
	add r1, r1, r2
	sub r2, r1, r0
	add r1, r0, r2
	sub r2, r2, r1
	add r0, r0, r2
	sub r1, r0, r1
	movw r0, #31129
	movt r0, #23170
	b label37
label41:
	ldr r4, [sp, #636]
	cmp r4, #60
	bge label42
	ldr r6, [sp, #644]
	ldr r5, [sp, #640]
	add r0, r6, r5
	ldr r4, [sp, #628]
	add r1, r0, r4, lsl #1
	ldr r5, [sp, #640]
	ldr r4, [sp, #628]
	add r2, r5, r4
	sub r2, r2, r1
	ldr r6, [sp, #644]
	ldr r4, [sp, #628]
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
	b label37
label42:
	ldr r4, [sp, #636]
	cmp r4, #80
	bge label37
	ldr r5, [sp, #640]
	ldr r4, [sp, #628]
	add r0, r5, r4
	ldr r4, [sp, #628]
	sub r1, r4, r0
	ldr r5, [sp, #640]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #644]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #644]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #49414
	movt r0, #51810
	b label37
label8:
	mov r0, #128
	ldr r1, [sp, #444]
	str r0, [r1, #0]
	movw r0, #32001
label9:
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	mov r3, #64
	mul r2, r2, r3
	sub r2, r1, r2
	mov r3, #0
	ldr r11, [sp, #468]
	str r3, [r11, r0, lsl #2]
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r11, [sp, #468]
	add r3, r11, r1, lsl #2
	mov r2, #0
	ldr r11, [sp, #468]
	str r2, [r11, r1, lsl #2]
	str r2, [r3, #4]
	mov r1, #125
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r0, r0, #5
	str r0, [sp, #424]
	mov r0, r2
	b label12
label48:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #464]
	bl putarray
	mov r0, #0
	add sp, sp, #732
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
