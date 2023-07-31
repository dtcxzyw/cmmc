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
	sub sp, sp, #284
	add r4, sp, #144
	bl getint
	str r0, [sp, #92]
	bl getint
	str r0, [sp, #268]
	bl getint
	str r0, [sp, #256]
	bl getint
	str r0, [sp, #244]
	bl getint
	str r0, [sp, #236]
	bl getint
	str r0, [sp, #228]
	bl getint
	str r0, [sp, #220]
	bl getint
	str r0, [sp, #212]
	bl getint
	str r0, [sp, #100]
	bl getint
	str r0, [sp, #108]
	bl getint
	str r0, [sp, #116]
	bl getint
	str r0, [sp, #120]
	bl getint
	str r0, [sp, #132]
	bl getint
	str r0, [sp, #136]
	bl getint
	str r0, [sp, #208]
	bl getint
	str r0, [sp, #124]
	ldr r0, [sp, #92]
	str r0, [sp, #144]
	ldr r0, [sp, #268]
	str r0, [sp, #148]
	ldr r0, [sp, #256]
	str r0, [sp, #152]
	ldr r0, [sp, #244]
	str r0, [sp, #156]
	ldr r0, [sp, #236]
	str r0, [sp, #160]
	ldr r0, [sp, #228]
	str r0, [sp, #164]
	ldr r0, [sp, #220]
	str r0, [sp, #168]
	ldr r0, [sp, #212]
	str r0, [sp, #172]
	ldr r0, [sp, #100]
	str r0, [sp, #176]
	ldr r0, [sp, #108]
	str r0, [sp, #180]
	ldr r0, [sp, #116]
	str r0, [sp, #184]
	ldr r0, [sp, #120]
	str r0, [sp, #188]
	ldr r0, [sp, #132]
	str r0, [sp, #192]
	ldr r0, [sp, #136]
	str r0, [sp, #196]
	ldr r0, [sp, #208]
	str r0, [sp, #200]
	ldr r0, [sp, #124]
	str r0, [sp, #204]
	mov r0, #0
	cmp r0, #15
	bge label10
.p2align 4
label4:
	add r1, r0, #1
	mov r2, r1
	cmp r1, #16
	bge label85
.p2align 4
label7:
	ldr r3, [r4, r0, lsl #2]
	ldr r5, [r4, r2, lsl #2]
	cmp r3, r5
	blt label8
	add r2, r2, #1
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
.p2align 4
label8:
	str r5, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
.p2align 4
label85:
	mov r0, r1
	cmp r1, #15
	blt label4
label10:
	ldr r5, [sp, #144]
	ldr r0, [sp, #148]
	ldr r10, [sp, #152]
	ldr r9, [sp, #156]
	cmp r5, #0
	ldr r8, [sp, #160]
	ldr r7, [sp, #164]
	ldr r6, [sp, #168]
	ldr r4, [sp, #172]
	ldr r3, [sp, #176]
	ldr r2, [sp, #180]
	ldr r1, [sp, #184]
	ldr r11, [sp, #188]
	str r11, [sp, #0]
	ldr r11, [sp, #192]
	str r11, [sp, #4]
	ldr r11, [sp, #196]
	str r11, [sp, #8]
	ldr r11, [sp, #200]
	str r11, [sp, #12]
	ldr r11, [sp, #204]
	str r11, [sp, #16]
	beq label11
	str r5, [sp, #128]
	mov r5, r10
	str r0, [sp, #248]
	mov r0, r9
	str r10, [sp, #260]
	mov r0, r8
	str r9, [sp, #112]
	mov r0, r7
	str r8, [sp, #104]
	mov r0, r6
	str r7, [sp, #96]
	mov r0, r4
	str r6, [sp, #216]
	mov r0, r3
	str r4, [sp, #224]
	mov r0, r2
	str r3, [sp, #232]
	mov r0, r1
	str r2, [sp, #240]
	str r1, [sp, #252]
	ldr r11, [sp, #0]
	str r11, [sp, #264]
	mov r0, r11
	ldr r11, [sp, #4]
	str r11, [sp, #272]
	mov r0, r11
	ldr r11, [sp, #8]
	str r11, [sp, #88]
	mov r0, r11
	ldr r11, [sp, #12]
	str r11, [sp, #84]
	mov r0, r11
	ldr r11, [sp, #16]
	str r11, [sp, #80]
	mov r0, r11
	ldr r0, [sp, #92]
	str r0, [sp, #76]
	ldr r0, [sp, #268]
	str r0, [sp, #140]
	ldr r0, [sp, #256]
	str r0, [sp, #72]
	ldr r0, [sp, #244]
	str r0, [sp, #68]
	ldr r0, [sp, #236]
	str r0, [sp, #64]
	ldr r0, [sp, #228]
	str r0, [sp, #60]
	ldr r0, [sp, #220]
	str r0, [sp, #56]
	ldr r0, [sp, #212]
	str r0, [sp, #52]
	ldr r0, [sp, #100]
	str r0, [sp, #48]
	ldr r0, [sp, #108]
	str r0, [sp, #44]
	ldr r0, [sp, #116]
	str r0, [sp, #40]
	ldr r0, [sp, #120]
	str r0, [sp, #36]
	ldr r0, [sp, #132]
	str r0, [sp, #32]
	ldr r0, [sp, #136]
	str r0, [sp, #28]
	ldr r0, [sp, #208]
	str r0, [sp, #24]
	ldr r0, [sp, #124]
	str r0, [sp, #20]
label13:
	ldr r0, [sp, #248]
	movw r1, #51217
	ldr r5, [sp, #260]
	movt r1, #4405
	add r0, r0, r5
	ldr r5, [sp, #128]
	smmul r1, r0, r1
	asr r2, r1, #26
	subs r5, r5, #1
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	beq label11
	str r5, [sp, #128]
	str r0, [sp, #248]
	ldr r0, [sp, #112]
	str r0, [sp, #260]
	mov r5, r0
	ldr r0, [sp, #104]
	str r0, [sp, #112]
	ldr r0, [sp, #96]
	str r0, [sp, #104]
	ldr r0, [sp, #216]
	str r0, [sp, #96]
	ldr r0, [sp, #224]
	str r0, [sp, #216]
	ldr r0, [sp, #232]
	str r0, [sp, #224]
	ldr r0, [sp, #240]
	str r0, [sp, #232]
	ldr r0, [sp, #252]
	str r0, [sp, #240]
	ldr r0, [sp, #264]
	str r0, [sp, #252]
	ldr r0, [sp, #272]
	str r0, [sp, #264]
	ldr r0, [sp, #88]
	str r0, [sp, #272]
	ldr r0, [sp, #84]
	str r0, [sp, #88]
	ldr r0, [sp, #80]
	str r0, [sp, #84]
	ldr r0, [sp, #76]
	str r0, [sp, #80]
	ldr r0, [sp, #140]
	str r0, [sp, #76]
	ldr r0, [sp, #72]
	str r0, [sp, #140]
	ldr r0, [sp, #68]
	str r0, [sp, #72]
	ldr r0, [sp, #64]
	str r0, [sp, #68]
	ldr r0, [sp, #60]
	str r0, [sp, #64]
	ldr r0, [sp, #56]
	str r0, [sp, #60]
	ldr r0, [sp, #52]
	str r0, [sp, #56]
	ldr r0, [sp, #48]
	str r0, [sp, #52]
	ldr r0, [sp, #44]
	str r0, [sp, #48]
	ldr r0, [sp, #40]
	str r0, [sp, #44]
	ldr r0, [sp, #36]
	str r0, [sp, #40]
	ldr r0, [sp, #32]
	str r0, [sp, #36]
	ldr r0, [sp, #28]
	str r0, [sp, #32]
	ldr r0, [sp, #24]
	str r0, [sp, #28]
	ldr r0, [sp, #20]
	str r0, [sp, #24]
	mov r0, #0
	str r0, [sp, #20]
	b label13
label11:
	movw r1, #19504
	movt r1, #4
	add r0, r1, r0, lsl #5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #284
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
