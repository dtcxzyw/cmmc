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
	str r0, [sp, #68]
	bl getint
	add r1, r4, r0
	str r0, [sp, #72]
	str r1, [sp, #64]
	ldr r0, [sp, #68]
	ldr r2, [sp, #72]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #60]
	ldr r0, [sp, #68]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #52]
	ldr r0, [sp, #68]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #48]
	ldr r0, [sp, #68]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #44]
	ldr r0, [sp, #68]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #40]
	ldr r0, [sp, #68]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #152]
	ldr r0, [sp, #68]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #156]
	ldr r0, [sp, #68]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #68]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #172]
	ldr r0, [sp, #68]
	add r1, r0, r2
	str r1, [sp, #168]
	bl getint
	str r0, [sp, #120]
	bl getint
	str r0, [sp, #112]
	bl getint
	str r0, [sp, #104]
	bl getint
	str r0, [sp, #100]
	bl getint
	str r0, [sp, #108]
	bl getint
	str r0, [sp, #116]
	bl getint
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	sub r1, r0, #3
	str r0, [sp, #124]
	mov r4, r0
	str r1, [sp, #128]
	mov r1, #0
	str r3, [sp, #188]
	str r1, [sp, #196]
	b label2
.p2align 4
label154:
	ldr r1, [sp, #196]
	ldr r3, [sp, #188]
	add r1, r1, #1
	add r3, r3, #5760
	str r3, [sp, #188]
	str r1, [sp, #196]
.p2align 4
label2:
	ldr r0, [sp, #68]
	ldr r1, [sp, #196]
	ldr r2, [sp, #72]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	beq label149
	ldr r3, [sp, #188]
	mov r0, #0
	str r3, [sp, #200]
	str r0, [sp, #204]
	ldr r1, [sp, #196]
	add r0, r1, r0
	str r0, [sp, #208]
	ldr r0, [sp, #204]
	cmp r0, #2
	blt label9
	b label154
.p2align 4
label13:
	ldr r0, [sp, #204]
	ldr r3, [sp, #200]
	add r0, r0, #1
	add r3, r3, #2880
	str r3, [sp, #200]
	str r0, [sp, #204]
	ldr r1, [sp, #196]
	add r0, r1, r0
	str r0, [sp, #208]
	ldr r0, [sp, #204]
	cmp r0, #2
	bge label154
.p2align 4
label9:
	ldr r3, [sp, #200]
	mov r0, #0
	str r3, [sp, #212]
	str r0, [sp, #216]
	cmp r0, #3
	blt label14
	b label13
.p2align 4
label18:
	ldr r3, [sp, #8]
	add r3, r3, #240
	str r3, [sp, #8]
	str r0, [sp, #4]
	mov r3, r0
.p2align 4
label15:
	ldr r0, [sp, #220]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #0]
	ldr r0, [sp, #224]
	ldr r3, [sp, #4]
	add r5, r0, r3
	ldr r3, [sp, #8]
	str r5, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [sp, #228]
	ldr r3, [sp, #4]
	add r6, r0, r3
	ldr r3, [sp, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	ldr r0, [sp, #232]
	ldr r3, [sp, #4]
	add r4, r0, r3
	ldr r3, [sp, #8]
	str r4, [r3, #20]
	str r4, [r3, #24]
	ldr r0, [sp, #240]
	ldr r3, [sp, #4]
	add r0, r0, r3
	ldr r3, [sp, #8]
	str r0, [r3, #28]
	str r0, [r3, #32]
	ldr r1, [sp, #248]
	ldr r3, [sp, #4]
	add r1, r1, r3
	ldr r3, [sp, #8]
	str r1, [r3, #36]
	str r1, [r3, #40]
	ldr r2, [sp, #252]
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
	ldr r5, [sp, #256]
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
	ldr r6, [sp, #264]
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
	ldr r4, [sp, #32]
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
	blt label18
	ldr r0, [sp, #216]
	ldr r3, [sp, #212]
	add r0, r0, #1
	add r3, r3, #960
	cmp r0, #3
	str r3, [sp, #212]
	str r0, [sp, #216]
	bge label13
.p2align 4
label14:
	ldr r1, [sp, #168]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #220]
	ldr r1, [sp, #64]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #224]
	ldr r1, [sp, #60]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #228]
	ldr r1, [sp, #52]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #232]
	ldr r1, [sp, #48]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #240]
	ldr r1, [sp, #44]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r1, r0, r1
	str r1, [sp, #248]
	ldr r1, [sp, #40]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r2, r0, r1
	str r2, [sp, #252]
	ldr r1, [sp, #152]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r5, r0, r1
	str r5, [sp, #256]
	ldr r1, [sp, #156]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r6, r0, r1
	str r6, [sp, #264]
	ldr r1, [sp, #160]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r4, r0, r1
	str r4, [sp, #32]
	ldr r1, [sp, #172]
	ldr r0, [sp, #216]
	add r1, r1, r0
	ldr r0, [sp, #208]
	add r0, r0, r1
	str r0, [sp, #16]
	ldr r3, [sp, #212]
	str r3, [sp, #8]
	mov r3, #0
	str r3, [sp, #4]
	b label15
label149:
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	mov r1, #0
	str r3, [sp, #268]
	str r1, [sp, #28]
	cmp r1, #10
	blt label92
	b label25
.p2align 4
label636:
	ldr r1, [sp, #28]
	ldr r3, [sp, #268]
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #268]
	str r1, [sp, #28]
	bge label25
.p2align 4
label92:
	ldr r3, [sp, #268]
	mov r0, #0
	str r3, [sp, #24]
	str r0, [sp, #20]
	ldr r1, [sp, #28]
	cmp r0, #2
	add r10, r1, r0
	str r10, [sp, #12]
	blt label96
	add r1, r1, #1
	add r3, r3, #10752
	cmp r1, #10
	str r3, [sp, #268]
	str r1, [sp, #28]
	blt label92
	b label25
.p2align 4
label100:
	ldr r0, [sp, #20]
	ldr r3, [sp, #24]
	add r0, r0, #1
	add r3, r3, #5376
	cmp r0, #2
	str r3, [sp, #24]
	str r0, [sp, #20]
	ldr r1, [sp, #28]
	add r10, r1, r0
	str r10, [sp, #12]
	bge label636
.p2align 4
label96:
	ldr r3, [sp, #24]
	mov r1, #0
	str r3, [sp, #0]
	cmp r1, #3
	blt label101
	b label100
.p2align 4
label649:
	add r1, r1, #1
	ldr r3, [sp, #0]
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	bge label100
.p2align 4
label101:
	ldr r3, [sp, #0]
	mov r0, #0
	cmp r0, #2
	blt label106
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #1792
	str r3, [sp, #0]
	blt label101
	b label100
.p2align 4
label110:
	add r0, r0, #224
.p2align 4
label107:
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
	blt label110
	add r3, r3, #896
	mov r0, r4
	cmp r4, #2
	bge label649
.p2align 4
label106:
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
	b label107
label25:
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	mov r0, #0
	str r3, [sp, #132]
	mov r1, r0
	str r0, [sp, #136]
label26:
	mov r2, #10752
	movw r3, #:lower16:arr2
	movt r3, #:upper16:arr2
	ldr r1, [sp, #136]
	cmp r1, #10
	mla r3, r1, r2, r3
	str r3, [sp, #140]
	bge label30
	ldr r3, [sp, #132]
	mov r1, #0
	str r3, [sp, #144]
	str r1, [sp, #148]
label33:
	mov r2, #5376
	ldr r3, [sp, #140]
	ldr r1, [sp, #148]
	cmp r1, #100
	mla r2, r1, r2, r3
	str r2, [sp, #96]
	bge label281
	ldr r3, [sp, #144]
	mov r1, #0
	str r3, [sp, #92]
	str r1, [sp, #88]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #8
	str r2, [sp, #84]
	ldr r1, [sp, #88]
	cmp r1, #1000
	bge label287
.p2align 4
label42:
	ldr r3, [sp, #92]
	mov r1, #0
	str r3, [sp, #80]
	str r1, [sp, #76]
	ldr r2, [sp, #84]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #7
	str r2, [sp, #56]
	ldr r1, [sp, #76]
	movw r2, #10000
	cmp r1, r2
	bge label293
.p2align 4
label47:
	ldr r3, [sp, #80]
	mov r1, #0
	str r3, [sp, #36]
	str r1, [sp, #164]
	ldr r2, [sp, #56]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #5
	str r2, [sp, #176]
	ldr r1, [sp, #164]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label299
.p2align 4
label52:
	ldr r3, [sp, #36]
	str r3, [sp, #180]
	mov r3, #0
	str r3, [sp, #184]
	movw r1, #16960
	movt r1, #15
	cmp r3, r1
	bge label303
.p2align 4
label60:
	ldr r3, [sp, #184]
	ldr r2, [sp, #176]
	rsb r1, r3, r3, lsl #3
	add r3, r2, r1, lsl #2
	str r3, [sp, #192]
	ldr r4, [sp, #124]
	cmp r4, #3
	ble label315
	mov r2, #0
	str r3, [sp, #236]
	mov r1, r3
	str r2, [sp, #244]
	b label75
.p2align 4
label79:
	ldr r1, [sp, #236]
	add r1, r1, #16
	str r1, [sp, #236]
	str r2, [sp, #244]
.p2align 4
label75:
	ldr r1, [sp, #180]
	ldr r2, [sp, #244]
	add r1, r1, r2, lsl #2
	movw r2, #19413
	movt r2, #41070
	str r1, [sp, #260]
	smmla r2, r0, r2, r0
	ldr r1, [r1, #0]
	asr r3, r2, #9
	add r3, r3, r2, lsr #31
	movw r2, #817
	mls r0, r3, r2, r0
	movw r2, #19413
	movt r2, #41070
	add r0, r1, r0
	ldr r1, [sp, #236]
	ldr r1, [r1, #0]
	add r0, r0, r1
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	movw r2, #19413
	movt r2, #41070
	ldr r1, [sp, #260]
	ldr r1, [r1, #4]
	add r0, r0, r1
	ldr r1, [sp, #236]
	ldr r1, [r1, #4]
	add r0, r0, r1
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	movw r2, #19413
	movt r2, #41070
	ldr r1, [sp, #260]
	ldr r1, [r1, #8]
	add r0, r0, r1
	ldr r1, [sp, #236]
	ldr r1, [r1, #8]
	add r0, r0, r1
	smmla r1, r0, r2, r0
	asr r2, r1, #9
	add r1, r2, r1, lsr #31
	movw r2, #817
	mls r0, r1, r2, r0
	ldr r1, [sp, #260]
	ldr r1, [r1, #12]
	add r0, r0, r1
	ldr r1, [sp, #236]
	ldr r1, [r1, #12]
	ldr r2, [sp, #244]
	add r0, r0, r1
	add r2, r2, #4
	ldr r1, [sp, #128]
	cmp r1, r2
	bgt label79
	mov r3, r2
	ldr r4, [sp, #124]
	mov r2, r0
	cmp r4, r3
	ble label631
.p2align 4
label65:
	ldr r1, [sp, #180]
	add r0, r1, r3, lsl #2
	mov r1, r3
	b label66
.p2align 4
label70:
	add r0, r0, #4
.p2align 4
label66:
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
	ldr r4, [sp, #124]
	add r1, r1, #1
	add r2, r2, r3
	cmp r4, r1
	bgt label70
	ldr r3, [sp, #184]
	ldr r0, [sp, #116]
	add r3, r3, #1
	cmp r0, r3
	ble label628
.p2align 4
label73:
	ldr r1, [sp, #180]
	mov r0, r2
	add r1, r1, #8
	str r1, [sp, #180]
	movw r1, #16960
	movt r1, #15
	str r3, [sp, #184]
	cmp r3, r1
	blt label60
label303:
	mov r2, r0
	ldr r1, [sp, #164]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label59
	ldr r1, [sp, #76]
	ldr r0, [sp, #100]
	add r1, r1, #1
	cmp r0, r1
	bgt label82
	ldr r1, [sp, #88]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label85
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label88
	b label89
.p2align 4
label628:
	ldr r1, [sp, #164]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label59
	ldr r1, [sp, #76]
	ldr r0, [sp, #100]
	add r1, r1, #1
	cmp r0, r1
	bgt label82
	ldr r1, [sp, #88]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	ble label656
label85:
	ldr r3, [sp, #92]
	mov r0, r2
	add r3, r3, #960
	str r3, [sp, #92]
	str r1, [sp, #88]
	ldr r2, [sp, #96]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #8
	str r2, [sp, #84]
	ldr r1, [sp, #88]
	cmp r1, #1000
	blt label42
label287:
	mov r2, r0
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label88
	b label89
.p2align 4
label631:
	mov r2, r0
	ldr r3, [sp, #184]
	ldr r0, [sp, #116]
	add r3, r3, #1
	cmp r0, r3
	bgt label73
	ldr r1, [sp, #164]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	bgt label59
	ldr r1, [sp, #76]
	ldr r0, [sp, #100]
	add r1, r1, #1
	cmp r0, r1
	ble label644
.p2align 4
label82:
	ldr r3, [sp, #80]
	mov r0, r2
	add r3, r3, #240
	str r3, [sp, #80]
	str r1, [sp, #76]
	ldr r2, [sp, #84]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #7
	str r2, [sp, #56]
	ldr r1, [sp, #76]
	movw r2, #10000
	cmp r1, r2
	blt label47
label293:
	mov r2, r0
	ldr r1, [sp, #88]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label85
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label88
	b label89
label315:
	mov r3, #0
	mov r2, r0
	mov r0, r3
	ldr r4, [sp, #124]
	cmp r4, r3
	bgt label65
	mov r2, r3
	ldr r3, [sp, #184]
	ldr r0, [sp, #116]
	add r3, r3, #1
	cmp r0, r3
	bgt label73
	ldr r1, [sp, #164]
	ldr r0, [sp, #108]
	add r1, r1, #1
	cmp r0, r1
	ble label642
.p2align 4
label59:
	ldr r3, [sp, #36]
	mov r0, r2
	add r3, r3, #48
	str r3, [sp, #36]
	str r1, [sp, #164]
	ldr r2, [sp, #56]
	rsb r1, r1, r1, lsl #3
	add r2, r2, r1, lsl #5
	str r2, [sp, #176]
	ldr r1, [sp, #164]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label52
label299:
	mov r2, r0
	ldr r1, [sp, #76]
	ldr r0, [sp, #100]
	add r1, r1, #1
	cmp r0, r1
	bgt label82
	ldr r1, [sp, #88]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label85
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label88
	b label89
label644:
	ldr r1, [sp, #88]
	ldr r0, [sp, #104]
	add r1, r1, #1
	cmp r0, r1
	bgt label85
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	bgt label88
	b label89
label656:
	ldr r1, [sp, #148]
	ldr r0, [sp, #112]
	add r1, r1, #1
	cmp r0, r1
	ble label89
label88:
	ldr r3, [sp, #144]
	mov r0, r2
	add r3, r3, #2880
	str r3, [sp, #144]
	str r1, [sp, #148]
	b label33
label89:
	ldr r1, [sp, #136]
	ldr r0, [sp, #120]
	add r1, r1, #1
	cmp r0, r1
	ble label397
	ldr r3, [sp, #132]
	mov r0, r2
	add r3, r3, #5760
	str r3, [sp, #132]
	str r1, [sp, #136]
	b label26
label397:
	mov r0, r2
label30:
	add sp, sp, #276
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label642:
	ldr r1, [sp, #76]
	ldr r0, [sp, #100]
	add r1, r1, #1
	cmp r0, r1
	bgt label82
	b label644
label281:
	mov r2, r0
	b label89
