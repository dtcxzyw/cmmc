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
	mov r8, #7
	mov r6, #4
	sub sp, sp, #372
	mov r3, #2
	mov r2, #0
	mov r5, #3
	mov r4, #1
	mov r10, #5
	add r0, sp, #260
	add r1, sp, #160
	mov r7, sp
	str r7, [sp, #360]
	str r2, [sp, #0]
	str r2, [r7, #4]
	str r2, [r7, #8]
	str r2, [r7, #12]
	str r2, [r7, #16]
	str r2, [r7, #20]
	str r2, [r7, #24]
	str r2, [r7, #28]
	str r2, [r7, #32]
	str r2, [r7, #36]
	str r2, [r7, #40]
	str r2, [r7, #44]
	str r2, [r7, #48]
	str r2, [r7, #52]
	str r2, [r7, #56]
	str r2, [r7, #60]
	str r2, [r7, #64]
	str r2, [r7, #68]
	str r2, [r7, #72]
	str r2, [r7, #76]
	str r2, [r7, #80]
	str r2, [r7, #84]
	str r2, [r7, #88]
	str r2, [r7, #92]
	str r2, [r7, #96]
	str r2, [r7, #100]
	str r2, [r7, #104]
	str r2, [r7, #108]
	str r2, [r7, #112]
	str r2, [r7, #116]
	str r2, [r7, #120]
	str r2, [r7, #124]
	str r2, [r7, #128]
	str r2, [r7, #132]
	str r2, [r7, #136]
	str r2, [r7, #140]
	str r2, [r7, #144]
	str r2, [r7, #148]
	str r2, [r7, #152]
	str r2, [r7, #156]
	mov r7, #6
	str r4, [sp, #260]
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
	bgt label5
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label14
label243:
	mov r4, #1
	b label15
.p2align 4
label5:
	ldr r3, [r1, r2, lsl #2]
	mov r4, #19
	cmn r4, #1
	bgt label9
	add r5, r5, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label5
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label14
	b label243
.p2align 4
label9:
	ldr r7, [sp, #360]
	ldr r6, [r7, r5, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r3, r7, r6
	cmp r6, #9
	bgt label10
	ldr r7, [sp, #360]
	sub r4, r4, #1
	str r6, [r7, r5, lsl #2]
	sub r5, r5, #1
	cmn r4, #1
	bgt label9
	add r5, r5, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label5
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label14
	b label243
.p2align 4
label10:
	sub r8, r5, #1
	ldr r7, [sp, #360]
	movw r9, #26215
	sub r4, r4, #1
	movt r9, #26214
	str r6, [r7, r5, lsl #2]
	smmul r6, r6, r9
	ldr r5, [r7, r8, lsl #2]
	asr r9, r6, #2
	add r6, r9, r6, lsr #31
	add r5, r5, r6
	str r5, [r7, r8, lsl #2]
	mov r5, r8
	cmn r4, #1
	bgt label9
	add r5, r8, #19
	sub r2, r2, #1
	cmn r2, #1
	bgt label5
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label14
	b label243
.p2align 4
label15:
	ldr r7, [sp, #360]
	ldr r0, [r7, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	blt label15
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label14:
	bl putint
	mov r4, #1
	b label15
