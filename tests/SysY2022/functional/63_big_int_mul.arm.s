.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r11, #9
	mov r9, #8
	mov r10, #5
	mov r3, #2
	sub sp, sp, #372
	mov r2, #0
	mov r5, #3
	mov r7, #6
	str r2, [sp, #208]
	mov r4, #1
	mov r6, #4
	str r2, [sp, #212]
	mov r8, #7
	add r1, sp, #104
	str r2, [sp, #216]
	mov r0, sp
	str r2, [sp, #220]
	str r2, [sp, #224]
	str r2, [sp, #228]
	str r2, [sp, #232]
	str r2, [sp, #236]
	str r2, [sp, #240]
	str r2, [sp, #244]
	str r2, [sp, #248]
	str r2, [sp, #252]
	str r2, [sp, #256]
	str r2, [sp, #260]
	str r2, [sp, #264]
	str r2, [sp, #268]
	str r2, [sp, #272]
	str r2, [sp, #276]
	str r2, [sp, #280]
	str r2, [sp, #284]
	str r2, [sp, #288]
	str r2, [sp, #292]
	str r2, [sp, #296]
	str r2, [sp, #300]
	str r2, [sp, #304]
	str r2, [sp, #308]
	str r2, [sp, #312]
	str r2, [sp, #316]
	str r2, [sp, #320]
	str r2, [sp, #324]
	str r2, [sp, #328]
	str r2, [sp, #332]
	str r2, [sp, #336]
	str r2, [sp, #340]
	str r2, [sp, #344]
	str r2, [sp, #348]
	str r2, [sp, #352]
	str r2, [sp, #356]
	str r2, [sp, #360]
	str r2, [sp, #364]
	str r4, [sp, #0]
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #12]
	str r10, [sp, #16]
	str r7, [sp, #20]
	str r8, [sp, #24]
	str r9, [sp, #28]
	str r11, [sp, #32]
	str r2, [sp, #36]
	str r4, [sp, #40]
	str r3, [sp, #44]
	str r5, [sp, #48]
	str r6, [sp, #52]
	str r10, [sp, #56]
	str r7, [sp, #60]
	str r8, [sp, #64]
	str r9, [sp, #68]
	str r11, [sp, #72]
	str r2, [sp, #76]
	str r3, [sp, #104]
	str r5, [sp, #108]
	str r6, [sp, #112]
	str r3, [sp, #116]
	str r10, [sp, #120]
	str r8, [sp, #124]
	str r11, [sp, #128]
	str r11, [sp, #132]
	str r2, [sp, #136]
	str r4, [sp, #140]
	str r11, [sp, #144]
	str r9, [sp, #148]
	str r8, [sp, #152]
	str r7, [sp, #156]
	str r6, [sp, #160]
	str r5, [sp, #164]
	str r3, [sp, #168]
	str r4, [sp, #172]
	mov r4, #39
	str r3, [sp, #176]
	str r3, [sp, #180]
	mov r3, #19
	cmn r3, #1
	bgt label10
label5:
	ldr r0, [sp, #208]
	cmp r0, #0
	bne label6
	mov r4, #1
	b label7
.p2align 4
label10:
	ldr r2, [r1, r3, lsl #2]
	mov r6, #19
	cmn r6, #1
	ble label122
.p2align 4
label14:
	add r8, sp, #208
	ldr r5, [r8, r4, lsl #2]
	ldr r7, [r0, r6, lsl #2]
	sub r6, r6, #1
	mla r7, r2, r7, r5
	sub r5, r4, #1
	cmp r7, #9
	bgt label16
	str r7, [r8, r4, lsl #2]
	mov r4, r5
	cmn r6, #1
	bgt label14
	b label242
.p2align 4
label16:
	add r8, sp, #208
	movw r9, #26215
	str r7, [r8, r4, lsl #2]
	movt r9, #26214
	add r4, r8, r5, lsl #2
	smmul r7, r7, r9
	ldr r8, [r4, #0]
	asr r9, r7, #2
	add r7, r9, r7, lsr #31
	add r7, r8, r7
	str r7, [r4, #0]
	mov r4, r5
	cmn r6, #1
	bgt label14
	add r4, r5, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
label6:
	bl putint
	mov r4, #1
.p2align 4
label7:
	add r8, sp, #208
	ldr r0, [r8, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	blt label7
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label242:
	add r4, r4, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
label122:
	add r4, r4, #19
	sub r3, r3, #1
	cmn r3, #1
	bgt label10
	b label5
