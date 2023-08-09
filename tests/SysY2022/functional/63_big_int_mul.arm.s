.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[360] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #1
	mov r11, #9
	mov r8, #7
	mov r6, #4
	mov r3, #2
	mov r1, #0
	mov r10, #5
	mov r9, #8
	sub sp, sp, #372
	mov r4, #3
	mov r7, #6
	add r2, sp, #104
	str r1, [sp, #208]
	mov r0, sp
	str r1, [sp, #212]
	str r1, [sp, #216]
	str r1, [sp, #220]
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
	mov r3, #19
	cmn r3, #1
	bgt label6
	b label28
.p2align 4
label313:
	add r5, r5, #15
	sub r3, r3, #1
	sub r1, r1, #4
	cmn r3, #1
	ble label28
.p2align 4
label6:
	add r2, sp, #208
	ldr r4, [r1, #0]
	mov r6, #19
	add r2, r2, r5, lsl #2
	add r7, r0, r6, lsl #2
	ldr r8, [r2, #0]
	ldr r9, [r7, #0]
	mla r8, r4, r9, r8
	cmp r8, #9
	ble label137
.p2align 4
label11:
	str r8, [r2, #0]
	movw r10, #26215
	movt r10, #26214
	ldr r9, [r2, #-4]
	smmul r8, r8, r10
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	ldr r9, [r7, #-4]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label14
	str r8, [r2, #-4]
	ldr r8, [r2, #-8]
	ldr r9, [r7, #-8]
	mla r8, r4, r9, r8
	cmp r8, #9
	ble label320
.p2align 4
label17:
	str r8, [r2, #-8]
	movw r10, #26215
	movt r10, #26214
	ldr r9, [r2, #-12]
	smmul r8, r8, r10
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	ldr r7, [r7, #-12]
	mla r8, r4, r7, r8
	sub r7, r5, #4
	cmp r8, #9
	ble label176
.p2align 4
label20:
	str r8, [r2, #-12]
	movw r10, #26215
	movt r10, #26214
	sub r6, r6, #4
	ldr r9, [r2, #-16]
	smmul r8, r8, r10
	cmn r6, #1
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	str r8, [r2, #-16]
	ble label313
.p2align 4
label23:
	sub r2, r2, #16
	mov r5, r7
	ldr r8, [r2, #0]
	add r7, r0, r6, lsl #2
	ldr r9, [r7, #0]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label11
	str r8, [r2, #0]
	ldr r8, [r2, #-4]
	ldr r9, [r7, #-4]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label14
	str r8, [r2, #-4]
	ldr r8, [r2, #-8]
	ldr r9, [r7, #-8]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label17
	str r8, [r2, #-8]
	ldr r8, [r2, #-12]
	ldr r7, [r7, #-12]
	mla r8, r4, r7, r8
	sub r7, r5, #4
	cmp r8, #9
	bgt label20
	str r8, [r2, #-12]
	sub r6, r6, #4
	cmn r6, #1
	bgt label23
	add r5, r5, #15
	sub r3, r3, #1
	sub r1, r1, #4
	cmn r3, #1
	bgt label6
	b label28
.p2align 4
label14:
	str r8, [r2, #-4]
	movw r10, #26215
	movt r10, #26214
	ldr r9, [r2, #-8]
	smmul r8, r8, r10
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	ldr r9, [r7, #-8]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label17
	str r8, [r2, #-8]
	ldr r8, [r2, #-12]
	ldr r7, [r7, #-12]
	mla r8, r4, r7, r8
	sub r7, r5, #4
	cmp r8, #9
	bgt label20
	str r8, [r2, #-12]
	sub r6, r6, #4
	cmn r6, #1
	bgt label23
	add r5, r5, #15
	sub r3, r3, #1
	sub r1, r1, #4
	cmn r3, #1
	bgt label6
label28:
	ldr r0, [sp, #208]
	cmp r0, #0
	bne label35
	add r2, sp, #208
	mov r5, #1
	add r4, r2, #4
.p2align 4
label30:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #40
	bge label34
	add r4, r4, #4
	mov r5, r0
	b label30
.p2align 4
label320:
	str r8, [r2, #-8]
	ldr r8, [r2, #-12]
	ldr r7, [r7, #-12]
	mla r8, r4, r7, r8
	sub r7, r5, #4
	cmp r8, #9
	bgt label20
	str r8, [r2, #-12]
	sub r6, r6, #4
	cmn r6, #1
	bgt label23
.p2align 4
label332:
	add r5, r5, #15
	sub r3, r3, #1
	sub r1, r1, #4
	cmn r3, #1
	bgt label6
	b label28
.p2align 4
label176:
	str r8, [r2, #-12]
	sub r6, r6, #4
	cmn r6, #1
	bgt label23
	add r5, r5, #15
	sub r3, r3, #1
	sub r1, r1, #4
	cmn r3, #1
	bgt label6
	b label28
.p2align 4
label137:
	str r8, [r2, #0]
	ldr r8, [r2, #-4]
	ldr r9, [r7, #-4]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label14
	str r8, [r2, #-4]
	ldr r8, [r2, #-8]
	ldr r9, [r7, #-8]
	mla r8, r4, r9, r8
	cmp r8, #9
	bgt label17
	str r8, [r2, #-8]
	ldr r8, [r2, #-12]
	ldr r7, [r7, #-12]
	mla r8, r4, r7, r8
	sub r7, r5, #4
	cmp r8, #9
	bgt label20
	str r8, [r2, #-12]
	sub r6, r6, #4
	cmn r6, #1
	bgt label23
	b label332
label34:
	mov r1, #0
	add sp, sp, #372
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label35:
	bl putint
	mov r5, #1
	add r2, sp, #208
	add r4, r2, #4
	b label30
