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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[272] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #276
	bl getint
	add r4, r0, #1
	str r0, [sp, #80]
	bl getint
	str r0, [sp, #84]
	add r1, r4, r0
	str r1, [sp, #76]
	ldr r0, [sp, #80]
	ldr r2, [sp, #84]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #68]
	ldr r0, [sp, #80]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #64]
	ldr r0, [sp, #80]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #60]
	ldr r0, [sp, #80]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #52]
	ldr r0, [sp, #80]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #48]
	ldr r0, [sp, #80]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #44]
	ldr r0, [sp, #80]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #36]
	ldr r0, [sp, #80]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #152]
	ldr r0, [sp, #80]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #80]
	add r1, r0, r2
	str r1, [sp, #156]
	bl getint
	str r0, [sp, #120]
	mov r1, r0
	bl getint
	str r0, [sp, #112]
	mov r1, r0
	bl getint
	str r0, [sp, #104]
	mov r1, r0
	bl getint
	str r0, [sp, #100]
	mov r1, r0
	bl getint
	str r0, [sp, #108]
	mov r1, r0
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	bl getint
	movw r1, #:lower16:arr1
	movt r1, #:upper16:arr1
	str r0, [sp, #124]
	mov r3, r1
	str r1, [sp, #180]
	mov r1, #0
	str r1, [sp, #184]
	b label2
.p2align 4
label9:
	ldr r1, [sp, #184]
	ldr r3, [sp, #180]
	add r1, r1, #1
	add r3, r3, #5760
	str r3, [sp, #180]
	str r1, [sp, #184]
.p2align 4
label2:
	ldr r0, [sp, #80]
	ldr r1, [sp, #184]
	ldr r2, [sp, #84]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	beq label145
	ldr r3, [sp, #180]
	mov r0, #0
	str r3, [sp, #196]
	str r0, [sp, #200]
	ldr r1, [sp, #184]
	add r0, r1, r0
	str r0, [sp, #204]
	ldr r0, [sp, #200]
	cmp r0, #2
	blt label10
	b label9
.p2align 4
label156:
	ldr r0, [sp, #200]
	ldr r3, [sp, #196]
	add r0, r0, #1
	add r3, r3, #2880
	str r3, [sp, #196]
	str r0, [sp, #200]
	ldr r1, [sp, #184]
	add r0, r1, r0
	str r0, [sp, #204]
	ldr r0, [sp, #200]
	cmp r0, #2
	bge label9
.p2align 4
label10:
	ldr r3, [sp, #196]
	mov r0, #0
	str r3, [sp, #208]
	str r0, [sp, #212]
	cmp r0, #3
	blt label14
	b label156
.p2align 4
label19:
	ldr r3, [sp, #8]
	add r3, r3, #240
	str r3, [sp, #8]
	str r0, [sp, #4]
	mov r3, r0
.p2align 4
label15:
	ldr r0, [sp, #216]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #0]
	ldr r0, [sp, #220]
	ldr r3, [sp, #4]
	add r5, r0, r3
	ldr r3, [sp, #8]
	str r5, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [sp, #224]
	ldr r3, [sp, #4]
	add r6, r0, r3
	ldr r3, [sp, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	ldr r0, [sp, #228]
	ldr r3, [sp, #4]
	add r4, r0, r3
	ldr r3, [sp, #8]
	str r4, [r3, #20]
	str r4, [r3, #24]
	ldr r0, [sp, #232]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #28]
	str r0, [r3, #32]
	ldr r1, [sp, #236]
	ldr r3, [sp, #4]
	add r1, r1, r3
	ldr r3, [sp, #8]
	str r1, [r3, #36]
	str r1, [r3, #40]
	ldr r2, [sp, #244]
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
	ldr r5, [sp, #252]
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
	ldr r6, [sp, #260]
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
	ldr r4, [sp, #268]
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
	ldr r0, [sp, #212]
	ldr r3, [sp, #208]
	add r0, r0, #1
	add r3, r3, #960
	cmp r0, #3
	str r3, [sp, #208]
	str r0, [sp, #212]
	bge label156
.p2align 4
label14:
	ldr r1, [sp, #156]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #216]
	ldr r1, [sp, #76]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #220]
	ldr r1, [sp, #68]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #224]
	ldr r1, [sp, #64]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #228]
	ldr r1, [sp, #60]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #232]
	ldr r1, [sp, #52]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r1, r0, r1
	str r1, [sp, #236]
	ldr r1, [sp, #48]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r2, r0, r1
	str r2, [sp, #244]
	ldr r1, [sp, #44]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r5, r0, r1
	str r5, [sp, #252]
	ldr r1, [sp, #36]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r6, r0, r1
	str r6, [sp, #260]
	ldr r1, [sp, #152]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r4, r0, r1
	str r4, [sp, #268]
	ldr r1, [sp, #160]
	ldr r0, [sp, #212]
	add r1, r1, r0
	ldr r0, [sp, #204]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r3, [sp, #208]
	str r3, [sp, #8]
	mov r3, #0
	str r3, [sp, #4]
	b label15
label145:
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	mov r1, #0
	str r3, [sp, #264]
	str r1, [sp, #32]
	cmp r1, #10
	blt label25
	b label265
.p2align 4
label634:
	ldr r1, [sp, #32]
	ldr r3, [sp, #264]
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #264]
	str r1, [sp, #32]
	bge label265
.p2align 4
label25:
	ldr r3, [sp, #264]
	mov r0, #0
	str r3, [sp, #24]
	str r0, [sp, #20]
	ldr r1, [sp, #32]
	cmp r0, #2
	add r10, r1, r0
	str r10, [sp, #12]
	blt label30
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #264]
	str r1, [sp, #32]
	blt label25
	b label265
.p2align 4
label276:
	ldr r0, [sp, #20]
	ldr r3, [sp, #24]
	add r0, r0, #1
	add r3, r3, #5376
	cmp r0, #2
	str r3, [sp, #24]
	str r0, [sp, #20]
	ldr r1, [sp, #32]
	add r10, r1, r0
	str r10, [sp, #12]
	bge label634
.p2align 4
label30:
	ldr r3, [sp, #24]
	mov r1, #0
	str r3, [sp, #0]
	cmp r1, #3
	blt label34
	b label276
.p2align 4
label636:
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	bge label276
.p2align 4
label34:
	ldr r3, [sp, #0]
	mov r0, #0
	cmp r0, #2
	blt label38
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	blt label34
	b label276
.p2align 4
label42:
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
	blt label42
	add r3, r3, #896
	mov r0, r4
	cmp r4, #2
	bge label636
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
label265:
	movw r1, #:lower16:arr1
	movt r1, #:upper16:arr1
	mov r2, #0
	str r1, [sp, #128]
	mov r0, r2
	str r2, [sp, #132]
label47:
	mov r1, #10752
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	ldr r0, [sp, #132]
	cmp r0, #10
	mla r3, r0, r1, r3
	str r3, [sp, #136]
	bge label108
	ldr r1, [sp, #128]
	mov r0, #0
	str r1, [sp, #140]
	str r0, [sp, #144]
label52:
	mov r1, #5376
	ldr r3, [sp, #136]
	ldr r0, [sp, #144]
	cmp r0, #100
	mla r1, r0, r1, r3
	str r1, [sp, #148]
	bge label105
	ldr r1, [sp, #140]
	mov r0, #0
	str r1, [sp, #96]
	str r0, [sp, #92]
	ldr r1, [sp, #148]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #88]
	ldr r0, [sp, #92]
	cmp r0, #1000
	bge label61
.p2align 4
label64:
	ldr r1, [sp, #96]
	mov r0, #0
	str r1, [sp, #72]
	str r0, [sp, #56]
	ldr r1, [sp, #88]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #40]
	ldr r0, [sp, #56]
	movw r1, #10000
	cmp r0, r1
	bge label69
.p2align 4
label72:
	ldr r1, [sp, #72]
	mov r0, #0
	str r1, [sp, #164]
	str r0, [sp, #168]
	ldr r1, [sp, #40]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #5
	str r1, [sp, #172]
	ldr r0, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label102
.p2align 4
label77:
	ldr r1, [sp, #164]
	mov r0, #0
	str r1, [sp, #176]
	str r0, [sp, #188]
	movw r1, #16960
	movt r1, #15
	cmp r0, r1
	bge label82
.p2align 4
label85:
	ldr r0, [sp, #188]
	ldr r1, [sp, #172]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #2
	str r3, [sp, #192]
	ldr r1, [sp, #124]
	cmp r1, #3
	ble label418
	ldr r1, [sp, #176]
	ldr r1, [r1, #0]
	ldr r0, [r3, #8]
	ldr r3, [r3, #0]
	add r3, r1, r3
	str r3, [sp, #240]
	ldr r1, [sp, #176]
	ldr r1, [r1, #4]
	ldr r3, [sp, #192]
	ldr r3, [r3, #4]
	add r3, r1, r3
	str r3, [sp, #248]
	ldr r1, [sp, #176]
	ldr r1, [r1, #8]
	add r3, r0, r1
	str r3, [sp, #256]
	ldr r1, [sp, #176]
	ldr r0, [r1, #12]
	ldr r3, [sp, #192]
	ldr r1, [r3, #12]
	add r1, r0, r1
	str r1, [sp, #28]
.p2align 4
label100:
	movw r0, #19413
	movt r0, #41070
	smmla r1, r2, r0, r2
	asr r3, r1, #9
	add r3, r3, r1, lsr #31
	movw r1, #817
	mls r2, r3, r1, r2
	ldr r3, [sp, #240]
	add r2, r3, r2
	smmla r3, r2, r0, r2
	asr r4, r3, #9
	add r3, r4, r3, lsr #31
	mls r2, r3, r1, r2
	ldr r3, [sp, #248]
	add r2, r3, r2
	smmla r3, r2, r0, r2
	asr r4, r3, #9
	add r3, r4, r3, lsr #31
	mls r2, r3, r1, r2
	ldr r3, [sp, #256]
	add r2, r3, r2
	smmla r0, r2, r0, r2
	asr r3, r0, #9
	add r0, r3, r0, lsr #31
	mls r0, r0, r1, r2
	ldr r1, [sp, #28]
	add r2, r1, r0
	ldr r1, [sp, #124]
	cmp r1, #7
	bgt label100
	mov r3, #4
	mov r4, r2
	cmp r1, r3
	ble label630
.p2align 4
label90:
	ldr r1, [sp, #176]
	mov r2, r4
	add r0, r1, r3, lsl #2
	mov r1, r3
	b label91
.p2align 4
label95:
	add r0, r0, #4
	mov r1, r3
.p2align 4
label91:
	ldr r3, [r0, #0]
	movw r4, #19413
	movt r4, #41070
	smmla r4, r2, r4, r2
	asr r5, r4, #9
	add r4, r5, r4, lsr #31
	movw r5, #817
	mls r2, r4, r5, r2
	add r2, r3, r2
	ldr r3, [sp, #192]
	ldr r3, [r3, r1, lsl #2]
	add r2, r2, r3
	add r3, r1, #1
	ldr r1, [sp, #124]
	cmp r1, r3
	bgt label95
	ldr r0, [sp, #188]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label98
	ldr r0, [sp, #168]
	ldr r1, [sp, #108]
	add r0, r0, #1
	cmp r1, r0
	ble label639
.p2align 4
label84:
	ldr r1, [sp, #164]
	add r1, r1, #48
	str r1, [sp, #164]
	str r0, [sp, #168]
	ldr r1, [sp, #40]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #5
	str r1, [sp, #172]
	ldr r0, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	blt label77
	b label102
.p2align 4
label630:
	ldr r0, [sp, #188]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label98
	ldr r0, [sp, #168]
	ldr r1, [sp, #108]
	add r0, r0, #1
	cmp r1, r0
	bgt label84
	ldr r0, [sp, #56]
	ldr r1, [sp, #100]
	add r0, r0, #1
	cmp r1, r0
	bgt label104
label640:
	ldr r0, [sp, #92]
	ldr r1, [sp, #104]
	add r0, r0, #1
	cmp r1, r0
	ble label648
label71:
	ldr r1, [sp, #96]
	add r1, r1, #960
	str r1, [sp, #96]
	str r0, [sp, #92]
	ldr r1, [sp, #148]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #88]
	ldr r0, [sp, #92]
	cmp r0, #1000
	blt label64
	b label61
.p2align 4
label639:
	ldr r0, [sp, #56]
	ldr r1, [sp, #100]
	add r0, r0, #1
	cmp r1, r0
	ble label647
.p2align 4
label104:
	ldr r1, [sp, #72]
	add r1, r1, #240
	str r1, [sp, #72]
	str r0, [sp, #56]
	ldr r1, [sp, #88]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #40]
	ldr r0, [sp, #56]
	movw r1, #10000
	cmp r0, r1
	blt label72
	b label69
label418:
	mov r3, #0
	mov r4, r2
	mov r2, r3
	ldr r1, [sp, #124]
	cmp r1, r3
	bgt label90
	ldr r0, [sp, #188]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	bgt label98
	ldr r0, [sp, #168]
	ldr r1, [sp, #108]
	add r0, r0, #1
	cmp r1, r0
	bgt label84
	ldr r0, [sp, #56]
	ldr r1, [sp, #100]
	add r0, r0, #1
	cmp r1, r0
	bgt label104
	b label640
.p2align 4
label647:
	ldr r0, [sp, #92]
	ldr r1, [sp, #104]
	add r0, r0, #1
	cmp r1, r0
	bgt label71
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	bgt label63
label105:
	ldr r0, [sp, #132]
	ldr r1, [sp, #120]
	add r0, r0, #1
	cmp r1, r0
	ble label108
	ldr r1, [sp, #128]
	add r1, r1, #5760
	str r1, [sp, #128]
	str r0, [sp, #132]
	b label47
label108:
	mov r0, r2
	add sp, sp, #276
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label82:
	ldr r0, [sp, #168]
	ldr r1, [sp, #108]
	add r0, r0, #1
	cmp r1, r0
	bgt label84
	ldr r0, [sp, #56]
	ldr r1, [sp, #100]
	add r0, r0, #1
	cmp r1, r0
	bgt label104
	ldr r0, [sp, #92]
	ldr r1, [sp, #104]
	add r0, r0, #1
	cmp r1, r0
	bgt label71
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	bgt label63
	b label105
label648:
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	bgt label63
	b label105
.p2align 4
label98:
	ldr r1, [sp, #176]
	add r1, r1, #8
	str r1, [sp, #176]
	movw r1, #16960
	movt r1, #15
	str r0, [sp, #188]
	cmp r0, r1
	blt label85
	b label82
label102:
	ldr r0, [sp, #56]
	ldr r1, [sp, #100]
	add r0, r0, #1
	cmp r1, r0
	bgt label104
	ldr r0, [sp, #92]
	ldr r1, [sp, #104]
	add r0, r0, #1
	cmp r1, r0
	bgt label71
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	bgt label63
	b label105
label69:
	ldr r0, [sp, #92]
	ldr r1, [sp, #104]
	add r0, r0, #1
	cmp r1, r0
	bgt label71
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	ble label105
label63:
	ldr r1, [sp, #140]
	add r1, r1, #2880
	str r1, [sp, #140]
	str r0, [sp, #144]
	b label52
label61:
	ldr r0, [sp, #144]
	ldr r1, [sp, #112]
	add r0, r0, #1
	cmp r1, r0
	bgt label63
	b label105
