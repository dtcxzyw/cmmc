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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[236] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #244
	bl getint
	mov r4, #0
	cmp r0, #0
	str r0, [sp, #172]
	movwgt r4, #1
	bl getint
	cmp r0, #0
	str r0, [sp, #120]
	mov r0, #0
	movwgt r0, #1
	and r4, r4, r0
	ldr r0, [sp, #172]
	ldr r1, [sp, #120]
	add r0, r0, #1
	add r0, r1, r0
	str r0, [sp, #180]
	ldr r0, [sp, #172]
	add r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #184]
	ldr r0, [sp, #172]
	add r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #188]
	ldr r0, [sp, #172]
	add r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #196]
	ldr r0, [sp, #172]
	add r0, r0, #5
	add r0, r1, r0
	str r0, [sp, #200]
	ldr r0, [sp, #172]
	add r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #204]
	ldr r0, [sp, #172]
	add r0, r0, #7
	add r0, r1, r0
	str r0, [sp, #212]
	ldr r0, [sp, #172]
	add r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #216]
	ldr r0, [sp, #172]
	add r0, r0, #9
	add r0, r1, r0
	str r0, [sp, #220]
	ldr r0, [sp, #172]
	add r0, r0, #10
	add r0, r1, r0
	str r0, [sp, #232]
	ldr r0, [sp, #172]
	add r0, r0, r1
	str r0, [sp, #228]
	bl getint
	str r0, [sp, #148]
	mov r1, r0
	bl getint
	str r0, [sp, #156]
	mov r1, r0
	bl getint
	str r0, [sp, #164]
	mov r1, r0
	bl getint
	str r0, [sp, #168]
	mov r1, r0
	bl getint
	str r0, [sp, #160]
	mov r1, r0
	bl getint
	str r0, [sp, #152]
	mov r1, r0
	bl getint
	cmp r4, #0
	str r0, [sp, #144]
	mov r3, r0
	beq label2
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	mov r4, #0
	str r3, [sp, #100]
	mov r2, r3
	b label83
.p2align 4
label94:
	ldr r0, [sp, #172]
	ldr r4, [sp, #64]
	ldr r1, [sp, #120]
	cmp r0, r4
	mov r0, #0
	movwgt r0, #1
	cmp r1, r4
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	beq label2
	ldr r2, [sp, #100]
	add r2, r2, #5760
	str r2, [sp, #100]
.p2align 4
label83:
	ldr r0, [sp, #228]
	add r0, r0, r4
	str r0, [sp, #88]
	ldr r0, [sp, #180]
	add r0, r0, r4
	str r0, [sp, #84]
	ldr r0, [sp, #184]
	add r0, r0, r4
	str r0, [sp, #80]
	ldr r0, [sp, #188]
	add r0, r0, r4
	str r0, [sp, #72]
	ldr r0, [sp, #196]
	add r0, r0, r4
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	add r1, r0, r4
	str r1, [sp, #60]
	ldr r0, [sp, #204]
	add r2, r0, r4
	str r2, [sp, #52]
	ldr r0, [sp, #212]
	add r6, r0, r4
	str r6, [sp, #48]
	ldr r0, [sp, #216]
	add r5, r0, r4
	str r5, [sp, #44]
	ldr r0, [sp, #220]
	add r3, r0, r4
	str r3, [sp, #40]
	ldr r0, [sp, #232]
	add r0, r0, r4
	add r4, r4, #1
	str r0, [sp, #36]
	str r4, [sp, #64]
	mov r4, #0
	ldr r2, [sp, #100]
	str r2, [sp, #28]
	str r4, [sp, #24]
	str r4, [sp, #16]
	str r4, [sp, #20]
	b label86
.p2align 4
label483:
	str r4, [sp, #24]
.p2align 4
label86:
	ldr r0, [sp, #88]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r0, r4, r0
	ldr r4, [sp, #16]
	ldr r2, [sp, #28]
	rsb r1, r4, r4, lsl #4
	ldr r4, [sp, #24]
	add r1, r2, r1, lsl #6
	rsb r2, r4, r4, lsl #4
	add r4, r1, r2, lsl #4
	str r4, [sp, #12]
	str r0, [r4, #0]
	ldr r0, [sp, #84]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r6, r4, r0
	ldr r4, [sp, #12]
	str r6, [r4, #4]
	str r6, [r4, #8]
	ldr r0, [sp, #80]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r5, r4, r0
	ldr r4, [sp, #12]
	str r5, [r4, #12]
	str r5, [r4, #16]
	ldr r0, [sp, #72]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r3, r4, r0
	ldr r4, [sp, #12]
	str r3, [r4, #20]
	str r3, [r4, #24]
	ldr r0, [sp, #68]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r0, r4, r0
	ldr r4, [sp, #12]
	str r0, [r4, #28]
	str r0, [r4, #32]
	ldr r1, [sp, #60]
	ldr r4, [sp, #24]
	add r1, r1, r4
	ldr r4, [sp, #16]
	add r1, r4, r1
	ldr r4, [sp, #20]
	add r1, r4, r1
	ldr r4, [sp, #12]
	str r1, [r4, #36]
	str r1, [r4, #40]
	ldr r2, [sp, #52]
	ldr r4, [sp, #24]
	add r2, r2, r4
	ldr r4, [sp, #16]
	add r2, r4, r2
	ldr r4, [sp, #20]
	add r2, r4, r2
	ldr r4, [sp, #12]
	str r2, [r4, #44]
	str r6, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r3, [r4, #60]
	str r3, [r4, #64]
	str r0, [r4, #68]
	str r0, [r4, #72]
	str r1, [r4, #76]
	str r1, [r4, #80]
	str r2, [r4, #84]
	str r2, [r4, #88]
	ldr r6, [sp, #48]
	ldr r4, [sp, #24]
	add r6, r6, r4
	ldr r4, [sp, #16]
	add r6, r4, r6
	ldr r4, [sp, #20]
	add r6, r4, r6
	ldr r4, [sp, #12]
	str r6, [r4, #92]
	str r5, [r4, #96]
	str r3, [r4, #100]
	str r3, [r4, #104]
	str r0, [r4, #108]
	str r0, [r4, #112]
	str r1, [r4, #116]
	str r1, [r4, #120]
	str r2, [r4, #124]
	str r2, [r4, #128]
	str r6, [r4, #132]
	str r6, [r4, #136]
	ldr r5, [sp, #44]
	ldr r4, [sp, #24]
	add r5, r5, r4
	ldr r4, [sp, #16]
	add r5, r4, r5
	ldr r4, [sp, #20]
	add r5, r4, r5
	ldr r4, [sp, #12]
	str r5, [r4, #140]
	str r3, [r4, #144]
	str r0, [r4, #148]
	str r0, [r4, #152]
	str r1, [r4, #156]
	str r1, [r4, #160]
	str r2, [r4, #164]
	str r2, [r4, #168]
	str r6, [r4, #172]
	str r6, [r4, #176]
	str r5, [r4, #180]
	str r5, [r4, #184]
	ldr r3, [sp, #40]
	ldr r4, [sp, #24]
	add r3, r3, r4
	ldr r4, [sp, #16]
	add r3, r4, r3
	ldr r4, [sp, #20]
	add r3, r4, r3
	ldr r4, [sp, #12]
	str r3, [r4, #188]
	str r0, [r4, #192]
	str r1, [r4, #196]
	str r1, [r4, #200]
	str r2, [r4, #204]
	str r2, [r4, #208]
	str r6, [r4, #212]
	str r6, [r4, #216]
	str r5, [r4, #220]
	str r5, [r4, #224]
	str r3, [r4, #228]
	str r3, [r4, #232]
	ldr r0, [sp, #36]
	ldr r4, [sp, #24]
	add r0, r0, r4
	ldr r4, [sp, #16]
	add r0, r4, r0
	ldr r4, [sp, #20]
	add r0, r4, r0
	ldr r4, [sp, #12]
	str r0, [r4, #236]
	ldr r4, [sp, #24]
	add r4, r4, #1
	cmp r4, #4
	blt label483
	ldr r4, [sp, #16]
	add r0, r4, #1
	cmp r0, #3
	bge label650
	mov r4, #0
	str r4, [sp, #24]
	str r0, [sp, #16]
	mov r4, r0
	b label86
.p2align 4
label650:
	ldr r4, [sp, #20]
	add r0, r4, #1
	cmp r0, #2
	bge label94
	ldr r2, [sp, #28]
	mov r4, #0
	add r2, r2, #2880
	str r2, [sp, #28]
	str r4, [sp, #24]
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r4, r0
	b label86
label2:
	movw r4, #:lower16:arr2
	movt r4, #:upper16:arr2
	mov r0, #0
	str r4, [sp, #8]
	str r0, [sp, #0]
	mov r4, r0
	mov r1, r0
	mov r2, r0
	b label3
.p2align 4
label220:
	cmp r5, #2
	bge label635
	mov r0, r5
.p2align 4
label3:
	mov r3, #5376
	ldr r4, [sp, #8]
	add r5, r0, #1
	add r6, r0, #3
	add r7, r0, #4
	mla r3, r1, r3, r4
	add r8, r0, #5
	add r9, r0, #6
	ldr r4, [sp, #0]
	add r6, r1, r6
	add r7, r1, r7
	add r8, r1, r8
	add r9, r1, r9
	add r6, r2, r6
	add r7, r2, r7
	add r8, r2, r8
	add r9, r2, r9
	rsb r4, r4, r4, lsl #3
	add r3, r3, r4, lsl #8
	rsb r4, r0, r0, lsl #3
	add r11, r3, r4, lsl #7
	add r4, r0, #2
	add r3, r1, r5
	add r0, r0, r1
	add r4, r1, r4
	add r3, r2, r3
	add r10, r2, r0
	add r4, r2, r4
	mov r0, r11
	mov r11, #0
.p2align 4
label9:
	str r10, [r0, #0]
	add r11, r11, #1
	str r3, [r0, #4]
	cmp r11, #4
	str r4, [r0, #8]
	str r6, [r0, #12]
	str r7, [r0, #16]
	str r8, [r0, #20]
	str r9, [r0, #24]
	str r10, [r0, #28]
	str r3, [r0, #32]
	str r4, [r0, #36]
	str r6, [r0, #40]
	str r7, [r0, #44]
	str r8, [r0, #48]
	str r9, [r0, #52]
	str r10, [r0, #56]
	str r3, [r0, #60]
	str r4, [r0, #64]
	str r6, [r0, #68]
	str r7, [r0, #72]
	str r8, [r0, #76]
	str r9, [r0, #80]
	str r10, [r0, #84]
	str r3, [r0, #88]
	str r4, [r0, #92]
	str r6, [r0, #96]
	str r7, [r0, #100]
	str r8, [r0, #104]
	str r9, [r0, #108]
	str r10, [r0, #112]
	str r3, [r0, #116]
	str r4, [r0, #120]
	str r6, [r0, #124]
	str r7, [r0, #128]
	str r8, [r0, #132]
	str r9, [r0, #136]
	str r10, [r0, #140]
	str r3, [r0, #144]
	str r4, [r0, #148]
	str r6, [r0, #152]
	str r7, [r0, #156]
	str r8, [r0, #160]
	str r9, [r0, #164]
	str r10, [r0, #168]
	str r3, [r0, #172]
	str r4, [r0, #176]
	str r6, [r0, #180]
	str r7, [r0, #184]
	str r8, [r0, #188]
	str r9, [r0, #192]
	str r10, [r0, #196]
	str r3, [r0, #200]
	str r4, [r0, #204]
	str r6, [r0, #208]
	str r7, [r0, #212]
	str r8, [r0, #216]
	str r9, [r0, #220]
	bge label220
	add r0, r0, #224
	b label9
.p2align 4
label635:
	ldr r4, [sp, #0]
	add r4, r4, #1
	cmp r4, #3
	bge label652
	mov r0, #0
	str r4, [sp, #0]
	b label3
.p2align 4
label652:
	add r1, r1, #1
	cmp r1, #2
	bge label661
	mov r0, #0
	str r0, [sp, #0]
	mov r4, r0
	b label3
.p2align 4
label661:
	add r2, r2, #1
	cmp r2, #10
	bge label667
	ldr r4, [sp, #8]
	mov r0, #0
	add r4, r4, #10752
	str r4, [sp, #8]
	str r0, [sp, #0]
	mov r4, r0
	mov r1, r0
	b label3
label667:
	movw r3, #:lower16:arr1
	movt r3, #:upper16:arr1
	mov r5, #0
	str r3, [sp, #140]
	mov r0, r5
	str r5, [sp, #136]
label18:
	mov r1, #10752
	movw r4, #:lower16:arr2
	movt r4, #:upper16:arr2
	ldr r0, [sp, #136]
	cmp r0, #10
	mla r1, r0, r1, r4
	str r1, [sp, #132]
	bge label246
	ldr r3, [sp, #140]
	mov r0, #0
	str r3, [sp, #128]
	str r0, [sp, #124]
label25:
	mov r3, #5376
	ldr r1, [sp, #132]
	ldr r0, [sp, #124]
	cmp r0, #100
	mla r1, r0, r3, r1
	str r1, [sp, #176]
	bge label252
	ldr r3, [sp, #128]
	mov r0, #0
	str r3, [sp, #192]
	str r0, [sp, #208]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #224]
	ldr r0, [sp, #208]
	cmp r0, #1000
	bge label258
.p2align 4
label37:
	ldr r3, [sp, #192]
	mov r0, #0
	str r3, [sp, #116]
	str r0, [sp, #112]
	ldr r1, [sp, #224]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #108]
	ldr r0, [sp, #112]
	movw r1, #10000
	cmp r0, r1
	bge label270
.p2align 4
label45:
	ldr r3, [sp, #116]
	mov r0, #0
	str r3, [sp, #104]
	str r0, [sp, #96]
	ldr r1, [sp, #108]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #5
	str r1, [sp, #92]
	ldr r0, [sp, #96]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label282
.p2align 4
label50:
	ldr r3, [sp, #104]
	mov r0, #0
	str r3, [sp, #76]
	str r0, [sp, #56]
	movw r1, #16960
	movt r1, #15
	cmp r0, r1
	bge label286
.p2align 4
label58:
	ldr r0, [sp, #56]
	ldr r1, [sp, #92]
	rsb r0, r0, r0, lsl #3
	add r2, r1, r0, lsl #2
	str r2, [sp, #32]
	ldr r3, [sp, #144]
	cmp r3, #3
	ble label298
	ldr r3, [sp, #76]
	ldr r0, [r3, #0]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0]
	add r6, r0, r2
	str r6, [sp, #4]
	ldr r0, [r3, #4]
	ldr r2, [sp, #32]
	ldr r2, [r2, #4]
	add r0, r0, r2
	ldr r2, [r3, #8]
	ldr r3, [r3, #12]
	add r1, r1, r2
	ldr r2, [sp, #32]
	ldr r2, [r2, #12]
	add r2, r3, r2
.p2align 4
label60:
	movw r3, #19413
	movt r3, #41070
	smmla r4, r5, r3, r5
	asr r6, r4, #9
	add r6, r6, r4, lsr #31
	movw r4, #817
	mls r5, r6, r4, r5
	ldr r6, [sp, #4]
	add r5, r6, r5
	smmla r6, r5, r3, r5
	asr r7, r6, #9
	add r6, r7, r6, lsr #31
	mls r5, r6, r4, r5
	add r5, r0, r5
	smmla r6, r5, r3, r5
	asr r7, r6, #9
	add r6, r7, r6, lsr #31
	mls r5, r6, r4, r5
	add r5, r1, r5
	smmla r3, r5, r3, r5
	asr r6, r3, #9
	add r3, r6, r3, lsr #31
	mls r3, r3, r4, r5
	add r5, r2, r3
	ldr r3, [sp, #144]
	cmp r3, #7
	bgt label60
	mov r1, #4
	mov r2, r5
	cmp r3, r1
	ble label334
.p2align 4
label66:
	ldr r3, [sp, #76]
	add r0, r3, r1, lsl #2
.p2align 4
label67:
	ldr r3, [r0, #0]
	movw r4, #19413
	movt r4, #41070
	smmla r4, r2, r4, r2
	asr r5, r4, #9
	add r4, r5, r4, lsr #31
	movw r5, #817
	mls r2, r4, r5, r2
	add r3, r3, r2
	ldr r2, [sp, #32]
	ldr r2, [r2, r1, lsl #2]
	add r1, r1, #1
	add r2, r3, r2
	ldr r3, [sp, #144]
	cmp r3, r1
	ble label348
	add r0, r0, #4
	b label67
.p2align 4
label348:
	ldr r0, [sp, #56]
	ldr r1, [sp, #152]
	add r0, r0, #1
	cmp r1, r0
	bgt label74
	ldr r0, [sp, #96]
	ldr r1, [sp, #160]
	add r0, r0, #1
	cmp r1, r0
	bgt label57
	ldr r0, [sp, #112]
	ldr r1, [sp, #168]
	add r0, r0, #1
	cmp r1, r0
	ble label665
.p2align 4
label77:
	ldr r3, [sp, #116]
	mov r5, r2
	add r3, r3, #240
	str r3, [sp, #116]
	str r0, [sp, #112]
	ldr r1, [sp, #224]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #108]
	ldr r0, [sp, #112]
	movw r1, #10000
	cmp r0, r1
	blt label45
label270:
	mov r2, r5
	ldr r0, [sp, #208]
	ldr r1, [sp, #164]
	add r0, r0, #1
	cmp r1, r0
	bgt label44
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	b label78
label298:
	mov r1, #0
	mov r2, r5
	ldr r3, [sp, #144]
	mov r5, r1
	cmp r3, r1
	bgt label66
.p2align 4
label334:
	mov r2, r5
	ldr r0, [sp, #56]
	ldr r1, [sp, #152]
	add r0, r0, #1
	cmp r1, r0
	bgt label74
	ldr r0, [sp, #96]
	ldr r1, [sp, #160]
	add r0, r0, #1
	cmp r1, r0
	bgt label57
	ldr r0, [sp, #112]
	ldr r1, [sp, #168]
	add r0, r0, #1
	cmp r1, r0
	bgt label77
	ldr r0, [sp, #208]
	ldr r1, [sp, #164]
	add r0, r0, #1
	cmp r1, r0
	bgt label44
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	b label78
.p2align 4
label665:
	ldr r0, [sp, #208]
	ldr r1, [sp, #164]
	add r0, r0, #1
	cmp r1, r0
	ble label668
label44:
	ldr r3, [sp, #192]
	mov r5, r2
	add r3, r3, #960
	str r3, [sp, #192]
	str r0, [sp, #208]
	ldr r1, [sp, #176]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #224]
	ldr r0, [sp, #208]
	cmp r0, #1000
	blt label37
label258:
	mov r2, r5
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	b label78
label668:
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	ble label78
label36:
	ldr r3, [sp, #128]
	mov r5, r2
	add r3, r3, #2880
	str r3, [sp, #128]
	str r0, [sp, #124]
	b label25
label78:
	ldr r0, [sp, #136]
	ldr r1, [sp, #148]
	add r0, r0, #1
	cmp r1, r0
	bgt label80
	mov r0, r2
label22:
	add sp, sp, #244
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label74:
	ldr r3, [sp, #76]
	mov r5, r2
	movw r1, #16960
	movt r1, #15
	cmp r0, r1
	add r3, r3, #8
	str r3, [sp, #76]
	str r0, [sp, #56]
	blt label58
label286:
	mov r2, r5
	ldr r0, [sp, #96]
	ldr r1, [sp, #160]
	add r0, r0, #1
	cmp r1, r0
	ble label291
.p2align 4
label57:
	ldr r3, [sp, #104]
	mov r5, r2
	add r3, r3, #48
	str r3, [sp, #104]
	str r0, [sp, #96]
	ldr r1, [sp, #108]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #5
	str r1, [sp, #92]
	ldr r0, [sp, #96]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	blt label50
label282:
	mov r2, r5
	ldr r0, [sp, #112]
	ldr r1, [sp, #168]
	add r0, r0, #1
	cmp r1, r0
	bgt label77
	ldr r0, [sp, #208]
	ldr r1, [sp, #164]
	add r0, r0, #1
	cmp r1, r0
	bgt label44
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	b label78
label291:
	ldr r0, [sp, #112]
	ldr r1, [sp, #168]
	add r0, r0, #1
	cmp r1, r0
	bgt label77
	ldr r0, [sp, #208]
	ldr r1, [sp, #164]
	add r0, r0, #1
	cmp r1, r0
	bgt label44
	ldr r0, [sp, #124]
	ldr r1, [sp, #156]
	add r0, r0, #1
	cmp r1, r0
	bgt label36
	b label78
label80:
	ldr r3, [sp, #140]
	mov r5, r2
	add r3, r3, #5760
	str r3, [sp, #140]
	str r0, [sp, #136]
	b label18
label252:
	mov r2, r5
	b label78
label246:
	mov r0, r5
	b label22
