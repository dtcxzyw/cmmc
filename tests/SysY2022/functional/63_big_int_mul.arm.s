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
	mov r7, #6
	sub sp, sp, #372
	mov r4, #3
	mov r0, #0
	mov r6, #4
	mov r8, #7
	mov r5, #1
	str r0, [sp, #208]
	mov r3, #2
	mov r10, #5
	str r0, [sp, #212]
	mov r9, #8
	add r2, sp, #104
	str r0, [sp, #216]
	mov r1, sp
	add r2, r2, #76
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
	str r5, [sp, #0]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #12]
	str r10, [sp, #16]
	str r7, [sp, #20]
	str r8, [sp, #24]
	str r9, [sp, #28]
	str r11, [sp, #32]
	str r0, [sp, #36]
	str r5, [sp, #40]
	str r3, [sp, #44]
	str r4, [sp, #48]
	str r6, [sp, #52]
	str r10, [sp, #56]
	str r7, [sp, #60]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r11, [sp, #72]
	str r0, [sp, #76]
	str r3, [sp, #104]
	str r4, [sp, #108]
	str r6, [sp, #112]
	str r3, [sp, #116]
	str r10, [sp, #120]
	str r8, [sp, #124]
	str r11, [sp, #128]
	str r11, [sp, #132]
	str r0, [sp, #136]
	str r5, [sp, #140]
	str r11, [sp, #144]
	str r9, [sp, #148]
	str r8, [sp, #152]
	str r7, [sp, #156]
	str r6, [sp, #160]
	mov r6, #39
	str r4, [sp, #164]
	str r3, [sp, #168]
	str r5, [sp, #172]
	str r3, [sp, #176]
	str r3, [sp, #180]
	mov r3, #19
	cmn r3, #1
	ble label6
.p2align 4
label14:
	ldr r0, [r2, #0]
	add r9, sp, #208
	add r4, r1, #76
	mov r7, #19
	add r5, r9, r6, lsl #2
	cmn r7, #1
	ble label131
.p2align 4
label20:
	ldr r8, [r5, #0]
	sub r6, r6, #1
	sub r7, r7, #1
	ldr r9, [r4, #0]
	mla r8, r0, r9, r8
	cmp r8, #9
	bgt label22
	str r8, [r5, #0]
	sub r4, r4, #4
	cmn r7, #1
	sub r5, r5, #4
	bgt label20
	b label243
.p2align 4
label22:
	str r8, [r5, #0]
	add r9, sp, #208
	movw r11, #26215
	movt r11, #26214
	sub r4, r4, #4
	cmn r7, #1
	add r9, r9, r6, lsl #2
	smmul r8, r8, r11
	sub r5, r5, #4
	ldr r10, [r9, #0]
	asr r11, r8, #2
	add r8, r11, r8, lsr #31
	add r8, r10, r8
	str r8, [r9, #0]
	bgt label20
	add r6, r6, #19
	sub r3, r3, #1
	sub r2, r2, #4
	cmn r3, #1
	bgt label14
label6:
	ldr r0, [sp, #208]
	cmp r0, #0
	bne label12
	add r9, sp, #208
	mov r5, #1
	add r4, r9, #4
	b label7
.p2align 4
label243:
	add r6, r6, #19
	sub r3, r3, #1
	sub r2, r2, #4
	cmn r3, #1
	bgt label14
	b label6
.p2align 4
label7:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #40
	bge label11
	add r4, r4, #4
	mov r5, r0
	b label7
label12:
	bl putint
	mov r5, #1
	add r9, sp, #208
	add r4, r9, #4
	b label7
label11:
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label131:
	add r6, r6, #19
	sub r3, r3, #1
	sub r2, r2, #4
	cmn r3, #1
	bgt label14
	b label6
