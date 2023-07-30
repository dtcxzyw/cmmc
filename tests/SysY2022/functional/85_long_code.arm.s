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
QuickSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r2
	mov r3, r0
	sub sp, sp, #20
	str r0, [sp, #4]
	mov r0, r1
	str r2, [sp, #0]
label2:
	ldr r4, [sp, #0]
	cmp r4, r0
	ble label81
	ldr r3, [sp, #4]
	mov r5, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #8]
	sub r2, r1, #1
	bgt label8
	sub r4, r0, #1
	str r1, [r3, r0, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
label394:
	ldr r5, [sp, #8]
	add r0, r5, #1
	b label2
.p2align 4
label8:
	ldr r5, [sp, #8]
	cmp r5, r4
	blt label18
	cmp r4, r5
	bgt label13
	str r5, [sp, #8]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
.p2align 4
label18:
	ldr r3, [sp, #4]
	ldr r3, [r3, r4, lsl #2]
	cmp r2, r3
	blt label19
	ldr r5, [sp, #8]
	cmp r5, r4
	blt label17
	cmp r4, r5
	bgt label13
	str r5, [sp, #8]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
label81:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label16:
	ldr r3, [sp, #4]
	ldr r6, [r3, r5, lsl #2]
	str r6, [r3, r4, lsl #2]
	str r5, [sp, #8]
	sub r4, r4, #1
	cmp r4, r5
	bgt label8
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
.p2align 4
label19:
	sub r4, r4, #1
	ldr r5, [sp, #8]
	cmp r5, r4
	blt label18
	cmp r4, r5
	bgt label13
	str r5, [sp, #8]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
label21:
	cmp r4, r1
	ble label394
label144:
	ldr r3, [sp, #4]
	mov r6, r4
	mov r5, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r4, r1
	bgt label69
	sub r6, r1, #1
	str r0, [r3, r1, lsl #2]
	cmp r6, r1
	bgt label160
label406:
	add r1, r5, #1
	b label21
label160:
	ldr r3, [sp, #4]
	mov r8, r6
	mov r7, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r6, r1
	bgt label36
	sub r8, r1, #1
	str r0, [r3, r1, lsl #2]
	cmp r8, r1
	bgt label51
label407:
	add r1, r7, #1
	b label29
.p2align 4
label36:
	cmp r7, r8
	blt label38
	cmp r8, r7
	bgt label44
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	ble label407
label51:
	ldr r3, [sp, #4]
	mov r10, r8
	mov r9, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
	cmp r8, r1
	ble label67
.p2align 4
label55:
	cmp r9, r10
	blt label57
	cmp r10, r9
	bgt label65
	b label67
.p2align 4
label69:
	cmp r5, r6
	blt label79
	cmp r6, r5
	bgt label76
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label79:
	ldr r3, [sp, #4]
	ldr r3, [r3, r6, lsl #2]
	cmp r2, r3
	blt label80
	cmp r5, r6
	blt label78
	cmp r6, r5
	bgt label76
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label41:
	ldr r3, [sp, #4]
	ldr r9, [r3, r8, lsl #2]
	str r9, [r3, r7, lsl #2]
	add r7, r7, #1
	cmp r8, r7
	bgt label44
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label76:
	ldr r3, [sp, #4]
	ldr r3, [r3, r5, lsl #2]
	cmp r0, r3
	bgt label77
	cmp r6, r5
	bgt label75
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
label67:
	ldr r3, [sp, #4]
	sub r2, r9, #1
	str r0, [r3, r9, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r9, #1
	b label49
.p2align 4
label60:
	ldr r3, [sp, #4]
	ldr r11, [r3, r10, lsl #2]
	str r11, [r3, r9, lsl #2]
	add r9, r9, #1
	cmp r10, r9
	ble label67
.p2align 4
label65:
	ldr r3, [sp, #4]
	ldr r3, [r3, r9, lsl #2]
	cmp r0, r3
	bgt label66
	cmp r10, r9
	bgt label64
	b label67
.p2align 4
label47:
	ldr r3, [sp, #4]
	ldr r9, [r3, r7, lsl #2]
	str r9, [r3, r8, lsl #2]
	sub r8, r8, #1
	cmp r8, r7
	bgt label36
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label75:
	ldr r3, [sp, #4]
	ldr r7, [r3, r5, lsl #2]
	str r7, [r3, r6, lsl #2]
	sub r6, r6, #1
	cmp r6, r5
	bgt label69
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label64:
	ldr r3, [sp, #4]
	ldr r11, [r3, r9, lsl #2]
	str r11, [r3, r10, lsl #2]
	sub r10, r10, #1
	cmp r10, r9
	bgt label55
	b label67
.p2align 4
label44:
	ldr r3, [sp, #4]
	ldr r3, [r3, r7, lsl #2]
	cmp r0, r3
	bgt label45
	cmp r8, r7
	bgt label47
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label45:
	add r7, r7, #1
	cmp r8, r7
	bgt label44
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label38:
	ldr r3, [sp, #4]
	ldr r3, [r3, r8, lsl #2]
	cmp r2, r3
	blt label39
	cmp r7, r8
	blt label41
	cmp r8, r7
	bgt label44
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label39:
	sub r8, r8, #1
	cmp r7, r8
	blt label38
	cmp r8, r7
	bgt label44
	ldr r3, [sp, #4]
	sub r8, r7, #1
	str r0, [r3, r7, lsl #2]
	cmp r8, r1
	bgt label51
	b label407
.p2align 4
label80:
	sub r6, r6, #1
	cmp r5, r6
	blt label79
	cmp r6, r5
	bgt label76
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label77:
	add r5, r5, #1
	cmp r6, r5
	bgt label76
	ldr r3, [sp, #4]
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label13:
	ldr r3, [sp, #4]
	ldr r3, [r3, r5, lsl #2]
	cmp r1, r3
	bgt label14
	cmp r4, r5
	bgt label16
	str r5, [sp, #8]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
.p2align 4
label14:
	add r5, r5, #1
	cmp r4, r5
	bgt label13
	str r5, [sp, #8]
	ldr r3, [sp, #4]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
.p2align 4
label57:
	ldr r3, [sp, #4]
	ldr r3, [r3, r10, lsl #2]
	cmp r2, r3
	blt label58
	cmp r9, r10
	blt label60
	cmp r10, r9
	bgt label65
	b label67
.p2align 4
label66:
	add r9, r9, #1
	cmp r10, r9
	bgt label65
	b label67
.p2align 4
label58:
	sub r10, r10, #1
	cmp r9, r10
	blt label57
	cmp r10, r9
	bgt label65
	b label67
.p2align 4
label78:
	ldr r3, [sp, #4]
	ldr r7, [r3, r6, lsl #2]
	str r7, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r6, r5
	bgt label76
	sub r6, r5, #1
	str r0, [r3, r5, lsl #2]
	cmp r6, r1
	bgt label160
	b label406
.p2align 4
label17:
	ldr r3, [sp, #4]
	ldr r6, [r3, r4, lsl #2]
	ldr r5, [sp, #8]
	str r6, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	bgt label13
	str r5, [sp, #8]
	sub r4, r5, #1
	str r1, [r3, r5, lsl #2]
	mov r1, r0
	cmp r4, r0
	bgt label144
	b label394
label49:
	cmp r8, r1
	bgt label51
	b label407
label29:
	cmp r6, r1
	bgt label160
	b label406
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r10, #290
	mov r9, #1
	mov r8, #28
	sub sp, sp, #268
	mov r11, #5
	mov r3, #26
	mov r0, #7
	mov r1, #23
	mov r7, #39
	mov r2, #89
	str r0, [sp, #128]
	mov r6, #27
	movw r4, #282
	str r1, [sp, #132]
	mov r5, #254
	str r2, [sp, #136]
	str r3, [sp, #140]
	str r4, [sp, #144]
	str r5, [sp, #148]
	str r6, [sp, #152]
	str r11, [sp, #156]
	mov r11, #83
	str r11, [sp, #160]
	movw r11, #273
	str r11, [sp, #164]
	movw r11, #574
	str r11, [sp, #168]
	movw r11, #905
	str r11, [sp, #172]
	movw r11, #354
	str r11, [sp, #176]
	movw r11, #657
	str r11, [sp, #180]
	movw r11, #935
	str r11, [sp, #184]
	mov r11, #264
	str r11, [sp, #188]
	movw r11, #639
	str r11, [sp, #192]
	movw r11, #459
	str r11, [sp, #196]
	mov r11, #29
	str r11, [sp, #200]
	mov r11, #68
	str r11, [sp, #204]
	movw r11, #929
	str r11, [sp, #208]
	mov r11, #756
	str r11, [sp, #212]
	mov r11, #452
	str r11, [sp, #216]
	movw r11, #279
	str r11, [sp, #220]
	mov r11, #58
	str r11, [sp, #224]
	mov r11, #87
	str r11, [sp, #228]
	mov r11, #96
	str r11, [sp, #232]
	mov r11, #36
	str r11, [sp, #236]
	mov r11, #5
	str r7, [sp, #240]
	str r8, [sp, #244]
	str r9, [sp, #248]
	str r10, [sp, #252]
	str r0, [sp, #0]
	movw r0, #:lower16:count
	str r1, [sp, #4]
	movt r0, #:upper16:count
	str r2, [sp, #8]
	str r3, [sp, #12]
	str r4, [sp, #16]
	mov r4, #0
	str r5, [sp, #20]
	str r6, [sp, #24]
	str r11, [sp, #28]
	mov r11, #83
	str r11, [sp, #32]
	movw r11, #273
	str r11, [sp, #36]
	movw r11, #574
	str r11, [sp, #40]
	movw r11, #905
	str r11, [sp, #44]
	movw r11, #354
	str r11, [sp, #48]
	movw r11, #657
	str r11, [sp, #52]
	movw r11, #935
	str r11, [sp, #56]
	mov r11, #264
	str r11, [sp, #60]
	movw r11, #639
	str r11, [sp, #64]
	movw r11, #459
	str r11, [sp, #68]
	mov r11, #29
	str r11, [sp, #72]
	mov r11, #68
	str r11, [sp, #76]
	movw r11, #929
	str r11, [sp, #80]
	mov r11, #756
	str r11, [sp, #84]
	mov r11, #452
	str r11, [sp, #88]
	movw r11, #279
	str r11, [sp, #92]
	mov r11, #58
	str r11, [sp, #96]
	mov r11, #87
	str r11, [sp, #100]
	mov r11, #96
	str r11, [sp, #104]
	mov r11, #36
	str r11, [sp, #108]
	str r7, [sp, #112]
	str r8, [sp, #116]
	str r9, [sp, #120]
	str r10, [sp, #124]
	str r0, [sp, #256]
.p2align 4
label510:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label510
	mov r0, #0
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label651
.p2align 4
label1892:
	mov r4, #0
.p2align 4
label519:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label519
	ldr r0, [sp, #64]
	ldr r1, [sp, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
	b label522
.p2align 4
label518:
	mov r6, sp
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r1, r5
	bgt label517
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	bge label1892
.p2align 4
label651:
	mov r2, #0
	cmp r1, r2
	bgt label517
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label651
	b label1892
.p2align 4
label517:
	mov r6, sp
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label518
	mov r2, r5
	cmp r1, r5
	bgt label517
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label651
	b label1892
.p2align 4
label522:
	ldr r0, [sp, #256]
	mov r1, #0
	add r0, r0, r2, lsl #2
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
	blt label522
	ldr r0, [sp, #256]
	mov r4, #0
	add r1, r0, r2, lsl #2
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	str r4, [r1, #16]
	str r4, [r1, #20]
	str r4, [r1, #24]
	str r4, [r1, #28]
	str r4, [r1, #32]
	str r4, [r1, #36]
	str r4, [r1, #40]
	str r4, [r1, #44]
	str r4, [r1, #48]
	str r4, [r1, #52]
	str r4, [r1, #56]
	str r4, [r1, #60]
	str r4, [r1, #64]
	str r4, [r1, #68]
	str r4, [r1, #72]
	str r4, [r1, #76]
	str r4, [r1, #80]
	str r4, [r1, #84]
	str r4, [r1, #88]
	str r4, [r1, #92]
	str r4, [r1, #96]
	str r4, [r1, #100]
	str r4, [r1, #104]
	str r4, [r1, #108]
	str r4, [r1, #112]
	str r4, [r1, #116]
	str r4, [r1, #120]
	str r4, [r1, #124]
	str r4, [r1, #128]
	str r4, [r1, #132]
	str r4, [r1, #136]
	str r4, [r1, #140]
	str r4, [r1, #144]
	str r4, [r1, #148]
	str r4, [r1, #152]
	str r4, [r1, #156]
	ldr r1, [sp, #0]
	add r2, r0, r1, lsl #2
	ldr r3, [r2, #0]
	adds r3, r3, #1
	str r3, [r2, #0]
	ldr r7, [sp, #4]
	bic r3, r3, r3, asr #31
	add r5, r0, r7, lsl #2
	ldr r2, [r5, #0]
	add r6, r2, #1
	str r6, [r5, #0]
	mov r2, #0
	movgt r2, r1
	mov r1, r3
	cmp r3, r6
	movle r1, r6
	movlt r2, r7
	ldr r6, [sp, #8]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #12]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #16]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #20]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #24]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #28]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #32]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #36]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #40]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #44]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #48]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #52]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #56]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #60]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #64]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #68]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #72]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #76]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #80]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #84]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #88]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #92]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #96]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #100]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #104]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #108]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #112]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #116]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #120]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r5, [sp, #124]
	add r3, r0, r5, lsl #2
	ldr r0, [r3, #0]
	add r6, r0, #1
	str r6, [r3, #0]
	mov r0, r2
	cmp r1, r6
	movlt r0, r5
	bl putint
	ldr r0, [sp, #128]
	str r0, [sp, #0]
	ldr r0, [sp, #132]
	str r0, [sp, #4]
	ldr r0, [sp, #136]
	str r0, [sp, #8]
	ldr r0, [sp, #140]
	str r0, [sp, #12]
	ldr r0, [sp, #144]
	str r0, [sp, #16]
	ldr r0, [sp, #148]
	str r0, [sp, #20]
	ldr r0, [sp, #152]
	str r0, [sp, #24]
	ldr r0, [sp, #156]
	str r0, [sp, #28]
	ldr r0, [sp, #160]
	str r0, [sp, #32]
	ldr r0, [sp, #164]
	str r0, [sp, #36]
	ldr r0, [sp, #168]
	str r0, [sp, #40]
	ldr r0, [sp, #172]
	str r0, [sp, #44]
	ldr r0, [sp, #176]
	str r0, [sp, #48]
	ldr r0, [sp, #180]
	str r0, [sp, #52]
	ldr r0, [sp, #184]
	str r0, [sp, #56]
	ldr r0, [sp, #188]
	str r0, [sp, #60]
	ldr r0, [sp, #192]
	str r0, [sp, #64]
	ldr r0, [sp, #196]
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	str r0, [sp, #72]
	ldr r0, [sp, #204]
	str r0, [sp, #76]
	ldr r0, [sp, #208]
	str r0, [sp, #80]
	ldr r0, [sp, #212]
	str r0, [sp, #84]
	ldr r0, [sp, #216]
	str r0, [sp, #88]
	ldr r0, [sp, #220]
	str r0, [sp, #92]
	ldr r0, [sp, #224]
	str r0, [sp, #96]
	ldr r0, [sp, #228]
	str r0, [sp, #100]
	ldr r0, [sp, #232]
	str r0, [sp, #104]
	ldr r0, [sp, #236]
	str r0, [sp, #108]
	ldr r0, [sp, #240]
	str r0, [sp, #112]
	ldr r0, [sp, #244]
	str r0, [sp, #116]
	ldr r0, [sp, #248]
	str r0, [sp, #120]
	ldr r0, [sp, #252]
	str r0, [sp, #124]
	mov r0, r4
	rsb r1, r4, #32
	cmp r4, #31
	sub r1, r1, #1
	blt label1149
.p2align 4
label1148:
	mov r4, #0
	b label532
.p2align 4
label1149:
	mov r2, #0
	cmp r1, r2
	bgt label529
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label1149
	b label1148
.p2align 4
label529:
	mov r6, sp
	add r5, r2, #1
	add r4, r6, r2, lsl #2
	ldr r3, [r4, #0]
	ldr r4, [r4, #4]
	cmp r3, r4
	bgt label530
	mov r2, r5
	cmp r1, r5
	bgt label529
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label1149
	b label1148
.p2align 4
label530:
	mov r6, sp
	add r2, r6, r2, lsl #2
	str r3, [r2, #4]
	str r4, [r2, #0]
	mov r2, r5
	cmp r1, r5
	bgt label529
	add r0, r0, #1
	rsb r1, r0, #32
	cmp r0, #31
	sub r1, r1, #1
	blt label1149
	b label1148
.p2align 4
label532:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label532
	ldr r0, [sp, #128]
	str r0, [sp, #0]
	ldr r0, [sp, #132]
	str r0, [sp, #4]
	ldr r0, [sp, #136]
	str r0, [sp, #8]
	ldr r0, [sp, #140]
	str r0, [sp, #12]
	ldr r0, [sp, #144]
	str r0, [sp, #16]
	ldr r0, [sp, #148]
	str r0, [sp, #20]
	ldr r0, [sp, #152]
	str r0, [sp, #24]
	ldr r0, [sp, #156]
	str r0, [sp, #28]
	ldr r0, [sp, #160]
	str r0, [sp, #32]
	ldr r0, [sp, #164]
	str r0, [sp, #36]
	ldr r0, [sp, #168]
	str r0, [sp, #40]
	ldr r0, [sp, #172]
	str r0, [sp, #44]
	ldr r0, [sp, #176]
	str r0, [sp, #48]
	ldr r0, [sp, #180]
	str r0, [sp, #52]
	ldr r0, [sp, #184]
	str r0, [sp, #56]
	ldr r0, [sp, #188]
	str r0, [sp, #60]
	ldr r0, [sp, #192]
	str r0, [sp, #64]
	ldr r0, [sp, #196]
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	str r0, [sp, #72]
	ldr r0, [sp, #204]
	str r0, [sp, #76]
	ldr r0, [sp, #208]
	str r0, [sp, #80]
	ldr r0, [sp, #212]
	str r0, [sp, #84]
	ldr r0, [sp, #216]
	str r0, [sp, #88]
	ldr r0, [sp, #220]
	str r0, [sp, #92]
	ldr r0, [sp, #224]
	str r0, [sp, #96]
	ldr r0, [sp, #228]
	str r0, [sp, #100]
	ldr r0, [sp, #232]
	str r0, [sp, #104]
	ldr r0, [sp, #236]
	str r0, [sp, #108]
	ldr r0, [sp, #240]
	str r0, [sp, #112]
	ldr r0, [sp, #244]
	str r0, [sp, #116]
	ldr r0, [sp, #248]
	str r0, [sp, #120]
	ldr r0, [sp, #252]
	str r0, [sp, #124]
	mov r0, #1
	cmp r0, #32
	bge label1272
.p2align 4
label565:
	mov r6, sp
	sub r2, r0, #1
	ldr r1, [r6, r0, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label569
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label565
	b label1272
.p2align 4
label569:
	mov r6, sp
	ldr r4, [r6, r2, lsl #2]
	cmp r1, r4
	blt label570
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label565
	b label1272
.p2align 4
label570:
	mov r6, sp
	sub r2, r2, #1
	str r4, [r6, r3, lsl #2]
	add r3, r2, #1
	cmn r2, #1
	bgt label569
	add r0, r0, #1
	str r1, [r6, r3, lsl #2]
	cmp r0, #32
	blt label565
.p2align 4
label1272:
	mov r4, #0
.p2align 4
label537:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label537
	ldr r0, [sp, #128]
	mov r6, sp
	mov r1, #0
	mov r2, #31
	str r0, [sp, #0]
	ldr r0, [sp, #132]
	str r0, [sp, #4]
	ldr r0, [sp, #136]
	str r0, [sp, #8]
	ldr r0, [sp, #140]
	str r0, [sp, #12]
	ldr r0, [sp, #144]
	str r0, [sp, #16]
	ldr r0, [sp, #148]
	str r0, [sp, #20]
	ldr r0, [sp, #152]
	str r0, [sp, #24]
	ldr r0, [sp, #156]
	str r0, [sp, #28]
	ldr r0, [sp, #160]
	str r0, [sp, #32]
	ldr r0, [sp, #164]
	str r0, [sp, #36]
	ldr r0, [sp, #168]
	str r0, [sp, #40]
	ldr r0, [sp, #172]
	str r0, [sp, #44]
	ldr r0, [sp, #176]
	str r0, [sp, #48]
	ldr r0, [sp, #180]
	str r0, [sp, #52]
	ldr r0, [sp, #184]
	str r0, [sp, #56]
	ldr r0, [sp, #188]
	str r0, [sp, #60]
	ldr r0, [sp, #192]
	str r0, [sp, #64]
	ldr r0, [sp, #196]
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	str r0, [sp, #72]
	ldr r0, [sp, #204]
	str r0, [sp, #76]
	ldr r0, [sp, #208]
	str r0, [sp, #80]
	ldr r0, [sp, #212]
	str r0, [sp, #84]
	ldr r0, [sp, #216]
	str r0, [sp, #88]
	ldr r0, [sp, #220]
	str r0, [sp, #92]
	ldr r0, [sp, #224]
	str r0, [sp, #96]
	ldr r0, [sp, #228]
	str r0, [sp, #100]
	ldr r0, [sp, #232]
	str r0, [sp, #104]
	ldr r0, [sp, #236]
	str r0, [sp, #108]
	ldr r0, [sp, #240]
	str r0, [sp, #112]
	ldr r0, [sp, #244]
	str r0, [sp, #116]
	ldr r0, [sp, #248]
	str r0, [sp, #120]
	ldr r0, [sp, #252]
	str r0, [sp, #124]
	mov r0, r6
	bl QuickSort
	mov r4, #0
.p2align 4
label540:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label540
	ldr r0, [sp, #128]
	mov r1, #0
	str r0, [sp, #0]
	ldr r0, [sp, #132]
	str r0, [sp, #4]
	ldr r0, [sp, #136]
	str r0, [sp, #8]
	ldr r0, [sp, #140]
	str r0, [sp, #12]
	ldr r0, [sp, #144]
	str r0, [sp, #16]
	ldr r0, [sp, #148]
	str r0, [sp, #20]
	ldr r0, [sp, #152]
	str r0, [sp, #24]
	ldr r0, [sp, #156]
	str r0, [sp, #28]
	ldr r0, [sp, #160]
	str r0, [sp, #32]
	ldr r0, [sp, #164]
	str r0, [sp, #36]
	ldr r0, [sp, #168]
	str r0, [sp, #40]
	ldr r0, [sp, #172]
	str r0, [sp, #44]
	ldr r0, [sp, #176]
	str r0, [sp, #48]
	ldr r0, [sp, #180]
	str r0, [sp, #52]
	ldr r0, [sp, #184]
	str r0, [sp, #56]
	ldr r0, [sp, #188]
	str r0, [sp, #60]
	ldr r0, [sp, #192]
	str r0, [sp, #64]
	ldr r0, [sp, #196]
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	str r0, [sp, #72]
	ldr r0, [sp, #204]
	str r0, [sp, #76]
	ldr r0, [sp, #208]
	str r0, [sp, #80]
	ldr r0, [sp, #212]
	str r0, [sp, #84]
	ldr r0, [sp, #216]
	str r0, [sp, #88]
	ldr r0, [sp, #220]
	str r0, [sp, #92]
	ldr r0, [sp, #224]
	str r0, [sp, #96]
	ldr r0, [sp, #228]
	str r0, [sp, #100]
	ldr r0, [sp, #232]
	str r0, [sp, #104]
	ldr r0, [sp, #236]
	str r0, [sp, #108]
	ldr r0, [sp, #240]
	str r0, [sp, #112]
	ldr r0, [sp, #244]
	str r0, [sp, #116]
	ldr r0, [sp, #248]
	str r0, [sp, #120]
	ldr r0, [sp, #252]
	str r0, [sp, #124]
	mov r0, r1
	cmp r1, #32
	bge label1480
.p2align 4
label562:
	mov r6, sp
	and r3, r0, #3
	ldr r2, [r6, r0, lsl #2]
	cmp r3, #3
	add r1, r1, r2
	add r2, r0, #1
	bne label564
	str r1, [r6, r0, lsl #2]
	mov r0, r2
	mov r1, #0
	cmp r2, #32
	blt label562
	b label1480
.p2align 4
label564:
	mov r3, #0
	mov r6, sp
	str r3, [r6, r0, lsl #2]
	mov r0, r2
	cmp r2, #32
	blt label562
.p2align 4
label1480:
	mov r4, #0
.p2align 4
label546:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label546
	ldr r0, [sp, #128]
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #132]
	str r0, [sp, #4]
	ldr r0, [sp, #136]
	str r0, [sp, #8]
	ldr r0, [sp, #140]
	str r0, [sp, #12]
	ldr r0, [sp, #144]
	str r0, [sp, #16]
	ldr r0, [sp, #148]
	str r0, [sp, #20]
	ldr r0, [sp, #152]
	str r0, [sp, #24]
	ldr r0, [sp, #156]
	str r0, [sp, #28]
	ldr r0, [sp, #160]
	str r0, [sp, #32]
	ldr r0, [sp, #164]
	str r0, [sp, #36]
	ldr r0, [sp, #168]
	str r0, [sp, #40]
	ldr r0, [sp, #172]
	str r0, [sp, #44]
	ldr r0, [sp, #176]
	str r0, [sp, #48]
	ldr r0, [sp, #180]
	str r0, [sp, #52]
	ldr r0, [sp, #184]
	str r0, [sp, #56]
	ldr r0, [sp, #188]
	str r0, [sp, #60]
	ldr r0, [sp, #192]
	str r0, [sp, #64]
	ldr r0, [sp, #196]
	str r0, [sp, #68]
	ldr r0, [sp, #200]
	str r0, [sp, #72]
	ldr r0, [sp, #204]
	str r0, [sp, #76]
	ldr r0, [sp, #208]
	str r0, [sp, #80]
	ldr r0, [sp, #212]
	str r0, [sp, #84]
	ldr r0, [sp, #216]
	str r0, [sp, #88]
	ldr r0, [sp, #220]
	str r0, [sp, #92]
	ldr r0, [sp, #224]
	str r0, [sp, #96]
	ldr r0, [sp, #228]
	str r0, [sp, #100]
	ldr r0, [sp, #232]
	str r0, [sp, #104]
	ldr r0, [sp, #236]
	str r0, [sp, #108]
	ldr r0, [sp, #240]
	str r0, [sp, #112]
	ldr r0, [sp, #244]
	str r0, [sp, #116]
	ldr r0, [sp, #248]
	str r0, [sp, #120]
	ldr r0, [sp, #252]
	str r0, [sp, #124]
	mov r1, r2
	mov r0, r2
.p2align 4
label549:
	cmp r1, #32
	bge label1586
.p2align 4
label553:
	cmp r1, #2
	blt label557
	beq label555
	mov r6, sp
	add r3, r6, r1, lsl #2
	add r1, r1, #1
	ldr r4, [r3, #0]
	add r0, r0, r4
	sub r0, r0, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r4, r2, r2, lsr #31
	ldr r2, [r3, #-8]
	str r4, [r3, #-8]
	b label549
.p2align 4
label557:
	mov r6, sp
	ldr r3, [r6, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label553
.p2align 4
label1586:
	mov r4, #0
	str r4, [sp, #120]
	str r4, [sp, #124]
.p2align 4
label559:
	mov r6, sp
	ldr r0, [r6, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label559
	mov r0, #0
	add sp, sp, #268
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label555:
	ldr r2, [sp, #0]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #0]
	mov r1, #3
	b label549
