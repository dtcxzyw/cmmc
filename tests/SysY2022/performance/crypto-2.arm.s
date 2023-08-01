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
	mov r3, r4
	mov r8, #0
	str r8, [sp, #32]
	str r8, [sp, #36]
	str r8, [sp, #40]
	str r8, [sp, #44]
	str r8, [sp, #48]
	str r5, [sp, #24]
	ble label39
.p2align 4
label54:
	mov r8, #0
	mov r0, r8
.p2align 4
label5:
	add r1, r3, r3, lsl #13
	movw r3, #8225
	movt r3, #4
	asr r2, r1, #31
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
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	asr r5, r5, #17
	mla r3, r4, r3, r5
	add r4, r4, r4, lsl #5
	add r3, r3, r3, lsl #5
	asr r5, r3, #31
	str r3, [sp, #20]
	add r5, r3, r5, lsr #24
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
	b label5
.p2align 4
label83:
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	mov r1, #128
	add r0, r6, #128000
	str r1, [r0, #0]
	movw r0, #32001
	mov r8, #0
	add r1, r0, #1
	str r8, [r6, r0, lsl #2]
	and r2, r1, #63
	cmp r2, #60
	bne label93
	b label11
.p2align 4
label9:
	mov r8, #0
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	add r1, r0, #1
	str r8, [r6, r0, lsl #2]
	and r2, r1, #63
	cmp r2, #60
	beq label11
.p2align 4
label93:
	mov r0, r1
	b label9
.p2align 4
label11:
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	mov r8, #0
	mov r2, #125
	movw r5, #57840
	movt r5, #50130
	add r1, r6, r1, lsl #2
	movw r4, #21622
	movt r4, #4146
	movw r3, #43913
	movt r3, #61389
	str r8, [r1, #0]
	str r8, [r1, #4]
	str r2, [r1, #8]
	add r2, r0, #5
	str r8, [r1, #12]
	mov r0, r8
	movw r1, #8961
	movt r1, #26437
	str r2, [sp, #0]
	str r8, [sp, #56]
	str r8, [sp, #60]
	str r8, [sp, #64]
	str r8, [sp, #68]
	str r8, [sp, #72]
	str r8, [sp, #76]
	str r8, [sp, #80]
	str r8, [sp, #84]
	str r8, [sp, #88]
	str r8, [sp, #92]
	str r8, [sp, #96]
	str r8, [sp, #100]
	str r8, [sp, #104]
	str r8, [sp, #108]
	str r8, [sp, #112]
	str r8, [sp, #116]
	str r8, [sp, #120]
	str r8, [sp, #124]
	str r8, [sp, #128]
	str r8, [sp, #132]
	str r8, [sp, #136]
	str r8, [sp, #140]
	str r8, [sp, #144]
	str r8, [sp, #148]
	str r8, [sp, #152]
	str r8, [sp, #156]
	str r8, [sp, #160]
	str r8, [sp, #164]
	str r8, [sp, #168]
	str r8, [sp, #172]
	str r8, [sp, #176]
	str r8, [sp, #180]
	str r8, [sp, #184]
	str r8, [sp, #188]
	str r8, [sp, #192]
	str r8, [sp, #196]
	str r8, [sp, #200]
	str r8, [sp, #204]
	str r8, [sp, #208]
	str r8, [sp, #212]
	str r8, [sp, #216]
	str r8, [sp, #220]
	str r8, [sp, #224]
	str r8, [sp, #228]
	str r8, [sp, #232]
	str r8, [sp, #236]
	str r8, [sp, #240]
	str r8, [sp, #244]
	str r8, [sp, #248]
	str r8, [sp, #252]
	str r8, [sp, #256]
	str r8, [sp, #260]
	str r8, [sp, #264]
	str r8, [sp, #268]
	str r8, [sp, #272]
	str r8, [sp, #276]
	str r8, [sp, #280]
	str r8, [sp, #284]
	str r8, [sp, #288]
	str r8, [sp, #292]
	str r8, [sp, #296]
	str r8, [sp, #300]
	str r8, [sp, #304]
	str r8, [sp, #308]
	str r8, [sp, #312]
	str r8, [sp, #316]
	str r8, [sp, #320]
	str r8, [sp, #324]
	str r8, [sp, #328]
	str r8, [sp, #332]
	str r8, [sp, #336]
	str r8, [sp, #340]
	str r8, [sp, #344]
	str r8, [sp, #348]
	str r8, [sp, #352]
	str r8, [sp, #356]
	str r8, [sp, #360]
	str r8, [sp, #364]
	str r8, [sp, #368]
	str r8, [sp, #372]
	str r5, [sp, #16]
	str r4, [sp, #12]
	movw r4, #56574
	movt r4, #39098
	str r4, [sp, #8]
	str r3, [sp, #4]
	cmp r2, r8
	ble label19
.p2align 4
label20:
	add r2, r0, #4
	add r3, r0, #8
	add r4, r0, #12
	mov r8, #0
	mov r7, r8
	mov r5, r8
.p2align 4
label21:
	add r8, r0, r5
	movw r6, #:lower16:buffer
	movt r6, #:upper16:buffer
	add r8, r6, r8, lsl #2
	ldr r9, [r8, #0]
	ldr r10, [r8, #4]
	lsl r10, r10, #16
	add r9, r10, r9, lsl #24
	ldr r10, [r8, #8]
	ldr r8, [r8, #12]
	add r9, r9, r10, lsl #8
	add r9, r9, r8
	add r8, sp, #56
	add r8, r8, r7, lsl #2
	add r7, r7, #4
	str r9, [r8, #0]
	cmp r7, #16
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
	str r9, [r8, #4]
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
	str r9, [r8, #8]
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
	str r6, [r8, #12]
	blt label21
	mov r3, #16
.p2align 4
label24:
	add r8, sp, #56
	add r2, r8, r3, lsl #2
	add r3, r3, #4
	ldr r4, [r2, #-12]
	cmp r3, #80
	ldr r5, [r2, #-32]
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
	blt label24
	ldr r5, [sp, #16]
	mov r8, #0
	ldr r4, [sp, #12]
	mov r7, r5
	mov r6, r4
	ldr r4, [sp, #8]
	ldr r3, [sp, #4]
	mov r2, r4
	mov r5, r3
	mov r4, r1
	mov r3, r8
	cmp r8, #80
	bge label33
.p2align 4
label34:
	cmp r3, #20
	blt label354
	b label38
.p2align 4
label35:
	add r7, r7, r4, lsl #5
	add r7, r9, r7
	add r7, r8, r7
	asr r8, r4, #31
	add r8, r4, r8, lsr #27
	asr r8, r8, #5
	sub r8, r4, r8, lsl #5
	add r7, r7, r8
	add r8, sp, #56
	ldr r8, [r8, r3, lsl #2]
	add r3, r3, #1
	add r8, r7, r8
	asr r7, r5, #31
	add r7, r5, r7, lsr #2
	asr r7, r7, #30
	sub r7, r5, r7, lsl #30
	add r9, r7, r5, lsl #30
	mov r5, r4
	mov r7, r6
	mov r4, r8
	mov r6, r2
	mov r2, r9
	cmp r3, #80
	blt label34
	b label33
.p2align 4
label38:
	add r8, r2, r5
	cmp r3, #60
	movw r10, #48348
	movt r10, #36635
	sub r9, r8, r6
	mov r8, r9
	movlt r8, #0
	cmp r3, #40
	movlt r8, r9
	cmp r3, #60
	movw r9, #49414
	movt r9, #51810
	movlt r9, r10
	cmp r3, #40
	movw r10, #60289
	movt r10, #28377
	movlt r9, r10
	b label35
.p2align 4
label33:
	add r1, r1, r4
	ldr r3, [sp, #4]
	add r0, r0, #64
	ldr r4, [sp, #8]
	add r3, r3, r5
	add r2, r4, r2
	ldr r4, [sp, #12]
	ldr r5, [sp, #16]
	add r4, r4, r6
	add r5, r5, r7
	str r5, [sp, #16]
	str r4, [sp, #12]
	str r2, [sp, #8]
	mov r4, r2
	str r3, [sp, #4]
	ldr r2, [sp, #0]
	cmp r2, r0
	bgt label20
.p2align 4
label19:
	ldr r0, [sp, #32]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [sp, #32]
	ldr r0, [sp, #36]
	ldr r3, [sp, #4]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [sp, #36]
	ldr r0, [sp, #40]
	ldr r4, [sp, #8]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [sp, #40]
	ldr r0, [sp, #44]
	ldr r4, [sp, #12]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [sp, #44]
	ldr r0, [sp, #48]
	ldr r5, [sp, #16]
	add r0, r5, r0
	rsb r0, r0, #0
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	ldr r3, [sp, #20]
	subs r0, r0, #1
	str r0, [sp, #24]
	bgt label54
label39:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	add r1, sp, #32
	bl putarray
	add sp, sp, #380
	mov r8, #0
	mov r0, r8
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label354:
	movw r9, #31129
	movt r9, #23170
	mov r8, #0
	b label35
