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
	mov r9, #8
	mov r3, #2
	sub sp, sp, #372
	mov r10, #5
	mov r1, #0
	mov r5, #3
	mov r7, #6
	str r1, [sp, #208]
	mov r4, #1
	mov r6, #4
	str r1, [sp, #212]
	mov r8, #7
	add r2, sp, #104
	str r1, [sp, #216]
	mov r0, sp
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
	str r4, [sp, #0]
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #12]
	str r10, [sp, #16]
	str r7, [sp, #20]
	str r8, [sp, #24]
	str r9, [sp, #28]
	str r11, [sp, #32]
	str r1, [sp, #36]
	str r4, [sp, #40]
	str r3, [sp, #44]
	str r5, [sp, #48]
	str r6, [sp, #52]
	str r10, [sp, #56]
	str r7, [sp, #60]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r11, [sp, #72]
	str r1, [sp, #76]
	str r3, [sp, #104]
	str r5, [sp, #108]
	str r6, [sp, #112]
	str r3, [sp, #116]
	str r10, [sp, #120]
	str r8, [sp, #124]
	str r11, [sp, #128]
	str r11, [sp, #132]
	str r1, [sp, #136]
	str r4, [sp, #140]
	str r11, [sp, #144]
	str r9, [sp, #148]
	str r8, [sp, #152]
	str r7, [sp, #156]
	str r6, [sp, #160]
	str r5, [sp, #164]
	mov r5, #39
	str r3, [sp, #168]
	str r4, [sp, #172]
	str r3, [sp, #176]
	str r3, [sp, #180]
	mov r3, #19
	cmn r3, #1
	bgt label10
label5:
	ldr r0, [sp, #208]
	cmp r0, #0
	beq label7
	bl putint
.p2align 4
label7:
	add r9, sp, #208
	ldr r0, [r9, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	blt label7
	mov r1, #0
	add sp, sp, #372
	mov r0, r1
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label10:
	ldr r1, [r2, r3, lsl #2]
	mov r7, #19
	cmn r7, #1
	ble label122
.p2align 4
label14:
	add r9, sp, #208
	ldr r6, [r9, r5, lsl #2]
	ldr r8, [r0, r7, lsl #2]
	sub r7, r7, #1
	mla r8, r1, r8, r6
	sub r6, r5, #1
	cmp r8, #9
	bgt label16
	str r8, [r9, r5, lsl #2]
	mov r5, r6
	cmn r7, #1
	bgt label14
	b label242
.p2align 4
label16:
	add r9, sp, #208
	movw r10, #26215
	str r8, [r9, r5, lsl #2]
	movt r10, #26214
	add r5, r9, r6, lsl #2
	smmul r8, r8, r10
	ldr r9, [r5, #0]
	asr r10, r8, #2
	add r8, r10, r8, lsr #31
	add r8, r9, r8
	str r8, [r5, #0]
	mov r5, r6
	cmn r7, #1
	bgt label14
	add r5, r6, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
.p2align 4
label242:
	add r5, r5, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
label122:
	add r5, r5, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
