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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #388
	add r1, sp, #324
	mov r7, sp
	str r7, [sp, #348]
	str r1, [sp, #352]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:buffer
	mov r3, r4
	str r0, [sp, #324]
	movt r6, #:upper16:buffer
	ldr r1, [sp, #352]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	movs r0, r5
	str r6, [sp, #320]
	str r5, [sp, #356]
	ble label43
label58:
	mov r0, #0
label5:
.p2align 4
	add r1, r3, r3, lsl #13
	asr r2, r1, #31
	add r2, r1, r2, lsr #15
	asr r2, r2, #17
	add r1, r1, r2
	add r1, r1, r1, lsl #5
	add r2, r1, r1, lsl #13
	asr r3, r2, #31
	add r3, r2, r3, lsr #15
	asr r3, r3, #17
	add r2, r2, r3
	add r2, r2, r2, lsl #5
	add r3, r2, r2, lsl #13
	asr r4, r3, #31
	add r4, r3, r4, lsr #15
	asr r4, r4, #17
	add r3, r3, r4
	add r4, r3, r3, lsl #5
	add r3, r4, r4, lsl #13
	asr r5, r3, #31
	add r5, r3, r5, lsr #15
	asr r5, r5, #17
	add r3, r3, r5
	add r3, r3, r3, lsl #5
	asr r5, r3, #31
	str r3, [sp, #344]
	add r5, r3, r5, lsr #24
	ldr r6, [sp, #320]
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
	blt label102
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
	mov r1, #0
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label111
	b label11
label102:
.p2align 4
	ldr r3, [sp, #344]
	b label5
label111:
.p2align 4
	mov r0, r1
	b label9
label11:
.p2align 4
	ldr r6, [sp, #320]
	mov r3, #0
	add r2, r6, r1, lsl #2
	str r3, [r6, r1, lsl #2]
	mov r1, #125
	str r3, [r2, #4]
	str r1, [r2, #8]
	str r3, [r2, #12]
	add r2, r0, #5
	mov r0, r3
	str r2, [sp, #372]
	b label12
label43:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #352]
	bl putarray
	add sp, sp, #388
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label12:
.p2align 4
	ldr r7, [sp, #348]
	mov r2, #0
	add r1, r7, r0, lsl #2
	str r2, [r7, r0, lsl #2]
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
	blt label12
	movw r2, #57840
	movw r3, #21622
	movw r4, #56574
	movw r5, #43913
	str r2, [sp, #360]
	movw r1, #8961
	mov r0, #0
	movt r2, #50130
	movt r1, #26437
	str r2, [sp, #360]
	str r3, [sp, #364]
	movt r3, #4146
	str r3, [sp, #364]
	str r4, [sp, #368]
	movt r4, #39098
	str r4, [sp, #368]
	str r5, [sp, #376]
	movt r5, #61389
	str r5, [sp, #376]
	ldr r2, [sp, #372]
	cmp r2, r0
	bgt label143
label21:
.p2align 4
	ldr r0, [sp, #324]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #324]
	ldr r1, [sp, #352]
	ldr r0, [r1, #4]
	ldr r5, [sp, #376]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	ldr r4, [sp, #368]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #12]
	ldr r3, [sp, #364]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r2, [sp, #360]
	add r0, r2, r0
	rsb r0, r0, #0
	str r0, [r1, #16]
	ldr r0, [sp, #356]
	ldr r3, [sp, #344]
	subs r0, r0, #1
	str r0, [sp, #356]
	bgt label58
	b label43
label35:
.p2align 4
	cmp r6, #20
	blt label309
	cmp r6, #40
	blt label313
	b label37
label309:
.p2align 4
	movw r8, #31129
	mov r9, #0
	movt r8, #23170
	b label39
label313:
.p2align 4
	add r8, r3, r4
	sub r9, r8, r2
	movw r8, #60289
	movt r8, #28377
	b label39
label37:
.p2align 4
	add r8, r3, r4
	cmp r6, #60
	mov r10, #0
	sub r8, r8, r2
	mov r9, r8
	movlt r9, r10
	movw r10, #49414
	movw r8, #48348
	movt r10, #51810
	movt r8, #36635
	movlt r10, r8
	mov r8, r10
label39:
.p2align 4
	add r7, r7, r5, lsl #5
	add r7, r8, r7
	asr r8, r5, #31
	add r7, r9, r7
	add r8, r5, r8, lsr #27
	asr r8, r8, #5
	sub r8, r5, r8, lsl #5
	add r8, r7, r8
	ldr r7, [sp, #348]
	ldr r7, [r7, r6, lsl #2]
	add r6, r6, #1
	add r8, r8, r7
	asr r7, r4, #31
	add r7, r4, r7, lsr #2
	asr r7, r7, #30
	sub r7, r4, r7, lsl #30
	add r9, r7, r4, lsl #30
	mov r4, r5
	mov r7, r2
	mov r5, r8
	mov r2, r3
	mov r3, r9
	cmp r6, #80
	blt label35
label42:
.p2align 4
	add r1, r1, r5
	add r0, r0, #64
	ldr r5, [sp, #376]
	add r5, r5, r4
	ldr r4, [sp, #368]
	add r4, r4, r3
	ldr r3, [sp, #364]
	add r3, r3, r2
	ldr r2, [sp, #360]
	add r2, r2, r7
	str r2, [sp, #360]
	str r3, [sp, #364]
	str r4, [sp, #368]
	str r5, [sp, #376]
	ldr r2, [sp, #372]
	cmp r2, r0
	ble label21
label143:
.p2align 4
	add r2, r0, #4
	add r3, r0, #8
	add r4, r0, #12
	mov r5, #0
	mov r8, r5
label23:
.p2align 4
	add r9, r0, r5
	ldr r6, [sp, #320]
	add r7, r6, r9, lsl #2
	ldr r9, [r6, r9, lsl #2]
	ldr r10, [r7, #4]
	lsl r10, r10, #16
	add r9, r10, r9, lsl #24
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	add r9, r9, r10, lsl #8
	add r10, r9, r7
	ldr r7, [sp, #348]
	str r10, [r7, r8, lsl #2]
	add r9, r7, r8, lsl #2
	add r10, r2, r5
	add r8, r8, #4
	add r7, r6, r10, lsl #2
	cmp r8, #16
	ldr r10, [r6, r10, lsl #2]
	ldr r11, [r7, #4]
	lsl r11, r11, #16
	add r10, r11, r10, lsl #24
	ldr r11, [r7, #8]
	ldr r7, [r7, #12]
	add r10, r10, r11, lsl #8
	add r7, r10, r7
	add r10, r3, r5
	str r7, [r9, #4]
	add r7, r6, r10, lsl #2
	ldr r10, [r6, r10, lsl #2]
	ldr r11, [r7, #4]
	lsl r11, r11, #16
	add r10, r11, r10, lsl #24
	ldr r11, [r7, #8]
	ldr r7, [r7, #12]
	add r10, r10, r11, lsl #8
	add r7, r10, r7
	add r10, r4, r5
	str r7, [r9, #8]
	add r5, r5, #16
	add r7, r6, r10, lsl #2
	ldr r6, [r6, r10, lsl #2]
	ldr r10, [r7, #4]
	lsl r10, r10, #16
	add r6, r10, r6, lsl #24
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	add r6, r6, r10, lsl #8
	add r6, r6, r7
	str r6, [r9, #12]
	blt label23
	mov r2, #16
label26:
.p2align 4
	ldr r7, [sp, #348]
	add r3, r7, r2, lsl #2
	ldr r4, [r3, #-12]
	ldr r5, [r3, #-32]
	add r5, r4, r5
	ldr r4, [r3, #-56]
	ldr r6, [r3, #-64]
	add r5, r5, r6
	sub r5, r4, r5
	add r6, r5, r5, lsr #31
	asr r6, r6, #1
	sub r6, r5, r6, lsl #1
	add r5, r6, r5, lsl #1
	str r5, [r7, r2, lsl #2]
	add r2, r2, #4
	ldr r7, [r3, #-8]
	cmp r2, #80
	ldr r8, [r3, #-28]
	ldr r6, [r3, #-52]
	add r7, r7, r8
	add r5, r5, r6
	ldr r8, [r3, #-60]
	add r7, r7, r8
	sub r6, r6, r7
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	sub r7, r6, r7, lsl #1
	add r6, r7, r6, lsl #1
	str r6, [r3, #4]
	ldr r6, [r3, #-4]
	add r4, r4, r6
	ldr r6, [r3, #-24]
	add r4, r4, r6
	ldr r6, [r3, #-48]
	sub r4, r6, r4
	add r6, r4, r4, lsr #31
	asr r6, r6, #1
	sub r6, r4, r6, lsl #1
	add r4, r6, r4, lsl #1
	str r4, [r3, #8]
	ldr r4, [r3, #-20]
	add r4, r5, r4
	ldr r5, [r3, #-44]
	sub r4, r5, r4
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	sub r5, r4, r5, lsl #1
	add r4, r5, r4, lsl #1
	str r4, [r3, #12]
	blt label26
	ldr r2, [sp, #360]
	mov r6, #0
	ldr r3, [sp, #364]
	ldr r4, [sp, #368]
	ldr r5, [sp, #376]
	mov r7, r2
	mov r2, r3
	mov r3, r4
	mov r4, r5
	mov r5, r1
	cmp r6, #80
	blt label35
	b label42
label9:
.p2align 4
	mov r1, #0
	ldr r6, [sp, #320]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label111
	b label11
