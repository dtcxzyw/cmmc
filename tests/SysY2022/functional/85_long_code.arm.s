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
	mov r5, r2
	mov r3, r0
	sub sp, sp, #20
	str r0, [sp, #8]
	mov r0, r1
	str r2, [sp, #12]
label2:
	ldr r5, [sp, #12]
	cmp r5, r0
	ble label4
	ldr r3, [sp, #8]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #4]
	sub r2, r1, #1
label6:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label76
	b label9
.p2align 4
label324:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label343
.p2align 4
label89:
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label324
.p2align 4
label275:
	str r6, [sp, #4]
	cmp r5, r6
	ble label9
.p2align 4
label76:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label80
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label275
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label89
	b label343
.p2align 4
label80:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label261
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label80
	ldr r3, [sp, #8]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label275
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label89
	b label343
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label9:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
label10:
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label13
	ldr r6, [sp, #4]
	add r0, r6, #1
	b label2
label261:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r5, r6
	ble label275
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label89
label343:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label6
label13:
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
	b label14
.p2align 4
label319:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label341
.p2align 4
label74:
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label319
.p2align 4
label14:
	cmp r6, r4
	ble label17
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label66
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label14
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label74
	b label341
label17:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
label18:
	cmp r5, r0
	ble label20
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
.p2align 4
label22:
	cmp r8, r6
	ble label134
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label29
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label22
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label337
.p2align 4
label37:
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	ble label22
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label37
label337:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label22
label134:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
label40:
	cmp r7, r1
	ble label173
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
.p2align 4
label43:
	cmp r10, r8
	ble label60
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	bge label187
.p2align 4
label50:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label51
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label50
	ldr r3, [sp, #8]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label43
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label58
	b label339
.p2align 4
label66:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label229
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label66
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label14
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label74
	b label341
.p2align 4
label29:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label145
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label29
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label22
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label37
	b label337
.p2align 4
label187:
	ldr r3, [sp, #8]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label43
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label339
.p2align 4
label58:
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	ble label43
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label58
label339:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label43
label20:
	add r0, r4, #1
	b label10
label60:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label40
label229:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	ble label14
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label74
	b label341
label145:
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	ble label22
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label37
	b label337
label51:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	ble label43
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label58
	b label339
label341:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label14
label173:
	add r0, r6, #1
	b label18
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[256] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #1
	movw r11, #574
	mov r9, #83
	mov r7, #27
	mov r0, #7
	mov r3, #89
	movw r5, #282
	mov r4, #26
	sub sp, sp, #284
	mov r6, #254
	mov r2, #23
	movw r10, #273
	str r0, [sp, #16]
	mov r8, #5
	str r2, [sp, #20]
	str r3, [sp, #24]
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
	str r1, [sp, #136]
	str r11, [sp, #140]
	movw r11, #574
	str r0, [sp, #152]
	str r2, [sp, #156]
	str r3, [sp, #160]
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
	str r1, [sp, #272]
	str r11, [sp, #276]
	b label366
.p2align 4
label530:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label366:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label530
	mov r2, #0
	cmp r2, #31
	blt label371
	b label606
.p2align 4
label621:
	add r2, r2, #1
	cmp r2, #31
	bge label606
.p2align 4
label371:
	rsb r0, r2, #32
	add r4, sp, #152
	mov r3, #0
	sub r0, r0, #1
	mov r1, r4
	ldr r4, [r4, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label375
	add r3, r3, #1
	cmp r0, r3
	bgt label377
	add r2, r2, #1
	cmp r2, #31
	blt label371
	b label606
.p2align 4
label375:
	str r4, [r1, #4]
	str r5, [r1, #0]
	add r3, r3, #1
	cmp r0, r3
	ble label621
.p2align 4
label377:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label375
	add r3, r3, #1
	cmp r0, r3
	bgt label377
	add r2, r2, #1
	cmp r2, #31
	blt label371
label606:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label380:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label384
	add r4, r4, #4
	mov r5, r0
	b label380
label384:
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
.p2align 4
label385:
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
	bge label389
	add r0, r0, #256
	b label385
label389:
	mov r1, #0
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
	str r1, [sp, #144]
	str r1, [sp, #4]
	mov r2, r1
label390:
	ldr r4, [sp, #8]
	movw r1, #:lower16:count
	movt r1, #:upper16:count
	ldr r5, [r4, #0]
	add r0, r1, r5, lsl #2
	ldr r3, [r0, #0]
	add r3, r3, #1
	str r3, [r0, #0]
	ldr r0, [sp, #4]
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
	ldr r0, [sp, #144]
	movle r2, r3
	add r0, r0, #16
	cmp r0, #32
	blt label395
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
	cmp r2, #31
	blt label399
	b label1011
.p2align 4
label1905:
	add r3, r3, #1
	cmp r0, r3
	ble label1915
.p2align 4
label406:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	ble label1905
.p2align 4
label403:
	str r4, [r1, #4]
	str r5, [r1, #0]
	add r3, r3, #1
	cmp r0, r3
	bgt label406
	add r2, r2, #1
	cmp r2, #31
	bge label1011
.p2align 4
label399:
	rsb r0, r2, #32
	add r4, sp, #152
	mov r3, #0
	sub r0, r0, #1
	mov r1, r4
	ldr r4, [r4, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label403
	add r3, r3, #1
	cmp r0, r3
	bgt label406
	add r2, r2, #1
	cmp r2, #31
	blt label399
label1011:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label408:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label411
	add r4, r4, #4
	mov r5, r0
	b label408
label411:
	ldr r0, [sp, #16]
	add r4, sp, #152
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
	mov r1, #1
	cmp r1, #32
	blt label415
	b label1135
.p2align 4
label1908:
	str r2, [r3, #4]
	add r1, r1, #1
	add r0, r0, #4
	cmp r1, #32
	bge label1135
.p2align 4
label415:
	sub r5, r1, #1
	add r4, sp, #152
	ldr r2, [r0, #0]
	add r3, r4, r5, lsl #2
	mov r4, r5
	cmn r5, #1
	bgt label423
	mov r5, #0
	cmp r5, #0
	bne label421
	str r2, [r3, #4]
	add r1, r1, #1
	add r0, r0, #4
	cmp r1, #32
	blt label415
	b label1135
.p2align 4
label423:
	ldr r5, [r3, #0]
	cmp r2, r5
	mov r5, #0
	movwlt r5, #1
	cmp r5, #0
	beq label1908
.p2align 4
label421:
	ldr r5, [r3, #0]
	sub r4, r4, #1
	cmn r4, #1
	str r5, [r3, #4]
	sub r3, r3, #4
	bgt label423
	mov r5, #0
	cmp r5, #0
	bne label421
	str r2, [r3, #4]
	add r1, r1, #1
	add r0, r0, #4
	cmp r1, #32
	blt label415
label1135:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label425:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label429
	add r4, r4, #4
	mov r5, r0
	b label425
label429:
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
label430:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label434
	add r4, r4, #4
	mov r5, r0
	b label430
label434:
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
	str r4, [sp, #12]
	str r0, [sp, #0]
label435:
	ldr r4, [sp, #12]
	ldr r1, [r4, #0]
	add r1, r0, r1
	ldr r0, [sp, #0]
	and r0, r0, #3
	cmp r0, #3
	beq label1368
	mov r0, #0
	str r0, [r4, #0]
	b label440
label1368:
	ldr r4, [sp, #12]
	str r1, [r4, #0]
	mov r1, #0
label440:
	ldr r4, [sp, #12]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #1
	and r0, r0, #3
	cmp r0, #3
	beq label1377
	mov r0, #0
	str r0, [r4, #4]
	b label444
label1377:
	ldr r4, [sp, #12]
	str r1, [r4, #4]
	mov r1, #0
label444:
	ldr r4, [sp, #12]
	ldr r0, [r4, #8]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #2
	and r0, r0, #3
	cmp r0, #3
	beq label446
	mov r0, #0
	str r0, [r4, #8]
	b label448
label446:
	ldr r4, [sp, #12]
	str r1, [r4, #8]
	mov r1, #0
label448:
	ldr r4, [sp, #12]
	ldr r0, [r4, #12]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #3
	and r0, r0, #3
	cmp r0, #3
	bne label451
	str r1, [r4, #12]
	mov r1, #0
	b label452
label451:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #12]
label452:
	ldr r4, [sp, #12]
	ldr r0, [r4, #16]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #4
	and r0, r0, #3
	cmp r0, #3
	beq label1410
	mov r0, #0
	str r0, [r4, #16]
label456:
	ldr r4, [sp, #12]
	ldr r0, [r4, #20]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #5
	and r0, r0, #3
	cmp r0, #3
	bne label458
	str r1, [r4, #20]
	mov r1, #0
	b label460
label458:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #20]
label460:
	ldr r4, [sp, #12]
	ldr r0, [r4, #24]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #6
	and r0, r0, #3
	cmp r0, #3
	bne label462
	str r1, [r4, #24]
	mov r1, #0
	b label464
label462:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #24]
label464:
	ldr r4, [sp, #12]
	ldr r0, [r4, #28]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #7
	and r0, r0, #3
	cmp r0, #3
	bne label466
	str r1, [r4, #28]
	mov r1, #0
	b label468
label466:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #28]
label468:
	ldr r4, [sp, #12]
	ldr r0, [r4, #32]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #8
	and r0, r0, #3
	cmp r0, #3
	bne label470
	str r1, [r4, #32]
	mov r1, #0
	b label472
label470:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #32]
label472:
	ldr r4, [sp, #12]
	ldr r0, [r4, #36]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #9
	and r0, r0, #3
	cmp r0, #3
	bne label527
	str r1, [r4, #36]
	mov r1, #0
label474:
	ldr r4, [sp, #12]
	ldr r0, [r4, #40]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #10
	and r0, r0, #3
	cmp r0, #3
	bne label525
	str r1, [r4, #40]
	mov r1, #0
label476:
	ldr r4, [sp, #12]
	ldr r0, [r4, #44]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #11
	and r0, r0, #3
	cmp r0, #3
	beq label478
	mov r0, #0
	str r0, [r4, #44]
	b label479
label478:
	ldr r4, [sp, #12]
	str r1, [r4, #44]
	mov r1, #0
label479:
	ldr r4, [sp, #12]
	ldr r0, [r4, #48]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #12
	and r0, r0, #3
	cmp r0, #3
	bne label521
	str r1, [r4, #48]
	mov r1, #0
label481:
	ldr r4, [sp, #12]
	ldr r0, [r4, #52]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #13
	and r0, r0, #3
	cmp r0, #3
	bne label484
	str r1, [r4, #52]
	mov r1, #0
	b label485
label484:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #52]
label485:
	ldr r4, [sp, #12]
	ldr r0, [r4, #56]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #14
	and r0, r0, #3
	cmp r0, #3
	bne label488
	str r1, [r4, #56]
	mov r1, #0
	b label489
label488:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #56]
label489:
	ldr r4, [sp, #12]
	ldr r0, [r4, #60]
	add r1, r1, r0
	ldr r0, [sp, #0]
	add r0, r0, #15
	and r0, r0, #3
	cmp r0, #3
	beq label1524
	mov r0, #0
	str r0, [r4, #60]
label493:
	ldr r0, [sp, #0]
	add r0, r0, #16
	cmp r0, #32
	blt label520
	add r4, sp, #152
	mov r5, #0
.p2align 4
label496:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label500
	add r4, r4, #4
	mov r5, r0
	b label496
label500:
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
	bge label506
.p2align 4
label509:
	ldr r4, [r0, #0]
	add r3, r3, r4
	add r1, r1, #1
	cmp r1, #32
	bge label1909
.p2align 4
label519:
	add r0, r0, #4
	cmp r1, #2
	blt label509
	bne label508
.p2align 4
label507:
	ldr r2, [sp, #152]
	movw r4, #21846
	movt r4, #21845
	add r1, r1, #1
	smmul r4, r3, r4
	cmp r1, #32
	add r4, r4, r4, lsr #31
	str r4, [sp, #152]
	blt label519
	b label1909
.p2align 4
label508:
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
	blt label519
label1909:
	mov r5, #0
	add r4, sp, #152
	str r5, [sp, #272]
	str r5, [sp, #276]
	b label514
.p2align 4
label517:
	add r4, r4, #4
.p2align 4
label514:
	ldr r0, [r4, #0]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label517
	mov r0, #0
	add sp, sp, #284
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label506:
	cmp r1, #2
	beq label507
	b label508
.p2align 4
label1915:
	add r2, r2, #1
	cmp r2, #31
	blt label399
	b label1011
label1410:
	ldr r4, [sp, #12]
	str r1, [r4, #16]
	mov r1, #0
	b label456
label1524:
	ldr r4, [sp, #12]
	str r1, [r4, #60]
	mov r1, #0
	b label493
label521:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #48]
	b label481
label520:
	ldr r4, [sp, #12]
	add r4, r4, #64
	str r4, [sp, #12]
	str r0, [sp, #0]
	mov r0, r1
	b label435
label395:
	ldr r4, [sp, #8]
	add r4, r4, #64
	str r4, [sp, #8]
	str r0, [sp, #144]
	str r2, [sp, #4]
	mov r0, r2
	mov r2, r1
	b label390
label527:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #36]
	b label474
label525:
	mov r0, #0
	ldr r4, [sp, #12]
	str r0, [r4, #40]
	b label476
