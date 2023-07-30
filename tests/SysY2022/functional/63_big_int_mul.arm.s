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
	mov r2, #0
	mov r5, #3
	mov r8, #7
	mov r6, #4
	sub sp, sp, #372
	mov r10, #5
	mov r3, #2
	str r2, [sp, #0]
	add r0, sp, #264
	add r1, sp, #160
	str r2, [sp, #4]
	mov r4, #1
	mov r9, #8
	str r2, [sp, #8]
	mov r7, #6
	str r2, [sp, #12]
	str r2, [sp, #16]
	str r2, [sp, #20]
	str r2, [sp, #24]
	str r2, [sp, #28]
	str r2, [sp, #32]
	str r2, [sp, #36]
	str r2, [sp, #40]
	str r2, [sp, #44]
	str r2, [sp, #48]
	str r2, [sp, #52]
	str r2, [sp, #56]
	str r2, [sp, #60]
	str r2, [sp, #64]
	str r2, [sp, #68]
	str r2, [sp, #72]
	str r2, [sp, #76]
	str r2, [sp, #80]
	str r2, [sp, #84]
	str r2, [sp, #88]
	str r2, [sp, #92]
	str r2, [sp, #96]
	str r2, [sp, #100]
	str r2, [sp, #104]
	str r2, [sp, #108]
	str r2, [sp, #112]
	str r2, [sp, #116]
	str r2, [sp, #120]
	str r2, [sp, #124]
	str r2, [sp, #128]
	str r2, [sp, #132]
	str r2, [sp, #136]
	str r2, [sp, #140]
	str r2, [sp, #144]
	str r2, [sp, #148]
	str r2, [sp, #152]
	str r2, [sp, #156]
	str r4, [sp, #264]
	str r3, [sp, #268]
	str r5, [sp, #272]
	str r6, [sp, #276]
	str r10, [sp, #280]
	str r7, [sp, #284]
	str r8, [sp, #288]
	str r9, [sp, #292]
	str r11, [sp, #296]
	str r2, [sp, #300]
	str r4, [sp, #304]
	str r3, [sp, #308]
	str r5, [sp, #312]
	str r6, [sp, #316]
	str r10, [sp, #320]
	str r7, [sp, #324]
	str r8, [sp, #328]
	str r9, [sp, #332]
	str r11, [sp, #336]
	str r2, [sp, #340]
	str r3, [sp, #160]
	str r5, [sp, #164]
	str r6, [sp, #168]
	str r3, [sp, #172]
	str r10, [sp, #176]
	str r8, [sp, #180]
	str r11, [sp, #184]
	str r11, [sp, #188]
	str r2, [sp, #192]
	mov r2, #19
	str r4, [sp, #196]
	str r11, [sp, #200]
	str r9, [sp, #204]
	str r8, [sp, #208]
	str r7, [sp, #212]
	str r6, [sp, #216]
	str r5, [sp, #220]
	mov r5, #39
	str r3, [sp, #224]
	str r4, [sp, #228]
	str r3, [sp, #232]
	str r3, [sp, #236]
	cmn r2, #1
	bgt label103
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label6
label242:
	mov r4, #1
	b label7
label103:
	ldr r3, [r1, r2, lsl #2]
	mov r4, #19
	cmn r4, #1
	bgt label14
	add r5, r5, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label103
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label6
	b label242
.p2align 4
label14:
	mov r9, sp
	ldr r6, [r9, r5, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r3, r7, r6
	cmp r6, #9
	bgt label16
	sub r4, r4, #1
	str r6, [r9, r5, lsl #2]
	sub r5, r5, #1
	cmn r4, #1
	bgt label14
	add r5, r5, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label103
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label6
	b label242
.p2align 4
label16:
	sub r7, r5, #1
	mov r9, sp
	sub r4, r4, #1
	str r6, [r9, r5, lsl #2]
	add r8, r9, r7, lsl #2
	movw r9, #26215
	ldr r5, [r8, #0]
	movt r9, #26214
	smmul r6, r6, r9
	asr r9, r6, #2
	add r6, r9, r6, lsr #31
	add r5, r5, r6
	str r5, [r8, #0]
	mov r5, r7
	cmn r4, #1
	bgt label14
	add r5, r7, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label103
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label242
label6:
	bl putint
	mov r4, #1
.p2align 4
label7:
	mov r9, sp
	ldr r0, [r9, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	blt label7
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
