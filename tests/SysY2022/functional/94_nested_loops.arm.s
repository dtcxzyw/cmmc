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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #300
	bl getint
	add r4, r0, #1
	str r0, [sp, #168]
	bl getint
	str r0, [sp, #176]
	mov r2, r0
	add r1, r4, r0
	str r1, [sp, #160]
	ldr r0, [sp, #168]
	ldr r2, [sp, #176]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #152]
	ldr r0, [sp, #168]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #144]
	ldr r0, [sp, #168]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #136]
	ldr r0, [sp, #168]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #128]
	ldr r0, [sp, #168]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #60]
	ldr r0, [sp, #168]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #64]
	ldr r0, [sp, #168]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #68]
	ldr r0, [sp, #168]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #72]
	ldr r0, [sp, #168]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #80]
	ldr r0, [sp, #168]
	add r1, r0, r2
	str r1, [sp, #76]
	bl getint
	str r0, [sp, #208]
	bl getint
	str r0, [sp, #216]
	mov r1, r0
	bl getint
	str r0, [sp, #232]
	mov r1, r0
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	bl getint
	str r0, [sp, #124]
	mov r1, r0
	bl getint
	str r0, [sp, #224]
	mov r1, r0
	bl getint
	movw r2, #:lower16:arr1
	str r0, [sp, #200]
	mov r1, #0
	mov r5, r0
	movt r2, #:upper16:arr1
	str r2, [sp, #192]
	str r1, [sp, #92]
.p2align 4
label2:
	ldr r0, [sp, #168]
	ldr r1, [sp, #92]
	ldr r2, [sp, #176]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	ldr r2, [sp, #192]
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	ldr r1, [sp, #92]
	mov r0, #5760
	mla r2, r1, r0, r2
	str r2, [sp, #104]
	bne label100
	movw r2, #:lower16:arr2
	mov r0, #0
	movt r2, #:upper16:arr2
	str r2, [sp, #184]
	str r0, [sp, #56]
	b label15
label100:
	mov r0, #0
	str r0, [sp, #108]
.p2align 4
label4:
	ldr r1, [sp, #92]
	ldr r0, [sp, #108]
	add r0, r1, r0
	mov r1, #2880
	str r0, [sp, #240]
	ldr r2, [sp, #104]
	ldr r0, [sp, #108]
	cmp r0, #2
	mla r1, r0, r1, r2
	str r1, [sp, #248]
	blt label107
	ldr r1, [sp, #92]
	add r1, r1, #1
	str r1, [sp, #92]
	b label2
.p2align 4
label107:
	mov r0, #0
	str r0, [sp, #252]
	cmp r0, #3
	blt label10
.p2align 4
label558:
	ldr r0, [sp, #108]
	add r0, r0, #1
	str r0, [sp, #108]
	b label4
.p2align 4
label15:
	mov r1, #10752
	ldr r2, [sp, #184]
	ldr r0, [sp, #56]
	mla r2, r0, r1, r2
	add r0, r0, #1
	str r2, [sp, #24]
	str r0, [sp, #20]
	ldr r0, [sp, #56]
	add r0, r0, #2
	str r0, [sp, #28]
	ldr r0, [sp, #56]
	add r0, r0, #3
	str r0, [sp, #32]
	ldr r0, [sp, #56]
	add r0, r0, #4
	str r0, [sp, #36]
	ldr r0, [sp, #56]
	add r0, r0, #5
	str r0, [sp, #40]
	ldr r0, [sp, #56]
	add r0, r0, #6
	str r0, [sp, #44]
	ldr r0, [sp, #56]
	cmp r0, #10
	blt label229
	mov r0, #0
	str r0, [sp, #84]
	mov r1, r0
	b label17
label229:
	mov r1, #0
	str r1, [sp, #8]
	b label51
label17:
	mov r3, #5760
	ldr r2, [sp, #192]
	ldr r1, [sp, #84]
	cmp r1, #10
	mla r2, r1, r3, r2
	mov r3, #10752
	str r2, [sp, #88]
	ldr r2, [sp, #184]
	mla r2, r1, r3, r2
	str r2, [sp, #96]
	bge label20
	mov r4, r0
	mov r0, #0
	str r0, [sp, #100]
	b label22
label20:
	add sp, sp, #300
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label51:
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r2, [sp, #24]
	mov r0, #5376
	mla r1, r1, r0, r2
	str r1, [sp, #112]
	ldr r0, [sp, #20]
	ldr r1, [sp, #8]
	cmp r1, #2
	add r0, r0, r1
	str r0, [sp, #228]
	ldr r0, [sp, #28]
	add r0, r0, r1
	str r0, [sp, #212]
	ldr r0, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #204]
	ldr r0, [sp, #36]
	add r0, r0, r1
	str r0, [sp, #188]
	ldr r0, [sp, #40]
	add r0, r0, r1
	str r0, [sp, #172]
	ldr r0, [sp, #44]
	add r0, r0, r1
	str r0, [sp, #164]
	blt label334
	ldr r0, [sp, #20]
	str r0, [sp, #56]
	b label15
.p2align 4
label334:
	mov r0, #0
	str r0, [sp, #132]
	ldr r1, [sp, #112]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #8
	ldr r0, [sp, #132]
	cmp r0, #3
	blt label340
.p2align 4
label339:
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
	b label51
.p2align 4
label340:
	mov r2, #0
.p2align 4
label56:
	ldr r0, [sp, #4]
	cmp r2, #2
	add r1, r0, r2
	rsb r0, r2, r2, lsl #3
	add r7, r3, r0, lsl #7
	ldr r0, [sp, #228]
	add r4, r0, r2
	ldr r0, [sp, #212]
	add r5, r0, r2
	ldr r0, [sp, #204]
	add r6, r0, r2
	ldr r0, [sp, #188]
	add r8, r0, r2
	ldr r0, [sp, #172]
	add r9, r0, r2
	ldr r0, [sp, #164]
	add r10, r0, r2
	blt label354
	ldr r0, [sp, #132]
	add r0, r0, #1
	str r0, [sp, #132]
	ldr r1, [sp, #112]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #8
	ldr r0, [sp, #132]
	cmp r0, #3
	blt label340
	b label339
.p2align 4
label354:
	mov r11, #0
	b label59
.p2align 4
label416:
	add r2, r2, #1
	b label56
.p2align 4
label59:
	rsb r0, r11, r11, lsl #3
	add r11, r11, #1
	add r0, r7, r0, lsl #5
	cmp r11, #4
	str r1, [r0, #0]
	str r4, [r0, #4]
	str r5, [r0, #8]
	str r6, [r0, #12]
	str r8, [r0, #16]
	str r9, [r0, #20]
	str r10, [r0, #24]
	str r1, [r0, #28]
	str r4, [r0, #32]
	str r5, [r0, #36]
	str r6, [r0, #40]
	str r8, [r0, #44]
	str r9, [r0, #48]
	str r10, [r0, #52]
	str r1, [r0, #56]
	str r4, [r0, #60]
	str r5, [r0, #64]
	str r6, [r0, #68]
	str r8, [r0, #72]
	str r9, [r0, #76]
	str r10, [r0, #80]
	str r1, [r0, #84]
	str r4, [r0, #88]
	str r5, [r0, #92]
	str r6, [r0, #96]
	str r8, [r0, #100]
	str r9, [r0, #104]
	str r10, [r0, #108]
	str r1, [r0, #112]
	str r4, [r0, #116]
	str r5, [r0, #120]
	str r6, [r0, #124]
	str r8, [r0, #128]
	str r9, [r0, #132]
	str r10, [r0, #136]
	str r1, [r0, #140]
	str r4, [r0, #144]
	str r5, [r0, #148]
	str r6, [r0, #152]
	str r8, [r0, #156]
	str r9, [r0, #160]
	str r10, [r0, #164]
	str r1, [r0, #168]
	str r4, [r0, #172]
	str r5, [r0, #176]
	str r6, [r0, #180]
	str r8, [r0, #184]
	str r9, [r0, #188]
	str r10, [r0, #192]
	str r1, [r0, #196]
	str r4, [r0, #200]
	str r5, [r0, #204]
	str r6, [r0, #208]
	str r8, [r0, #212]
	str r9, [r0, #216]
	str r10, [r0, #220]
	blt label59
	b label416
.p2align 4
label10:
	ldr r1, [sp, #76]
	mov r7, #0
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #260]
	ldr r1, [sp, #160]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #264]
	ldr r1, [sp, #152]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #272]
	ldr r1, [sp, #144]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #280]
	ldr r1, [sp, #136]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #284]
	ldr r1, [sp, #128]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r2, r0, r1
	str r2, [sp, #292]
	ldr r1, [sp, #60]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r3, r0, r1
	str r3, [sp, #48]
	ldr r1, [sp, #64]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r5, r0, r1
	str r5, [sp, #12]
	ldr r1, [sp, #68]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r6, r0, r1
	str r6, [sp, #0]
	ldr r1, [sp, #72]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r4, r0, r1
	str r4, [sp, #120]
	ldr r1, [sp, #80]
	ldr r0, [sp, #252]
	add r1, r1, r0
	ldr r0, [sp, #240]
	add r1, r0, r1
	str r1, [sp, #196]
	ldr r0, [sp, #252]
	ldr r1, [sp, #248]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #6
	str r1, [sp, #148]
	str r7, [sp, #140]
.p2align 4
label11:
	ldr r7, [sp, #140]
	ldr r1, [sp, #148]
	rsb r0, r7, r7, lsl #4
	add r0, r1, r0, lsl #4
	ldr r1, [sp, #260]
	add r1, r1, r7
	str r1, [r0, #0]
	ldr r1, [sp, #264]
	add r5, r1, r7
	str r5, [r0, #4]
	str r5, [r0, #8]
	ldr r1, [sp, #272]
	add r6, r1, r7
	str r6, [r0, #12]
	str r6, [r0, #16]
	ldr r1, [sp, #280]
	add r4, r1, r7
	str r4, [r0, #20]
	str r4, [r0, #24]
	ldr r1, [sp, #284]
	add r1, r1, r7
	str r1, [r0, #28]
	str r1, [r0, #32]
	ldr r2, [sp, #292]
	add r2, r2, r7
	str r2, [r0, #36]
	str r2, [r0, #40]
	ldr r3, [sp, #48]
	add r3, r3, r7
	str r3, [r0, #44]
	str r5, [r0, #48]
	str r6, [r0, #52]
	str r6, [r0, #56]
	str r4, [r0, #60]
	str r4, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r2, [r0, #76]
	str r2, [r0, #80]
	str r3, [r0, #84]
	str r3, [r0, #88]
	ldr r5, [sp, #12]
	add r5, r5, r7
	str r5, [r0, #92]
	str r6, [r0, #96]
	str r4, [r0, #100]
	str r4, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r2, [r0, #116]
	str r2, [r0, #120]
	str r3, [r0, #124]
	str r3, [r0, #128]
	str r5, [r0, #132]
	str r5, [r0, #136]
	ldr r6, [sp, #0]
	add r6, r6, r7
	str r6, [r0, #140]
	str r4, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r2, [r0, #156]
	str r2, [r0, #160]
	str r3, [r0, #164]
	str r3, [r0, #168]
	str r5, [r0, #172]
	str r5, [r0, #176]
	str r6, [r0, #180]
	str r6, [r0, #184]
	ldr r4, [sp, #120]
	add r4, r4, r7
	str r4, [r0, #188]
	str r1, [r0, #192]
	str r2, [r0, #196]
	str r2, [r0, #200]
	str r3, [r0, #204]
	str r3, [r0, #208]
	str r5, [r0, #212]
	str r5, [r0, #216]
	str r6, [r0, #220]
	str r6, [r0, #224]
	str r4, [r0, #228]
	str r4, [r0, #232]
	ldr r1, [sp, #196]
	add r1, r1, r7
	add r7, r7, #1
	str r1, [r0, #236]
	cmp r7, #4
	blt label214
	ldr r0, [sp, #252]
	add r0, r0, #1
	str r0, [sp, #252]
	cmp r0, #3
	blt label10
	b label558
.p2align 4
label214:
	str r7, [sp, #140]
	b label11
label22:
	mov r1, #2880
	ldr r2, [sp, #88]
	ldr r0, [sp, #100]
	cmp r0, #100
	mla r1, r0, r1, r2
	str r1, [sp, #236]
	ldr r2, [sp, #96]
	mov r1, #5376
	mla r1, r0, r1, r2
	str r1, [sp, #244]
	bge label49
	mov r0, #0
	str r0, [sp, #256]
label25:
	ldr r0, [sp, #256]
	ldr r1, [sp, #236]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #6
	str r1, [sp, #268]
	ldr r0, [sp, #256]
	ldr r1, [sp, #244]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #276]
	ldr r0, [sp, #256]
	cmp r0, #1000
	blt label253
	ldr r0, [sp, #100]
	ldr r1, [sp, #216]
	add r0, r0, #1
	cmp r1, r0
	ble label49
label560:
	str r0, [sp, #100]
	b label22
label253:
	mov r0, #0
	str r0, [sp, #288]
.p2align 4
label28:
	ldr r0, [sp, #288]
	ldr r1, [sp, #268]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #4
	str r1, [sp, #52]
	ldr r0, [sp, #288]
	ldr r1, [sp, #276]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #16]
	ldr r0, [sp, #288]
	movw r1, #10000
	cmp r0, r1
	blt label261
	ldr r0, [sp, #256]
	ldr r1, [sp, #232]
	add r0, r0, #1
	cmp r1, r0
	ble label47
label561:
	str r0, [sp, #256]
	b label25
label261:
	mov r0, #0
	str r0, [sp, #220]
.p2align 4
label31:
	ldr r0, [sp, #220]
	ldr r1, [sp, #52]
	add r0, r0, r0, lsl #1
	add r1, r1, r0, lsl #4
	str r1, [sp, #180]
	ldr r0, [sp, #220]
	ldr r1, [sp, #16]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #5
	movw r1, #34464
	str r3, [sp, #156]
	movt r1, #1
	ldr r0, [sp, #220]
	cmp r0, r1
	blt label269
	ldr r0, [sp, #288]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label45
label562:
	str r0, [sp, #288]
	b label28
.p2align 4
label269:
	mov r0, #0
	ldr r1, [sp, #180]
	rsb r2, r0, r0, lsl #3
	ldr r3, [sp, #156]
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	blt label277
	ldr r0, [sp, #220]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label43
.p2align 4
label563:
	str r0, [sp, #220]
	b label31
.p2align 4
label277:
	mov r3, #0
	b label39
label45:
	ldr r0, [sp, #256]
	ldr r1, [sp, #232]
	add r0, r0, #1
	cmp r1, r0
	bgt label561
label47:
	ldr r0, [sp, #100]
	ldr r1, [sp, #216]
	add r0, r0, #1
	cmp r1, r0
	bgt label560
label49:
	ldr r1, [sp, #84]
	ldr r0, [sp, #208]
	add r1, r1, #1
	cmp r0, r1
	ble label321
	mov r0, r4
	str r1, [sp, #84]
	b label17
label321:
	mov r0, r4
	b label20
.p2align 4
label37:
	ldr r0, [sp, #220]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label43
	b label563
.p2align 4
label42:
	add r0, r0, #1
	ldr r1, [sp, #224]
	cmp r1, r0
	ble label37
	ldr r1, [sp, #180]
	rsb r2, r0, r0, lsl #3
	ldr r3, [sp, #156]
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	blt label277
	ldr r0, [sp, #220]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	bgt label563
.p2align 4
label43:
	ldr r0, [sp, #288]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label45
	b label562
.p2align 4
label39:
	ldr r5, [r1, r3, lsl #2]
	movw r6, #19413
	movt r6, #41070
	smmla r6, r4, r6, r4
	asr r7, r6, #9
	add r6, r7, r6, lsr #31
	movw r7, #817
	mls r4, r6, r7, r4
	add r4, r5, r4
	ldr r5, [r2, r3, lsl #2]
	add r3, r3, #1
	add r4, r4, r5
	ldr r5, [sp, #200]
	cmp r5, r3
	ble label42
	b label39
