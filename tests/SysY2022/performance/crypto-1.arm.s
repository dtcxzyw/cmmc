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
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #660
	add r3, sp, #60
	str r3, [sp, #464]
	add r1, sp, #32
	str r1, [sp, #456]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r2, #0
	str r2, [sp, #32]
	ldr r1, [sp, #456]
	add r0, r1, #4
	str r0, [sp, #480]
	ldr r1, [sp, #456]
	str r2, [r1, #4]
	ldr r1, [sp, #456]
	add r0, r1, #8
	str r0, [sp, #488]
	ldr r1, [sp, #456]
	str r2, [r1, #8]
	ldr r1, [sp, #456]
	add r0, r1, #12
	str r0, [sp, #496]
	ldr r1, [sp, #456]
	str r2, [r1, #12]
	ldr r1, [sp, #456]
	add r0, r1, #16
	str r0, [sp, #472]
	ldr r1, [sp, #456]
	str r2, [r1, #16]
	movw r0, #:lower16:buffer
	movt r0, #:upper16:buffer
	mov r3, r0
	str r0, [sp, #504]
	add r1, r0, #128000
	str r1, [sp, #612]
	ldr r3, [sp, #464]
	add r1, r3, #4
	str r1, [sp, #548]
	ldr r3, [sp, #464]
	add r1, r3, #8
	str r1, [sp, #532]
	ldr r3, [sp, #464]
	add r1, r3, #12
	str r1, [sp, #604]
	ldr r3, [sp, #464]
	add r1, r3, #16
	str r1, [sp, #424]
	ldr r3, [sp, #464]
	add r1, r3, #20
	str r1, [sp, #420]
	ldr r3, [sp, #464]
	add r1, r3, #24
	str r1, [sp, #596]
	ldr r3, [sp, #464]
	add r1, r3, #28
	str r1, [sp, #508]
	ldr r3, [sp, #464]
	add r1, r3, #32
	str r1, [sp, #516]
	ldr r3, [sp, #464]
	add r1, r3, #36
	str r1, [sp, #588]
	ldr r3, [sp, #464]
	add r1, r3, #40
	str r1, [sp, #580]
	ldr r3, [sp, #464]
	add r1, r3, #44
	str r1, [sp, #572]
	ldr r3, [sp, #464]
	add r1, r3, #48
	str r1, [sp, #564]
	ldr r3, [sp, #464]
	add r1, r3, #52
	str r1, [sp, #556]
	ldr r3, [sp, #464]
	add r1, r3, #56
	str r1, [sp, #540]
	ldr r3, [sp, #464]
	add r1, r3, #60
	str r1, [sp, #524]
	mov r1, r4
	mov r0, r5
	str r5, [sp, #428]
	cmp r5, #0
	ble label48
label78:
	mov r2, #0
	str r2, [sp, #56]
label5:
	ldr r3, [sp, #504]
	ldr r2, [sp, #56]
	add r0, r3, r2, lsl #2
	str r0, [sp, #380]
	movw r0, #8193
	mul r0, r1, r0
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r1, r0
	mov r1, #33
	str r1, [sp, #4]
	mul r2, r0, r1
	asr r1, r2, #31
	add r1, r2, r1, lsr #24
	asr r3, r1, #8
	mov r1, #256
	str r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r2, r1
	ldr r3, [sp, #504]
	ldr r2, [sp, #56]
	str r1, [r3, r2, lsl #2]
	movw r1, #8225
	str r1, [sp, #492]
	movt r1, #4
	str r1, [sp, #492]
	mul r0, r0, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #4]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #8]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #12]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #16]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #20]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #24]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #28]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #32]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #36]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #40]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #44]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #48]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #52]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r2, r1, r0
	ldr r1, [sp, #4]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r3, r1, #8
	ldr r1, [sp, #16]
	mul r1, r3, r1
	sub r1, r0, r1
	ldr r0, [sp, #380]
	str r1, [r0, #56]
	ldr r1, [sp, #492]
	mul r0, r2, r1
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r1, r0
	ldr r1, [sp, #4]
	mul r1, r0, r1
	str r1, [sp, #432]
	asr r0, r1, #31
	add r0, r1, r0, lsr #24
	asr r0, r0, #8
	ldr r1, [sp, #16]
	mul r0, r0, r1
	ldr r1, [sp, #432]
	sub r1, r1, r0
	ldr r0, [sp, #380]
	str r1, [r0, #60]
	ldr r2, [sp, #56]
	add r2, r2, #16
	cmp r2, #32000
	bge label8
	ldr r1, [sp, #432]
	str r2, [sp, #56]
	b label5
label12:
	ldr r3, [sp, #464]
	add r1, r3, r0, lsl #2
	mov r2, #0
	ldr r3, [sp, #464]
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
	str r0, [sp, #640]
	mov r1, r0
	str r0, [sp, #636]
	mov r2, r0
	str r0, [sp, #628]
	movw r2, #57840
	str r2, [sp, #436]
	movt r2, #50130
	str r2, [sp, #436]
	movw r2, #21622
	str r2, [sp, #440]
	movt r2, #4146
	str r2, [sp, #440]
	movw r2, #56574
	str r2, [sp, #616]
	movt r2, #39098
	str r2, [sp, #616]
	movw r2, #43913
	str r2, [sp, #624]
	movt r2, #61389
	str r2, [sp, #624]
	movw r2, #8961
	str r2, [sp, #632]
	movt r2, #26437
	str r2, [sp, #632]
	ldr r0, [sp, #620]
	ldr r2, [sp, #628]
	cmp r2, r0
	bge label47
	b label23
label47:
	ldr r1, [sp, #32]
	ldr r2, [sp, #632]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #632]
	add r1, r2, r1
	sub r0, r1, r0
	str r0, [sp, #32]
	ldr r0, [sp, #480]
	ldr r1, [r0, #0]
	ldr r2, [sp, #624]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #624]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #480]
	str r1, [r0, #0]
	ldr r0, [sp, #488]
	ldr r1, [r0, #0]
	ldr r2, [sp, #616]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #616]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #488]
	str r1, [r0, #0]
	ldr r0, [sp, #496]
	ldr r1, [r0, #0]
	ldr r2, [sp, #440]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #440]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #496]
	str r1, [r0, #0]
	ldr r0, [sp, #472]
	ldr r1, [r0, #0]
	ldr r2, [sp, #436]
	add r0, r2, r1
	sub r1, r1, r0
	ldr r2, [sp, #436]
	add r1, r2, r1
	sub r1, r1, r0
	ldr r0, [sp, #472]
	str r1, [r0, #0]
	ldr r0, [sp, #428]
	sub r0, r0, #1
	ldr r1, [sp, #432]
	str r0, [sp, #428]
	cmp r0, #0
	ble label48
	b label78
label23:
	ldr r3, [sp, #504]
	ldr r2, [sp, #628]
	add r0, r3, r2, lsl #2
	str r0, [sp, #608]
	ldr r3, [sp, #504]
	ldr r2, [sp, #628]
	ldr r1, [r3, r2, lsl #2]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r0, [r0, #12]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	str r0, [sp, #60]
	ldr r0, [sp, #608]
	ldr r1, [r0, #16]
	ldr r0, [sp, #608]
	ldr r2, [r0, #20]
	ldr r0, [sp, #608]
	ldr r3, [r0, #24]
	ldr r0, [sp, #608]
	ldr r0, [r0, #28]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #548]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #32]
	ldr r0, [sp, #608]
	ldr r2, [r0, #36]
	ldr r0, [sp, #608]
	ldr r3, [r0, #40]
	ldr r0, [sp, #608]
	ldr r0, [r0, #44]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #532]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #48]
	ldr r0, [sp, #608]
	ldr r2, [r0, #52]
	ldr r0, [sp, #608]
	ldr r3, [r0, #56]
	ldr r0, [sp, #608]
	ldr r0, [r0, #60]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #604]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #64]
	ldr r0, [sp, #608]
	ldr r2, [r0, #68]
	ldr r0, [sp, #608]
	ldr r3, [r0, #72]
	ldr r0, [sp, #608]
	ldr r0, [r0, #76]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #424]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #80]
	ldr r0, [sp, #608]
	ldr r2, [r0, #84]
	ldr r0, [sp, #608]
	ldr r3, [r0, #88]
	ldr r0, [sp, #608]
	ldr r0, [r0, #92]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #420]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #96]
	ldr r0, [sp, #608]
	ldr r2, [r0, #100]
	ldr r0, [sp, #608]
	ldr r3, [r0, #104]
	ldr r0, [sp, #608]
	ldr r0, [r0, #108]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #596]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #112]
	ldr r0, [sp, #608]
	ldr r2, [r0, #116]
	ldr r0, [sp, #608]
	ldr r3, [r0, #120]
	ldr r0, [sp, #608]
	ldr r0, [r0, #124]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #508]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #128]
	ldr r0, [sp, #608]
	ldr r2, [r0, #132]
	ldr r0, [sp, #608]
	ldr r3, [r0, #136]
	ldr r0, [sp, #608]
	ldr r0, [r0, #140]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #516]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #144]
	ldr r0, [sp, #608]
	ldr r2, [r0, #148]
	ldr r0, [sp, #608]
	ldr r3, [r0, #152]
	ldr r0, [sp, #608]
	ldr r0, [r0, #156]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #588]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #160]
	ldr r0, [sp, #608]
	ldr r2, [r0, #164]
	ldr r0, [sp, #608]
	ldr r3, [r0, #168]
	ldr r0, [sp, #608]
	ldr r0, [r0, #172]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #580]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #176]
	ldr r0, [sp, #608]
	ldr r2, [r0, #180]
	ldr r0, [sp, #608]
	ldr r3, [r0, #184]
	ldr r0, [sp, #608]
	ldr r0, [r0, #188]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #572]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #192]
	ldr r0, [sp, #608]
	ldr r2, [r0, #196]
	ldr r0, [sp, #608]
	ldr r3, [r0, #200]
	ldr r0, [sp, #608]
	ldr r0, [r0, #204]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #564]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #208]
	ldr r0, [sp, #608]
	ldr r2, [r0, #212]
	ldr r0, [sp, #608]
	ldr r3, [r0, #216]
	ldr r0, [sp, #608]
	ldr r0, [r0, #220]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #556]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #224]
	ldr r0, [sp, #608]
	ldr r2, [r0, #228]
	ldr r0, [sp, #608]
	ldr r3, [r0, #232]
	ldr r0, [sp, #608]
	ldr r0, [r0, #236]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #540]
	str r0, [r1, #0]
	ldr r0, [sp, #608]
	ldr r1, [r0, #240]
	ldr r0, [sp, #608]
	ldr r2, [r0, #244]
	ldr r0, [sp, #608]
	ldr r3, [r0, #248]
	ldr r0, [sp, #608]
	ldr r0, [r0, #252]
	add r0, r0, r1, lsl #24
	add r0, r0, r2, lsl #16
	add r0, r0, r3, lsl #8
	ldr r1, [sp, #524]
	str r0, [r1, #0]
	mov r0, #16
	str r0, [sp, #648]
	b label24
label35:
	ldr r2, [sp, #632]
	ldr r4, [sp, #568]
	add r3, r2, r4
	ldr r2, [sp, #624]
	ldr r4, [sp, #576]
	add r4, r2, r4
	ldr r2, [sp, #616]
	ldr r5, [sp, #592]
	add r5, r2, r5
	ldr r2, [sp, #440]
	ldr r6, [sp, #600]
	add r7, r2, r6
	ldr r2, [sp, #436]
	ldr r6, [sp, #560]
	add r6, r2, r6
	ldr r2, [sp, #628]
	add r2, r2, #64
	str r0, [sp, #640]
	str r1, [sp, #636]
	str r2, [sp, #628]
	mov r2, r6
	str r6, [sp, #436]
	mov r2, r7
	str r7, [sp, #440]
	mov r2, r5
	str r5, [sp, #616]
	mov r2, r4
	str r4, [sp, #624]
	mov r2, r3
	str r3, [sp, #632]
	ldr r0, [sp, #620]
	ldr r2, [sp, #628]
	cmp r2, r0
	bge label47
	b label23
label24:
	ldr r3, [sp, #464]
	ldr r0, [sp, #648]
	add r6, r3, r0, lsl #2
	str r6, [sp, #644]
	ldr r7, [r6, #-12]
	str r7, [sp, #392]
	ldr r1, [r6, #-32]
	str r1, [sp, #8]
	add r0, r7, r1
	sub r2, r7, r0
	add r1, r1, r2
	sub r0, r1, r0
	ldr r2, [r6, #-56]
	add r1, r0, r2
	sub r0, r0, r1
	add r0, r2, r0
	sub r0, r0, r1
	ldr r1, [r6, #-64]
	add r3, r0, r1
	sub r0, r0, r3
	add r0, r1, r0
	sub r6, r0, r3
	str r6, [sp, #404]
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mov r6, #2
	str r6, [sp, #652]
	mul r0, r0, r6
	ldr r6, [sp, #404]
	sub r4, r6, r0
	str r4, [sp, #396]
	ldr r6, [sp, #404]
	add r5, r4, r6, lsl #1
	ldr r3, [sp, #464]
	ldr r0, [sp, #648]
	str r5, [r3, r0, lsl #2]
	ldr r6, [sp, #644]
	ldr r7, [r6, #-8]
	str r7, [sp, #400]
	ldr r6, [sp, #644]
	ldr r6, [r6, #-28]
	str r6, [sp, #24]
	add r0, r7, r6
	sub r1, r7, r0
	add r1, r6, r1
	sub r0, r1, r0
	ldr r6, [sp, #644]
	ldr r1, [r6, #-52]
	add r3, r0, r1
	sub r0, r0, r3
	add r0, r1, r0
	sub r0, r0, r3
	ldr r6, [sp, #644]
	ldr r4, [r6, #-60]
	add r3, r0, r4
	sub r0, r0, r3
	add r0, r4, r0
	sub r6, r0, r3
	str r6, [sp, #412]
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	ldr r6, [sp, #652]
	mul r0, r0, r6
	ldr r6, [sp, #412]
	sub r4, r6, r0
	str r4, [sp, #408]
	ldr r6, [sp, #412]
	add r0, r4, r6, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #4]
	ldr r6, [sp, #644]
	ldr r7, [r6, #-4]
	str r7, [sp, #416]
	ldr r6, [sp, #644]
	ldr r4, [r6, #-24]
	str r4, [sp, #52]
	add r3, r7, r4
	sub r6, r7, r3
	add r4, r4, r6
	sub r4, r4, r3
	ldr r6, [sp, #644]
	ldr r3, [r6, #-48]
	add r6, r4, r3
	sub r4, r4, r6
	add r4, r3, r4
	sub r6, r4, r6
	add r4, r2, r6
	sub r6, r6, r4
	add r2, r2, r6
	sub r4, r2, r4
	str r4, [sp, #476]
	add r2, r4, r4, lsr #31
	asr r2, r2, #1
	ldr r6, [sp, #652]
	mul r2, r2, r6
	sub r6, r4, r2
	str r6, [sp, #500]
	add r2, r6, r4, lsl #1
	ldr r6, [sp, #644]
	str r2, [r6, #8]
	ldr r6, [sp, #644]
	ldr r6, [r6, #-20]
	str r6, [sp, #384]
	ldr r4, [sp, #396]
	add r4, r4, r6
	ldr r6, [sp, #404]
	add r4, r4, r6, lsl #1
	sub r5, r5, r4
	ldr r6, [sp, #384]
	add r5, r6, r5
	sub r4, r5, r4
	ldr r6, [sp, #644]
	ldr r5, [r6, #-44]
	add r6, r4, r5
	sub r4, r4, r6
	add r4, r5, r4
	sub r6, r4, r6
	add r4, r1, r6
	sub r6, r6, r4
	add r1, r1, r6
	sub r7, r1, r4
	str r7, [sp, #460]
	add r1, r7, r7, lsr #31
	asr r1, r1, #1
	ldr r6, [sp, #652]
	mul r1, r1, r6
	sub r6, r7, r1
	str r6, [sp, #484]
	add r1, r6, r7, lsl #1
	ldr r6, [sp, #644]
	str r1, [r6, #12]
	ldr r6, [sp, #644]
	ldr r6, [r6, #-16]
	str r6, [sp, #388]
	ldr r4, [sp, #408]
	add r4, r4, r6
	ldr r6, [sp, #412]
	add r4, r4, r6, lsl #1
	sub r0, r0, r4
	ldr r6, [sp, #388]
	add r0, r6, r0
	sub r4, r0, r4
	ldr r6, [sp, #644]
	ldr r0, [r6, #-40]
	add r6, r4, r0
	sub r4, r4, r6
	add r4, r0, r4
	sub r6, r4, r6
	add r4, r3, r6
	sub r6, r6, r4
	add r3, r3, r6
	sub r7, r3, r4
	str r7, [sp, #448]
	add r3, r7, r7, lsr #31
	asr r3, r3, #1
	ldr r6, [sp, #652]
	mul r3, r3, r6
	sub r6, r7, r3
	str r6, [sp, #468]
	add r3, r6, r7, lsl #1
	ldr r6, [sp, #644]
	str r3, [r6, #16]
	ldr r7, [sp, #392]
	ldr r6, [sp, #500]
	add r6, r7, r6
	ldr r4, [sp, #476]
	add r4, r6, r4, lsl #1
	sub r2, r2, r4
	ldr r7, [sp, #392]
	add r2, r7, r2
	sub r2, r2, r4
	ldr r6, [sp, #644]
	ldr r4, [r6, #-36]
	add r6, r2, r4
	sub r2, r2, r6
	add r2, r4, r2
	sub r6, r2, r6
	add r2, r5, r6
	sub r6, r6, r2
	add r5, r5, r6
	sub r7, r5, r2
	str r7, [sp, #0]
	add r2, r7, r7, lsr #31
	asr r2, r2, #1
	ldr r6, [sp, #652]
	mul r2, r2, r6
	sub r6, r7, r2
	str r6, [sp, #452]
	add r2, r6, r7, lsl #1
	ldr r6, [sp, #644]
	str r2, [r6, #20]
	ldr r7, [sp, #400]
	ldr r6, [sp, #484]
	add r5, r7, r6
	ldr r7, [sp, #460]
	add r5, r5, r7, lsl #1
	sub r1, r1, r5
	ldr r7, [sp, #400]
	add r1, r7, r1
	sub r6, r1, r5
	ldr r1, [sp, #8]
	add r5, r1, r6
	sub r6, r6, r5
	ldr r1, [sp, #8]
	add r1, r1, r6
	sub r5, r1, r5
	add r1, r0, r5
	sub r5, r5, r1
	add r0, r0, r5
	sub r7, r0, r1
	str r7, [sp, #12]
	add r0, r7, r7, lsr #31
	asr r0, r0, #1
	ldr r6, [sp, #652]
	mul r0, r0, r6
	sub r6, r7, r0
	str r6, [sp, #444]
	add r5, r6, r7, lsl #1
	ldr r6, [sp, #644]
	str r5, [r6, #24]
	ldr r7, [sp, #416]
	ldr r6, [sp, #468]
	add r0, r7, r6
	ldr r7, [sp, #448]
	add r0, r0, r7, lsl #1
	sub r1, r3, r0
	ldr r7, [sp, #416]
	add r1, r7, r1
	sub r1, r1, r0
	ldr r6, [sp, #24]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #24]
	add r1, r6, r1
	sub r1, r1, r0
	add r0, r4, r1
	sub r1, r1, r0
	add r1, r4, r1
	sub r4, r1, r0
	str r4, [sp, #28]
	add r0, r4, r4, lsr #31
	asr r0, r0, #1
	ldr r6, [sp, #652]
	mul r0, r0, r6
	sub r7, r4, r0
	str r7, [sp, #20]
	add r0, r7, r4, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #28]
	ldr r4, [sp, #396]
	ldr r6, [sp, #452]
	add r1, r4, r6
	ldr r6, [sp, #404]
	add r1, r1, r6, lsl #1
	ldr r7, [sp, #0]
	add r1, r1, r7, lsl #1
	sub r2, r2, r1
	ldr r4, [sp, #396]
	add r2, r4, r2
	ldr r6, [sp, #404]
	add r2, r2, r6, lsl #1
	sub r2, r2, r1
	ldr r4, [sp, #52]
	add r1, r4, r2
	sub r2, r2, r1
	ldr r4, [sp, #52]
	add r2, r4, r2
	sub r3, r2, r1
	ldr r1, [sp, #8]
	add r2, r1, r3
	sub r3, r3, r2
	ldr r1, [sp, #8]
	add r1, r1, r3
	sub r6, r1, r2
	str r6, [sp, #512]
	add r1, r6, r6, lsr #31
	asr r1, r1, #1
	ldr r6, [sp, #652]
	mul r1, r1, r6
	ldr r6, [sp, #512]
	sub r3, r6, r1
	ldr r6, [sp, #512]
	add r1, r3, r6, lsl #1
	ldr r6, [sp, #644]
	str r1, [r6, #32]
	ldr r4, [sp, #408]
	ldr r6, [sp, #444]
	add r2, r4, r6
	ldr r6, [sp, #412]
	add r2, r2, r6, lsl #1
	ldr r7, [sp, #12]
	add r2, r2, r7, lsl #1
	sub r5, r5, r2
	ldr r4, [sp, #408]
	add r4, r4, r5
	ldr r6, [sp, #412]
	add r4, r4, r6, lsl #1
	sub r4, r4, r2
	ldr r6, [sp, #384]
	add r2, r6, r4
	sub r4, r4, r2
	ldr r6, [sp, #384]
	add r4, r6, r4
	sub r4, r4, r2
	ldr r6, [sp, #24]
	add r2, r6, r4
	sub r4, r4, r2
	ldr r6, [sp, #24]
	add r4, r6, r4
	sub r6, r4, r2
	str r6, [sp, #520]
	add r2, r6, r6, lsr #31
	asr r2, r2, #1
	ldr r6, [sp, #652]
	mul r2, r2, r6
	ldr r6, [sp, #520]
	sub r5, r6, r2
	ldr r6, [sp, #520]
	add r2, r5, r6, lsl #1
	ldr r6, [sp, #644]
	str r2, [r6, #36]
	ldr r7, [sp, #20]
	ldr r6, [sp, #500]
	add r6, r6, r7
	ldr r4, [sp, #476]
	add r6, r6, r4, lsl #1
	ldr r4, [sp, #28]
	add r7, r6, r4, lsl #1
	sub r0, r0, r7
	ldr r6, [sp, #500]
	add r0, r6, r0
	ldr r4, [sp, #476]
	add r0, r0, r4, lsl #1
	sub r4, r0, r7
	ldr r6, [sp, #388]
	add r0, r6, r4
	sub r4, r4, r0
	ldr r6, [sp, #388]
	add r4, r6, r4
	sub r6, r4, r0
	ldr r4, [sp, #52]
	add r0, r4, r6
	sub r6, r6, r0
	ldr r4, [sp, #52]
	add r4, r4, r6
	sub r6, r4, r0
	str r6, [sp, #528]
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	ldr r6, [sp, #652]
	mul r0, r0, r6
	ldr r6, [sp, #528]
	sub r4, r6, r0
	ldr r6, [sp, #528]
	add r0, r4, r6, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #40]
	ldr r6, [sp, #484]
	add r3, r6, r3
	ldr r7, [sp, #460]
	add r3, r3, r7, lsl #1
	ldr r6, [sp, #512]
	add r3, r3, r6, lsl #1
	sub r1, r1, r3
	ldr r6, [sp, #484]
	add r1, r6, r1
	ldr r7, [sp, #460]
	add r1, r1, r7, lsl #1
	sub r3, r1, r3
	ldr r7, [sp, #392]
	add r1, r7, r3
	sub r3, r3, r1
	ldr r7, [sp, #392]
	add r3, r7, r3
	sub r3, r3, r1
	ldr r6, [sp, #384]
	add r1, r6, r3
	sub r3, r3, r1
	ldr r6, [sp, #384]
	add r3, r6, r3
	sub r6, r3, r1
	str r6, [sp, #536]
	add r1, r6, r6, lsr #31
	asr r1, r1, #1
	ldr r6, [sp, #652]
	mul r1, r1, r6
	ldr r6, [sp, #536]
	sub r3, r6, r1
	ldr r6, [sp, #536]
	add r1, r3, r6, lsl #1
	ldr r6, [sp, #644]
	str r1, [r6, #44]
	ldr r6, [sp, #468]
	add r5, r6, r5
	ldr r7, [sp, #448]
	add r5, r5, r7, lsl #1
	ldr r6, [sp, #520]
	add r5, r5, r6, lsl #1
	sub r2, r2, r5
	ldr r6, [sp, #468]
	add r2, r6, r2
	ldr r7, [sp, #448]
	add r2, r2, r7, lsl #1
	sub r5, r2, r5
	ldr r7, [sp, #400]
	add r2, r7, r5
	sub r5, r5, r2
	ldr r7, [sp, #400]
	add r5, r7, r5
	sub r5, r5, r2
	ldr r6, [sp, #388]
	add r2, r6, r5
	sub r5, r5, r2
	ldr r6, [sp, #388]
	add r5, r6, r5
	sub r5, r5, r2
	str r5, [sp, #552]
	add r2, r5, r5, lsr #31
	asr r2, r2, #1
	ldr r6, [sp, #652]
	mul r2, r2, r6
	sub r2, r5, r2
	add r5, r2, r5, lsl #1
	str r5, [sp, #544]
	ldr r6, [sp, #644]
	str r5, [r6, #48]
	ldr r6, [sp, #452]
	add r4, r6, r4
	ldr r7, [sp, #0]
	add r4, r4, r7, lsl #1
	ldr r6, [sp, #528]
	add r4, r4, r6, lsl #1
	sub r0, r0, r4
	ldr r6, [sp, #452]
	add r0, r6, r0
	ldr r7, [sp, #0]
	add r0, r0, r7, lsl #1
	sub r4, r0, r4
	ldr r7, [sp, #416]
	add r0, r7, r4
	sub r4, r4, r0
	ldr r7, [sp, #416]
	add r4, r7, r4
	sub r4, r4, r0
	ldr r7, [sp, #392]
	add r0, r7, r4
	sub r4, r4, r0
	ldr r7, [sp, #392]
	add r4, r7, r4
	sub r0, r4, r0
	add r4, r0, r0, lsr #31
	asr r4, r4, #1
	ldr r6, [sp, #652]
	mul r4, r4, r6
	sub r4, r0, r4
	add r0, r4, r0, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #52]
	ldr r6, [sp, #444]
	add r0, r6, r3
	ldr r7, [sp, #12]
	add r0, r0, r7, lsl #1
	ldr r6, [sp, #536]
	add r0, r0, r6, lsl #1
	sub r1, r1, r0
	ldr r6, [sp, #444]
	add r1, r6, r1
	ldr r7, [sp, #12]
	add r1, r1, r7, lsl #1
	sub r1, r1, r0
	ldr r4, [sp, #396]
	add r0, r4, r1
	ldr r6, [sp, #404]
	add r0, r0, r6, lsl #1
	sub r1, r1, r0
	ldr r4, [sp, #396]
	add r1, r4, r1
	ldr r6, [sp, #404]
	add r1, r1, r6, lsl #1
	sub r1, r1, r0
	ldr r7, [sp, #400]
	add r0, r7, r1
	sub r1, r1, r0
	ldr r7, [sp, #400]
	add r1, r7, r1
	sub r0, r1, r0
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	ldr r6, [sp, #652]
	mul r1, r1, r6
	sub r1, r0, r1
	add r0, r1, r0, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #56]
	ldr r7, [sp, #20]
	add r0, r7, r2
	ldr r4, [sp, #28]
	add r0, r0, r4, lsl #1
	ldr r5, [sp, #552]
	add r0, r0, r5, lsl #1
	ldr r5, [sp, #544]
	sub r1, r5, r0
	ldr r7, [sp, #20]
	add r1, r1, r7
	ldr r4, [sp, #28]
	add r1, r1, r4, lsl #1
	sub r1, r1, r0
	ldr r4, [sp, #408]
	add r0, r1, r4
	ldr r6, [sp, #412]
	add r0, r0, r6, lsl #1
	sub r1, r1, r0
	ldr r4, [sp, #408]
	add r1, r1, r4
	ldr r6, [sp, #412]
	add r1, r1, r6, lsl #1
	sub r1, r1, r0
	ldr r7, [sp, #416]
	add r0, r1, r7
	sub r1, r1, r0
	ldr r7, [sp, #416]
	add r1, r1, r7
	sub r0, r1, r0
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	ldr r6, [sp, #652]
	mul r1, r1, r6
	sub r1, r0, r1
	add r0, r1, r0, lsl #1
	ldr r6, [sp, #644]
	str r0, [r6, #60]
	ldr r0, [sp, #648]
	add r0, r0, #16
	cmp r0, #80
	bge label773
	str r0, [sp, #648]
	b label24
label773:
	ldr r0, [sp, #640]
	ldr r1, [sp, #636]
	mov r4, #0
	str r4, [sp, #584]
	ldr r2, [sp, #436]
	mov r6, r2
	str r2, [sp, #560]
	ldr r2, [sp, #440]
	mov r6, r2
	str r2, [sp, #600]
	ldr r2, [sp, #616]
	mov r5, r2
	str r2, [sp, #592]
	ldr r2, [sp, #624]
	mov r4, r2
	str r2, [sp, #576]
	ldr r2, [sp, #632]
	mov r4, r2
	str r2, [sp, #568]
	ldr r4, [sp, #584]
	cmp r4, #80
	bge label35
	ldr r4, [sp, #584]
	cmp r4, #20
	bge label41
	b label40
label37:
	ldr r4, [sp, #568]
	asr r2, r4, #31
	ldr r4, [sp, #568]
	add r2, r4, r2, lsr #27
	asr r2, r2, #5
	mov r3, #32
	mul r2, r2, r3
	ldr r4, [sp, #568]
	sub r2, r4, r2
	ldr r3, [sp, #464]
	ldr r4, [sp, #584]
	ldr r3, [r3, r4, lsl #2]
	ldr r6, [sp, #560]
	add r4, r6, r0
	add r4, r4, r1
	add r2, r4, r2
	add r2, r2, r3
	ldr r4, [sp, #568]
	add r2, r2, r4, lsl #5
	ldr r4, [sp, #576]
	asr r3, r4, #31
	ldr r4, [sp, #576]
	add r3, r4, r3, lsr #2
	asr r3, r3, #30
	mov r4, #1073741824
	mul r3, r3, r4
	ldr r4, [sp, #576]
	sub r3, r4, r3
	ldr r4, [sp, #576]
	add r3, r3, r4, lsl #30
	ldr r4, [sp, #584]
	add r4, r4, #1
	str r4, [sp, #584]
	ldr r6, [sp, #600]
	str r6, [sp, #560]
	ldr r4, [sp, #568]
	str r4, [sp, #576]
	ldr r5, [sp, #592]
	mov r6, r5
	str r5, [sp, #600]
	mov r4, r2
	str r2, [sp, #568]
	mov r5, r3
	str r3, [sp, #592]
	ldr r4, [sp, #584]
	cmp r4, #80
	bge label35
	ldr r4, [sp, #584]
	cmp r4, #20
	bge label41
	b label40
label41:
	ldr r4, [sp, #584]
	cmp r4, #40
	bge label42
	ldr r5, [sp, #592]
	ldr r4, [sp, #576]
	add r0, r5, r4
	ldr r4, [sp, #576]
	sub r1, r4, r0
	ldr r5, [sp, #592]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #600]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #600]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #60289
	movt r0, #28377
	b label37
label40:
	ldr r5, [sp, #592]
	ldr r4, [sp, #576]
	add r0, r5, r4
	mvn r1, #0
	ldr r4, [sp, #576]
	sub r1, r1, r4
	ldr r6, [sp, #600]
	ldr r5, [sp, #592]
	add r2, r6, r5
	ldr r4, [sp, #576]
	add r2, r2, r4
	add r2, r2, r1
	sub r0, r0, r2
	ldr r6, [sp, #600]
	add r1, r6, r1
	add r0, r1, r0
	sub r1, r0, r2
	add r0, r2, r1
	sub r1, r1, r0
	add r1, r2, r1
	sub r1, r1, r0
	movw r0, #31129
	movt r0, #23170
	b label37
label42:
	ldr r4, [sp, #584]
	cmp r4, #60
	bge label43
	b label45
label43:
	ldr r4, [sp, #584]
	cmp r4, #80
	bge label37
	ldr r5, [sp, #592]
	ldr r4, [sp, #576]
	add r0, r5, r4
	ldr r4, [sp, #576]
	sub r1, r4, r0
	ldr r5, [sp, #592]
	add r1, r5, r1
	sub r1, r1, r0
	ldr r6, [sp, #600]
	add r0, r6, r1
	sub r1, r1, r0
	ldr r6, [sp, #600]
	add r1, r6, r1
	sub r1, r1, r0
	movw r0, #49414
	movt r0, #51810
	b label37
label45:
	ldr r5, [sp, #592]
	ldr r4, [sp, #576]
	add r2, r5, r4
	ldr r6, [sp, #600]
	ldr r5, [sp, #592]
	add r0, r6, r5
	ldr r4, [sp, #576]
	add r1, r0, r4, lsl #1
	sub r2, r2, r1
	ldr r6, [sp, #600]
	ldr r4, [sp, #576]
	add r3, r6, r4
	add r2, r3, r2
	sub r2, r2, r1
	add r1, r0, r2
	ldr r4, [sp, #576]
	add r1, r1, r4, lsl #1
	sub r2, r2, r1
	add r2, r0, r2
	ldr r4, [sp, #576]
	add r2, r2, r4, lsl #1
	sub r2, r2, r1
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
label8:
	mov r0, #128
	ldr r1, [sp, #612]
	str r0, [r1, #0]
	movw r0, #32001
label9:
	mov r1, #0
	ldr r3, [sp, #504]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	mov r3, #64
	mul r2, r2, r3
	sub r2, r1, r2
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r3, [sp, #504]
	add r4, r3, r1, lsl #2
	mov r2, #0
	ldr r3, [sp, #504]
	str r2, [r3, r1, lsl #2]
	str r2, [r4, #4]
	mov r1, #125
	str r1, [r4, #8]
	str r2, [r4, #12]
	add r0, r0, #5
	str r0, [sp, #620]
	mov r0, r2
	b label12
label48:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #456]
	bl putarray
	mov r0, #0
	add sp, sp, #660
	pop { r4, r5, r6, r7, pc }
