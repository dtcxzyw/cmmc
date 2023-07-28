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
	sub sp, sp, #468
	add r4, sp, #352
	add r5, sp, #24
	str r5, [sp, #392]
	str r4, [sp, #404]
	bl getint
	mov r5, r0
	bl getint
	mov r6, r0
	mov r0, #161
	bl _sysy_starttime
	mov r0, #0
	mov r2, r5
	movw r10, #:lower16:buffer
	str r0, [sp, #352]
	movt r10, #:upper16:buffer
	ldr r4, [sp, #404]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	movs r0, r6
	str r10, [sp, #408]
	str r6, [sp, #384]
	ble label5
label56:
	mov r6, #0
	str r6, [sp, #16]
	b label6
label5:
	mov r0, #184
	bl _sysy_stoptime
	mov r0, #5
	ldr r4, [sp, #404]
	mov r1, r4
	bl putarray
	add sp, sp, #468
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label6:
	add r0, r2, r2, lsl #13
	movw r2, #8225
	asr r1, r0, #31
	add r1, r0, r1, lsr #15
	asr r1, r1, #17
	add r5, r0, r1
	str r5, [sp, #344]
	str r2, [sp, #4]
	movt r2, #4
	str r2, [sp, #4]
	mul r0, r5, r2
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r5, r5, r2, r0
	mul r0, r5, r2
	str r5, [sp, #412]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r5, r5, r2, r0
	mul r0, r5, r2
	str r5, [sp, #432]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r5, r5, r2, r0
	mul r0, r5, r2
	str r5, [sp, #436]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r4, r5, r2, r0
	mul r0, r4, r2
	str r4, [sp, #440]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r3, r4, r2, r0
	mul r0, r3, r2
	str r3, [sp, #444]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r3, r3, r2, r0
	mul r0, r3, r2
	str r3, [sp, #452]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r0, r0, #17
	mla r1, r3, r2, r0
	mul r0, r1, r2
	str r1, [sp, #460]
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	ldr r1, [sp, #460]
	asr r0, r0, #17
	mla r0, r1, r2, r0
	str r0, [sp, #0]
	mul r0, r0, r2
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r1, r0, #17
	ldr r0, [sp, #0]
	mla r0, r0, r2, r1
	str r0, [sp, #388]
	mul r0, r0, r2
	asr r1, r0, #31
	add r0, r0, r1, lsr #15
	asr r1, r0, #17
	ldr r0, [sp, #388]
	mla r0, r0, r2, r1
	mul r1, r0, r2
	asr r2, r1, #31
	add r1, r1, r2, lsr #15
	ldr r2, [sp, #4]
	asr r1, r1, #17
	mla r1, r0, r2, r1
	add r0, r0, r0, lsl #5
	mul r2, r1, r2
	asr r3, r2, #31
	add r2, r2, r3, lsr #15
	asr r3, r2, #17
	ldr r2, [sp, #4]
	mla r3, r1, r2, r3
	add r1, r1, r1, lsl #5
	mul r2, r3, r2
	asr r4, r2, #31
	add r2, r2, r4, lsr #15
	asr r4, r2, #17
	ldr r2, [sp, #4]
	mla r4, r3, r2, r4
	mul r2, r4, r2
	asr r5, r2, #31
	add r2, r2, r5, lsr #15
	asr r5, r2, #17
	ldr r2, [sp, #4]
	mla r5, r4, r2, r5
	mul r2, r5, r2
	asr r6, r2, #31
	add r2, r2, r6, lsr #15
	asr r6, r2, #17
	ldr r2, [sp, #4]
	mla r2, r5, r2, r6
	add r2, r2, r2, lsl #5
	asr r6, r2, #31
	str r2, [sp, #396]
	add r6, r2, r6, lsr #24
	asr r6, r6, #8
	sub r2, r2, r6, lsl #8
	str r2, [sp, #448]
	add r2, r5, r5, lsl #5
	asr r5, r2, #31
	add r5, r2, r5, lsr #24
	asr r5, r5, #8
	sub r2, r2, r5, lsl #8
	str r2, [sp, #456]
	add r2, r4, r4, lsl #5
	asr r4, r2, #31
	add r4, r2, r4, lsr #24
	asr r4, r4, #8
	sub r2, r2, r4, lsl #8
	str r2, [sp, #12]
	add r2, r3, r3, lsl #5
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	sub r2, r2, r3, lsl #8
	str r2, [sp, #8]
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	sub r1, r1, r2, lsl #8
	str r1, [sp, #376]
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	str r0, [sp, #380]
	ldr r0, [sp, #388]
	add r0, r0, r0, lsl #5
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	str r0, [sp, #400]
	ldr r0, [sp, #0]
	add r0, r0, r0, lsl #5
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	ldr r1, [sp, #460]
	ldr r3, [sp, #452]
	add r1, r1, r1, lsl #5
	asr r2, r1, #31
	add r2, r1, r2, lsr #24
	asr r2, r2, #8
	sub r1, r1, r2, lsl #8
	add r2, r3, r3, lsl #5
	asr r3, r2, #31
	add r3, r2, r3, lsr #24
	asr r3, r3, #8
	sub r2, r2, r3, lsl #8
	ldr r3, [sp, #444]
	add r3, r3, r3, lsl #5
	asr r4, r3, #31
	add r4, r3, r4, lsr #24
	asr r4, r4, #8
	sub r3, r3, r4, lsl #8
	ldr r4, [sp, #440]
	add r4, r4, r4, lsl #5
	asr r5, r4, #31
	add r5, r4, r5, lsr #24
	asr r5, r5, #8
	sub r4, r4, r5, lsl #8
	ldr r5, [sp, #436]
	add r5, r5, r5, lsl #5
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	sub r7, r5, r6, lsl #8
	ldr r5, [sp, #432]
	add r5, r5, r5, lsl #5
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	sub r8, r5, r6, lsl #8
	ldr r5, [sp, #412]
	add r5, r5, r5, lsl #5
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	sub r9, r5, r6, lsl #8
	ldr r5, [sp, #344]
	ldr r10, [sp, #408]
	add r5, r5, r5, lsl #5
	asr r6, r5, #31
	add r6, r5, r6, lsr #24
	asr r6, r6, #8
	sub r11, r5, r6, lsl #8
	ldr r6, [sp, #16]
	str r11, [r10, r6, lsl #2]
	add r5, r10, r6, lsl #2
	add r6, r6, #16
	str r9, [r5, #4]
	cmp r6, #32000
	str r8, [r5, #8]
	str r7, [r5, #12]
	str r4, [r5, #16]
	str r3, [r5, #20]
	str r2, [r5, #24]
	str r1, [r5, #28]
	str r0, [r5, #32]
	ldr r0, [sp, #400]
	str r0, [r5, #36]
	ldr r0, [sp, #380]
	str r0, [r5, #40]
	ldr r1, [sp, #376]
	str r1, [r5, #44]
	ldr r2, [sp, #8]
	str r2, [r5, #48]
	ldr r2, [sp, #12]
	str r2, [r5, #52]
	ldr r2, [sp, #456]
	str r2, [r5, #56]
	ldr r2, [sp, #448]
	str r2, [r5, #60]
	blt label158
	mov r1, #128
	add r0, r10, #128000
	str r1, [r0, #0]
	movw r0, #32001
	mov r1, #0
	str r1, [r10, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label167
	b label12
.p2align 4
label158:
	ldr r2, [sp, #396]
	str r6, [sp, #16]
	b label6
.p2align 4
label167:
	mov r0, r1
	mov r1, #0
	ldr r10, [sp, #408]
	str r1, [r10, r0, lsl #2]
	add r1, r0, #1
	and r2, r1, #63
	cmp r2, #60
	bne label167
.p2align 4
label12:
	ldr r10, [sp, #408]
	mov r6, #0
	add r0, r0, #5
	movw r3, #43913
	movw r4, #8961
	add r2, r10, r1, lsl #2
	str r6, [r10, r1, lsl #2]
	mov r1, #125
	str r6, [r2, #4]
	str r1, [r2, #8]
	movw r1, #21622
	str r6, [r2, #12]
	movw r2, #56574
	str r0, [sp, #420]
	movw r0, #57840
	str r6, [sp, #24]
	ldr r5, [sp, #392]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	str r6, [r5, #64]
	str r6, [r5, #68]
	str r6, [r5, #72]
	str r6, [r5, #76]
	str r6, [r5, #80]
	str r6, [r5, #84]
	str r6, [r5, #88]
	str r6, [r5, #92]
	str r6, [r5, #96]
	str r6, [r5, #100]
	str r6, [r5, #104]
	str r6, [r5, #108]
	str r6, [r5, #112]
	str r6, [r5, #116]
	str r6, [r5, #120]
	str r6, [r5, #124]
	str r6, [r5, #128]
	str r6, [r5, #132]
	str r6, [r5, #136]
	str r6, [r5, #140]
	str r6, [r5, #144]
	str r6, [r5, #148]
	str r6, [r5, #152]
	str r6, [r5, #156]
	str r6, [r5, #160]
	str r6, [r5, #164]
	str r6, [r5, #168]
	str r6, [r5, #172]
	str r6, [r5, #176]
	str r6, [r5, #180]
	str r6, [r5, #184]
	str r6, [r5, #188]
	str r6, [r5, #192]
	str r6, [r5, #196]
	str r6, [r5, #200]
	str r6, [r5, #204]
	str r6, [r5, #208]
	str r6, [r5, #212]
	str r6, [r5, #216]
	str r6, [r5, #220]
	str r6, [r5, #224]
	str r6, [r5, #228]
	str r6, [r5, #232]
	str r6, [r5, #236]
	str r6, [r5, #240]
	str r6, [r5, #244]
	str r6, [r5, #248]
	str r6, [r5, #252]
	str r6, [r5, #256]
	str r6, [r5, #260]
	str r6, [r5, #264]
	str r6, [r5, #268]
	str r6, [r5, #272]
	str r6, [r5, #276]
	str r6, [r5, #280]
	str r6, [r5, #284]
	str r6, [r5, #288]
	str r6, [r5, #292]
	str r6, [r5, #296]
	str r6, [r5, #300]
	str r6, [r5, #304]
	str r6, [r5, #308]
	str r6, [r5, #312]
	str r6, [r5, #316]
	mov r5, r6
	str r0, [sp, #20]
	movt r0, #50130
	str r0, [sp, #20]
	str r1, [sp, #348]
	movt r1, #4146
	str r1, [sp, #348]
	str r2, [sp, #372]
	movt r2, #39098
	str r2, [sp, #372]
	str r3, [sp, #416]
	movt r3, #61389
	str r3, [sp, #416]
	str r4, [sp, #428]
	movt r4, #26437
	str r4, [sp, #428]
	str r6, [sp, #424]
	ldr r0, [sp, #420]
	cmp r0, r6
	bgt label256
.p2align 4
label20:
	ldr r0, [sp, #352]
	ldr r4, [sp, #428]
	add r0, r4, r0
	rsb r0, r0, #0
	str r0, [sp, #352]
	ldr r4, [sp, #404]
	ldr r0, [r4, #4]
	ldr r3, [sp, #416]
	add r0, r3, r0
	rsb r0, r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [sp, #372]
	add r0, r2, r0
	rsb r0, r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #12]
	ldr r1, [sp, #348]
	add r0, r1, r0
	rsb r0, r0, #0
	str r0, [r4, #12]
	ldr r1, [r4, #16]
	ldr r0, [sp, #20]
	add r0, r0, r1
	rsb r0, r0, #0
	str r0, [r4, #16]
	ldr r0, [sp, #384]
	ldr r2, [sp, #396]
	subs r0, r0, #1
	str r0, [sp, #384]
	bgt label56
	b label5
.p2align 4
label34:
	ldr r4, [sp, #428]
	add r4, r4, r3
	ldr r3, [sp, #416]
	add r3, r3, r2
	ldr r2, [sp, #372]
	add r2, r2, r1
	ldr r1, [sp, #348]
	add r1, r1, r0
	ldr r0, [sp, #20]
	add r0, r0, r5
	ldr r5, [sp, #424]
	str r0, [sp, #20]
	str r1, [sp, #348]
	str r2, [sp, #372]
	add r5, r5, #64
	str r3, [sp, #416]
	str r4, [sp, #428]
	str r5, [sp, #424]
	ldr r0, [sp, #420]
	cmp r0, r5
	bgt label256
	b label20
.p2align 4
label35:
	cmp r4, #20
	blt label428
	cmp r4, #40
	blt label432
	b label37
.p2align 4
label428:
	movw r6, #31129
	mov r7, #0
	movt r6, #23170
	b label39
.p2align 4
label432:
	add r6, r1, r2
	sub r7, r6, r0
	movw r6, #60289
	movt r6, #28377
.p2align 4
label39:
	add r5, r5, r3, lsl #5
	add r5, r6, r5
	asr r6, r3, #31
	add r5, r7, r5
	add r6, r3, r6, lsr #27
	asr r6, r6, #5
	sub r6, r3, r6, lsl #5
	add r6, r5, r6
	ldr r5, [sp, #392]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	add r6, r6, r5
	asr r5, r2, #31
	add r5, r2, r5, lsr #2
	asr r5, r5, #30
	sub r5, r2, r5, lsl #30
	add r7, r5, r2, lsl #30
	mov r2, r3
	mov r5, r0
	mov r3, r6
	mov r0, r1
	mov r1, r7
	cmp r4, #80
	blt label35
	b label34
.p2align 4
label37:
	add r6, r1, r2
	cmp r4, #60
	mov r8, #0
	sub r6, r6, r0
	mov r7, r6
	movlt r7, r8
	movw r8, #49414
	movw r6, #48348
	movt r8, #51810
	movt r6, #36635
	movlt r8, r6
	mov r6, r8
	b label39
.p2align 4
label256:
	ldr r5, [sp, #424]
	mov r3, #0
	mov r4, r3
	add r2, r5, #12
	add r1, r5, #8
	add r0, r5, #4
.p2align 4
label22:
	ldr r5, [sp, #424]
	ldr r10, [sp, #408]
	add r6, r5, r3
	add r5, r10, r6, lsl #2
	ldr r6, [r10, r6, lsl #2]
	ldr r7, [r5, #4]
	lsl r7, r7, #16
	add r6, r7, r6, lsl #24
	ldr r7, [r5, #8]
	ldr r5, [r5, #12]
	add r6, r6, r7, lsl #8
	add r7, r6, r5
	ldr r5, [sp, #392]
	str r7, [r5, r4, lsl #2]
	add r6, r5, r4, lsl #2
	add r7, r0, r3
	add r4, r4, #4
	add r5, r10, r7, lsl #2
	cmp r4, #16
	ldr r7, [r10, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	ldr r5, [r5, #12]
	add r7, r7, r8, lsl #8
	add r5, r7, r5
	add r7, r1, r3
	str r5, [r6, #4]
	add r5, r10, r7, lsl #2
	ldr r7, [r10, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	ldr r5, [r5, #12]
	add r7, r7, r8, lsl #8
	add r5, r7, r5
	add r7, r2, r3
	str r5, [r6, #8]
	add r3, r3, #16
	add r5, r10, r7, lsl #2
	ldr r7, [r10, r7, lsl #2]
	ldr r8, [r5, #4]
	lsl r8, r8, #16
	add r7, r8, r7, lsl #24
	ldr r8, [r5, #8]
	ldr r5, [r5, #12]
	add r7, r7, r8, lsl #8
	add r5, r7, r5
	str r5, [r6, #12]
	blt label22
	mov r0, #16
.p2align 4
label25:
	ldr r5, [sp, #392]
	add r1, r5, r0, lsl #2
	ldr r2, [r1, #-12]
	ldr r3, [r1, #-32]
	add r3, r2, r3
	ldr r2, [r1, #-56]
	ldr r4, [r1, #-64]
	add r3, r3, r4
	sub r3, r2, r3
	add r4, r3, r3, lsr #31
	asr r4, r4, #1
	sub r4, r3, r4, lsl #1
	add r3, r4, r3, lsl #1
	str r3, [r5, r0, lsl #2]
	add r0, r0, #4
	ldr r5, [r1, #-8]
	cmp r0, #80
	ldr r6, [r1, #-28]
	ldr r4, [r1, #-52]
	add r5, r5, r6
	add r3, r3, r4
	ldr r6, [r1, #-60]
	add r5, r5, r6
	sub r4, r4, r5
	add r5, r4, r4, lsr #31
	asr r5, r5, #1
	sub r5, r4, r5, lsl #1
	add r4, r5, r4, lsl #1
	str r4, [r1, #4]
	ldr r4, [r1, #-4]
	add r2, r2, r4
	ldr r4, [r1, #-24]
	add r2, r2, r4
	ldr r4, [r1, #-48]
	sub r2, r4, r2
	add r4, r2, r2, lsr #31
	asr r4, r4, #1
	sub r4, r2, r4, lsl #1
	add r2, r4, r2, lsl #1
	str r2, [r1, #8]
	ldr r2, [r1, #-20]
	add r2, r3, r2
	ldr r3, [r1, #-44]
	sub r2, r3, r2
	add r3, r2, r2, lsr #31
	asr r3, r3, #1
	sub r3, r2, r3, lsl #1
	add r2, r3, r2, lsl #1
	str r2, [r1, #12]
	blt label25
	ldr r0, [sp, #20]
	ldr r1, [sp, #348]
	ldr r2, [sp, #372]
	ldr r3, [sp, #416]
	mov r5, r0
	ldr r4, [sp, #428]
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, r4
	mov r4, #0
	cmp r4, #80
	blt label35
	b label34
