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
	sub sp, sp, #292
	add r4, sp, #72
	str r4, [sp, #188]
	bl getint
	str r0, [sp, #280]
	bl getint
	str r0, [sp, #4]
	bl getint
	str r0, [sp, #16]
	bl getint
	str r0, [sp, #28]
	bl getint
	str r0, [sp, #36]
	bl getint
	str r0, [sp, #44]
	bl getint
	str r0, [sp, #52]
	bl getint
	str r0, [sp, #60]
	bl getint
	str r0, [sp, #232]
	bl getint
	str r0, [sp, #248]
	bl getint
	str r0, [sp, #160]
	bl getint
	str r0, [sp, #156]
	bl getint
	str r0, [sp, #144]
	bl getint
	str r0, [sp, #140]
	bl getint
	str r0, [sp, #64]
	bl getint
	str r0, [sp, #152]
	ldr r0, [sp, #280]
	str r0, [sp, #72]
	ldr r0, [sp, #4]
	ldr r4, [sp, #188]
	str r0, [r4, #4]
	ldr r0, [sp, #16]
	str r0, [r4, #8]
	ldr r0, [sp, #28]
	str r0, [r4, #12]
	ldr r0, [sp, #36]
	str r0, [r4, #16]
	ldr r0, [sp, #44]
	str r0, [r4, #20]
	ldr r0, [sp, #52]
	str r0, [r4, #24]
	ldr r0, [sp, #60]
	str r0, [r4, #28]
	ldr r0, [sp, #232]
	str r0, [r4, #32]
	ldr r0, [sp, #248]
	str r0, [r4, #36]
	ldr r0, [sp, #160]
	str r0, [r4, #40]
	ldr r0, [sp, #156]
	str r0, [r4, #44]
	ldr r0, [sp, #144]
	str r0, [r4, #48]
	ldr r0, [sp, #140]
	str r0, [r4, #52]
	ldr r0, [sp, #64]
	str r0, [r4, #56]
	ldr r0, [sp, #152]
	str r0, [r4, #60]
	mov r0, #0
	cmp r0, #15
	bge label10
.p2align 4
label4:
	add r1, r0, #1
	mov r2, r1
	cmp r1, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
.p2align 4
label7:
	ldr r4, [sp, #188]
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
label10:
	ldr r1, [sp, #72]
	ldr r4, [sp, #188]
	cmp r1, #0
	ldr r0, [r4, #4]
	ldr r11, [r4, #8]
	ldr r10, [r4, #12]
	ldr r9, [r4, #16]
	ldr r8, [r4, #20]
	ldr r7, [r4, #24]
	ldr r6, [r4, #28]
	ldr r5, [r4, #32]
	ldr r3, [r4, #36]
	ldr r2, [r4, #40]
	ldr r4, [r4, #44]
	str r4, [sp, #216]
	ldr r4, [sp, #188]
	ldr r4, [r4, #48]
	str r4, [sp, #212]
	ldr r4, [sp, #188]
	ldr r4, [r4, #52]
	str r4, [sp, #208]
	ldr r4, [sp, #188]
	ldr r4, [r4, #56]
	str r4, [sp, #200]
	ldr r4, [sp, #188]
	ldr r4, [r4, #60]
	str r4, [sp, #204]
	beq label11
	str r1, [sp, #148]
	str r0, [sp, #24]
	mov r0, r10
	str r11, [sp, #12]
	mov r0, r9
	str r10, [sp, #164]
	mov r0, r8
	str r9, [sp, #240]
	mov r0, r7
	str r8, [sp, #224]
	mov r0, r6
	str r7, [sp, #56]
	mov r0, r5
	str r6, [sp, #48]
	mov r0, r3
	str r5, [sp, #40]
	mov r0, r2
	str r3, [sp, #32]
	str r2, [sp, #20]
	ldr r4, [sp, #216]
	str r4, [sp, #8]
	mov r0, r4
	ldr r4, [sp, #212]
	str r4, [sp, #0]
	mov r0, r4
	ldr r4, [sp, #208]
	str r4, [sp, #276]
	mov r0, r4
	ldr r4, [sp, #200]
	str r4, [sp, #272]
	mov r0, r4
	ldr r4, [sp, #204]
	str r4, [sp, #268]
	mov r0, r4
	ldr r0, [sp, #280]
	str r0, [sp, #264]
	ldr r0, [sp, #4]
	str r0, [sp, #136]
	ldr r0, [sp, #16]
	str r0, [sp, #260]
	ldr r0, [sp, #28]
	str r0, [sp, #256]
	ldr r0, [sp, #36]
	str r0, [sp, #252]
	ldr r0, [sp, #44]
	str r0, [sp, #244]
	ldr r0, [sp, #52]
	str r0, [sp, #236]
	ldr r0, [sp, #60]
	str r0, [sp, #228]
	ldr r0, [sp, #232]
	str r0, [sp, #220]
	ldr r0, [sp, #248]
	str r0, [sp, #168]
	ldr r0, [sp, #160]
	str r0, [sp, #172]
	ldr r0, [sp, #156]
	str r0, [sp, #176]
	ldr r0, [sp, #144]
	str r0, [sp, #180]
	ldr r0, [sp, #140]
	str r0, [sp, #184]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #152]
	str r0, [sp, #196]
label13:
	ldr r0, [sp, #24]
	movw r1, #51217
	ldr r11, [sp, #12]
	movt r1, #4405
	add r0, r0, r11
	smmul r1, r0, r1
	asr r2, r1, #26
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	ldr r1, [sp, #148]
	subs r1, r1, #1
	beq label11
	str r1, [sp, #148]
	str r0, [sp, #24]
	ldr r0, [sp, #164]
	str r0, [sp, #12]
	mov r11, r0
	ldr r0, [sp, #240]
	str r0, [sp, #164]
	ldr r0, [sp, #224]
	str r0, [sp, #240]
	ldr r0, [sp, #56]
	str r0, [sp, #224]
	ldr r0, [sp, #48]
	str r0, [sp, #56]
	ldr r0, [sp, #40]
	str r0, [sp, #48]
	ldr r0, [sp, #32]
	str r0, [sp, #40]
	ldr r0, [sp, #20]
	str r0, [sp, #32]
	ldr r0, [sp, #8]
	str r0, [sp, #20]
	ldr r0, [sp, #0]
	str r0, [sp, #8]
	ldr r0, [sp, #276]
	str r0, [sp, #0]
	ldr r0, [sp, #272]
	str r0, [sp, #276]
	ldr r0, [sp, #268]
	str r0, [sp, #272]
	ldr r0, [sp, #264]
	str r0, [sp, #268]
	ldr r0, [sp, #136]
	str r0, [sp, #264]
	ldr r0, [sp, #260]
	str r0, [sp, #136]
	ldr r0, [sp, #256]
	str r0, [sp, #260]
	ldr r0, [sp, #252]
	str r0, [sp, #256]
	ldr r0, [sp, #244]
	str r0, [sp, #252]
	ldr r0, [sp, #236]
	str r0, [sp, #244]
	ldr r0, [sp, #228]
	str r0, [sp, #236]
	ldr r0, [sp, #220]
	str r0, [sp, #228]
	ldr r0, [sp, #168]
	str r0, [sp, #220]
	ldr r0, [sp, #172]
	str r0, [sp, #168]
	ldr r0, [sp, #176]
	str r0, [sp, #172]
	ldr r0, [sp, #180]
	str r0, [sp, #176]
	ldr r0, [sp, #184]
	str r0, [sp, #180]
	ldr r0, [sp, #192]
	str r0, [sp, #184]
	ldr r0, [sp, #196]
	str r0, [sp, #192]
	mov r0, #0
	str r0, [sp, #196]
	b label13
.p2align 4
label8:
	ldr r4, [sp, #188]
	str r5, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
label11:
	movw r1, #19504
	movt r1, #4
	add r0, r1, r0, lsl #5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #292
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
