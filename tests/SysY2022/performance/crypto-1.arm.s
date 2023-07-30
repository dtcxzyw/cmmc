.arch armv7ve
.data
.bss
.align 8
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
	add r1, sp, #328
	mov r7, sp
	str r7, [sp, #352]
	str r1, [sp, #356]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:buffer
	mov r3, r4
	str r0, [sp, #328]
	movt r6, #:upper16:buffer
	ldr r1, [sp, #356]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	movs r0, r5
	str r6, [sp, #360]
	str r5, [sp, #364]
	ble label41
label56:
	mov r0, #0
.p2align 4
label5:
	add r1, r3, r3, lsl #13
	movw r3, #8225
	asr r2, r1, #31
	movt r3, #4
	add r2, r1, r2, lsr #15
	asr r2, r2, #17
	add r1, r1, r2
	mul r2, r1, r3
	asr r4, r2, #31
	add r2, r2, r4, lsr #15
	asr r2, r2, #17
	mla r2, r1, r3, r2
	add r1, r1, r1, lsl #5
	mul r4, r2, r3
	asr r5, r4, #31
	add r4, r4, r5, lsr #15
	asr r4, r4, #17
	mla r4, r2, r3, r4
	add r2, r2, r2, lsl #5
	mul r5, r4, r3
	asr r6, r5, #31
	add r5, r5, r6, lsr #15
	asr r5, r5, #17
	mla r3, r4, r3, r5
	add r4, r4, r4, lsl #5
	add r3, r3, r3, lsl #5
	asr r5, r3, #31
	str r3, [sp, #368]
	add r5, r3, r5, lsr #24
	ldr r6, [sp, #360]
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
	add r0, r0, #4
	str r5, [r1, #0]
	cmp r0, #32000
	str r2, [r1, #4]
	str r4, [r1, #8]
	str r3, [r1, #12]
	blt label86
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
	mov r1, #0
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label95
	b label11
.p2align 4
label86:
	ldr r3, [sp, #368]
	b label5
.p2align 4
label9:
	mov r1, #0
	ldr r6, [sp, #360]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	beq label11
.p2align 4
label95:
	mov r0, r1
	b label9
.p2align 4
label11:
	ldr r6, [sp, #360]
	mov r2, #125
	movw r3, #21622
	movw r4, #56574
	movw r5, #43913
	add r1, r6, r1, lsl #2
	mov r6, #0
	str r6, [r1, #0]
	str r6, [r1, #4]
	str r2, [r1, #8]
	add r2, r0, #5
	str r6, [r1, #12]
	mov r0, r6
	movw r1, #8961
	str r2, [sp, #348]
	movt r1, #26437
	movw r2, #57840
	str r6, [sp, #0]
	ldr r7, [sp, #352]
	str r6, [r7, #4]
	str r6, [r7, #8]
	str r6, [r7, #12]
	str r6, [r7, #16]
	str r6, [r7, #20]
	str r6, [r7, #24]
	str r6, [r7, #28]
	str r6, [r7, #32]
	str r6, [r7, #36]
	str r6, [r7, #40]
	str r6, [r7, #44]
	str r6, [r7, #48]
	str r6, [r7, #52]
	str r6, [r7, #56]
	str r6, [r7, #60]
	str r6, [r7, #64]
	str r6, [r7, #68]
	str r6, [r7, #72]
	str r6, [r7, #76]
	str r6, [r7, #80]
	str r6, [r7, #84]
	str r6, [r7, #88]
	str r6, [r7, #92]
	str r6, [r7, #96]
	str r6, [r7, #100]
	str r6, [r7, #104]
	str r6, [r7, #108]
	str r6, [r7, #112]
	str r6, [r7, #116]
	str r6, [r7, #120]
	str r6, [r7, #124]
	str r6, [r7, #128]
	str r6, [r7, #132]
	str r6, [r7, #136]
	str r6, [r7, #140]
	str r6, [r7, #144]
	str r6, [r7, #148]
	str r6, [r7, #152]
	str r6, [r7, #156]
	str r6, [r7, #160]
	str r6, [r7, #164]
	str r6, [r7, #168]
	str r6, [r7, #172]
	str r6, [r7, #176]
	str r6, [r7, #180]
	str r6, [r7, #184]
	str r6, [r7, #188]
	str r6, [r7, #192]
	str r6, [r7, #196]
	str r6, [r7, #200]
	str r6, [r7, #204]
	str r6, [r7, #208]
	str r6, [r7, #212]
	str r6, [r7, #216]
	str r6, [r7, #220]
	str r6, [r7, #224]
	str r6, [r7, #228]
	str r6, [r7, #232]
	str r6, [r7, #236]
	str r6, [r7, #240]
	str r6, [r7, #244]
	str r6, [r7, #248]
	str r6, [r7, #252]
	str r6, [r7, #256]
	str r6, [r7, #260]
	str r6, [r7, #264]
	str r6, [r7, #268]
	str r6, [r7, #272]
	str r6, [r7, #276]
	str r6, [r7, #280]
	str r6, [r7, #284]
	str r6, [r7, #288]
	str r6, [r7, #292]
	str r6, [r7, #296]
	str r6, [r7, #300]
	str r6, [r7, #304]
	str r6, [r7, #308]
	str r6, [r7, #312]
	str r6, [r7, #316]
	str r2, [sp, #372]
	movt r2, #50130
	str r2, [sp, #372]
	str r3, [sp, #376]
	movt r3, #4146
	str r3, [sp, #376]
	str r4, [sp, #320]
	movt r4, #39098
	str r4, [sp, #320]
	str r5, [sp, #380]
	movt r5, #61389
	str r5, [sp, #380]
	ldr r2, [sp, #348]
	cmp r2, r6
	ble label40
.p2align 4
label19:
	add r2, r0, #4
	add r3, r0, #8
	add r4, r0, #12
	mov r5, #0
	mov r8, r5
	b label20
.p2align 4
label40:
	ldr r0, [sp, #328]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #328]
	ldr r1, [sp, #356]
	ldr r0, [r1, #4]
	ldr r5, [sp, #380]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	ldr r4, [sp, #320]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #12]
	ldr r3, [sp, #376]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [r1, #12]
	ldr r0, [r1, #16]
	ldr r2, [sp, #372]
	add r0, r2, r0
	rsb r0, r0, #0
	str r0, [r1, #16]
	ldr r0, [sp, #364]
	ldr r3, [sp, #368]
	subs r0, r0, #1
	str r0, [sp, #364]
	bgt label56
label41:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r1, [sp, #356]
	bl putarray
	add sp, sp, #388
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label20:
	add r7, r0, r5
	ldr r6, [sp, #360]
	add r7, r6, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r7, #4]
	lsl r10, r10, #16
	add r9, r10, r9, lsl #24
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	add r9, r9, r10, lsl #8
	add r9, r9, r7
	ldr r7, [sp, #352]
	add r7, r7, r8, lsl #2
	add r8, r8, #4
	str r9, [r7, #0]
	cmp r8, #16
	add r9, r2, r5
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r9, #4]
	lsl r11, r11, #16
	add r10, r11, r10, lsl #24
	ldr r11, [r9, #8]
	ldr r9, [r9, #12]
	add r10, r10, r11, lsl #8
	add r9, r10, r9
	str r9, [r7, #4]
	add r9, r3, r5
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r9, #4]
	lsl r11, r11, #16
	add r10, r11, r10, lsl #24
	ldr r11, [r9, #8]
	ldr r9, [r9, #12]
	add r10, r10, r11, lsl #8
	add r9, r10, r9
	str r9, [r7, #8]
	add r9, r4, r5
	add r5, r5, #16
	add r6, r6, r9, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r6, #4]
	lsl r10, r10, #16
	add r9, r10, r9, lsl #24
	ldr r10, [r6, #8]
	ldr r6, [r6, #12]
	add r9, r9, r10, lsl #8
	add r6, r9, r6
	str r6, [r7, #12]
	blt label20
	mov r2, #16
.p2align 4
label23:
	ldr r7, [sp, #352]
	add r3, r7, r2, lsl #2
	add r2, r2, #4
	ldr r4, [r3, #-12]
	cmp r2, #80
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
	str r5, [r3, #0]
	ldr r7, [r3, #-8]
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
	blt label23
	ldr r2, [sp, #372]
	mov r6, #0
	ldr r3, [sp, #376]
	ldr r4, [sp, #320]
	ldr r5, [sp, #380]
	mov r7, r2
	mov r2, r3
	mov r3, r4
	mov r4, r5
	mov r5, r1
	cmp r6, #80
	blt label33
.p2align 4
label32:
	add r1, r1, r5
	add r0, r0, #64
	ldr r5, [sp, #380]
	add r5, r5, r4
	ldr r4, [sp, #320]
	add r4, r4, r3
	ldr r3, [sp, #376]
	add r3, r3, r2
	ldr r2, [sp, #372]
	add r2, r2, r7
	str r2, [sp, #372]
	str r3, [sp, #376]
	str r4, [sp, #320]
	str r5, [sp, #380]
	ldr r2, [sp, #348]
	cmp r2, r0
	bgt label19
	b label40
.p2align 4
label33:
	cmp r6, #20
	blt label336
	cmp r6, #40
	blt label340
	b label35
.p2align 4
label336:
	movw r8, #31129
	mov r9, #0
	movt r8, #23170
	b label37
.p2align 4
label340:
	add r8, r3, r4
	sub r9, r8, r2
	movw r8, #60289
	movt r8, #28377
.p2align 4
label37:
	add r7, r7, r5, lsl #5
	add r7, r8, r7
	asr r8, r5, #31
	add r7, r9, r7
	add r8, r5, r8, lsr #27
	asr r8, r8, #5
	sub r8, r5, r8, lsl #5
	add r8, r7, r8
	ldr r7, [sp, #352]
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
	blt label33
	b label32
.p2align 4
label35:
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
	b label37
