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
.p2align 4
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
.p2align 4
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
	beq label101
	mov r0, #0
	str r0, [sp, #332]
.p2align 4
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
	blt label115
	ldr r0, [sp, #256]
	add r0, r0, #1
	str r0, [sp, #256]
	b label2
.p2align 4
label115:
	mov r0, #0
	str r0, [sp, #48]
.p2align 4
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
	blt label128
	ldr r0, [sp, #332]
	add r0, r0, #1
	str r0, [sp, #332]
	b label4
.p2align 4
label128:
	mov r3, #0
	str r3, [sp, #292]
	cmp r3, #4
	blt label12
.p2align 4
label509:
	ldr r0, [sp, #48]
	add r0, r0, #1
	str r0, [sp, #48]
	b label6
.p2align 4
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
.p2align 4
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
	blt label13
	ldr r3, [sp, #292]
	add r3, r3, #1
	str r3, [sp, #292]
	cmp r3, #4
	blt label12
	b label509
.p2align 4
label101:
	movw r2, #:lower16:arr2
	mov r0, #0
	movt r2, #:upper16:arr2
	str r2, [sp, #180]
	str r0, [sp, #44]
.p2align 4
label18:
	mov r1, #10752
	ldr r2, [sp, #180]
	ldr r0, [sp, #44]
	mla r2, r0, r1, r2
	add r0, r0, #1
	str r2, [sp, #12]
	str r0, [sp, #8]
	ldr r0, [sp, #44]
	add r0, r0, #2
	str r0, [sp, #16]
	ldr r0, [sp, #44]
	add r0, r0, #3
	str r0, [sp, #20]
	ldr r0, [sp, #44]
	add r0, r0, #4
	str r0, [sp, #24]
	ldr r0, [sp, #44]
	add r0, r0, #5
	str r0, [sp, #28]
	ldr r0, [sp, #44]
	add r0, r0, #6
	str r0, [sp, #32]
	ldr r0, [sp, #44]
	cmp r0, #10
	blt label184
	mov r0, #0
	str r0, [sp, #264]
	mov r1, r0
	b label31
label184:
	mov r1, #0
	str r1, [sp, #0]
.p2align 4
label20:
	ldr r0, [sp, #44]
	ldr r1, [sp, #0]
	cmp r1, #2
	add r0, r0, r1
	str r0, [sp, #128]
	ldr r2, [sp, #12]
	mov r0, #5376
	mla r2, r1, r0, r2
	str r2, [sp, #152]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #168]
	ldr r0, [sp, #16]
	add r0, r0, r1
	str r0, [sp, #184]
	ldr r0, [sp, #20]
	add r0, r0, r1
	str r0, [sp, #308]
	ldr r0, [sp, #24]
	add r0, r0, r1
	str r0, [sp, #300]
	ldr r0, [sp, #28]
	add r0, r0, r1
	str r0, [sp, #284]
	ldr r0, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #268]
	blt label197
	ldr r0, [sp, #8]
	str r0, [sp, #44]
	b label18
.p2align 4
label197:
	mov r0, #0
	str r0, [sp, #236]
	mov r1, #1792
	ldr r2, [sp, #152]
	cmp r0, #3
	mla r3, r0, r1, r2
	str r3, [sp, #212]
	blt label203
.p2align 4
label202:
	ldr r1, [sp, #0]
	add r1, r1, #1
	str r1, [sp, #0]
	b label20
label31:
	mov r3, #5760
	ldr r2, [sp, #172]
	ldr r1, [sp, #264]
	cmp r1, #10
	mla r2, r1, r3, r2
	mov r3, #10752
	str r2, [sp, #248]
	ldr r2, [sp, #180]
	mla r2, r1, r3, r2
	str r2, [sp, #240]
	bge label34
	mov r4, r0
	mov r0, #0
	str r0, [sp, #224]
	b label36
label34:
	add sp, sp, #340
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label203:
	mov r2, #0
.p2align 4
label25:
	ldr r0, [sp, #128]
	cmp r2, #2
	ldr r3, [sp, #212]
	add r1, r0, r2
	mov r0, #896
	mla r5, r2, r0, r3
	ldr r0, [sp, #168]
	add r3, r0, r2
	ldr r0, [sp, #184]
	add r4, r0, r2
	ldr r0, [sp, #308]
	add r6, r0, r2
	ldr r0, [sp, #300]
	add r7, r0, r2
	ldr r0, [sp, #284]
	add r8, r0, r2
	ldr r0, [sp, #268]
	add r9, r0, r2
	blt label217
	ldr r0, [sp, #236]
	add r0, r0, #1
	str r0, [sp, #236]
	mov r1, #1792
	ldr r2, [sp, #152]
	cmp r0, #3
	mla r3, r0, r1, r2
	str r3, [sp, #212]
	blt label203
	b label202
.p2align 4
label217:
	mov r10, #0
	b label28
.p2align 4
label279:
	add r2, r2, #1
	b label25
.p2align 4
label28:
	mov r0, #224
	mul r11, r10, r0
	mla r0, r10, r0, r5
	add r10, r10, #1
	str r1, [r5, r11]
	cmp r10, #4
	str r3, [r0, #4]
	str r4, [r0, #8]
	str r6, [r0, #12]
	str r7, [r0, #16]
	str r8, [r0, #20]
	str r9, [r0, #24]
	str r1, [r0, #28]
	str r3, [r0, #32]
	str r4, [r0, #36]
	str r6, [r0, #40]
	str r7, [r0, #44]
	str r8, [r0, #48]
	str r9, [r0, #52]
	str r1, [r0, #56]
	str r3, [r0, #60]
	str r4, [r0, #64]
	str r6, [r0, #68]
	str r7, [r0, #72]
	str r8, [r0, #76]
	str r9, [r0, #80]
	str r1, [r0, #84]
	str r3, [r0, #88]
	str r4, [r0, #92]
	str r6, [r0, #96]
	str r7, [r0, #100]
	str r8, [r0, #104]
	str r9, [r0, #108]
	str r1, [r0, #112]
	str r3, [r0, #116]
	str r4, [r0, #120]
	str r6, [r0, #124]
	str r7, [r0, #128]
	str r8, [r0, #132]
	str r9, [r0, #136]
	str r1, [r0, #140]
	str r3, [r0, #144]
	str r4, [r0, #148]
	str r6, [r0, #152]
	str r7, [r0, #156]
	str r8, [r0, #160]
	str r9, [r0, #164]
	str r1, [r0, #168]
	str r3, [r0, #172]
	str r4, [r0, #176]
	str r6, [r0, #180]
	str r7, [r0, #184]
	str r8, [r0, #188]
	str r9, [r0, #192]
	str r1, [r0, #196]
	str r3, [r0, #200]
	str r4, [r0, #204]
	str r6, [r0, #208]
	str r7, [r0, #212]
	str r8, [r0, #216]
	str r9, [r0, #220]
	blt label28
	b label279
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
	b label41
label39:
	ldr r1, [sp, #264]
	ldr r0, [sp, #156]
	add r1, r1, #1
	cmp r0, r1
	ble label302
	mov r0, r4
	str r1, [sp, #264]
	b label31
label302:
	mov r0, r4
	b label34
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
	blt label310
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	ble label39
label512:
	str r0, [sp, #224]
	b label36
label310:
	mov r0, #0
	str r0, [sp, #52]
.p2align 4
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
	blt label318
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	ble label63
label513:
	str r0, [sp, #96]
	b label41
label318:
	mov r0, #0
	str r0, [sp, #192]
.p2align 4
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
	blt label326
	ldr r0, [sp, #52]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label61
label514:
	str r0, [sp, #52]
	b label44
.p2align 4
label326:
	mov r0, #0
	ldr r1, [sp, #276]
	mov r2, #28
	ldr r3, [sp, #252]
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	blt label339
	ldr r0, [sp, #192]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label50
.p2align 4
label522:
	str r0, [sp, #192]
	b label47
label61:
	ldr r0, [sp, #96]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label513
label63:
	ldr r0, [sp, #224]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	ble label39
	b label512
.p2align 4
label50:
	ldr r0, [sp, #52]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label61
	b label514
.p2align 4
label339:
	mov r3, #0
.p2align 4
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
	ble label59
	ldr r1, [sp, #276]
	mov r2, #28
	ldr r3, [sp, #252]
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	blt label339
	ldr r0, [sp, #192]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label50
	b label522
.p2align 4
label59:
	ldr r0, [sp, #192]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label50
	b label522
