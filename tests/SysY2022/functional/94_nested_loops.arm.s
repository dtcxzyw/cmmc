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
	sub sp, sp, #292
	bl getint
	add r4, r0, #1
	str r0, [sp, #148]
	bl getint
	add r1, r4, r0
	mov r2, r0
	str r0, [sp, #144]
	str r1, [sp, #152]
	ldr r0, [sp, #148]
	ldr r2, [sp, #144]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #156]
	ldr r0, [sp, #148]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #148]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #164]
	ldr r0, [sp, #148]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #112]
	ldr r0, [sp, #148]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #108]
	ldr r0, [sp, #148]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #104]
	ldr r0, [sp, #148]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #100]
	ldr r0, [sp, #148]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #96]
	ldr r0, [sp, #148]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #88]
	ldr r0, [sp, #148]
	add r1, r0, r2
	str r1, [sp, #92]
	bl getint
	str r0, [sp, #136]
	mov r1, r0
	bl getint
	str r0, [sp, #128]
	mov r1, r0
	bl getint
	str r0, [sp, #120]
	mov r1, r0
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	bl getint
	str r0, [sp, #124]
	mov r1, r0
	bl getint
	str r0, [sp, #132]
	mov r1, r0
	bl getint
	str r0, [sp, #140]
	mov r1, #0
	mov r5, r0
	str r1, [sp, #76]
.p2align 4
label2:
	ldr r0, [sp, #148]
	ldr r1, [sp, #76]
	ldr r2, [sp, #144]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	movw r2, #:lower16:arr1
	movt r2, #:upper16:arr1
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	ldr r1, [sp, #76]
	mov r0, #5760
	mla r2, r1, r0, r2
	str r2, [sp, #64]
	bne label100
	b label99
.p2align 4
label106:
	ldr r1, [sp, #76]
	add r1, r1, #1
	str r1, [sp, #76]
	b label2
.p2align 4
label100:
	mov r0, #0
	str r0, [sp, #60]
.p2align 4
label4:
	ldr r1, [sp, #76]
	ldr r0, [sp, #60]
	add r0, r1, r0
	mov r1, #2880
	str r0, [sp, #52]
	ldr r2, [sp, #64]
	ldr r0, [sp, #60]
	cmp r0, #2
	mla r1, r0, r1, r2
	str r1, [sp, #172]
	blt label107
	b label106
.p2align 4
label558:
	ldr r0, [sp, #60]
	add r0, r0, #1
	str r0, [sp, #60]
	b label4
.p2align 4
label9:
	ldr r1, [sp, #92]
	mov r7, #0
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #184]
	ldr r1, [sp, #152]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #188]
	ldr r1, [sp, #156]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #196]
	ldr r1, [sp, #160]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #204]
	ldr r1, [sp, #164]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #208]
	ldr r1, [sp, #112]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r2, r0, r1
	str r2, [sp, #216]
	ldr r1, [sp, #108]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r3, r0, r1
	str r3, [sp, #228]
	ldr r1, [sp, #104]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r5, r0, r1
	str r5, [sp, #264]
	ldr r1, [sp, #100]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r6, r0, r1
	str r6, [sp, #276]
	ldr r1, [sp, #96]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r4, r0, r1
	str r4, [sp, #284]
	ldr r1, [sp, #88]
	ldr r0, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #52]
	add r1, r0, r1
	str r1, [sp, #32]
	ldr r0, [sp, #176]
	ldr r1, [sp, #172]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #6
	str r1, [sp, #8]
	str r7, [sp, #4]
	b label10
.p2align 4
label212:
	ldr r0, [sp, #176]
	add r0, r0, #1
	str r0, [sp, #176]
	cmp r0, #3
	blt label9
	b label558
.p2align 4
label10:
	ldr r7, [sp, #4]
	ldr r1, [sp, #8]
	rsb r0, r7, r7, lsl #4
	add r0, r1, r0, lsl #4
	ldr r1, [sp, #184]
	add r1, r1, r7
	str r1, [r0, #0]
	ldr r1, [sp, #188]
	add r5, r1, r7
	str r5, [r0, #4]
	str r5, [r0, #8]
	ldr r1, [sp, #196]
	add r6, r1, r7
	str r6, [r0, #12]
	str r6, [r0, #16]
	ldr r1, [sp, #204]
	add r4, r1, r7
	str r4, [r0, #20]
	str r4, [r0, #24]
	ldr r1, [sp, #208]
	add r1, r1, r7
	str r1, [r0, #28]
	str r1, [r0, #32]
	ldr r2, [sp, #216]
	add r2, r2, r7
	str r2, [r0, #36]
	str r2, [r0, #40]
	ldr r3, [sp, #228]
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
	ldr r5, [sp, #264]
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
	ldr r6, [sp, #276]
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
	ldr r4, [sp, #284]
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
	ldr r1, [sp, #32]
	add r1, r1, r7
	add r7, r7, #1
	str r1, [r0, #236]
	cmp r7, #4
	bge label212
	str r7, [sp, #4]
	b label10
.p2align 4
label107:
	mov r0, #0
	str r0, [sp, #176]
	cmp r0, #3
	blt label9
	b label558
label99:
	mov r1, #0
	str r1, [sp, #220]
.p2align 4
label15:
	mov r0, #10752
	movw r2, #:lower16:arr2
	movt r2, #:upper16:arr2
	ldr r1, [sp, #220]
	mla r2, r1, r0, r2
	add r1, r1, #1
	str r2, [sp, #256]
	str r1, [sp, #252]
	ldr r1, [sp, #220]
	add r1, r1, #2
	str r1, [sp, #248]
	ldr r1, [sp, #220]
	add r1, r1, #3
	str r1, [sp, #244]
	ldr r1, [sp, #220]
	add r1, r1, #4
	str r1, [sp, #240]
	ldr r1, [sp, #220]
	add r1, r1, #5
	str r1, [sp, #236]
	ldr r1, [sp, #220]
	add r1, r1, #6
	str r1, [sp, #232]
	ldr r1, [sp, #220]
	cmp r1, #10
	blt label229
	b label228
.p2align 4
label333:
	ldr r1, [sp, #252]
	str r1, [sp, #220]
	b label15
label228:
	mov r4, #0
	str r4, [sp, #84]
	mov r0, r4
label17:
	mov r1, #5760
	movw r2, #:lower16:arr1
	movt r2, #:upper16:arr1
	ldr r0, [sp, #84]
	cmp r0, #10
	mla r2, r0, r1, r2
	mov r1, #10752
	str r2, [sp, #80]
	movw r2, #:lower16:arr2
	movt r2, #:upper16:arr2
	mla r2, r0, r1, r2
	str r2, [sp, #72]
	bge label236
	mov r0, #0
	str r0, [sp, #68]
label22:
	mov r1, #2880
	ldr r2, [sp, #80]
	ldr r0, [sp, #68]
	cmp r0, #100
	mla r1, r0, r1, r2
	str r1, [sp, #56]
	ldr r2, [sp, #72]
	mov r1, #5376
	mla r1, r0, r1, r2
	str r1, [sp, #168]
	bge label25
	mov r0, #0
	str r0, [sp, #180]
.p2align 4
label27:
	ldr r0, [sp, #180]
	ldr r1, [sp, #56]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #6
	str r1, [sp, #192]
	ldr r0, [sp, #180]
	ldr r1, [sp, #168]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #200]
	ldr r0, [sp, #180]
	cmp r0, #1000
	bge label49
	mov r0, #0
	str r0, [sp, #212]
.p2align 4
label30:
	ldr r0, [sp, #212]
	ldr r1, [sp, #192]
	rsb r0, r0, r0, lsl #4
	add r1, r1, r0, lsl #4
	str r1, [sp, #224]
	ldr r0, [sp, #212]
	ldr r1, [sp, #200]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #260]
	ldr r0, [sp, #212]
	movw r1, #10000
	cmp r0, r1
	bge label33
	mov r0, #0
	str r0, [sp, #44]
.p2align 4
label35:
	ldr r0, [sp, #44]
	ldr r1, [sp, #224]
	add r0, r0, r0, lsl #1
	add r1, r1, r0, lsl #4
	str r1, [sp, #24]
	ldr r0, [sp, #44]
	ldr r1, [sp, #260]
	rsb r0, r0, r0, lsl #3
	add r3, r1, r0, lsl #5
	movw r1, #34464
	movt r1, #1
	str r3, [sp, #12]
	ldr r0, [sp, #44]
	cmp r0, r1
	bge label47
	mov r0, #0
	ldr r1, [sp, #24]
	rsb r2, r0, r0, lsl #3
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	bge label45
.p2align 4
label287:
	mov r3, #0
.p2align 4
label41:
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
	ldr r5, [sp, #140]
	cmp r5, r3
	bgt label41
	add r0, r0, #1
	ldr r1, [sp, #132]
	cmp r1, r0
	ble label45
	ldr r1, [sp, #24]
	rsb r2, r0, r0, lsl #3
	ldr r3, [sp, #12]
	add r1, r1, r0, lsl #3
	add r2, r3, r2, lsl #2
	movw r3, #16960
	movt r3, #15
	cmp r0, r3
	blt label287
.p2align 4
label45:
	ldr r0, [sp, #44]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	bgt label310
.p2align 4
label47:
	ldr r0, [sp, #212]
	ldr r1, [sp, #116]
	add r0, r0, #1
	cmp r1, r0
	ble label33
	str r0, [sp, #212]
	b label30
.p2align 4
label33:
	ldr r0, [sp, #180]
	ldr r1, [sp, #120]
	add r0, r0, #1
	cmp r1, r0
	ble label49
	str r0, [sp, #180]
	b label27
label25:
	ldr r0, [sp, #84]
	ldr r1, [sp, #136]
	add r0, r0, #1
	cmp r1, r0
	ble label236
	b label249
label49:
	ldr r0, [sp, #68]
	ldr r1, [sp, #128]
	add r0, r0, #1
	cmp r1, r0
	ble label25
	str r0, [sp, #68]
	b label22
label236:
	mov r0, r4
	add sp, sp, #292
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label249:
	str r0, [sp, #84]
	b label17
.p2align 4
label310:
	str r0, [sp, #44]
	b label35
.p2align 4
label229:
	mov r0, #0
	str r0, [sp, #268]
.p2align 4
label51:
	ldr r1, [sp, #220]
	ldr r0, [sp, #268]
	add r0, r1, r0
	mov r1, #5376
	str r0, [sp, #272]
	ldr r2, [sp, #256]
	ldr r0, [sp, #268]
	mla r1, r0, r1, r2
	str r1, [sp, #280]
	ldr r1, [sp, #252]
	add r0, r1, r0
	str r0, [sp, #48]
	ldr r1, [sp, #248]
	ldr r0, [sp, #268]
	add r0, r1, r0
	str r0, [sp, #40]
	ldr r1, [sp, #244]
	ldr r0, [sp, #268]
	add r0, r1, r0
	str r0, [sp, #36]
	ldr r1, [sp, #240]
	ldr r0, [sp, #268]
	add r0, r1, r0
	str r0, [sp, #28]
	ldr r1, [sp, #236]
	ldr r0, [sp, #268]
	add r0, r1, r0
	str r0, [sp, #20]
	ldr r1, [sp, #232]
	ldr r0, [sp, #268]
	add r0, r1, r0
	str r0, [sp, #16]
	ldr r0, [sp, #268]
	cmp r0, #2
	blt label334
	b label333
.p2align 4
label339:
	ldr r0, [sp, #268]
	add r0, r0, #1
	str r0, [sp, #268]
	b label51
.p2align 4
label340:
	mov r2, #0
	b label56
.p2align 4
label353:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	ldr r1, [sp, #280]
	rsb r0, r0, r0, lsl #3
	add r4, r1, r0, lsl #8
	ldr r0, [sp, #0]
	cmp r0, #3
	blt label340
	b label339
.p2align 4
label56:
	ldr r0, [sp, #272]
	cmp r2, #2
	add r1, r0, r2
	ldr r0, [sp, #48]
	add r3, r0, r2
	ldr r0, [sp, #40]
	add r5, r0, r2
	ldr r0, [sp, #36]
	add r6, r0, r2
	ldr r0, [sp, #28]
	add r7, r0, r2
	ldr r0, [sp, #20]
	add r8, r0, r2
	ldr r0, [sp, #16]
	add r9, r0, r2
	rsb r0, r2, r2, lsl #3
	add r10, r4, r0, lsl #7
	bge label353
	mov r11, #0
.p2align 4
label58:
	rsb r0, r11, r11, lsl #3
	add r11, r11, #1
	add r0, r10, r0, lsl #5
	cmp r11, #4
	str r1, [r0, #0]
	str r3, [r0, #4]
	str r5, [r0, #8]
	str r6, [r0, #12]
	str r7, [r0, #16]
	str r8, [r0, #20]
	str r9, [r0, #24]
	str r1, [r0, #28]
	str r3, [r0, #32]
	str r5, [r0, #36]
	str r6, [r0, #40]
	str r7, [r0, #44]
	str r8, [r0, #48]
	str r9, [r0, #52]
	str r1, [r0, #56]
	str r3, [r0, #60]
	str r5, [r0, #64]
	str r6, [r0, #68]
	str r7, [r0, #72]
	str r8, [r0, #76]
	str r9, [r0, #80]
	str r1, [r0, #84]
	str r3, [r0, #88]
	str r5, [r0, #92]
	str r6, [r0, #96]
	str r7, [r0, #100]
	str r8, [r0, #104]
	str r9, [r0, #108]
	str r1, [r0, #112]
	str r3, [r0, #116]
	str r5, [r0, #120]
	str r6, [r0, #124]
	str r7, [r0, #128]
	str r8, [r0, #132]
	str r9, [r0, #136]
	str r1, [r0, #140]
	str r3, [r0, #144]
	str r5, [r0, #148]
	str r6, [r0, #152]
	str r7, [r0, #156]
	str r8, [r0, #160]
	str r9, [r0, #164]
	str r1, [r0, #168]
	str r3, [r0, #172]
	str r5, [r0, #176]
	str r6, [r0, #180]
	str r7, [r0, #184]
	str r8, [r0, #188]
	str r9, [r0, #192]
	str r1, [r0, #196]
	str r3, [r0, #200]
	str r5, [r0, #204]
	str r6, [r0, #208]
	str r7, [r0, #212]
	str r8, [r0, #216]
	str r9, [r0, #220]
	blt label58
	add r2, r2, #1
	b label56
.p2align 4
label334:
	mov r0, #0
	str r0, [sp, #0]
	ldr r1, [sp, #280]
	rsb r0, r0, r0, lsl #3
	add r4, r1, r0, lsl #8
	ldr r0, [sp, #0]
	cmp r0, #3
	blt label340
	b label339
