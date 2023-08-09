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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #380
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	movs r0, r5
	mov r9, #0
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r5, [sp, #20]
	bgt label5
	b label51
.p2align 4
label49:
	ldr r0, [sp, #32]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #32]
	ldr r0, [sp, #36]
	ldr r7, [sp, #24]
	add r0, r7, r0
	rsb r0, r0, #0
	str r0, [sp, #36]
	ldr r0, [sp, #40]
	ldr r8, [sp, #52]
	add r0, r8, r0
	rsb r0, r0, #0
	str r0, [sp, #40]
	ldr r0, [sp, #44]
	ldr r8, [sp, #8]
	add r0, r8, r0
	rsb r0, r0, #0
	str r0, [sp, #44]
	ldr r0, [sp, #48]
	ldr r8, [sp, #12]
	add r0, r8, r0
	rsb r0, r0, #0
	str r0, [sp, #48]
	ldr r0, [sp, #20]
	ldr r4, [sp, #16]
	subs r0, r0, #1
	str r0, [sp, #20]
	ble label51
.p2align 4
label5:
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	mov r9, #0
	mov r0, r5
	mov r1, r9
	b label6
.p2align 4
label50:
	add r0, r0, #16
	ldr r4, [sp, #16]
.p2align 4
label6:
	add r2, r4, r4, lsl #13
	add r1, r1, #4
	movw r4, #8225
	movt r4, #4
	cmp r1, #32000
	asr r3, r2, #31
	add r3, r2, r3, lsr #15
	asr r3, r3, #17
	add r2, r2, r3
	mul r3, r2, r4
	asr r5, r3, #31
	add r3, r3, r5, lsr #15
	asr r3, r3, #17
	mla r3, r2, r4, r3
	add r2, r2, r2, lsl #5
	mul r5, r3, r4
	asr r6, r5, #31
	add r5, r5, r6, lsr #15
	asr r5, r5, #17
	mla r5, r3, r4, r5
	add r3, r3, r3, lsl #5
	mul r6, r5, r4
	asr r7, r6, #31
	add r6, r6, r7, lsr #15
	asr r6, r6, #17
	mla r4, r5, r4, r6
	add r5, r5, r5, lsl #5
	add r4, r4, r4, lsl #5
	asr r6, r4, #31
	str r4, [sp, #16]
	add r6, r4, r6, lsr #24
	asr r6, r6, #8
	sub r4, r4, r6, lsl #8
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	sub r5, r5, r6, lsl #8
	asr r6, r3, #31
	add r6, r3, r6, lsr #24
	asr r6, r6, #8
	sub r3, r3, r6, lsl #8
	asr r6, r2, #31
	add r6, r2, r6, lsr #24
	asr r6, r6, #8
	sub r2, r2, r6, lsl #8
	str r2, [r0, #0]
	str r3, [r0, #4]
	str r5, [r0, #8]
	str r4, [r0, #12]
	blt label50
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	mov r1, #128
	add r0, r5, #128000
	str r1, [r0, #0]
	movw r1, #32001
	movw r0, #62468
	movt r0, #1
	add r0, r5, r0
	b label11
.p2align 4
label14:
	add r0, r0, #4
	mov r1, r2
.p2align 4
label11:
	mov r9, #0
	add r2, r1, #1
	str r9, [r0, #0]
	and r3, r2, #63
	cmp r3, #60
	bne label14
	movw r5, #:lower16:buffer
	movt r5, #:upper16:buffer
	movw r8, #57840
	movt r8, #50130
	movw r7, #43913
	movt r7, #61389
	add r0, r5, r2, lsl #2
	mov r2, #125
	str r9, [r0, #0]
	str r9, [r0, #4]
	str r2, [r0, #8]
	add r2, r1, #5
	str r9, [r0, #12]
	movw r1, #8961
	movt r1, #26437
	mov r0, r9
	str r2, [sp, #4]
	str r9, [sp, #56]
	str r9, [sp, #60]
	str r9, [sp, #64]
	str r9, [sp, #68]
	str r9, [sp, #72]
	str r9, [sp, #76]
	str r9, [sp, #80]
	str r9, [sp, #84]
	str r9, [sp, #88]
	str r9, [sp, #92]
	str r9, [sp, #96]
	str r9, [sp, #100]
	str r9, [sp, #104]
	str r9, [sp, #108]
	str r9, [sp, #112]
	str r9, [sp, #116]
	str r9, [sp, #120]
	str r9, [sp, #124]
	str r9, [sp, #128]
	str r9, [sp, #132]
	str r9, [sp, #136]
	str r9, [sp, #140]
	str r9, [sp, #144]
	str r9, [sp, #148]
	str r9, [sp, #152]
	str r9, [sp, #156]
	str r9, [sp, #160]
	str r9, [sp, #164]
	str r9, [sp, #168]
	str r9, [sp, #172]
	str r9, [sp, #176]
	str r9, [sp, #180]
	str r9, [sp, #184]
	str r9, [sp, #188]
	str r9, [sp, #192]
	str r9, [sp, #196]
	str r9, [sp, #200]
	str r9, [sp, #204]
	str r9, [sp, #208]
	str r9, [sp, #212]
	str r9, [sp, #216]
	str r9, [sp, #220]
	str r9, [sp, #224]
	str r9, [sp, #228]
	str r9, [sp, #232]
	str r9, [sp, #236]
	str r9, [sp, #240]
	str r9, [sp, #244]
	str r9, [sp, #248]
	str r9, [sp, #252]
	str r9, [sp, #256]
	str r9, [sp, #260]
	str r9, [sp, #264]
	str r9, [sp, #268]
	str r9, [sp, #272]
	str r9, [sp, #276]
	str r9, [sp, #280]
	str r9, [sp, #284]
	str r9, [sp, #288]
	str r9, [sp, #292]
	str r9, [sp, #296]
	str r9, [sp, #300]
	str r9, [sp, #304]
	str r9, [sp, #308]
	str r9, [sp, #312]
	str r9, [sp, #316]
	str r9, [sp, #320]
	str r9, [sp, #324]
	str r9, [sp, #328]
	str r9, [sp, #332]
	str r9, [sp, #336]
	str r9, [sp, #340]
	str r9, [sp, #344]
	str r9, [sp, #348]
	str r9, [sp, #352]
	str r9, [sp, #356]
	str r9, [sp, #360]
	str r9, [sp, #364]
	str r9, [sp, #368]
	str r9, [sp, #372]
	str r5, [sp, #0]
	str r8, [sp, #12]
	movw r8, #21622
	movt r8, #4146
	str r8, [sp, #8]
	movw r8, #56574
	movt r8, #39098
	str r8, [sp, #52]
	str r7, [sp, #24]
	cmp r2, r9
	bgt label24
	b label49
.p2align 4
label47:
	add r1, r1, r9
	ldr r7, [sp, #24]
	add r0, r0, #64
	ldr r8, [sp, #52]
	add r2, r7, r4
	mov r7, r2
	add r4, r8, r10
	ldr r8, [sp, #8]
	add r3, r8, r3
	ldr r8, [sp, #12]
	add r8, r8, r5
	ldr r5, [sp, #0]
	add r5, r5, #256
	str r5, [sp, #0]
	str r8, [sp, #12]
	mov r8, r4
	str r3, [sp, #8]
	str r4, [sp, #52]
	str r2, [sp, #24]
	ldr r2, [sp, #4]
	cmp r2, r0
	ble label49
.p2align 4
label24:
	ldr r5, [sp, #0]
	mov r9, #0
	mov r2, r5
.p2align 4
label25:
	ldr r3, [r2, #0]
	ldr r4, [r2, #4]
	lsl r4, r4, #16
	add r3, r4, r3, lsl #24
	ldr r4, [r2, #8]
	add r3, r3, r4, lsl #8
	ldr r4, [r2, #12]
	add r4, r3, r4
	add r3, sp, #56
	add r3, r3, r9, lsl #2
	add r9, r9, #4
	str r4, [r3, #0]
	cmp r9, #16
	ldr r4, [r2, #16]
	ldr r5, [r2, #20]
	lsl r4, r4, #24
	add r4, r4, r5, lsl #16
	ldr r5, [r2, #24]
	add r4, r4, r5, lsl #8
	ldr r5, [r2, #28]
	add r4, r4, r5
	str r4, [r3, #4]
	ldr r4, [r2, #32]
	ldr r5, [r2, #36]
	lsl r4, r4, #24
	add r4, r4, r5, lsl #16
	ldr r5, [r2, #40]
	add r4, r4, r5, lsl #8
	ldr r5, [r2, #44]
	add r4, r4, r5
	str r4, [r3, #8]
	ldr r4, [r2, #48]
	ldr r5, [r2, #52]
	lsl r4, r4, #24
	add r4, r4, r5, lsl #16
	ldr r5, [r2, #56]
	add r4, r4, r5, lsl #8
	ldr r5, [r2, #60]
	add r4, r4, r5
	str r4, [r3, #12]
	bge label256
	add r2, r2, #64
	b label25
.p2align 4
label256:
	add r3, sp, #56
	add r2, r3, #64
	mov r3, #16
.p2align 4
label30:
	ldr r4, [r2, #-12]
	add r3, r3, #4
	ldr r5, [r2, #-32]
	cmp r3, #80
	add r5, r4, r5
	ldr r4, [r2, #-56]
	ldr r6, [r2, #-64]
	add r5, r5, r6
	sub r5, r4, r5
	add r6, r5, r5, lsr #31
	asr r6, r6, #1
	sub r6, r5, r6, lsl #1
	add r5, r6, r5, lsl #1
	str r5, [r2, #0]
	ldr r7, [r2, #-8]
	ldr r8, [r2, #-28]
	ldr r6, [r2, #-52]
	add r7, r7, r8
	add r5, r5, r6
	ldr r8, [r2, #-60]
	add r7, r7, r8
	sub r6, r6, r7
	add r7, r6, r6, lsr #31
	asr r7, r7, #1
	sub r7, r6, r7, lsl #1
	add r6, r7, r6, lsl #1
	str r6, [r2, #4]
	ldr r6, [r2, #-4]
	add r4, r4, r6
	ldr r6, [r2, #-24]
	add r4, r4, r6
	ldr r6, [r2, #-48]
	sub r4, r6, r4
	add r6, r4, r4, lsr #31
	asr r6, r6, #1
	sub r6, r4, r6, lsl #1
	add r4, r6, r4, lsl #1
	str r4, [r2, #8]
	ldr r4, [r2, #-20]
	add r4, r5, r4
	ldr r5, [r2, #-44]
	sub r4, r5, r4
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	sub r5, r4, r5, lsl #1
	add r4, r5, r4, lsl #1
	str r4, [r2, #12]
	bge label34
	add r2, r2, #16
	b label30
.p2align 4
label34:
	add r3, sp, #56
	mov r9, #0
	ldr r7, [sp, #24]
	mov r4, r1
	mov r2, r3
	ldr r8, [sp, #52]
	mov r6, r9
	mov r3, r8
	ldr r8, [sp, #8]
	mov r5, r8
	ldr r8, [sp, #12]
	cmp r9, #20
	blt label322
.p2align 4
label43:
	add r9, r7, r3
	cmp r6, #60
	movw r11, #48348
	movt r11, #36635
	sub r10, r9, r5
	mov r9, r10
	movlt r9, #0
	cmp r6, #40
	movlt r9, r10
	cmp r6, #60
	movw r10, #49414
	movt r10, #51810
	movlt r10, r11
	cmp r6, #40
	movw r11, #60289
	movt r11, #28377
	movlt r10, r11
.p2align 4
label44:
	add r8, r8, r4, lsl #5
	add r6, r6, #1
	cmp r6, #80
	add r8, r10, r8
	add r8, r9, r8
	asr r9, r4, #31
	add r9, r4, r9, lsr #27
	asr r9, r9, #5
	sub r9, r4, r9, lsl #5
	add r8, r8, r9
	ldr r9, [r2, #0]
	add r9, r8, r9
	asr r8, r7, #31
	add r8, r7, r8, lsr #2
	asr r8, r8, #30
	sub r8, r7, r8, lsl #30
	add r10, r8, r7, lsl #30
	bge label47
	add r2, r2, #4
	mov r7, r4
	mov r8, r5
	cmp r6, #20
	mov r4, r9
	mov r5, r3
	mov r3, r10
	bge label43
.p2align 4
label322:
	movw r10, #31129
	movt r10, #23170
	mov r9, #0
	b label44
label51:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	add r1, sp, #32
	bl putarray
	add sp, sp, #380
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
