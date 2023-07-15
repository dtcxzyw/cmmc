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
	sub sp, sp, #380
	add r1, sp, #324
	mov r8, sp
	str r8, [sp, #352]
	str r1, [sp, #348]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	movw r6, #:lower16:buffer
	mov r0, #0
	mov r3, r4
	movt r6, #:upper16:buffer
	str r0, [sp, #324]
	ldr r1, [sp, #348]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	movs r0, r5
	str r6, [sp, #356]
	str r5, [sp, #360]
	ble label41
label55:
	mov r0, #0
label5:
	add r1, r3, r3, lsl #13
	asr r2, r1, #31
	add r2, r1, r2, lsr #15
	asr r2, r2, #17
	add r1, r1, r2
	add r2, r1, r1, lsl #5
	add r1, r1, r1, lsl #5
	add r2, r2, r2, lsl #13
	asr r3, r2, #31
	add r3, r2, r3, lsr #15
	asr r3, r3, #17
	add r2, r2, r3
	add r3, r2, r2, lsl #5
	add r2, r2, r2, lsl #5
	add r3, r3, r3, lsl #13
	asr r4, r3, #31
	add r4, r3, r4, lsr #15
	asr r4, r4, #17
	add r4, r3, r4
	add r3, r4, r4, lsl #5
	add r4, r4, r4, lsl #5
	add r3, r3, r3, lsl #13
	asr r5, r3, #31
	add r5, r3, r5, lsr #15
	asr r5, r5, #17
	add r3, r3, r5
	add r3, r3, r3, lsl #5
	asr r5, r3, #31
	str r3, [sp, #364]
	add r5, r3, r5, lsr #24
	ldr r6, [sp, #356]
	asr r5, r5, #8
	sub r3, r3, r5, lsl #8
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	sub r4, r4, r5, lsl #8
	asr r5, r2, #31
	add r5, r2, r5, lsr #24
	asr r5, r5, #8
	sub r2, r2, r5, lsl #8
	asr r5, r1, #31
	add r5, r1, r5, lsr #24
	asr r5, r5, #8
	sub r5, r1, r5, lsl #8
	add r1, r6, r0, lsl #2
	str r5, [r6, r0, lsl #2]
	add r0, r0, #4
	str r2, [r1, #4]
	cmp r0, #32000
	str r4, [r1, #8]
	str r3, [r1, #12]
	bge label8
	ldr r3, [sp, #364]
	b label5
label8:
	ldr r6, [sp, #356]
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
	b label9
label12:
	ldr r8, [sp, #352]
	mov r2, #0
	add r1, r8, r0, lsl #2
	str r2, [r8, r0, lsl #2]
	add r0, r0, #16
	str r2, [r1, #4]
	cmp r0, #80
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
	bge label137
	b label12
label137:
	movw r3, #57840
	movw r4, #21622
	movw r5, #56574
	movw r0, #43913
	str r3, [sp, #368]
	movw r2, #8961
	mov r1, #0
	movt r0, #61389
	movt r3, #50130
	movt r2, #26437
	str r3, [sp, #368]
	str r4, [sp, #320]
	movt r4, #4146
	str r4, [sp, #320]
	str r5, [sp, #372]
	movt r5, #39098
	str r5, [sp, #372]
	ldr r3, [sp, #344]
	cmp r3, r1
	ble label21
	b label140
label21:
	ldr r1, [sp, #324]
	add r1, r2, r1
	rsb r1, r1, #0
	str r1, [sp, #324]
	ldr r1, [sp, #348]
	ldr r2, [r1, #4]
	add r0, r0, r2
	rsb r0, r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	ldr r5, [sp, #372]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #12]
	ldr r4, [sp, #320]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r3, [sp, #368]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [r1, #16]
	ldr r0, [sp, #360]
	ldr r3, [sp, #364]
	subs r0, r0, #1
	str r0, [sp, #360]
	ble label41
	b label55
label140:
	mov r3, #0
label22:
	add r5, r1, r3, lsl #2
	ldr r6, [sp, #356]
	add r4, r6, r5, lsl #2
	ldr r5, [r6, r5, lsl #2]
	ldr r7, [r4, #4]
	lsl r7, r7, #16
	add r5, r7, r5, lsl #24
	ldr r7, [r4, #8]
	ldr r4, [r4, #12]
	ldr r8, [sp, #352]
	add r5, r5, r7, lsl #8
	add r5, r5, r4
	str r5, [r8, r3, lsl #2]
	add r4, r8, r3, lsl #2
	add r5, r3, #1
	add r7, r1, r5, lsl #2
	add r5, r6, r7, lsl #2
	ldr r7, [r6, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	ldr r5, [r5, #12]
	add r7, r7, r8, lsl #8
	add r5, r7, r5
	str r5, [r4, #4]
	add r5, r3, #2
	add r7, r1, r5, lsl #2
	add r5, r6, r7, lsl #2
	ldr r7, [r6, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	ldr r5, [r5, #12]
	add r7, r7, r8, lsl #8
	add r5, r7, r5
	str r5, [r4, #8]
	add r5, r3, #3
	add r3, r3, #4
	add r7, r1, r5, lsl #2
	cmp r3, #16
	add r5, r6, r7, lsl #2
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [r5, #4]
	lsl r7, r7, #16
	add r6, r7, r6, lsl #24
	ldr r7, [r5, #8]
	ldr r5, [r5, #12]
	add r6, r6, r7, lsl #8
	add r5, r6, r5
	str r5, [r4, #12]
	bge label242
	b label22
label242:
	mov r3, #16
label24:
	ldr r8, [sp, #352]
	add r4, r8, r3, lsl #2
	ldr r5, [r4, #-12]
	ldr r6, [r4, #-32]
	add r6, r5, r6
	ldr r5, [r4, #-56]
	ldr r7, [r4, #-64]
	add r6, r6, r7
	sub r6, r5, r6
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	sub r7, r6, r7, lsl #1
	add r6, r7, r6, lsl #1
	str r6, [r8, r3, lsl #2]
	add r3, r3, #4
	ldr r8, [r4, #-8]
	cmp r3, #80
	ldr r9, [r4, #-28]
	ldr r7, [r4, #-52]
	add r8, r8, r9
	add r6, r6, r7
	ldr r9, [r4, #-60]
	add r8, r8, r9
	sub r7, r7, r8
	add r8, r7, r7, lsr #31
	asr r8, r8, #1
	sub r8, r7, r8, lsl #1
	add r7, r8, r7, lsl #1
	str r7, [r4, #4]
	ldr r7, [r4, #-4]
	add r5, r5, r7
	ldr r7, [r4, #-24]
	add r5, r5, r7
	ldr r7, [r4, #-48]
	sub r5, r7, r5
	add r7, r5, r5, lsr #31
	asr r7, r7, #1
	sub r7, r5, r7, lsl #1
	add r5, r7, r5, lsl #1
	str r5, [r4, #8]
	ldr r5, [r4, #-20]
	add r5, r6, r5
	ldr r6, [r4, #-44]
	sub r5, r6, r5
	add r6, r5, r5, lsr #31
	asr r6, r6, #1
	sub r6, r5, r6, lsl #1
	add r5, r6, r5, lsl #1
	str r5, [r4, #12]
	bge label302
	b label24
label302:
	ldr r3, [sp, #368]
	mov r6, r2
	mov r7, #0
	ldr r4, [sp, #320]
	ldr r5, [sp, #372]
	mov r8, r3
	mov r3, r4
	mov r4, r5
	mov r5, r0
	cmp r7, #80
	bge label33
	cmp r7, #20
	bge label35
	b label436
label33:
	add r2, r2, r6
	add r0, r0, r5
	add r1, r1, #64
	ldr r5, [sp, #372]
	add r5, r5, r4
	ldr r4, [sp, #320]
	add r4, r4, r3
	ldr r3, [sp, #368]
	add r3, r3, r8
	str r3, [sp, #368]
	str r4, [sp, #320]
	str r5, [sp, #372]
	ldr r3, [sp, #344]
	cmp r3, r1
	ble label21
	b label140
label436:
	movw r9, #31129
	mov r10, #0
	movt r9, #23170
label38:
	add r8, r8, r6, lsl #5
	add r8, r9, r8
	asr r9, r6, #31
	add r8, r10, r8
	add r9, r6, r9, lsr #27
	asr r9, r9, #5
	sub r9, r6, r9, lsl #5
	add r9, r8, r9
	ldr r8, [sp, #352]
	ldr r8, [r8, r7, lsl #2]
	add r7, r7, #1
	add r9, r9, r8
	asr r8, r5, #31
	add r8, r5, r8, lsr #2
	asr r8, r8, #30
	sub r8, r5, r8, lsl #30
	add r10, r8, r5, lsl #30
	mov r5, r6
	mov r8, r3
	mov r6, r9
	mov r3, r4
	mov r4, r10
	cmp r7, #80
	bge label33
	cmp r7, #20
	bge label35
	b label436
label35:
	cmp r7, #40
	bge label36
	add r9, r4, r5
	sub r10, r9, r3
	movw r9, #60289
	movt r9, #28377
	b label38
label36:
	add r9, r4, r5
	cmp r7, #60
	mov r11, #0
	sub r9, r9, r3
	mov r10, r9
	movlt r10, r11
	movw r11, #49414
	movw r9, #48348
	movt r11, #51810
	movt r9, #36635
	movlt r11, r9
	mov r9, r11
	b label38
label9:
	mov r1, #0
	ldr r6, [sp, #356]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	sub r2, r1, r2, lsl #6
	cmp r2, #60
	beq label11
	mov r0, r1
	b label9
label11:
	ldr r6, [sp, #356]
	mov r2, #0
	add r3, r6, r1, lsl #2
	str r2, [r6, r1, lsl #2]
	mov r1, #125
	str r2, [r3, #4]
	str r1, [r3, #8]
	str r2, [r3, #12]
	add r3, r0, #5
	mov r0, r2
	str r3, [sp, #344]
	b label12
label41:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #348]
	bl putarray
	add sp, sp, #380
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
