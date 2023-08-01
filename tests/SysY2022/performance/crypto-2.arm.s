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
	sub sp, sp, #436
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r3, r4
	mov r0, #0
	str r0, [sp, #368]
	str r0, [sp, #372]
	str r0, [sp, #376]
	str r0, [sp, #380]
	str r0, [sp, #384]
	movw r0, #:lower16:buffer
	movt r0, #:upper16:buffer
	str r0, [sp, #392]
	str r5, [sp, #388]
	movs r0, r5
	ble label39
.p2align 4
label54:
	mov r8, #0
	str r8, [sp, #12]
.p2align 4
label5:
	add r0, r3, r3, lsl #13
	movw r3, #8225
	asr r1, r0, #31
	movt r3, #4
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r0, r0, r1
	mul r1, r0, r3
	asr r2, r1, #31
	add r1, r1, r2, lsr #15
	asr r1, r1, #17
	mla r1, r0, r3, r1
	add r0, r0, r0, lsl #5
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
	mla r6, r4, r3, r5
	add r4, r4, r4, lsl #5
	mul r5, r6, r3
	asr r7, r5, #31
	add r5, r5, r7, lsr #15
	asr r5, r5, #17
	mla r7, r6, r3, r5
	add r6, r6, r6, lsl #5
	mul r5, r7, r3
	asr r8, r5, #31
	add r5, r5, r8, lsr #15
	asr r5, r5, #17
	mla r5, r7, r3, r5
	add r7, r7, r7, lsl #5
	mul r8, r5, r3
	asr r9, r8, #31
	add r8, r8, r9, lsr #15
	asr r8, r8, #17
	mla r3, r5, r3, r8
	add r5, r5, r5, lsl #5
	add r3, r3, r3, lsl #5
	asr r8, r3, #31
	str r3, [sp, #396]
	add r8, r3, r8, lsr #24
	asr r8, r8, #8
	sub r3, r3, r8, lsl #8
	asr r8, r5, #31
	add r8, r5, r8, lsr #24
	asr r8, r8, #8
	sub r5, r5, r8, lsl #8
	asr r8, r7, #31
	add r8, r7, r8, lsr #24
	asr r8, r8, #8
	sub r7, r7, r8, lsl #8
	asr r8, r6, #31
	add r8, r6, r8, lsr #24
	asr r8, r8, #8
	sub r6, r6, r8, lsl #8
	asr r8, r4, #31
	add r8, r4, r8, lsr #24
	asr r8, r8, #8
	sub r4, r4, r8, lsl #8
	asr r8, r2, #31
	add r8, r2, r8, lsr #24
	asr r8, r8, #8
	sub r2, r2, r8, lsl #8
	asr r8, r1, #31
	add r8, r1, r8, lsr #24
	asr r8, r8, #8
	sub r1, r1, r8, lsl #8
	asr r8, r0, #31
	add r8, r0, r8, lsr #24
	asr r8, r8, #8
	sub r9, r0, r8, lsl #8
	ldr r0, [sp, #392]
	ldr r8, [sp, #12]
	add r0, r0, r8, lsl #2
	str r9, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r4, [r0, #12]
	str r6, [r0, #16]
	str r7, [r0, #20]
	str r5, [r0, #24]
	str r3, [r0, #28]
	add r0, r8, #8
	cmp r0, #32000
	bge label107
	ldr r3, [sp, #396]
	mov r8, r0
	str r0, [sp, #12]
	b label5
.p2align 4
label19:
	ldr r0, [sp, #368]
	ldr r6, [sp, #424]
	add r0, r6, r0
	rsb r0, r0, #0
	str r0, [sp, #368]
	ldr r0, [sp, #372]
	ldr r6, [sp, #412]
	add r0, r6, r0
	rsb r0, r0, #0
	str r0, [sp, #372]
	ldr r0, [sp, #376]
	ldr r6, [sp, #408]
	add r0, r6, r0
	rsb r0, r0, #0
	str r0, [sp, #376]
	ldr r0, [sp, #380]
	ldr r6, [sp, #404]
	add r0, r6, r0
	rsb r0, r0, #0
	str r0, [sp, #380]
	ldr r0, [sp, #384]
	ldr r6, [sp, #400]
	add r0, r6, r0
	rsb r0, r0, #0
	str r0, [sp, #384]
	ldr r0, [sp, #388]
	ldr r3, [sp, #396]
	subs r0, r0, #1
	str r0, [sp, #388]
	bgt label54
	b label39
.p2align 4
label107:
	ldr r0, [sp, #392]
	mov r1, #128
	add r0, r0, #128000
	str r1, [r0, #0]
	movw r1, #32001
	mov r2, #0
	ldr r0, [sp, #392]
	str r2, [r0, r1, lsl #2]
	add r2, r1, #1
	and r0, r2, #63
	cmp r0, #60
	bne label117
	b label11
.p2align 4
label9:
	mov r2, #0
	ldr r0, [sp, #392]
	str r2, [r0, r1, lsl #2]
	add r2, r1, #1
	and r0, r2, #63
	cmp r0, #60
	beq label11
.p2align 4
label117:
	mov r1, r2
	b label9
.p2align 4
label11:
	ldr r0, [sp, #392]
	mov r3, #125
	add r1, r1, #5
	movw r6, #57840
	add r2, r0, r2, lsl #2
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r3, [r2, #8]
	str r0, [r2, #12]
	str r1, [sp, #416]
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	str r0, [sp, #96]
	str r0, [sp, #100]
	str r0, [sp, #104]
	str r0, [sp, #108]
	str r0, [sp, #112]
	str r0, [sp, #116]
	str r0, [sp, #120]
	str r0, [sp, #124]
	str r0, [sp, #128]
	str r0, [sp, #132]
	str r0, [sp, #136]
	str r0, [sp, #140]
	str r0, [sp, #144]
	str r0, [sp, #148]
	str r0, [sp, #152]
	str r0, [sp, #156]
	str r0, [sp, #160]
	str r0, [sp, #164]
	str r0, [sp, #168]
	str r0, [sp, #172]
	str r0, [sp, #176]
	str r0, [sp, #180]
	str r0, [sp, #184]
	str r0, [sp, #188]
	str r0, [sp, #192]
	str r0, [sp, #196]
	str r0, [sp, #200]
	str r0, [sp, #204]
	str r0, [sp, #208]
	str r0, [sp, #212]
	str r0, [sp, #216]
	str r0, [sp, #220]
	str r0, [sp, #224]
	str r0, [sp, #228]
	str r0, [sp, #232]
	str r0, [sp, #236]
	str r0, [sp, #240]
	str r0, [sp, #244]
	str r0, [sp, #248]
	str r0, [sp, #252]
	str r0, [sp, #256]
	str r0, [sp, #260]
	str r0, [sp, #264]
	str r0, [sp, #268]
	str r0, [sp, #272]
	str r0, [sp, #276]
	str r0, [sp, #280]
	str r0, [sp, #284]
	str r0, [sp, #288]
	str r0, [sp, #292]
	str r0, [sp, #296]
	str r0, [sp, #300]
	str r0, [sp, #304]
	str r0, [sp, #308]
	str r0, [sp, #312]
	str r0, [sp, #316]
	str r0, [sp, #320]
	str r0, [sp, #324]
	str r0, [sp, #328]
	str r0, [sp, #332]
	str r0, [sp, #336]
	str r0, [sp, #340]
	str r0, [sp, #344]
	str r0, [sp, #348]
	str r0, [sp, #352]
	str r0, [sp, #356]
	str r0, [sp, #360]
	str r0, [sp, #364]
	str r6, [sp, #400]
	movt r6, #50130
	str r6, [sp, #400]
	movw r6, #21622
	str r6, [sp, #404]
	movt r6, #4146
	str r6, [sp, #404]
	movw r6, #56574
	str r6, [sp, #408]
	movt r6, #39098
	str r6, [sp, #408]
	movw r6, #43913
	str r6, [sp, #412]
	movt r6, #61389
	str r6, [sp, #412]
	movw r6, #8961
	str r6, [sp, #424]
	movt r6, #26437
	str r6, [sp, #424]
	str r0, [sp, #420]
	cmp r1, r0
	ble label19
.p2align 4
label20:
	ldr r0, [sp, #420]
	mov r1, #0
	add r2, r0, #4
	str r2, [sp, #24]
	add r2, r0, #8
	str r2, [sp, #28]
	add r2, r0, #12
	str r2, [sp, #32]
	add r2, r0, #16
	str r2, [sp, #36]
	add r2, r0, #20
	str r2, [sp, #40]
	add r2, r0, #24
	str r2, [sp, #44]
	add r2, r0, #28
	str r2, [sp, #428]
	str r1, [sp, #20]
	str r1, [sp, #16]
.p2align 4
label21:
	ldr r0, [sp, #420]
	add r6, sp, #48
	ldr r1, [sp, #20]
	add r1, r0, r1
	ldr r0, [sp, #392]
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #16]
	add r1, r6, r1, lsl #2
	str r1, [sp, #8]
	str r2, [r1, #0]
	ldr r2, [sp, #24]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #4]
	ldr r2, [sp, #28]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #8]
	ldr r2, [sp, #32]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #36]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #16]
	ldr r2, [sp, #40]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #20]
	ldr r2, [sp, #44]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r1, r0, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [r1, #4]
	lsl r3, r3, #16
	add r2, r3, r2, lsl #24
	ldr r3, [r1, #8]
	ldr r1, [r1, #12]
	add r2, r2, r3, lsl #8
	add r2, r2, r1
	ldr r1, [sp, #8]
	str r2, [r1, #24]
	ldr r2, [sp, #428]
	ldr r1, [sp, #20]
	add r1, r2, r1
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	lsl r2, r2, #16
	add r1, r2, r1, lsl #24
	ldr r2, [r0, #8]
	ldr r0, [r0, #12]
	add r1, r1, r2, lsl #8
	add r0, r1, r0
	ldr r1, [sp, #8]
	str r0, [r1, #28]
	ldr r1, [sp, #16]
	add r0, r1, #8
	cmp r0, #16
	ldr r1, [sp, #20]
	add r1, r1, #32
	bge label375
	str r1, [sp, #20]
	str r0, [sp, #16]
	mov r1, r0
	b label21
.p2align 4
label375:
	mov r0, #16
	str r0, [sp, #4]
.p2align 4
label24:
	add r6, sp, #48
	ldr r0, [sp, #4]
	add r8, r6, r0, lsl #2
	str r8, [sp, #0]
	ldr r0, [r8, #-12]
	ldr r2, [r8, #-32]
	ldr r5, [r8, #-56]
	ldr r3, [r8, #-64]
	add r1, r0, r2
	add r1, r1, r3
	sub r1, r5, r1
	add r3, r1, r1, lsr #31
	asr r3, r3, #1
	sub r3, r1, r3, lsl #1
	add r3, r3, r1, lsl #1
	str r3, [r8, #0]
	ldr r6, [r8, #-8]
	ldr r1, [r8, #-28]
	ldr r4, [r8, #-52]
	ldr r7, [r8, #-60]
	add r10, r3, r4
	add r3, r6, r1
	add r3, r3, r7
	sub r3, r4, r3
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	sub r4, r3, r4, lsl #1
	add r4, r4, r3, lsl #1
	str r4, [r8, #4]
	ldr r3, [r8, #-4]
	ldr r7, [r8, #-24]
	ldr r9, [r8, #-48]
	add r5, r5, r3
	add r5, r5, r7
	add r4, r4, r9
	sub r5, r9, r5
	add r0, r0, r5, lsl #1
	add r7, r5, r5, lsr #31
	asr r7, r7, #1
	sub r7, r5, r7, lsl #1
	add r0, r7, r0
	add r11, r7, r5, lsl #1
	str r11, [r8, #8]
	ldr r8, [r8, #-20]
	add r11, r10, r8
	ldr r8, [sp, #0]
	ldr r10, [r8, #-44]
	add r5, r10, r0
	sub r8, r10, r11
	add r11, r6, r8, lsl #1
	add r6, r8, r8, lsr #31
	asr r6, r6, #1
	sub r6, r8, r6, lsl #1
	add r11, r11, r6
	add r6, r6, r8, lsl #1
	ldr r8, [sp, #0]
	str r6, [r8, #12]
	ldr r6, [r8, #-16]
	ldr r8, [r8, #-40]
	add r4, r6, r4
	add r11, r11, r8
	sub r4, r8, r4
	sub r2, r2, r11
	ldr r8, [sp, #0]
	add r6, r4, r4, lsr #31
	add r11, r2, r2, lsr #31
	asr r6, r6, #1
	asr r11, r11, #1
	sub r6, r4, r6, lsl #1
	sub r11, r2, r11, lsl #1
	add r9, r6, r4, lsl #1
	add r2, r11, r2, lsl #1
	str r9, [r8, #16]
	ldr r0, [r8, #-36]
	sub r5, r0, r5
	add r7, r5, r5, lsr #31
	asr r7, r7, #1
	sub r7, r5, r7, lsl #1
	add r5, r7, r5, lsl #1
	str r5, [r8, #20]
	str r2, [r8, #24]
	add r2, r3, r4, lsl #1
	add r2, r6, r2
	add r0, r0, r2
	sub r0, r1, r0
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	sub r1, r0, r1, lsl #1
	add r0, r1, r0, lsl #1
	str r0, [r8, #28]
	ldr r0, [sp, #4]
	add r0, r0, #8
	cmp r0, #80
	bge label472
	str r0, [sp, #4]
	b label24
.p2align 4
label472:
	ldr r6, [sp, #400]
	mov r0, #0
	mov r5, r6
	ldr r6, [sp, #404]
	mov r4, r6
	ldr r6, [sp, #408]
	mov r1, r6
	ldr r6, [sp, #412]
	mov r3, r6
	ldr r6, [sp, #424]
	mov r2, r6
	cmp r0, #80
	blt label34
.p2align 4
label33:
	ldr r6, [sp, #424]
	add r2, r6, r2
	ldr r6, [sp, #412]
	add r3, r6, r3
	ldr r6, [sp, #408]
	add r1, r6, r1
	ldr r6, [sp, #404]
	add r4, r6, r4
	ldr r6, [sp, #400]
	ldr r0, [sp, #420]
	add r6, r6, r5
	add r0, r0, #64
	str r6, [sp, #400]
	str r4, [sp, #404]
	mov r6, r4
	str r1, [sp, #408]
	mov r6, r1
	str r3, [sp, #412]
	mov r6, r3
	str r2, [sp, #424]
	mov r6, r2
	str r0, [sp, #420]
	ldr r1, [sp, #416]
	cmp r1, r0
	bgt label20
	b label19
.p2align 4
label34:
	cmp r0, #20
	blt label487
	add r6, r1, r3
	cmp r0, #60
	mov r8, #0
	sub r7, r6, r4
	mov r6, r7
	movlt r6, r8
	movw r8, #49414
	cmp r0, #40
	movt r8, #51810
	movlt r6, r7
	cmp r0, #60
	movw r7, #48348
	movt r7, #36635
	movlt r8, r7
	cmp r0, #40
	movw r7, #60289
	movt r7, #28377
	movlt r8, r7
	mov r7, r8
.p2align 4
label36:
	add r5, r5, r2, lsl #5
	add r5, r7, r5
	add r5, r6, r5
	asr r6, r2, #31
	add r6, r2, r6, lsr #27
	asr r6, r6, #5
	sub r6, r2, r6, lsl #5
	add r5, r5, r6
	add r6, sp, #48
	ldr r6, [r6, r0, lsl #2]
	add r0, r0, #1
	add r6, r5, r6
	asr r5, r3, #31
	add r5, r3, r5, lsr #2
	asr r5, r5, #30
	sub r5, r3, r5, lsl #30
	add r7, r5, r3, lsl #30
	mov r3, r2
	mov r5, r4
	mov r2, r6
	mov r4, r1
	mov r1, r7
	cmp r0, #80
	blt label34
	b label33
label39:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	add r1, sp, #368
	bl putarray
	add sp, sp, #436
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label487:
	movw r7, #31129
	mov r6, #0
	movt r7, #23170
	b label36
