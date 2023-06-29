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
	str r6, [sp, #340]
	add r1, sp, #320
	str r1, [sp, #344]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #320]
	ldr r1, [sp, #344]
	str r0, [r1, #4]
	ldr r1, [sp, #344]
	str r0, [r1, #8]
	ldr r1, [sp, #344]
	str r0, [r1, #12]
	ldr r1, [sp, #344]
	str r0, [r1, #16]
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	str r6, [sp, #348]
	mov r1, r4
	mov r0, r5
	str r5, [sp, #352]
	cmp r5, #0
	ble label50
label64:
	mov r0, #0
	b label5
label49:
	ldr r2, [sp, #320]
	add r1, r0, r2
	sub r2, r2, r1
	add r0, r0, r2
	sub r0, r0, r1
	str r0, [sp, #320]
	ldr r1, [sp, #344]
	ldr r1, [r1, #4]
	ldr r4, [sp, #376]
	add r0, r4, r1
	sub r1, r1, r0
	ldr r4, [sp, #376]
	add r1, r4, r1
	sub r0, r1, r0
	ldr r1, [sp, #344]
	str r0, [r1, #4]
	ldr r1, [sp, #344]
	ldr r1, [r1, #8]
	ldr r4, [sp, #368]
	add r0, r4, r1
	sub r1, r1, r0
	ldr r4, [sp, #368]
	add r1, r4, r1
	sub r0, r1, r0
	ldr r1, [sp, #344]
	str r0, [r1, #8]
	ldr r1, [sp, #344]
	ldr r1, [r1, #12]
	ldr r3, [sp, #364]
	add r0, r3, r1
	sub r1, r1, r0
	ldr r3, [sp, #364]
	add r1, r3, r1
	sub r0, r1, r0
	ldr r1, [sp, #344]
	str r0, [r1, #12]
	ldr r1, [sp, #344]
	ldr r1, [r1, #16]
	ldr r3, [sp, #360]
	add r0, r3, r1
	sub r1, r1, r0
	ldr r3, [sp, #360]
	add r1, r3, r1
	sub r0, r1, r0
	ldr r1, [sp, #344]
	str r0, [r1, #16]
	ldr r0, [sp, #352]
	sub r0, r0, #1
	ldr r5, [sp, #356]
	mov r1, r5
	str r0, [sp, #352]
	cmp r0, #0
	ble label50
	b label64
label5:
	movw r2, #8193
	mul r3, r1, r2
	asr r4, r3, #31
	add r3, r3, r4, lsr #15
	asr r3, r3, #17
	mla r1, r1, r2, r3
	movw r5, #8225
	movt r5, #4
	mul r2, r1, r5
	asr r3, r2, #31
	add r2, r2, r3, lsr #15
	asr r2, r2, #17
	mla r2, r1, r5, r2
	mul r3, r2, r5
	asr r4, r3, #31
	add r3, r3, r4, lsr #15
	asr r3, r3, #17
	mla r3, r2, r5, r3
	mul r4, r3, r5
	asr r6, r4, #31
	add r4, r4, r6, lsr #15
	asr r4, r4, #17
	mla r4, r3, r5, r4
	mul r6, r4, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #15
	asr r6, r6, #17
	mla r9, r4, r5, r6
	mul r6, r9, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #15
	asr r6, r6, #17
	mla r10, r9, r5, r6
	mul r6, r10, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #15
	asr r6, r6, #17
	mla r8, r10, r5, r6
	mul r6, r8, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #15
	asr r6, r6, #17
	mla r5, r8, r5, r6
	mov r7, #33
	mul r5, r5, r7
	str r5, [sp, #356]
	mov r6, #256
	asr r11, r5, #31
	add r5, r5, r11, lsr #24
	asr r11, r5, #8
	ldr r5, [sp, #356]
	mls r5, r11, r6, r5
	mul r8, r8, r7
	asr r11, r8, #31
	add r11, r8, r11, lsr #24
	asr r11, r11, #8
	mls r8, r11, r6, r8
	mul r10, r10, r7
	asr r11, r10, #31
	add r11, r10, r11, lsr #24
	asr r11, r11, #8
	mls r10, r11, r6, r10
	mul r9, r9, r7
	asr r11, r9, #31
	add r11, r9, r11, lsr #24
	asr r11, r11, #8
	mls r9, r11, r6, r9
	mul r4, r4, r7
	asr r11, r4, #31
	add r11, r4, r11, lsr #24
	asr r11, r11, #8
	mls r4, r11, r6, r4
	mul r3, r3, r7
	asr r11, r3, #31
	add r11, r3, r11, lsr #24
	asr r11, r11, #8
	mls r3, r11, r6, r3
	mul r2, r2, r7
	asr r11, r2, #31
	add r11, r2, r11, lsr #24
	asr r11, r11, #8
	mls r2, r11, r6, r2
	mul r1, r1, r7
	asr r7, r1, #31
	add r7, r1, r7, lsr #24
	asr r7, r7, #8
	mls r7, r7, r6, r1
	ldr r6, [sp, #348]
	add r1, r6, r0, lsl #2
	ldr r6, [sp, #348]
	str r7, [r6, r0, lsl #2]
	str r2, [r1, #4]
	str r3, [r1, #8]
	str r4, [r1, #12]
	str r9, [r1, #16]
	str r10, [r1, #20]
	str r8, [r1, #24]
	str r5, [r1, #28]
	add r0, r0, #8
	cmp r0, #32000
	bge label8
	ldr r5, [sp, #356]
	mov r1, r5
	b label5
label8:
	ldr r6, [sp, #348]
	add r0, r6, #128000
	mov r1, #128
	str r1, [r0, #0]
	movw r0, #32001
label9:
	add r1, r0, #1
	mov r2, #64
	asr r3, r1, #31
	add r3, r1, r3, lsr #26
	asr r3, r3, #6
	mls r2, r3, r2, r1
	mov r3, #0
	ldr r6, [sp, #348]
	str r3, [r6, r0, lsl #2]
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r6, [sp, #348]
	add r3, r6, r1, lsl #2
	mov r2, #0
	ldr r6, [sp, #348]
	str r2, [r6, r1, lsl #2]
	str r2, [r3, #4]
	mov r1, #125
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r3, r0, #5
	str r3, [sp, #372]
	mov r0, r2
label12:
	ldr r6, [sp, #340]
	add r1, r6, r0, lsl #2
	mov r2, #0
	ldr r6, [sp, #340]
	str r2, [r6, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	add r0, r0, #8
	cmp r0, #80
	bge label148
	b label12
label148:
	mov r2, #0
	mov r1, r2
	mov r4, r2
	str r2, [sp, #380]
	movw r3, #57840
	str r3, [sp, #360]
	movt r3, #50130
	str r3, [sp, #360]
	movw r3, #21622
	str r3, [sp, #364]
	movt r3, #4146
	str r3, [sp, #364]
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
	mov r4, r2
	cmp r2, r3
	bge label49
label151:
	mov r3, #0
	b label23
label25:
	cmp r3, #80
	bge label180
	b label26
label180:
	mov r7, r2
	mov r8, r1
	mov r1, #0
	ldr r3, [sp, #360]
	mov r6, r3
	ldr r3, [sp, #364]
	mov r2, r3
	ldr r4, [sp, #368]
	mov r3, r4
	ldr r4, [sp, #376]
	mov r5, r4
	mov r4, r0
	cmp r1, #80
	bge label37
	cmp r1, #20
	bge label43
	b label42
label26:
	ldr r6, [sp, #340]
	add r4, r6, r3, lsl #2
	ldr r5, [r4, #-12]
	ldr r6, [r4, #-32]
	add r7, r5, r6
	sub r5, r5, r7
	add r5, r6, r5
	sub r6, r5, r7
	ldr r5, [r4, #-56]
	add r7, r6, r5
	sub r6, r6, r7
	add r5, r5, r6
	sub r5, r5, r7
	ldr r6, [r4, #-64]
	add r4, r5, r6
	sub r5, r5, r4
	add r5, r6, r5
	sub r4, r5, r4
	mov r5, #2
	add r6, r4, r4, lsr #31
	asr r6, r6, #1
	mls r5, r6, r5, r4
	add r4, r5, r4, lsl #1
	ldr r6, [sp, #340]
	str r4, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #80
	bge label210
	b label26
label210:
	mov r7, r2
	mov r8, r1
	mov r1, #0
	ldr r3, [sp, #360]
	mov r6, r3
	ldr r3, [sp, #364]
	mov r2, r3
	ldr r4, [sp, #368]
	mov r3, r4
	ldr r4, [sp, #376]
	mov r5, r4
	mov r4, r0
	cmp r1, #80
	bge label37
	cmp r1, #20
	bge label43
	b label42
label37:
	add r0, r0, r4
	ldr r4, [sp, #376]
	add r5, r4, r5
	ldr r4, [sp, #368]
	add r9, r4, r3
	ldr r3, [sp, #364]
	add r10, r3, r2
	ldr r3, [sp, #360]
	add r3, r3, r6
	ldr r4, [sp, #380]
	add r4, r4, #64
	mov r2, r7
	mov r1, r8
	str r4, [sp, #380]
	str r3, [sp, #360]
	mov r3, r10
	str r10, [sp, #364]
	mov r4, r9
	str r9, [sp, #368]
	mov r4, r5
	str r5, [sp, #376]
	ldr r3, [sp, #372]
	ldr r4, [sp, #380]
	cmp r4, r3
	bge label49
	b label151
label39:
	add r6, r6, r4, lsl #5
	add r6, r6, r7
	add r6, r6, r8
	mov r9, #32
	asr r10, r4, #31
	add r10, r4, r10, lsr #27
	asr r10, r10, #5
	mls r9, r10, r9, r4
	add r9, r6, r9
	ldr r6, [sp, #340]
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
	bge label37
	cmp r1, #20
	bge label43
label42:
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
	b label39
label43:
	cmp r1, #40
	bge label44
	b label48
label44:
	cmp r1, #60
	bge label45
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
	b label39
label48:
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
	b label39
label23:
	ldr r4, [sp, #380]
	add r5, r4, r3, lsl #2
	ldr r6, [sp, #348]
	add r4, r6, r5, lsl #2
	ldr r6, [sp, #348]
	ldr r5, [r6, r5, lsl #2]
	ldr r6, [r4, #4]
	lsl r5, r5, #24
	add r5, r5, r6, lsl #16
	ldr r6, [r4, #8]
	add r5, r5, r6, lsl #8
	ldr r4, [r4, #12]
	add r4, r5, r4
	ldr r6, [sp, #340]
	str r4, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #16
	bge label25
	b label23
label45:
	cmp r1, #80
	bge label39
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
	b label39
label50:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #344]
	bl putarray
	mov r0, #0
	add sp, sp, #388
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
