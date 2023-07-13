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
	mov r0, #0
	mov r3, r4
	movw r6, #:lower16:buffer
	str r0, [sp, #324]
	movt r6, #:upper16:buffer
	ldr r1, [sp, #348]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	mov r0, r5
	str r6, [sp, #356]
	str r5, [sp, #320]
	cmp r5, #0
	ble label5
label58:
	mov r0, #0
label6:
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
	str r3, [sp, #360]
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
	bge label9
	ldr r3, [sp, #360]
	b label6
label13:
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
	bge label140
	b label13
label140:
	movw r3, #57840
	movw r4, #21622
	movw r5, #56574
	movw r0, #43913
	str r3, [sp, #344]
	movw r2, #8961
	mov r1, #0
	movt r0, #61389
	movt r3, #50130
	movt r2, #26437
	str r3, [sp, #344]
	str r4, [sp, #364]
	movt r4, #4146
	str r4, [sp, #364]
	str r5, [sp, #368]
	movt r5, #39098
	str r5, [sp, #368]
	ldr r3, [sp, #372]
	cmp r3, r1
	ble label22
	b label143
label22:
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
	ldr r5, [sp, #368]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #12]
	ldr r4, [sp, #364]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r3, [sp, #344]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [r1, #16]
	ldr r0, [sp, #320]
	ldr r3, [sp, #360]
	sub r0, r0, #1
	str r0, [sp, #320]
	cmp r0, #0
	ble label5
	b label58
label143:
	mov r3, #0
	b label23
label27:
	ldr r8, [sp, #352]
	add r3, r8, r7, lsl #2
	ldr r4, [r3, #-12]
	ldr r5, [r3, #-32]
	add r4, r4, r5
	ldr r5, [r3, #-56]
	ldr r3, [r3, #-64]
	sub r4, r4, r5
	add r3, r4, r3
	rsb r3, r3, #0
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	sub r4, r3, r4, lsl #1
	add r3, r4, r3, lsl #1
	str r3, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #80
	bge label272
	b label27
label272:
	ldr r3, [sp, #344]
	mov r6, r2
	mov r7, #0
	ldr r4, [sp, #364]
	ldr r5, [sp, #368]
	mov r8, r3
	mov r3, r4
	mov r4, r5
	mov r5, r0
	cmp r7, #80
	bge label36
	cmp r7, #20
	bge label38
	b label468
label36:
	add r2, r2, r6
	add r0, r0, r5
	add r1, r1, #64
	ldr r5, [sp, #368]
	add r5, r5, r4
	ldr r4, [sp, #364]
	add r4, r4, r3
	ldr r3, [sp, #344]
	add r3, r3, r8
	str r3, [sp, #344]
	str r4, [sp, #364]
	str r5, [sp, #368]
	ldr r3, [sp, #372]
	cmp r3, r1
	ble label22
	b label143
label468:
	movw r9, #31129
	mov r10, #0
	movt r9, #23170
label41:
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
	bge label36
	cmp r7, #20
	bge label38
	b label468
label38:
	cmp r7, #40
	bge label39
	add r9, r4, r5
	sub r10, r9, r3
	movw r9, #60289
	movt r9, #28377
	b label41
label39:
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
	b label41
label23:
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
	add r7, r1, r5, lsl #2
	add r5, r6, r7, lsl #2
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [r5, #4]
	lsl r7, r7, #16
	add r6, r7, r6, lsl #24
	ldr r7, [r5, #8]
	ldr r5, [r5, #12]
	add r6, r6, r7, lsl #8
	add r7, r3, #4
	add r5, r6, r5
	cmp r7, #16
	str r5, [r4, #12]
	bge label25
	mov r3, r7
	b label23
label25:
	add r3, r7, #4
	cmp r3, #80
	bge label27
label44:
	ldr r8, [sp, #352]
	add r4, r8, r7, lsl #2
	ldr r5, [r4, #-12]
	ldr r6, [r4, #-32]
	add r5, r5, r6
	ldr r6, [r4, #-56]
	ldr r9, [r4, #-64]
	sub r5, r5, r6
	add r5, r5, r9
	rsb r5, r5, #0
	add r9, r5, r5, lsr #31
	asr r9, r9, #1
	sub r9, r5, r9, lsl #1
	add r5, r9, r5, lsl #1
	str r5, [r8, r7, lsl #2]
	ldr r7, [r4, #-8]
	ldr r8, [r4, #-28]
	add r8, r7, r8
	ldr r7, [r4, #-52]
	ldr r9, [r4, #-60]
	sub r8, r8, r7
	add r8, r8, r9
	rsb r8, r8, #0
	add r9, r8, r8, lsr #31
	asr r9, r9, #1
	sub r9, r8, r9, lsl #1
	add r8, r9, r8, lsl #1
	str r8, [r4, #4]
	ldr r8, [r4, #-4]
	ldr r9, [r4, #-24]
	add r8, r8, r9
	ldr r9, [r4, #-48]
	sub r8, r8, r9
	add r6, r6, r8
	rsb r6, r6, #0
	add r8, r6, r6, lsr #31
	asr r8, r8, #1
	sub r8, r6, r8, lsl #1
	add r6, r8, r6, lsl #1
	str r6, [r4, #8]
	ldr r6, [r4, #-20]
	add r5, r5, r6
	ldr r6, [r4, #-44]
	sub r5, r5, r6
	add r5, r7, r5
	mov r7, r3
	rsb r5, r5, #0
	add r6, r5, r5, lsr #31
	asr r6, r6, #1
	sub r6, r5, r6, lsl #1
	add r5, r6, r5, lsl #1
	str r5, [r4, #12]
	add r3, r3, #4
	cmp r3, #80
	bge label27
	b label44
label9:
	ldr r6, [sp, #356]
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
label10:
	mov r1, #0
	ldr r6, [sp, #356]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	asr r2, r1, #31
	add r2, r1, r2, lsr #26
	asr r2, r2, #6
	sub r2, r1, r2, lsl #6
	cmp r2, #60
	beq label12
	mov r0, r1
	b label10
label12:
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
	str r3, [sp, #372]
	b label13
label5:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #348]
	bl putarray
	add sp, sp, #380
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
