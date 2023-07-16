.arch armv7ve
.data
.bss
.align 4
arr1:
	.zero	57600
.align 4
arr2:
	.zero	107520
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #340
	bl getint
	add r4, r0, #1
	str r0, [sp, #196]
	mov r1, r0
	bl getint
	add r1, r4, r0
	str r0, [sp, #188]
	mov r2, r0
	str r1, [sp, #204]
	ldr r1, [sp, #196]
	add r0, r1, #2
	add r1, r2, r0
	str r1, [sp, #312]
	ldr r1, [sp, #196]
	add r0, r1, #3
	add r1, r2, r0
	str r1, [sp, #304]
	ldr r1, [sp, #196]
	add r0, r1, #4
	add r1, r2, r0
	str r1, [sp, #296]
	ldr r1, [sp, #196]
	add r0, r1, #5
	add r1, r2, r0
	str r1, [sp, #288]
	ldr r1, [sp, #196]
	add r0, r1, #6
	add r1, r2, r0
	str r1, [sp, #272]
	ldr r1, [sp, #196]
	add r1, r1, r2
	str r1, [sp, #280]
	bl getint
	str r0, [sp, #156]
	mov r1, r0
	bl getint
	str r0, [sp, #148]
	mov r1, r0
	bl getint
	str r0, [sp, #132]
	mov r1, r0
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	bl getint
	str r0, [sp, #124]
	mov r1, r0
	bl getint
	str r0, [sp, #140]
	mov r1, r0
	bl getint
	movw r2, #:lower16:arr1
	str r0, [sp, #164]
	mov r5, r0
	movt r2, #:upper16:arr1
	mov r0, #0
	str r2, [sp, #172]
	str r0, [sp, #256]
label2:
	ldr r1, [sp, #196]
	ldr r0, [sp, #256]
	ldr r2, [sp, #188]
	cmp r1, r0
	mov r1, #0
	movwgt r1, #1
	cmp r2, r0
	ldr r2, [sp, #172]
	mov r0, #0
	movwgt r0, #1
	ands r0, r1, r0
	ldr r0, [sp, #256]
	mov r1, #5760
	mla r2, r0, r1, r2
	str r2, [sp, #232]
	ldr r1, [sp, #280]
	add r1, r1, r0
	str r1, [sp, #216]
	ldr r1, [sp, #204]
	add r1, r1, r0
	str r1, [sp, #208]
	ldr r1, [sp, #312]
	add r1, r1, r0
	str r1, [sp, #100]
	ldr r1, [sp, #304]
	add r1, r1, r0
	str r1, [sp, #108]
	ldr r1, [sp, #296]
	add r1, r1, r0
	str r1, [sp, #316]
	ldr r1, [sp, #288]
	add r1, r1, r0
	str r1, [sp, #324]
	ldr r1, [sp, #272]
	add r1, r1, r0
	str r1, [sp, #328]
	beq label102
	mov r0, #0
	str r0, [sp, #332]
	b label4
label102:
	movw r2, #:lower16:arr2
	mov r1, #0
	movt r2, #:upper16:arr2
	str r2, [sp, #180]
	str r1, [sp, #44]
	b label18
label4:
	mov r1, #2880
	ldr r2, [sp, #232]
	ldr r0, [sp, #332]
	cmp r0, #2
	mla r2, r0, r1, r2
	str r2, [sp, #92]
	ldr r1, [sp, #216]
	add r1, r1, r0
	str r1, [sp, #88]
	ldr r1, [sp, #208]
	add r1, r1, r0
	str r1, [sp, #80]
	ldr r1, [sp, #100]
	add r1, r1, r0
	str r1, [sp, #76]
	ldr r1, [sp, #108]
	add r1, r1, r0
	str r1, [sp, #68]
	ldr r1, [sp, #316]
	add r1, r1, r0
	str r1, [sp, #64]
	ldr r1, [sp, #324]
	add r1, r1, r0
	str r1, [sp, #60]
	ldr r1, [sp, #328]
	add r1, r1, r0
	str r1, [sp, #56]
	bge label115
	mov r0, #0
	str r0, [sp, #48]
	b label6
label115:
	ldr r0, [sp, #256]
	add r0, r0, #1
	str r0, [sp, #256]
	b label2
label6:
	mov r1, #960
	ldr r2, [sp, #92]
	ldr r0, [sp, #48]
	mla r1, r0, r1, r2
	str r1, [sp, #36]
	ldr r1, [sp, #88]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #80]
	ldr r0, [sp, #48]
	add r0, r1, r0
	str r0, [sp, #120]
	ldr r1, [sp, #76]
	ldr r0, [sp, #48]
	add r0, r1, r0
	str r0, [sp, #136]
	ldr r1, [sp, #68]
	ldr r0, [sp, #48]
	add r0, r1, r0
	str r0, [sp, #144]
	ldr r1, [sp, #64]
	ldr r0, [sp, #48]
	cmp r0, #3
	add r1, r1, r0
	str r1, [sp, #160]
	ldr r1, [sp, #60]
	add r2, r1, r0
	str r2, [sp, #176]
	ldr r1, [sp, #56]
	add r4, r1, r0
	str r4, [sp, #200]
	bge label8
	mov r3, #0
	str r3, [sp, #292]
	cmp r3, #4
	bge label11
	b label12
label11:
	ldr r0, [sp, #48]
	add r0, r0, #1
	str r0, [sp, #48]
	b label6
label12:
	mov r0, #240
	ldr r1, [sp, #36]
	ldr r3, [sp, #292]
	mla r7, r3, r0, r1
	str r7, [sp, #260]
	ldr r0, [sp, #4]
	add r7, r0, r3
	str r7, [sp, #244]
	ldr r0, [sp, #120]
	add r6, r0, r3
	str r6, [sp, #228]
	ldr r0, [sp, #136]
	add r6, r0, r3
	str r6, [sp, #220]
	ldr r0, [sp, #144]
	ldr r1, [sp, #160]
	ldr r2, [sp, #176]
	ldr r4, [sp, #200]
	add r0, r0, r3
	add r1, r1, r3
	add r2, r2, r3
	add r3, r4, r3
	mov r4, #0
	b label13
label15:
	ldr r3, [sp, #292]
	add r3, r3, #1
	str r3, [sp, #292]
	cmp r3, #4
	bge label11
	b label12
label13:
	mov r5, #48
	ldr r7, [sp, #260]
	mul r6, r4, r5
	mla r5, r4, r5, r7
	ldr r7, [sp, #244]
	add r8, r7, r4
	ldr r7, [sp, #260]
	str r8, [r7, r6]
	ldr r6, [sp, #228]
	add r6, r6, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	ldr r6, [sp, #220]
	add r6, r6, r4
	str r6, [r5, #12]
	str r6, [r5, #16]
	add r6, r0, r4
	str r6, [r5, #20]
	str r6, [r5, #24]
	add r6, r1, r4
	str r6, [r5, #28]
	str r6, [r5, #32]
	add r6, r2, r4
	str r6, [r5, #36]
	str r6, [r5, #40]
	add r6, r3, r4
	add r4, r4, #1
	str r6, [r5, #44]
	cmp r4, #5
	bge label15
	b label13
label18:
	mov r0, #10752
	ldr r2, [sp, #180]
	ldr r1, [sp, #44]
	mla r2, r1, r0, r2
	add r1, r1, #1
	str r2, [sp, #8]
	str r1, [sp, #12]
	ldr r1, [sp, #44]
	add r1, r1, #2
	str r1, [sp, #16]
	ldr r1, [sp, #44]
	add r1, r1, #3
	str r1, [sp, #20]
	ldr r1, [sp, #44]
	add r1, r1, #4
	str r1, [sp, #24]
	ldr r1, [sp, #44]
	add r1, r1, #5
	str r1, [sp, #28]
	ldr r1, [sp, #44]
	add r1, r1, #6
	str r1, [sp, #32]
	ldr r1, [sp, #44]
	cmp r1, #10
	bge label184
	mov r0, #0
	str r0, [sp, #0]
	b label20
label184:
	mov r4, #0
	str r4, [sp, #264]
	mov r0, r4
	b label31
label20:
	ldr r1, [sp, #44]
	ldr r0, [sp, #0]
	add r0, r1, r0
	mov r1, #5376
	str r0, [sp, #128]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0]
	cmp r0, #2
	mla r2, r0, r1, r2
	str r2, [sp, #152]
	ldr r1, [sp, #12]
	add r2, r1, r0
	str r2, [sp, #168]
	ldr r1, [sp, #16]
	add r2, r1, r0
	str r2, [sp, #184]
	ldr r1, [sp, #20]
	add r2, r1, r0
	str r2, [sp, #308]
	ldr r1, [sp, #24]
	add r2, r1, r0
	str r2, [sp, #300]
	ldr r1, [sp, #28]
	add r2, r1, r0
	str r2, [sp, #284]
	ldr r1, [sp, #32]
	add r2, r1, r0
	str r2, [sp, #268]
	bge label197
	mov r0, #0
	str r0, [sp, #236]
	mov r1, #1792
	ldr r2, [sp, #152]
	cmp r0, #3
	mla r3, r0, r1, r2
	str r3, [sp, #212]
	bge label24
	b label512
label197:
	ldr r1, [sp, #12]
	str r1, [sp, #44]
	b label18
label24:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	b label20
label31:
	mov r1, #5760
	ldr r2, [sp, #172]
	ldr r0, [sp, #264]
	cmp r0, #10
	mla r2, r0, r1, r2
	mov r1, #10752
	str r2, [sp, #248]
	ldr r2, [sp, #180]
	mla r2, r0, r1, r2
	str r2, [sp, #240]
	bge label34
	mov r0, #0
	str r0, [sp, #224]
	b label36
label34:
	mov r0, r4
	add sp, sp, #340
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label36:
	mov r1, #2880
	ldr r2, [sp, #248]
	ldr r0, [sp, #224]
	cmp r0, #100
	mla r2, r0, r1, r2
	mov r1, #5376
	str r2, [sp, #104]
	ldr r2, [sp, #240]
	mla r2, r0, r1, r2
	str r2, [sp, #320]
	bge label39
	mov r0, #0
	str r0, [sp, #96]
label41:
	mov r1, #960
	ldr r2, [sp, #104]
	ldr r0, [sp, #96]
	cmp r0, #1000
	mla r2, r0, r1, r2
	mov r1, #1792
	str r2, [sp, #84]
	ldr r2, [sp, #320]
	mla r2, r0, r1, r2
	str r2, [sp, #72]
	bge label63
	mov r0, #0
	str r0, [sp, #52]
	b label44
label63:
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label373
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label512:
	mov r1, #0
label25:
	ldr r0, [sp, #128]
	mov r2, #896
	cmp r1, #2
	ldr r3, [sp, #212]
	mla r5, r1, r2, r3
	ldr r2, [sp, #168]
	add r0, r0, r1
	add r3, r2, r1
	ldr r2, [sp, #184]
	add r4, r2, r1
	ldr r2, [sp, #308]
	add r6, r2, r1
	ldr r2, [sp, #300]
	add r7, r2, r1
	ldr r2, [sp, #284]
	add r8, r2, r1
	ldr r2, [sp, #268]
	add r9, r2, r1
	bge label27
	mov r10, #0
	b label28
label27:
	ldr r0, [sp, #236]
	add r0, r0, #1
	str r0, [sp, #236]
	mov r1, #1792
	ldr r2, [sp, #152]
	cmp r0, #3
	mla r3, r0, r1, r2
	str r3, [sp, #212]
	bge label24
	b label512
label28:
	mov r2, #224
	mul r11, r10, r2
	mla r2, r10, r2, r5
	add r10, r10, #1
	str r0, [r5, r11]
	cmp r10, #4
	str r3, [r2, #4]
	str r4, [r2, #8]
	str r6, [r2, #12]
	str r7, [r2, #16]
	str r8, [r2, #20]
	str r9, [r2, #24]
	str r0, [r2, #28]
	str r3, [r2, #32]
	str r4, [r2, #36]
	str r6, [r2, #40]
	str r7, [r2, #44]
	str r8, [r2, #48]
	str r9, [r2, #52]
	str r0, [r2, #56]
	str r3, [r2, #60]
	str r4, [r2, #64]
	str r6, [r2, #68]
	str r7, [r2, #72]
	str r8, [r2, #76]
	str r9, [r2, #80]
	str r0, [r2, #84]
	str r3, [r2, #88]
	str r4, [r2, #92]
	str r6, [r2, #96]
	str r7, [r2, #100]
	str r8, [r2, #104]
	str r9, [r2, #108]
	str r0, [r2, #112]
	str r3, [r2, #116]
	str r4, [r2, #120]
	str r6, [r2, #124]
	str r7, [r2, #128]
	str r8, [r2, #132]
	str r9, [r2, #136]
	str r0, [r2, #140]
	str r3, [r2, #144]
	str r4, [r2, #148]
	str r6, [r2, #152]
	str r7, [r2, #156]
	str r8, [r2, #160]
	str r9, [r2, #164]
	str r0, [r2, #168]
	str r3, [r2, #172]
	str r4, [r2, #176]
	str r6, [r2, #180]
	str r7, [r2, #184]
	str r8, [r2, #188]
	str r9, [r2, #192]
	str r0, [r2, #196]
	str r3, [r2, #200]
	str r4, [r2, #204]
	str r6, [r2, #208]
	str r7, [r2, #212]
	str r8, [r2, #216]
	str r9, [r2, #220]
	bge label30
	b label28
label30:
	add r1, r1, #1
	b label25
label8:
	ldr r0, [sp, #332]
	add r0, r0, #1
	str r0, [sp, #332]
	b label4
label44:
	mov r1, #240
	ldr r2, [sp, #84]
	ldr r0, [sp, #52]
	mla r2, r0, r1, r2
	mov r1, #896
	str r2, [sp, #40]
	ldr r2, [sp, #72]
	mla r2, r0, r1, r2
	movw r1, #10000
	cmp r0, r1
	str r2, [sp, #112]
	bge label61
	mov r0, #0
	str r0, [sp, #192]
label47:
	mov r1, #48
	ldr r2, [sp, #40]
	ldr r0, [sp, #192]
	mla r1, r0, r1, r2
	str r1, [sp, #276]
	ldr r2, [sp, #112]
	mov r1, #224
	mla r3, r0, r1, r2
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	str r3, [sp, #252]
	bge label50
	mov r0, #0
	ldr r1, [sp, #276]
	mov r2, #28
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	bge label59
	b label516
label331:
	str r0, [sp, #52]
	b label44
label59:
	ldr r0, [sp, #192]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	bgt label363
	ldr r0, [sp, #52]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label331
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label368
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label373
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label363:
	str r0, [sp, #192]
	b label47
label61:
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label368
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label373
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label516:
	mov r3, #0
	b label55
label52:
	ldr r1, [sp, #276]
	mov r2, #28
	ldr r3, [sp, #252]
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	bge label59
	b label516
label55:
	ldr r5, [r1, r3, lsl #2]
	movw r6, #817
	movw r7, #19413
	movt r7, #41070
	smmla r7, r4, r7, r4
	asr r8, r7, #9
	add r7, r8, r7, lsr #31
	mls r4, r7, r6, r4
	add r4, r5, r4
	ldr r5, [r2, r3, lsl #2]
	add r3, r3, #1
	add r4, r4, r5
	ldr r5, [sp, #164]
	cmp r5, r3
	bgt label55
	add r0, r0, #1
	ldr r1, [sp, #140]
	cmp r1, r0
	bgt label52
	ldr r0, [sp, #192]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	bgt label363
	ldr r0, [sp, #52]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label331
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label368
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label373
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label368:
	str r0, [sp, #96]
	b label41
label50:
	ldr r0, [sp, #52]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label331
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label368
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label373
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label373:
	str r0, [sp, #224]
	b label36
label39:
	ldr r0, [sp, #264]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label302
	b label34
label302:
	str r0, [sp, #264]
	b label31
