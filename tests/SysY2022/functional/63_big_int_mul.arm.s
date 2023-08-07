.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r11, #9
	mov r1, #0
	sub sp, sp, #372
	mov r7, #6
	mov r4, #3
	mov r6, #4
	str r1, [sp, #208]
	add r2, sp, #104
	mov r8, #7
	str r1, [sp, #212]
	mov r5, #1
	mov r3, #2
	str r1, [sp, #216]
	mov r10, #5
	mov r9, #8
	str r1, [sp, #220]
	mov r0, sp
	str r1, [sp, #224]
	str r1, [sp, #228]
	str r1, [sp, #232]
	str r1, [sp, #236]
	str r1, [sp, #240]
	str r1, [sp, #244]
	str r1, [sp, #248]
	str r1, [sp, #252]
	str r1, [sp, #256]
	str r1, [sp, #260]
	str r1, [sp, #264]
	str r1, [sp, #268]
	str r1, [sp, #272]
	str r1, [sp, #276]
	str r1, [sp, #280]
	str r1, [sp, #284]
	str r1, [sp, #288]
	str r1, [sp, #292]
	str r1, [sp, #296]
	str r1, [sp, #300]
	str r1, [sp, #304]
	str r1, [sp, #308]
	str r1, [sp, #312]
	str r1, [sp, #316]
	str r1, [sp, #320]
	str r1, [sp, #324]
	str r1, [sp, #328]
	str r1, [sp, #332]
	str r1, [sp, #336]
	str r1, [sp, #340]
	str r1, [sp, #344]
	str r1, [sp, #348]
	str r1, [sp, #352]
	str r1, [sp, #356]
	str r1, [sp, #360]
	str r1, [sp, #364]
	str r5, [sp, #0]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #12]
	str r10, [sp, #16]
	str r7, [sp, #20]
	str r8, [sp, #24]
	str r9, [sp, #28]
	str r11, [sp, #32]
	str r1, [sp, #36]
	str r5, [sp, #40]
	str r3, [sp, #44]
	str r4, [sp, #48]
	str r6, [sp, #52]
	str r10, [sp, #56]
	str r7, [sp, #60]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r11, [sp, #72]
	str r1, [sp, #76]
	str r3, [sp, #104]
	str r4, [sp, #108]
	str r6, [sp, #112]
	str r3, [sp, #116]
	str r10, [sp, #120]
	str r8, [sp, #124]
	str r11, [sp, #128]
	str r11, [sp, #132]
	str r1, [sp, #136]
	add r1, r2, #76
	str r5, [sp, #140]
	mov r2, #19
	str r11, [sp, #144]
	str r9, [sp, #148]
	str r8, [sp, #152]
	str r7, [sp, #156]
	str r6, [sp, #160]
	str r4, [sp, #164]
	str r3, [sp, #168]
	str r5, [sp, #172]
	mov r5, #39
	str r3, [sp, #176]
	str r3, [sp, #180]
	cmn r2, #1
	ble label28
.p2align 4
label6:
	ldr r3, [r1, #0]
	add r10, sp, #208
	mov r6, #19
	add r4, r10, r5, lsl #2
	ldr r7, [r4, #0]
	ldr r8, [r0, r6, lsl #2]
	mla r7, r3, r8, r7
	cmp r7, #9
	ble label134
.p2align 4
label11:
	str r7, [r4, #0]
	movw r9, #26215
	movt r9, #26214
	ldr r8, [r4, #-4]
	smmul r7, r7, r9
	asr r9, r7, #2
	add r7, r9, r7, lsr #31
	add r7, r8, r7
	sub r8, r6, #1
	ldr r8, [r0, r8, lsl #2]
	mla r8, r3, r8, r7
	sub r7, r5, #2
	cmp r8, #9
	bgt label25
	b label149
.p2align 4
label22:
	add r5, r5, #15
	sub r2, r2, #1
	sub r1, r1, #4
	cmn r2, #1
	bgt label6
	b label28
.p2align 4
label25:
	str r8, [r4, #-4]
	add r10, sp, #208
	ldr r9, [r10, r7, lsl #2]
	movw r10, #26215
	movt r10, #26214
	smmul r8, r8, r10
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	sub r9, r6, #2
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r8
	sub r8, r5, #3
	cmp r9, #9
	bgt label16
	add r10, sp, #208
	str r9, [r10, r7, lsl #2]
	sub r9, r6, #3
	ldr r7, [r10, r8, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r7
	sub r7, r5, #4
	cmp r9, #9
	bgt label20
	sub r6, r6, #4
	str r9, [r10, r8, lsl #2]
	cmn r6, #1
	bgt label23
	add r5, r5, #15
	sub r2, r2, #1
	sub r1, r1, #4
	cmn r2, #1
	bgt label6
	b label28
.p2align 4
label149:
	str r8, [r4, #-4]
	add r10, sp, #208
	ldr r8, [r10, r7, lsl #2]
	sub r9, r6, #2
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r8
	sub r8, r5, #3
	cmp r9, #9
	bgt label16
	str r9, [r10, r7, lsl #2]
	sub r9, r6, #3
	ldr r7, [r10, r8, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r7
	sub r7, r5, #4
	cmp r9, #9
	bgt label20
	b label346
.p2align 4
label16:
	add r10, sp, #208
	str r9, [r10, r7, lsl #2]
	ldr r7, [r10, r8, lsl #2]
	movw r10, #26215
	movt r10, #26214
	smmul r9, r9, r10
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	add r7, r7, r9
	sub r9, r6, #3
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r7
	sub r7, r5, #4
	cmp r9, #9
	bgt label20
	add r10, sp, #208
	sub r6, r6, #4
	str r9, [r10, r8, lsl #2]
	cmn r6, #1
	bgt label23
	b label338
.p2align 4
label20:
	add r10, sp, #208
	movw r11, #26215
	movt r11, #26214
	str r9, [r10, r8, lsl #2]
	smmul r9, r9, r11
	add r8, r10, r7, lsl #2
	asr r11, r9, #2
	ldr r10, [r8, #0]
	add r9, r11, r9, lsr #31
	add r9, r10, r9
	str r9, [r8, #0]
	sub r6, r6, #4
	cmn r6, #1
	ble label22
.p2align 4
label23:
	sub r4, r4, #16
	mov r5, r7
	ldr r7, [r4, #0]
	ldr r8, [r0, r6, lsl #2]
	mla r7, r3, r8, r7
	cmp r7, #9
	bgt label11
	str r7, [r4, #0]
	sub r8, r6, #1
	ldr r7, [r4, #-4]
	ldr r8, [r0, r8, lsl #2]
	mla r8, r3, r8, r7
	sub r7, r5, #2
	cmp r8, #9
	bgt label25
	str r8, [r4, #-4]
	add r10, sp, #208
	sub r9, r6, #2
	ldr r8, [r10, r7, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r8
	sub r8, r5, #3
	cmp r9, #9
	bgt label16
	str r9, [r10, r7, lsl #2]
	sub r9, r6, #3
	ldr r7, [r10, r8, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r7
	sub r7, r5, #4
	cmp r9, #9
	bgt label20
	sub r6, r6, #4
	str r9, [r10, r8, lsl #2]
	cmn r6, #1
	bgt label23
	add r5, r5, #15
	sub r2, r2, #1
	sub r1, r1, #4
	cmn r2, #1
	bgt label6
label28:
	ldr r0, [sp, #208]
	cmp r0, #0
	bne label35
	b label29
.p2align 4
label30:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #40
	bge label33
	add r4, r4, #4
	mov r5, r0
	b label30
label35:
	bl putint
	mov r5, #1
	add r10, sp, #208
	add r4, r10, #4
	b label30
.p2align 4
label134:
	str r7, [r4, #0]
	sub r8, r6, #1
	ldr r7, [r4, #-4]
	ldr r8, [r0, r8, lsl #2]
	mla r8, r3, r8, r7
	sub r7, r5, #2
	cmp r8, #9
	bgt label25
	str r8, [r4, #-4]
	add r10, sp, #208
	sub r9, r6, #2
	ldr r8, [r10, r7, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r8
	sub r8, r5, #3
	cmp r9, #9
	bgt label16
	str r9, [r10, r7, lsl #2]
	sub r9, r6, #3
	ldr r7, [r10, r8, lsl #2]
	ldr r9, [r0, r9, lsl #2]
	mla r9, r3, r9, r7
	sub r7, r5, #4
	cmp r9, #9
	bgt label20
	sub r6, r6, #4
	str r9, [r10, r8, lsl #2]
	cmn r6, #1
	bgt label23
	b label350
.p2align 4
label346:
	add r10, sp, #208
	sub r6, r6, #4
	str r9, [r10, r8, lsl #2]
	cmn r6, #1
	bgt label23
.p2align 4
label350:
	add r5, r5, #15
	sub r2, r2, #1
	sub r1, r1, #4
	cmn r2, #1
	bgt label6
	b label28
label33:
	mov r1, #0
	add sp, sp, #372
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label29:
	add r10, sp, #208
	mov r5, #1
	add r4, r10, #4
	b label30
.p2align 4
label338:
	add r5, r5, #15
	sub r2, r2, #1
	sub r1, r1, #4
	cmn r2, #1
	bgt label6
	b label28
