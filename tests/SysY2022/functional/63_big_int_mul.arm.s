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
	mov r8, #7
	mov r6, #4
	sub sp, sp, #372
	mov r3, #2
	mov r2, #0
	mov r5, #3
	mov r4, #1
	mov r10, #5
	mov r7, #6
	add r0, sp, #264
	add r1, sp, #160
	mov r9, sp
	str r9, [sp, #364]
	str r2, [sp, #0]
	str r2, [r9, #4]
	str r2, [r9, #8]
	str r2, [r9, #12]
	str r2, [r9, #16]
	str r2, [r9, #20]
	str r2, [r9, #24]
	str r2, [r9, #28]
	str r2, [r9, #32]
	str r2, [r9, #36]
	str r2, [r9, #40]
	str r2, [r9, #44]
	str r2, [r9, #48]
	str r2, [r9, #52]
	str r2, [r9, #56]
	str r2, [r9, #60]
	str r2, [r9, #64]
	str r2, [r9, #68]
	str r2, [r9, #72]
	str r2, [r9, #76]
	str r2, [r9, #80]
	str r2, [r9, #84]
	str r2, [r9, #88]
	str r2, [r9, #92]
	str r2, [r9, #96]
	str r2, [r9, #100]
	str r2, [r9, #104]
	str r2, [r9, #108]
	str r2, [r9, #112]
	str r2, [r9, #116]
	str r2, [r9, #120]
	str r2, [r9, #124]
	str r2, [r9, #128]
	str r2, [r9, #132]
	str r2, [r9, #136]
	str r2, [r9, #140]
	str r2, [r9, #144]
	str r2, [r9, #148]
	str r2, [r9, #152]
	str r2, [r9, #156]
	mov r9, #8
	str r4, [sp, #264]
	str r3, [r0, #4]
	str r5, [r0, #8]
	str r6, [r0, #12]
	str r10, [r0, #16]
	str r7, [r0, #20]
	str r8, [r0, #24]
	str r9, [r0, #28]
	str r11, [r0, #32]
	str r2, [r0, #36]
	str r4, [r0, #40]
	str r3, [r0, #44]
	str r5, [r0, #48]
	str r6, [r0, #52]
	str r10, [r0, #56]
	str r7, [r0, #60]
	str r8, [r0, #64]
	str r9, [r0, #68]
	str r11, [r0, #72]
	str r2, [r0, #76]
	str r3, [sp, #160]
	str r5, [r1, #4]
	str r6, [r1, #8]
	str r3, [r1, #12]
	str r10, [r1, #16]
	str r8, [r1, #20]
	str r11, [r1, #24]
	str r11, [r1, #28]
	str r2, [r1, #32]
	mov r2, #19
	str r4, [r1, #36]
	str r11, [r1, #40]
	str r9, [r1, #44]
	str r8, [r1, #48]
	str r7, [r1, #52]
	str r6, [r1, #56]
	str r5, [r1, #60]
	mov r5, #39
	str r3, [r1, #64]
	str r4, [r1, #68]
	str r3, [r1, #72]
	str r3, [r1, #76]
	cmn r2, #1
	bgt label103
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label6
label243:
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
	b label243
.p2align 4
label14:
	ldr r9, [sp, #364]
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
	b label243
.p2align 4
label16:
	sub r7, r5, #1
	ldr r9, [sp, #364]
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
	beq label243
label6:
	bl putint
	mov r4, #1
.p2align 4
label7:
	ldr r9, [sp, #364]
	ldr r0, [r9, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	blt label7
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
