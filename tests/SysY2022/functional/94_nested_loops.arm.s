.arch armv7ve
.data
.bss
.align 8
arr1:
	.zero	57600
.align 8
arr2:
	.zero	107520
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #284
	bl getint
	add r4, r0, #1
	str r0, [sp, #72]
	bl getint
	add r1, r4, r0
	str r0, [sp, #76]
	str r1, [sp, #68]
	ldr r0, [sp, #72]
	ldr r2, [sp, #76]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #64]
	ldr r0, [sp, #72]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #56]
	ldr r0, [sp, #72]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #52]
	ldr r0, [sp, #72]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #48]
	ldr r0, [sp, #72]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #44]
	ldr r0, [sp, #72]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #156]
	ldr r0, [sp, #72]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #72]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #164]
	ldr r0, [sp, #72]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #176]
	ldr r0, [sp, #72]
	add r1, r0, r2
	str r1, [sp, #172]
	bl getint
	str r0, [sp, #124]
	bl getint
	str r0, [sp, #116]
	bl getint
	str r0, [sp, #108]
	bl getint
	str r0, [sp, #104]
	bl getint
	str r0, [sp, #112]
	bl getint
	str r0, [sp, #120]
	bl getint
	mov r1, #0
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	str r0, [sp, #128]
	sub r2, r0, #3
	str r2, [sp, #132]
	str r3, [sp, #192]
	str r1, [sp, #200]
	b label2
.p2align 4
label9:
	ldr r1, [sp, #200]
	ldr r3, [sp, #192]
	add r1, r1, #1
	add r3, r3, #5760
	str r3, [sp, #192]
	str r1, [sp, #200]
.p2align 4
label2:
	ldr r0, [sp, #72]
	ldr r1, [sp, #200]
	ldr r2, [sp, #76]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	beq label149
	ldr r3, [sp, #192]
	mov r0, #0
	str r3, [sp, #204]
	str r0, [sp, #208]
	ldr r1, [sp, #200]
	add r0, r1, r0
	str r0, [sp, #212]
	ldr r0, [sp, #208]
	cmp r0, #2
	blt label10
	b label9
.p2align 4
label160:
	ldr r0, [sp, #208]
	ldr r3, [sp, #204]
	add r0, r0, #1
	add r3, r3, #2880
	str r3, [sp, #204]
	str r0, [sp, #208]
	ldr r1, [sp, #200]
	add r0, r1, r0
	str r0, [sp, #212]
	ldr r0, [sp, #208]
	cmp r0, #2
	bge label9
.p2align 4
label10:
	ldr r3, [sp, #204]
	mov r0, #0
	str r3, [sp, #216]
	str r0, [sp, #220]
	cmp r0, #3
	blt label14
	b label160
.p2align 4
label19:
	ldr r3, [sp, #8]
	add r3, r3, #240
	str r3, [sp, #8]
	str r0, [sp, #4]
	mov r3, r0
.p2align 4
label15:
	ldr r0, [sp, #224]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #0]
	ldr r0, [sp, #228]
	ldr r3, [sp, #4]
	add r5, r0, r3
	ldr r3, [sp, #8]
	str r5, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [sp, #232]
	ldr r3, [sp, #4]
	add r6, r0, r3
	ldr r3, [sp, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	ldr r0, [sp, #236]
	ldr r3, [sp, #4]
	add r4, r0, r3
	ldr r3, [sp, #8]
	str r4, [r3, #20]
	str r4, [r3, #24]
	ldr r0, [sp, #244]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #28]
	str r0, [r3, #32]
	ldr r1, [sp, #252]
	ldr r3, [sp, #4]
	add r1, r1, r3
	ldr r3, [sp, #8]
	str r1, [r3, #36]
	str r1, [r3, #40]
	ldr r2, [sp, #260]
	ldr r3, [sp, #4]
	add r2, r2, r3
	ldr r3, [sp, #8]
	str r2, [r3, #44]
	str r5, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r4, [r3, #60]
	str r4, [r3, #64]
	str r0, [r3, #68]
	str r0, [r3, #72]
	str r1, [r3, #76]
	str r1, [r3, #80]
	str r2, [r3, #84]
	str r2, [r3, #88]
	ldr r5, [sp, #264]
	ldr r3, [sp, #4]
	add r5, r5, r3
	ldr r3, [sp, #8]
	str r5, [r3, #92]
	str r6, [r3, #96]
	str r4, [r3, #100]
	str r4, [r3, #104]
	str r0, [r3, #108]
	str r0, [r3, #112]
	str r1, [r3, #116]
	str r1, [r3, #120]
	str r2, [r3, #124]
	str r2, [r3, #128]
	str r5, [r3, #132]
	str r5, [r3, #136]
	ldr r6, [sp, #268]
	ldr r3, [sp, #4]
	add r6, r6, r3
	ldr r3, [sp, #8]
	str r6, [r3, #140]
	str r4, [r3, #144]
	str r0, [r3, #148]
	str r0, [r3, #152]
	str r1, [r3, #156]
	str r1, [r3, #160]
	str r2, [r3, #164]
	str r2, [r3, #168]
	str r5, [r3, #172]
	str r5, [r3, #176]
	str r6, [r3, #180]
	str r6, [r3, #184]
	ldr r4, [sp, #36]
	ldr r3, [sp, #4]
	add r4, r4, r3
	ldr r3, [sp, #8]
	str r4, [r3, #188]
	str r0, [r3, #192]
	str r1, [r3, #196]
	str r1, [r3, #200]
	str r2, [r3, #204]
	str r2, [r3, #208]
	str r5, [r3, #212]
	str r5, [r3, #216]
	str r6, [r3, #220]
	str r6, [r3, #224]
	str r4, [r3, #228]
	str r4, [r3, #232]
	ldr r0, [sp, #16]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #236]
	ldr r3, [sp, #4]
	add r0, r3, #1
	cmp r0, #4
	blt label19
	ldr r0, [sp, #220]
	ldr r3, [sp, #216]
	add r0, r0, #1
	add r3, r3, #960
	cmp r0, #3
	str r3, [sp, #216]
	str r0, [sp, #220]
	bge label160
.p2align 4
label14:
	ldr r1, [sp, #172]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #224]
	ldr r1, [sp, #68]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #228]
	ldr r1, [sp, #64]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #232]
	ldr r1, [sp, #56]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #236]
	ldr r1, [sp, #52]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #244]
	ldr r1, [sp, #48]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r1, r0, r1
	str r1, [sp, #252]
	ldr r1, [sp, #44]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r2, r0, r1
	str r2, [sp, #260]
	ldr r1, [sp, #156]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r5, r0, r1
	str r5, [sp, #264]
	ldr r1, [sp, #160]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r6, r0, r1
	str r6, [sp, #268]
	ldr r1, [sp, #164]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r4, r0, r1
	str r4, [sp, #36]
	ldr r1, [sp, #176]
	ldr r0, [sp, #220]
	add r1, r1, r0
	ldr r0, [sp, #212]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r3, [sp, #216]
	str r3, [sp, #8]
	mov r3, #0
	str r3, [sp, #4]
	b label15
label149:
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	mov r1, #0
	str r3, [sp, #272]
	str r1, [sp, #32]
	cmp r1, #10
	blt label25
	b label268
.p2align 4
label640:
	ldr r1, [sp, #32]
	ldr r3, [sp, #272]
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #272]
	str r1, [sp, #32]
	bge label268
.p2align 4
label25:
	ldr r3, [sp, #272]
	mov r0, #0
	str r3, [sp, #28]
	str r0, [sp, #24]
	ldr r1, [sp, #32]
	cmp r0, #2
	add r10, r1, r0
	str r10, [sp, #12]
	blt label29
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #272]
	str r1, [sp, #32]
	blt label25
	b label268
.p2align 4
label277:
	ldr r0, [sp, #24]
	ldr r3, [sp, #28]
	add r0, r0, #1
	add r3, r3, #5376
	cmp r0, #2
	str r3, [sp, #28]
	str r0, [sp, #24]
	ldr r1, [sp, #32]
	add r10, r1, r0
	str r10, [sp, #12]
	bge label640
.p2align 4
label29:
	ldr r3, [sp, #28]
	mov r1, #0
	str r3, [sp, #0]
	cmp r1, #3
	blt label33
	b label277
.p2align 4
label625:
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	bge label277
.p2align 4
label33:
	ldr r3, [sp, #0]
	mov r0, #0
	cmp r0, #2
	blt label38
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	blt label33
	b label277
.p2align 4
label43:
	add r0, r0, #224
.p2align 4
label39:
	str r10, [r0, #0]
	add r11, r11, #1
	str r2, [r0, #4]
	cmp r11, #4
	str r5, [r0, #8]
	str r6, [r0, #12]
	str r7, [r0, #16]
	str r8, [r0, #20]
	str r9, [r0, #24]
	str r10, [r0, #28]
	str r2, [r0, #32]
	str r5, [r0, #36]
	str r6, [r0, #40]
	str r7, [r0, #44]
	str r8, [r0, #48]
	str r9, [r0, #52]
	str r10, [r0, #56]
	str r2, [r0, #60]
	str r5, [r0, #64]
	str r6, [r0, #68]
	str r7, [r0, #72]
	str r8, [r0, #76]
	str r9, [r0, #80]
	str r10, [r0, #84]
	str r2, [r0, #88]
	str r5, [r0, #92]
	str r6, [r0, #96]
	str r7, [r0, #100]
	str r8, [r0, #104]
	str r9, [r0, #108]
	str r10, [r0, #112]
	str r2, [r0, #116]
	str r5, [r0, #120]
	str r6, [r0, #124]
	str r7, [r0, #128]
	str r8, [r0, #132]
	str r9, [r0, #136]
	str r10, [r0, #140]
	str r2, [r0, #144]
	str r5, [r0, #148]
	str r6, [r0, #152]
	str r7, [r0, #156]
	str r8, [r0, #160]
	str r9, [r0, #164]
	str r10, [r0, #168]
	str r2, [r0, #172]
	str r5, [r0, #176]
	str r6, [r0, #180]
	str r7, [r0, #184]
	str r8, [r0, #188]
	str r9, [r0, #192]
	str r10, [r0, #196]
	str r2, [r0, #200]
	str r5, [r0, #204]
	str r6, [r0, #208]
	str r7, [r0, #212]
	str r8, [r0, #216]
	str r9, [r0, #220]
	blt label43
	add r3, r3, #896
	mov r0, r4
	cmp r4, #2
	bge label625
.p2align 4
label38:
	add r4, r0, #1
	ldr r10, [sp, #12]
	add r5, r0, #2
	add r6, r0, #3
	add r7, r0, #4
	add r8, r0, #5
	add r9, r0, #6
	mov r11, #0
	add r2, r10, r4
	add r5, r10, r5
	add r6, r10, r6
	add r7, r10, r7
	add r8, r10, r8
	add r9, r10, r9
	add r10, r10, r0
	mov r0, r3
	b label39
label268:
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	mov r0, #0
	str r3, [sp, #136]
	mov r1, r0
	str r0, [sp, #140]
label47:
	mov r2, #10752
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	ldr r1, [sp, #140]
	cmp r1, #10
	mla r3, r1, r2, r3
	str r3, [sp, #144]
	bge label111
	ldr r3, [sp, #136]
	mov r1, #0
	str r3, [sp, #148]
	str r1, [sp, #152]
label52:
	mov r2, #5376
	ldr r3, [sp, #144]
	ldr r1, [sp, #152]
	cmp r1, #100
	mla r2, r1, r2, r3
	str r2, [sp, #100]
	bge label374
	ldr r3, [sp, #148]
	mov r1, #0
	str r3, [sp, #96]
	str r1, [sp, #92]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #8
	str r2, [sp, #88]
	ldr r1, [sp, #92]
	cmp r1, #1000
	bge label380
.p2align 4
label64:
	ldr r3, [sp, #96]
	mov r1, #0
	str r3, [sp, #84]
	str r1, [sp, #80]
	ldr r2, [sp, #88]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #7
	str r2, [sp, #60]
	ldr r1, [sp, #80]
	movw r2, #10000
	cmp r1, r2
	bge label392
.p2align 4
label72:
	ldr r3, [sp, #84]
	mov r1, #0
	str r3, [sp, #40]
	str r1, [sp, #168]
	ldr r2, [sp, #60]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #5
	str r2, [sp, #180]
	ldr r1, [sp, #168]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label404
.p2align 4
label77:
	ldr r3, [sp, #40]
	mov r1, #0
	str r3, [sp, #184]
	str r1, [sp, #188]
	movw r2, #16960
	movt r2, #15
	cmp r1, r2
	bge label408
.p2align 4
label85:
	ldr r1, [sp, #188]
	ldr r2, [sp, #180]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #2
	str r2, [sp, #196]
	ldr r3, [sp, #128]
	cmp r3, #3
	ble label420
	ldr r3, [sp, #184]
	ldr r1, [r3, #4]
	ldr r2, [r2, #4]
	add r1, r1, r2
	mov r2, r3
	str r1, [sp, #240]
	mov r1, #0
	str r3, [sp, #248]
	str r1, [sp, #256]
	b label100
.p2align 4
label104:
	ldr r2, [sp, #248]
	add r2, r2, #16
	str r2, [sp, #248]
	str r1, [sp, #256]
.p2align 4
label100:
	ldr r2, [sp, #248]
	ldr r1, [r2, #0]
	movw r2, #19413
	movt r2, #41070
	smmla r2, r0, r2, r0
	asr r3, r2, #9
	add r3, r3, r2, lsr #31
	movw r2, #817
	mls r0, r3, r2, r0
	ldr r2, [sp, #196]
	add r0, r1, r0
	ldr r1, [sp, #256]
	add r1, r2, r1, lsl #2
	movw r2, #19413
	movt r2, #41070
	str r1, [sp, #20]
	ldr r1, [r1, #0]
	add r0, r0, r1
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	movw r2, #19413
	movt r2, #41070
	ldr r1, [sp, #240]
	add r0, r1, r0
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	ldr r2, [sp, #248]
	ldr r1, [r2, #8]
	movw r2, #19413
	movt r2, #41070
	add r0, r0, r1
	ldr r1, [sp, #20]
	ldr r1, [r1, #8]
	add r0, r0, r1
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	ldr r2, [sp, #248]
	ldr r1, [r2, #12]
	add r0, r0, r1
	ldr r1, [sp, #20]
	ldr r1, [r1, #12]
	add r0, r0, r1
	ldr r1, [sp, #256]
	ldr r2, [sp, #132]
	add r1, r1, #4
	cmp r2, r1
	bgt label104
	mov r2, r0
	ldr r3, [sp, #128]
	cmp r3, r1
	ble label635
.p2align 4
label93:
	ldr r3, [sp, #184]
	add r0, r3, r1, lsl #2
	b label94
.p2align 4
label98:
	add r0, r0, #4
.p2align 4
label94:
	ldr r3, [r0, #0]
	movw r4, #19413
	movt r4, #41070
	smmla r4, r2, r4, r2
	asr r5, r4, #9
	add r4, r5, r4, lsr #31
	movw r5, #817
	mls r2, r4, r5, r2
	add r3, r3, r2
	ldr r2, [sp, #196]
	ldr r2, [r2, r1, lsl #2]
	add r1, r1, #1
	add r2, r3, r2
	ldr r3, [sp, #128]
	cmp r3, r1
	bgt label98
	ldr r1, [sp, #188]
	ldr r0, [sp, #120]
	add r1, r1, #1
	cmp r0, r1
	ble label634
.p2align 4
label92:
	ldr r3, [sp, #184]
	mov r0, r2
	movw r2, #16960
	movt r2, #15
	cmp r1, r2
	add r3, r3, #8
	str r3, [sp, #184]
	str r1, [sp, #188]
	blt label85
label408:
	mov r2, r0
	ldr r1, [sp, #168]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label84
	ldr r1, [sp, #80]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	ble label630
.p2align 4
label107:
	ldr r3, [sp, #84]
	mov r0, r2
	add r3, r3, #240
	str r3, [sp, #84]
	str r1, [sp, #80]
	ldr r2, [sp, #88]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #7
	str r2, [sp, #60]
	ldr r1, [sp, #80]
	movw r2, #10000
	cmp r1, r2
	blt label72
label392:
	mov r2, r0
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label71
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	bgt label63
	b label108
.p2align 4
label634:
	ldr r1, [sp, #168]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	ble label644
.p2align 4
label84:
	ldr r3, [sp, #40]
	mov r0, r2
	add r3, r3, #48
	str r3, [sp, #40]
	str r1, [sp, #168]
	ldr r2, [sp, #60]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #5
	str r2, [sp, #180]
	ldr r1, [sp, #168]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label77
label404:
	mov r2, r0
	ldr r1, [sp, #80]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label107
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	ble label636
label71:
	ldr r3, [sp, #96]
	mov r0, r2
	add r3, r3, #960
	str r3, [sp, #96]
	str r1, [sp, #92]
	ldr r2, [sp, #100]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #8
	str r2, [sp, #88]
	ldr r1, [sp, #92]
	cmp r1, #1000
	blt label64
label380:
	mov r2, r0
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	bgt label63
	b label108
.p2align 4
label635:
	mov r2, r0
	ldr r1, [sp, #188]
	ldr r0, [sp, #120]
	add r1, r1, #1
	cmp r0, r1
	bgt label92
	ldr r1, [sp, #168]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label84
	ldr r1, [sp, #80]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label107
label643:
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label71
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	bgt label63
	b label108
.p2align 4
label644:
	ldr r1, [sp, #80]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label107
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label71
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	ble label108
label63:
	ldr r3, [sp, #148]
	mov r0, r2
	add r3, r3, #2880
	str r3, [sp, #148]
	str r1, [sp, #152]
	b label52
label420:
	mov r1, #0
	mov r2, r0
	mov r0, r1
	ldr r3, [sp, #128]
	cmp r3, r1
	bgt label93
	mov r2, r1
	ldr r1, [sp, #188]
	ldr r0, [sp, #120]
	add r1, r1, #1
	cmp r0, r1
	bgt label92
	ldr r1, [sp, #168]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label84
	ldr r1, [sp, #80]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label107
	b label643
label108:
	ldr r1, [sp, #140]
	ldr r0, [sp, #124]
	add r1, r1, #1
	cmp r0, r1
	bgt label110
	mov r0, r2
label111:
	add sp, sp, #284
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label630:
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label71
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	bgt label63
	b label108
label636:
	ldr r1, [sp, #152]
	ldr r0, [sp, #116]
	add r1, r1, #1
	cmp r0, r1
	bgt label63
	b label108
label374:
	mov r2, r0
	b label108
label110:
	ldr r3, [sp, #136]
	mov r0, r2
	add r3, r3, #5760
	str r3, [sp, #136]
	str r1, [sp, #140]
	b label47
