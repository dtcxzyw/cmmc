.arch armv7ve
.data
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
	sub sp, sp, #388
	mov r6, sp
	str r6, [sp, #352]
	add r1, sp, #324
	str r1, [sp, #348]
	bl getint
	mov r4, r0
	bl getint
	mov r6, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #324]
	ldr r1, [sp, #348]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	str r5, [sp, #356]
	mov r1, r4
	mov r0, r6
	str r6, [sp, #360]
	cmp r6, #0
	ble label56
label70:
	mov r0, #0
label5:
	movw r2, #8193
	mul r3, r1, r2
	asr r4, r3, #31
	add r3, r3, r4, lsr #15
	asr r3, r3, #17
	mla r1, r1, r2, r3
	movw r3, #8225
	movt r3, #4
	mul r2, r1, r3
	asr r4, r2, #31
	add r2, r2, r4, lsr #15
	asr r2, r2, #17
	mla r2, r1, r3, r2
	mul r4, r2, r3
	asr r5, r4, #31
	add r4, r4, r5, lsr #15
	asr r4, r4, #17
	mla r6, r2, r3, r4
	mul r4, r6, r3
	asr r5, r4, #31
	add r4, r4, r5, lsr #15
	asr r4, r4, #17
	mla r3, r6, r3, r4
	mov r5, #33
	mul r3, r3, r5
	str r3, [sp, #320]
	mov r4, #256
	asr r7, r3, #31
	add r7, r3, r7, lsr #24
	asr r7, r7, #8
	mls r3, r7, r4, r3
	mul r6, r6, r5
	asr r7, r6, #31
	add r7, r6, r7, lsr #24
	asr r7, r7, #8
	mls r6, r7, r4, r6
	mul r2, r2, r5
	asr r7, r2, #31
	add r7, r2, r7, lsr #24
	asr r7, r7, #8
	mls r2, r7, r4, r2
	mul r1, r1, r5
	asr r5, r1, #31
	add r5, r1, r5, lsr #24
	asr r5, r5, #8
	mls r4, r5, r4, r1
	ldr r5, [sp, #356]
	add r1, r5, r0, lsl #2
	str r4, [r5, r0, lsl #2]
	str r2, [r1, #4]
	str r6, [r1, #8]
	str r3, [r1, #12]
	add r0, r0, #4
	cmp r0, #32000
	bge label8
	ldr r3, [sp, #320]
	mov r1, r3
	b label5
label8:
	ldr r5, [sp, #356]
	add r0, r5, #128000
	mov r1, #128
	str r1, [r0, #0]
	movw r0, #32001
	b label9
label55:
	ldr r2, [sp, #324]
	add r1, r0, r2
	sub r2, r2, r1
	add r0, r0, r2
	sub r0, r0, r1
	str r0, [sp, #324]
	ldr r1, [sp, #348]
	ldr r2, [r1, #4]
	ldr r4, [sp, #376]
	add r0, r4, r2
	sub r2, r2, r0
	ldr r4, [sp, #376]
	add r2, r4, r2
	sub r0, r2, r0
	str r0, [r1, #4]
	ldr r2, [r1, #8]
	ldr r4, [sp, #368]
	add r0, r4, r2
	sub r2, r2, r0
	ldr r4, [sp, #368]
	add r2, r4, r2
	sub r0, r2, r0
	str r0, [r1, #8]
	ldr r2, [r1, #12]
	ldr r3, [sp, #344]
	add r0, r3, r2
	sub r2, r2, r0
	add r2, r3, r2
	sub r0, r2, r0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r3, [sp, #364]
	add r2, r3, r0
	sub r0, r0, r2
	add r0, r3, r0
	sub r0, r0, r2
	str r0, [r1, #16]
	ldr r0, [sp, #360]
	sub r0, r0, #1
	ldr r3, [sp, #320]
	mov r1, r3
	str r0, [sp, #360]
	cmp r0, #0
	ble label56
	b label70
label9:
	add r1, r0, #1
	mov r2, #64
	asr r3, r1, #31
	add r3, r1, r3, lsr #26
	asr r3, r3, #6
	mls r2, r3, r2, r1
	mov r3, #0
	ldr r5, [sp, #356]
	str r3, [r5, r0, lsl #2]
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r5, [sp, #356]
	add r3, r5, r1, lsl #2
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	str r2, [r3, #4]
	mov r1, #125
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r3, r0, #5
	str r3, [sp, #372]
	mov r0, r2
label12:
	ldr r6, [sp, #352]
	add r1, r6, r0, lsl #2
	mov r2, #0
	str r2, [r6, r0, lsl #2]
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
	bge label138
	b label12
label138:
	mov r2, #0
	mov r1, r2
	mov r6, r2
	str r2, [sp, #380]
	movw r3, #57840
	str r3, [sp, #364]
	movt r3, #50130
	str r3, [sp, #364]
	movw r3, #21622
	str r3, [sp, #344]
	movt r3, #4146
	str r3, [sp, #344]
	movw r4, #56574
	str r4, [sp, #368]
	movt r4, #39098
	str r4, [sp, #368]
	movw r4, #43913
	str r4, [sp, #376]
	movt r4, #61389
	str r4, [sp, #376]
	movw r0, #8961
	movt r0, #26437
	ldr r3, [sp, #372]
	cmp r2, r3
	bge label55
label141:
	mov r3, #0
	b label23
label35:
	add r0, r0, r4
	ldr r4, [sp, #376]
	add r5, r4, r5
	ldr r4, [sp, #368]
	add r4, r4, r3
	ldr r3, [sp, #344]
	add r9, r3, r2
	ldr r3, [sp, #364]
	add r3, r3, r6
	ldr r6, [sp, #380]
	add r6, r6, #64
	mov r2, r7
	mov r1, r8
	str r6, [sp, #380]
	str r3, [sp, #364]
	mov r3, r9
	str r9, [sp, #344]
	str r4, [sp, #368]
	mov r4, r5
	str r5, [sp, #376]
	ldr r3, [sp, #372]
	cmp r6, r3
	bge label55
	b label141
label49:
	add r3, r9, #4
	cmp r3, #80
	bge label328
	b label51
label328:
	mov r3, r9
label52:
	ldr r6, [sp, #352]
	add r4, r6, r3, lsl #2
	ldr r8, [r4, #-12]
	ldr r5, [r4, #-32]
	add r7, r8, r5
	sub r8, r8, r7
	add r5, r5, r8
	sub r8, r5, r7
	ldr r5, [r4, #-56]
	add r7, r8, r5
	sub r8, r8, r7
	add r5, r5, r8
	sub r7, r5, r7
	ldr r5, [r4, #-64]
	add r4, r7, r5
	sub r7, r7, r4
	add r5, r5, r7
	sub r4, r5, r4
	mov r5, #2
	add r7, r4, r4, lsr #31
	asr r7, r7, #1
	mls r5, r7, r5, r4
	add r4, r5, r4, lsl #1
	str r4, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #80
	bge label449
	b label52
label449:
	mov r7, r2
	mov r8, r1
	mov r1, #0
	ldr r3, [sp, #364]
	mov r6, r3
	ldr r3, [sp, #344]
	mov r2, r3
	ldr r4, [sp, #368]
	mov r3, r4
	ldr r4, [sp, #376]
	mov r5, r4
	mov r4, r0
	cmp r1, #80
	bge label35
	cmp r1, #20
	bge label40
	b label46
label37:
	add r6, r6, r4, lsl #5
	add r6, r6, r7
	add r6, r6, r8
	mov r9, #32
	asr r10, r4, #31
	add r10, r4, r10, lsr #27
	asr r10, r10, #5
	mls r9, r10, r9, r4
	add r9, r6, r9
	ldr r6, [sp, #352]
	ldr r6, [r6, r1, lsl #2]
	add r9, r9, r6
	mov r6, #1073741824
	asr r10, r5, #31
	add r10, r5, r10, lsr #2
	asr r10, r10, #30
	mls r6, r10, r6, r5
	add r10, r6, r5, lsl #30
	add r1, r1, #1
	mov r6, r2
	mov r5, r4
	mov r2, r3
	mov r4, r9
	mov r3, r10
	cmp r1, #80
	bge label35
	cmp r1, #20
	bge label40
	b label46
label40:
	cmp r1, #40
	bge label41
	add r7, r3, r5
	sub r8, r5, r7
	add r8, r3, r8
	sub r8, r8, r7
	add r7, r2, r8
	sub r8, r8, r7
	add r8, r2, r8
	sub r8, r8, r7
	movw r7, #60289
	movt r7, #28377
	b label37
label46:
	add r7, r2, r3
	add r7, r7, r5
	mvn r8, #0
	sub r8, r8, r5
	add r7, r7, r8
	add r9, r3, r5
	sub r9, r9, r7
	add r8, r2, r8
	add r8, r8, r9
	sub r9, r8, r7
	add r8, r7, r9
	sub r9, r9, r8
	add r7, r7, r9
	sub r8, r7, r8
	movw r7, #31129
	movt r7, #23170
	b label37
label41:
	cmp r1, #60
	bge label43
	add r7, r2, r3
	add r8, r7, r5, lsl #1
	add r9, r3, r5
	sub r9, r9, r8
	add r10, r2, r5
	add r9, r10, r9
	sub r10, r9, r8
	add r9, r8, r10
	sub r10, r10, r9
	add r8, r8, r10
	sub r9, r8, r9
	add r8, r7, r9
	sub r9, r9, r8
	add r7, r7, r9
	sub r9, r7, r8
	add r7, r8, r9
	sub r9, r9, r7
	add r8, r8, r9
	sub r8, r8, r7
	movw r7, #48348
	movt r7, #36635
	b label37
label43:
	cmp r1, #80
	bge label37
	add r7, r3, r5
	sub r8, r5, r7
	add r8, r3, r8
	sub r8, r8, r7
	add r7, r2, r8
	sub r8, r8, r7
	add r8, r2, r8
	sub r8, r8, r7
	movw r7, #49414
	movt r7, #51810
	b label37
label51:
	ldr r6, [sp, #352]
	add r4, r6, r9, lsl #2
	ldr r8, [r4, #-12]
	ldr r7, [r4, #-32]
	add r5, r8, r7
	sub r8, r8, r5
	add r7, r7, r8
	sub r5, r7, r5
	ldr r7, [r4, #-56]
	add r8, r5, r7
	sub r5, r5, r8
	add r5, r7, r5
	sub r5, r5, r8
	ldr r10, [r4, #-64]
	add r8, r5, r10
	sub r5, r5, r8
	add r5, r10, r5
	sub r8, r5, r8
	mov r5, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r10, r10, r5, r8
	add r8, r10, r8, lsl #1
	str r8, [r6, r9, lsl #2]
	ldr r6, [r4, #-8]
	ldr r9, [r4, #-28]
	add r10, r6, r9
	sub r6, r6, r10
	add r6, r9, r6
	sub r9, r6, r10
	ldr r6, [r4, #-52]
	add r10, r9, r6
	sub r9, r9, r10
	add r9, r6, r9
	sub r11, r9, r10
	ldr r10, [r4, #-60]
	add r9, r11, r10
	sub r11, r11, r9
	add r10, r10, r11
	sub r9, r10, r9
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r10, r10, r5, r9
	add r9, r10, r9, lsl #1
	str r9, [r4, #4]
	ldr r11, [r4, #-4]
	ldr r9, [r4, #-24]
	add r10, r11, r9
	sub r11, r11, r10
	add r9, r9, r11
	sub r11, r9, r10
	ldr r10, [r4, #-48]
	add r9, r11, r10
	sub r11, r11, r9
	add r10, r10, r11
	sub r10, r10, r9
	add r9, r7, r10
	sub r10, r10, r9
	add r7, r7, r10
	sub r7, r7, r9
	add r9, r7, r7, lsr #31
	asr r9, r9, #1
	mls r9, r9, r5, r7
	add r7, r9, r7, lsl #1
	str r7, [r4, #8]
	ldr r7, [r4, #-20]
	add r9, r8, r7
	sub r8, r8, r9
	add r7, r7, r8
	sub r7, r7, r9
	ldr r9, [r4, #-44]
	add r8, r7, r9
	sub r7, r7, r8
	add r7, r9, r7
	sub r8, r7, r8
	add r7, r6, r8
	sub r8, r8, r7
	add r6, r6, r8
	sub r6, r6, r7
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	mls r5, r7, r5, r6
	add r5, r5, r6, lsl #1
	str r5, [r4, #12]
	mov r9, r3
	add r3, r3, #4
	cmp r3, #80
	bge label328
	b label51
label23:
	ldr r6, [sp, #380]
	add r6, r6, r3, lsl #2
	ldr r5, [sp, #356]
	add r4, r5, r6, lsl #2
	ldr r6, [r5, r6, lsl #2]
	ldr r7, [r4, #4]
	lsl r6, r6, #24
	add r6, r6, r7, lsl #16
	ldr r7, [r4, #8]
	add r6, r6, r7, lsl #8
	ldr r4, [r4, #12]
	add r7, r6, r4
	ldr r6, [sp, #352]
	add r4, r6, r3, lsl #2
	str r7, [r6, r3, lsl #2]
	add r7, r3, #1
	ldr r6, [sp, #380]
	add r7, r6, r7, lsl #2
	add r6, r5, r7, lsl #2
	ldr r8, [r5, r7, lsl #2]
	ldr r7, [r6, #4]
	lsl r8, r8, #24
	add r7, r8, r7, lsl #16
	ldr r8, [r6, #8]
	add r7, r7, r8, lsl #8
	ldr r6, [r6, #12]
	add r6, r7, r6
	str r6, [r4, #4]
	add r7, r3, #2
	ldr r6, [sp, #380]
	add r7, r6, r7, lsl #2
	add r6, r5, r7, lsl #2
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r6, #4]
	lsl r7, r7, #24
	add r7, r7, r8, lsl #16
	ldr r8, [r6, #8]
	add r7, r7, r8, lsl #8
	ldr r6, [r6, #12]
	add r6, r7, r6
	str r6, [r4, #8]
	add r7, r3, #3
	ldr r6, [sp, #380]
	add r7, r6, r7, lsl #2
	add r6, r5, r7, lsl #2
	ldr r7, [r5, r7, lsl #2]
	ldr r5, [r6, #4]
	lsl r7, r7, #24
	add r5, r7, r5, lsl #16
	ldr r7, [r6, #8]
	add r5, r5, r7, lsl #8
	ldr r6, [r6, #12]
	add r5, r5, r6
	str r5, [r4, #12]
	add r9, r3, #4
	cmp r9, #16
	bge label25
	mov r3, r9
	b label23
label25:
	cmp r9, #80
	bge label227
	add r3, r9, #4
	cmp r3, #80
	bge label49
	b label54
label227:
	mov r7, r2
	mov r8, r1
	mov r1, #0
	ldr r3, [sp, #364]
	mov r6, r3
	ldr r3, [sp, #344]
	mov r2, r3
	ldr r4, [sp, #368]
	mov r3, r4
	ldr r4, [sp, #376]
	mov r5, r4
	mov r4, r0
	cmp r1, #80
	bge label35
	cmp r1, #20
	bge label40
	b label46
label54:
	ldr r6, [sp, #352]
	add r4, r6, r9, lsl #2
	ldr r7, [r4, #-12]
	ldr r8, [r4, #-32]
	add r5, r7, r8
	sub r7, r7, r5
	add r7, r8, r7
	sub r5, r7, r5
	ldr r7, [r4, #-56]
	add r8, r5, r7
	sub r5, r5, r8
	add r5, r7, r5
	sub r10, r5, r8
	ldr r8, [r4, #-64]
	add r5, r10, r8
	sub r10, r10, r5
	add r8, r8, r10
	sub r8, r8, r5
	mov r5, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r10, r10, r5, r8
	add r8, r10, r8, lsl #1
	str r8, [r6, r9, lsl #2]
	ldr r10, [r4, #-8]
	ldr r6, [r4, #-28]
	add r9, r10, r6
	sub r10, r10, r9
	add r6, r6, r10
	sub r9, r6, r9
	ldr r6, [r4, #-52]
	add r10, r9, r6
	sub r9, r9, r10
	add r9, r6, r9
	sub r9, r9, r10
	ldr r11, [r4, #-60]
	add r10, r9, r11
	sub r9, r9, r10
	add r9, r11, r9
	sub r9, r9, r10
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	mls r10, r10, r5, r9
	add r9, r10, r9, lsl #1
	str r9, [r4, #4]
	ldr r9, [r4, #-4]
	ldr r11, [r4, #-24]
	add r10, r9, r11
	sub r9, r9, r10
	add r9, r11, r9
	sub r10, r9, r10
	ldr r11, [r4, #-48]
	add r9, r10, r11
	sub r10, r10, r9
	add r10, r11, r10
	sub r10, r10, r9
	add r9, r7, r10
	sub r10, r10, r9
	add r7, r7, r10
	sub r7, r7, r9
	add r9, r7, r7, lsr #31
	asr r9, r9, #1
	mls r9, r9, r5, r7
	add r7, r9, r7, lsl #1
	str r7, [r4, #8]
	ldr r9, [r4, #-20]
	add r7, r8, r9
	sub r8, r8, r7
	add r8, r9, r8
	sub r9, r8, r7
	ldr r8, [r4, #-44]
	add r7, r9, r8
	sub r9, r9, r7
	add r8, r8, r9
	sub r8, r8, r7
	add r7, r6, r8
	sub r8, r8, r7
	add r6, r6, r8
	sub r6, r6, r7
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	mls r5, r7, r5, r6
	add r5, r5, r6, lsl #1
	str r5, [r4, #12]
	mov r9, r3
	add r3, r3, #4
	cmp r3, #80
	bge label49
	b label54
label56:
	mov r0, #184
	bl _sysy_stoptime
	ldr r1, [sp, #348]
	mov r0, #5
	bl putarray
	mov r0, #0
	add sp, sp, #388
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
