.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r11, #9
	mov r9, #8
	mov r3, #2
	mov r10, #5
	mov r2, #0
	mov r5, #3
	mov r6, #4
	sub sp, sp, #372
	mov r4, #1
	mov r8, #7
	add r0, sp, #264
	add r1, sp, #164
	mov r7, sp
	str r7, [sp, #160]
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
	str r3, [sp, #164]
	str r5, [r1, #4]
	str r6, [r1, #8]
	str r3, [r1, #12]
	str r10, [r1, #16]
	str r8, [r1, #20]
	str r11, [r1, #24]
	str r11, [r1, #28]
	str r2, [r1, #32]
	str r4, [r1, #36]
	str r11, [r1, #40]
	str r9, [r1, #44]
	str r8, [r1, #48]
	str r7, [r1, #52]
	str r6, [r1, #56]
	str r5, [r1, #60]
	str r3, [r1, #64]
	str r4, [r1, #68]
	str r3, [r1, #72]
	str r3, [r1, #76]
label2:
	ldr r7, [sp, #160]
	mov r4, #0
	add r3, r7, r2, lsl #2
	str r4, [r7, r2, lsl #2]
	add r2, r2, #16
	str r4, [r3, #4]
	cmp r2, #32
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	str r4, [r3, #32]
	str r4, [r3, #36]
	str r4, [r3, #40]
	str r4, [r3, #44]
	str r4, [r3, #48]
	str r4, [r3, #52]
	str r4, [r3, #56]
	str r4, [r3, #60]
	bge label4
	b label2
label4:
	ldr r7, [sp, #160]
	mov r4, #0
	mov r5, #39
	add r3, r7, r2, lsl #2
	str r4, [r7, r2, lsl #2]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	mov r3, #19
	cmn r3, #1
	ble label8
	ldr r2, [r1, r3, lsl #2]
	mov r4, #19
	cmn r4, #1
	ble label17
	ldr r6, [r7, r5, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r2, r7, r6
	cmp r6, #9
	ble label20
label19:
	sub r8, r5, #1
	ldr r7, [sp, #160]
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
	ble label17
	ldr r6, [r7, r8, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r2, r7, r6
	cmp r6, #9
	ble label20
	b label19
label20:
	ldr r7, [sp, #160]
	sub r4, r4, #1
	str r6, [r7, r5, lsl #2]
	sub r5, r5, #1
	cmn r4, #1
	ble label17
	ldr r6, [r7, r5, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r2, r7, r6
	cmp r6, #9
	ble label20
	b label19
label17:
	add r5, r5, #19
	sub r3, r3, #1
	cmn r3, #1
	ble label8
	ldr r2, [r1, r3, lsl #2]
	mov r4, #19
	cmn r4, #1
	ble label17
	ldr r7, [sp, #160]
	ldr r6, [r7, r5, lsl #2]
	ldr r7, [r0, r4, lsl #2]
	mla r6, r2, r7, r6
	cmp r6, #9
	ble label20
	b label19
label8:
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label142
	b label9
label142:
	mov r4, #1
	b label10
label9:
	bl putint
	mov r4, #1
label10:
	ldr r7, [sp, #160]
	ldr r0, [r7, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #40
	bge label12
	b label10
label12:
	mov r0, #0
	add sp, sp, #372
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
