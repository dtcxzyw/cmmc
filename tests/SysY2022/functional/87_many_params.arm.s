.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #548
	add r0, sp, #136
	add r4, sp, #64
	str r4, [sp, #440]
	str r0, [sp, #396]
	bl getint
	str r0, [sp, #524]
	bl getint
	str r0, [sp, #532]
	bl getint
	str r0, [sp, #8]
	bl getint
	str r0, [sp, #20]
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
	str r0, [sp, #536]
	bl getint
	str r0, [sp, #420]
	bl getint
	str r0, [sp, #416]
	bl getint
	str r0, [sp, #404]
	bl getint
	str r0, [sp, #400]
	bl getint
	str r0, [sp, #132]
	bl getint
	str r0, [sp, #412]
	ldr r0, [sp, #524]
	str r0, [sp, #64]
	ldr r0, [sp, #532]
	ldr r4, [sp, #440]
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [sp, #20]
	str r0, [r4, #12]
	ldr r0, [sp, #28]
	str r0, [r4, #16]
	ldr r0, [sp, #36]
	str r0, [r4, #20]
	ldr r0, [sp, #44]
	str r0, [r4, #24]
	ldr r0, [sp, #52]
	str r0, [r4, #28]
	ldr r0, [sp, #60]
	str r0, [r4, #32]
	ldr r0, [sp, #536]
	str r0, [r4, #36]
	ldr r0, [sp, #420]
	str r0, [r4, #40]
	ldr r0, [sp, #416]
	str r0, [r4, #44]
	ldr r0, [sp, #404]
	str r0, [r4, #48]
	ldr r0, [sp, #400]
	str r0, [r4, #52]
	ldr r0, [sp, #132]
	str r0, [r4, #56]
	ldr r0, [sp, #412]
	str r0, [r4, #60]
	mov r0, #0
	cmp r0, #15
	bge label10
label4:
	add r1, r0, #1
	mov r2, r1
label5:
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
label7:
	ldr r4, [sp, #440]
	ldr r3, [r4, r0, lsl #2]
	ldr r5, [r4, r2, lsl #2]
	cmp r3, r5
	bge label9
	str r5, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
label9:
	add r2, r2, #1
	b label5
label10:
	ldr r1, [sp, #64]
	ldr r4, [sp, #440]
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
	str r4, [sp, #472]
	ldr r4, [sp, #440]
	ldr r4, [r4, #48]
	str r4, [sp, #468]
	ldr r4, [sp, #440]
	ldr r4, [r4, #52]
	str r4, [sp, #464]
	ldr r4, [sp, #440]
	ldr r4, [r4, #56]
	str r4, [sp, #460]
	ldr r4, [sp, #440]
	ldr r4, [r4, #60]
	str r4, [sp, #456]
	beq label11
	str r1, [sp, #408]
	str r0, [sp, #16]
	mov r0, r10
	str r11, [sp, #4]
	mov r0, r9
	str r10, [sp, #496]
	mov r0, r8
	str r9, [sp, #488]
	mov r0, r7
	str r8, [sp, #56]
	mov r0, r6
	str r7, [sp, #48]
	mov r0, r5
	str r6, [sp, #40]
	mov r0, r3
	str r5, [sp, #32]
	mov r0, r2
	str r3, [sp, #24]
	str r2, [sp, #12]
	ldr r4, [sp, #472]
	str r4, [sp, #0]
	mov r0, r4
	ldr r4, [sp, #468]
	str r4, [sp, #528]
	mov r0, r4
	ldr r4, [sp, #464]
	str r4, [sp, #520]
	mov r0, r4
	ldr r4, [sp, #460]
	str r4, [sp, #516]
	mov r0, r4
	ldr r4, [sp, #456]
	str r4, [sp, #512]
	mov r0, r4
	ldr r0, [sp, #524]
	str r0, [sp, #508]
	ldr r0, [sp, #532]
	str r0, [sp, #504]
	ldr r0, [sp, #8]
	str r0, [sp, #500]
	ldr r0, [sp, #20]
	str r0, [sp, #128]
	ldr r0, [sp, #28]
	str r0, [sp, #492]
	ldr r0, [sp, #36]
	str r0, [sp, #392]
	ldr r0, [sp, #44]
	str r0, [sp, #484]
	ldr r0, [sp, #52]
	str r0, [sp, #480]
	ldr r0, [sp, #60]
	str r0, [sp, #476]
	ldr r0, [sp, #536]
	str r0, [sp, #424]
	ldr r0, [sp, #420]
	str r0, [sp, #428]
	ldr r0, [sp, #416]
	str r0, [sp, #432]
	ldr r0, [sp, #404]
	str r0, [sp, #436]
	ldr r0, [sp, #400]
	str r0, [sp, #444]
	ldr r0, [sp, #132]
	str r0, [sp, #448]
	ldr r0, [sp, #412]
	str r0, [sp, #452]
	b label16
label11:
	str r0, [sp, #136]
	movw r1, #8848
	ldr r0, [sp, #396]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	mov r1, #1
	b label13
label16:
	ldr r0, [sp, #16]
	movw r1, #1
	movw r2, #51217
	ldr r11, [sp, #4]
	movt r1, #15232
	movt r2, #4405
	add r0, r0, r11
	smmul r2, r0, r2
	asr r3, r2, #26
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	ldr r1, [sp, #408]
	subs r1, r1, #1
	beq label11
	str r1, [sp, #408]
	str r0, [sp, #16]
	ldr r0, [sp, #496]
	str r0, [sp, #4]
	mov r11, r0
	ldr r0, [sp, #488]
	str r0, [sp, #496]
	ldr r0, [sp, #56]
	str r0, [sp, #488]
	ldr r0, [sp, #48]
	str r0, [sp, #56]
	ldr r0, [sp, #40]
	str r0, [sp, #48]
	ldr r0, [sp, #32]
	str r0, [sp, #40]
	ldr r0, [sp, #24]
	str r0, [sp, #32]
	ldr r0, [sp, #12]
	str r0, [sp, #24]
	ldr r0, [sp, #0]
	str r0, [sp, #12]
	ldr r0, [sp, #528]
	str r0, [sp, #0]
	ldr r0, [sp, #520]
	str r0, [sp, #528]
	ldr r0, [sp, #516]
	str r0, [sp, #520]
	ldr r0, [sp, #512]
	str r0, [sp, #516]
	ldr r0, [sp, #508]
	str r0, [sp, #512]
	ldr r0, [sp, #504]
	str r0, [sp, #508]
	ldr r0, [sp, #500]
	str r0, [sp, #504]
	ldr r0, [sp, #128]
	str r0, [sp, #500]
	ldr r0, [sp, #492]
	str r0, [sp, #128]
	ldr r0, [sp, #392]
	str r0, [sp, #492]
	ldr r0, [sp, #484]
	str r0, [sp, #392]
	ldr r0, [sp, #480]
	str r0, [sp, #484]
	ldr r0, [sp, #476]
	str r0, [sp, #480]
	ldr r0, [sp, #424]
	str r0, [sp, #476]
	ldr r0, [sp, #428]
	str r0, [sp, #424]
	ldr r0, [sp, #432]
	str r0, [sp, #428]
	ldr r0, [sp, #436]
	str r0, [sp, #432]
	ldr r0, [sp, #444]
	str r0, [sp, #436]
	ldr r0, [sp, #448]
	str r0, [sp, #444]
	ldr r0, [sp, #452]
	str r0, [sp, #448]
	mov r0, #0
	str r0, [sp, #452]
	b label16
label13:
	ldr r0, [sp, #396]
	add r2, r0, r1, lsl #3
	ldr r3, [r2, #-4]
	sub r4, r3, #1
	str r4, [r0, r1, lsl #3]
	add r1, r1, #4
	ldr r0, [r2, #-8]
	cmp r1, #29
	sub r4, r0, #2
	str r4, [r2, #4]
	sub r4, r0, #3
	str r4, [r2, #8]
	sub r4, r3, #3
	str r4, [r2, #12]
	sub r4, r3, #4
	str r4, [r2, #16]
	sub r4, r0, #5
	sub r0, r0, #6
	str r4, [r2, #20]
	str r0, [r2, #24]
	sub r0, r3, #6
	str r0, [r2, #28]
	blt label13
	ldr r0, [sp, #396]
	add r2, r0, r1, lsl #3
	ldr r3, [r2, #-4]
	sub r4, r3, #1
	str r4, [r0, r1, lsl #3]
	ldr r1, [r2, #-8]
	sub r4, r1, #2
	str r4, [r2, #4]
	sub r4, r1, #3
	sub r1, r1, #5
	str r4, [r2, #8]
	sub r4, r3, #3
	sub r3, r3, #4
	str r4, [r2, #12]
	str r3, [r2, #16]
	str r1, [r2, #20]
	ldr r1, [sp, #136]
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #8]
	add r1, r1, r2
	ldr r2, [r0, #12]
	add r1, r1, r2
	ldr r2, [r0, #16]
	add r1, r1, r2
	ldr r2, [r0, #20]
	add r1, r1, r2
	ldr r2, [r0, #24]
	add r1, r1, r2
	ldr r2, [r0, #28]
	add r1, r1, r2
	ldr r2, [r0, #32]
	add r1, r1, r2
	ldr r2, [r0, #36]
	add r1, r1, r2
	ldr r2, [r0, #40]
	add r1, r1, r2
	ldr r2, [r0, #44]
	add r1, r1, r2
	ldr r2, [r0, #48]
	add r1, r1, r2
	ldr r2, [r0, #52]
	add r1, r1, r2
	ldr r2, [r0, #56]
	add r1, r1, r2
	ldr r2, [r0, #60]
	add r1, r1, r2
	ldr r2, [r0, #64]
	add r1, r1, r2
	ldr r2, [r0, #68]
	add r1, r1, r2
	ldr r2, [r0, #72]
	add r1, r1, r2
	ldr r2, [r0, #76]
	add r1, r1, r2
	ldr r2, [r0, #80]
	add r1, r1, r2
	ldr r2, [r0, #84]
	add r1, r1, r2
	ldr r2, [r0, #88]
	add r1, r1, r2
	ldr r2, [r0, #92]
	add r1, r1, r2
	ldr r2, [r0, #96]
	add r1, r1, r2
	ldr r2, [r0, #100]
	add r1, r1, r2
	ldr r2, [r0, #104]
	add r1, r1, r2
	ldr r2, [r0, #108]
	add r1, r1, r2
	ldr r2, [r0, #112]
	add r1, r1, r2
	ldr r2, [r0, #116]
	add r1, r1, r2
	ldr r2, [r0, #120]
	add r1, r1, r2
	ldr r2, [r0, #124]
	add r1, r1, r2
	ldr r2, [r0, #128]
	add r1, r1, r2
	ldr r2, [r0, #132]
	add r1, r1, r2
	ldr r2, [r0, #136]
	add r1, r1, r2
	ldr r2, [r0, #140]
	add r1, r1, r2
	ldr r2, [r0, #144]
	add r1, r1, r2
	ldr r2, [r0, #148]
	add r1, r1, r2
	ldr r2, [r0, #152]
	add r1, r1, r2
	ldr r2, [r0, #156]
	add r1, r1, r2
	ldr r2, [r0, #160]
	add r1, r1, r2
	ldr r2, [r0, #164]
	add r1, r1, r2
	ldr r2, [r0, #168]
	add r1, r1, r2
	ldr r2, [r0, #172]
	add r1, r1, r2
	ldr r2, [r0, #176]
	add r1, r1, r2
	ldr r2, [r0, #180]
	add r1, r1, r2
	ldr r2, [r0, #184]
	add r1, r1, r2
	ldr r2, [r0, #188]
	add r1, r1, r2
	ldr r2, [r0, #192]
	add r1, r1, r2
	ldr r2, [r0, #196]
	add r1, r1, r2
	ldr r2, [r0, #200]
	add r1, r1, r2
	ldr r2, [r0, #204]
	add r1, r1, r2
	ldr r2, [r0, #208]
	add r1, r1, r2
	ldr r2, [r0, #212]
	add r1, r1, r2
	ldr r2, [r0, #216]
	add r1, r1, r2
	ldr r2, [r0, #220]
	add r1, r1, r2
	ldr r2, [r0, #224]
	add r1, r1, r2
	ldr r2, [r0, #228]
	add r1, r1, r2
	ldr r2, [r0, #232]
	add r1, r1, r2
	ldr r2, [r0, #236]
	add r1, r1, r2
	ldr r2, [r0, #240]
	add r1, r1, r2
	ldr r2, [r0, #244]
	add r1, r1, r2
	ldr r2, [r0, #248]
	ldr r0, [r0, #252]
	add r1, r1, r2
	add r0, r1, r0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #548
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
