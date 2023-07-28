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
	sub sp, sp, #308
	bl getint
	add r4, r0, #1
	str r0, [sp, #200]
	bl getint
	add r1, r4, r0
	str r0, [sp, #208]
	mov r2, r0
	str r1, [sp, #192]
	ldr r0, [sp, #200]
	ldr r2, [sp, #208]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #184]
	ldr r0, [sp, #200]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #176]
	ldr r0, [sp, #200]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #168]
	ldr r0, [sp, #200]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #200]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #152]
	ldr r0, [sp, #200]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #144]
	ldr r0, [sp, #200]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #68]
	ldr r0, [sp, #200]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #72]
	ldr r0, [sp, #200]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #80]
	ldr r0, [sp, #200]
	add r1, r0, r2
	str r1, [sp, #76]
	bl getint
	str r0, [sp, #240]
	bl getint
	str r0, [sp, #248]
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
	str r0, [sp, #232]
	mov r1, #0
	mov r5, r0
	movt r2, #:upper16:arr1
	str r2, [sp, #224]
	str r1, [sp, #88]
.p2align 4
label2:
	ldr r0, [sp, #200]
	ldr r1, [sp, #88]
	ldr r2, [sp, #208]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	ldr r2, [sp, #224]
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	ldr r1, [sp, #88]
	mov r0, #5760
	mla r2, r1, r0, r2
	str r2, [sp, #104]
	beq label99
	mov r0, #0
	str r0, [sp, #108]
	b label4
.p2align 4
label106:
	ldr r1, [sp, #88]
	add r1, r1, #1
	str r1, [sp, #88]
	b label2
.p2align 4
label4:
	ldr r1, [sp, #88]
	ldr r0, [sp, #108]
	add r0, r1, r0
	mov r1, #2880
	str r0, [sp, #252]
	ldr r2, [sp, #104]
	ldr r0, [sp, #108]
	cmp r0, #2
	mla r1, r0, r1, r2
	str r1, [sp, #260]
	bge label106
	mov r0, #0
	str r0, [sp, #268]
	cmp r0, #3
	blt label9
.p2align 4
label110:
	ldr r0, [sp, #108]
	add r0, r0, #1
	str r0, [sp, #108]
	b label4
.p2align 4
label9:
	ldr r1, [sp, #76]
	mov r3, #0
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r1, r0, r1
	str r1, [sp, #272]
	ldr r1, [sp, #192]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r0, r0, r1
	str r0, [sp, #280]
	ldr r1, [sp, #184]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r0, r0, r1
	str r0, [sp, #288]
	ldr r1, [sp, #176]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r0, r0, r1
	str r0, [sp, #296]
	ldr r1, [sp, #168]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r0, r0, r1
	str r0, [sp, #300]
	ldr r1, [sp, #160]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r1, r0, r1
	str r1, [sp, #60]
	ldr r1, [sp, #152]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r2, r0, r1
	str r2, [sp, #52]
	ldr r1, [sp, #144]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r5, r0, r1
	str r5, [sp, #16]
	ldr r1, [sp, #68]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r6, r0, r1
	str r6, [sp, #0]
	ldr r1, [sp, #72]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r4, r0, r1
	str r4, [sp, #120]
	ldr r1, [sp, #80]
	ldr r0, [sp, #268]
	add r1, r1, r0
	ldr r0, [sp, #252]
	add r0, r0, r1
	str r0, [sp, #228]
	ldr r0, [sp, #268]
	ldr r1, [sp, #260]
	rsb r0, r0, r0, lsl #4
	add r2, r1, r0, lsl #6
	str r2, [sp, #188]
	str r3, [sp, #172]
.p2align 4
label10:
	ldr r3, [sp, #172]
	ldr r2, [sp, #188]
	rsb r1, r3, r3, lsl #4
	add r3, r2, r1, lsl #4
	lsl r0, r1, #4
	str r3, [sp, #156]
	ldr r1, [sp, #272]
	ldr r3, [sp, #172]
	add r1, r1, r3
	str r1, [r2, r0]
	ldr r0, [sp, #280]
	add r5, r0, r3
	ldr r3, [sp, #156]
	str r5, [r3, #4]
	str r5, [r3, #8]
	ldr r0, [sp, #288]
	ldr r3, [sp, #172]
	add r6, r0, r3
	ldr r3, [sp, #156]
	str r6, [r3, #12]
	str r6, [r3, #16]
	ldr r0, [sp, #296]
	ldr r3, [sp, #172]
	add r4, r0, r3
	ldr r3, [sp, #156]
	str r4, [r3, #20]
	str r4, [r3, #24]
	ldr r0, [sp, #300]
	ldr r3, [sp, #172]
	add r0, r0, r3
	ldr r3, [sp, #156]
	str r0, [r3, #28]
	str r0, [r3, #32]
	ldr r1, [sp, #60]
	ldr r3, [sp, #172]
	add r1, r1, r3
	ldr r3, [sp, #156]
	str r1, [r3, #36]
	str r1, [r3, #40]
	ldr r2, [sp, #52]
	ldr r3, [sp, #172]
	add r2, r2, r3
	ldr r3, [sp, #156]
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
	ldr r5, [sp, #16]
	ldr r3, [sp, #172]
	add r5, r5, r3
	ldr r3, [sp, #156]
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
	ldr r6, [sp, #0]
	ldr r3, [sp, #172]
	add r6, r6, r3
	ldr r3, [sp, #156]
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
	ldr r4, [sp, #120]
	ldr r3, [sp, #172]
	add r4, r4, r3
	ldr r3, [sp, #156]
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
	ldr r0, [sp, #228]
	ldr r3, [sp, #172]
	add r0, r0, r3
	ldr r3, [sp, #156]
	str r0, [r3, #236]
	ldr r3, [sp, #172]
	add r3, r3, #1
	cmp r3, #4
	blt label213
	ldr r0, [sp, #268]
	add r0, r0, #1
	str r0, [sp, #268]
	cmp r0, #3
	blt label9
	b label110
.p2align 4
label213:
	str r3, [sp, #172]
	b label10
.p2align 4
label99:
	movw r2, #:lower16:arr2
	mov r0, #0
	movt r2, #:upper16:arr2
	str r2, [sp, #216]
	str r0, [sp, #56]
.p2align 4
label15:
	mov r1, #10752
	ldr r2, [sp, #216]
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
	str r1, [sp, #12]
	b label51
label17:
	mov r3, #5760
	ldr r2, [sp, #224]
	ldr r1, [sp, #84]
	cmp r1, #10
	mla r2, r1, r3, r2
	mov r3, #10752
	str r2, [sp, #92]
	ldr r2, [sp, #216]
	mla r2, r1, r3, r2
	str r2, [sp, #96]
	bge label20
	mov r4, r0
	mov r0, #0
	str r0, [sp, #100]
	b label22
label20:
	add sp, sp, #308
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label51:
	ldr r0, [sp, #56]
	ldr r1, [sp, #12]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r2, [sp, #24]
	mov r0, #5376
	mla r1, r1, r0, r2
	str r1, [sp, #112]
	ldr r0, [sp, #20]
	ldr r1, [sp, #12]
	cmp r1, #2
	add r0, r0, r1
	str r0, [sp, #128]
	ldr r0, [sp, #28]
	add r0, r0, r1
	str r0, [sp, #136]
	ldr r0, [sp, #32]
	add r0, r0, r1
	str r0, [sp, #236]
	ldr r0, [sp, #36]
	add r0, r0, r1
	str r0, [sp, #220]
	ldr r0, [sp, #40]
	add r0, r0, r1
	str r0, [sp, #212]
	ldr r0, [sp, #44]
	add r0, r0, r1
	str r0, [sp, #196]
	blt label334
	ldr r0, [sp, #20]
	str r0, [sp, #56]
	b label15
.p2align 4
label334:
	mov r0, #0
	str r0, [sp, #164]
	ldr r1, [sp, #112]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #8
	str r3, [sp, #148]
	ldr r0, [sp, #164]
	cmp r0, #3
	blt label340
.p2align 4
label339:
	ldr r1, [sp, #12]
	add r1, r1, #1
	str r1, [sp, #12]
	b label51
.p2align 4
label340:
	mov r2, #0
.p2align 4
label56:
	ldr r0, [sp, #4]
	cmp r2, #2
	ldr r3, [sp, #148]
	add r1, r0, r2
	rsb r0, r2, r2, lsl #3
	add r5, r3, r0, lsl #7
	ldr r0, [sp, #128]
	add r3, r0, r2
	ldr r0, [sp, #136]
	add r4, r0, r2
	ldr r0, [sp, #236]
	add r6, r0, r2
	ldr r0, [sp, #220]
	add r7, r0, r2
	ldr r0, [sp, #212]
	add r8, r0, r2
	ldr r0, [sp, #196]
	add r9, r0, r2
	blt label354
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #112]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #8
	str r3, [sp, #148]
	ldr r0, [sp, #164]
	cmp r0, #3
	blt label340
	b label339
.p2align 4
label354:
	mov r10, #0
	b label58
.p2align 4
label415:
	add r2, r2, #1
	b label56
.p2align 4
label58:
	rsb r0, r10, r10, lsl #3
	add r10, r10, #1
	lsl r11, r0, #5
	cmp r10, #4
	str r1, [r5, r11]
	add r0, r5, r0, lsl #5
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
	blt label58
	b label415
label22:
	mov r1, #2880
	ldr r2, [sp, #92]
	ldr r0, [sp, #100]
	cmp r0, #100
	mla r1, r0, r1, r2
	str r1, [sp, #256]
	ldr r2, [sp, #96]
	mov r1, #5376
	mla r1, r0, r1, r2
	str r1, [sp, #264]
	bge label25
	mov r0, #0
	str r0, [sp, #276]
	b label27
label25:
	ldr r1, [sp, #84]
	ldr r0, [sp, #240]
	add r1, r1, #1
	cmp r0, r1
	ble label250
	mov r0, r4
	str r1, [sp, #84]
	b label17
label250:
	mov r0, r4
	b label20
label27:
	ldr r0, [sp, #276]
	ldr r1, [sp, #256]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #6
	str r1, [sp, #284]
	ldr r0, [sp, #276]
	ldr r1, [sp, #264]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #292]
	ldr r0, [sp, #276]
	cmp r0, #1000
	blt label258
	ldr r0, [sp, #100]
	ldr r1, [sp, #248]
	add r0, r0, #1
	cmp r1, r0
	ble label25
label561:
	str r0, [sp, #100]
	b label22
label258:
	mov r0, #0
	str r0, [sp, #64]
.p2align 4
label30:
	ldr r0, [sp, #64]
	ldr r1, [sp, #284]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #4
	str r1, [sp, #48]
	ldr r0, [sp, #64]
	ldr r1, [sp, #292]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #8]
	ldr r0, [sp, #64]
	movw r1, #10000
	cmp r0, r1
	blt label266
	ldr r0, [sp, #276]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	ble label49
label562:
	str r0, [sp, #276]
	b label27
label266:
	mov r0, #0
	str r0, [sp, #244]
.p2align 4
label33:
	ldr r0, [sp, #244]
	ldr r1, [sp, #48]
	add r0, r0, r0, lsl #1
	add r1, r1, r0, lsl #4
	str r1, [sp, #204]
	ldr r0, [sp, #244]
	ldr r1, [sp, #8]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #5
	movw r1, #34464
	str r3, [sp, #180]
	movt r1, #1
	ldr r0, [sp, #244]
	cmp r0, r1
	blt label274
	ldr r0, [sp, #64]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label47
label563:
	str r0, [sp, #64]
	b label30
.p2align 4
label274:
	mov r0, #0
	ldr r1, [sp, #204]
	rsb r2, r0, r0, lsl #3
	ldr r3, [sp, #180]
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	blt label282
	ldr r0, [sp, #244]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label45
.p2align 4
label564:
	str r0, [sp, #244]
	b label33
.p2align 4
label282:
	mov r3, #0
	b label39
label47:
	ldr r0, [sp, #276]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	bgt label562
label49:
	ldr r0, [sp, #100]
	ldr r1, [sp, #248]
	add r0, r0, #1
	cmp r1, r0
	ble label25
	b label561
.p2align 4
label42:
	add r0, r0, #1
	ldr r1, [sp, #140]
	cmp r1, r0
	ble label43
	ldr r1, [sp, #204]
	rsb r2, r0, r0, lsl #3
	ldr r3, [sp, #180]
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	blt label282
	ldr r0, [sp, #244]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	bgt label564
.p2align 4
label45:
	ldr r0, [sp, #64]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label47
	b label563
.p2align 4
label43:
	ldr r0, [sp, #244]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label45
	b label564
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
	ldr r5, [sp, #232]
	cmp r5, r3
	ble label42
	b label39
