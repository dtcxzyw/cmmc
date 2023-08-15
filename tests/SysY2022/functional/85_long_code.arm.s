.arch armv7ve
.data
.bss
.align 8
count:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r1, r2
	mov r5, r2
	mov r3, r0
	sub sp, sp, #20
	str r0, [sp, #8]
	str r2, [sp, #12]
	bge label2
	mov r0, r1
	ldr r3, [sp, #8]
	mov r6, r1
	ldr r1, [r3, r1, lsl #2]
	str r0, [sp, #4]
	sub r2, r1, #1
	b label5
label325:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
label5:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label8
	b label22
.p2align 4
label327:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label325
.p2align 4
label17:
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label327
.p2align 4
label109:
	str r6, [sp, #4]
	cmp r5, r6
	ble label22
.p2align 4
label8:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	bge label104
.p2align 4
label19:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label20
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label19
	ldr r3, [sp, #8]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label109
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label17
	b label325
.p2align 4
label104:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	add r3, r3, r6, lsl #2
.p2align 4
label12:
	cmp r5, r6
	ble label109
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label17
	b label325
label22:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	cmp r0, r6
	str r6, [sp, #0]
	blt label24
label23:
	ldr r6, [sp, #4]
	ldr r5, [sp, #12]
	add r0, r6, #1
	cmp r5, r0
	bgt label3
	b label2
label20:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label12
label2:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label44:
	add r0, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label23
label24:
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
	b label26
.p2align 4
label330:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label167
.p2align 4
label38:
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label330
.p2align 4
label26:
	cmp r6, r4
	ble label43
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	bge label33
.p2align 4
label40:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label41
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label40
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label26
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label38
	b label167
.p2align 4
label33:
	ldr r3, [sp, #8]
	add r3, r3, r4, lsl #2
.p2align 4
label34:
	cmp r6, r4
	ble label26
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label38
	b label167
label43:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	cmp r0, r5
	str r1, [r3, r4, lsl #2]
	bge label44
label45:
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
	b label47
.p2align 4
label333:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label346
.p2align 4
label63:
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label333
.p2align 4
label47:
	cmp r8, r6
	ble label64
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label54
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label47
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label63
	b label346
.p2align 4
label54:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label55
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label54
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label47
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label63
	b label346
label64:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	cmp r0, r7
	str r1, [r3, r6, lsl #2]
	bge label65
	mov r1, r0
	mov r10, r7
	mov r8, r0
	ldr r0, [r3, r0, lsl #2]
	sub r2, r0, #1
	b label68
.p2align 4
label335:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label348
.p2align 4
label84:
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label335
.p2align 4
label68:
	cmp r10, r8
	ble label85
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label75
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label68
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label84
	b label348
.p2align 4
label75:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label265
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label75
	ldr r3, [sp, #8]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label68
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label84
	b label348
label85:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	cmp r7, r1
	ble label65
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label68
label41:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	b label34
label55:
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	ble label47
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label63
	b label346
label265:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	ble label68
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label84
	b label348
label65:
	add r0, r6, #1
	cmp r5, r0
	bgt label45
	b label44
label167:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label26
label346:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label47
label348:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label68
label3:
	ldr r3, [sp, #8]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r5, [sp, #12]
	str r0, [sp, #4]
	sub r2, r1, #1
	b label5
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[256] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #273
	movw r11, #574
	mov r8, #5
	mov r0, #7
	mov r4, #26
	mov r1, #23
	sub sp, sp, #284
	mov r7, #27
	mov r2, #89
	mov r6, #254
	str r0, [sp, #16]
	mov r3, #1
	movw r5, #282
	str r1, [sp, #20]
	mov r9, #83
	str r2, [sp, #24]
	str r4, [sp, #28]
	str r5, [sp, #32]
	str r6, [sp, #36]
	str r7, [sp, #40]
	str r8, [sp, #44]
	str r9, [sp, #48]
	str r10, [sp, #52]
	str r11, [sp, #56]
	movw r11, #905
	str r11, [sp, #60]
	movw r11, #354
	str r11, [sp, #64]
	movw r11, #657
	str r11, [sp, #68]
	movw r11, #935
	str r11, [sp, #72]
	mov r11, #264
	str r11, [sp, #76]
	movw r11, #639
	str r11, [sp, #80]
	movw r11, #459
	str r11, [sp, #84]
	mov r11, #29
	str r11, [sp, #88]
	mov r11, #68
	str r11, [sp, #92]
	movw r11, #929
	str r11, [sp, #96]
	mov r11, #756
	str r11, [sp, #100]
	mov r11, #452
	str r11, [sp, #104]
	movw r11, #279
	str r11, [sp, #108]
	mov r11, #58
	str r11, [sp, #112]
	mov r11, #87
	str r11, [sp, #116]
	mov r11, #96
	str r11, [sp, #120]
	mov r11, #36
	str r11, [sp, #124]
	mov r11, #39
	str r11, [sp, #128]
	mov r11, #28
	str r11, [sp, #132]
	movw r11, #290
	str r3, [sp, #136]
	str r11, [sp, #140]
	movw r11, #574
	str r0, [sp, #152]
	str r1, [sp, #156]
	str r2, [sp, #160]
	str r4, [sp, #164]
	add r4, sp, #152
	str r5, [sp, #168]
	mov r5, #0
	str r6, [sp, #172]
	str r7, [sp, #176]
	str r8, [sp, #180]
	str r9, [sp, #184]
	str r10, [sp, #188]
	str r11, [sp, #192]
	movw r11, #905
	str r11, [sp, #196]
	movw r11, #354
	str r11, [sp, #200]
	movw r11, #657
	str r11, [sp, #204]
	movw r11, #935
	str r11, [sp, #208]
	mov r11, #264
	str r11, [sp, #212]
	movw r11, #639
	str r11, [sp, #216]
	movw r11, #459
	str r11, [sp, #220]
	mov r11, #29
	str r11, [sp, #224]
	mov r11, #68
	str r11, [sp, #228]
	movw r11, #929
	str r11, [sp, #232]
	mov r11, #756
	str r11, [sp, #236]
	mov r11, #452
	str r11, [sp, #240]
	movw r11, #279
	str r11, [sp, #244]
	mov r11, #58
	str r11, [sp, #248]
	mov r11, #87
	str r11, [sp, #252]
	mov r11, #96
	str r11, [sp, #256]
	mov r11, #36
	str r11, [sp, #260]
	mov r11, #39
	str r11, [sp, #264]
	mov r11, #28
	str r11, [sp, #268]
	movw r11, #290
	str r3, [sp, #272]
	str r11, [sp, #276]
.p2align 4
label380:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label584
	add r4, r4, #4
	mov r5, r0
	b label380
label584:
	mov r2, #0
	b label383
.p2align 4
label603:
	add r2, r2, #1
	cmp r2, #31
	bge label1842
.p2align 4
label383:
	rsb r0, r2, #32
	subs r0, r0, #1
	ble label392
	add r4, sp, #152
	mov r3, #0
	mov r1, r4
	ldr r4, [r4, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	ble label597
.p2align 4
label389:
	str r4, [r1, #4]
	str r5, [r1, #0]
	add r3, r3, #1
	cmp r0, r3
	ble label603
.p2align 4
label391:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label389
	add r3, r3, #1
	cmp r0, r3
	bgt label391
	add r2, r2, #1
	cmp r2, #31
	blt label383
label1842:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label394:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label398
	add r4, r4, #4
	mov r5, r0
	b label394
label398:
	ldr r0, [sp, #216]
	ldr r1, [sp, #212]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
	movw r1, #:lower16:count
	movt r1, #:upper16:count
	mov r0, r1
	b label399
.p2align 4
label402:
	add r0, r0, #256
.p2align 4
label399:
	mov r1, #0
	add r2, r2, #64
	str r1, [r0, #0]
	cmp r2, #960
	str r1, [r0, #4]
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
	blt label402
	add r4, sp, #152
	str r1, [r0, #256]
	str r1, [r0, #260]
	str r1, [r0, #264]
	str r1, [r0, #268]
	str r1, [r0, #272]
	str r1, [r0, #276]
	str r1, [r0, #280]
	str r1, [r0, #284]
	str r1, [r0, #288]
	str r1, [r0, #292]
	str r1, [r0, #296]
	str r1, [r0, #300]
	str r1, [r0, #304]
	str r1, [r0, #308]
	str r1, [r0, #312]
	str r1, [r0, #316]
	str r1, [r0, #320]
	str r1, [r0, #324]
	str r1, [r0, #328]
	str r1, [r0, #332]
	str r1, [r0, #336]
	str r1, [r0, #340]
	str r1, [r0, #344]
	str r1, [r0, #348]
	str r1, [r0, #352]
	str r1, [r0, #356]
	str r1, [r0, #360]
	str r1, [r0, #364]
	str r1, [r0, #368]
	str r1, [r0, #372]
	str r1, [r0, #376]
	str r1, [r0, #380]
	str r1, [r0, #384]
	str r1, [r0, #388]
	str r1, [r0, #392]
	str r1, [r0, #396]
	str r1, [r0, #400]
	str r1, [r0, #404]
	str r1, [r0, #408]
	str r1, [r0, #412]
	mov r0, r1
	str r4, [sp, #8]
	str r1, [sp, #4]
	str r1, [sp, #144]
	mov r2, r1
	b label404
label511:
	ldr r4, [sp, #8]
	add r4, r4, #64
	str r4, [sp, #8]
	str r0, [sp, #4]
	str r2, [sp, #144]
	mov r0, r2
	mov r2, r1
label404:
	ldr r4, [sp, #8]
	movw r1, #:lower16:count
	movt r1, #:upper16:count
	ldr r5, [r4, #0]
	add r0, r1, r5, lsl #2
	ldr r3, [r0, #0]
	add r3, r3, #1
	str r3, [r0, #0]
	ldr r0, [sp, #144]
	ldr r9, [r4, #4]
	mov r8, r0
	cmp r0, r3
	add r6, r1, r9, lsl #2
	movlt r2, r5
	movle r8, r3
	ldr r7, [r6, #0]
	mov r5, r2
	mov r2, r3
	add r7, r7, #1
	str r7, [r6, #0]
	cmp r8, r7
	ldr r8, [r4, #8]
	movlt r5, r9
	cmp r3, r7
	mov r3, r0
	movle r2, r7
	add r6, r1, r8, lsl #2
	cmp r0, r2
	movle r3, r2
	ldr r7, [r6, #0]
	add r7, r7, #1
	str r7, [r6, #0]
	cmp r3, r7
	mov r3, r5
	movlt r3, r8
	mov r8, r0
	cmp r2, r7
	movle r2, r7
	ldr r7, [r4, #12]
	cmp r0, r2
	movle r8, r2
	add r5, r1, r7, lsl #2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r8, r6
	ldr r8, [r4, #16]
	movlt r3, r7
	mov r7, r0
	cmp r2, r6
	movle r2, r6
	add r5, r1, r8, lsl #2
	cmp r0, r2
	ldr r6, [r5, #0]
	movle r7, r2
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #20]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #24]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #28]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #32]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #36]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #40]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #44]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #48]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #52]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	ldr r8, [r4, #56]
	cmp r2, r6
	movle r2, r6
	cmp r0, r2
	add r5, r1, r8, lsl #2
	movle r7, r2
	ldr r6, [r5, #0]
	add r6, r6, #1
	str r6, [r5, #0]
	cmp r7, r6
	mov r7, r0
	movlt r3, r8
	cmp r2, r6
	movle r2, r6
	ldr r6, [r4, #60]
	cmp r0, r2
	movle r7, r2
	add r4, r1, r6, lsl #2
	ldr r1, [r4, #0]
	add r5, r1, #1
	str r5, [r4, #0]
	mov r1, r3
	cmp r7, r5
	mov r3, r2
	movlt r1, r6
	cmp r2, r5
	mov r2, r0
	movle r3, r5
	cmp r0, r3
	ldr r0, [sp, #4]
	movle r2, r3
	add r0, r0, #16
	cmp r0, #32
	blt label511
	mov r0, r1
	bl putint
	mov r2, #0
	ldr r0, [sp, #16]
	str r0, [sp, #152]
	ldr r0, [sp, #20]
	str r0, [sp, #156]
	ldr r0, [sp, #24]
	str r0, [sp, #160]
	ldr r0, [sp, #28]
	str r0, [sp, #164]
	ldr r0, [sp, #32]
	str r0, [sp, #168]
	ldr r0, [sp, #36]
	str r0, [sp, #172]
	ldr r0, [sp, #40]
	str r0, [sp, #176]
	ldr r0, [sp, #44]
	str r0, [sp, #180]
	ldr r0, [sp, #48]
	str r0, [sp, #184]
	ldr r0, [sp, #52]
	str r0, [sp, #188]
	ldr r0, [sp, #56]
	str r0, [sp, #192]
	ldr r0, [sp, #60]
	str r0, [sp, #196]
	ldr r0, [sp, #64]
	str r0, [sp, #200]
	ldr r0, [sp, #68]
	str r0, [sp, #204]
	ldr r0, [sp, #72]
	str r0, [sp, #208]
	ldr r0, [sp, #76]
	str r0, [sp, #212]
	ldr r0, [sp, #80]
	str r0, [sp, #216]
	ldr r0, [sp, #84]
	str r0, [sp, #220]
	ldr r0, [sp, #88]
	str r0, [sp, #224]
	ldr r0, [sp, #92]
	str r0, [sp, #228]
	ldr r0, [sp, #96]
	str r0, [sp, #232]
	ldr r0, [sp, #100]
	str r0, [sp, #236]
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #108]
	str r0, [sp, #244]
	ldr r0, [sp, #112]
	str r0, [sp, #248]
	ldr r0, [sp, #116]
	str r0, [sp, #252]
	ldr r0, [sp, #120]
	str r0, [sp, #256]
	ldr r0, [sp, #124]
	str r0, [sp, #260]
	ldr r0, [sp, #128]
	str r0, [sp, #264]
	ldr r0, [sp, #132]
	str r0, [sp, #268]
	ldr r0, [sp, #136]
	str r0, [sp, #272]
	ldr r0, [sp, #140]
	str r0, [sp, #276]
	b label410
.p2align 4
label1606:
	add r2, r2, #1
	cmp r2, #31
	bge label413
.p2align 4
label410:
	rsb r0, r2, #32
	subs r0, r0, #1
	ble label412
	add r4, sp, #152
	mov r3, #0
	mov r1, r4
	ldr r4, [r4, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label508
	add r3, r3, #1
	cmp r0, r3
	bgt label510
	add r2, r2, #1
	cmp r2, #31
	blt label410
	b label413
.p2align 4
label508:
	str r4, [r1, #4]
	str r5, [r1, #0]
	add r3, r3, #1
	cmp r0, r3
	ble label1606
.p2align 4
label510:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label508
	add r3, r3, #1
	cmp r0, r3
	bgt label510
	add r2, r2, #1
	cmp r2, #31
	blt label410
label413:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label414:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label417
	add r4, r4, #4
	mov r5, r0
	b label414
label417:
	ldr r0, [sp, #16]
	add r4, sp, #152
	mov r3, #1
	str r0, [sp, #152]
	add r0, r4, #4
	ldr r1, [sp, #20]
	str r1, [sp, #156]
	ldr r1, [sp, #24]
	str r1, [sp, #160]
	ldr r1, [sp, #28]
	str r1, [sp, #164]
	ldr r1, [sp, #32]
	str r1, [sp, #168]
	ldr r1, [sp, #36]
	str r1, [sp, #172]
	ldr r1, [sp, #40]
	str r1, [sp, #176]
	ldr r1, [sp, #44]
	str r1, [sp, #180]
	ldr r1, [sp, #48]
	str r1, [sp, #184]
	ldr r1, [sp, #52]
	str r1, [sp, #188]
	ldr r1, [sp, #56]
	str r1, [sp, #192]
	ldr r1, [sp, #60]
	str r1, [sp, #196]
	ldr r1, [sp, #64]
	str r1, [sp, #200]
	ldr r1, [sp, #68]
	str r1, [sp, #204]
	ldr r1, [sp, #72]
	str r1, [sp, #208]
	ldr r1, [sp, #76]
	str r1, [sp, #212]
	ldr r1, [sp, #80]
	str r1, [sp, #216]
	ldr r1, [sp, #84]
	str r1, [sp, #220]
	ldr r1, [sp, #88]
	str r1, [sp, #224]
	ldr r1, [sp, #92]
	str r1, [sp, #228]
	ldr r1, [sp, #96]
	str r1, [sp, #232]
	ldr r1, [sp, #100]
	str r1, [sp, #236]
	ldr r1, [sp, #104]
	str r1, [sp, #240]
	ldr r1, [sp, #108]
	str r1, [sp, #244]
	ldr r1, [sp, #112]
	str r1, [sp, #248]
	ldr r1, [sp, #116]
	str r1, [sp, #252]
	ldr r1, [sp, #120]
	str r1, [sp, #256]
	ldr r1, [sp, #124]
	str r1, [sp, #260]
	ldr r1, [sp, #128]
	str r1, [sp, #264]
	ldr r1, [sp, #132]
	str r1, [sp, #268]
	ldr r1, [sp, #136]
	str r1, [sp, #272]
	ldr r1, [sp, #140]
	str r1, [sp, #276]
	sub r5, r3, #1
	ldr r2, [r0, #0]
	add r1, r4, r5, lsl #2
	mov r4, r5
	cmn r5, #1
	bgt label424
	mov r5, #0
	cmp r5, #0
	bne label502
	b label1832
.p2align 4
label427:
	str r2, [r1, #4]
	add r3, r3, #1
	cmp r3, #32
	bge label1844
.p2align 4
label501:
	add r0, r0, #4
	sub r5, r3, #1
	add r4, sp, #152
	ldr r2, [r0, #0]
	cmn r5, #1
	add r1, r4, r5, lsl #2
	mov r4, r5
	ble label1846
.p2align 4
label424:
	ldr r5, [r1, #0]
	cmp r2, r5
	mov r5, #0
	movwlt r5, #1
	cmp r5, #0
	beq label427
.p2align 4
label502:
	ldr r5, [r1, #0]
	sub r4, r4, #1
	cmn r4, #1
	str r5, [r1, #4]
	sub r1, r1, #4
	bgt label424
	mov r5, #0
	cmp r5, #0
	bne label502
	str r2, [r1, #4]
	add r3, r3, #1
	cmp r3, #32
	blt label501
label1844:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label429:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label432
	add r4, r4, #4
	mov r5, r0
	b label429
label432:
	ldr r0, [sp, #16]
	add r4, sp, #152
	mov r1, #0
	mov r2, #31
	str r0, [sp, #152]
	ldr r0, [sp, #20]
	str r0, [sp, #156]
	ldr r0, [sp, #24]
	str r0, [sp, #160]
	ldr r0, [sp, #28]
	str r0, [sp, #164]
	ldr r0, [sp, #32]
	str r0, [sp, #168]
	ldr r0, [sp, #36]
	str r0, [sp, #172]
	ldr r0, [sp, #40]
	str r0, [sp, #176]
	ldr r0, [sp, #44]
	str r0, [sp, #180]
	ldr r0, [sp, #48]
	str r0, [sp, #184]
	ldr r0, [sp, #52]
	str r0, [sp, #188]
	ldr r0, [sp, #56]
	str r0, [sp, #192]
	ldr r0, [sp, #60]
	str r0, [sp, #196]
	ldr r0, [sp, #64]
	str r0, [sp, #200]
	ldr r0, [sp, #68]
	str r0, [sp, #204]
	ldr r0, [sp, #72]
	str r0, [sp, #208]
	ldr r0, [sp, #76]
	str r0, [sp, #212]
	ldr r0, [sp, #80]
	str r0, [sp, #216]
	ldr r0, [sp, #84]
	str r0, [sp, #220]
	ldr r0, [sp, #88]
	str r0, [sp, #224]
	ldr r0, [sp, #92]
	str r0, [sp, #228]
	ldr r0, [sp, #96]
	str r0, [sp, #232]
	ldr r0, [sp, #100]
	str r0, [sp, #236]
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #108]
	str r0, [sp, #244]
	ldr r0, [sp, #112]
	str r0, [sp, #248]
	ldr r0, [sp, #116]
	str r0, [sp, #252]
	ldr r0, [sp, #120]
	str r0, [sp, #256]
	ldr r0, [sp, #124]
	str r0, [sp, #260]
	ldr r0, [sp, #128]
	str r0, [sp, #264]
	ldr r0, [sp, #132]
	str r0, [sp, #268]
	ldr r0, [sp, #136]
	str r0, [sp, #272]
	ldr r0, [sp, #140]
	str r0, [sp, #276]
	mov r0, r4
	bl QuickSort
	mov r5, #0
.p2align 4
label433:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label436
	add r4, r4, #4
	mov r5, r0
	b label433
label436:
	ldr r0, [sp, #16]
	add r4, sp, #152
	str r0, [sp, #152]
	ldr r0, [sp, #20]
	str r0, [sp, #156]
	ldr r0, [sp, #24]
	str r0, [sp, #160]
	ldr r0, [sp, #28]
	str r0, [sp, #164]
	ldr r0, [sp, #32]
	str r0, [sp, #168]
	ldr r0, [sp, #36]
	str r0, [sp, #172]
	ldr r0, [sp, #40]
	str r0, [sp, #176]
	ldr r0, [sp, #44]
	str r0, [sp, #180]
	ldr r0, [sp, #48]
	str r0, [sp, #184]
	ldr r0, [sp, #52]
	str r0, [sp, #188]
	ldr r0, [sp, #56]
	str r0, [sp, #192]
	ldr r0, [sp, #60]
	str r0, [sp, #196]
	ldr r0, [sp, #64]
	str r0, [sp, #200]
	ldr r0, [sp, #68]
	str r0, [sp, #204]
	ldr r0, [sp, #72]
	str r0, [sp, #208]
	ldr r0, [sp, #76]
	str r0, [sp, #212]
	ldr r0, [sp, #80]
	str r0, [sp, #216]
	ldr r0, [sp, #84]
	str r0, [sp, #220]
	ldr r0, [sp, #88]
	str r0, [sp, #224]
	ldr r0, [sp, #92]
	str r0, [sp, #228]
	ldr r0, [sp, #96]
	str r0, [sp, #232]
	ldr r0, [sp, #100]
	str r0, [sp, #236]
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #108]
	str r0, [sp, #244]
	ldr r0, [sp, #112]
	str r0, [sp, #248]
	ldr r0, [sp, #116]
	str r0, [sp, #252]
	ldr r0, [sp, #120]
	str r0, [sp, #256]
	ldr r0, [sp, #124]
	str r0, [sp, #260]
	ldr r0, [sp, #128]
	str r0, [sp, #264]
	ldr r0, [sp, #132]
	str r0, [sp, #268]
	ldr r0, [sp, #136]
	str r0, [sp, #272]
	ldr r0, [sp, #140]
	str r0, [sp, #276]
	mov r0, #0
	str r4, [sp, #0]
	str r0, [sp, #12]
label437:
	ldr r4, [sp, #0]
	ldr r1, [r4, #0]
	add r0, r0, r1
	mov r1, #0
	str r1, [r4, #0]
	ldr r1, [r4, #4]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #1
	and r0, r0, #3
	cmp r0, #3
	beq label441
	mov r0, #0
	str r0, [r4, #4]
label442:
	ldr r4, [sp, #0]
	ldr r0, [r4, #8]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #8]
	ldr r1, [r4, #12]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #3
	and r0, r0, #3
	cmp r0, #3
	beq label444
	mov r0, #0
	str r0, [r4, #12]
	b label445
label444:
	ldr r4, [sp, #0]
	str r1, [r4, #12]
	mov r1, #0
label445:
	ldr r4, [sp, #0]
	ldr r0, [r4, #16]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #16]
	ldr r1, [r4, #20]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #5
	and r0, r0, #3
	cmp r0, #3
	beq label1366
	mov r0, #0
	str r0, [r4, #20]
label447:
	ldr r4, [sp, #0]
	ldr r0, [r4, #24]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #24]
	ldr r1, [r4, #28]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #7
	and r0, r0, #3
	cmp r0, #3
	beq label449
	mov r0, #0
	str r0, [r4, #28]
	b label451
label449:
	ldr r4, [sp, #0]
	str r1, [r4, #28]
	mov r1, #0
label451:
	ldr r4, [sp, #0]
	ldr r0, [r4, #32]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #32]
	ldr r1, [r4, #36]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #9
	and r0, r0, #3
	cmp r0, #3
	beq label453
	mov r0, #0
	str r0, [r4, #36]
	b label454
label453:
	ldr r4, [sp, #0]
	str r1, [r4, #36]
	mov r1, #0
label454:
	ldr r4, [sp, #0]
	ldr r0, [r4, #40]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #40]
	ldr r1, [r4, #44]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #11
	and r0, r0, #3
	cmp r0, #3
	bne label493
	str r1, [r4, #44]
	mov r1, #0
label456:
	ldr r4, [sp, #0]
	ldr r0, [r4, #48]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #48]
	ldr r1, [r4, #52]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #13
	and r0, r0, #3
	cmp r0, #3
	bne label458
	str r1, [r4, #52]
	mov r1, #0
	b label459
label441:
	ldr r4, [sp, #0]
	str r1, [r4, #4]
	mov r1, #0
	b label442
label458:
	mov r0, #0
	ldr r4, [sp, #0]
	str r0, [r4, #52]
label459:
	ldr r4, [sp, #0]
	ldr r0, [r4, #56]
	add r0, r1, r0
	mov r1, #0
	str r1, [r4, #56]
	ldr r1, [r4, #60]
	add r1, r0, r1
	ldr r0, [sp, #12]
	add r0, r0, #15
	and r0, r0, #3
	cmp r0, #3
	bne label490
	str r1, [r4, #60]
	mov r1, #0
	b label461
label490:
	mov r0, #0
	ldr r4, [sp, #0]
	str r0, [r4, #60]
label461:
	ldr r0, [sp, #12]
	add r0, r0, #16
	cmp r0, #32
	blt label488
	add r4, sp, #152
	mov r5, #0
	b label464
.p2align 4
label487:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label464:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label487
	ldr r0, [sp, #16]
	add r4, sp, #152
	mov r1, #0
	mov r3, r1
	str r0, [sp, #152]
	ldr r0, [sp, #20]
	str r0, [sp, #156]
	ldr r0, [sp, #24]
	str r0, [sp, #160]
	ldr r0, [sp, #28]
	str r0, [sp, #164]
	ldr r0, [sp, #32]
	str r0, [sp, #168]
	ldr r0, [sp, #36]
	str r0, [sp, #172]
	ldr r0, [sp, #40]
	str r0, [sp, #176]
	ldr r0, [sp, #44]
	str r0, [sp, #180]
	ldr r0, [sp, #48]
	str r0, [sp, #184]
	ldr r0, [sp, #52]
	str r0, [sp, #188]
	ldr r0, [sp, #56]
	str r0, [sp, #192]
	ldr r0, [sp, #60]
	str r0, [sp, #196]
	ldr r0, [sp, #64]
	str r0, [sp, #200]
	ldr r0, [sp, #68]
	str r0, [sp, #204]
	ldr r0, [sp, #72]
	str r0, [sp, #208]
	ldr r0, [sp, #76]
	str r0, [sp, #212]
	ldr r0, [sp, #80]
	str r0, [sp, #216]
	ldr r0, [sp, #84]
	str r0, [sp, #220]
	ldr r0, [sp, #88]
	str r0, [sp, #224]
	ldr r0, [sp, #92]
	str r0, [sp, #228]
	ldr r0, [sp, #96]
	str r0, [sp, #232]
	ldr r0, [sp, #100]
	str r0, [sp, #236]
	ldr r0, [sp, #104]
	str r0, [sp, #240]
	ldr r0, [sp, #108]
	str r0, [sp, #244]
	ldr r0, [sp, #112]
	str r0, [sp, #248]
	ldr r0, [sp, #116]
	str r0, [sp, #252]
	ldr r0, [sp, #120]
	str r0, [sp, #256]
	ldr r0, [sp, #124]
	str r0, [sp, #260]
	ldr r0, [sp, #128]
	str r0, [sp, #264]
	ldr r0, [sp, #132]
	str r0, [sp, #268]
	ldr r0, [sp, #136]
	str r0, [sp, #272]
	ldr r0, [sp, #140]
	str r0, [sp, #276]
	mov r2, r1
	mov r0, r4
	cmp r1, #2
	bge label1541
.p2align 4
label483:
	ldr r4, [r0, #0]
	add r1, r1, #1
	cmp r1, #32
	add r3, r3, r4
	bge label1835
.p2align 4
label476:
	add r0, r0, #4
	cmp r1, #2
	blt label483
	bne label485
.p2align 4
label486:
	ldr r2, [sp, #152]
	movw r4, #21846
	movt r4, #21845
	add r1, r1, #1
	smmul r4, r3, r4
	cmp r1, #32
	add r4, r4, r4, lsr #31
	str r4, [sp, #152]
	blt label476
	b label1835
.p2align 4
label485:
	add r4, sp, #152
	add r4, r4, r1, lsl #2
	add r1, r1, #1
	ldr r5, [r4, #0]
	cmp r1, #32
	add r3, r3, r5
	sub r3, r3, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r3, r2
	add r5, r2, r2, lsr #31
	ldr r2, [r4, #-8]
	str r5, [r4, #-8]
	blt label476
label1835:
	mov r5, #0
	add r4, sp, #152
	str r5, [sp, #272]
	str r5, [sp, #276]
	b label478
.p2align 4
label482:
	add r4, r4, #4
.p2align 4
label478:
	ldr r0, [r4, #0]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label482
	mov r0, #0
	add sp, sp, #284
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label412:
	add r2, r2, #1
	cmp r2, #31
	blt label410
	b label413
label392:
	add r2, r2, #1
	cmp r2, #31
	blt label383
	b label1842
label1541:
	cmp r1, #2
	beq label486
	b label485
.p2align 4
label597:
	add r3, r3, #1
	cmp r0, r3
	bgt label391
	add r2, r2, #1
	cmp r2, #31
	blt label383
	b label1842
.p2align 4
label1846:
	mov r5, #0
	cmp r5, #0
	bne label502
label1832:
	str r2, [r1, #4]
	add r3, r3, #1
	cmp r3, #32
	blt label501
	b label1844
label1366:
	ldr r4, [sp, #0]
	str r1, [r4, #20]
	mov r1, #0
	b label447
label493:
	mov r0, #0
	ldr r4, [sp, #0]
	str r0, [r4, #44]
	b label456
label488:
	ldr r4, [sp, #0]
	add r4, r4, #64
	str r4, [sp, #0]
	str r0, [sp, #12]
	mov r0, r1
	b label437
