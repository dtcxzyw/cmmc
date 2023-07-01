.arch armv7ve
.data
.bss
.align 4
buffer:
	.zero	131072
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #388
	mov r8, sp
	str r8, [sp, #348]
	add r1, sp, #324
	str r1, [sp, #320]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #324]
	ldr r1, [sp, #320]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	str r6, [sp, #344]
	mov r3, r4
	mov r0, r5
	str r5, [sp, #352]
	cmp r5, #0
	ble label53
	b label67
label53:
	mov r0, #184
	bl _sysy_stoptime
	ldr r1, [sp, #320]
	mov r0, #5
	bl putarray
	mov r0, #0
	add sp, sp, #388
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label67:
	mov r0, #0
label5:
	add r1, r3, r3, lsl #13
	asr r2, r1, #31
	add r2, r1, r2, lsr #15
	asr r2, r2, #17
	add r1, r1, r2
	add r2, r1, r1, lsl #5
	add r2, r2, r2, lsl #13
	asr r3, r2, #31
	add r3, r2, r3, lsr #15
	asr r3, r3, #17
	add r2, r2, r3
	add r3, r2, r2, lsl #5
	add r3, r3, r3, lsl #13
	asr r4, r3, #31
	add r4, r3, r4, lsr #15
	asr r4, r4, #17
	add r4, r3, r4
	add r3, r4, r4, lsl #5
	add r3, r3, r3, lsl #13
	asr r5, r3, #31
	add r5, r3, r5, lsr #15
	asr r5, r5, #17
	add r3, r3, r5
	add r3, r3, r3, lsl #5
	str r3, [sp, #356]
	asr r5, r3, #31
	add r5, r3, r5, lsr #24
	asr r5, r5, #8
	sub r3, r3, r5, lsl #8
	add r4, r4, r4, lsl #5
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	sub r4, r4, r5, lsl #8
	add r2, r2, r2, lsl #5
	asr r5, r2, #31
	add r5, r2, r5, lsr #24
	asr r5, r5, #8
	sub r2, r2, r5, lsl #8
	add r1, r1, r1, lsl #5
	asr r5, r1, #31
	add r5, r1, r5, lsr #24
	asr r5, r5, #8
	sub r5, r1, r5, lsl #8
	ldr r6, [sp, #344]
	add r1, r6, r0, lsl #2
	str r5, [r6, r0, lsl #2]
	str r2, [r1, #4]
	str r4, [r1, #8]
	str r3, [r1, #12]
	add r0, r0, #4
	cmp r0, #32000
	bge label8
	ldr r3, [sp, #356]
	b label5
label23:
	ldr r0, [sp, #324]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #324]
	ldr r1, [sp, #320]
	ldr r0, [r1, #4]
	ldr r5, [sp, #376]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	ldr r5, [sp, #372]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #12]
	ldr r4, [sp, #364]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r4, [sp, #360]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #16]
	ldr r0, [sp, #352]
	sub r0, r0, #1
	ldr r3, [sp, #356]
	str r0, [sp, #352]
	cmp r0, #0
	ble label53
	b label67
label8:
	ldr r6, [sp, #344]
	add r0, r6, #128000
	mov r1, #128
	str r1, [r0, #0]
	movw r0, #32001
	mov r1, #0
	ldr r6, [sp, #344]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	sub r2, r1, r2, lsl #6
	cmp r2, #60
	beq label11
label120:
	mov r0, r1
	mov r1, #0
	ldr r6, [sp, #344]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	sub r2, r1, r2, lsl #6
	cmp r2, #60
	beq label11
	b label120
label11:
	ldr r6, [sp, #344]
	add r3, r6, r1, lsl #2
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	str r2, [r3, #4]
	mov r1, #125
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r4, r0, #5
	str r4, [sp, #368]
	mov r0, r2
label12:
	ldr r8, [sp, #348]
	add r1, r8, r0, lsl #2
	mov r2, #0
	str r2, [r8, r0, lsl #2]
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
	bge label149
	b label12
label149:
	mov r3, #0
	mov r2, r3
	mov r0, r3
	movw r4, #57840
	str r4, [sp, #360]
	movt r4, #50130
	str r4, [sp, #360]
	movw r4, #21622
	str r4, [sp, #364]
	movt r4, #4146
	str r4, [sp, #364]
	movw r5, #56574
	str r5, [sp, #372]
	movt r5, #39098
	str r5, [sp, #372]
	movw r5, #43913
	str r5, [sp, #376]
	movt r5, #61389
	str r5, [sp, #376]
	movw r1, #8961
	movt r1, #26437
	ldr r4, [sp, #368]
	cmp r4, r3
	ble label23
label152:
	mov r4, #0
	b label24
label561:
	movw r7, #31129
	movt r7, #23170
	mov r9, #0
	b label42
label36:
	add r1, r1, r5
	ldr r5, [sp, #376]
	add r6, r5, r6
	ldr r5, [sp, #372]
	add r5, r5, r4
	ldr r4, [sp, #364]
	add r10, r4, r3
	ldr r4, [sp, #360]
	add r4, r4, r8
	add r0, r0, #64
	mov r3, r7
	mov r2, r9
	str r4, [sp, #360]
	mov r4, r10
	str r10, [sp, #364]
	str r5, [sp, #372]
	mov r5, r6
	str r6, [sp, #376]
	ldr r4, [sp, #368]
	cmp r4, r0
	ble label23
	b label152
label42:
	add r8, r8, r5, lsl #5
	add r8, r7, r8
	add r8, r9, r8
	asr r10, r5, #31
	add r10, r5, r10, lsr #27
	asr r10, r10, #5
	sub r10, r5, r10, lsl #5
	add r10, r8, r10
	ldr r8, [sp, #348]
	ldr r8, [r8, r2, lsl #2]
	add r10, r10, r8
	asr r8, r6, #31
	add r8, r6, r8, lsr #2
	asr r8, r8, #30
	sub r8, r6, r8, lsl #30
	add r11, r8, r6, lsl #30
	add r2, r2, #1
	mov r8, r3
	mov r6, r5
	mov r3, r4
	mov r5, r10
	mov r4, r11
	cmp r2, #80
	mov r10, #0
	movwlt r10, #1
	bge label36
	cmp r2, #20
	bge label38
	b label561
label49:
	ldr r8, [sp, #348]
	add r5, r8, r4, lsl #2
	ldr r6, [r5, #-12]
	ldr r7, [r5, #-32]
	add r6, r6, r7
	ldr r7, [r5, #-56]
	sub r6, r6, r7
	ldr r5, [r5, #-64]
	add r5, r6, r5
	rsb r5, r5, #0
	add r6, r5, r5, lsr #31
	asr r6, r6, #1
	sub r6, r5, r6, lsl #1
	add r5, r6, r5, lsl #1
	str r5, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #80
	bge label335
	b label49
label335:
	mov r7, r3
	mov r9, r2
	mov r2, #0
	ldr r4, [sp, #360]
	mov r8, r4
	ldr r4, [sp, #364]
	mov r3, r4
	ldr r5, [sp, #372]
	mov r4, r5
	ldr r5, [sp, #376]
	mov r6, r5
	mov r5, r1
	cmp r2, #80
	mov r10, #0
	movwlt r10, #1
	bge label36
	cmp r2, #20
	bge label38
	b label561
label24:
	add r7, r0, r4, lsl #2
	ldr r6, [sp, #344]
	add r5, r6, r7, lsl #2
	ldr r7, [r6, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	add r7, r7, r8, lsl #8
	ldr r5, [r5, #12]
	add r7, r7, r5
	ldr r8, [sp, #348]
	add r5, r8, r4, lsl #2
	str r7, [r8, r4, lsl #2]
	add r7, r4, #1
	add r8, r0, r7, lsl #2
	add r7, r6, r8, lsl #2
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r7, #4]
	lsl r9, r9, #16
	add r8, r9, r8, lsl #24
	ldr r9, [r7, #8]
	add r8, r8, r9, lsl #8
	ldr r7, [r7, #12]
	add r7, r8, r7
	str r7, [r5, #4]
	add r7, r4, #2
	add r8, r0, r7, lsl #2
	add r7, r6, r8, lsl #2
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r7, #4]
	lsl r9, r9, #16
	add r8, r9, r8, lsl #24
	ldr r9, [r7, #8]
	add r8, r8, r9, lsl #8
	ldr r7, [r7, #12]
	add r7, r8, r7
	str r7, [r5, #8]
	add r7, r4, #3
	add r8, r0, r7, lsl #2
	add r7, r6, r8, lsl #2
	ldr r6, [r6, r8, lsl #2]
	ldr r8, [r7, #4]
	lsl r8, r8, #16
	add r6, r8, r6, lsl #24
	ldr r8, [r7, #8]
	add r6, r6, r8, lsl #8
	ldr r7, [r7, #12]
	add r6, r6, r7
	str r6, [r5, #12]
	add r9, r4, #4
	cmp r9, #16
	bge label26
	mov r4, r9
	b label24
label26:
	cmp r9, #80
	bge label258
	add r4, r9, #4
	cmp r4, #80
	bge label47
	b label52
label258:
	mov r7, r3
	mov r9, r2
	mov r2, #0
	ldr r4, [sp, #360]
	mov r8, r4
	ldr r4, [sp, #364]
	mov r3, r4
	ldr r5, [sp, #372]
	mov r4, r5
	ldr r5, [sp, #376]
	mov r6, r5
	mov r5, r1
	cmp r2, #80
	mov r10, #0
	movwlt r10, #1
	bge label36
	cmp r2, #20
	bge label38
	b label561
label38:
	cmp r2, #40
	bge label39
	b label275
label39:
	cmp r2, #60
	bge label40
	movw r7, #48348
	movt r7, #36635
	mov r9, #0
	b label42
label47:
	add r4, r9, #4
	cmp r4, #80
	bge label313
	b label51
label313:
	mov r4, r9
	b label49
label275:
	add r7, r4, r6
	sub r9, r7, r3
	movw r7, #60289
	movt r7, #28377
	b label42
label51:
	ldr r8, [sp, #348]
	add r5, r8, r9, lsl #2
	ldr r6, [r5, #-12]
	ldr r7, [r5, #-32]
	add r6, r6, r7
	ldr r7, [r5, #-56]
	sub r6, r6, r7
	ldr r10, [r5, #-64]
	add r6, r6, r10
	rsb r6, r6, #0
	add r10, r6, r6, lsr #31
	asr r10, r10, #1
	sub r10, r6, r10, lsl #1
	add r6, r10, r6, lsl #1
	str r6, [r8, r9, lsl #2]
	ldr r8, [r5, #-8]
	ldr r9, [r5, #-28]
	add r9, r8, r9
	ldr r8, [r5, #-52]
	sub r9, r9, r8
	ldr r10, [r5, #-60]
	add r9, r9, r10
	rsb r9, r9, #0
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r10, r9, r10, lsl #1
	add r9, r10, r9, lsl #1
	str r9, [r5, #4]
	ldr r9, [r5, #-4]
	ldr r10, [r5, #-24]
	add r9, r9, r10
	ldr r10, [r5, #-48]
	sub r9, r9, r10
	add r7, r7, r9
	rsb r7, r7, #0
	add r9, r7, r7, lsr #31
	asr r9, r9, #1
	sub r9, r7, r9, lsl #1
	add r7, r9, r7, lsl #1
	str r7, [r5, #8]
	ldr r7, [r5, #-20]
	add r6, r6, r7
	ldr r7, [r5, #-44]
	sub r6, r6, r7
	add r6, r8, r6
	rsb r6, r6, #0
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	sub r7, r6, r7, lsl #1
	add r6, r7, r6, lsl #1
	str r6, [r5, #12]
	mov r9, r4
	add r4, r4, #4
	cmp r4, #80
	bge label313
	b label51
label52:
	ldr r8, [sp, #348]
	add r5, r8, r9, lsl #2
	ldr r6, [r5, #-12]
	ldr r7, [r5, #-32]
	add r6, r6, r7
	ldr r7, [r5, #-56]
	sub r6, r6, r7
	ldr r10, [r5, #-64]
	add r6, r6, r10
	rsb r6, r6, #0
	add r10, r6, r6, lsr #31
	asr r10, r10, #1
	sub r10, r6, r10, lsl #1
	add r6, r10, r6, lsl #1
	str r6, [r8, r9, lsl #2]
	ldr r8, [r5, #-8]
	ldr r9, [r5, #-28]
	add r9, r8, r9
	ldr r8, [r5, #-52]
	sub r9, r9, r8
	ldr r10, [r5, #-60]
	add r9, r9, r10
	rsb r9, r9, #0
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r10, r9, r10, lsl #1
	add r9, r10, r9, lsl #1
	str r9, [r5, #4]
	ldr r9, [r5, #-4]
	ldr r10, [r5, #-24]
	add r9, r9, r10
	ldr r10, [r5, #-48]
	sub r9, r9, r10
	add r7, r7, r9
	rsb r7, r7, #0
	add r9, r7, r7, lsr #31
	asr r9, r9, #1
	sub r9, r7, r9, lsl #1
	add r7, r9, r7, lsl #1
	str r7, [r5, #8]
	ldr r7, [r5, #-20]
	add r6, r6, r7
	ldr r7, [r5, #-44]
	sub r6, r6, r7
	add r6, r8, r6
	rsb r6, r6, #0
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	sub r7, r6, r7, lsl #1
	add r6, r7, r6, lsl #1
	str r6, [r5, #12]
	mov r9, r4
	add r4, r4, #4
	cmp r4, #80
	bge label47
	b label52
label40:
	add r11, r4, r6
	sub r11, r11, r3
	cmp r10, #0
	movne r9, r11
	movw r10, #49414
	movt r10, #51810
	movne r7, r10
	b label42
