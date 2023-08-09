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
	ble label89
	ldr r3, [sp, #8]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #4]
	sub r2, r1, #1
label5:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label75
	b label8
.p2align 4
label323:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label321
.p2align 4
label85:
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label323
.p2align 4
label263:
	str r6, [sp, #4]
	cmp r5, r6
	ble label8
.p2align 4
label75:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label86
	add r3, r3, r6, lsl #2
.p2align 4
label80:
	cmp r5, r6
	ble label263
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label85
	b label321
.p2align 4
label86:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label87
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label86
	ldr r3, [sp, #8]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	ble label263
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label85
	b label321
label89:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label8:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
label9:
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label109
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
	b label12
.p2align 4
label64:
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label318
.p2align 4
label12:
	cmp r6, r4
	ble label15
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	bge label64
.p2align 4
label65:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label66
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label65
	ldr r3, [sp, #8]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label12
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label72
	b label331
.p2align 4
label318:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label331
.p2align 4
label72:
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	ble label12
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label72
label331:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label12
label15:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
label16:
	cmp r5, r0
	ble label18
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
	b label20
.p2align 4
label315:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label325
.p2align 4
label35:
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label315
.p2align 4
label20:
	cmp r8, r6
	ble label133
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label28
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label20
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label35
	b label325
.p2align 4
label28:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label29
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label28
	ldr r3, [sp, #8]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	ble label20
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label35
	b label325
label18:
	add r0, r4, #1
	b label9
label133:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
label38:
	cmp r7, r1
	bgt label41
	add r0, r6, #1
	b label16
label66:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	ble label12
	ldr r7, [r3, #0]
	cmp r1, r7
	bgt label72
	b label331
label87:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label80
label29:
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	ble label20
	ldr r9, [r3, #0]
	cmp r1, r9
	bgt label35
	b label325
label321:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label5
label325:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label20
label41:
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	b label42
.p2align 4
label317:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label336
.p2align 4
label59:
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label317
.p2align 4
label42:
	cmp r10, r8
	ble label45
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label50
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label42
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label59
	b label336
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
	ble label42
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label59
	b label336
label45:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label38
label51:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	ble label42
	ldr r11, [r3, #0]
	cmp r0, r11
	bgt label59
label336:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label42
label109:
	ldr r6, [sp, #4]
	add r0, r6, #1
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r2, #1
	movw r5, #282
	mov r8, #5
	movw r11, #574
	sub sp, sp, #284
	movw r10, #273
	mov r6, #254
	mov r1, #23
	mov r7, #27
	mov r4, #26
	mov r9, #83
	mov r3, #89
	mov r0, #7
	str r0, [sp, #16]
	str r1, [sp, #20]
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
	str r2, [sp, #136]
	str r11, [sp, #140]
	movw r11, #574
	str r0, [sp, #152]
	str r1, [sp, #156]
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
	str r2, [sp, #272]
	str r11, [sp, #276]
.p2align 4
label365:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label599
	add r4, r4, #4
	mov r5, r0
	b label365
label599:
	mov r2, #0
	cmp r2, #31
	blt label371
	b label604
.p2align 4
label1980:
	add r2, r2, #1
	cmp r2, #31
	bge label604
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
	bgt label378
	add r3, r3, #1
	cmp r0, r3
	bgt label376
	add r2, r2, #1
	cmp r2, #31
	blt label371
	b label604
.p2align 4
label378:
	str r4, [r1, #4]
	add r3, r3, #1
	str r5, [r1, #0]
	cmp r0, r3
	ble label1980
.p2align 4
label376:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label378
	add r3, r3, #1
	cmp r0, r3
	bgt label376
	add r2, r2, #1
	cmp r2, #31
	blt label371
label604:
	add r4, sp, #152
	mov r5, #0
	b label380
.p2align 4
label383:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label380:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label383
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
	b label385
.p2align 4
label388:
	add r0, r0, #256
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
	blt label388
	movw r1, #:lower16:count
	movt r1, #:upper16:count
	mov r0, #0
	add r4, sp, #152
	add r1, r1, r2, lsl #2
	mov r2, r0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r4, [sp, #144]
	str r0, [sp, #8]
	str r0, [sp, #12]
	b label390
label529:
	ldr r4, [sp, #144]
	add r4, r4, #64
	str r4, [sp, #144]
	str r0, [sp, #8]
	str r2, [sp, #12]
	mov r0, r2
	mov r2, r1
label390:
	ldr r4, [sp, #144]
	movw r1, #:lower16:count
	movt r1, #:upper16:count
	ldr r5, [r4, #0]
	add r0, r1, r5, lsl #2
	ldr r3, [r0, #0]
	add r3, r3, #1
	str r3, [r0, #0]
	ldr r0, [sp, #12]
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
	ldr r0, [sp, #8]
	movle r2, r3
	add r0, r0, #16
	cmp r0, #32
	blt label529
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
	blt label398
	b label1007
.p2align 4
label1022:
	add r2, r2, #1
	cmp r2, #31
	bge label1007
.p2align 4
label398:
	rsb r0, r2, #32
	add r4, sp, #152
	mov r3, #0
	sub r0, r0, #1
	mov r1, r4
	ldr r4, [r4, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	ble label1016
.p2align 4
label402:
	str r4, [r1, #4]
	str r5, [r1, #0]
	add r3, r3, #1
	cmp r0, r3
	ble label1022
.p2align 4
label404:
	add r1, r1, #4
	ldr r4, [r1, #0]
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label402
	add r3, r3, #1
	cmp r0, r3
	bgt label404
	add r2, r2, #1
	cmp r2, #31
	blt label398
label1007:
	add r4, sp, #152
	mov r5, #0
.p2align 4
label407:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label410
	add r4, r4, #4
	mov r5, r0
	b label407
label410:
	ldr r0, [sp, #16]
	add r4, sp, #152
	mov r2, #1
	add r1, r4, #4
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
	cmp r2, #32
	blt label414
	b label1129
.p2align 4
label1986:
	str r0, [r3, #4]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #32
	bge label1129
.p2align 4
label414:
	ldr r0, [r1, #0]
	sub r5, r2, #1
	add r4, sp, #152
	add r3, r4, r5, lsl #2
	mov r4, r5
	cmn r5, #1
	ble label1137
.p2align 4
label422:
	ldr r5, [r3, #0]
	cmp r0, r5
	mov r5, #0
	movwlt r5, #1
	cmp r5, #0
	beq label1986
.p2align 4
label421:
	ldr r5, [r3, #0]
	sub r4, r4, #1
	cmn r4, #1
	str r5, [r3, #4]
	sub r3, r3, #4
	bgt label422
	mov r5, #0
	cmp r5, #0
	bne label421
	str r0, [r3, #4]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #32
	blt label414
	b label1129
.p2align 4
label1137:
	mov r5, #0
	cmp r5, #0
	bne label421
	str r0, [r3, #4]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #32
	blt label414
label1129:
	add r4, sp, #152
	mov r5, #0
	b label424
.p2align 4
label427:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label424:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label427
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
	b label429
.p2align 4
label527:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label429:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label527
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
	str r4, [sp, #4]
	mov r1, r0
	str r0, [sp, #0]
label433:
	ldr r4, [sp, #4]
	ldr r0, [r4, #0]
	add r1, r1, r0
	ldr r0, [sp, #0]
	and r0, r0, #3
	cmp r0, #3
	bne label526
	str r1, [r4, #0]
	mov r1, #0
label437:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #1
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label439
	mov r1, #0
	str r0, [r4, r2, lsl #2]
	b label440
label439:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
label440:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #2
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label442
	mov r1, #0
	str r0, [r4, r2, lsl #2]
	b label444
label442:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
label444:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #3
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label446
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
label448:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #4
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label523
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label451:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #5
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label453
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label455
label446:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
	b label448
label453:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label455:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #6
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label458
	mov r1, #0
	str r0, [r4, r2, lsl #2]
	b label459
label458:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
label459:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #7
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label522
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label462:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #8
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label464
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label466:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #9
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label1473
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label470
label1473:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label470:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #10
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label1487
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label474
label1487:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label474:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #11
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label476
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label477
label476:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label477:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #12
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label479
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label480
label479:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label480:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #13
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	bne label519
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label483:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r2, r0, #14
	ldr r0, [r4, r2, lsl #2]
	add r0, r1, r0
	and r1, r2, #3
	cmp r1, #3
	beq label485
	mov r1, #0
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label486
label485:
	add r4, sp, #152
	mov r1, #0
	str r0, [r4, r2, lsl #2]
label486:
	ldr r0, [sp, #0]
	add r4, sp, #152
	add r0, r0, #15
	ldr r2, [r4, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	beq label1549
	mov r2, #0
	str r2, [r4, r0, lsl #2]
	b label488
label1549:
	add r4, sp, #152
	str r1, [r4, r0, lsl #2]
	mov r1, #0
label488:
	ldr r0, [sp, #0]
	add r0, r0, #16
	cmp r0, #32
	bge label1554
	ldr r4, [sp, #4]
	add r4, r4, #64
	str r4, [sp, #4]
	str r0, [sp, #0]
	b label433
.p2align 4
label1016:
	add r3, r3, #1
	cmp r0, r3
	bgt label404
	add r2, r2, #1
	cmp r2, #31
	blt label398
	b label1007
label526:
	mov r0, #0
	ldr r4, [sp, #4]
	str r0, [r4, #0]
	b label437
label519:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label483
label1554:
	add r4, sp, #152
	mov r5, #0
	b label492
.p2align 4
label495:
	add r4, r4, #4
	mov r5, r0
.p2align 4
label492:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	blt label495
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
	bge label1660
.p2align 4
label502:
	ldr r4, [r0, #0]
	add r3, r3, r4
	add r1, r1, #1
	cmp r1, #32
	bge label506
.p2align 4
label512:
	add r0, r0, #4
	cmp r1, #2
	blt label502
	bne label514
.p2align 4
label515:
	ldr r2, [sp, #152]
	movw r4, #21846
	movt r4, #21845
	add r1, r1, #1
	smmul r4, r3, r4
	cmp r1, #32
	add r4, r4, r4, lsr #31
	str r4, [sp, #152]
	blt label512
	b label506
.p2align 4
label514:
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
	blt label512
label506:
	mov r5, #0
	add r4, sp, #152
	str r5, [sp, #272]
	str r5, [sp, #276]
	b label507
.p2align 4
label511:
	add r4, r4, #4
.p2align 4
label507:
	ldr r0, [r4, #0]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	blt label511
	mov r0, #0
	add sp, sp, #284
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1660:
	cmp r1, #2
	beq label515
	b label514
label523:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label451
label522:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label462
label464:
	mov r1, #0
	add r4, sp, #152
	str r1, [r4, r2, lsl #2]
	mov r1, r0
	b label466
