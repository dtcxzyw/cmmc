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
	sub sp, sp, #380
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #161
	bl _sysy_starttime
	mov r3, r4
	movw r6, #:lower16:buffer
	mov r0, #0
	movt r6, #:upper16:buffer
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	str r0, [sp, #48]
	movs r0, r5
	str r6, [sp, #28]
	str r5, [sp, #24]
	ble label5
label54:
	mov r0, #0
.p2align 4
label6:
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
	str r3, [sp, #20]
	add r5, r3, r5, lsr #24
	ldr r6, [sp, #28]
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
	bge label83
	ldr r3, [sp, #20]
	b label6
.p2align 4
label83:
	ldr r6, [sp, #28]
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
	mov r1, #0
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label93
	b label12
.p2align 4
label10:
	mov r1, #0
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	beq label12
.p2align 4
label93:
	mov r0, r1
	b label10
.p2align 4
label12:
	ldr r6, [sp, #28]
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
	str r2, [sp, #0]
	movt r1, #26437
	movw r2, #57840
	str r6, [sp, #56]
	str r6, [sp, #60]
	str r6, [sp, #64]
	str r6, [sp, #68]
	str r6, [sp, #72]
	str r6, [sp, #76]
	str r6, [sp, #80]
	str r6, [sp, #84]
	str r6, [sp, #88]
	str r6, [sp, #92]
	str r6, [sp, #96]
	str r6, [sp, #100]
	str r6, [sp, #104]
	str r6, [sp, #108]
	str r6, [sp, #112]
	str r6, [sp, #116]
	str r6, [sp, #120]
	str r6, [sp, #124]
	str r6, [sp, #128]
	str r6, [sp, #132]
	str r6, [sp, #136]
	str r6, [sp, #140]
	str r6, [sp, #144]
	str r6, [sp, #148]
	str r6, [sp, #152]
	str r6, [sp, #156]
	str r6, [sp, #160]
	str r6, [sp, #164]
	str r6, [sp, #168]
	str r6, [sp, #172]
	str r6, [sp, #176]
	str r6, [sp, #180]
	str r6, [sp, #184]
	str r6, [sp, #188]
	str r6, [sp, #192]
	str r6, [sp, #196]
	str r6, [sp, #200]
	str r6, [sp, #204]
	str r6, [sp, #208]
	str r6, [sp, #212]
	str r6, [sp, #216]
	str r6, [sp, #220]
	str r6, [sp, #224]
	str r6, [sp, #228]
	str r6, [sp, #232]
	str r6, [sp, #236]
	str r6, [sp, #240]
	str r6, [sp, #244]
	str r6, [sp, #248]
	str r6, [sp, #252]
	str r6, [sp, #256]
	str r6, [sp, #260]
	str r6, [sp, #264]
	str r6, [sp, #268]
	str r6, [sp, #272]
	str r6, [sp, #276]
	str r6, [sp, #280]
	str r6, [sp, #284]
	str r6, [sp, #288]
	str r6, [sp, #292]
	str r6, [sp, #296]
	str r6, [sp, #300]
	str r6, [sp, #304]
	str r6, [sp, #308]
	str r6, [sp, #312]
	str r6, [sp, #316]
	str r6, [sp, #320]
	str r6, [sp, #324]
	str r6, [sp, #328]
	str r6, [sp, #332]
	str r6, [sp, #336]
	str r6, [sp, #340]
	str r6, [sp, #344]
	str r6, [sp, #348]
	str r6, [sp, #352]
	str r6, [sp, #356]
	str r6, [sp, #360]
	str r6, [sp, #364]
	str r6, [sp, #368]
	str r6, [sp, #372]
	str r2, [sp, #16]
	movt r2, #50130
	str r2, [sp, #16]
	str r3, [sp, #12]
	movt r3, #4146
	str r3, [sp, #12]
	str r4, [sp, #8]
	movt r4, #39098
	str r4, [sp, #8]
	str r5, [sp, #4]
	movt r5, #61389
	str r5, [sp, #4]
	ldr r2, [sp, #0]
	cmp r2, r6
	ble label39
.p2align 4
label20:
	add r2, r0, #4
	add r3, r0, #8
	add r4, r0, #12
	mov r5, #0
	mov r8, r5
.p2align 4
label21:
	add r7, r0, r5
	ldr r6, [sp, #28]
	add r7, r6, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r7, #4]
	lsl r10, r10, #16
	add r9, r10, r9, lsl #24
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	add r9, r9, r10, lsl #8
	add r9, r9, r7
	add r7, sp, #56
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
	blt label21
	mov r2, #16
.p2align 4
label24:
	add r7, sp, #56
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
	blt label24
	ldr r2, [sp, #16]
	mov r6, #0
	ldr r3, [sp, #12]
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r7, r2
	mov r2, r3
	mov r3, r4
	mov r4, r5
	mov r5, r1
	cmp r6, #80
	bge label33
.p2align 4
label34:
	cmp r6, #20
	blt label334
	add r8, r3, r4
	cmp r6, #60
	mov r10, #0
	sub r9, r8, r2
	mov r8, r9
	movlt r8, r10
	movw r10, #49414
	cmp r6, #40
	movt r10, #51810
	movlt r8, r9
	cmp r6, #60
	movw r9, #48348
	movt r9, #36635
	movlt r10, r9
	cmp r6, #40
	movw r9, #60289
	movt r9, #28377
	movlt r10, r9
	mov r9, r10
	b label36
.p2align 4
label33:
	add r1, r1, r5
	add r0, r0, #64
	ldr r5, [sp, #4]
	add r5, r5, r4
	ldr r4, [sp, #8]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r3, r3, r2
	ldr r2, [sp, #16]
	add r2, r2, r7
	str r2, [sp, #16]
	str r3, [sp, #12]
	str r4, [sp, #8]
	str r5, [sp, #4]
	ldr r2, [sp, #0]
	cmp r2, r0
	bgt label20
	b label39
.p2align 4
label334:
	movw r9, #31129
	mov r8, #0
	movt r9, #23170
.p2align 4
label36:
	add r7, r7, r5, lsl #5
	add r7, r9, r7
	add r7, r8, r7
	asr r8, r5, #31
	add r8, r5, r8, lsr #27
	asr r8, r8, #5
	sub r8, r5, r8, lsl #5
	add r8, r7, r8
	add r7, sp, #56
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
	blt label34
	b label33
label5:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	add r1, sp, #32
	bl putarray
	add sp, sp, #380
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label39:
	ldr r0, [sp, #32]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #32]
	ldr r0, [sp, #36]
	ldr r5, [sp, #4]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [sp, #36]
	ldr r0, [sp, #40]
	ldr r4, [sp, #8]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [sp, #40]
	ldr r0, [sp, #44]
	ldr r3, [sp, #12]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [sp, #44]
	ldr r0, [sp, #48]
	ldr r2, [sp, #16]
	add r0, r2, r0
	rsb r0, r0, #0
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	ldr r3, [sp, #20]
	subs r0, r0, #1
	str r0, [sp, #24]
	bgt label54
	b label5
